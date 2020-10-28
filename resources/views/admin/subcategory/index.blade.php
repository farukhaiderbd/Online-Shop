@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>All Subcategory
                    </div>
                    <div class="col-md-6 card_header_button">
                          <a href="{{route('create_subcategory')}}" class="btn btn-sm btn-dark"><i class="fa fa-plus-circle"></i>Add Subcategory</a>
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
                      <th>Main Category</th>
                      <th>Name</th>
                      <th>Icon</th>
                      <th>Photo</th>
                      <th>Manage</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($all as $data)
                    <tr>
                      <td>{{$data->category->name}}</td>
                      <td>{{$data->name}}</td>
                      <td>{{$data->icon}} </td>
                      <td>
                          @if($data->image!='')
                            <img height="50" src="{{URL::to($data->image)}}" alt="Category"/>
                          @else
                            <img height="50" src="{{asset('public/uploads/avatar.png')}}" alt="Category"/>
                          @endif
                      </td>
                      <td>
                          {{-- <a href="{{route('')}}" title="View"><i class="fa fa-plus-square fa-lg view_icon"></i></a> --}}
                          <a href="{{route('edit_subcategory',$data->slug)}}" title="Edit"><i class="fa fa-pencil-square fa-lg edit_icon"></i></a>
                          <a class="text-danger" id="softDelete" href="#" data-toggle="modal" data-target="#softDelModal" data-id="{{$data->id}}"><i class="fa fa-trash fa-lg"></i></a>
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

<!--delete modal code start -->
<div id="softDelModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form method="post" action="{{route('softdelete_subcategory')}}">
          @csrf
          <div class="modal-content">
              <div class="modal-header modal_header_title">
                  <h5><i class="fa fa-gg-circle"></i> Confirm Message</h5>
              </div>
              <div class="modal-body modal_card">
                  <input type="hidden" name="modal_id" id="modal_id" />
                  Are you want to sure delete this data?
              </div>
              <div class="modal-footer">
                  <button type="submit" class="btn btn-info waves-effect">Confirm</button>
                  <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
              </div>
          </div>
        </form>
    </div>
</div>
@endsection
@push('js')

@endpush
