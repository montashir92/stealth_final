<?php

namespace App\Http\Controllers\Admin;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index(){
        // $dailyReport = Order::whereDate('updated_at', now())->where('status', 'd')->get();
        // $monthReport = Order::whereMonth('updated_at', now())->where('status', 'd')->get();
        return view('admin.index');
    }

    
}
