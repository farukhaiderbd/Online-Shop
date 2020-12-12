<form method="POST" action="{{route('admin.setting.update')}}">
    @csrf
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="google_analytics_code">Google Analytics code</label>
                <textarea name="google_analytics" id="google_analytics_code" class="form-control" rows="2"  placeholder="Enter google analytics code">{!! Config::get('settings.google_analytics') !!}</textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="facebook_pixel">Facebook Pixel code</label>
                <textarea name="facebook_pixels" id="facebook_pixel" class="form-control" rows="2"  placeholder="Enter facebook pixel code">{!! Config::get('settings.facebook_pixels') !!}</textarea>
            </div>
        </div>
    </div>

    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>

</form>
