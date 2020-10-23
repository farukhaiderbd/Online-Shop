<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Basic;
use App\SocialMedia;
use App\ContactInformation;
use Carbon\Carbon;
use Session;
use Image;

class GeneralController extends Controller{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

    }

    public function basic(){
        $data=Basic::where('basic_status',1)->where('basic_id',1)->firstOrFail();
        return view('admin.general.basic',compact('data'));
    }

    public function update_basic(Request $request){
        $this->validate($request,[
            'title'=>'required',
        ],[
            'title.required'=>'Please enter title!',
        ]);

        $update=Basic::where('basic_id',1)->update([
            'basic_title'=>$request['title'],
            'basic_subtitle'=>$request['subtitle'],
            'basic_details'=>$request['details'],
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $logo='logo_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$logo);

          Basic::where('basic_id',1)->update([
              'basic_logo'=>$logo
          ]);
        }

        if($request->hasFile('favicon')){
          $image=$request->file('favicon');
          $favicon='favicon_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$favicon);

          Basic::where('basic_id',1)->update([
              'basic_favicon'=>$favicon
          ]);
        }

        if($request->hasFile('flogo')){
          $image=$request->file('flogo');
          $flogo='flogo_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$flogo);

          Basic::where('basic_id',1)->update([
              'basic_flogo'=>$flogo
          ]);
        }

        if($update){
            Session::flash('success');
            return redirect('admin/general/basic');
        }else{
            Session::flash('error');
            return redirect('admin/general/basic');
        }
    }

    public function social(){
        $data=SocialMedia::where('sm_status',1)->where('sm_id',1)->firstOrFail();
        return view('admin.general.social',compact('data'));
    }

    public function update_social(Request $request){
        $update=SocialMedia::where('sm_id',1)->update([
            'sm_facebook'=>$request['facebook'],
            'sm_twitter'=>$request['twitter'],
            'sm_linkedin'=>$request['linkedin'],
            'sm_google'=>$request['google'],
            'sm_pinterest'=>$request['pinterest'],
            'sm_youtube'=>$request['youtube'],
            'sm_vimeo'=>$request['vimeo'],
            'sm_flickr'=>$request['flickr'],
            'sm_whatsapp'=>$request['whatsapp'],
            'sm_skype'=>$request['skype'],
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($update){
            Session::flash('success');
            return redirect('admin/general/social/media');
        }else{
            Session::flash('error');
            return redirect('admin/general/social/media');
        }
    }

    public function contact(){
        $data=ContactInformation::where('ci_status',1)->where('ci_id',1)->firstOrFail();
        return view('admin.general.contact',compact('data'));
    }

    public function update_contact(Request $request){
        $update=ContactInformation::where('ci_id',1)->update([
            'ci_phone1'=>$request['phone1'],
            'ci_phone2'=>$request['phone2'],
            'ci_phone3'=>$request['phone3'],
            'ci_phone4'=>$request['phone4'],
            'ci_email1'=>$request['email1'],
            'ci_email2'=>$request['email2'],
            'ci_email3'=>$request['email3'],
            'ci_email4'=>$request['email4'],
            'ci_add1'=>$request['add1'],
            'ci_add2'=>$request['add2'],
            'ci_add3'=>$request['add3'],
            'ci_add4'=>$request['add4'],
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($update){
            Session::flash('success');
            return redirect('admin/general/contact');
        }else{
            Session::flash('error');
            return redirect('admin/general/contact');
        }
    }


}
