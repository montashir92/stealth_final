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
                            <li class="breadcrumb-item active" aria-current="page">Trams and Conditions, Refund Policy</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb area end -->
<div class="choosing-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="title-box text-center">
                    <h3>Trams And Conditions</h3>
                </div>
            </div>
        </div> <!-- section title end -->
        <div class="row mb-3">
            <div class="about-text-wrap">
                <P>{!! $content->trams_condition !!}</P>
            </div>
        </div>
    </div>
</div>     

<div class="choosing-area pt-28">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="title-box text-center">
                    <h3>FAQ</h3>
                </div>
            </div>
        </div> <!-- section title end -->
        <div class="row mb-3">
            <div class="about-text-wrap">
                <P>{!! $content->faq_details !!}</P>
            </div>
        </div>
    </div>
</div>     

<div class="choosing-area pt-28">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="title-box text-center">
                    <h3>Refund Policy</h3>
                </div>
            </div>
        </div> <!-- section title end -->
        <div class="row mb-3">
            <div class="about-text-wrap">
                <P>{!! $content->refund_details !!}</P>
            </div>
        </div>
    </div>
</div>      
@endsection