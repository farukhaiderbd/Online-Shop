<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
  <div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
    <nav class="yamm megamenu-horizontal">
      <ul class="nav">
          {{-- @php
              $categories =App\Category::where('status',1)->limit(10)->get();
          @endphp --}}

        @foreach ($categories as $category)


        <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-shopping-bag" aria-hidden="true"></i>{{ $category->name }}</a>
          <ul class="dropdown-menu mega-menu">
            <li class="yamm-content">
              <div class="row">
                  @php
                      $subcats = App\Subcategory::where('category_id',$category->id)->get();
                  @endphp
                    @foreach ($subcats as $item)
                <div class="col-sm-12 col-md-3">
                  <ul class="links list-unstyled">
                    <li><a href="#">{{ $item->name }}</a></li>

                </ul>
            </div>
            @endforeach

                <!-- /.col -->
              </div>
              <!-- /.row -->
            </li>
            <!-- /.yamm-content -->
          </ul>
          <!-- /.dropdown-menu --> </li>
        <!-- /.menu-item -->

        @endforeach



      </ul>
      <!-- /.nav -->
    </nav>
    <!-- /.megamenu-horizontal -->
  </div>
  <!-- /.side-menu -->
  <!-- ================================== TOP NAVIGATION : END ================================== -->

  <!-- ============================================== HOT DEALS ============================================== -->
  <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
    <h3 class="section-title">hot deals</h3>
    @php
        $hotdeals = App\Product::where('hot_deal',1)->get();
    @endphp
    <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
        @foreach ($hotdeals as $item)
        <div class="item">
            <div class="products">
              <div class="hot-deal-wrapper">
                <div class="image"> <img src="{{ URL::to($item->image_one) }}" alt=""> </div>
                {{-- <div class="sale-offer-tag"><span>49%<br>
                  off</span></div> --}}
                {{-- <div class="timing-wrapper">
                  <div class="box-wrapper">
                    <div class="date box"> <span class="key">120</span> <span class="value">DAYS</span> </div>
                  </div>
                  <div class="box-wrapper">
                    <div class="hour box"> <span class="key">20</span> <span class="value">HRS</span> </div>
                  </div>
                  <div class="box-wrapper">
                    <div class="minutes box"> <span class="key">36</span> <span class="value">MINS</span> </div>
                  </div>
                  <div class="box-wrapper hidden-md">
                    <div class="seconds box"> <span class="key">60</span> <span class="value">SEC</span> </div>
                  </div>
                </div> --}}
              </div>
              <!-- /.hot-deal-wrapper -->

              <div class="product-info text-left m-t-20">
                <h3 class="name"><a href="detail.html">{{ $item->name }}</a></h3>
                <div class="rating rateit-small"></div>
                <div class="product-price"> <span class="price"> @if($item->discount_price) {{ $item->discount_price }} @else {{ $item->selling_price }} @endif </span> <span class="price-before-discount">@if ($item->discount_price != '') {{ $item->selling_price }} @endif</span> </div>
                <!-- /.product-price -->

              </div>
              <!-- /.product-info -->

              <div class="cart clearfix animate-effect">
                <div class="action">
                  <div class="add-cart-button btn-group">
                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                    <button id="{{ $item->id }}" class="btn btn-primary cart-btn" data-toggle="modal" data-target="#cartmodal"  onclick="productview(this.id)">Add to Cart</button>
                  </div>
                </div>
                <!-- /.action -->
              </div>
              <!-- /.cart -->
            </div>
          </div>
        @endforeach


    </div>
    <!-- /.sidebar-widget -->
  </div>
  <!-- ============================================== HOT DEALS: END ============================================== -->

  <!-- ============================================== SPECIAL OFFER ============================================== -->

  <div class="sidebar-widget outer-bottom-small wow fadeInUp">
    <h3 class="section-title">Special Offer</h3>
    <div class="sidebar-widget-body outer-top-xs">
      <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
            @php
                $special_offer = App\Product::where('best_rated',1)->limit(9)->OrderBy('id','DESC')->get();
            @endphp

        <div class="item">
          <div class="products special-product">
              @foreach ($special_offer  as $key => $item)
              @if($key <= 2)
              <div class="product">
              <div class="product-micro">
                  <div class="row product-micro-row">
                  <div class="col col-xs-5">
                      <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{ URL::to($item->image_one) }}" alt=""> </a> </div>
                      <!-- /.image -->

                      </div>
                      <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                      <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                      </div>
                  </div>
                  <!-- /.col -->
                  </div>
                  <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

              </div>


              @endif
              @endforeach

          </div>
        </div>
        <div class="item">
          <div class="products special-product">
              @foreach ($special_offer  as $key => $item)
              @if($key >2 && $key <=5)
              <div class="product">
              <div class="product-micro">
                  <div class="row product-micro-row">
                  <div class="col col-xs-5">
                      <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{ URL::to($item->image_one) }}" alt=""> </a> </div>
                      <!-- /.image -->

                      </div>
                      <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                      <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                      </div>
                  </div>
                  <!-- /.col -->
                  </div>
                  <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

              </div>
              @endif
              @endforeach

          </div>
        </div>
        <div class="item">
          <div class="products special-product">
              @foreach ($special_offer  as $key => $item)
              @if($key >5 && $key <=9)
              <div class="product">
              <div class="product-micro">
                  <div class="row product-micro-row">
                  <div class="col col-xs-5">
                      <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{ URL::to($item->image_one) }}" alt=""> </a> </div>
                      <!-- /.image -->

                      </div>
                      <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                      <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                      </div>
                  </div>
                  <!-- /.col -->
                  </div>
                  <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

              </div>


              @endif
              @endforeach

          </div>
        </div>
      </div>
    </div>
    <!-- /.sidebar-widget-body -->
  </div>
  <!-- /.sidebar-widget -->
  <!-- ============================================== SPECIAL OFFER : END ============================================== -->
  <!-- ============================================== PRODUCT TAGS ============================================== -->
  <div class="sidebar-widget product-tag wow fadeInUp">
    <h3 class="section-title">Product tags</h3>
    <div class="sidebar-widget-body outer-top-xs">
      <div class="tag-list"> <a class="item" title="Phone" href="category.html">Phone</a> <a class="item active" title="Vest" href="category.html">Vest</a> <a class="item" title="Smartphone" href="category.html">Smartphone</a> <a class="item" title="Furniture" href="category.html">Furniture</a> <a class="item" title="T-shirt" href="category.html">T-shirt</a> <a class="item" title="Sweatpants" href="category.html">Sweatpants</a> <a class="item" title="Sneaker" href="category.html">Sneaker</a> <a class="item" title="Toys" href="category.html">Toys</a> <a class="item" title="Rose" href="category.html">Rose</a> </div>
      <!-- /.tag-list -->
    </div>
    <!-- /.sidebar-widget-body -->
  </div>
  <!-- /.sidebar-widget -->
  <!-- ============================================== PRODUCT TAGS : END ============================================== -->
  <!-- ============================================== SPECIAL DEALS ============================================== -->

  <div class="sidebar-widget outer-bottom-small wow fadeInUp">
    <h3 class="section-title">Special Deals</h3>
    <div class="sidebar-widget-body outer-top-xs">
      <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
        <div class="item">
          <div class="products special-product">
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p28.jpg"  alt=""> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p15.jpg"  alt=""> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p26.jpg"  alt="image"> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
          </div>
        </div>
        <div class="item">
          <div class="products special-product">
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p18.jpg" alt=""> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p17.jpg" alt=""> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p16.jpg" alt=""> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->
                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->
            </div>
          </div>
        </div>
        <div class="item">
          <div class="products special-product">
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p15.jpg" alt="images">
                        <div class="zoom-overlay"></div>
                        </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->
            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p14.jpg"  alt="">
                        <div class="zoom-overlay"></div>
                        </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
            <div class="product">
              <div class="product-micro">
                <div class="row product-micro-row">
                  <div class="col col-xs-5">
                    <div class="product-image">
                      <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p13.jpg" alt="image"> </a> </div>
                      <!-- /.image -->

                    </div>
                    <!-- /.product-image -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-xs-7">
                    <div class="product-info">
                      <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="product-price"> <span class="price"> $450.99 </span> </div>
                      <!-- /.product-price -->

                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.product-micro-row -->
              </div>
              <!-- /.product-micro -->

            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.sidebar-widget-body -->
  </div>
  <!-- /.sidebar-widget -->
  <!-- ============================================== SPECIAL DEALS : END ============================================== -->
  <!-- ============================================== NEWSLETTER ============================================== -->
  <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
    <h3 class="section-title">Newsletters</h3>
    <div class="sidebar-widget-body outer-top-xs">
      <p>Sign Up for Our Newsletter!</p>
      <form>
        <div class="form-group">
          <label class="sr-only" for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
        </div>
        <button class="btn btn-primary">Subscribe</button>
      </form>
    </div>
    <!-- /.sidebar-widget-body -->
  </div>
  <!-- /.sidebar-widget -->
  <!-- ============================================== NEWSLETTER: END ============================================== -->

  <!-- ============================================== Testimonials============================================== -->
  <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
    <div id="advertisement" class="advertisement">
      <div class="item">
        <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member1.png" alt="Image"></div>
        <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
        <div class="clients_author">John Doe <span>Abc Company</span> </div>
        <!-- /.container-fluid -->
      </div>
      <!-- /.item -->

      <div class="item">
        <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member3.png" alt="Image"></div>
        <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
        <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
      </div>
      <!-- /.item -->

      <div class="item">
        <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member2.png" alt="Image"></div>
        <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
        <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
        <!-- /.container-fluid -->
      </div>
      <!-- /.item -->

    </div>
    <!-- /.owl-carousel -->
  </div>

  <!-- ============================================== Testimonials: END ============================================== -->

  <div class="home-banner"> <img src="{{asset('contents/website')}}/assets/images/banners/LHS-banner.jpg" alt="Image"> </div>
</div>

