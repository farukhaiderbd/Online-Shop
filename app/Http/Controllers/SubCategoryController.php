<?php

namespace App\Http\Controllers;

use App\Category;
use App\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Image;
class SubCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $all =SubCategory::where('status',1)->get();
        return view('admin.subcategory.index',compact('all'));

    }
    public function create()
    {
        $categories = Category::where('status',1)->get();
        return view('admin.subcategory.create',compact('categories'));

    }
    public function store(Request $request)
    {
        $category = new SubCategory;
        $category->category_id = $request->category_id;
        $category->name = $request->name;
        $category->icon = $request->icon;
        $category->slug = Str::slug($request->name);
        $image =$request->image;
        if($image){
            $imageName='SubCat'.'_'.time().'.'.$image->getClientOriginalExtension();
            Image::make($image)->save('public/uploads/category/'.$imageName);
            $category->image = 'public/uploads/category/'.$imageName;
            $category->save();
            return redirect()->back();
        }
        $category->save();
        return redirect()->back();
    }
    public function edit($slug)
    {
        $data =SubCategory::where('slug',$slug)->first();
        return view('admin.subcategory.edit',compact('data'));

    }
    public function update(Request $request)
    {

        $category = SubCategory::where('slug',$request->slug)->first();
        $category->category_id = $request->category_id;
        $category->name = $request->name;
        $category->icon = $request->icon;
        $category->slug = Str::slug($request->name);
        $image =$request->image;
        if($image){
            $imageName='SubCat'.'_'.time().'.'.$image->getClientOriginalExtension();
            Image::make($image)->save('public/uploads/category/'.$imageName);
            $category->image = 'public/uploads/category/'.$imageName;
            $category->save();
            return redirect()->back();
        }
        $category->save();
        return redirect()->route('all_subcategory');

    }
    public function softdelete(Request $request)
    {
        $id =$request->modal_id;
        SubCategory::find($id)->update(['status'=> 0]);
       return redirect()->back();

    }
    public function delete($id)
    {
        $category =Category::all();

    }
}
