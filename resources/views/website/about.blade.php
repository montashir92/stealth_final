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
                                    <li class="breadcrumb-item active" aria-current="page">about us</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- about wrapper start -->
        <div class="about-us-wrapper pt-4">
            <div class="container">
                <div class="row">
                    <!-- About Text Start -->
                    <div class="col-lg-6">
                        <div class="about-text-wrap">
                            <h2><span>{{ $content->about_title }}</h2>
                            <P>{!! $content->about_description !!}</P>
                        </div>
                    </div>
                    <!-- About Text End -->
                    <!-- About Image Start -->
                    <div class="col-lg-5 ml-auto">
                        <div class="about-image-wrap mt-md-26 mt-sm-26">
                            <img class="w-100" src="{{ asset($content->about_image ?? '/noimage.png') }}" alt="About" />
                        </div>
                    </div>
                    <!-- About Image End -->
                </div>
            </div>
        </div>
        <!-- about wrapper end -->
     

        <!-- team area start -->
        <div class="team-area pt-28">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="title-box text-center mb-10">
                            <h3>Our Management</h3>
                        </div>
                    </div>
                </div> <!-- section title end -->
                <div class="row">
                    @foreach ($management as $item)
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="team-member mb-30">
                            <div class="team-thumb img-full">
                                <img src="{{ $item->image }}" style="height: 240px" alt="">
                                <div class="team-social">
                                    <a href="{{ $item->facebook }}"><i class="fa fa-facebook"></i></a>
                                    <a href="{{ $item->twitter }}"><i class="fa fa-twitter"></i></a>
                                    <a href="{{ $item->linkedin }}"><i class="fa fa-linkedin"></i></a>
                                    <a href="{{ $item->instagram }}"><i class="fa fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-content text-center">
                                <h3>{{ $item->name }}</h3>
                                <h6>{{ $item->designation }}</h6>
                               
                            </div>
                        </div>
                    </div> <!-- end single team member -->
                    @endforeach
                </div>
            </div> 
               <!-- choosing area start -->
        <div class="choosing-area pt-28">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="title-box text-center">
                            <h3>Missionn And Vission</h3>
                        </div>
                    </div>
                </div> <!-- section title end -->
                <div class="row mb-3">
                    <div class="about-text-wrap">
                        <P>{!! $content->mission_vision !!}</P>
                    </div>
                </div>
            </div>
        </div>      
       
        <div class="choosing-area pt-28">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="title-box text-center mb-30">
                            <h3>why choose us</h3>
                        </div>
                    </div>
                </div> <!-- section title end -->
                <div class="row mb-3">
                    @foreach ($service as $item)
                        <div class="col-lg-4">
                            <div class="single-choose-item text-center mb-md-30 mb-sm-30">
                                <img style="height: 50px; width:50px; border-radius:50%" src="{{ asset($item->image) }}" alt="">
                                <h4>{{ $item->title }}</h4>
                                <p>{!! $item->short_details !!}</p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- choosing area end -->
@endsection