@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('clients.contents')
        @include('partials.footer')
    </div>
@endsection