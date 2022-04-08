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
                                <li class="breadcrumb-item active" aria-current="page">contact us</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- contact area start -->
    <div class="contact-area pb-34 pb-md-18 pb-sm-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-message">
                        <h2>Get in touch</h2>
                        <form action="{{ route('contact.Store') }}" method="post" class="contact-form">
                            @csrf
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="sender_name" value="{{ old('sender_name') }}" placeholder="Name *" class="form-control @error('sender_name') is-invalid @enderror" type="text">    
                                    @error('sender_name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="phone" value="{{ old('phone') }}" class="form-control @error('phone') is-invalid @enderror" placeholder="Phone *" type="text" >   
                                    @error('phone')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="email" type="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror"  placeholder="Email *" type="text" >    
                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="subject" value="{{ old('subject') }}" class="form-control @error('subject') is-invalid @enderror"  placeholder="Subject *" type="text">   
                                    @error('subject')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <div class="col-12">
                                    <div class="contact2-textarea text-center">
                                        <textarea placeholder="Message *" name="message"  class="form-control2" ></textarea>     
                                    </div>   
                                    <div class="contact-btn">
                                        <button class="sqr-btn" type="submit">Send Message</button> 
                                    </div> 
                                </div> 
                                <div class="col-12 d-flex justify-content-center">
                                    <p class="form-messege"></p>
                                </div>
                            </div>
                        </form>    
                    </div> 
                </div>
                <div class="col-lg-6">
                    <div class="contact-info mt-md-28 mt-sm-28">
                        <h2>contact us</h2>
                        <p>{!! $content->about_description !!}</p>
                        <ul>
                            <li><i class="fa fa-fax"></i> Address : {{ $content->address }}</li>
                            <li><i class="fa fa-phone"></i> {{ $content->phone_1 }}</li>
                            <li><i class="fa fa-phone"></i> {{ $content->phone_2 }}</li>
                        
                            <li><i class="fa fa-envelope-o"></i> {{ $content->email }}</li>
                        </ul>
                        {{-- <div class="working-time">
                            <h3>Working hours</h3>
                            <p><span>Monday – Saturday:</span>08AM – 22PM</p>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact area end -->

    {{-- <!-- map area start -->
    <div class="map-area-wrapper">
        <div class="container">
                <div id="map_content" data-lat="23.763491" data-lng="90.431167" data-zoom="8" data-maptitle="HasTech" data-mapaddress="Floor# 4, House# 5, Block# C     </br> Banasree Main Rd, Dhaka">
                </div>
        </div>
    </div> --}}
    <!-- map area end -->
@endsection