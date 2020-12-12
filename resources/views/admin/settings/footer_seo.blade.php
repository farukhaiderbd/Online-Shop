<form action="{{route('admin.setting.update')}}" method="POST">
    @csrf
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-8">
            <div class="form-group">
                <label for="footer_copywrite">Copywrite Text </label>
                <textarea  placeholder="Enter Copywrite text for store" name="footer_copyright_text" id="footer_copywrite" rows="2" class="form-control">{{ config('settings.footer_copyright_text') }}</textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-8">
            <div class="form-group">
                <label for="seo_meta_title">SEO Meta Title</label>
                <input type="text" class="form-control" name="seo_meta_title" placeholder="SEO meta title" id="seo_meta_title" value="{{ config('settings.seo_meta_title') }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-8">
            <div class="form-group">
                <label for="seo_meta_description">SEO meta Descriptions</label>
                <textarea placeholder="Enter seo meta description for store" name="seo_meta_description" id="seo_meta_description" class="form-control" rows="2">{{ config('settings.seo_meta_description') }}</textarea>
            </div>
        </div>

    </div>
    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>
</form>
