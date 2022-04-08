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
                                 
                                    <li class="breadcrumb-item active" aria-current="page">cart</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->
           
        <!-- cart main wrapper start -->
        <div class="cart-main-wrapper mb-4 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Cart Table Area -->
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="pro-thumbnail">Thumbnail</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-quantity">Quantity</th>
                                    <th class="pro-subtotal">Total</th>
                                    <th class="pro-remove">Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach ($cartItems as $item)
                                    <tr>
                                        <td class="pro-thumbnail"><a href="#"><img class="img-fluid" src="{{asset('uploads/product/'.$item->attributes->image)  }}"
                                                                                    alt="Product"/></a></td>
                                        <td class="pro-title"><a href="#">{{ $item->name }}</a></td>
                                        <td class="pro-price"><span>{{ $item->price }}</span></td>
                                        <td class="pro-quantity" style="vertical-align: middle">
                                       
                                        <form action="{{ route('cart.update') }}" method="POST">
                                            {{ csrf_field() }}
                                            <div class=" d-flex" style="white-space: text-nowrap">
                                                <input type="hidden" class="d-none" value="{{ $item->id}}" id="id" name="id">
                                                <div class="pro-qty"><input value="{{ $item->quantity }}" type="number" name="quantity" min="1" > </div>
                                                    <div class=""><button class="btn btn-sm" style="margin-left: 6px; padding:6px 14px"><i class="fa fa-edit"></i></button> </div>
                                            </div>
                                        </form>
                                    </td>
                                        <td class="pro-subtotal"><span>{{ \Cart::get($item->id)->getPriceSum() }}</span></td>
                                        <form action="{{ route('cart.remove') }}" method="POST">
                                            {{ csrf_field() }}
                                            <input type="hidden" value="{{ $item->id }}" id="id" name="id">
                                            {{-- <button class="btn btn-dark" style="margin-right: 10px;"><i class="fa fa-trash"></i></button> --}}
                                            <td class="pro-remove"><button class="btn btn-sm" href="#"><i class="fa fa-trash-o"></i></button></td>
                                        </form>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
        
                        <!-- Cart Update Option -->
                      
                    </div>
                </div>
        
                <div class="row">
                    <div class="col-lg-5 ml-auto">
                        <!-- Cart Calculation Area -->
                        <div class="cart-calculator-wrapper">
                            <div class="cart-calculate-items">
                                <h3>Cart Totals</h3>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>Sub Total</td>
                                            <td>{{ \Cart::getTotal() }}Tk</td>
                                        </tr>
                                        <tr>
                                            <td>Shipping</td>
                                            <td>70 Tk</td>
                                        </tr>
                                        <tr class="total">
                                            <td>Total</td>
                                            <td class="total-amount">{{ \Cart::getTotal()+70 }} Tk</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="d-flex">
                                <a href="{{ route('home') }}" class="sqr-btn d-block w-50 mr-3">Continue Shopping</a>
                                <a href="{{ route('checkout.user') }}" class="sqr-btn d-block w-50">Proceed To Checkout</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart main wrapper end -->

      
@endsection