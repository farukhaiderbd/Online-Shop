<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;
use Auth;
class CustomerController extends Controller
{

    public function home()
    {
        $id = Auth::user()->id;
        $order = Order::where('user_id',1)->get();
        return view('website.pages.dashboard', compact('order'));
    }

    
}
