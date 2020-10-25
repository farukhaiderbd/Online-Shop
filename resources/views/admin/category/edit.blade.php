@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{route('update_category')}}" enctype="multipart/form-data">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i>Update Category
                      </div>
                      <div class="col-md-6 card_header_button">
                            <a href="{{route('all_category')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>All Category</a>
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
                <div class="form-group row custom_form_group{{ $errors->has('name') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Category Name:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="hidden" name="id" value="{{$data->id}}"/>
                    <input type="hidden" name="slug" value="{{$data->slug}}"/>
                    <input type="text" class="form-control" name="name" value="{{$data->name}}">
                    @if ($errors->has('name'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
                <div class="form-group row custom_form_group{{ $errors->has('icon') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Category Icon:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="icon" value="{{$data->icon}}">
                    @if ($errors->has('icon'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('icon') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>

                <div class="form-group row custom_form_group{{ $errors->has('image') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Category Image:<span class="req_star">*</span></label>
                  <div class="col-sm-3">
                    <input type="file" class="" name="image">
                    @if ($errors->has('image'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('image') }}</strong>
                        </span>
                    @endif
                  </div>
                  <div class="col-sm-2">
                    @if($data->image !='')
                      <img class="img-thumbnail img-fluid" src="{{URL::to($data->image)}}" alt="banner"/>
                    @else
                      <img class="img-thumbnail img-fluid" src="{{asset('public/uploads/avatar.png')}}" alt="banner"/>
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
