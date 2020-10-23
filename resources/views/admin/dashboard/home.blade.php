@extends('layouts.admin')
@section('content')
<div class="card-group">
    <div class="card">
        <div class="card-body">
            <div class="row">
                @php
                    $totalUser=App\User::count();
                @endphp
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-briefcase-check text-info"></i></h2>
                    <h3 class="">
                      @if($totalUser<=9)
                        0{{$totalUser}}
                      @else
                        {{$totalUser}}
                      @endif
                    </h3>
                    <h6 class="card-subtitle">Users</h6></div>
                <div class="col-12">
                    <div class="progress">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 85%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                @php
                    //$totalSallary=App\Banner::where('ban_status',1)->sum('sallary');
                @endphp
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-alert-circle text-success"></i></h2>
                    <h3 class="">121</h3>
                    <h6 class="card-subtitle">Sallary</h6></div>
                <div class="col-12">
                    <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 40%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-wallet text-purple"></i></h2>
                    <h3 class="">$24561</h3>
                    <h6 class="card-subtitle">Total Cost</h6></div>
                <div class="col-12">
                    <div class="progress">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 56%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-buffer text-warning"></i></h2>
                    <h3 class="">$30010</h3>
                    <h6 class="card-subtitle">Total Earnings</h6></div>
                <div class="col-12">
                    <div class="progress">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 26%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
