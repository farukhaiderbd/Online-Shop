
<form action="{{route('admin.setting.update')}}" method="POST" >
    @csrf
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label for="site_name">Site Name</label>
            <input type="text" class="form-control" id="site_name" name="site_name" value="{{ config('settings.site_name') }}">
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="site_title">Site Title</label>
                <input type="text" class="form-control" id="site_title" name="site_title" value="{{ config('settings.site_title') }}">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label for="default_phone_number">Phone</label>
                <input type="text" class="form-control" id="default_phone_number" name="default_phone_number" value="{{ config('settings.default_phone_number') }}">
            </div>
        </div>
     <div class="col-lg-6">
            <div class="form-group">
               <label for="eamil_address">Default Email</label>
                <input type="email" class="form-control" name="default_email_address" id="email_address" value="{{ config('settings.default_email_address') }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label for="currency_code">Currency Code</label>
                <input type="text" class="form-control" id="currency_code" name="currency_code" value="{{ config('settings.currency_code') }}">
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="currency_symbo">Currency Symbol</label>
                <input type="text" class="form-control" id="currency_symbo" name="currency_symbol" value="{{ config('settings.currency_symbol') }}">
            </div>
        </div>
    </div>
    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>

</form>
