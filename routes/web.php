<?php

use Illuminate\Support\Facades\Route;

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

Auth::routes();
//website routes start
Route::get('/', 'WebsiteController@index')->name('');
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

