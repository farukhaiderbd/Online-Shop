<?php

namespace App\Http\Controllers\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Mail\ForgetMail;
use App\Models\User;
use Mail;
use Validator;
use Hash;
use DB;
class ForgetController extends Controller
{

public function ForgetPassword(Request $request)
{
    $validator = Validator::make($request->all(), [

        'email' => 'required|email|max:255',
    ]);
    if ($validator->fails())
    {
        return response(['errors'=>$validator->errors()->all()], 422);
    }

    $email=$request->email;
    if(User::where('email',$email)->doesntExist()){
        return response([
            'messege' => 'Email is Not Found',
        ],404);
    }
    $token = rand(10,1000000);
    try {
        DB::table('password_resets')->insert([
            'email' =>  $email,
            'token' => $token,
        ]);
        // Mail Sent to user
        Mail::to($email)->send(new ForgetMail($token));

        return response([
            'messege'   => 'Successfully send mail in your email account',
        ], 200);

    } catch (\Throwable $th) {
        return response([
            'messege'   => $th->getMessage(),
        ],400);
    }

}

public function resetpassword(Request $request)
{
    $validator = Validator::make($request->all(), [
        'email' => 'required|email|max:255',
        'password' => 'required|min:6|confirmed',
        'token' => 'required',
    ]);

    if ($validator->fails())
    {
        return response(['errors'=>$validator->errors()->all()], 422);
    }
    $email =$request->email;
    $token = $request->token;
    $emailcheck = DB::table('password_resets')->where('email', $email)->first();
    $tokencheck = DB::table('password_resets')->where('token', $token)->first();

    if(!$emailcheck){
        return response()->json([
            'messege'   =>  'This email is not vailed',
        ],401);
    }
    if(!$tokencheck){
        return response()->json([
            'messege'   =>  'This token is not vailed',
        ],401);
    }
    $password =Hash::make($request->password);

    DB::table('users')->where('email', $email)->update(['password' => $password ]);
    DB::table('password_resets')->where('email', $email)->delete();

    return response()->json([
        'messege'   =>  'Successfully Forget your password',
    ], 200);
}


}
