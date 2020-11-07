<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class WebsiteController extends Controller{
    public function __construct(){

    }

    public function index(){
        $categories =Category::where('status',1)->limit(10)->get();
        return view('website.home',compact('categories'));
    }
}
