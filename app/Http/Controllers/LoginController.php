<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;
class LoginController extends Controller
{
    //
	
public function showlogin(){
	
	if(Auth::check())
		return redirect('/');
	
	return view("login");
	
}	
	
	 public function authenticate(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
			if(Auth::check() && Auth::user()->role->name =='employee')
            return redirect()->route('checklist-index');
			elseif(Auth::check() && Auth::user()->role->name =='admin')
			return redirect()->route('user-stat.index');
			else
			return redirect()->route('user-list.index');
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
			'password' =>'Password Doesnt Match.',
        ]);
    }
	
	public function logout(Request $request){
		Auth::logout();

    $request->session()->invalidate();

    $request->session()->regenerateToken();

    return redirect()->route('login');
		}
	
}
