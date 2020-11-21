<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Admin\Product;
use App\Model\Wishlist;
use App\Model\Setting;
use App\Model\Admin\Coupon;
use Cart;
use Response;
use DB;
use Session;
use Auth;

class CheckoutController extends Controller
{

public function Checkout()
{

  if (Auth::check()) {
                $cart= Cart::content();
                $setting=Setting::first();
              	$charge=$setting->shipping_charge;
                return view('pages.checkout',compact('cart', 'charge'));
          }else{
             $notification=array(
                                'messege'=>'AT first login your account',
                                 'alert-type'=>'success'
                           );
            return redirect()->route('login')->with($notification);
          }


}
public function Coupon(Request $request)
{
  $coupon= $request->coupon;
  $check = Coupon::where('coupon', $coupon)->where('status', 1)->first();
  if ($check) {
    session::put('coupon',[
           'name' => $check->coupon,
           'discount' => $check->discount,
           'balance' => Cart::Subtotal() - $check->discount
       ]);
        $notification=array(
                           'messege'=>'apply your coupon',
                            'alert-type'=>'success'
                      );
                        return redirect()->back()->with($notification);
  }
  $notification=array(
                     'messege'=>'Invalied Coupon',
                      'alert-type'=>'success'
                );
                return redirect()->back()->with($notification);
}

public function CouponRemove()
{
  session::forget('coupon');
  return redirect()->back();
}
public function PymentPage()
{

	$charge= 10;
  $cart= Cart::content();
  return view('website.pages.payment',compact('cart','charge'));
}





}
