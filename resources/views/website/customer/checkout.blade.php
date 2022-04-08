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
                                   
                                    <li class="breadcrumb-item active" aria-current="page">checkout</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- checkout main wrapper start -->
    <form action="{{ route('orderStore') }}" method="post">
        @csrf
        <div class="checkout-page-wrapper">
            <div class="container">
                <div class="row">
                    <!-- Checkout Billing Details -->
                    <div class="col-lg-6 mb-4 pb-3">
                        <div class="checkout-billing-details-wrap">
                            <h2>Billing Details</h2>
                            <div class="billing-form-wrap">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label for="f_name" class="required">Name</label>
                                                <input type="text" name="customer_name" class="form-control @error('customer_name') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->name }}" id="f_name" placeholder="Name"/>
                                                    @error('customer_name')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror  
                                            </div>
                                        </div>
        
                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label for="l_name" class="required">Phone</label>
                                                <input type="text" id="l_name" name="customer_mobile" class="form-control @error('customer_mobile') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->phone }}"  placeholder="Last Name"  />
                                                @error('customer_mobile')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror  
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="single-input-item">
                                        <label for="email" class="required">Email Address</label>
                                        <input type="email" id="email"  name="customer_email" class="form-control @error('customer_email') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->email }}" placeholder="Email Address"/>
                                            @error('customer_email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror  
                                    </div>
                                    <div class="single-input-item">
                                        <label for="street-address" class="required">Billing address</label>
                                        <input type="text" id="street-address" name="billing_address" class="form-control @error('billing_address') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->address }}" placeholder="Street address Line 1"/>
                                            @error('billing_address')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror  
                                    </div>
                                  
                                    <div class="checkout-box-wrap">
                                        <div class="single-input-item">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="ship_to_different">
                                                <label class="custom-control-label" for="ship_to_different">Ship to a different address?</label>
                                            </div>
                                        </div>
                                        <div class="ship-to-different single-form-row">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    {{-- <div class="single-input-item">
                                                        <label for="f_name_2" class="required"> Name</label>
                                                        <input type="text" name="customer_name"  class="form-control @error('customer_name') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->name }}" id="f_name_2" placeholder=" Name" required />
                                                            @error('customer_name')
                                                                <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                            @enderror  
                                                    </div> --}}
                                                </div>
        
                                                <div class="col-md-6">
                                                    {{-- <div class="single-input-item">
                                                        <label for="l_name_2" class="required">Phone</label>
                                                        <input type="text" name="customer_mobile" class="form-control @error('customer_mobile') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->phone }}" id="l_name_2" placeholder="Phone Number" required />
                                                            @error('customer_mobile')
                                                                <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                            @enderror  
                                                    </div> --}}
                                                </div>
                                            </div>
                                            {{-- <div class="single-input-item">
                                                <label for="email_2" class="required">Email Address</label>
                                                <input type="email" name="customer_email" class="form-control @error('customer_email') is-invalid @enderror"  value="{{ Auth::guard('customer')->user()->email }}" id="email_2" placeholder="Email Address" required />
                                                    @error('customer_email')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror 
                                            </div> --}}
                                            <div class="single-input-item">
                                                <label for="address" class="required"> Address</label>
                                                <input type="text" name="shipping_address" class="form-control @error('shipping_address') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->address }}" id="address" placeholder="Shipping Address"/>
                                                    @error('shipping_address')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror 
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="single-input-item">
                                        <label for="ordernote">Order Note</label>
                                        <textarea name="order_note" class="form-control @error('order_note') is-invalid @enderror" id="order_note" cols="30" rows="3" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                        @error('order_note')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror 
                                    </div>
                            </div>
                        </div>
                    </div>
        
                    <!-- Order Summary Details -->
                    <div class="col-lg-6">
                        <div class="order-summary-details mt-md-26 mt-sm-26">
                            <h2>Your Order Summary</h2>
                            <div class="order-summary-content mb-sm-4">
                                <!-- Order Summary Table -->
                                <div class="order-summary-table table-responsive text-center">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Products</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {{-- <input type="hidden" name="cart" value="{{ \Cart::getContent() }}"> --}}
                                            @foreach (\Cart::getContent() as $item)
                                            <tr>
                                                <td><a>{{ $item->name }} <strong> × {{ $item->quantity }}</strong></a></td>
                                                <td>{{ \Cart::get($item->id)->getPriceSum() }} Tk</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td>Sub Total</td>
                                                <td><strong>{{ \Cart::getTotal() }} Tk</strong></td>
                                            </tr>
                                            <tr>
                                                <td>Shipping</td>
                                                <td class="d-flex justify-content-center">
                                                   70 Tk
                                                   <input type="hidden" name="shipping_cost" value="70"> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Total Amount</td>
                                                <td><strong>{{ (\Cart::getTotal()+70) }} Tk</strong></td>
                                                <input type="hidden" name="total_amount" value="{{ (\Cart::getTotal()+70) }}">
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- Order Payment Method -->
                               
                                    <div class="summary-footer-area pt-3">
                                        {{-- <div class="custom-control custom-checkbox mb-14"> --}}
                                            {{-- <input type="checkbox" class="custom-control-input" id="terms" required /> --}}
                                            {{-- <label class="custom-control-label" for="terms">I have read and agree to the website <a
                                                href="{{ route('home') }}">terms and conditions.</a></label> --}}
                                        {{-- </div> --}}

                                        @if (Cart::getContent()->count() > 0)
                                        <a href="{{ route('home') }}" class="check-btn sqr-btn text-white rounded-0">Continue Shopping</a>
                                      
                                        <button type="submit" class="check-btn sqr-btn rounded-0">Place Order</button>
                                        @else
                                        <a href="{{ route('home') }}" class="check-btn sqr-btn text-white rounded-0">Continue Shopping</a> 
                                        @endif

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </div>
        <!-- checkout main wrapper end -->
@endsection

@push('website-js')
<script> 

    @if(Session::has('order'))
    toastr.options =
    {
        "closeButton" : true,
        "progressBar" : true
    }
            toastr.success("{{ session('order') }}");
    @endif

    @if(Session::has('faild'))
    toastr.options =
    {
        "closeButton" : true,
        "progressBar" : true
    }
            toastr.error("{{ session('faild') }}");
    @endif 
</script>

@endpush