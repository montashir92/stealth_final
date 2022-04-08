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
                                    <li class="breadcrumb-item active" aria-current="page">Search Result</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- page wrapper start -->
        <div class="page-main-wrapper">
            <div class="container">
                <div class="row">
                    <!-- sidebar start -->
                    <div class="col-lg-3 order-2 order-lg-1">
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
                          

                            <!-- sidebar banner start -->
                            <div class="sidebar-widget mb-30">
                                @foreach ($leftAds as $item)
                                    
                                <div class="img-container fix img-full">
                                    <a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
                                </div>
                                @endforeach
                            </div>
                            <!-- sidebar banner end -->
                        </div>
                    </div>
                    <!-- sidebar end -->

                    <!-- product main wrap start -->
                    <div class="col-lg-9 order-1 order-lg-2">
                        @foreach ($centerBigAds as $item)
                            <div class="shop-banner img-full">
                                <img src="{{ asset($item->image) }}" alt="">
                            </div>
                        @endforeach
                        <!-- product view wrapper area start -->
                        <div class="shop-product-wrapper pt-34">
                            <!-- shop product top wrap start -->
                            <div class="shop-top-bar">
                                <div class="row">
                                    <div class="col-lg-7 col-md-6">
                                        <div class="top-bar-left">
                                            <div class="product-view-mode mr-70 mr-sm-0">
                                                <a class="active" href="#" data-target="grid"><i class="fa fa-th"></i></a>
                                                <a href="#" data-target="list"><i class="fa fa-list"></i></a>
                                            </div>
                                            <div class="product-amount">
                                                <p>Showing {{$search_result->currentPage() }} - {{$search_result->lastPage() }}  of {{$search_result->count() }} results</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-6">
                                     
                                    </div>
                                </div>
                            </div>
                            <!-- shop product top wrap start -->

                            <!-- product item start -->
                            <div class="shop-product-wrap grid row">
                              {{-- {{ dd($category_wise_product) }} --}}
                                @forelse ($search_result as $item)
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <!-- product single grid item start -->
                                    <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                    <div class="product-item fix mb-30">
                                        <div class="product-thumb">
                                            <a href="{{ route('product.details', $item->slug) }}">
                                                <img src="{{ asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png') }}" class="img-pri" alt="">
                                                <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png') }}" class="img-sec" alt="">
                                            </a>
                                            <div class="product-label">
                                                <span>hot</span>
                                            </div>
                                            <div class="product-action-link">
                                                <a href="#" onclick="product({{ $item->id }})" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                                <!-- <button href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></button> -->
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
                                    <!-- product single grid item end -->
                                   
                                    <!-- product single list item start -->
                                </div> <!-- product single column end -->
                                @empty
                                  <img class="w-100" height="470" src="{{ asset('no-results-found.gif') }}" alt="">
                                @endforelse
                               @foreach ($search_result as $item)
                               <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="product-list-item mb-30">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug) }}">
                                            <img src="{{ asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png') }}" class="img-pri" alt="">
                                            <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                    </div>
                                    <div class="product-list-content">
                                        <h3><a href="{{ route('product.details', $item->slug) }}">{{ $item->name }}</a></h3>
                                        
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
                                        <p>{!! $item->short_details !!}</p>
                                        <div class="product-list-action-link">
                                            <!-- <button class="btn btn-danger rounded-0 text-capitalize" href="#" data-toggle="tooltip" data-placement="top" title="Add to cart">Add To Cart</button> -->
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="top" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                        </div>
                                    </div>
                                </div>
                                    <input type="hidden" value="{{ $item->id }}" name="id">
                                    <input type="hidden" value="{{ $item->name }}" name="name">
                                    <input type="hidden" value="{{ $item->image }}"  name="image">
                                    <input type="hidden" value="1"  name="quantity">
                                </form>
                                @endforeach
                            </div>
                            <!-- product item end -->
                        </div>
                        <!-- product view wrapper area end -->

                        <!-- start pagination area -->
                        <div class="paginatoin-area text-center pt-28 mb-3 pb-3">
                            <div class="row">
                                <div class="col-12">
                                    
                                    {{ $search_result->links() }}
                                    {{-- <ul class="pagination-box">
                                        <li><a class="Previous" href="#">Previous</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a class="Next" href="#"> Next </a></li>
                                    </ul> --}}
                                </div>
                            </div>
                        </div>
                        <!-- end pagination area -->

                    </div>
                    <!-- product main wrap end -->
                </div>
            </div>
        </div>
        <!-- page wrapper end -->

    
@endsection