@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{url('admin/user/submit')}}">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i>User Registration
                      </div>
                      <div class="col-md-6 card_header_button">
                            <a href="{{url('admin/user')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>All User</a>
                      </div>
                      <div class="clr"></div>
                  </div>
              </div>
              <div class="card-body">
                @if(Session::has('success'))
                  <script type="text/javascript">
                      swal({title: "Success!", text: "Successfully store user information!", icon: "success", button: "OK", timer:5000,});
                  </script>
                @endif
                @if(Session::has('error'))
                  <script type="text/javascript">
                      swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
                  </script>
                @endif
                <div class="form-group row custom_form_group{{ $errors->has('name') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Name:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="name" value="{{old('name')}}">
                    @if ($errors->has('name'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Phone:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('email') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Email:</label>
                  <div class="col-sm-7">
                    <input type="email" class="form-control" name="email" value="{{old('email')}}">
                    @if ($errors->has('email'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('password') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Password:</label>
                  <div class="col-sm-7">
                    <input type="password" class="form-control" name="password">
                    @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Confirm-Password:</label>
                  <div class="col-sm-7">
                    <input type="password" class="form-control" name="password_confirmation">
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('role') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">User-Role:</label>
                  <div class="col-sm-7">
                    @php
                        $allRole=App\UserRole::where('role_status',1)->orderBy('role_id','ASC')->get();
                    @endphp
                    <select class="form-control" name="role">
                        <option value="">Select Role</option>
                        @foreach($allRole as $urole)
                        <option value="{{$urole->role_id}}">{{$urole->role_name}}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('role'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('role') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
              </div>
              <div class="card-footer text-center">
                  <button type="submit" class="btn btn-md btn-info">REGISTRATION</button>
              </div>
          </div>
        </form>
    </div>
</div>
@endsection
