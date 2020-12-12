<form action="{{route('admin.setting.update')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-lg-3">
            @if (Config('settings.site_logo') != null)
        <img src="{{asset('storage/app/public/'.config('settings.site_logo'))}}" style="width: 80px; height:auto; border:1px solid rgb(78, 73, 73)" class="mt-3" alt="">
            @else
        <img src="{{asset('public/backend/media/logo/logo.png')}}" style="width: 80px; height:auto; border:1px solid black" class="mt-3" alt="">
        @endif
    </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="site_logo">Site Logo</label>
                <input type="file" class="form-control logoImg" name="site_logo" id="site_logo">
            </div>
        </div>
        <div class="col-lg-3"></div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            @if (Config('settings.site_favicon') != null)
            <img src="{{asset('storage/app/public/'.config('settings.site_favicon'))}}" style="width: 80px; height:auto; border:1px solid rgb(73, 66, 66)" class="mt-3" alt="">
                @else

                <img src="{{asset('public/backend/media/logo/favicon.webp')}}" style="width: 80px; height:auto; border:1px solid black" class="mt-4" alt="">
        @endif
            </div>
        <div class="col-lg-6 mt-3">
            <div class="form-group">
                <label for="favicon">Site Favicon</label>
                <input type="file" class="form-control faviconImg" name="site_favicon" id="favicon">
            </div>
        </div>
        <div class="col-lg-3"></div>
    </div>
    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>
</form>

