<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;
use Carbon\Carbon;
use Session;

class UserController extends Controller{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('superadmin');
    }

    public function index(){
        $allUser=User::orderBy('id','DESC')->get();
        return view('admin.user.all',compact('allUser'));
    }

    public function add(){
        return view('admin.user.add');
    }

    public function view($id){
        $data=User::where('id',$id)->firstOrFail();
        return view('admin.user.view',compact('data'));
    }

    public function insert(Request $request){
        $this->validate($request,[
          'name' => 'required|string|max:255',
          'email' => 'required|string|email|max:255|unique:users',
          'password' => 'required|string|min:8|confirmed',
        ],[
          'name.required'=>'Please enter name!',
          'email.required'=>'Please enter email address!',
          'password.required'=>'Please enter password!',
        ]);

        $insert=User::insertGetId([
            'name'=>$request['name'],
            'phone'=>$request['phone'],
            'email'=>$request['email'],
            'password'=>Hash::make($request['password']),
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($insert){
            Session::flash('success');
            return redirect('admin/user/add');
        }else{
            Session::flash('error');
            return redirect('admin/user/add');
        }

    }
}
