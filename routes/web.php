<?php

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

Route::get('/', function () {
    return view('auth.login');
});


Route::get('/varifyaccount/{id?}', 'HomeController@Uservarify');
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/userprofile', 'HomeController@Userprofile')->name('userprofile');
Route::post('/profileupdate', 'HomeController@Profileupdate')->name('profileupdate');
Route::get('/listpost', 'Admin\PostController@Viewpost')->name('viewpost');
Route::get('/postlisting', 'Admin\PostController@Listpost')->name('listposting');
Route::get('/edit_post/{id?}', 'Admin\PostController@edit')->name('edit_post');
Route::post('/update_post/{id?}', 'Admin\PostController@update')->name('update_post');
Route::get('delete_post/{id?}', 'Admin\PostController@destroy')->name('delete');


Route::get('/clear-cache', function() {

   Artisan::call('cache:clear');
   Artisan::call('config:clear');
   Artisan::call('config:cache');
   Artisan::call('view:clear');

   return "Cleared!";

});


