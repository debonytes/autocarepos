@extends('layouts.app')

@section('content')
    @include('partials.side-nav')
    <div id="layoutSidenav_content">
        @include('clients.update', [$countries, $client])
        @include('partials.footer')
    </div>
@endsection