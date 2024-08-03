@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('receipts.contents')
        @include('partials.footer')
    </div>
@endsection