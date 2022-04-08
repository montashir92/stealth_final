<header>
    <!-- header top start -->
    <div class="header-top-area bg-gray text-center text-md-left">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-5">
                    <div class="header-call-action">
                        <a href="#">
                            <i class="fa fa-envelope"></i>
                            {{ $content->email }}
                        </a>
                        <a href="#">
                            <i class="fa fa-phone"></i>
                            {{ $content->phone_1 }}
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-7">
                
                    <div class="header-top-right float-md-right float-none">
                    
                        <nav>
                            <ul>
                                <li>
                                    <div class="team-social">
                                        <a href="{{ $content->facebook }}" class="px-2"><i class="fa fa-facebook fa-1x"></i></a>
                                        <a href="{{ $content->twitter }}" class="px-2"><i class="fa fa-twitter fa-1x"></i></a>
                                        <a href="{{ $content->linkedin }}" class="px-2"><i class="fa fa-linkedin fa-1x"></i></a>
                                        <a href="{{ $content->instagram }}" class="px-2"><i class="fa fa-instagram fa-1x"></i></a>
                                    </div>

                                    <!-- <div class="dropdown header-top-dropdown">
                                        <a class="dropdown-toggle" id="myaccount" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            my account
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="myaccount">
                                            @if (Auth::guard('customer')->check())
                                                 <a class="dropdown-item" href="{{ route('customer.panel') }}">{{ Auth::guard('customer')->user()->name }}</a>
                                                 <a class="dropdown-item" href="{{ route('customerLogout') }}"> logout</a>
                                            @else
                                                <a class="dropdown-item" href="{{ route('customer.login') }}"> login</a>
                                                <a class="dropdown-item" href="{{ route('customer.login') }}">register</a>
                                            @endif
                                          
                                        </div>
                                    </div> -->
                                </li>
                              
                                {{-- <li>
                                    <a href="{{ route('cart.list') }}">my cart</a>
                                </li>
                                <li>
                                    <a href="{{ route('checkout.user') }}">checkout</a>
                                </li> --}}
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header top end -->

    <!-- header middle start -->
    <div class="header-middle-area ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="brand-logo">
                        <a href="{{ route('home') }}">
                            <img src="{{asset($content->logo)}}" alt="brand logo">
                        </a>
                    </div>
                </div> <!-- end logo area -->
                <div class="col-lg-9">
                    <div class="header-middle-right">
                        {{-- <div class="header-middle-shipping mb-20">
                            <div class="single-block-shipping">
                                <div class="shipping-icon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <div class="shipping-content">
                                    <h5>Working time</h5>
                                    <span>{{ $content->office_time }}</span>
                                </div>
                            </div> <!-- end single shipping -->
                            <div class="single-block-shipping">
                                <div class="shipping-icon">
                                    <i class="fa fa-truck"></i>
                                </div>
                                <div class="shipping-content">
                                    <h5>free shipping</h5>
                                    <span>{{ $content->free_shipping }}</span>
                                </div>
                            </div> <!-- end single shipping -->
                            <div class="single-block-shipping">
                                <div class="shipping-icon">
                                    <i class="fa fa-money"></i>
                                </div>
                                <div class="shipping-content">
                                    <h5>money back 100%</h5>
                                    <span>{{ $content->cashback }}</span>
                                </div>
                            </div> <!-- end single shipping -->
                        </div> --}}
                      
                        <div class="header-middle-block">
                            <div class="header-middle-searchbox">
                                <form class="" action="{{ route('search') }}" method="GET">
                                    <input type="text" name="q" id="keyword" placeholder="Search...">
                                    <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="header-mini-cart">
                                <div class="mini-cart-btn">
                                    <i class="fa fa-mobile"></i>
                                    {{-- <i class="fa fa-shopping-cart"></i>
                                    <span class="cart-notification">{{ Cart::getTotalQuantity()}}</span> --}}
                                </div>
                                <div class="cart-total-price">
                                    <span>{{ $content->phone_1 }}</span>
                                    {{-- {{ Cart::getTotal() }}Tk --}}
                                </div>
                                {{-- <ul class="cart-list">
                                    @foreach(\Cart::getContent() as $item)
                                    <li>
                                        <div class="cart-img">
                                            <a href=""><img src="{{asset('uploads/product/'.$item->attributes->image)}}" alt=""></a>
                                        </div>
                                        <div class="cart-info">
                                            <h4><a href="product-details.html">{{ $item->name }}</a></h4>
                                            <span>{{ $item->price }}Tk</span>
                                            <p>Quantity: {{ $item->quantity }}</p>
                                        </div>
                                        <form c action="{{ route('cart.remove') }}" method="POST">
                                            {{ csrf_field() }}
                                            <div class="del-icon">
                                                <input type="hidden" value="{{ $item->id }}" id="id" name="id">
                                                <button  class="remove btn btn-danger btn-sm"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                            </div>
                                        </form>

                                            @endforeach
                                            
                                    <li class="mini-cart-price">
                                        <span class="subtotal">subtotal : </span>
                                        <span class="subtotal-price">{{ Cart::getTotal() }}Tk</span>
                                    </li>
                                    <li class="checkout-btn">
                                        <a href="{{ route('cart.list') }}">checkout</a>
                                    </li>
                                </ul> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header middle end -->

    <!-- main menu area start -->
    <div class="main-header-wrapper bdr-bottom1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-header-inner">
                        <div class="category-toggle-wrap">
                            <div class="category-toggle">
                                category
                                <div class="cat-icon">
                                    <i class="fa fa-angle-down"></i>
                                </div>
                            </div>
                            {{-- @if 
                                <nav class="category-menu">
                            @else
                                
                            @endif --}}
                        @php
                            $route = Route::current()->getName();
                        @endphp
                          @if ($route == 'home')
                          <nav class="category-menu hm-1">
                          @else
                          <nav class="category-menu category-style-2">
                          @endif
                                <ul>
                                    @forelse ($category as $item)
                                    <!-- Mega Category Menu Start -->
                                        @if ($item->SubCategory->count() > 0)
                                        <li class="menu-item-has-children">
                                        @else
                                        <li> 
                                        @endif  
                                        <a href="{{ route('categoryWise.list', $item->slug) }}"><i
                                        class="fa fa-cart-plus"></i> {{ $item->name }}</a>
                                        @if ($item->SubCategory->count() > 0)
                                            <ul class="category-mega-menu " style="display: block">
                                                <li class="menu-item-has-children">
                                                    <ul >
                                                        @foreach ($item->SubCategory as $subcategory)
                                                        <li class="text-nowrap "><a href="{{route('SubCategoryWise.list',$subcategory->slug)  }}">{{ $subcategory->name }}</a></li>
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            </ul><!-- Mega Category Menu End -->
                                        @else
                                        @endif
                                    </li>
                                  
                                    @empty

                                    <li class="menu-item-has-children"><a href="shop-grid-left-sidebar.html"><i
                                        class="fa fa-camera"></i> camera</a>
                                    </li>
                                    <li class="menu-item-has-children"><a href="shop-grid-left-sidebar.html"><i
                                                class="fa fa-book"></i> smart phones</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-clock-o"></i>
                                            watch</a></li>
                                    <li><a href="#"><i class="fa fa-television"></i>
                                            electronic</a></li>
                                    <li><a href="#"><i class="fa fa-tablet"></i>
                                            tablet</a></li>
                                    <li><a href="#"><i class="fa fa-book"></i> books</a></li>
                                    <li><a href="#"><i class="fa fa-microchip"></i>
                                            microchip</a></li>
                                    <li><a href="#"><i class="fa fa-bullhorn"></i>
                                            bullhorn</a></li>
                                    @endforelse
                                   
                                </ul>
                            </nav>
                        </div>
                        <div class="main-menu">
                            <nav id="mobile-menu">
                                <ul>
                                    <li class=""><a href="{{ route('home') }}"><i class="fa fa-home"></i>Home </a> </li>
                                    <li class="static"><a href="{{ route('about.website') }}">About Us </a> </li>
                                    
                                    <li class="static"><a href="{{ route('productsList') }}">Product </a></li>
                                    <li><a href="{{ route('accessory.list') }}">Accessories</a> </li>
                                    <li><a href="{{ route('gallery.list') }}">Gallery</a> </li>
                                    <li><a href="{{ route('news.list') }}">News And Event </a> </li>
                                    <li><a href="{{ route('web.contact') }}">Contact us</a></li>
                                     
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 d-block d-lg-none">
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- main menu area end -->

</header>