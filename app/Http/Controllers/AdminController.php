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
}
