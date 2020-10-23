@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{url('admin/general/basic/update')}}" enctype="multipart/form-data">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i> Update Basic Information
                      </div>
                      <div class="col-md-6 card_header_button">
                            <a href="{{url('admin/general/social/media')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>Social Media</a>
                      </div>
                      <div class="clr"></div>
                  </div>
              </div>
              <div class="card-body">
                @if(Session::has('success'))
                  <script type="text/javascript">
                      swal({title: "Success!", text: "Successfully update basic information!", icon: "success", button: "OK", timer:5000,});
                  </script>
                @endif
                @if(Session::has('error'))
                  <script type="text/javascript">
                      swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
                  </script>
                @endif
                <div class="form-group row custom_form_group{{ $errors->has('title') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Title:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="title" value="{{$data->basic_title}}">
                    @if ($errors->has('title'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('title') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Subtitle:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="subtitle" value="{{$data->basic_subtitle}}">
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Details:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control" rows="3" name="details">{{$data->basic_details}}</textarea>
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('pic') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Logo:</label>
                  <div class="col-sm-3">
                    <input type="file" class="" name="pic">
                  </div>
                  <div class="col-sm-2">
                      @if($data->basic_logo!='')
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/'.$data->basic_logo)}}" alt="logo"/>
                      @else
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/avatar.png')}}" alt="logo"/>
                      @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Favicon:</label>
                  <div class="col-sm-3">
                    <input type="file" class="" name="favicon">
                  </div>
                  <div class="col-sm-2">
                      @if($data->basic_favicon!='')
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/'.$data->basic_favicon)}}" alt="logo"/>
                      @else
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/avatar.png')}}" alt="logo"/>
                      @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Footer-Logo:</label>
                  <div class="col-sm-3">
                    <input type="file" class="" name="flogo">
                  </div>
                  <div class="col-sm-2">
                      @if($data->basic_flogo!='')
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/'.$data->basic_flogo)}}" alt="logo"/>
                      @else
                          <img class="img-thumbnail img-fluid img100" src="{{asset('uploads/avatar.png')}}" alt="logo"/>
                      @endif
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
