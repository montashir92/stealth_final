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
                                
                                    <li class="breadcrumb-item active" aria-current="page">product details</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- product details wrapper start -->
        <div class="product-details-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <!-- product details inner end -->
                        <div class="product-details-inner">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="product-large-slider mb-20 slick-arrow-style_2">
                                        <div class="pro-large-img img-zoom" id="img1">
                                            <img src="{{ asset('uploads/product/'.$product->image) }}" alt="" />
                                        </div>
                                        @foreach ($product->productImage as $item)
                                        <div class="pro-large-img img-zoom" id="img2">
                                            <img src="{{ asset($item->otherImage) }}" alt=""/>
                                        </div>
                                        @endforeach
                                    </div>
                                    <div class="pro-nav slick-padding2 slick-arrow-style_2">
                                        <div class="pro-nav-thumb" ><img src="{{ asset('uploads/product/'.$product->image) }}" alt="" style="min-height: 96px; max-height:96px;" /></div>
                                        @foreach ($product->productImage as $item)
                                        <div class="pro-nav-thumb"><img src="{{ asset($item->otherImage) }}" style="min-height: 96px; max-height:96px;" alt="" /></div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                   
                                    <div class="product-details-des mt-md-34 mt-sm-34">
                                        <h3>{{ $product->name }}</h3>
                                        <div class="availability mt-10">
                                            <h5>Category:</h5>
                                            <span> {{ $product->category->name }}</span>
                                        </div>

                                        <div class="pricebox">
                                            @if ($product->discount != '')
                                                <span class="old-price"><del>{{ $product->price }}Tk</del>&nbsp;</span>
                                                <span class="regular-price">{{ calculateDiscount($product->price, $product->discount) }}Tk</span> <span>| You have save {{ $product->discount }}%</span>
                                               
                                            @else
                                                <span class="regular-price">{{ $product->price }}Tk</span>
                                                
                                            @endif
                                        </div>
                                        
                                        <p class="mb-0 pt-0">{!! $product->short_details !!}</p>
                                        <div class="quantity-cart-box d-flex align-items-center">
                                            
                                               
                                            <!-- <div class="quantity">
                                                <input type="number" class="pro-qty"  min="1" value="1" id="myInput" oninput="myFunction()" >
                                            </div> -->
                                            <div class="action_link d-flex">
                                                <form action="{{ route('cart.store') }}" method="POST">
                                                    @csrf
                                                    @if ($product->discount != '')
                                                        <input type="hidden" value="{{ calculateDiscount($product->price, $product->discount) }}" name="price">
                                                    @else
                                                        <input type="hidden" value="{{ $product->price }}" name="price">
                                                    @endif
                                                    <input value="1" type="hidden"  id="cart" name="quantity" >
                                                    <input type="hidden" value="{{ $product->id }}" name="id">
                                                    <input type="hidden" value="{{ $product->name }}" name="name">
                                                    <input type="hidden" value="{{ $product->image }}"  name="image">
                                                    <!-- <button  data-toggle="tooltip" class="btn btn-danger rounded-0 text-capitalize mr-3"  data-placement="top" title="Add to Cart">add to cart</button> -->
                                                   
                                                </form>

                                                <form action="{{ route('cart.buy') }}" method="POST">
                                                    @csrf
                                                    @if ($product->discount != '')
                                                        <input type="hidden" value="{{ calculateDiscount($product->price, $product->discount) }}" name="price">
                                                    @else
                                                        <input type="hidden" value="{{ $product->price }}" name="price">
                                                    @endif

                                                   
                                                    <input value="1" type="hidden"  id="buy" name="quantity">
                                                    <input type="hidden" value="{{ $product->id }}" name="id">
                                                    <input type="hidden" value="{{ $product->name }}" name="name">
                                                    <input type="hidden" value="{{ $product->image }}"  name="image">   
                                                    <!-- <button  data-toggle="tooltip" class="btn btn-danger rounded-0 text-capitalize"  data-placement="top" title="Buy Now">Buy Now</button> -->
                                                </form>
                                                </div>
                                            </div>
                                    
                                        <div class="share-icon mt-20">
                                            <a class="facebook" href="{{ $content->facebook }}"><i class="fa fa-facebook"></i>like</a>
                                            <a class="pinterest" href="{{ $content->youtube  }}"><i class="fa fa-youtube "></i>Youtube </a>
                                            <a class="pinterest" href="{{ $content->instagram  }}"><i class="fa fa-instagram"></i>Instagram</a>
                                            <a class="twitter" href="{{ $content->linkdin }}"><i class="fa fa-linkedin"></i>Linkedin </a>
                                        </div>
                                    </div>
                                
                                </div>
                            </div>
                        </div>
                        <!-- product details inner end -->

                        <!-- product details reviews start -->
                        <div class="product-details-reviews mt-34">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="product-review-info">
                                        <ul class="nav review-tab">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#tab_one">description</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#tab_two">information</a>
                                            </li>
                                           
                                        </ul>
                                        <div class="tab-content reviews-tab">
                                            <div class="tab-pane fade show active" id="tab_one">
                                                <div class="tab-one">
                                                   {!! $product->description !!}
                                                  
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab_two">
                                                <table class="table table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <td>color</td>
                                                            <td> 
                                                                @if ($product->color != ' ')
                                                                {{ $product->color}}
                                                                @else    
                                                                @endif
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>size</td>
                                                            <td>   
                                                            @if ($product->product_size != ' ')
                                                             {{ $product->product_size}}
                                                            @else    
                                                            @endif
                                                        </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="tab_three">
                                                <form action="#" class="review-form">
                                                  
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Name</label>
                                                            <input type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Email</label>
                                                            <input type="email" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Review</label>
                                                            <textarea class="form-control" required></textarea>
                                                           
                                                        </div>
                                                    </div>
                                                  
                                                    <div class="buttons">
                                                        <button class="sqr-btn" type="submit">Continue</button>
                                                    </div>
                                                </form> <!-- end of review-form -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <!-- product details reviews end --> 

                        <!-- related products area start -->
                        <div class="related-products-area mt-34">
                            <div class="section-title mb-30">
                                <div class="title-icon">
                                    <i class="fa fa-desktop"></i>
                                </div>
                                <h3>related products</h3>
                            </div> <!-- section title end -->
                            <!-- featured category start -->
                            <div class="featured-carousel-active slick-padding slick-arrow-style">
                                <!-- product single item start -->
                                @forelse ($similar as $item)
                                <div class="product-item mb-3 fix">
                                <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" class="img-pri" alt="">
                                            <img src="{{asset($item->productImage[0]->otherImage ?? '/noimage.png')}}" class="img-sec" alt="">
                                        </a>
                                        @if ($item->is_featured)
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        @endif
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" onclick="product({{ $item->id }})" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <!-- <button class="" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></button> -->
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">{{ $item->name }}</a></h4>
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
                                        {{-- cart input filed --}}
                                        <input type="hidden" value="{{ $item->id }}" name="id">
                                        <input type="hidden" value="{{ $item->name }}" name="name">
                                        <input type="hidden" value="{{ $item->image }}"  name="image">
                                        <input type="hidden" value="1"  name="quantity">
                                    </div>
                                </form>
                                </div>
                                

                                @empty
                                {{-- static --}}
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="assets/img/product/product-img3.jpg" class="img-pri" alt="">
                                            <img src="assets/img/product/product-img4.jpg" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">simple product 01</a></h4>
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
                                <!-- product single item end -->
                                <!-- product single item start -->
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="assets/img/product/product-img5.jpg" class="img-pri" alt="">
                                            <img src="assets/img/product/product-img6.jpg" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">vertual product 05</a></h4>
                                        <div class="pricebox">
                                            <span class="regular-price">$60.00</span>
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
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="assets/img/product/product-img7.jpg" class="img-pri" alt="">
                                            <img src="assets/img/product/product-img8.jpg" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">grouped product</a></h4>
                                        <div class="pricebox">
                                            <span class="regular-price">$10.00</span>
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
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="assets/img/product/product-img9.jpg" class="img-pri" alt="">
                                            <img src="assets/img/product/product-img10.jpg" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">simple product 10</a></h4>
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
                                <!-- product single item end -->
                                <!-- product single item start -->
                                <div class="product-item fix">
                                    <div class="product-thumb">
                                        <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                            <img src="assets/img/product/product-img11.jpg" class="img-pri" alt="">
                                            <img src="assets/img/product/product-img12.jpg" class="img-sec" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span>hot</span>
                                        </div>
                                        <div class="product-action-link">
                                            <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip" data-placement="left" title="Quick view"><i class="fa fa-search"></i></span> </a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Compare"><i class="fa fa-refresh"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">affiliate product</a></h4>
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
                                <!-- product single item start -->
                               
                                <!-- product single item end -->
                            </div>
                            <!-- featured category end -->
                        </div>
                        <!-- related products area end -->
                    </div>

                    <!-- sidebar start -->
                    <div class="col-lg-3">
                        <div class="shop-sidebar-wrap fix mt-md-22 mt-sm-22">
                            <!-- featured category start -->
                            <div class="sidebar-widget mb-22">
                                <div class="section-title-2 d-flex justify-content-between mb-28">
                                    <h3>featured</h3>
                                    <div class="category-append"></div>
                                </div> <!-- section title end -->
                                <div class="category-carousel-active row" data-row="4">
                                    @forelse ($featured as $item)
                                    <div class="col">
                                        <div class="category-item">
                                            <div class="category-thumb">
                                                <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                                    <img style="height: 88px; min-width:88px !important" src="{{asset('uploads/product/thumbnail/'.$item->thum_image ?? '/noimage.png')}}" alt="">
                                                </a>
                                            </div>
                                            <div class="category-content">
                                                <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">{{ $item->name }}</a></h4>
                                                <div class="price-box">
                                                    @if ($item->discount != '')
                                                    <div class="old-price"><del>{{ $item->price }}Tk</del>&nbsp;</div>
                                                    <div class="regular-price">{{ $item->price - ($item->price * ($item->discount) / 100) }}Tk</div>
                                                    @else
                                                        <div class="regular-price">{{ $item->price }}Tk</div>
                                                    @endif
                                                </div>
                                               
                                            </div>
                                        </div> <!-- end single item -->
                                    </div> <!-- end single item column -->
                                    @empty
                                    <div class="col">
                                        <div class="category-item">
                                            <div class="category-thumb">
                                                <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                                    <img src="assets/img/product/product-img2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="category-content">
                                                <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">Virtual Product 01</a></h4>
                                                <div class="price-box">
                                                    <div class="regular-price">
                                                        $150.00
                                                    </div>
                                                    <div class="old-price">
                                                        <del>$180.00</del>
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
                                    <div class="col">
                                        <div class="category-item">
                                            <div class="category-thumb">
                                                <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                                    <img src="assets/img/product/product-img3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="category-content">
                                                <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">Virtual Product 01</a></h4>
                                                <div class="price-box">
                                                    <div class="regular-price">
                                                        $150.00
                                                    </div>
                                                    <div class="old-price">
                                                        <del>$180.00</del>
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
                                    <div class="col">
                                        <div class="category-item">
                                            <div class="category-thumb">
                                                <a href="{{ route('product.details', $item->slug, $item->slug) }}">
                                                    <img src="assets/img/product/product-img4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="category-content">
                                                <h4><a href="{{ route('product.details', $item->slug, $item->slug) }}">Virtual Product 01</a></h4>
                                                <div class="price-box">
                                                    <div class="regular-price">
                                                        $150.00
                                                    </div>
                                                    <div class="old-price">
                                                        <del>$180.00</del>
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
                                    @endforelse
                                   
                                    </div> <!-- end single item column -->
                                </div>
                            </div>
                            <!-- featured category end -->

                            <!-- manufacturer start -->
                            <div class="sidebar-widget mb-22">
                                <div class="sidebar-title mb-10">
                                    <h3>Category</h3>
                                </div>
                                <div class="sidebar-widget-body">
                                    <ul>
                                        @foreach ($category as $item)
                                            
                                        <li><i class="fa fa-angle-right"></i><a href="{{ route('categoryWise.list', $item->slug) }}">{{ $item->name }}</a><span>{{ $item->product->count() }}</span></li>
                                        @endforeach
                                     
                                    </ul>
                                </div>
                            </div>
                            <!-- manufacturer end -->

                          
                            <!-- sidebar banner start -->
                            <div class="sidebar-widget mb-22">
                                @forelse ($rightAds as $item)
                                <div class="img-container fix img-full mt-30">
                                    <a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
                                </div> 
                                @empty
                                <a href="#"><img src="{{ asset('noimage.png') }}" alt=""></a>
                                @endforelse
                                
                            </div>
                            <!-- sidebar banner end -->
                        </div>
                    </div>
                    <!-- sidebar end -->
                </div>
            </div>
        </div>
       
@endsection

@push('website-js')
<script>
    function myFunction() {
        var x = document.getElementById("myInput").value;
        document.getElementById("cart").value = x;
        document.getElementById("buy").value = x;
    }
    </script>
@endpush
