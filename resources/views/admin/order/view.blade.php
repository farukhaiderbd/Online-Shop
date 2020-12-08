@extends('layouts.admin')
@section('content')

<div class="row">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"><strong>Order</strong> Details</div>

            <div class="card-body">
            <table class="table">
                 <tr>
                     <th>Name: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Phone: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Payment: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Payment ID: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Total :</th>
                     <th> $</th>
                 </tr>
                  <tr>
                     <th>Month : </th>
                     <th>
                           {{ $order->month }}
                     </th>
                 </tr>
                  <tr>
                     <th>Date: </th>
                     <th>{{ $order->date }}</th>
                 </tr>
            </table>

            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"><strong>Shipping</strong> Details</div>

            <div class="card-body">
            <table class="table">
                 <tr>
                     <th>Name: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Phone: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Email: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>Address: </th>
                     <th></th>
                 </tr>
                 <tr>
                     <th>City :</th>
                     <th></th>
                 </tr>
                  <tr>
                     <th>Status : </th>
                     <th>
                             @if($order->status == 0)
                              <span class="badge badge-warning">Pending</span>
                             @elseif($order->status == 1)
                             <span class="badge badge-info">Payment Accept</span>
                             @elseif($order->status == 2)
                              <span class="badge badge-info">Progress </span>
                              @elseif($order->status == 3)
                              <span class="badge badge-success">Delevered </span>
                              @else
                              <span class="badge badge-danger">Cancel </span>
                              @endif
                     </th>
                 </tr>

            </table>

            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="card pd-20 pd-sm-40 col-lg-12">
      <h6 class="card-body-title">Product Details </h6>
      <br>
      <div class="table-wrapper">
        <table  class="table display responsive nowrap">
          <thead>
            <tr>
              <th class="wd-15p">Product ID</th>
              <th class="wd-15p">Product Name</th>
              <th class="wd-15p">Image</th>
              <th class="wd-15p">Color </th>
              <th class="wd-15p">Size</th>
              <th class="wd-15p">Quantity</th>
              <th class="wd-15p">Unit Price</th>
              <th class="wd-20p">Total</th>
            </tr>
          </thead>
          <tbody>
            @foreach($order->products as $row)
            <tr>
              <td>{{ $row->product_code }}</td>
              <td>{{ $row->product_name }}</td>
              <td><img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"></td>
              <td>{{ $row->color }}</td>
              <td>{{ $row->size }}</td>
              <td>{{ $row->quantity }}</td>
              <td>
                  {{ $row->singleprice }} $

              </td>
              <td>
              {{ $row->totalprice }} $

              </td>

            </tr>
            @endforeach
          </tbody>
        </table>
      </div><!-- table-wrapper -->
    </div><!-- card -->
</div>


    @if($order->status == 'Pending')
     <a href="{{ route('order_payment_accept',$order->id) }}" class="btn btn-info btn-block">Payment Accept</a>
     <a href="{{ route('order_payment_cancle',$order->id) }}" class="btn btn-danger btn-block">Cancel Order</a>
 @elseif($order->status == 'Processing')
     <a href="{{ route('order_payment_processing',$order->id) }}" class="btn btn-info btn-block">Delevery Processing</a>
     <strong> Payment Already Checked and pass here for delevery request</strong>
 @elseif($order->status == 'Done')
      <a href="{{ route('order_payment_done',$order->id) }}" class="btn btn-success btn-block">Delevered Done</a>
      <strong> Payment Already done your product are handover successfully</strong>
 @elseif($order->status == 'Completed')
 <strong class="text-success">This product are succesfully delevered</strong>
 @else
 <strong class="text-danger">This order are not valid its canceled</strong>
   @endif

@endsection
