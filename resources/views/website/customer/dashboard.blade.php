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
                                    <li class="breadcrumb-item active" aria-current="page">my account</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->
            
        <!-- my account wrapper start -->
        <div class="my-account-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper">
                            <!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4 mb-4 pb-3">
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
                                            Dashboard</a>
                                        <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                        <a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i> Payment
                                            Method</a>
                                            <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i> address</a>
                                            <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> Account Details</a>
                                            <a href="#download" data-toggle="tab"><i class="fa fa-key"></i> Change Password</a>
                                        <a href="{{ route('customerLogout') }}"><i class="fa fa-sign-out"></i> Logout</a>
                                    </div>
                                </div>
                                <!-- My Account Tab Menu End -->
        
                                <!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8">
                                    <div class="tab-content" id="myaccountContent">
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Dashboard</h3>
                                                <div class="welcome">
                                                    <p>Hello, <strong>{{Auth::guard('customer')->user()->name }}</strong></p>
                                                </div>
                                                <p class="mb-0">From your account dashboard. you can easily check & view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Orders</h3>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Total</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach ($order as $key=> $item)
                                                            <tr>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>{{ $item->created_at }}</td>
                                                                <td>
                                                                    @if ($item->status == 'p')
                                                                        Pending
                                                                    @endif
                                                                    @if ($item->status == 'on')
                                                                       Processing
                                                                    @endif
                                                                    @if ($item->status == 'w')
                                                                    On the way
                                                                 @endif
                                                                    @if ($item->status == 'd')
                                                                        Delivery
                                                                    @endif
                                                                </td>
                                                                <td>{{ $item->total_amount }}</td>
                                                                <td><a href="{{ route('invoice.customer',$item->id) }}" class="btn btn-danger btn-sm rounded-0"><i class="fa fa-shopping-basket"></i></a></td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade mb-3" id="download" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Password change</h3>
                                                <form action="{{ route('customerPasswordUpdate') }}" method="post">
                                                    @csrf
                                                    @method('put')
                                                    <div class="single-input-item">
                                                        <label for="current-pwd" class="required">Current Password</label>
                                                        <input type="password" class="form-control @error('currentPass') is-invalid @enderror" name="currentPass" id="current-pwd" placeholder="Current Password" />
                                                        @error('currentPass')
                                                            <span class="invalid-feedback" role="alert">
                                                                {{ $message }}      
                                                            </span>  
                                                        @enderror
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label for="new-pwd" class="required">New Password</label>
                                                                <input type="password" name="password" id="new-pwd" placeholder="New Password" />
                                                                @error('record')
                                                                    
                                                                @enderror
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label for="confirm-pwd" class="required">Confirm Password</label>
                                                                <input type="password" name="password_confirmation" id="confirm-pwd" placeholder="Confirm Password" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="single-input-item">
                                                        <button class="check-btn sqr-btn" type="submit">Change Password</button>
                                                    </div> 
                                                </form>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Payment Method</h3>
                                                <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Billing Address</h3>
                                                <address>
                                                   {{ Auth::guard('customer')->user()->address }}
                                                
                                                </address>
                                               
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade mb-3" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Account Details</h3>
                                                <div class="account-details-form">
                                                    <form action="{{ route('customerUpdate', Auth::guard('customer')->user()) }}" method="post" enctype="multipart/form-data">
                                                        @csrf
                                                        @method('put')
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label  class="required">Name</label>
                                                                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"  value="{{ Auth::guard('customer')->user()->name }}" placeholder=" Name" />
                                                                    @error('name')
                                                                        <span class="invalid-feedback" role="alert">
                                                                            {{ $message }}
                                                                        </span>
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label  class="required">Phone Use Your UserName</label>
                                                                    <input type="number" disabled value="{{ Auth::guard('customer')->user()->phone }}" placeholder="phone Number" />
                                                                  
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <label for="display-name" class="required">Email</label>
                                                            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" value="{{ Auth::guard('customer')->user()->email }}" placeholder="Display email" />
                                                            @error('email')
                                                                <span class="invalid-feedback" role="alert">
                                                                    {{ $message }}
                                                                </span>
                                                            @enderror
                                                        </div>
                                                        <div class="single-input-item">
                                                            <label for="email" class="required"> Address</label>
                                                            <input type="text" name="address" value="{{ Auth::guard('customer')->user()->address }}"  placeholder="Address" />
                                                        </div>
                                                      
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="email" class="required"> Profile Picture</label>
                                                                    <input type="file" class="form-control @error('profile_picture') is-invalid @enderror" name="profile_picture" onchange="readURL(this);"/>
                                                                    @error('profile_picture')
                                                                       <span class="invalid-feedback" role="alert">
                                                                           {{ $message }}
                                                                        </span> 
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <img height="100" width="150" src="#" id="previewImage"  alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <button class="check-btn sqr-btn " type="submit">Save Changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> <!-- Single Tab Content End -->
                                    </div>
                                </div> <!-- My Account Tab Content End -->
                            </div>
                        </div> <!-- My Account Page End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->

    
@endsection
@push('website-js')
<script>
  function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload=function(e) {
                $('#previewImage')
                    .attr('src', e.target.result)     
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    document.getElementById("previewImage").src="{{ asset(Auth::guard('customer')->user()->profile_picture ??  '/noimage.png') }}";  
</script>
  
    
    

@endpush