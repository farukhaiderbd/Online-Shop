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
   public function orderview($id)
   {
      $order= Order::find($id);
      return view('admin.order.view', compact('order'));
   }

   public function paymentaccept($id)
   {
    //    $order = Order::find($id)->update(['status' => 'Proccessing']);

    $order = Order::find($id);
    $order->status = 'Processing';
    $order->save();
    return redirect()->back();
   }
   public function paymentcancle($id)
   {
    //    $order = Order::find($id)->update(['status' => 'Proccessing']);

    $order = Order::find($id);
    $order->status = 'Cancle';
    $order->save();
    return redirect()->back();
   }
   public function paymentprocessing($id)
   {
    //    $order = Order::find($id)->update(['status' => 'Proccessing']);

    $order = Order::find($id);
    $order->status = 'Done';
    $order->save();
    return redirect()->back();
   }
   public function paymentdone($id)
   {
    //    $order = Order::find($id)->update(['status' => 'Proccessing']);

    $order = Order::find($id);
    $order->status = 'Completed';
    $order->save();
    return redirect()->back();
   }

}
