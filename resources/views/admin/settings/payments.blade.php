<form method="POST" action="{{route('admin.setting.update')}}">
        @csrf
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="stripe_payment_method">Stripe Payment Methods</label>
                    <select name="stripe_payment_method" id="stripe_payment_method" class="form-control">
                        <option value="1" {{ (config('settings.stripe_payment_method')) == 1 ? 'selected' : '' }}>Enabled</option>
                        <option value="0" {{ (config('settings.stripe_payment_method')) == 0 ? 'selected' : '' }}>Disabled</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="stripe_key">Key</label>
                    <input class="form-control" id="stripe_key" type="text" name="stripe_key" placeholder="Enter stripe key" value="{{ config('settings.stripe_key') }}">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="stripe_secret_key">Secret Key</label>
                    <input class="form-control" id="stripe_secret_key" type="text" name="stripe_secret_key" placeholder="Enter stripe secret key" value="{{ config('settings.stripe_secret_key') }}">
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="paypal_payment_method">Paypal Payment</label>
                    <select name="paypal_payment_method" id="paypal_payment_method" class="form-control">
                        <option value="1" {{ (config('settings.paypal_payment_method')) == 1 ? 'selected' : '' }}>Enabled</option>
                        <option value="0" {{ (config('settings.paypal_payment_method')) == 0 ? 'selected' : '' }}>Disabled</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="paypal_client_id">Client Id</label>
                    <input class="form-control" type="text" placeholder="Enter paypal client Id" id="paypal_client_id" name="paypal_client_id" value="{{ config('settings.paypal_client_id') }}"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label for="paypal_secret_id">Secret Id</label>
                    <input class="form-control" type="text" placeholder="Enter paypal secret id" id="paypal_secret_id" name="paypal_secret_id" value="{{ config('settings.paypal_secret_id') }}"/>
                </div>
            </div>
        </div>




    <div class="text-center">
        <button class="btn btn-primary btn-lg waves-effect waves-light col-lg-3 mt-2" type="submit">Update</button>
    </div>

</form>
