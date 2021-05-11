@extends('layouts.app')
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
</style>
@endsection
@section('content')
<div class="container">
    <h5 class="form-hd">Sign In</h5>
    <div class="main-form">

<form method= "post" action  = "{{route('login-submit')}}">
@csrf
 <!--  <h5>Sign In</h5> -->
  <p>Enter your login and password below:</p>
  <div class="form-group">
    <label for="exampleInputname">Username</label>
    <label class="sr-only" for="inlineFormInputGroup">Username</label>
	@if($errors->has('email'))
	<div class = "alert alert-danger">
	{{$errors->first('email')}}
	</div>
	
	
	@endif
      <div class="input-group p-0">
        <div class="input-group-prepend">
          <div class="input-group-text">@</div>
        </div>
        <input type="text" autofocus name ="email" class="form-control" id="inlineFormInputGroup" placeholder="Username">
      </div>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
	@if($errors->has('password'))
	<div class = "alert alert-danger">
	{{$errors->first('password')}}
	</div>
	
	
	@endif
    <div class="input-group p-0">
        <div class="input-group-prepend">
          <div class="input-group-text">@</div>
        </div>
        <input type="password" name  = "password" class="form-control" id="inlineFormInputGroup" placeholder="password">
      </div>
  </div>
  <a href = "{{route('user-list.register')}}" class= "pull-right">Register Now</a>
  <br>
  <button type="submit" class="btn btn-primary">Sign In</button>
</form>
</div>
</div>
@endsection