@extends('layouts.website')
@section('website-content')
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="slider-wrapper-area">
                <div class="hero-slider-active hero__1 slick-dot-style hero-dot">
                    @forelse ($banner as $item)
                    <div class="single-slider" style="background-image: url({{ asset($item->image) }}); background-size:cover">
                        <div class="container p-0">
                            <div class="slider-main-content">
                                <div class="slider-content-img">
                                    {{-- <img src="{{asset('website/img/slider/slider11_lable1.png')}}" alt="">
                                    <img src="{{asset('website/img/slider/slider11_lable2.png')}}" alt="">
                                    <img src="{{asset('website/img/slider/slider11_lable3.png')}}" alt=""> --}}
                                </div>
                                <div class="slider-text">
                                    {{-- <div class="slider-label"> --}}
                                        {{-- <img src="{{asset('website/img/slider/slider11_lable4.png')}}" alt=""> --}}
                                    {{-- </div> --}}
                                    <h1>{{ $item->title }}</h1>
                                    <p>{{ $item->offer_name }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @empty
                    <div class="single-slider" style="background-image: url( {{ asset('website/img/slider/slider12_bg.jpg') }});">
                        <div class="container p-0">
                            <div class="slider-main-content">
                                <div class="slider-content-img">
                                    <img src="{{asset('website/img/slider/slider11_lable1.png')}}" alt="">
                                    <img src="{{asset('website/img/slider/slider11_lable2.png')}}" alt="">
                                    <img src="{{asset('website/img/slider/slider11_lable3.png')}}" alt="">
                                </div>
                                <div class="slider-text">
                                    <div class="slider-label">
                                        <img src="{{asset('website/img/slider/slider11_lable4.png')}}"alt="">
                                    </div>
                                    {{-- <h1>{{ $item->title }}</h1> --}}
                                    <p>Typi Non Habent Claritatem Insitam; Est Usus Legentis</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforelse 
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container my-3">
    <div class="card p-2">
        <marquee behavior="" direction="">
            @if ($content->news_headline == '')
               <strong> Welcome to {{ $content->company_name }} </strong>
            @else
           <strong> {{ $content->news_headline }}</strong>
            @endif
        </marquee>
    </div>
</div>
     <!-- home banner area start -->
     <div class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 order-1">
                    @forelse ($leftAds as $item)
                    <div class="img-container img-full fix imgs-res mb-sm-30">
                        <a href="#">
                            <img src="{{asset($item->image)}}" alt="">
                        </a>
                    </div>
                    @empty
                    <div class="img-container img-full fix imgs-res mb-sm-30">
                        <a href="#">
                            <img src="{{asset('website/img/banner/banner_left.jpg')}}" alt="">
                        </a>
                    </div>
                    @endforelse
                  
                </div>
                {{-- {{ dd($centerAds) }} --}}
                <div class="col-lg-5 col-md-5 order-sm-3">
                    @forelse ($centerAds as $item)
                        <div class="img-container img-full fix mb-30">
                            <a href="#">
                                <img src="{{asset($item->image)}}" alt="">
                            </a>
                        </div>
                    @empty
                        <div class="img-container img-full fix mb-30">
                            <a href="#">
                                <img src="{{asset('website/img/banner/banner_static_top2.jpg')}}" alt="">
                            </a>
                        </div>
                    @endforelse
                    
                  
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 order-2 order-md-3">
                    @foreach ($rightAds as $item)
                    <div class="img-container img-full fix">
                        <a href="#">
                            <img style="height: 355px" src="{{asset($item->image)}}" alt="">
                        </a>
                    </div>
                    @endforeach 
                </div> 
            </div>
            {{-- <div class="border p-3" style="align-items: center; display:flex">
                <div>
                    <p class="">mobile</p>
                </div>
               <div class="me-0">
                <p class="text-right">mobile</p>
               </div>
                
            </div> --}}
        </div>
    </div>
    <!-- home banner area end -->

    <!-- page wrapper start -->
    <div class="page-wrapper pt-6 pb-28 pb-md-6 pb-sm-6 pt-xs-36">
        <div class="container">
            <div class="row">
                <!-- start home sidebar -->
                <div class="col-lg-3">
                    <div class="home-sidebar">
                        <!-- hot deals area start -->
                        <div class="main-sidebar hot-deals-wrap mb-30">
                            <div class="section-title-2 d-flex justify-content-between mb-28">
                                <h3>hot deals</h3>
                                <div class="slick-append"></div>
                            </div> <!-- section title end -->
                            <div class="deals-carousel-active slick-padding slick-arrow-style">
                                <!-- product single item start -->
                                @forelse ($hot as $item)
                                <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                 @csrf
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug) }}">
                                            <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="{{ $item->name }}">
                                            <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                    data-toggle="tooltip" onclick="product({{ $item->id }})" data-placement="left" title="Quick view"><i
                                                        class="fa fa-search"></i></span> </a>
                                            {{-- <button href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                    class="fa fa-shopping-cart"></i></button> --}}
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></h4>
                                        <div class="pricebox">
                                            @if ($item->discount != '')
                                                <span class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</span>
                                                <span class="regular-price">{{ calculateDiscount($item->price, $item->discount) }}Tk</span>
                                                <input type="hidden" value="{{ calculateDiscount($item->price, $item->discount) }}" name="price">
                                            @else
                                                <span class="regular-price">{{ $item->price }}Tk</span>
                                                <input type="hidden" value="{{ $item->price }}" name="price">
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                    {{-- Cart Input --}}
                                    <input type="hidden" value="{{ $item->id }}" name="id">
                                    <input type="hidden" value="{{ $item->name }}" name="name">
                                    <input type="hidden" value="{{ $item->image }}"  name="image">
                                    <input type="hidden" value="1"  name="quantity">
                                </form>
                                @empty
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="">
                                            <img src="{{asset('website/img/product/product-img3.jpg')}}" class="img-pri" alt="">
                                            <img src="{{asset('website/img/product/product-img4.jpg')}}" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                    data-toggle="tooltip" data-placement="left" title="Quick view"><i
                                                        class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i
                                                    class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i
                                                    class="fa fa-refresh"></i></a>
                                            {{-- <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                    class="fa fa-shopping-cart"></i></a> --}}
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="">vertual product 01</a></h4>
                                        <div class="pricebox">
                                            <span class="regular-price">$70.00</span>
                                             
                                        </div>
                                    </div>
                                </div>
                                <!-- product single item end -->
                                <!-- product single item start -->
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="#">
                                            <img src="{{asset('website/img/product/product-img5.jpg')}}" class="img-pri" alt="">
                                            <img src="{{asset('website/img/product/product-img1.jpg')}}" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                    data-toggle="tooltip" data-placement="left" title="Quick view"><i
                                                        class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i
                                                    class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i
                                                    class="fa fa-refresh"></i></a>
                                            {{-- <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                    class="fa fa-shopping-cart"></i></a> --}}
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="">vertual product 01</a></h4>
                                        <div class="pricebox">
                                            <span class="regular-price">$70.00</span>
                                             
                                        </div>
                                    </div>
                                </div>
                                @endforelse

                                <!-- product single item end -->
                                <!-- product single item start -->
                              
                                <!-- product single item end -->
                            </div>
                        </div>
                        <!-- hot deals area end -->

                        <!-- best seller area start -->
                        <div class="main-sidebar category-wrapper mb-24">
                            <div class="section-title-2 d-flex justify-content-between mb-28">
                                <h3>best seller</h3>
                                <div class="category-append"></div>
                            </div> <!-- section title end -->
                            <div class="category-carousel-active row" data-row="4">
                                @foreach ($hot as $item)
                                <div class="col">
                                    <div class="category-item">
                                        <div class="category-thumb">
                                            <a href="{{ route('product.details', $item->slug) }}">
                                                <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="{{ $item->name }}">
                                             
                                            </a>
                                        </div>
                                        <div class="category-content">
                                            <h4><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></h4>
                                            {{-- <div class="price-box">
                                                <div class="regular-price">
                                                     0.00
                                                </div>
                                                <div class="old-price">
                                                    <del> 0.00</del>
                                                </div>
                                            </div> --}}
                                            <div class="pricebox">
                                                @if ($item->discount != '')
                                                    <span class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</span>
                                                    <span class="regular-price">{{ calculateDiscount($item->price, $item->discount) }}Tk</span>
                                                    <input type="hidden" value="{{ calculateDiscount($item->price, $item->discount) }}" name="price">
                                                @else
                                                    <span class="regular-price">{{ $item->price }}Tk</span>
                                                    <input type="hidden" value="{{ $item->price }}" name="price">
                                                @endif
                                            </div>
                                        </div>
                                    </div> <!-- end single item -->
                                </div> <!-- end single item column -->
                                @endforeach
                            </div>
                        </div>
                        <!-- best seller area end -->

                        <!-- blog area start -->
                        <div class="main-sidebar blog-area mb-24">
                            <div class="section-title-2 d-flex justify-content-between mb-28">
                                <h3>latest News</h3>
                                <div class="category-append"></div>
                            </div> <!-- section title end -->
                            <!-- blog wrapper start -->
                            <div class="blog-carousel-active">
                                @forelse ($news as $item)
                                <div class="blog-item">
                                    <div class="blog-thumb img-full fix">
                                        <a href="{{ route('news.details', $item->slug) }}">
                                            <img src="{{asset($item->image)}}" alt="">
                                        </a>
                                    </div>
                                    <div class="blog-content">
                                        <h3><a href="{{ route('news.details', $item->slug) }}">{{ $item->title }}</a></h3>
                                        <div class="blog-meta">
                                            <span class="posted-author">by: </span>
                                            <span class="post-date">{{ $item->created_at }}</span>
                                        </div>
                                        <p>{{ Str::limit($item->description, 150) }}</p>
                                    </div>
                                    <a href="{{ route('news.details', $item->slug) }}">read more <i class="fa fa-long-arrow-right"></i></a>
                                </div> <!-- end single blog item -->
                                @empty
                                <div class="blog-item">
                                    <div class="blog-thumb img-full fix">
                                        <a href="blog-details.html">
                                            <img src="{{asset('website/img/blog/img_blog2.jpg')}}" alt="">
                                        </a>
                                    </div>
                                    <div class="blog-content">
                                        <h3><a href="blog-details.html">post format image</a></h3>
                                        <div class="blog-meta">
                                            <span class="posted-author">by: admin</span>
                                            <span class="post-date">25 Nov, 2018</span>
                                        </div>
                                        <p>Curabitur sed diam enim. Sed varius faucibus lectus, a scelerisque massa
                                            posuere ac. Quisque dapibus, est ac...</p>
                                    </div>
                                    <a href="blog-details.html">read more <i class="fa fa-long-arrow-right"></i></a>
                                </div> <!-- end single blog item -->
                                @endforelse
                            </div>
                            <!-- blog wrapper end -->
                        </div>
                        <!-- blog area end -->

                        <!-- testimonial area start -->
                        
                        <!-- testimonial area end -->

                    </div>
                </div>
                <!-- end home sidebar -->

                <div class="col-lg-9">
                    <!-- featured category area start -->
                    <div class="feature-category-area mt-md-70">
                        <div class="section-title mb-30">
                            <div class="title-icon">
                                <i class="fa fa-bookmark"></i>
                            </div>
                            <h3>featured</h3>
                        </div> <!-- section title end -->
                        <!-- featured category start -->
                      
                        <div class="featured-carousel-active slick-padding slick-arrow-style">
                            <!-- product single item start -->
                            @forelse ($featured as $item)
                            <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug) }}">
                                            <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="{{ $item->name }}">
                                            <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                    data-toggle="tooltip" data-placement="left" onclick="product({{ $item->id }})" title="Quick view"><i
                                                        class="fa fa-search"></i></span> </a>
                                            {{-- <button href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                    class="fa fa-shopping-cart"></i></button> --}}
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></h4>
                                        <div class="pricebox">
                                            @if ($item->discount != '')
                                                <span class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</span>
                                                <span class="regular-price">{{ calculateDiscount($item->price, $item->discount) }}Tk</span>
                                                <input type="hidden" value="{{ calculateDiscount($item->price, $item->discount) }}" name="price">
                                            @else
                                                <span class="regular-price">{{ $item->price }}Tk</span>
                                                <input type="hidden" value="{{ $item->price }}" name="price">
                                            @endif
                                            
                                        </div>
                                    </div>
                                </div>
                                {{-- cart input filed --}}
                                <input type="hidden" value="{{ $item->id }}" name="id">
                                <input type="hidden" value="{{ $item->name }}" name="name">
                                <input type="hidden" value="{{ $item->image }}"  name="image">
                                <input type="hidden" value="1"  name="quantity">
                            </form>
                            @empty
                            <div class="product-item fix">
                                <div class="product-thumb">
                                    <a href="">
                                        <img src="{{asset('website/img/product/product-img3.jpg')}}" class="img-pri" alt="">
                                        <img src="{{asset('website/img/product/product-img4.jpg')}}" class="img-sec" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span>hot</span>
                                    </div>
                                    <div class="product-action-link">
                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                data-toggle="tooltip" data-placement="left" title="Quick view"><i
                                                    class="fa fa-search"></i></span> </a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i
                                                class="fa fa-heart-o"></i></a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i
                                                class="fa fa-refresh"></i></a>
                                        {{-- <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                class="fa fa-shopping-cart"></i></a> --}}
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="">simple product 01</a></h4>
                                    <div class="pricebox">
                                        <span class="regular-price">$120.00</span>
                                        <div class="ratings">
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <div class="pro-review">
                                                <span>1 review(s)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforelse
                            <!-- product single item end -->
                            <!-- product single item start -->
                           
                            <!-- product single item end -->
                        </div>
                        <!-- featured category end -->
                    </div>
                    <!-- featured category area end -->

                    <!-- banner statistic start -->
                    <div class="banner-statistic pt-28 pb-36">
                        @foreach ($centerBigAds as $item) 
                            <div class="img-container fix img-full">
                                <a href="#">
                                    <img src="{{asset($item->image)}}" alt="">
                                </a>
                            </div>
                        @endforeach
                    </div>
                    <!-- banner statistic end -->

                    <!-- featured category area start -->
                    <div class="feature-category-area">
                        <div class="section-title mb-30">
                            <div class="title-icon">
                                <i class="fa fa-flask"></i>
                            </div>
                            <h3>New Arrivals</h3>
                        </div> <!-- section title end -->
                        <!-- featured category start -->
                        <div class="featured-carousel-active slick-padding slick-arrow-style">
                            <!-- product single item start -->
                            @forelse ($newArrival as $item)
                            <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                            <div class="product-item fix">
                                <div class="product-thumb">
                                    <a href="{{ route('product.details', $item->slug) }}">
                                        <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="{{ $item->name }}">
                                        <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span>new</span>
                                    </div>
                                    <div class="product-action-link">
                                        <a href="#" data-toggle="modal" onclick="product({{ $item->id }})" data-target="#quick_view"> <span
                                                data-toggle="tooltip" data-placement="left" title="Quick view"><i
                                                    class="fa fa-search"></i></span> </a>
                                        {{-- <button href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                class="fa fa-shopping-cart"></i></button> --}}
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="{{ route('product.details',$item->slug) }}">{{ $item->name }}</a></h4>
                                    <div class="pricebox">
                                        @if ($item->discount != '')
                                                <span class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</span>
                                                <span class="regular-price">{{ calculateDiscount($item->price, $item->discount) }}Tk</span>
                                                <input type="hidden" value="{{ calculateDiscount($item->price, $item->discount) }}" name="price">
                                            @else
                                                <span class="regular-price">{{ $item->price }}Tk</span>
                                                <input type="hidden" value="{{ $item->price }}" name="price">
                                            @endif
                                    
                                    </div>
                                </div>
                            </div>
                                {{-- cart input filed --}}
                                <input type="hidden" value="{{ $item->id }}" name="id">
                                <input type="hidden" value="{{ $item->name }}" name="name">
                                <input type="hidden" value="{{ $item->image }}"  name="image">
                                <input type="hidden" value="1"  name="quantity">
                            </form>
                            @empty
                            <div class="product-item fix">
                                <div class="product-thumb">
                                    <a href="">
                                        <img src="{{asset('website/img/product/product-img3.jpg')}}" class="img-pri" alt="">
                                        <img src="{{asset('website/img/product/product-img4.jpg')}}" class="img-sec" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span>new</span>
                                    </div>
                                    <div class="product-action-link">
                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span
                                                data-toggle="tooltip" data-placement="left" title="Quick view"><i
                                                    class="fa fa-search"></i></span> </a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i
                                                class="fa fa-heart-o"></i></a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i
                                                class="fa fa-refresh"></i></a>
                                        {{-- <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i
                                                class="fa fa-shopping-cart"></i></a> --}}
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="">simple product 02</a></h4>
                                    <div class="pricebox">
                                        <span class="regular-price">$100.00</span>
                                        <div class="ratings">
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span class="good"><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <div class="pro-review">
                                                <span>1 review(s)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforelse
                           
                            
                         
                          
                        </div>
                        <!-- featured category end -->
                    </div>
                    
                    <div class="banner-statistic pt-28 pb-30 pb-sm-0">
                        <div class="row">
                            @foreach ($centerdown as $item)
                            <div class="col-lg-6 col-md-6">
                                <div class="img-container fix img-full mb-sm-30">
                                    <a href="#">
                                        <img src="{{asset($item->image)}}" alt="">
                                    </a>
                                </div>
                            </div>
                            @endforeach
                            
                            {{-- <div class="col-lg-5 col-md-5">
                                <div class="img-container fix img-full mb-sm-30">
                                    <a href="#">
                                        <img src="{{asset('website/img/banner/banner_static3.jpg')}}" alt="">
                                    </a>
                                </div>
                            </div> --}}
                        </div>
                    </div>
                    <!-- banner statistic end -->

                    <!-- category features area start -->
                    <div class="category-feature-area">
                        <div class="row">
                            <!-- New Products area start -->
                            <div class="col-lg-4">
                                <div class="category-wrapper mb-md-24 mb-sm-24">
                                    <div class="section-title-2 d-flex justify-content-between mb-28">
                                        <h3>New Products</h3>
                                        <div class="category-append"></div>
                                    </div> <!-- section title end -->
                                    <div class="category-carousel-active row" data-row="4">
                                        @forelse ($newArrival as $item)
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="{{ route('product.details', $item->slug) }}">
                                                        <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" alt="{{ $item->name }}">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="{{ route('product.details', $item->slug) }}">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                          {{ $item->price }}Tk
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @empty
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="">
                                                        <img src="{{asset('website/img/product/product-img1.jpg')}}" alt="">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                             0.00
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                    <div class="ratings">
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <div class="pro-review">
                                                            <span>1 review(s)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @endforelse
                                    </div>
                                </div>
                            </div>
                            <!-- New Products area end -->
                            <!-- Most viewed area start -->
                            <div class="col-lg-4">
                                <div class="category-wrapper mb-md-24 mb-sm-24">
                                    <div class="section-title-2 d-flex justify-content-between mb-28">
                                        <h3>Most viewed</h3>
                                        <div class="category-append"></div>
                                    </div> <!-- section title end -->
                                    <div class="category-carousel-active row" data-row="4">
                                        @forelse ($newArrival as $item)
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="{{ route('product.details', $item->slug) }}">
                                                        <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" alt="{{ $item->name }}">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="{{ route('product.details', $item->slug) }}">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                          {{ $item->price }}Tk
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @empty
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="">
                                                        <img src="{{asset('website/img/product/product-img1.jpg')}}" alt="">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                             0.00
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                    <div class="ratings">
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <div class="pro-review">
                                                            <span>1 review(s)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @endforelse
                                    </div>
                                </div>
                            </div>
                            <!-- Most viewed area end -->
                            <!-- Most viewed area start -->
                            <div class="col-lg-4">
                                <div class="category-wrapper mb-md-24 mb-sm-24">
                                    <div class="section-title-2 d-flex justify-content-between mb-28">
                                        <h3>hot sale</h3>
                                        <div class="category-append"></div>
                                    </div> <!-- section title end -->
                                    <div class="category-carousel-active row" data-row="4">
                                        @forelse ($newArrival as $item)
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="{{ route('product.details', $item->slug) }}">
                                                        <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" alt="{{ $item->name }}">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="{{ route('product.details', $item->slug) }}">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                          {{ $item->price }}Tk
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @empty
                                        <div class="col">
                                            <div class="category-item">
                                                <div class="category-thumb">
                                                    <a href="">
                                                        <img src="{{asset('website/img/product/product-img1.jpg')}}" alt="">
                                                    </a>
                                                </div>
                                                <div class="category-content">
                                                    <h4><a href="">Virtual Product 01</a></h4>
                                                    <div class="price-box">
                                                        <div class="regular-price">
                                                             0.00
                                                        </div>
                                                        <div class="old-price">
                                                            <del></del>
                                                        </div>
                                                    </div>
                                                    <div class="ratings">
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span class="good"><i class="fa fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                        <div class="pro-review">
                                                            <span>1 review(s)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- end single item -->
                                        </div> <!-- end single item column -->
                                        @endforelse
                                    </div>
                                </div>
                            </div>
                            <!-- Most viewed area end -->
                        </div>
                    </div>
                    <!-- category features area end -->
                </div>
            </div>
        </div>
    </div>
    <!-- page wrapper end -->

    <!-- latest product start -->
    <div class="latest-product">
        <div class="container">
            <div class="section-title mb-30">
                <div class="title-icon">
                    <i class="fa fa-flash"></i>
                </div>
                <h3>Upcoming Product</h3>
            </div> <!-- section title end -->
            <!-- featured category start -->
            <div class="latest-product-active slick-padding slick-arrow-style">
                <!-- product single item start -->
                @forelse ($upcoming as $item)
                <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                <div class="product-item fix">
                    <div class="product-thumb">
                        <a href="{{ route('product.details', $item->slug) }}">
                            <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="{{ $item->name }}">
                            <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                        </a>
                        <div class="product-label">
                            <span>hot</span>
                        </div>
                        <div class="product-action-link">
                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                    data-placement="left" title="Quick view"><i class="fa fa-search"></i></span>
                            </a>
                            {{-- <button href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></button> --}}
                        </div>
                    </div>
                    <div class="product-content">
                        <h4><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></h4>
                        <div class="pricebox">
                            @if ($item->discount != '')
                                <span class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</span>
                                <span class="regular-price">{{ calculateDiscount($item->price, $item->discount) }}Tk</span>
                                <input type="hidden" value="{{ calculateDiscount($item->price, $item->discount) }}" name="price">
                            @else
                                <span class="regular-price">{{ $item->price }}Tk</span>
                                <input type="hidden" value="{{ $item->price }}" name="price">
                            @endif
                        </div>
                    </div>
                </div>
                    <input type="hidden" value="{{ $item->id }}" name="id">
                    <input type="hidden" value="{{ $item->name }}" name="name">
                    <input type="hidden" value="{{ $item->image }}"  name="image">
                    <input type="hidden" value="1"  name="quantity">
                </form>
                @empty
                <div class="product-item fix">
                    <div class="product-thumb">
                        <a href="">
                            <img src="{{asset('website/img/product/product-img3.jpg')}}" class="img-pri" alt="">
                            <img src="{{asset('website/img/product/product-img4.jpg')}}" class="img-sec" alt="">
                        </a>
                        <div class="product-label">
                            <span>hot</span>
                        </div>
                        <div class="product-action-link">
                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                    data-placement="left" title="Quick view"><i class="fa fa-search"></i></span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="product-content">
                        <h4><a href="">simple product 04</a></h4>
                        <div class="pricebox">
                            <span class="regular-price">$80.00</span>
                            <div class="ratings">
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <div class="pro-review">
                                    <span>1 review(s)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product single item end -->
                <!-- product single item start -->
                <div class="product-item fix">
                    <div class="product-thumb">
                        <a href="">
                            <img src="{{asset('website/img/product/product-img5.jpg')}}" class="img-pri" alt="">
                            <img src="{{asset('website/img/product/product-img6.jpg')}}" class="img-sec" alt="">
                        </a>
                        <div class="product-label">
                            <span>hot</span>
                        </div>
                        <div class="product-action-link">
                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                    data-placement="left" title="Quick view"><i class="fa fa-search"></i></span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="product-content">
                        <h4><a href="">grouped product 05</a></h4>
                        <div class="pricebox">
                            <span class="regular-price">$70.00</span>
                            <div class="ratings">
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span class="good"><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <div class="pro-review">
                                    <span>1 review(s)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforelse
                <!-- product single item end -->
            </div>
            <!-- featured category end -->
        </div>
    </div>
    <!-- latest product end -->

    <!-- brand area start -->
    <div class="brand-area pt-28 pb-30">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title mb-30">
                        <div class="title-icon">
                            <i class="fa fa-crop"></i>
                        </div>
                        <h3>Accessories</h3>
                    </div> <!-- section title end -->
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="brand-active slick-padding slick-arrow-style">
                        @forelse ($accessoryfronts as $item)
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset($item->image)}}" height="120" alt=""></a>
                        </div>
                        @empty
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br2.png')}}" alt=""></a>
                        </div>
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br3.png')}}" alt=""></a>
                        </div>
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br4.png')}}" alt=""></a>
                        </div>
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br5.png')}}" alt=""></a>
                        </div>
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br6.png')}}" alt=""></a>
                        </div>
                        <div class="brand-item text-center">
                            <a href="#"><img src="{{asset('website/img/brand/br4.png')}}" alt=""></a>
                        </div>
                        @endforelse  
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{-- top rank sellar --}}

    {{-- <div class="latest-product">
        <div class="container">
            <div class="section-title mb-30">
                <div class="title-icon">
                    <i class="fa fa-flash"></i>
                </div>
                <h3>Our Strong Team</h3>
            </div> <!-- section title end -->
            <!-- featured category start -->
            <div class="latest-product-active slick-padding slick-arrow-style">
                <!-- product single item start -->
                @foreach ($team as $item)
                
                <div class="product-item fix">
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
                </div>
                  
                </form>
                @endforeach
               
                <!-- product single item end -->
            </div>
            <!-- featured category end -->
        </div>
    </div> --}}

@endsection
