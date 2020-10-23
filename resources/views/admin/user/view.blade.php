@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>View User Information
                    </div>
                    <div class="col-md-6 card_header_button">
                          <a href="{{url('admin/user')}}" class="btn btn-sm btn-dark"><i class="fa fa-th"></i>All User</a>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                  <div class="col-md-2"></div>
                  <div class="col-md-8">
                    <table class="table table-bordered table-striped custom_view_table">
                        <tr>
                          <td>Name</td>
                          <td>:</td>
                          <td>{{$data->name}}</td>
                        </tr>
                        <tr>
                          <td>Phone</td>
                          <td>:</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Email</td>
                          <td>:</td>
                          <td>{{$data->email}}</td>
                        </tr>
                        <tr>
                          <td>User Role</td>
                          <td>:</td>
                          <td></td>
                        </tr>
                    </table>
                  </div>
                  <div class="col-md-2"></div>
                </div>
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
