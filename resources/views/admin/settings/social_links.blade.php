
<form method="POST" action="{{route('admin.setting.update')}}">
    @csrf
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="facebook">Facebook Profile</label>
            <input type="text" class="form-control" id="facebook" name="social_facebook" value="{{ config('settings.social_facebook') }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="twitter">Twitter Profile</label>
                <input type="text" class="form-control" id="twitter" name="social_twitter" value="{{ config('settings.social_twitter') }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="linkedin">Linkedin Profile</label>
                <input type="text" class="form-control" id="linkedin" name="social_linkedin" value="{{ config('settings.social_linkedin') }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="instagram">Instagram Profile</label>
                <input type="text" class="form-control" id="instagram" name="social_instagram" value="{{ config('settings.social_instagram') }}">
            </div>
        </div>
    </div>

    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>

</form>
