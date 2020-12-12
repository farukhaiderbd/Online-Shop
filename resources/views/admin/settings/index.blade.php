@extends('admin.layout')
@section('css')
<link rel="stylesheet" href="{{asset('public/backend')}}/assets/libs/twitter-bootstrap-wizard/prettify.css">
@endsection
@section('title')
<title>Settings | Website General Settings</title>

@endsection
@section('content')



    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title mb-4"> <span class="dripicons-gear"></span> Settings</h2>

                <div id="progrss-wizard" class="twitter-bs-wizard">
                    <ul class="twitter-bs-wizard-nav nav-justified">
                        <li class="nav-item">
                            <a href="#progress-seller-details" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2"><i class="fa fa-cog"></i> </span>
                                General
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#progress-company-document" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2"><i class="bx bxl-firefox"></i></span>
                                Site Logo
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="#progress-bank-detail" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2">03</span>
                                Footer & SEO
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#social_link" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2">04</span>
                                Social Link
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#progress-confirm-detail" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2">04</span>
                                Analysis
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#progress-detail" class="nav-link" data-toggle="tab">
                                <span class="step-number mr-2">04</span>
                                Payment
                            </a>
                        </li>
                    </ul>

                    <div id="bar" class="progress mt-4">
                        <div class="progress-bar bg-success progress-bar-striped progress-bar-animated"></div>
                    </div>
                    <div class="tab-content twitter-bs-wizard-tab-content">
                        <div class="tab-pane" id="progress-seller-details">

                            @include('admin.settings.general')

                        </div>
                        <div class="tab-pane" id="progress-company-document">

                            @include('admin.settings.logo')

                        </div>
                        <div class="tab-pane" id="progress-bank-detail">

                            @include('admin.settings.footer_seo')

                        </div>

                        <div class="tab-pane" id="social_link">
                          <div>

                            @include('admin.settings.social_links')

                          </div>
                        </div>
                        <div class="tab-pane" id="progress-confirm-detail">
                          <div>

                            @include('admin.settings.analytics')

                          </div>
                        </div>
                        <div class="tab-pane" id="progress-detail">
                            <div>

                                @include('admin.settings.payments')

                            </div>
                        </div>

                    </div>
                    {{-- <ul class="pager wizard twitter-bs-wizard-pager-link">
                        <li class="previous"><a href="#">Previous</a></li>
                        <li class="next"><a href="#">Next</a></li>
                    </ul> --}}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end row -->



@section('js')
<!-- twitter-bootstrap-wizard js -->
<script src="{{asset('public/backend')}}/assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

<script src="{{asset('public/backend')}}/assets/libs/twitter-bootstrap-wizard/prettify.js"></script>

<!-- form wizard init -->
<script src="{{asset('public/backend')}}/assets/js/pages/form-wizard.init.js"></script>
@endsection


@endsection

