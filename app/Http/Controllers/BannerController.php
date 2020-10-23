<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Banner;
use Carbon\Carbon;
use Session;
use Image;

class BannerController extends Controller{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('admin');
    }

    public function index(){
        $all=Banner::where('ban_status',1)->orderBy('ban_id','DESC')->get();
        return view('admin.banner.all',compact('all'));
    }

    public function add(){
        return view('admin.banner.add');
    }

    public function edit($slug){
        $data=Banner::where('ban_status',1)->where('ban_slug',$slug)->firstOrFail();
        return view('admin.banner.edit',compact('data'));
    }

    public function view($slug){
        $data=Banner::where('ban_status',1)->where('ban_slug',$slug)->firstOrFail();
        return view('admin.banner.view',compact('data'));
    }

    public function insert(Request $request){
        $this->validate($request,[
            'title'=>'required|min:10',
            'subtitle'=>'required',
            'pic'=>'required',
        ],[
            'title.required'=>'Please enter banner title!',
            'title.min'=>'Please minimum 10 char of banner title!',
            'subtitle.required'=>'Please enter banner subtitle!',
            'pic.required'=>'Please enter banner image!',
        ]);
        $slugTitle=Str::slug($request['title'], '-');
        $slug=rand(100,10000).'-'.$slugTitle;

        $insert=Banner::insertGetId([
          'ban_title'=>$request['title'],
          'ban_subtitle'=>$request['subtitle'],
          'ban_button'=>$request['btn'],
          'ban_url'=>$request['url'],
          'ban_slug'=>$slug,
          'created_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='banner_'.$insert.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$imageName);
          Banner::where('ban_id',$insert)->update([
              'ban_image'=>$imageName
          ]);
        }

        if($insert){
            Session::flash('success','value');
            return redirect('admin/banner');
        }else{
            Session::flash('error','value');
            return redirect('admin/banner/add');
        }
    }

    public function update(Request $request){
        $this->validate($request,[
            'title'=>'required|min:10',
            'subtitle'=>'required',
        ],[
            'title.required'=>'Please enter banner title!',
            'title.min'=>'Please minimum 10 char of banner title!',
            'subtitle.required'=>'Please enter banner subtitle!',
        ]);

        $id=$request['id'];
        $slug=$request['slug'];
        $update=Banner::where('ban_status',1)->where('ban_id',$id)->update([
            'ban_title'=>$request['title'],
            'ban_subtitle'=>$request['subtitle'],
            'ban_button'=>$request['btn'],
            'ban_url'=>$request['url'],
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='banner_'.$id.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$imageName);

          Banner::where('ban_id',$id)->update([
              'ban_image'=>$imageName
          ]);
        }

        if($update){
            Session::flash('success','value');
            return redirect('admin/banner/edit/'.$slug);
        }else{
            Session::flash('error','value');
            return redirect('admin/banner/edit/'.$slug);
        }
    }

    public function softdelete($slug){
        $soft=Banner::where('ban_status',1)->where('ban_slug',$slug)->update([
            'ban_status'=>'0',
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($soft){
            Session::flash('success','value');
            return redirect('admin/banner');
        }else{
            Session::flash('error','value');
            return redirect('admin/banner');
        }
    }
}
