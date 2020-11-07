@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>All Product Information
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
                      <th>Name</th>
                      <th>category</th>
                      <th>Subcategory</th>
                      <th>Photo</th>
                      <th>Manage</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($all as $data)
                    <tr>
                      <td>{{$data->name}}</td>
                      <td>{{$data->category->name}}</td>
                      <td>{{$data->subcategory->name}}</td>
                      <td>
                          @if($data->image_one!='')
                            <img height="50" src="{{URL::to($data->image_one)}}" alt="banner"/>
                          @else
                            <img height="50" src="{{asset('public/uploads/avatar.png')}}" alt="banner"/>
                          @endif
                      </td>
                      <td>
                          <a href="{{route('view_product',$data->id)}}"><i class="fa fa-plus-square fa-lg view_icon"></i></a>
                          <a href="{{route('edit_product',$data->id)}}"><i class="fa fa-pencil-square fa-lg edit_icon"></i></a>
                          {{-- <a href="{{url('admi/'.$data->id)}}"><i class="fa fa-trash fa-lg delete_icon"></i></a> --}}
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

