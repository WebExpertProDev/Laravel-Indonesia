<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
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

const controller = '\App\Http\Controllers';

Route::get('/', function () {
if(Auth::check()){
    return view('index');
}
else
{
	return view('login');
	
}
})->name('index');

Route::get('login', controller . "\LoginController@showlogin")->name('login');
Route::post('login/submit', controller . "\LoginController@authenticate")->name('login-submit');
Route::get('user-list/register', controller . "\UserController@show")->name('user-list.register');
Route::post('user-list/stores', controller . "\UserController@store")->name('user-list.stores');
Route::group(['middleware' => 'auth'], function(){
Route::get('logout', controller . "\LoginController@logout")->name('logout');
Route::get('checklist', controller . "\ChecklistController@index")->name('checklist-index');
Route::post('checklist', controller . "\ChecklistController@store")->name('checklist-store');
Route::get('checklist/view', controller . "\ChecklistController@view")->name('checklist-view');
Route::resource('user-list', controller . "\UserController");

Route::get('user-list/password/{id}', controller . "\UserController@change_password")->name('user-list.password');
Route::post('user-list/password/{id}', controller . "\UserController@change_password_save")->name('user-list.password-store');
Route::resource('user-stat', controller . "\UserStatController");
Route::post('user-stat1', controller . "\UserStatController@user_stat_post")->name('user-stat1');
Route::post('user/chart', controller . "\UserStatController@getChart")->name('get_chart');


Route::resource('roles', controller . "\RoleController");

Route::get('roles/add', controller . "\RoleController@show")->name('roles.show')

;});
Route::get('details', function () {

	$ip = \Request::ip();
    $data = \Location::get($ip);
    dd($data);
   
});
