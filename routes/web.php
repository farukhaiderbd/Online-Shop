<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SslCommerzPaymentController;
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
/*
Route::get('/', function () {
    return view('welcome');
});
*/

// Route::get('/', function () {
//     return view('welcome');
// });


Auth::routes();

// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END

  // Password Reset Routes...
  Route::get('admin-password/forget', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
  Route::post('admin-password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
  Route::get('admin-password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('admin.password.reset');
  Route::get('admin-password/reset', 'Auth\ResetPasswordController@reset');
  Route::get('/admin/Change/Password','AdminController@ChangePassword')->name('admin.password.change');
  Route::post('/admin/password/update','AdminController@Update_pass')->name('admin.password.update');

//website routes start
Route::get('/', 'WebsiteController@index')->name('');
Route::get('customer/login', 'WebsiteController@login')->name('');
Route::get('customer/home', 'CustomerController@home')->name('customer_dashboard');
Route::get('cart/product/view/{id}','CartController@ViewProduct');
Route::get('/cart','CartController@showcart')->name('product_cart')->middleware(['auth','customer']);
Route::get('/checkout','CartController@checkout')->name('product_checkout');
Route::post('/apply/coupon','CartController@applycoupon')->name('apply.coupon');
Route::get('/remove/coupon','CartController@removecoupon')->name('coupon.remove');
Route::get('/cart/remove/{id}','CartController@cartremove')->name('product_cart_remove');
Route::post('/cart/update','CartController@UpdateCart')->name('product_cart_update');
Route::post('insert/into/cart/','CartController@InsertCart')->name('insert.into.cart');

Route::get('payment/page/','CheckoutController@PymentPage')->name('payment.step');

//payment methods
Route::post('payment/process/','PaymentController@payment')->name('payment.process');
Route::post('user/stripe/charge/','PaymentController@STripeCharge')->name('stripe.charge');

Route::get('success/list/','PaymentController@SuccessList')->name('success.orderlist');
Route::get('request/return/{id}','PaymentController@RequestReturn');
Route::get('admin/pending-order','OrderController@pendingorder')->name('pendding_order');
Route::get('admin/processing-order','OrderController@processingorder')->name('processing_order');
Route::get('admin/order/view/{id}','OrderController@orderview')->name('order_view');

Route::get('admin/order/payment-accept/{id}','OrderController@paymentaccept')->name('order_payment_accept');
Route::get('admin/order/payment-cancle/{id}','OrderController@paymentcancle')->name('order_payment_cancle');
Route::get('admin/order/processing/{id}','OrderController@paymentprocessing')->name('order_payment_processing');
Route::get('admin/order/done/{id}','OrderController@paymentdone')->name('order_payment_done');

// Rout::get('admin/pending-order','OrderController@pendingorder')->name('pendding_order');
// Rout::get('admin/pending-order','OrderController@pendingorder')->name('pendding_order');
//admin panel routes start
Route::get('/home', 'HomeController@index')->name('home');
Route::get('admin', 'AdminController@index')->name('');
Route::get('admin/access', 'AdminController@access')->name('');

Route::get('admin/user', 'UserController@index')->name('');
Route::get('admin/user/add', 'UserController@add')->name('');
Route::get('admin/user/view/{id}', 'UserController@view')->name('');
Route::post('admin/user/submit', 'UserController@insert')->name('');

Route::get('admin/banner', 'BannerController@index')->name('');
Route::get('admin/banner/add', 'BannerController@add')->name('');
Route::get('admin/banner/edit/{slug}', 'BannerController@edit')->name('');
Route::get('admin/banner/view/{slug}', 'BannerController@view')->name('');
Route::post('admin/banner/submit', 'BannerController@insert')->name('');
Route::post('admin/banner/update', 'BannerController@update')->name('');
Route::get('admin/banner/softdelete/{slug}', 'BannerController@softdelete')->name('');

Route::get('admin/general/basic', 'GeneralController@basic')->name('');
Route::post('admin/general/basic/update', 'GeneralController@update_basic')->name('');
Route::get('admin/general/social/media', 'GeneralController@social')->name('');
Route::post('admin/general/social/media/update', 'GeneralController@update_social')->name('');
Route::get('admin/general/contact', 'GeneralController@contact')->name('');
Route::post('admin/general/contact/update', 'GeneralController@update_contact')->name('');

Route::group(['prefix' => 'admin'], function () {
Route::get('categories','CategoryController@index')->name('all_category');
Route::get('category/create','CategoryController@create')->name('create_category');
Route::post('category/store','CategoryController@store')->name('store_category');
Route::get('category/edit/{slug}','CategoryController@edit')->name('edit_category');
Route::post('category/update','CategoryController@update')->name('update_category');
Route::post('category/softdelete/','CategoryController@softdelete')->name('softdelete_category');
Route::get('category/delete/{id}','CategoryController@delete')->name('delete_category');
});

Route::group(['prefix' => 'admin'], function () {
Route::get('subcategories','SubCategoryController@index')->name('all_subcategory');
Route::get('sub-category/create','SubCategoryController@create')->name('create_subcategory');
Route::post('sub-category/store','SubCategoryController@store')->name('store_subcategory');
Route::get('sub-category/edit/{slug}','SubCategoryController@edit')->name('edit_subcategory');
Route::post('sub-category/update','SubCategoryController@update')->name('update_subcategory');
Route::post('sub-category/softdelete/','SubCategoryController@softdelete')->name('softdelete_subcategory');
Route::get('sub-category/delete/{id}','SubCategoryController@delete')->name('delete_subcategory');
});

Route::group(['prefix' => 'admin'], function () {
Route::get('childcategories','ChildCategoryController@index')->name('all_childsubcategory');
Route::get('child-category/create','ChildSubCategoryController@create')->name('create_childsubcategory');
Route::post('child-category/store','ChildSubCategoryController@store')->name('store_childsubcategory');
Route::get('child-category/edit/{slug}','ChildSubCategoryController@edit')->name('edit_childsubcategory');
Route::post('child-category/update','ChildSubCategoryController@update')->name('update_childsubcategory');
Route::post('child-category/softdelete/','ChildSubCategoryController@softdelete')->name('softdelete_childsubcategory');
Route::get('child-category/delete/{id}','ChildSubCategoryController@delete')->name('delete_childsubcategory');
});

Route::group(['prefix' => 'admin'], function () {
    Route::get('products','ProductController@index')->name('all_product');
    Route::get('product/create','ProductController@create')->name('create_product');
    Route::post('product/store','ProductController@store')->name('store_product');
    Route::get('product/edit/{id}','ProductController@edit')->name('edit_product');
    Route::get('product/view/{id}','ProductController@view')->name('view_product');
    Route::post('product/update','ProductController@update')->name('update_product');
    Route::post('product/softdelete/','ProductController@softdelete')->name('softdelete_product');
    Route::get('product/delete/{id}','ProductController@delete')->name('delete_product');
    });
Route::get('admin/get/subcategory/{id}','ProductController@getsubcategory');

