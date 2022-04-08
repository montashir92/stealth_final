<?php

namespace App\Http\Controllers\Customer;

use Exception;
use Carbon\Carbon;
use App\Models\Order;
use App\Models\Country;
use Darryldecode\Cart\Cart;
use Illuminate\Support\Str;
use App\Models\OrderDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{
    public function checkout()
    {
        if (Auth::guard('customer')->check()) {

            return view('website.customer.checkout');
        } else {
            return redirect()->route('customer.login');
        }
    }

    public function orderStore(Request $request)
    {
        // $today =   Carbon::now()->format('Y-m-d');
        // $s = '2021-10-28 13:05:51';
        // $date = strtotime($s);
        // return date('Y-m-d', $date);

        // return Order::where('created_at','==',$today)->get();
        // return Order::whereBetween('created_at', [
        //     $today,
        //     Carbon::parse($today)->endOfDay()
        //     ])->get();

        $request->validate([
            'customer_name' => 'required|max:100',
            'customer_mobile' => 'required|regex:/^01[13-9][\d]{8}$/|min:11',
            'customer_email' => 'max:50',
            'total_amount' => 'required',
            'billing_address' => 'required',
            'ip_address' => 'max:15',
        ]);

        $last_invoice_no =  Order::whereDate('created_at', today())->latest()->take(1)->pluck('invoice_no');
        if(count($last_invoice_no) > 0){
            $invoice_no = $last_invoice_no[0] + 1;
        } else {
            $invoice_no = date('ymd') .'000001';
        }

        try {
            DB::beginTransaction();
            $order = new Order();
            $order->invoice_no = $invoice_no;
            $order->customer_id = Auth::guard('customer')->user()->id;
            $order->customer_name = $request->customer_name;
            $order->customer_mobile = $request->customer_mobile;
            $order->customer_email = $request->customer_email;
            $order->shipping_address = $request->shipping_address;
            $order->billing_address = $request->billing_address;
            $order->shipping_cost = $request->shipping_cost;
            $order->total_amount = $request->total_amount;
            $order->order_note = $request->order_note;
            $order->ip_address = $request->ip();
            $order->save();

            foreach (\Cart::getContent() as $value) {
                $total = (float)$value->quantity * (float)$value->price;
                $orderDetails = new OrderDetails();
                $orderDetails->order_id = $order->id;
                $orderDetails->product_id = $value->id;
                $orderDetails->product_name = $value->name;
                $orderDetails->price = $value->price;
                $orderDetails->quantity = $value->quantity;
                $orderDetails->total_price = $total;
                $orderDetails->save();
            }
            DB::commit();
            Session::flash('success', 'order Submit successfully');
            \Cart::clear();
            return redirect()->route('home');
        } catch (Exception $e) {
            DB::rollBack();
            Session::flash('faild', 'order Submit faild');
            return back();
        }
    }
}
