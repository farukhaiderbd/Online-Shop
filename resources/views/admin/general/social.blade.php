@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <form method="post" action="{{url('admin/general/social/media/update')}}" enctype="multipart/form-data">
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
                      swal({title: "Success!", text: "Successfully update social media information!", icon: "success", button: "OK", timer:5000,});
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
                        <span class="input-group-addon"><i class="fa fa-facebook-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_facebook}}" name="facebook">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-twitter-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_twitter}}" name="twitter">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-linkedin-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_linkedin}}" name="linkedin">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-google"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_google}}" name="google">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-pinterest-square"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_pinterest}}" name="pinterest">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-youtube"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_youtube}}" name="youtube">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-vimeo"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_vimeo}}" name="vimeo">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-flickr"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_flickr}}" name="flickr">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-whatsapp"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_whatsapp}}" name="whatsapp">
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-skype"></i></span>
                        <input type="text" class="form-control" value="{{$data->sm_skype}}" name="skype">
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
