<?php

namespace App\Http\Controllers\Admin;

use App\Models\Accessories;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AccessoriesController extends Controller
{
    
    public function index()
    {
        $accessories = Accessories::latest()->get();
        return view('admin.accessories.index', compact('accessories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $request->validate([
            'name' => 'required|string|max:100',
            'image' => 'required|Image|mimes:jpg,png,jpeg,bmp'
        ]);
        try {
            $accessories = new Accessories();
            $accessories->name = $request->name;
            $accessories->image = $this->imageUpload($request, 'image', 'uploads/accessories') ?? '';
            $accessories->save_by = 1;
            $accessories->ip_address = $request->ip();
            $accessories->save();
            return back();
        } catch (\Throwable $th) {
            Session::flash('errors', 'something went wrong');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $accessory = Accessories::find($id);
        return view('admin.accessories.edit', compact('accessory'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $request->validate([
        //     'name' => 'required|string|max:100',
        //     'image' => 'Image|mimes:jpg,png,jpeg,bmp'
        // ]);
        
            $accessories = Accessories::find($id);

            $photoAccessory = '';
            if ($request->hasFile('image')) {
                if (!empty($accessories->image) && file_exists($accessories->image)) {
                    unlink($accessories->image);
                }
                $photoAccessory = $this->imageUpload($request, 'image', 'uploads/accessories');
            } else {
                $photoAccessory = $accessories->image;
            }
            $accessories->name = $request->name;
            $accessories->image = $photoAccessory;
            $accessories->update_by = Auth::user()->id;
            $accessories->ip_address = $request->ip();
            $accessories->save();
            if ($accessories) {
                Session::flash('success', 'Accessories Update Successfully');
                return redirect()->back();
            } else {
                Session::flash('errors', ' something went wrong');
            }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $accessory = Accessories::find($id);
        if (!empty($accessory->image) && file_exists($accessory->image)) {
            unlink($accessory->image);
        }
        $accessory->delete();
        if ($accessory) {
            Session::flash('info', 'delete successfully');
            return redirect()->back();
        } else {
            Session::flash('errors', 'something went wrong');
            return redirect()->back();
        }
    }
}
