@extends('layouts.guest')

@section('content')

    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container-xl px-4">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <!-- Basic registration form-->
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header justify-content-center"><h3 class="fw-light my-4">{{ __('Create Account') }}</h3></div>
                                <div class="card-body">
                                    @if (session('status'))
                                        <div class="alert alert-success" role="alert">
                                            {{ session('status') }}
                                        </div>
                                    @endif

                                    <!-- Registration form-->
                                    <form method="POST" action="{{ route('register') }}">
                                        @csrf
                                        <!-- Form Row-->
                                        <div class="row gx-3">
                                            <div class="col-md-6">
                                                <!-- Form Group (first name)-->
                                                <div class="mb-3">
                                                    <label class="small mb-1" for="inputFirstName">{{ __('First Name') }}</label>
                                                    <input id="inputFirstName" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}" required autocomplete="name" autofocus placeholder="Enter first name">

                                                        @error('first_name')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Form Group (last name)-->
                                                <div class="mb-3">
                                                    <label class="small mb-1" for="inputLastName">{{ __('Last Name') }}</label>
                                                    <input id="inputLastName" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}" required autocomplete="name" autofocus placeholder="Enter last name">

                                                        @error('last_name')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror

                                                </div>
                                            </div>
                                        </div>
                                        <!-- Form Group (email address)            -->
                                        <div class="mb-3">
                                            <label class="small mb-1" for="inputEmailAddress">{{ __('Email') }}</label>
                                            <input id="inputEmailAddress" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Enter email address">

                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                        </div>
                                        <!-- Form Row    -->
                                        <div class="row gx-3">
                                            <div class="col-md-6">
                                                <!-- Form Group (password)-->
                                                <div class="mb-3">
                                                    <label class="small mb-1" for="inputPassword">{{ __('Password') }}</label>
                                                    <input id="inputPassword" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Enter password">

                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Form Group (confirm password)-->
                                                <div class="mb-3">
                                                    <label class="small mb-1" for="inputConfirmPassword">{{ __('Confirm Password') }}</label>

                                                    <input id="inputConfirmPassword" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm password">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Form Group (create account submit)-->
                                        <button type="submit" class="btn btn-primary btn-block">
                                            {{ __('Create Account') }}
                                        </button>
                                        <button type="button" class="btn btn-dark" onclick="window.location.href='{{ url('/') }}'">{{ __('Cancel') }}</button>
                                    </form>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small"><a href="{{ route('login') }}">{{ __('Have an account? Go to login') }}</a></div>
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
