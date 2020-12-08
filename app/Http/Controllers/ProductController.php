<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use App\SubCategory;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Str;
class ProductController extends Controller
{
    public function index()
    {
        $all = Product::where('status',1)->get();
        return view('admin.product.all',compact('all'));

    }
    public function create()
    {
        return view('admin.product.create');

    }
    public function store(Request $request)
    {

        $this->validate($request,[
            'name' => 'required',
        ],[
            'name.required' => 'This Product field required',
        ]);
            $slug = Str::slug($request->name);
            
            $product = new Product();
            $product->name = $request->name;
            $product->code = $request->code;
            $product->qty = $request->qty;
            $product->subcategory_id = $request->subcategory_id;
            $product->category_id = $request->category_id;
            $product->slug = $slug;
            $product->details = $request->details;
            $product->color = $request->color;
            $product->size = $request->size;
            $product->selling_price = $request->selling_price;
            $product->discount_price = $request->discount_price;
            $product->video_link = $request->video_link;
            $product->main_slider= $request->main_slider;
            $product->hot_deal= $request->hot_deal;
            $product->best_rated= $request->best_rated;
            $product->trend= $request->trend;
            $product->mid_slider= $request->mid_slider;
            $product->hot_new= $request->hot_new;
            $product->buyone_getone= $request->buyone_getone;
            $image_one= $request->image_one;
            $image_two= $request->image_two;
            $image_three= $request->image_three;
            if ($image_one && $image_two && $image_three) {
              $image_one_name= hexdec(uniqid()).'.'.$image_one->getClientOriginalExtension();
              Image::make($image_one)->resize(300,300)->save('public/uploads/product/'.$image_one_name);
              $product->image_one='public/uploads/product/'.$image_one_name;

              $image_two_name= hexdec(uniqid()).'.'.$image_two->getClientOriginalExtension();
              Image::make($image_two)->resize(300,300)->save('public/uploads/product/'.$image_two_name);
              $product->image_two='public/uploads/product/'.$image_two_name;

              $image_three_name= hexdec(uniqid()).'.'.$image_three->getClientOriginalExtension();
              Image::make($image_three)->resize(300,300)->save('public/uploads/product/'.$image_three_name);
              $product->image_three='public/uploads/product/'.$image_three_name;
              $product->save();
              $notification = array(
                        'messege'   =>  'Add Product successfully!',
                            'alert-type'=>  'success'
                         );
                return redirect()->route('create_product')->with($notification);

             }



    }
    public function view()
    {

    }
    public function edit($id)
    {
        $product = Product::find($id);
        return view('admin.product.edit',compact('product'));

    }
    public function update(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
        ],[
            'name.required' => 'This Product field required',
        ]);
            $slug = Str::slug($request->name);
            $product = Product::find($request->id);
            $product->name = $request->name;
            $product->code = $request->code;
            $product->qty = $request->qty;
            $product->subcategory_id = $request->subcategory_id;
            $product->category_id = $request->category_id;
            $product->slug = $slug;
            $product->details = $request->details;
            $product->color = $request->color;
            $product->size = $request->size;
            $product->selling_price = $request->selling_price;
            $product->discount_price = $request->discount_price;
            $product->video_link = $request->video_link;
            $product->main_slider= $request->main_slider;
            $product->hot_deal= $request->hot_deal;
            $product->best_rated= $request->best_rated;
            $product->trend= $request->trend;
            $product->mid_slider= $request->mid_slider;
            $product->hot_new= $request->hot_new;
            $product->buyone_getone= $request->buyone_getone;
            $image_one= $request->image_one;
            $image_two= $request->image_two;
            $image_three= $request->image_three;
            if($image_one){
                $image_one_name= hexdec(uniqid()).'.'.$image_one->getClientOriginalExtension();
                Image::make($image_one)->resize(300,300)->save('public/uploads/product/'.$image_one_name);
                $product->image_one='public/uploads/product/'.$image_one_name;
            }
            if($image_two){
                $image_two_name= hexdec(uniqid()).'.'.$image_two->getClientOriginalExtension();
                Image::make($image_two)->resize(300,300)->save('public/uploads/product/'.$image_two_name);
                $product->image_two='public/uploads/product/'.$image_two_name;

            }
            if($image_three){
                $image_three_name= hexdec(uniqid()).'.'.$image_three->getClientOriginalExtension();
                Image::make($image_three)->resize(300,300)->save('public/uploads/product/'.$image_three_name);
                $product->image_three='public/uploads/product/'.$image_three_name;
            }
              $product->save();
              $notification = array(
                        'messege'   =>  'Add Product successfully!',
                            'alert-type'=>  'success'
                         );
                return redirect()->route('all_product')->with($notification);




    }
    public function softdelete()
    {

    }
    public function getsubcategory($id)
    {
        $cat =SubCategory::where('status', 1)->where('category_id', $id)->get();

        return json_encode($cat);
        // return response()->json($cat);
    }
}
