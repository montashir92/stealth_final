<footer>
    <!-- footer top start -->
    <div class="footer-top bg-black pt-14 pb-14">
        <div class="container">
            <div class="footer-top-wrapper">
                <div class="newsletter__wrap">
                    <div class="newsletter__title">
                        <div class="newsletter__icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="newsletter__content">
                            <h3>sign up for newsletter</h3>
                            <p>Duis autem vel eum iriureDuis autem vel eum</p>
                        </div>
                    </div>
                    <div class="newsletter__box">
                        <form  action="{{ route('subscriber.Store') }}" method="post">
                            @csrf
                            <input type="email"  name="email" autocomplete="off" placeholder="Email">
                            <button id="mc-submit" type="submit">subscribe!</button>
                        </form>
                    </div>
                    <!-- mailchimp-alerts Start -->
                    <div class="mailchimp-alerts">
                        <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                        <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                        <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                    </div>
                    <!-- mailchimp-alerts end -->
                </div>
                <div class="social-icons">
                    <a href="{{ $content->facebook }}" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="{{ $content->youtube }}" data-toggle="tooltip" data-placement="top" title="Youtube"><i class="fa fa-youtube"></i></a>
                    <a href="{{ $content->linkedin }}" data-toggle="tooltip" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                    <a href="{{ $content->instagram }}" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i></a>
                    {{-- <a href="#" data-toggle="tooltip" data-placement="top" title="Google-plus"><i class="fa fa-google-plus"></i></a> --}}
                </div>
            </div>
        </div>
    </div>
    <!-- footer top end -->

    <!-- footer main start -->
    <div class="footer-widget-area pt-40 pb-38 pb-sm-10">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>contact us</h4>
                        </div>
                        <div class="widget-body">
                            <ul class="location">
                                <li><i class="fa fa-map-marker"></i>{{ $content->address }}</li>
                                <li><i class="fa fa-phone"></i>{{ $content->phone_1 }}</li>
                                <li><i class="fa fa-phone"></i>{{ $content->phone_2 }}</li>
                                <li><i class="fa fa-envelope"></i>{{ $content->email }}</li>
                            </ul>
                            {{-- <a class="map-btn" href="contact-us.html">open in google map</a> --}}
                        </div>
                    </div> <!-- single widget end -->
                </div> <!-- single widget column end -->
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>Our Information</h4>
                        </div>
                        <div class="widget-body">
                            <ul>
                                <li><a href="{{ route('about.website') }}">About us</a></li>
                                <li><a href="{{ route('about.website') }}">Mission and Vission</a></li>
                                <li><a href="{{ route('about.website') }}">Management</a></li>
                                <li><a href="{{ route('trams.website') }}">Refund Policy</a></li>
                                <li><a href="{{ route('trams.website') }}">Trams And Conditions</a></li>
                            </ul>
                        </div>
                    </div> <!-- single widget end -->
                </div> <!-- single widget column end -->
              
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>my account</h4>
                        </div>
                        <div class="widget-body">
                            <ul>
                                <li><a href="{{ route('customer.panel') }}">my account</a></li>
                                <li><a href="{{ route('cart.list') }}">my cart</a></li>
                                <li><a href="{{ route('checkout.user') }}">checkout</a></li>
                                <li><a href="{{ route('customer.login') }}">login</a></li>
                            </ul>
                        </div>
                    </div> <!-- single widget end -->
                </div> <!-- single widget column end -->
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>product Category</h4>
                        </div>
                        <div class="widget-body">
                            <ul>
                                @foreach ($randCategory as $item)
                                    <li><a href="{{ route('categoryWise.list', $item->slug) }}">{{ $item->name }}</a><span>({{ $item->product->count() }})</span></li>
                                @endforeach
                            </ul>
                        </div>
                    </div> <!-- single widget end -->
                </div> <!-- single widget column end -->
            </div>
        </div>
    </div>
    <!-- footer main end -->

    <!-- footer bootom start -->
    <div class="footer-bottom-area bg-gray pt-20 pb-20">
        <div class="container">
            <div class="footer-bottom-wrap">
                <div class="copyright-text">
                    <p><a target="_blank" href="https://www.wind24onlinebd.com">{{ $content->company_name }}</a></p>
                </div>
                <div class="payment-method-img">
                    <img src="{{asset('website/img/payment.png"')}}" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- footer bootom end -->

</footer>