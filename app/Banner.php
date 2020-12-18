<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{



// protected $fillable =['name'];

    // public function setBanImageAttribute($value)
    // {
    //     $this->attributes['ban_image'] = $value;
    //     if($value != ''){
    //         $image_name= hexdec(uniqid()).'.'.$value->getClientOriginalExtension();
    //         Image::make($value)->resize(1349,562)->save('uploads/banner/'.$image_name);
    //         return $this->attributes['ban_image'] ='uploads/banner/'.$image_name;
    //     }

    // }


    // public function getFullNameAttribute()
    // {
    //     return $this->first_name.$this->last_name;
    // }




}
