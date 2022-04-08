@extends('layouts.website')
@section('website-content')
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-wrap">
                    <nav aria-label="breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ $news->title }}</li>
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
            <div class="col-lg-3 order-2">
                <div class="blog-sidebar-wrapper mt-md-34 mt-sm-30">
                    <div class="blog-sidebar mb-24">
                        <h4 class="title mb-20">categories</h4>
                        
                            <div class="shop-sidebar-wrap mt-md-28 mt-sm-28">
                                <!-- sidebar categorie start -->
                                <div class="sidebar-widget mb-30">
                                    <div class="sidebar-category">
                                        <ul>
                                            @foreach ($category as $item)
                                            <li><a href="{{ route('categoryWise.list', $item->slug) }}">{{ $item->name }}</a><span>{{ $item->product->count() }}</span></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <!-- sidebar categorie start -->
                                <!-- sidebar banner start -->
                              
                                <!-- sidebar banner end -->
                            
                        </div>
                    </div> <!-- single sidebar end -->
                   
                    <div class="blog-sidebar mb-24">
                        <h4 class="title mb-30">recent post</h4>
                        @foreach ($newArrival as $item) 
                       
                        <div class="recent-post mb-20">
                            <div class="recent-post-thumb">
                                <a href="{{ route('product.details', $item->slug) }}">
                                    <img src="{{ asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png') }}" alt="">
                                </a>
                            </div>
                            <div class="recent-post-des">
                                <span><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></span>
                                <span class="post-date">{{ $item->price }}Tk</span>
                            </div>
                        </div> 
                        @endforeach<!-- end single popular item -->
                       
                    </div> <!-- single sidebar end -->
                </div>
            </div>
            <div class="col-lg-9 order-1">
                <div class="blog-wrapper-inner">
                    <div class="row blog-content-wrap">
                        <!-- start single blog item -->
                        <div class="col-lg-12">
                            <div class="blog-item mb-30">
                                <div class="blog-thumb  fix">
                                    <div class="blog-gallery-slider slick-arrow-style_2">
                                        <div class="blog-single-slide">
                                            <img style="max-width:100%; max-height:600px" src="{{ asset($news->image) }}" alt="">
                                        </div>
                                     
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <div class="blog-details">
                                        <h3 class="blog-heading">{{ $news->title }}</h3>
                                        <p>{{ $news->description }}</p>
                                    </div>
                                </div>
                            </div>
                          
                           
                        </div>
                        <!-- end single blog item -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection