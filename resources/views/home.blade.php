@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('dashboard.index')
        @include('partials.footer')
    </div>
@endsection
