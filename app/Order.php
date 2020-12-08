<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = [''];

    // protected $fillable =[
    //     'user_id','name','email','phone','zip','address','payment_id','paying_amount','blnc_transection','stripe_order_id','shipping','vat', 'subtotal','total','payment_type','status','date','month','year','status_code'
    //     ];


        public function products()
        {
            return $this->hasMany('App\OrderDetails','order_id');
        }


}
