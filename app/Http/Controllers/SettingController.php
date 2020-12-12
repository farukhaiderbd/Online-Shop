<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use App\Models\Setting;
use Config;
class SettingController extends Controller
{
    use UploadAble;
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('admin.settings.index');
    }

    public function update(Request $request)
    {

    if ($request->has('site_logo') && ($request->file('site_logo') instanceof UploadedFile)) {

            if (config('settings.site_logo') != null) {
                $this->deleteOne(config('settings.site_logo'));
            }
            $logo = $this->uploadOne($request->file('site_logo'), 'media/logo');
            Setting::set('site_logo', $logo);

        }

    elseif ($request->has('site_favicon') && ($request->file('site_favicon') instanceof UploadedFile)) {

            if (config('settings.site_favicon') != null) {
                $this->deleteOne(config('settings.site_favicon'));
            }
            $favicon = $this->uploadOne($request->file('site_favicon'), 'media/logo');
            Setting::set('site_favicon', $favicon);

        }

    else {

            $keys = $request->except('_token');

            foreach ($keys as $key => $value)
            {

             Setting::set($key, $value);
            }

            

        }
        $notification=array(
            'messege'=>'Successfully Done',
             'alert-type'=>'success'
       );
        return redirect()->back()->with($notification);
        // return $this->responseRedirectBack('Settings updated successfully.', 'success');
     }

}
