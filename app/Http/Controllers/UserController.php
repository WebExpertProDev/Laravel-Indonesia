<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class UserController extends Controller
{
    //
	
	public function index(){
	
		$users = User::all();
	
		return view('user-list', compact('users'));
		}
	
	
	public function edit($id){
		
		$users = User::find($id);
		
		return view('user-edit', compact('users'));
		
		
		}
	
	public function store(Request $r){
	
	if(\Auth::check())
	{
				  $rules = [
        'name' => 'required',
        'password'         => 'required',
        'confirm_password' => 'required|same:password',
		'email' => 'required|unique:users',
		'role_id' => 'required',
		
    ];
	}
		
	else
	{
	
		  $rules = [
        'name' => 'required',
        'password'         => 'required',
        'confirm_password' => 'required|same:password',
		'email' => 'required|unique:users',
	
		
    ];
	}
	
	$this->validate($r, $rules);
		
	$input = $r->all();
	$input['password'] = \Hash::make($r->password);
	$use = new User;
	
	$save  =$use->fill($input)->save();
		if($save){
		return redirect()->route('user-list.index')->with('message', 'USer Added Successfully');	
		}
		
		}
	
	
	public function destroy($id){
		
		$delete = User::find($id);
		$delete  = $delete->delete();
		
		 if($delete)
			return back(); 
		
		
		}
		
		
		public function show(){
			
			
		return view('user-registration');
			
	}
	
	public function change_password($id){
	
		$user = User::find($id);
	
		return view('user-change_password', compact('user'));
	
		
		
		}
		public function change_password_save($id, Request $r){
	
		$user = User::find($id);
		
		
	
		
		
	
	    $rules = array(
        
        'password'         => 'required',
        'confirm_password' => 'required|same:password'           // required and has to match the password field
    );
	
		$this->validate($r, $rules);
		
		
		
		$user->password = \Hash::make($r->password);
		$user->save();
		
		
		return redirect()->route('user-list.index')->with('message', 'Password Updated Successfully');
		
		
		}	
		
	public function update($id, Request $r){
$user = User::find($id);
		
		
	
		
		
	
	    $rules = array(
        
        'password'         => 'required',
		'email' => 'required|unique:users',
        'confirm_password' => 'required|same:password'           // required and has to match the password field
    );
	
		$this->validate($r, $rules);
		$input = $r->all();
		if($r->has('password'))
			$input['password'] = \Hash::make($r->password);
		
		$save  =$user->fill($input)->save();
		if($save){
		return redirect()->route('user-list.index')->with('message', 'USer Added Successfully');	
		}
		
		
		}	
		
	
}
