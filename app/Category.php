<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable =['status'];

    public function subcategory()
    {
        return $this->belongsToMany('App\Subcategory','category_id');
    }
    public function products()
    {
        return $this->hasMany('App\Product');
    }
}
