@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>All User Information
                    </div>
                    <div class="col-md-6 card_header_button">
                          <a href="{{url('admin/user/add')}}" class="btn btn-sm btn-dark"><i class="fa fa-plus-circle"></i>Add User</a>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="card-body">
              <table class="table table-bordered table-striped table-hover custom_table">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Role</th>
                      <th>Photo</th>
                      <th>Manage</th>
                    </tr>
                  </thead>
                  <tbody>
                    @php
                        $i=1;
                    @endphp
                    @foreach($allUser as $data)
                    <tr>
                      <td>{{$i++}}</td>
                      <td>{{$data->name}}</td>
                      <td>{{$data->email}}</td>
                      <td>{{$data->phone}}</td>
                      <td>{{$data->userRole->role_name}}</td>
                      <td>...</td>
                      <td>
                          <a href="{{url('admin/user/view/'.$data->id)}}"><i class="fa fa-plus-square fa-lg view_icon"></i></a>
                          <a href=""><i class="fa fa-pencil-square fa-lg edit_icon"></i></a>
                          <a href=""><i class="fa fa-trash fa-lg delete_icon"></i></a>
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
