<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Str;
class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $all =Category::where('status',1)->get();
        return view('admin.category.index',compact('all'));

    }
    public function create()
    {
        return view('admin.category.create');

    }
    public function store(Request $request)
    {
        $category = new Category;
        $category->name = $request->name;
        $category->icon = $request->icon;
        $category->slug = Str::slug($request->name);
        $image =$request->image;
        if($image){
            $imageName='Cat'.'_'.time().'.'.$image->getClientOriginalExtension();
            Image::make($image)->save('public/uploads/category/'.$imageName);
            $category->image = 'public/uploads/category/'.$imageName;
            $category->save();
            return redirect()->back();
        }
        $category->save();
        return redirect()->back();
    }
    public function edit($id)
    {
        $data =Category::where('slug',$id)->first();
        return view('admin.category.edit',compact('data'));

    }
    public function update(Request $request)
    {
        $category = Category::where('slug',$request->slug)->first();
        $category->name = $request->name;
        $category->icon = $request->icon;
        $category->slug = Str::slug($request->name);
        $image =$request->image;
        if($image){
            $imageName='Cat'.'_'.time().'.'.$image->getClientOriginalExtension();
            Image::make($image)->save('public/uploads/category/'.$imageName);
            $category->image = 'public/uploads/category/'.$imageName;
           $category->save();
            $slug =Str::slug($request->name);
            return redirect()->route('edit_category',$slug);
        }

       $category->save();

        $slug =Str::slug($request->name);
        return redirect()->route('edit_category',$slug);

    }
    public function softdelete(Request $request)
    {
        $id =$request->modal_id;
        Category::find($id)->update(['status'=> 0]);
       return redirect()->back();

    }
    public function delete($id)
    {
        $category =Category::all();

    }

}
