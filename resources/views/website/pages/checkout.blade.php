@extends('layouts.website')
@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('contents/website/assets/css/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('contents/website/assets/css/cart_responsive.css') }}">

	<!-- Cart -->
	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<div class="cart_container">
						<div class="cart_title">Checkout</div>
						<div class="cart_items">
                            @php
                                $cart = Cart::content();
                            @endphp
							<table class="table table-light">
                                <thead class="bg-dark">
                                <tr>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                   <tbody>
                                    @foreach($cart as $row)
                                    <tr>
                                        <td><img src="{{ asset( $row->options->image) }}" style="height: 100px;"></td>
                                        <td>{{ $row->name }}</td>
                                        <td>
                                            @if($row->options->color == NULL)
                                            @else
                                            {{ $row->options->color }}
                                            @endif
                                        </td>
                                        <td>
                                            @if($row->options->size == NULL)
                                            @else
                                            {{ $row->options->size }}
                                            @endif
                                        </td>
                                        <td>{{ $row->qty }}</td>
                                        <td>${{ $row->price }}</td>
                                        <td>${{ $row->price * $row->qty }}</td>
                                        <td><a href="{{ url('remove/cart/'.$row->rowId) }}" class="btn btn-sm btn-danger">X</a></td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>


						</div>
						     <div class="order_total_content " style="padding: 14px;">
					      	@if(Session::has('coupon'))
										@else
							     <h5>Apply Coupon</h5>
							     <form action="{{ route('apply.coupon') }}" method="post">
							     	@csrf
							     	 <div class="form-group col-lg-4">
                        <input type="text" class="form-control" name="coupon" required=""  aria-describedby="emailHelp" placeholder="Coupon Code">
                     </div>
                     <button type="submit" class="btn btn-danger ml-2">submit</button>
							     </form>
							     @endif
						   </div>

						<ul class="list-group col-lg-4" style="float: right;">
							  @if(Session::has('coupon'))
							       <li class="list-group-item">Subtotal :  <span style="float: right;"> $ {{Cart::subtotal() }}</span> </li>
							        <li class="list-group-item">Coupon : ({{   Session::get('coupon')['name'] }}) <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">x</a> <span style="float: right;"> $  {{ Session::get('coupon')['price'] }} </span> </li>
							  	@else
							  	  <li class="list-group-item">Subtotal :  <span style="float: right;"> $ {{ Cart::Subtotal() }}</span> </li>
							  	@endif

							  <li class="list-group-item">Shipping Charge: <span style="float: right;"> 00 </span></li>
							  <li class="list-group-item">Vat :  <span style="float: right;"> 0</span></li>
							  @if(Session::has('coupon'))
							  <li class="list-group-item">Total:  <span style="float: right;"> $ {{ Session::get('coupon')['balance'] }}</span> </li>
							  @else
							       <li class="list-group-item">Total:  <span style="float: right;">$ </span> </li>
							  @endif
						</ul>
					</div>


				</div>
			</div>
			   	<div class="cart_buttons">
				    <a href="" class="button cart_button_clear">Back</a>
				    <a href="" class="button cart_button_checkout">Final Step</a>
			   </div>
		</div>

	</div>




<script src="{{ asset('contents/website/js/cart_custom.js') }}"></script>
@endsection
