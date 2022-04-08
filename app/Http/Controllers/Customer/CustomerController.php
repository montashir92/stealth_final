<?php

namespace App\Http\Controllers\Customer;

use App\Models\Order;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class CustomerController extends Controller
{
    public function customer()
    {
        return view('website.customer.login');
    }

    public function AuthCheck(Request $request)
    {
        $request->validate([
            'userphone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:11',
            'password' => 'required',
        ]);
        $credential = $request->only('password');
        $credential['phone'] = $request->userphone;

        if (Auth::guard('customer')->attempt($credential)) {
            return redirect()->route('customer.panel');
        } else {
            Session::flash('faild', 'someting went wrong');
            return redirect()->back();
        }
    }

    public function customerStore(Request $request)
    {
        $request->validate([
            'name' => 'required|min:3|max:100',
            'phone' => 'required|unique:customers|regex:/^01[13-9][\d]{8}$/|min:11',
            'password' => 'required|string|min:1',
            'address' => 'required',
            'ip_address' => 'max:15'
        ]);

        $customer = new Customer();
        $code = 'C' . $this->generateCode('Customer');
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->address = $request->address;
        $customer->username = $request->phone;
        $customer->password = Hash::make($request->password);
        $customer->ip_address = $request->ip();
        $customer->code = $code;
        $customer->save_by = $request->ip();
        $customer->updated_by = $request->ip();
        $customer->save();

        if ($customer) {
            Session::flash('status', 'success');
            Auth::guard('customer')->login($customer);
            return redirect()->intended('/customerPanel');
        } else {
            Session::flash('errors', 'something went wrong');
        }
    }


    public function customerUpdate(Request $request, Customer $customer)
    {
        $request->validate([
            'name' => 'required|min:3|max:100',
            'email' => 'max:50',
            'address' => 'required',
            'profile_picture' => 'Image|max:1000|mimes:jpg,png,jpeg,bmp',
            'ip_address' => 'max:15'
        ]);

        $profile_Pic = ' ';
        if ($request->hasFile('profile_picture')) {
            if (!empty($customer->profile_picture) && file_exists($customer->profile_picture)) {
                unlink(($customer->profile_picture));
            }
            $profile_Pic = $this->imageUpload($request, 'profile_picture', 'uploads/customer');
        } else {
            $profile_Pic = $customer->profile_picture;
        }
        // dd($profile_Pic);

        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->address = $request->address;
        $customer->profile_picture = $profile_Pic;
        $customer->ip_address = $request->ip();
        $customer->updated_by = Auth::guard('customer')->user()->id;
        $customer->save();
        if ($customer) {
            Session::flash('success', 'Profile Update Successfully');
            return redirect()->back();
        } else {
            Session::flash('error', 'Profile Update fail');
            return back();
        }
    }

    public function customerPasswordUpdate(Request $request)
    {
        $request->validate([
            'currentPass' => 'required',
            'password' => 'required|confirmed|min:4',
        ]);
        $currentPassword = Auth::guard('customer')->user()->password;
        if (Hash::check($request->currentPass, $currentPassword)) {
            if (!Hash::check($request->password, $currentPassword)) {
                $customer = Customer::find(Auth::guard('customer')->id());
                $customer->password = HasH::make($request->password);
                $customer->save();
                if ($customer) {
                    Session::flash('success', 'Password Update Successfully');
                    Auth::guard('customer')->logout();
                    return back();
                } else {
                    Session::flash('error', 'Current password not match');
                    return back();
                }
            } else {
                Session::flash('error', 'Same as Current password');
                return back();
            }
        } else {
            Session::flash('error', '!Current password not match');
            return back();
        }
    }


    public function logout()
    {
        Auth::guard('customer')->logout();
        return redirect()->route('home');
    }

    public function customerPanel()
    {
        if (Auth::guard('customer')->check()) {
            $order = Order::where('customer_id', Auth::guard('customer')->user()->id)->latest()->get();
            return view('website.customer.dashboard', compact('order'));
        } else {
            return redirect()->route('home');
        }
    }


    public function invoice($id)
    {
        // return 'ok';
        if (Auth::guard('customer')->check()) {
            $order = Order::where('id', $id)->first();
            return view('website.customer.customer_invoice', compact('order'));
        } else {
            return redirect()->route('home');
        }
    }
}
