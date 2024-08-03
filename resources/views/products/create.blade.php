@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('products.add')
        @include('partials.footer')
    </div>
@endsection