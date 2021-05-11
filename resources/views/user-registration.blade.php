@extends('layouts.app')
@section('content')
@section('css')
<style>
   input.form-control {
    border: 1px solid gainsboro;
}
button.btn.btn-primary {
    width: 100%;
    background: #2fa4e7;
    border: 1px solid #2fa4e7;
}
.left-side {
    border: 1px solid #2fa4e7;
    padding: 10px 10px;
    border-radius: 10px;
    background: #f1f1f194;
}
.hd-main {
    color: #2fa4e7;
}
.edit-form {
    width: 60%;
    margin: 0 auto;
}


.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

</style>

<link href  = "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
<link href  = "//cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css" rel="stylesheet">

@endsection
@php

$url = \Auth::check() == true ? route('user-list.store') : route('user-list.stores');

@endphp
 <div class="container">
    <h5 class="hd-main text-center">Registration Form</h5>
    <div class="edit-form">
<form method = "post" action = "{{$url}}">
	{{csrf_field()}}
      <div class="row">
        <div class="col-md-12">
          <div class="left-side">
            <h6>User registration</h6>
            <div class="form-group">
              <label for="exampleInputname1">Name</label>
              <label class="sr-only" for="inlineFormInputGroup1">Name</label>
                <div class="input-group p-0">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></div>
                  </div>
                  <input type="text" class="form-control" required name  = "name" id="inlineFormInputGroup1" placeholder="Name">
                </div>
              </div>
               <div class="form-group">
                <label for="exampleInputname2">Email</label>
                <label class="sr-only" for="inlineFormInputGroup2">Email</label>
				  @if($errors->has('email'))
			  <div class = "alert alert-danger">
			  {{$errors->first('email')}}
			  </div>
			  
			  @endif
                  <div class="input-group p-0">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                    </div>
                    <input type="email" required name = "email" class="form-control" id="inlineFormInputGroup2" placeholder="Email">
                  </div>
              </div>
              <div class="form-group">
                <label for="exampleInputname3">Password</label>
                <label class="sr-only" for="inlineFormInputGroup3">Password</label>
				  @if($errors->has('password'))
			  <div class = "alert alert-danger">
			  {{$errors->first('password')}}
			  </div>
			  
			  @endif
                  <div class="input-group p-0">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
                    </div>
                    <input name = "password" type="password" class="form-control" id="inlineFormInputGroup3" placeholder="Password">
                  </div>
              </div>
              <div class="form-group">
                <label for="exampleInputname4">Confirm Password</label>
                <label class="sr-only" for="inlineFormInputGroup4">Confirm Password</label>
				  @if($errors->has('confirm_password'))
			  <div class = "alert alert-danger">
			  {{$errors->first('confirm_password')}}
			  </div>
			  
			  @endif
                  <div class="input-group p-0">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-unlock" aria-hidden="true"></i></div>
                    </div>
                    <input type="password" name = "confirm_password" class="form-control" id="inlineFormInputGroup4" placeholder="Confirm Password">
                  </div>
              </div>
			  @if(Auth::check())
               <div class="form-group">
                <label for="exampleInputname5">Select Role</label>
                <label class="sr-only" for="inlineFormInputGroup5">Select Role</label>
					  @if($errors->has('role_id'))
			  <div class = "alert alert-danger">
			  {{$errors->first('role_id')}}
			  </div>
			  @endif
			  
                  <div class="input-group p-0">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></div>
                    </div>
                    <select name = "role_id" type="text" class="form-control" id="inlineFormInputGroup5">
					<option value = "">Select Role</option>
					
					@foreach(\App\Models\Role::all() as $role)
				
				<option value = "{{$role->id}}">{{$role->name}}</option>
				@endforeach
					</select>
					
                  </div>
              </div>
			  @endif
              <button type="submit" class="btn btn-primary">Registration</button>
          </div>
        </div>
      
      </div>
</form>
</div>
</div>
@section('js')

    <script src = "https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src = "https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src = "https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
	<script>
$(document).ready(function() {
    $('#example').DataTable();

});
function confirmdelete(){
	 if (!confirm('Are you sure?')) 
	 
		return false;
    
    
    return true;
	
	
}
</script>
@endsection

@endsection