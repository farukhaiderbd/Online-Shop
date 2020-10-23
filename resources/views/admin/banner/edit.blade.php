@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{url('admin/banner/update')}}" enctype="multipart/form-data">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i>Update Banner Information
                      </div>
                      <div class="col-md-6 card_header_button">
                            <a href="{{url('admin/banner')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>All Banner</a>
                      </div>
                      <div class="clr"></div>
                  </div>
              </div>
              <div class="card-body">
                @if(Session::has('success'))
                  <script type="text/javascript">
                      swal({title: "Success!", text: "Successfully update banner information!", icon: "success", button: "OK", timer:5000,});
                  </script>
                @endif
                @if(Session::has('error'))
                  <script type="text/javascript">
                      swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
                  </script>
                @endif
                <div class="form-group row custom_form_group{{ $errors->has('title') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Banner Title:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="hidden" name="id" value="{{$data->ban_id}}"/>
                    <input type="hidden" name="slug" value="{{$data->ban_slug}}"/>
                    <input type="text" class="form-control" name="title" value="{{$data->ban_title}}">
                    @if ($errors->has('title'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('title') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('subtitle') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Banner Subtitle:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="subtitle" value="{{$data->ban_subtitle}}">
                    @if ($errors->has('subtitle'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('subtitle') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Banner Button:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="btn" value="{{$data->ban_button}}">
                  </div>
                </div>
                <div class="form-group row custom_form_group">
                  <label class="col-sm-3 col-form-label">Banner Button URL:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="url" value="{{$data->ban_url}}">
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('pic') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Banner Image:<span class="req_star">*</span></label>
                  <div class="col-sm-3">
                    <input type="file" class="" name="pic">
                    @if ($errors->has('pic'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('pic') }}</strong>
                        </span>
                    @endif
                  </div>
                  <div class="col-sm-2">
                    @if($data->ban_image!='')
                      <img class="img-thumbnail img-fluid" src="{{asset('uploads/'.$data->ban_image)}}" alt="banner"/>
                    @else
                      <img class="img-thumbnail img-fluid" src="{{asset('uploads/avatar.png')}}" alt="banner"/>
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
