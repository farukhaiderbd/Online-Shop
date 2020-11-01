@extends('layouts.admin')
@section('content')
@push('css')
{{-- <link href="{{ asset('contents/admin') }}/assets/plugins/icheck/skins/all.css" rel="stylesheet"> --}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" crossorigin="anonymous">
@endpush
<div class="card">
    <form method="post" action="{{route('store_product')}}" enctype="multipart/form-data">
      @csrf
      <div class="card-header">
          <div class="row">
              <div class="col-md-8 card_top_title">
                  <i class="fa fa-gg-circle"></i> Upload Banner Information
              </div>
              <div class="col-md-4 text-right card_top_btn">
                  <a href="{{url('admin/banner')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> All Banner</a>
              </div>
          </div>
      </div>
      <div class="card-body m-t-20">
        @if(Session::has('success'))
        <script type="text/javascript">
            swal({title: "Success!", text: "Successfully upload banner information!", icon: "success", button: "OK", timer:5000,});
        </script>
        @endif
        @if(Session::has('error'))
        <script type="text/javascript">
            swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
        </script>
        @endif

        <div class="row">
            <div class="col-md-10 m-auto">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Product Name: <span class="text-danger">*</span></label>
                          <input class="form-control" type="text" name="name"  >
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Product Code: <span class="text-danger">*</span></label>
                          <input class="form-control" type="text" name="code"  value="{{ Str::random(5) }}">
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Quantity <span class="text-danger">*</span></label>
                          <input class="form-control" type="text" name="qty"  >
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group mg-b-10-force">
                          <label class="form-control-label">Category: <span class="text-danger">*</span></label>
                          @php
                              $category = App\Category::where('status',1)->get();
                          @endphp
                          <select class="form-control select2" data-placeholder="Choose Category" name="category_id">
                            <option label="Choose Category"></option>
                            @foreach($category as $key => $row)
                            <option value="{{ $row->id }}">{{ $row->name }}</option>
                            @endforeach
                          </select>
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group mg-b-10-force">
                          <label class="form-control-label">Sub Category: <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="subcategory_id">

                          </select>
                        </div>
                      </div><!-- col-4 -->
                      {{-- <div class="col-lg-6">
                        <div class="form-group mg-b-10-force">
                          <label class="form-control-label">Brand: <span class="text-danger">*</span></label> --}}

                          {{-- <select class="form-control select2" data-placeholder="Choose country" name="brand_id">
                            <option label="Choose Brand"></option>
                            @foreach($brand as $br)
                            <option value="{{ $br->id }}">{{ $br->brand_name }}</option>
                            @endforeach
                          </select> --}}
                        {{-- </div>
                      </div><!-- col-4 --> --}}
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Product Size: <span class="text-danger">*</span></label><br>
                          <input class="form-control" type="text" name="size" id="size" data-role="tagsinput">
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Product Color: <span class="text-danger">*</span></label><br>
                          <input class="form-control lg-4" type="text" name="color" data-role="tagsinput" id="color" >
                        </div>
                      </div><!-- col-4 -->
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Selling Price <span class="text-danger">*</span></label>
                          <input class="form-control" type="text" name="selling_price"  placeholder="Selling Price">
                        </div>
                      </div><!-- col-4 -->

                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label">Discount Price <span class="text-danger">*</span></label>
                          <input class="form-control" type="text" name="discount_price"  placeholder="discount Price">
                        </div>
                      </div><!-- col-4 -->

                      <div class="col-lg-12">
                          <div class="form-group">
                          <label class="form-control-label">Product Details<span class="text-danger">*</span></label>
                           <textarea class="form-control" id="summernote" name="details">

                           </textarea>
                        </div>
                      </div>
                      <div class="col-lg-12">
                          <div class="form-group">
                          <label class="form-control-label">Video Link<span class="text-danger">*</span></label>
                           <input class="form-control" placeholder="video link" name="video_link">
                        </div>
                      </div>

                      <div class="col-lg-4">
                          <lebel>Image One (Main Thumbnail)<span class="text-danger">*</span></lebel>
                          <label class="custom-file">
                                <input type="file" id="file" class="custom-file-input" name="image_one" onchange="readURL(this);" required="" accept="image">
                                <span class="custom-file-control"></span>
                                <img src="#" id="one" >
                              </label>
                      </div>
                      <div class="col-lg-4">
                          <lebel>Image Two <span class="text-danger">*</span></lebel>
                          <label class="custom-file">
                                <input type="file" id="file" class="custom-file-input" name="image_two" onchange="readURL1(this);" required="" accept="image">
                                <span class="custom-file-control"></span>
                                <img src="" id="two" >
                              </label>
                      </div>
                      <div class="col-lg-4">
                          <lebel>Image Three <span class="text-danger">*</span></lebel>
                          <label class="custom-file">
                                <input type="file" id="file" class="custom-file-input" name="image_three" onchange="readURL2(this);" required="" accept="/image">
                                <span class="custom-file-control"></span>
                                <img src="#" id="three" >
                              </label>
                      </div>
                    </div><!-- row -->
                    <br><hr>
                    <div class="row">
                        <div class="col-lg-4">
                            <input type="checkbox" name="mid_slider" value="1" id="mid_slider" class="filled-in chk-col-red_light_blue">
                            <label for="mid_slider">Main Slider</label>
                        </div>

                        <div class="col-lg-4">
                            <input type="checkbox" name="hot_deal" value="1" id="hot_deal" class="filled-in chk-col-red_light_blue">
                            <label for="hot_deal">Hot Deal</label>
                        </div>
                        <div class="col-lg-4">
                            <input type="checkbox" name="best_rated" value="1" id="best_rated" class="filled-in chk-col-red_light_blue">
                            <label for="best_rated">Best Rated</label>
                        </div>
                        <div class="col-lg-4">
                            <input type="checkbox" name="trend_product" value="1" id="trend_product" class="filled-in chk-col-red_light_blue">
                            <label for="trend_product">Trand Product</label>
                        </div>
                        <div class="col-lg-4">
                            <input type="checkbox" name="main_slider" value="1" id="main_slider" class="filled-in chk-col-red_light_blue">
                            <label for="main_slider">Main Slider</label>
                        </div>
                        <div class="col-lg-4">
                            <input type="checkbox" name="hot_new" value="1" id="hot_new" class="filled-in chk-col-red_light_blue">
                            <label for="hot_new">Hot New</label>
                        </div>
                      <div class="col-lg-4">
                        <input type="checkbox" name="buy_on" value="1" id="buy_on" class="filled-in chk-col-red_light_blue">
                        <label for="buy_on">Buy on get one</label>
                      </div>
                </div>
            </div>
        </div>
      </div>
      <div class="card-footer text-center">
          <button type="submit" class="btn btn-md btn-info">UPLOAD</button>
      </div>
    </form>
  </div>
@endsection

@push('js')
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
{{-- <script src="{{ asset('contents/admin') }}/assets/plugins/icheck/icheck.min.js"></script>
<script src="{{ asset('contents/admin') }}/assets/plugins/icheck/icheck.init.js"></script> --}}
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js" crossorigin="anonymous"></script>


<script type="text/javascript">
	  $(document).ready(function() {
         $('select[name="category_id"]').on('change', function(){
             var category_id = $(this).val();
             if(category_id) {
                 $.ajax({
                     url: "{{  url('admin/get/subcategory/') }}/"+category_id,
                     type:"GET",
                     dataType:"json",
                     success:function(data) {
                       var d =$('select[name="subcategory_id"]').empty();
                       $('select[name="subcategory_id"]').append('<option value="">Select</option>');
                           $.each(data, function(key, value){
                               $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.name + '</option>');
                           });
                     },

                 });
             } else {
                alert('Id not found');
             }

         });
     });

</script>


<script type="text/javascript">
	function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#one')
                  .attr('src', e.target.result)
                  .width(80)
                  .height(80);
          };
          reader.readAsDataURL(input.files[0]);
      }
   }
</script>
<script type="text/javascript">
	function readURL1(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#two')
                  .attr('src', e.target.result)
                  .width(80)
                  .height(80);
          };
          reader.readAsDataURL(input.files[0]);
      }
   }
</script>
<script type="text/javascript">
	function readURL2(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#three')
                  .attr('src', e.target.result)
                  .width(80)
                  .height(80);
          };
          reader.readAsDataURL(input.files[0]);
      }
   }
</script>
@endpush

