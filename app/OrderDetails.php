<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    protected $fillable = [
        'order_id','product_id','product_name','color','size','quantity','singleprice','totalprice'
      ];
}
