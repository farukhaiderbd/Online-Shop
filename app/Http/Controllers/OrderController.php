<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
   public function pendingorder()
   {
    $order = Order::where('status','pending')->orderBy('id', 'DESC')->get();

    return view('admin.order.index',compact('order'));

   }
   public function processingorder()
   {
    $order = Order::where('status','Processing')->orderBy('id', 'DESC')->get();

    return view('admin.order.index',compact('order'));

   }
}
