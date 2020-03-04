<?php

// Route::get('/', function () {
//     return view('home');
// });

Route::get('/','UploadsController@home')->middleware('auth');

Route::post('/','UploadsController@storeUpload');

// Route::get('upload', function () {
//     return view('upload');
// });

Route::get('upload','UploadsController@pageUpload')->middleware('auth');

Route::get('upload/success','UploadsController@uploadSuccess');

Route::get('privacy','UploadsController@home');
Route::get('terms','UploadsController@home');

Route::get('upload/success/{slug}','UploadsController@viewSuccess');

Route::get('{slug}', 'UploadsController@viewUpload')->name('slug');

Auth::routes();

Route::get('user/login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('user/login', 'Auth\LoginController@login');
Route::post('user/logout', 'Auth\LoginController@logout')->name('logout');

Route::get('user/register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('user/register', 'Auth\RegisterController@register');

Route::get('user/panel','UsersController@userPanel')->middleware('auth');
Route::get('user/files','UsersController@userFiles')->middleware('auth');
Route::get('user/profile','UsersController@userProfile')->middleware('auth');
Route::post('user/update','UsersController@updateProfile')->name('updateProfile');

Route::get('user/file/edit/{id}','UsersController@editFile')->middleware('auth');
Route::post('user/file/update/{id}', 'UsersController@fileUpdate')->middleware('auth');

Route::get('user/file/delete/{id}', ['uses' => 'UsersController@destroyFile'])->middleware('auth');

Route::get('search/files','UploadsController@cariFiles');

Route::get('clear/cache', function() {
    Artisan::call('cache:clear');
    return redirect('/');
});