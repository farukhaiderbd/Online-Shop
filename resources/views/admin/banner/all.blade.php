@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>All Banner Information
                    </div>
                    <div class="col-md-6 card_header_button">
                          <a href="{{url('admin/banner/add')}}" class="btn btn-sm btn-dark"><i class="fa fa-plus-circle"></i>Add Banner</a>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="card-body">
              @if(Session::has('success'))
                <script type="text/javascript">
                    swal({title: "Success!", text: "Successfully delete banner information!", icon: "success", button: "OK", timer:5000,});
                </script>
              @endif
              @if(Session::has('error'))
                <script type="text/javascript">
                    swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
                </script>
              @endif
              <table class="table table-bordered table-striped table-hover custom_table">
                  <thead>
                    <tr>
                      <th>Title</th>
                      <th>Subtitle</th>
                      <th>Button</th>
                      <th>Photo</th>
                      <th>Manage</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($all as $data)
                    <tr>
                      <td>{{$data->ban_title}}</td>
                      <td>{{Str::words($data->ban_subtitle,5)}}</td>
                      <td>{{$data->ban_button}}</td>
                      <td>
                          @if($data->ban_image!='')
                            <img height="50" src="{{asset('uploads/'.$data->ban_image)}}" alt="banner"/>
                          @else
                            <img height="50" src="{{asset('uploads/avatar.png')}}" alt="banner"/>
                          @endif
                      </td>
                      <td>
                          <a href="{{url('admin/banner/view/'.$data->ban_slug)}}"><i class="fa fa-plus-square fa-lg view_icon"></i></a>
                          <a href="{{url('admin/banner/edit/'.$data->ban_slug)}}"><i class="fa fa-pencil-square fa-lg edit_icon"></i></a>
                          <a href="{{url('admin/banner/softdelete/'.$data->ban_slug)}}"><i class="fa fa-trash fa-lg delete_icon"></i></a>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
            </div>
            <div class="card-footer">
                <a href="#" class="btn btn-sm btn-info">Print</a>
                <a href="#" class="btn btn-sm btn-warning">Excel</a>
                <a href="#" class="btn btn-sm btn-primary">Print</a>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')

@endpush
