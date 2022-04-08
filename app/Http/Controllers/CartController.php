<?php

namespace App\Http\Controllers;

use Darryldecode\Cart\Cart;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class CartController extends Controller
{
    public function cartList()
    {
        $cartItems = \Cart::getContent();
        // dd($cartItems);
        return view('website.cart', compact('cartItems'));
    }

    public function addToCart(Request $request)
    {
        try {
            \Cart::add([
                'id' => $request->id,
                'name' => $request->name,
                'price' => $request->price,
                'quantity' => $request->quantity,
                'attributes' => array(
                    'image' => $request->image,
                )
            ]);
            session()->flash('cart', 'Add to Cart Successfully');
            return redirect()->back();
        } catch (\Throwable $th) {
            session()->flash('error', 'faild to added cart');
            return redirect()->back();
        }
    }

    public function buyToCart(Request $request)
    {
        try {
            \Cart::add([
                'id' => $request->id,
                'name' => $request->name,
                'price' => $request->price,
                'quantity' => $request->quantity,
                'attributes' => array(
                    'image' => $request->image,
                )
            ]);
            session()->flash('cart', 'Buy Now');

            return redirect()->route('checkout.user');
        } catch (\Throwable $th) {
            session()->flash('error', 'Faild to Buy');

            return redirect()->back();
        }
    }

    public function updateCart(Request $request)
    {
        \Cart::update(
            $request->id,
            [
                'quantity' => [
                    'relative' => false,
                    'value' => $request->quantity
                ],
            ]
        );

        session()->flash('update', 'Cart is Updated Successfully !');

        return redirect()->back();
    }

    public function removeCart(Request $request)
    {
        \Cart::remove($request->id);
        session()->flash('remove', 'Item Cart Remove Successfully !');

        return redirect()->route('cart.list');
    }

    public function clearAllCart()
    {
        \Cart::clear();

        session()->flash('success', 'All Item Cart Clear Successfully !');

        return redirect()->route('cart.list');
    }
}
