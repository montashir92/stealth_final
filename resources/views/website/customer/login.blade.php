@extends('layouts.website')
@section('website-content')
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">login-register</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- login register wrapper start -->
        <div class="login-register-wrapper">
            <div class="container">
                <div class="member-area-from-wrap">
                    <div class="row pb-4 mb-3">
                        <!-- Login Content Start -->
                        <div class="col-lg-6">
                            <div class="login-reg-form-wrap  pr-lg-50">
                                <h2>Sign In</h2>
                                    @if (Session('faild'))
                                        <div class="alert alert-danger">
                                            !opps Username Or password not match
                                        </div>
                                    @endif
                                <form action="{{ route('customer.auth') }}" method="post">
                                    @csrf
                                    <div class="single-input-item">
                                        <input type="number" name="userphone" class="form-control @error('userphone') is-invalid @enderror" placeholder="Phone or Username"/>
                                        @error('userphone')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror  
                                    </div>
                                    <div class="single-input-item">
                                        <input type="password" name="password" placeholder="Enter your Password"/>
                                             @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror 
                                    </div>
                                   
                                    <div class="single-input-item">
                                        <button class="sqr-btn" type="submit">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Login Content End -->

                        <!-- Register Content Start -->
                        <div class="col-lg-6">
                            <div class="login-reg-form-wrap mt-md-34 mt-sm-34">
                                <h2>Singup Form</h2>
                                <form action="{{ route('customerStore') }}" method="post">
                                    @csrf
                                    <div class="single-input-item">
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Full Name" name="name" />
                                            @error('name')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror   
                                    </div>
                                   
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="number" name="phone" class="form-control @error('phone') is-invalid @enderror" placeholder="Enter your Phone"  />
                                                @error('phone')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror   
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Enter your Email"  />
                                                    @error('email')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                     @enderror   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="text" name="address" class="form-control @error('address') is-invalid @enderror" placeholder="Enter your address"  />
                                                    @error('address')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                     @enderror   
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Enter your Password"  />
                                                @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                             @enderror   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <button class="sqr-btn" type="submit">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Register Content End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- login register wrapper end -->
@endsection