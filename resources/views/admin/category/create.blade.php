@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{route('store_category')}}" enctype="multipart/form-data">
          @csrf
          <div class="card card-outline-info">
              <div class="card-header">
                  <div class="row">
                      <div class="col-md-6 card_header_title">
                            <i class="fa fa-gg-circle"></i>Category Create
                      </div>
                      <div class="col-md-6 card_header_button">
                            <a href="{{route('all_category')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>All Category</a>
                      </div>
                      <div class="clr"></div>
                  </div>
              </div>
              <div class="card-body">
                <div class="form-group row custom_form_group{{ $errors->has('name') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Category Name:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control" name="name" value="{{old('name')}}">
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
                    <input type="text" class="form-control" name="icon" value="{{old('icon')}}">
                    @if ($errors->has('icon'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('icon') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>

                <div class="form-group row custom_form_group{{ $errors->has('image') ? ' has-error' : '' }}">
                  <label class="col-sm-3 col-form-label">Category Image:<span class="req_star">*</span></label>
                  <div class="col-sm-7">
                    <input type="file" class="" name="image">
                    @if ($errors->has('image'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('image') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
              </div>
              <div class="card-footer text-center">
                  <button type="submit" class="btn btn-md btn-info">UPLOAD</button>
              </div>
          </div>
        </form>
    </div>
</div>
@endsection
