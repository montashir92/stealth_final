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
                                <li class="breadcrumb-item active" aria-current="page">Accessories List</li>
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
                            @foreach ($accessories as $item)
                            <div class="col-lg-3 col-md-6">
                                <div class="blog-item mb-26">
                                    <div class="blog-thumb img-full fix">
                                        <a href="">
                                            <img  style="height: 230px" src="{{ asset($item->image) }}" alt="">
                                        </a>
                                    </div>
                                    <div class="blog-content">
                                        <h3><a href="">{{ $item->name }}</a></h3>
                                        <div class="blog-meta">
                                          
                                            <span class="post-date">{{ $item->date }}</span>
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            <!-- end single blog item -->
                        </div>
                    </div>
                    <!-- start pagination area -->
                    {{-- <div class="paginatoin-area text-center pt-30 pb-30">
                        <div class="row">
                            <div class="col-12">
                                <ul class="pagination-box">
                                    <li><a class="Previous" href="#">Previous</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a class="Next" href="#"> Next </a></li>
                                </ul>
                            </div>
                        </div>
                    </div> --}}
                    <!-- end pagination area -->
                </div>
            </div>
        </div>
    </div>
    <!-- blog main wrapper end -->
@endsection