<?php

namespace App\Http\Controllers;
use Session;
use Illuminate\Http\Request;
use App\Models\Role;
use Validator;
class RoleController extends Controller
{
    //
	public function index(){
		$roles = Role::all();
		return view('list-roles', compact('roles'));
		}
		
	public function show(){
		
		
		return view('roles-add');
		
		}	
		
		
	public function store(Request $r)	
	{
		$rules= [
		'name' => 'required|unique:roles',
		'permissions' => 'required'
		];
		
		$this->validate($r, $rules);
		
		
		$input = $r->except("_token");
		
		$save = new Role;
		$save->fill($input);
		$save = $save->save();
		if($save){
			
			return redirect()->route('roles.index')->with('message', 'Role Added Successfully');
			
		}
		
		
		
		
		
		
	}
	
	public function edit($id){
		
			$edit = Role::find($id);
				
		return view('roles-edit', compact('edit'));
		
		}

	public function update($id, Request $r){
		$input = $r->except("_token");
		$edit = Role::find($id);
		$edit->fill($input);
		$edit->save();
		return redirect()->route('roles.index')->with('message', 'Role Updated Successfully');
		
		}




	public function destroy($id){
		
			$delete = Role::find($id);
		$delete  = $delete->delete();
		
		 if($delete)
			return redirect()->route('roles.index')->with('message', 'Role Deleted Successfully');
		
		}
	
		
		
}
