<?php

use App\Http\Controllers\Admin\AccessoriesController;
use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\AdController;
use App\Http\Controllers\Api\TestController;
use App\Http\Controllers\Admin\AreaController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\PageController;
use App\Http\Controllers\Admin\SizeController;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\ColorController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\VideoController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\ContentController;
use App\Http\Controllers\Admin\CountryController;
use App\Http\Controllers\Admin\InvoiceController;
use App\Http\Controllers\Admin\PartnerController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\PagelistController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\ManagementController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\SubscriberController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Customer\CheckoutController;
use App\Http\Controllers\Admin\PhotoGalleryController;
use App\Http\Controllers\Admin\PublicMessageController;
use App\Http\Controllers\Admin\MessageSendingController;
use App\Http\Controllers\Customer\CustomerController as CustomerCustomerController;

// use GuzzleHttp\Middleware;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return 'DONE'; //Return anything
});



Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/product-details/{slug}', [HomeController::class, 'ProductDetails'])->name('product.details');
Route::get('/product-show/{id}', [HomeController::class, 'PopUpProduct'])->name('product.popup');
Route::get('/products', [HomeController::class, 'Products'])->name('productsList');
Route::get('/category/{slug}', [HomeController::class, 'CategoryWise'])->name('categoryWise.list');
Route::get('/SubCategory/{slug}', [HomeController::class, 'SubCategoryWise'])->name('SubCategoryWise.list');


// company profile route

Route::get('/about-us', [HomeController::class, 'aboutWebsite'])->name('about.website');
Route::get('/trams-and-condition', [HomeController::class, 'tramsCondition'])->name('trams.website');

// news and event
Route::get('/news-and-event', [HomeController::class, 'newsEvent'])->name('news.list');
Route::get('/photo-gallery', [HomeController::class, 'photoGallery'])->name('gallery.list');
Route::get('/accessories', [HomeController::class, 'Accessories'])->name('accessory.list');
Route::get('/news-and-event-details/{slug}', [HomeController::class, 'newsDetails'])->name('news.details');
// page list
Route::get('/contact', [HomeController::class, 'contact'])->name('web.contact');
Route::post('/contact-store', [PublicMessageController::class, 'contactStore'])->name('contact.Store');
// Subscriber store
Route::post('/subscriber-store', [SubscriberController::class, 'subscriberList'])->name('subscriber.Store');

// serarch route
Route::get('/get_suggestions/{k}', [HomeController::class, 'getSearchSuggestions']);
Route::get('/search', [HomeController::class, 'productSearch'])->name('search');


// User Login
Route::get('/customer', [CustomerCustomerController::class, 'customer'])->name('customer.login');
Route::post('/customer-auth', [CustomerCustomerController::class, 'AuthCheck'])->name('customer.auth');
Route::get('/customerPanel', [CustomerCustomerController::class, 'customerPanel'])->name('customer.panel');
Route::post('/customerStore', [CustomerCustomerController::class, 'customerStore'])->name('customerStore');
Route::put('/customer-Update/{customer}', [CustomerCustomerController::class, 'customerUpdate'])->name('customerUpdate');
Route::put('/customer-password-update', [CustomerCustomerController::class, 'customerPasswordUpdate'])->name('customerPasswordUpdate');
Route::get('/customerLogout', [CustomerCustomerController::class, 'logout'])->name('customerLogout');

// customer invoice
Route::get('/invoice-customer/{id}', [CustomerCustomerController::class, 'invoice'])->name('invoice.customer');

// cart
Route::get('/cart', [CartController::class, 'cartList'])->name('cart.list');
Route::post('cart', [CartController::class, 'addToCart'])->name('cart.store');
Route::post('cart-buy', [CartController::class, 'buyToCart'])->name('cart.buy');
Route::post('update-cart', [CartController::class, 'updateCart'])->name('cart.update');
Route::post('remove', [CartController::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [CartController::class, 'clearAllCart'])->name('cart.clear');

// Checkout route

Route::get('/checkout', [CheckoutController::class, 'checkout'])->name('checkout.user');
Route::post('/orderStore', [CheckoutController::class, 'orderStore'])->name('orderStore');


// admin route
Route::get('/login',[AuthController::class, 'loginShow'])->name('login');


Route::post('/login',[AuthController::class, 'authCheck'])->name('login.check');

Route::group(['middleware' => ['auth']] , function(){
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');

    Route::get('/invoice/{id}',[InvoiceController::class, 'invoice'])->name('invoice.admin');
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('admin.index');
    // customer prefix
    Route::prefix('customer')->group(function(){
        //customer route
            Route::get('customer',[CustomerController::class,'index'])->name('customer')->middleware('check');
            Route::get('customer/all',[CustomerController::class,'allData'])->name('customer.all')->middleware('check');
            Route::post('customer/store',[CustomerController::class,'store'])->name('customer.store');
            Route::get('customer/edit/{id}',[CustomerController::class,'edit'])->name('customer.edit')->middleware('check');
            Route::post('customer/update/',[CustomerController::class,'update'])->name('customer.update');
            Route::get('customer/delete/{id}',[CustomerController::class,'destroy'])->name('customer.delete');
            Route::get('/pending/customer',[CustomerController::class,'pending'])->name('customer.pending')->middleware('check');
            Route::get('/customer-list',[CustomerController::class,'customerList'])->name('customer.list')->middleware('check');
            Route::get('/active/customer/{id}',[CustomerController::class,'customerActive'])->name('customer.active');
            Route::get('/deactive/customer/{id}',[CustomerController::class,'customerDeactive'])->name('customer.deactive');
       
    });

    // Order Route
    Route::get('/order',[OrderController::class,'index'])->name('order.index')->middleware('check');
    Route::get('/onprocess',[OrderController::class,'onProcess'])->name('order.onProcess')->middleware('check');
    Route::get('/order-way',[OrderController::class,'ontheWay'])->name('order.way')->middleware('check');
    Route::get('/delivered',[OrderController::class,'delivered'])->name('order.delivary')->middleware('check');
    Route::get('/sales-report',[OrderController::class,'salesReport'])->name('sales.report')->middleware('check');
    Route::get('/sales-search',[OrderController::class,'searchSales'])->name('search.sales');
    
    //   order process route
    Route::get('/order/pending/{id}',[OrderController::class,'pending'])->name('order.pending');
    Route::get('/order/process/{id}',[OrderController::class,'process'])->name('order.process');
    Route::get('/order/way/{id}',[OrderController::class,'wayProcess'])->name('order.wayProcess');
    Route::get('/order/details/{id}',[OrderController::class,'orderDetails'])->name('order.details.edit')->middleware('check');
    Route::get('/order/print/{id}',[OrderController::class,'orderPrint'])->name('order.print')->middleware('check');
    Route::get('/order/cancel/{id}',[OrderController::class,'cancel'])->name('order.cancel');
    Route::post('/order/edit/{id}',[OrderController::class,'orderEdit'])->name('order.edit')->middleware('check');
    Route::get('/product/order/cancel/{id}',[OrderController::class,'prodcutOrderCancel'])->name('product.order.cancel');
    

    
    Route::prefix('product')->group(function(){
        // category route 

        
        // product prefix
        // Route::resource('/category', CategoryController::class)->except('create', 'show');

        // category route
        Route::get('/category',[CategoryController::class,'index'])->name('category.index')->middleware('check');
        Route::post('/category/store',[CategoryController::class,'store'])->name('category.store');
        Route::get('/category/edit/{slug}',[CategoryController::class,'edit'])->name('category.edit')->middleware('check');
        Route::put('/category/update/{id}',[CategoryController::class,'update'])->name('category.update');
        Route::delete('/category/{category}',[CategoryController::class,'destroy'])->name('category.destroy');

        Route::get('/category-list', [CategoryController::class, 'list'])->name('category.list')->middleware('check');

        // subcategory route
        // Route::resource('/subcategory', SubcategoryController::class)->except('create', 'show')->middleware('check');
         // category route
         Route::get('/subcategory',[SubcategoryController::class,'index'])->name('subcategory.index')->middleware('check');
         Route::post('/subcategory/store',[SubcategoryController::class,'store'])->name('subcategory.store');
         Route::get('/subcategory/edit/{id}',[SubcategoryController::class,'edit'])->name('subcategory.edit')->middleware('check');
         Route::put('/subcategory/update/{id}',[SubcategoryController::class,'update'])->name('subcategory.update');
         Route::delete('/subcategory/{id}',[SubcategoryController::class,'destroy'])->name('subcategory.destroy');

        Route::get('/subcategory-list', [SubcategoryController::class, 'list'])->name('subcategory.list')->middleware('check');
        // product route dfsdfs
        Route::get('/product-create', [ProductController::class, 'create'])->name('product.create')->middleware('check');
        Route::post('/product-store', [ProductController::class, 'store'])->name('product.store');

        Route::get('/subcategory/list/{id}', [ProductController::class, 'getSubcategory']);

        Route::get('/product', [ProductController::class, 'index'])->name('product.index');
        Route::get('/product/edit/{slug}', [ProductController::class, 'edit'])->name('product.edit')->middleware('check');
        // update
        Route::put('/remove-other-image/{id}', [ProductController::class, 'update'])->name('product.update');
        // remove other image
        Route::delete('/remove-other-image/{id}', [ProductController::class, 'removeImage'])->name('remove.image');
        Route::delete('/product-delete/{id}', [ProductController::class, 'destroy'])->name('product.destroy');
        
        // color route
        Route::get('/color',[ColorController::class,'index'])->name('color.index')->middleware('check');
        Route::post('/color/store',[ColorController::class,'store'])->name('color.store');
        Route::get('/color/edit/{id}',[ColorController::class,'edit'])->name('color.edit')->middleware('check');
        Route::put('/color/update/{id}',[ColorController::class,'update'])->name('color.update');
        Route::delete('/color/{id}',[ColorController::class,'destroy'])->name('color.destroy');
        // size route
        Route::get('/size',[SizeController::class,'index'])->name('size.index')->middleware('check');
        Route::post('/size/store',[SizeController::class,'store'])->name('size.store');
        Route::get('/size/edit/{id}',[SizeController::class,'edit'])->name('size.edit')->middleware('check');
        Route::put('/size/update/{id}',[SizeController::class,'update'])->name('size.update');
        Route::delete('/size/{id}',[SizeController::class,'destroy'])->name('size.destroy');

        //Accessories Routes
        Route::get('/accessories',[AccessoriesController::class,'index'])->name('accessories.index')->middleware('check');
        Route::post('/accessories/store',[AccessoriesController::class,'store'])->name('accessories.store');
        Route::get('/accessories/edit/{id}',[AccessoriesController::class,'edit'])->name('accessories.edit')->middleware('check');
        Route::put('/accessories/update/{id}',[AccessoriesController::class,'update'])->name('accessories.update');
        Route::delete('/accessories/{id}',[AccessoriesController::class,'destroy'])->name('accessories.destroy');

    });
    // Website related all route here
    Route::prefix('website-content')->group(function(){
        Route::get('/welcome',[ContentController::class,'welcome'])->name('welcome')->middleware('check');
        Route::post('/welcome/update/{company}',[ContentController::class,'welcomeUpdate'])->name('welcome.update');
        Route::get('/company/service',[ContentController::class,'service'])->name('company.service')->middleware('check');

        // banner route
        Route::get('/banner',[BannerController::class,'index'])->name('company.banner')->middleware('check');
        Route::get('/banner/allDtata',[BannerController::class,'allData'])->name('banner.all')->middleware('check');
        Route::post('/banner/store',[BannerController::class,'store'])->name('banner.store');
        Route::get('/banner/edit/{id}',[BannerController::class,'edit'])->name('banner.edit')->middleware('check');
        Route::post('/banner/update',[BannerController::class,'update'])->name('banner.update');
        Route::get('/banner/delete/{id}',[BannerController::class,'destroy'])->name('banner.delete');

        // about us route
        Route::get('/about-us',[ContentController::class,'aboutUs'])->name('about.us')->middleware('check');
        Route::post('/about/update/{company}',[ContentController::class,'aboutUpdate'])->name('about.update');
        
        // mission vission route
        Route::get('/mission/vision',[ContentController::class,'mission'])->name('mission')->middleware('check');
        Route::post('/mission/vision/update',[ContentController::class,'missionUpdate'])->name('mission.update');
        
        // refund route
        Route::get('/refund',[ContentController::class,'refund'])->name('refund')->middleware('check');
        Route::post('/refund/update',[ContentController::class,'refundUpdate'])->name('refund.update');
        
        // faq route
        Route::get('/faq',[ContentController::class,'faq'])->name('faq')->middleware('check');
        Route::post('/faq/update',[ContentController::class,'faqUpdate'])->name('faq.update');

    
        // video route resource
        Route::resource('/video', VideoController::class)->except('create', 'show');
        
        // photo gallery route resource
        Route::resource('/photo-gallery', PhotoGalleryController::class)->except('create', 'show'); 
        
        // service
        Route::get('/service',[ServiceController::class,'index'])->name('service.index')->middleware('check');
        Route::get('/service/edit/{id}',[ServiceController::class,'edit'])->name('service.edit')->middleware('check');
        Route::post('/service-store',[ServiceController::class,'store'])->name('service.store');
        Route::post('/service/update/{id}',[ServiceController::class,'update'])->name('service.update');
        Route::post('/service/delete/{id}',[ServiceController::class,'destroy'])->name('service.delete');
    
        // Management route resource
        Route::get('/management',[ManagementController::class,'index'])->name('management.index')->middleware('check');
        Route::post('/management/store',[ManagementController::class,'store'])->name('management.store');
        Route::get('/management/edit/{management}',[ManagementController::class,'edit'])->name('management.edit')->middleware('check');
        Route::put('/management/update/{management}',[ManagementController::class,'update'])->name('management.update');
        Route::delete('/management/{management}',[ManagementController::class,'destroy'])->name('management.destroy');

        // team  route resource
        Route::get('/team',[TeamController::class,'index'])->name('team.index')->middleware('check');
        Route::post('/team/store',[TeamController::class,'store'])->name('team.store');
        Route::get('/team/edit/{team}',[TeamController::class,'edit'])->name('team.edit')->middleware('check');
        Route::put('/team/update/{team}',[TeamController::class,'update'])->name('team.update');
        Route::delete('/team/{team}',[TeamController::class,'destroy'])->name('team.destroy');

        //AdController Route
        Route::get('/ad',[AdController::class,'index'])->name('ad.index');
        Route::post('/ad/store',[AdController::class,'store'])->name('ad.store');
        Route::get('/ad/edit/{team}',[AdController::class,'edit'])->name('ad.edit')->middleware('check');
        Route::put('/ad/update/{team}',[AdController::class,'update'])->name('ad.update');
        Route::delete('/ad/{team}',[AdController::class,'destroy'])->name('ad.destroy');
        Route::get('/ad/active/{id}',[AdController::class,'active'])->name('ad.active');

         //Partner Route
        Route::get('/partner',[PartnerController::class,'index'])->name('partner.index')->middleware('check');
        Route::post('/partner/store',[PartnerController::class,'store'])->name('partner.store');
        Route::get('/partner/edit/{id}',[PartnerController::class,'edit'])->name('partner.edit')->middleware('check');
        Route::put('/partner/update/{id}',[PartnerController::class,'update'])->name('partner.update');
        Route::delete('/partner/{id}',[PartnerController::class,'destroy'])->name('partner.destroy');
         
        //Blog Route
        Route::get('/news-and-event',[BlogController::class,'index'])->name('blog.index')->middleware('check');
        Route::post('/blog/store',[BlogController::class,'store'])->name('blog.store');
        Route::get('/news-and-event/{id}',[BlogController::class,'edit'])->name('blog.edit')->middleware('check');
        Route::put('/blog/update/{id}',[BlogController::class,'update'])->name('blog.update');
        Route::delete('/blog/{id}',[BlogController::class,'destroy'])->name('blog.destroy');

    });
        // setting all route here
    Route::prefix('setting')->group(function(){


            // company profile 
            Route::get('company-profile', [ContentController::class, 'edit'])->name('profile.edit');
            Route::put('company-profile/{company}', [ContentController::class, 'update'])->name('profile.update');

            //country route
            Route::resource('/country',CountryController::class)->middleware('check');
            //area route
            Route::get('/area',[AreaController::class,'index'])->name('area.index')->middleware('check');
            Route::post('/area/store',[AreaController::class,'store'])->name('area.store');
            Route::get('/area/edit/{id}',[AreaController::class,'edit'])->name('area.edit')->middleware('check');
            Route::put('/area/update/{id}',[AreaController::class,'update'])->name('area.update');
            Route::delete('/area/{id}',[AreaController::class,'destroy'])->name('area.destroy');

            Route::get('/page/list',[PagelistController::class,'index'])->name('page.list')->middleware('check');
            Route::post('/page/active',[PagelistController::class,'active'])->name('page.active');
            
            Route::get('/sms/sending',[MessageSendingController::class,'smsSending'])->name('sms.sending')->middleware('check');
            Route::get('/sms/all',[MessageSendingController::class,'sms'])->name('sms')->middleware('check');

            //pages route
            
            Route::get('/page',[PageController::class,'index'])->name('page.index')->middleware('check');
            Route::post('/page/store',[PageController::class,'store'])->name('page.store');
            Route::get('/permission',[PermissionController::class,'index'])->name('permission.index')->middleware('check');
            Route::get('/permission/edit/{id}', [PermissionController::class, 'permission'])->name('permission.edit')->middleware('check');
            Route::post('/permission/store/{id}', [PermissionController::class, 'store'])->name('permission.store');
             // Admin Register
            Route::get('user-create', [UserController::class, 'register'])->name('user.index')->middleware('check');
            Route::post('user-store', [UserController::class, 'createUser'])->name('user.store');
            Route::get('user-edit/{id}', [UserController::class, 'edit'])->name('user.edit')->middleware('check');
            Route::put('user-update/{id}', [UserController::class, 'updateUser'])->name('user.update');
            Route::delete('user-delete/{id}', [UserController::class, 'deleteUser'])->name('user.destroy')->middleware('check');

             // change Password
             Route::get('change-passowrd', [UserController::class, 'changePassword'])->name('admin.password');
             Route::put('update-admin-passowrd', [UserController::class, 'updatePassword'])->name('update.adminPassword');
    });

        // subscriber route 
        Route::get('/subscriber',[SubscriberController::class,'index'])->name('subscriber.list')->middleware('check');
        // Public message route 
        Route::get('/feedback',[PublicMessageController::class,'index'])->name('public.sms')->middleware('check');

});

   

