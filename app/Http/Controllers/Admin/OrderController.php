<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Color;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Permission;
use App\Models\Product;
use App\Models\Size;
use GuzzleHttp\Handler\Proxy;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{

    // default data pending
    public function index()
    {
        $permissions = Permission::where('user_id', Auth::id())->get();
        $orders = Order::where('status', 'p')->latest()->get();
        return view('admin.order.index', compact('orders'));
    }
    // on Process 
    public function onProcess()
    {
        $permissions = Permission::where('user_id', Auth::id())->get();
        $orders = Order::where('status', 'on')->latest()->get();
        return view('admin.order.onprocess', compact('orders'));
    }
    // on Process 
    public function ontheWay()
    {
        $permissions = Permission::where('user_id', Auth::id())->get();
        $orders = Order::where('status', 'w')->latest()->get();
        return view('admin.order.way', compact('orders'));
    }
  

    // sales report
    public function salesReport(Request $request){
        // $orders = Order::where('status', 'd')->get();
        // dd($request->all());
        
        $request->validate([
            'end_date' =>'date|after_or_equal:start_date'
        ]);

        $type = $request->type;
        $start_date = $request->start_date.' 00:00:00';
        $end_date = $request->end_date.' 23:59:59';
        $search = Order::with('orderDetails')->whereBetween('updated_at', [$start_date, $end_date])->where('status', 'd')->get();
        return view('admin.order.sales', compact('search','type'));
    }

  

    // order pending function
    public function pending($id)
    {
        Order::where('id', $id)->where('status', 'p')->update([
            'status' => 'on',
        ]);
        return redirect()->route('order.onProcess')->with('success', 'Order Confirm Successfully');
    }

    // order prodcess function
    public function process($id)
    {
        Order::where('id', $id)->where('status', 'on')->update([
            'status' => 'w',
        ]);
        return redirect()->route('order.way')->with('success', 'Order On the way');
    }

     // order prodcess function
     public function wayProcess($id)
     {
         Order::where('id', $id)->where('status', 'w')->update([
             'status' => 'd',
         ]);
         return redirect()->route('order.delivary')->with('success', 'Order Delivery Confirm Successfully');
     }

      // on delivery done 
      public function delivered()
      {
          $orders = Order::where('status', 'd')->latest()->get();
          return view('admin.order.delivered', compact('orders'));
      }
    // order details edit function
    public function orderDetails($id)
    {
        $colors = Color::all();
        $sizes = Size::all();
        $orderDetails = OrderDetails::where('order_id', $id)->get();
        return view('admin.order.details', compact('orderDetails', 'colors', 'sizes'));
    }

    // order cancel function
    public function cancel($id)
    {
        Order::where('id', $id)->update([
            'status' => 'p',
        ]);
        return redirect()->route('order.index')->with('success', 'Order Cancel Confirm Successfully Store Pending List');
    }

    // order print function
    public function orderPrint($id)
    {
        $orderDetails = OrderDetails::where('order_id', $id)->get();
        return view('admin.order.print', compact('orderDetails'));
    }

    public function orderEdit(Request $request, $id)
    {
        $order = OrderDetails::where('id', $id)->first();
        $order->quantity = $request->quantity;
        $order->color_id = $request->color_id;
        $order->size_id = $request->size_id;
        $product = Product::where('id', $order->product_id)->first();
        $order->total_price = (int)$request->quantity * (int)$product->price;
        $order->save();

        return back()->with('success', 'Order updated successfully');
    }
    public function prodcutOrderCancel($id)
    {
        OrderDetails::where('id', $id)->delete();
        return back()->with('success', 'Product Order Delete successfully');
    }
}
