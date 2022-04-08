<?php

namespace App\Http\Controllers;

use App\Models\Accessories;
use App\Models\Ad;
use App\Models\Banner;
use App\Models\Blog;
use App\Models\Product;
use App\Models\Category;
use App\Models\Management;
use App\Models\Partner;
use App\Models\PhotoGallery;
use App\Models\Service;
use App\Models\SubCategory;
use App\Models\Team;
use App\Models\VideoGallery;
use Illuminate\Http\Request;
use PharIo\Manifest\Manifest;

class HomeController extends Controller
{
    public function index()
    {
        $banner = Banner::latest()->get();
        $category = Category::latest()->take(9)->get();
        $featured = Product::where('is_featured', '1')->inRandomOrder()->limit(20)->get();
        $hot = Product::where('is_featured', '1')->where('is_offer', 1)->inRandomOrder()->limit(20)->get();
        $newArrival = Product::latest()->take(20)->get();
        $upcoming = Product::where('is_upcoming', '1')->latest()->take(20)->get();
        $leftAds = Ad::where('status', 'a')->where('position', 'Left-(245*320)')->inRandomOrder()->limit(1)->get();
        $rightAds = Ad::where('status', 'a')->where('position', 'Right-(335*320)')->inRandomOrder()->limit(1)->get();
        $centerAds = Ad::where('status', 'a')->where('position', 'Center-(425*145)')->inRandomOrder()->limit(2)->get();
        $centerdown = Ad::where('status', 'a')->where('position', 'Center-(450*150)')->inRandomOrder()->limit(2)->get();
        $centerBigAds = Ad::where('status', 'a')->where('position', 'Full-(785*180)')->inRandomOrder()->limit(1)->get();
        $partner = Partner::latest()->get();
        $news = Blog::latest()->get();
        $accessories = Accessories::latest()->get();
        $accessoryfronts = Accessories::latest()->limit(8)->get();
        $team = Team::latest()->get();
        return view('website.index', compact('banner', 'category', 'featured', 'hot', 'newArrival', 'leftAds', 'rightAds', 'centerAds', 'centerBigAds', 'partner', 'news', 'centerdown', 'team', 'upcoming', 'accessories', 'accessoryfronts'));
    }


    public function ProductDetails($slug)
    {
        $category = Category::inRandomOrder()->limit(5)->get();
        $product = Product::where('slug', $slug)->first();
        $similar  = Product::where('category_id', $product->category_id)->get();
        $featured = Product::where('is_featured', '1')->inRandomOrder()->limit(30)->get();
        $rightAds = Ad::where('status', 'a')->where('position', 'Left-(245*320)')->inRandomOrder()->limit(1)->get();
        return view('website.productDetails', compact('product', 'similar', 'featured', 'rightAds', 'category'));
    }


    // product details popup
    public function PopUpProduct($id)
    {
        $product = Product::with(['category', 'productImage'])->where('id', $id)->first();
        //  $product::with()->productImage['otherImage'] = asset($product->otherImage);
        $product['otherImage'] = $product->product_image;

        $product['image'] = asset('uploads/product/' . $product->image);
        return response()->json($product);
    }



    public function CategoryWise($slug)
    {
        $centerBigAds = Ad::where('status', 'a')->where('position', 'Full-(785*180)')->inRandomOrder()->limit(1)->get();
        $category_list = Category::where('slug', $slug)->first();
        $categories = Category::all();
        $category_wise_product = $category_list->product()->paginate(5);
        return view('website.category', compact('categories', 'category_wise_product', 'centerBigAds', 'category_list'));
    }

    public function Products()
    {
        $category = Category::latest()->get();
        $product = Product::inRandomOrder()->paginate(15);
        $centerBigAds = Ad::where('status', 'a')->where('position', 'Full-(785*180)')->inRandomOrder()->limit(1)->get();
        $leftAds = Ad::where('status', 'a')->where('position', 'Left-(245*320)')->inRandomOrder()->limit(1)->get();
        return view('website.productsList', compact('product', 'category', 'centerBigAds', 'leftAds'));
    }


    public function SubCategoryWise($slug)
    {
        $subcategory = SubCategory::where('slug', $slug)->first();
        $categories = Category::all();
        $subcategory_wise_product = $subcategory->product()->paginate(5);
        $centerBigAds = Ad::where('status', 'a')->where('position', 'Full-(785*180)')->inRandomOrder()->limit(1)->get();
        $leftAds = Ad::where('status', 'a')->where('position', '1')->inRandomOrder()->limit(1)->get();
        return view('website.subcategory', compact('subcategory', 'categories', 'subcategory_wise_product', 'centerBigAds', 'leftAds'));
    }

    public function newsEvent()
    {
        $news = Blog::latest()->get();
        return view('website.newsEvent', compact('news'));
    }
    public function photoGallery()
    {
        $gallery = PhotoGallery::latest()->get();
        $videogallery = VideoGallery::latest()->get();
        return view('website.gallery', compact('gallery', 'videogallery'));
    }

    public function Accessories()
    {
        $accessories = Accessories::latest()->get();
        return view('website.accessories', compact('accessories'));
    }

    public function newsDetails($slug)
    {
        $category = Category::inRandomOrder()->limit(5)->get();
        $newArrival = Product::inRandomOrder()->limit(5)->get();
        $news = Blog::where('slug', $slug)->first();
        return view('website.newsDetails', compact('news', 'category', 'newArrival'));
    }
    public function contact()
    {
        return view('website.contact');
    }


    public function aboutWebsite()
    {
        $service = Service::latest()->get();
        $management = Management::all();
        return view('website.about', compact('management', 'service'));
    }
    public function tramsCondition()
    {
        return view('website.trams_condition');
    }

    // search
    public function getSearchSuggestions($keyword)
    {
        $product = Product::select('name')
            ->where('name', 'like', "%$keyword%")
            ->get()->toArray();

        $category = Category::select('name as name')
            ->where('name', 'like', "%$keyword%")
            ->get()->toArray();

        $subcategory = SubCategory::select('name as name')
            ->where('name', 'like', "%$keyword%")
            ->get()->toArray();

        $mergedArray = array_merge($product, $category, $subcategory);

        $search_results = [];

        foreach ($mergedArray as $sr) {
            $search_results[] = $sr['name'];
        }

        return response()->json($search_results);
    }

    public function productSearch()
    {
        if (request()->query('q')) {

            $categories = Category::all();
            $centerBigAds = Ad::where('status', 'a')->where('position', 'Full-(785*180)')->take(1)->get();
            $leftAds = Ad::where('status', 'a')->where('position', '1')->latest()->take(1)->get();

            $keyword = request()->query('q');
            $search_result = Product::Where('name', 'like', "%$keyword%")->paginate(16);

            return view('website.search', compact('search_result', 'keyword', 'leftAds', 'centerBigAds', 'categories'));
        }

        return redirect()->back();
    }
}
