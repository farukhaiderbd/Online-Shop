<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Order_detail;
use App\Shipping;
use DB;
use Auth;
use Cart;
use Session;
use Mail;
use App\Mail\InvoiceMail;
use App\Order as AppOrder;
use App\OrderDetails;

class PaymentController extends Controller
{
// public function __construct()
// {
//   $this->middleware('auth');
// }

  public function payment(Request $request)
  {
    //   dd($request->all());

    $data =array();
    $data['name'] =$request->name;
    $data['email'] =$request->email;
    $data['phone'] =$request->phone;
    $data['address'] =$request->address;
    $data['city'] =$request->city;
    $data['payment'] =$request->payment;
    if ($request->payment == 'stripe') {
                return view('website.pages.stripe',compact('data'));
            //    return view('website.pages.gateway');
    }elseif ($request->payment == 'paypal') {

    }elseif ($request->payment == 'ideal') {

    }else {
      echo "Handcash";
    }
  }

  public function STripeCharge(Request $request)
  {

    $total=$request->total;
   // Set your secret key: remember to change this to your live secret key in production
// See your keys here: https://dashboard.stripe.com/account/apikeys
\Stripe\Stripe::setApiKey('sk_test_51GqiXrC7T5M9E4iCqgUxsAhVxU2om1cNbLkBc74HQCBeUsaOEtYhOWQdV3s1P6cnXJszWlcZUuu94VVFIJO4IVDp00Fql7GOqs');

// Token is created using Checkout or Elements!
// Get the payment token ID submitted by the form:
$token = $_POST['stripeToken'];

$charge = \Stripe\Charge::create([
 'amount' => $total*100,
 'currency' => 'usd',
 'description' => 'Faruk Haidar',
 'source' => $token,
 'metadata' => ['order_id' => uniqid()],
]);


$data=array();
// $data['user_id']=Auth::id();
$data['user_id']= 1;
$data['payment_id']=$charge->payment_method;
$data['paying_amount']=$charge->amount/100;
$data['blnc_transection']=$charge->balance_transaction;
$data['stripe_order_id']=$charge->metadata->order_id;
$data['order_number'] = rand();
$data['name'] = $request->ship_name;
$data['email'] = $request->ship_email;
$data['phone'] = $request->ship_phone;
$data['city'] = $request->ship_city;
$data['zip'] = 1207;
$data['status'] = 'pending';
$data['shipping']=$request->shipping;
$data['vat']=$request->vat;
$data['total']=$request->total;
$data['amount'] = $request->total;
$data['payment_type']=$request->payment_type;
if (Session::has('coupon')) {
    $data['subtotal']=Session::get('coupon')['balance'];
  }else{
       $data['subtotal']=Cart::Subtotal() ;
 }
 $data['status']=0;
 $data['date']= date('d-m-y');
 $data['month']=date('F');
 $data['year']=date('Y');
$data['status_code']=mt_rand(100000,999999);
$order_id=Order::create($data)->id;

 // insert shipping details table

//    $shipping=array();
//    $shipping['order_id']=$order_id;
//    $shipping['ship_name']=$request->ship_name;
//    $shipping['ship_email']=$request->ship_email;
//    $shipping['ship_phone']=$request->ship_phone;
//    $shipping['ship_address']=$request->ship_address;
//    $shipping['ship_city']=$request->ship_city;
//    Shipping::create($shipping);

   //insert data into orderdeatils
   $content=Cart::content();
   $details=array();
   foreach ($content as $row) {
     $details['order_id']= $order_id;
     $details['product_id']=$row->id;
     $details['product_name']=$row->name;
     $details['color']=$row->options->color;
     $details['size']=$row->options->size;
     $details['quantity']=$row->qty;
     $details['singleprice']=$row->price;
     $details['totalprice']=$row->qty * $row->price;
     OrderDetails::create($details);
   }
//    Mail::to('farukhaidar3@gmail.com')->send(new InvoiceMail($data));
   Cart::destroy();
    if (Session::has('coupon')) {
Session::forget('coupon');
  }

    $notification=array(
                     'messege'=>'Successfully Done',
                      'alert-type'=>'success'
                );
        return Redirect()->to('/')->with($notification);
  }


  public function Checkout2callback(Request $request)
    {
        Mail::to('farukhaidar3@gmail.com')->send(new InvoiceMail($data));
        Cart::destroy();
                 if (Session::has('coupon')) {
                 Session::forget('coupon');
             }

               $notification=array(
                              'messege'=>'Successfully Done',
                               'alert-type'=>'success'
                         );
                 return Redirect()->to('/')->with($notification);
               }
public function SuccessList()
{
  $order = Order::where('user_id', Auth::id())->where('status', 3)->orderBy('id', 'DESC')->limit(10)->get();
    return view('pages.returnorder',compact('order'));
}

public function RequestReturn($id)
{
  $return = Order::where('user_id', Auth::id())->where('id', $id)->update(['return_order' => 1]);
  $notification=array(
                   'messege'=>'Order Return request done please wait for our confirmation email',
                    'alert-type'=>'success'
              );
      return Redirect()->back()->with($notification);
}


}
