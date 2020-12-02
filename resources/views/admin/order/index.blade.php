@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                          <i class="fa fa-gg-circle"></i>All Order
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
                      <th class="wd-15p">Amount</th>
                      <th class="wd-15p">Transection ID</th>
                      <th class="wd-15p">Subtotal</th>
                      <th class="wd-20p">Shipping</th>
                      <th class="wd-20p">Total</th>
                       <th class="wd-20p">Date</th>
                       <th class="wd-20p">Status</th>
                       <th class="wd-20p">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($order as $row)
                    <tr>
                      <td>{{ $row->amount }}</td>
                      <td>{{ $row->blnc_transection }}</td>
                      <td>{{ $row->subtotal }} $</td>
                      <td>{{ $row->shipping }} $</td>
                      <td>{{ $row->total }} $</td>
                      <td>{{ $row->date }} </td>
                      <td>
                        @if($row->status == 'Pending')
                         <span class="badge badge-warning">Pending</span>
                        @elseif($row->status == 'Processing')
                        <span class="badge badge-info">Processing</span>
                        @elseif($row->status == 2)
                         <span class="badge badge-info">Progress </span>
                         @elseif($row->status == 3)
                         <span class="badge badge-success">Delevered </span>
                         @else
                         <span class="badge badge-danger">Cancel </span>
                         @endif

                      <td>
                          <a href="{{ URL::to('admin/view/order/'.$row->id) }}" class="btn btn-sm btn-info">View</a>
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
