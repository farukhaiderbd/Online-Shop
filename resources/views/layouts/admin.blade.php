<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Admin</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('public/contents/admin')}}/assets/images/favicon.png">
    <link href="{{asset('public/contents/admin')}}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{asset('public/contents/admin')}}/assets/plugins/morrisjs/morris.css" rel="stylesheet">
    <link href="{{asset('public/contents/admin')}}/css/adminpress.css" rel="stylesheet">
    <link href="{{asset('public/contents/admin')}}/css/colors/blue.css" id="theme" rel="stylesheet">
    <link href="{{asset('public/contents/admin')}}/css/style.css" rel="stylesheet">
    <script src="{{asset('public/contents/admin')}}/assets/plugins/jquery/jquery.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/sweetalert.min.js"></script>
</head>
<body class="fix-header fix-sidebar card-no-border">
    <div id="main-wrapper">
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <b>
                            <img src="{{asset('public/contents/admin')}}/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <img src="{{asset('public/contents/admin')}}/assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <span>
                         <img src="{{asset('public/contents/admin')}}/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <img src="{{asset('public/contents/admin')}}/assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                       </span>
                    </a>
                </div>
                <div class="navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-message"></i>
                                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                            </a>
                            <div class="dropdown-menu mailbox animated slideInUp">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <a href="index.html#">
                                                <div class="btn btn-danger btn-circle"><i class="fa fa-link"></i></div>
                                                <div class="mail-contnet">
                                                  <h5>Luanch Admin</h5> <span class="mail-desc">Just see the my new admin!</span> <span class="time">9:30 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-email"></i>
                                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                            </a>
                            <div class="dropdown-menu mailbox animated slideInUp" aria-labelledby="2">
                                <ul>
                                    <li>
                                        <div class="drop-title">You have 4 new messages</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <a href="index.html#">
                                                <div class="user-img"> <img src="{{asset('public/contents/admin')}}/assets/images/users/1.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>See all e-Mails</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav my-lg-0">
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="flag-icon flag-icon-us"></i></a>
                            <div class="dropdown-menu dropdown-menu-right scale-up"> <a class="dropdown-item" href="index.html#"><i class="flag-icon flag-icon-in"></i> India</a> <a class="dropdown-item" href="index.html#"><i class="flag-icon flag-icon-fr"></i> French</a> <a class="dropdown-item" href="index.html#"><i class="flag-icon flag-icon-cn"></i> China</a> <a class="dropdown-item" href="index.html#"><i class="flag-icon flag-icon-de"></i> Dutch</a> </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="{{asset('public/contents/admin')}}/assets/images/users/1.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box">
                                            <div class="u-img"><img src="{{asset('public/contents/admin')}}/assets/images/users/1.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h4>{{Auth::user()->name}}</h4>
                                                <p class="text-muted">{{Auth::user()->email}}</p><a href="pages-profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                        </div>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="index.html#"><i class="ti-user"></i> My Profile</a></li>
                                    <li><a href="index.html#"><i class="ti-wallet"></i> My Balance</a></li>
                                    <li><a href="index.html#"><i class="ti-email"></i> Inbox</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="index.html#"><i class="ti-settings"></i> Account Setting</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class="left-sidebar">
            <div class="scroll-sidebar">
                <div class="user-profile">
                    <div class="profile-img"> <img src="{{asset('public/contents/admin')}}/assets/images/users/profile.png" alt="user" />
                        <div class="notify setpos"> <span class="heartbit"></span> <span class="point"></span> </div>
                    </div>
                    <div class="profile-text">
                        <h5>{{Auth::user()->name}}</h5>
                        <a href="index.html#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="mdi mdi-settings"></i></a>
                        <a href="app-email.html" class="" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
                        <a href="pages-login.html" class="" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>
                        <div class="dropdown-menu animated flipInY">
                            <!-- text-->
                            <a href="index.html#" class="dropdown-item"><i class="ti-user"></i> My Profile</a>
                            <!-- text-->
                            <a href="index.html#" class="dropdown-item"><i class="ti-wallet"></i> My Balance</a>
                            <!-- text-->
                            <a href="index.html#" class="dropdown-item"><i class="ti-email"></i> Inbox</a>
                            <!-- text-->
                            <div class="dropdown-divider"></div>
                            <!-- text-->
                            <a href="index.html#" class="dropdown-item"><i class="ti-settings"></i> Account Setting</a>
                            <!-- text-->
                            <div class="dropdown-divider"></div>
                            <!-- text-->
                            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="dropdown-item"><i class="fa fa-power-off"></i> Logout</a>
                            <!-- text-->
                        </div>
                    </div>
                </div>
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-small-cap">NAVIGATION</li>
                        <li> <a class="waves-effect waves-dark" href="{{url('admin')}}" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard</span></a></li>
                        @if(Auth::user()->role=='1')
                        <li> <a class="waves-effect waves-dark" href="{{url('admin/user')}}" aria-expanded="false"><i class="mdi mdi-account-circle"></i><span class="hide-menu">Users</span></a></li>
                        @endif
                        @if(Auth::user()->role<='2')
                        <li> <a class="waves-effect waves-dark" href="{{url('admin/banner')}}" aria-expanded="false"><i class="mdi mdi-image"></i><span class="hide-menu">Banner</span></a></li>
                        @endif
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-settings-box"></i><span class="hide-menu">Manage Website</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="{{url('admin/general/basic')}}">Basic Information</a></li>
                                <li><a href="{{url('admin/general/social/media')}}">Social Media</a></li>
                                <li><a href="{{url('admin/general/contact')}}">Contact Information</a></li>
                                <li><a href="{{url('#')}}">Copyright</a></li>
                            </ul>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="{{url('/')}}" target="_blank" aria-expanded="false"><i class="fa fa-globe"></i><span class="hide-menu">Live Site</span></a></li>
                        <li> <a class="waves-effect waves-dark" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="mdi mdi-power"></i><span class="hide-menu">Logout</span></a></li>
                    </ul>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </nav>
            </div>
        </aside>
        <div class="page-wrapper">
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">Dashboard</h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <div class="container-fluid">
                @yield('content')
            </div>
            <footer class="footer"> © 2017 Admin Press Admin by themedesigner.in </footer>
        </div>
    </div>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/jquery.slimscroll.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/waves.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/sidebarmenu.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/adminpress.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/raphael/raphael-min.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/morrisjs/morris.min.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/dashboard1.js"></script>
    <script src="{{asset('public/contents/admin')}}/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="{{asset('public/contents/admin')}}/js/custom.js"></script>
    @stack('js')
</body>

</html>
