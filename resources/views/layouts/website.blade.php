<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Site title -->
    <title>{{ $content->company_name }} | Home</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ $content->logo }}" type="image/x-icon" />
    <!-- Bootstrap CSS -->
    <link href="{{ asset('website/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font-Awesome CSS -->
    <link href="{{ asset('website/css/font-awesome.min.css') }}" rel="stylesheet">
    <!-- helper class css -->
    <link href="{{ asset('website/css/helper.min.css') }}" rel="stylesheet">
    <!-- Plugins CSS -->
    <link href="{{ asset('website/css/plugins.css') }}" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="{{ asset('website/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('website/css/skin-default.css') }}" rel="stylesheet" id="galio-skin">
    <link href="{{ asset('website/css/toastr.min.css') }}" rel="stylesheet" id="galio-skin">
</head>

<body>

    <!-- color switcher start -->
    
    <!-- color switcher end -->

    <div class="wrapper">

        <!-- header area start -->
      
        @include('partials.website_header')
        <!-- header area end -->

        <!-- hero slider start -->
     
        <!-- hero slider end -->

       @yield('website-content')
        <!-- brand area end -->

        <!-- footer area start -->

        @include('partials.website_footer')
       
        <!-- footer area end -->

    </div>
    

    <!-- Quick view modal start -->
    <div class="modal" id="quick_view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-large-slider slick-arrow-style_2 mb-20">
                                    <div class="pro-large-img">
                                        <img class="produc-img-show" src="" alt="" /> 
                                    </div>
                                    {{-- <div class="pro-large-img " id="otherImage" ><img src="" alt=""></div> --}}
                                </div>
                                {{-- <div class="pro-nav slick-padding2 slick-arrow-style_2" id="otherImage">
                                    <div class="pro-nav-thumb " ></div> --}}
                                    {{-- <div class="pro-nav-thumb"><img src="{{asset('website/img/product/product-details-img1.jpg')}}"
                                         alt="" /></div> --}} 
                                {{-- </div> --}}
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-des mt-md-34 mt-sm-34">
                                    <h3><a href="" ><span class="product_name"></span></a></h3>
                                   
                                    <div class="availability mt-10">
                                        <h5>Category:</h5>
                                        <span class="category"></span>
                                    </div>
                                    <div class="pricebox">
                                        <span class="regular-price price"></span><span class="regular-price">Tk</span>
                                    </div>
                                    <p class="description pt-0"></p>
                                    {{-- <div class="quantity-cart-box d-flex align-items-center mt-20">
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                        <div class="action_link">
                                            <a class="buy-btn" href="#">add to cart<i class="fa fa-shopping-cart"></i>
                                            </a>
                                        </div>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product details inner end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->
    <!--All jQuery, Third Party Plugins & Activation (main.js) Files-->
    <script src="{{ asset('website/js/vendor/modernizr-3.6.0.min.js') }}"></script>
    <!-- Jquery Min Js -->
    <script src="{{ asset('website/js/vendor/jquery-3.3.1.min.js') }}"></script>
    <!-- Popper Min Js -->
    <script src="{{ asset('website/js/vendor/popper.min.js') }}"></script>
    <!-- Bootstrap Min Js -->
    <script src="{{ asset('website/js/vendor/bootstrap.min.js') }}"></script>
    <!-- Plugins Js-->
    <script src="{{ asset('website/js/plugins.js') }}"></script>
    <!-- Ajax Mail Js -->
    <script src="{{ asset('website/js/ajax-mail.js') }}"></script>
    <!-- Active Js -->
    <script src="{{ asset('website/js/main.js') }}"></script>
    <!-- Switcher JS [Please Remove this when Choose your Final Projct] -->
    <script src="{{ asset('website/js/switcher.js') }}"></script>
    {{-- toster --}}
    <script src="{{ asset('website/js/toastr.min.js') }}"></script>
    
  
    @stack('website-js')
    <script>
        function product(id){
        //   console.log(id);
    
          var url = "/product-show/"+id; 
        //   console.log(url);
          $.ajax({
                    url:url,
                    type:'get',
                    dataType: "json",
                    success:function(res){
                        console.log(res);
                     $('.product_name').text(res.name);
                     $('.price').text(res.price);
                     
                     $('.produc-img-show').attr('src',res.image);
                    let image = '';

                    $.each(res.product_image,function(key,value){
                        image += '<img src="'+value.otherImage+'" alt="" />'
                    })

                    $('#otherImage').html(image);
                    $('.category').text(res.category.name);
                    $('.description').html(res.short_details  );
                    //  $('.project-description').text(res.description);
            }
          });
        }
      </script>
    <script>
          @if(Session::has('success'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
                toastr.success("{{ session('success') }}");
        @endif


        @if(Session::has('cart'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
                toastr.success("{{ session('cart') }}");
        @endif

      

        @if(Session::has('update'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
                toastr.success("{{ session('update') }}");
        @endif
      
        @if(Session::has('remove'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
                toastr.error("{{ session('remove') }}");
        @endif
        
        @if(Session::has('error'))
        toastr.options =
        {
            "closeButton" : true,
            "progressBar" : true
        }
                toastr.error("{{ session('error') }}");
        @endif
      
    </script>
    <script src="{{asset('website/js/bootstrap3-typeahead.min.js')}}" ></script>
    <script type="text/javascript">
        var baseUri = "{{ url('/') }}";
        $('#keyword').typeahead({
            minLength: 1,
            source: function (keyword, process) {
                return $.get(`${baseUri}/get_suggestions/${keyword}`, function (data) {
                    return process(data);
                });
            },

            updater:function (item) {
                $(location).attr('href', '/search?q='+item);
                return item;
            }

        });
    </script>
    {{-- <!--Start of Tawk.to Script-->
    <script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/61ab3783c82c976b71bf9b68/1fm2d1n83';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
<!--End of Tawk.to Script--> --}}
    

</body>



</html>