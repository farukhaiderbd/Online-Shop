@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{url('admin/general/contact/update')}}" enctype="multipart/form-data">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i> Update Social Media Information
                      </div>
                      <div class="col-md-6 card_header_button">
                          <a href="{{url('admin/general/basic')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>Basic Information</a>
                      </div>
                      <div class="clr"></div>
                  </div>
              </div>
              <div class="card-body">
                @if(Session::has('success'))
                  <script type="text/javascript">
                      swal({title: "Success!", text: "Successfully update contact information!", icon: "success", button: "OK", timer:5000,});
                  </script>
                @endif
                @if(Session::has('error'))
                  <script type="text/javascript">
                      swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
                  </script>
                @endif
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->ci_phone1}}" name="phone1">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->ci_phone2}}" name="phone2">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->ci_phone3}}" name="phone3">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->ci_phone4}}" name="phone4">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input type="email" class="form-control" value="{{$data->ci_email1}}" name="email1">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input type="email" class="form-control" value="{{$data->ci_email2}}" name="email2">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input type="email" class="form-control" value="{{$data->ci_email3}}" name="email3">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input type="email" class="form-control" value="{{$data->ci_email4}}" name="email4">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <textarea class="form-control" rows="2" name="add1">{{$data->ci_add1}}</textarea>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <textarea class="form-control" rows="2" name="add2">{{$data->ci_add2}}</textarea>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <textarea class="form-control" rows="2" name="add3">{{$data->ci_add3}}</textarea>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
                        <textarea class="form-control" rows="2" name="add4">{{$data->ci_add4}}</textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer text-center">
                  <button type="submit" class="btn btn-md btn-info">UPDATE</button>
              </div>
          </div>
        </form>
    </div>
</div>
@endsection
