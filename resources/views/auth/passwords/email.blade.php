@extends('layouts.app')

@section('content')

<div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <!-- Basic forgot password form-->
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center"><h3 class="fw-light my-4">{{ __('Password Recovery') }}</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">{{ __('Enter your email address and we will send you a link to reset your password.') }}</div>
                                        @if (session('status'))
                                            <div class="alert alert-success" role="alert">
                                                {{ session('status') }}
                                            </div>
                                        @endif

                                        <!-- Forgot password form-->
                                        <form method="POST" action="{{ route('password.email') }}">
                                            @csrf
                                            <!-- Form Group (email address)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">{{ __('Email') }}</label>
                                                <input id="inputEmailAddress" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Enter email address">

                                                    @error('email')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror

                                            </div>
                                            <!-- Form Group (submit options)-->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="{{ route('login') }}">{{ __('Return to login') }}</a>
                                                <button type="submit" class="btn btn-primary">
                                                    {{ __('Reset Password') }}
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="{{ route('register') }}">{{ __('Need an account? Sign up!') }}</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            @include('auth.footer')
        </div>

@endsection
