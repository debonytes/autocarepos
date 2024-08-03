@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('clients.add', $countries)
        @include('partials.footer')
    </div>
@endsection