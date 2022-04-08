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
                                <li class="breadcrumb-item active" aria-current="page">Photo Gallery Page</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- blog main wrapper start -->
    <div class="blog-main-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog-wrapper-inner">
                        <div class="row">
                            <!-- start single blog item -->
                            @foreach ($gallery as $item)
                            <div class="col-lg-3 col-md-6">
                                <div class="blog-item mb-26">
                                    <div class="blog-thumb img-full fix">
                                       <a href="">
                                            <img  style="height: 230px" src="{{ asset($item->image) }}" alt="">
                                        </a>
                                    </div>
                                   
                                </div>
                            </div>
                            @endforeach
                            <!-- end single blog item -->
                        </div>

                        
                    </div>
                    <!-- start pagination area -->
                    
                    <!-- end pagination area -->
                </div>
            </div>

            
        </div>
    </div>
    <!-- blog main wrapper end -->

    <!-- Video gallery here -->
    <div class="video-gallery">
        <div class="container">
            <div class="section-title mb-30">
                <div class="title-icon">
                    <i class="fa fa-bookmark"></i>
                </div>
                <h3>Video Gallery</h3>
            </div> 
            <div class="row">
                @foreach ($videogallery as $video)
                <div class="col-lg-3 col-md-6">
                    <div class="blog-item mb-26">
                        <div class="blog-thumb img-full fix">
                        <iframe width="100%" height="250" src="{{ $video->youtube_link }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </div>

    
@endsection