<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('superadmin');
    }

    public function index(){


        return view('admin.dashboard.home');
    }

    public function access(){
        echo "You are not allow this page!";

    }



   public function gggg(){
     $tday =date('d-m-y');
     $mnt =date('F');
     $yr =date('Y');
     $today =Order::where('status', 0)->where('date', $tday)->sum('total');
     $delevery =Order::where('status', 3)->where('date', $tday)->sum('total');
     $month =Order::where('month', $mnt)->sum('total');
     $year =Order::where('year', $yr)->sum('total');
     $return =Order::where('return_order', 2)->sum('total');
     $product =Product::where('status', 1)->get();
     $brand =Brand::where('status', 1)->get();
     $user =User::where('status', 1)->get();

     return view('admin.home',compact('today','delevery','month','year','return','product','brand','user'));
   }

 public function logout()
 {
   Auth::logout();
               $notification=array(
                   'messege'=>'Successfully Logout',
                   'alert-type'=>'success'
                    );
                return Redirect()->route('admin.login')->with($notification);
 }


 public function ChangePassword()
    {
        return view('admin.auth.passwordchange');
    }

 public function Update_pass(Request $request)
 {
     dd($request->all());
   $password = Auth::user()->password;
   $oldpass = $request->oldpass;
   $newpass = $request->password;
   $confirm = $request->password_confirmation;
 if (Hash::check($oldpass, $password)) {
   if ($newpass === $confirm) {
   $user =Admin::find(Auth::id());
   $user->password= Hash::make($request->password);
   $user->save();
   Auth::logout();
   $notification=array(
         'messege'=>'Password Changed Successfully ! Now Login with Your New Password',
         'alert-type'=>'success'
          );
        return Redirect()->route('admin.login')->with($notification);
 }else{
   $notification=array(
           'messege'=>'New password and Confirm Password not matched!',
           'alert-type'=>'error'
            );
          return Redirect()->back()->with($notification);
 }

 }else{
   $notification=array(
                 'messege'=>'Old Password not matched!',
                 'alert-type'=>'error'
                  );
                return Redirect()->back()->with($notification);
 }

 }


}
