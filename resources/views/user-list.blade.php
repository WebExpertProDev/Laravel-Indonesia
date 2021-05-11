@extends('layouts.app')
@section('content')
@section('css')
<style>
  input.form-control {
    border: 1px solid gainsboro;
}

.record {
    padding: 10px 10px;
    background: #f2f2f2;
}
.count {
    line-height: 2.7;
}
button.btn.btn-primary {
    background: #2fa4e7;
    border: 1px solid #2fa4e7;
}
.table thead th {
    color: #2fa4e7;
}
.table {
    border: 1px solid gainsboro;
}
i:hover{
	cursor:pointer;
	
}

</style>

<link href  = "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
<link href  = "//cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css" rel="stylesheet">

@endsection
<div class="container">
    <h5 class="form-heading mb-0">List Users</h5>
	
    <div class="chectlist">

      
        <div class="record mt-3">
        <div class="row">
          <div class="col-md-6">
            <a type="button" href = "{{route('user-list.register')}}" class="btn btn-primary">+</a>
            <a href = "{{url()->previous()}}" type="button" class="btn btn-secondary"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
          </div>
          <div class="col-md-6 text-right">
            <p class="m-0 count">Record count: 1</p>
          </div>
        </div>
        </div>
<br>
	@if(Session::has('message'))
	<div class = "alert alert-success">
	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	{{Session::get('message')}} 
	
	</div>
	@endif
<table class="table mt-3" id = "example">
  <thead>
    <tr>
      <th scope="col">Action</th>
      <th scope="col">Name</th>
      
      
      <th scope="col">Email</th>
      <th scope="col">Is Active?</th>
      <th scope="col">Role</th>
    </tr>
  </thead>
  <tbody>
  @foreach(\App\Models\User::all() as $user)
    <tr>
      <td>
	  <form method = "POST" action  ="{{route('user-list.destroy', $user->id)}}">
<a href = "{{route('user-list.edit', $user->id)}}" class="fa fa-pencil-square-o pl-2" aria-hidden="true" style = "color:black"></a>

{{csrf_field()}}
@method('DELETE')
<button type ="submit" onclick =  "return confirmdelete();" class="fa fa-trash" aria-hidden="true" style = "background-color:#fff; border:none;">
	
	
</button>
<a href  = "{{route('user-list.password', $user->id)}}" style = "color:black"><i class="fa fa-key" aria-hidden="true"></i></a>
</form>
</td>

      <td>{{$user->name}}</td>
      
      <td>{{$user->email}}</td>
      <td>{{$user->is_active? 'True': 'False'}}</td>
      <td>{{isset($user->role->name)? $user->role->name : "Role Not Assigned"}}</td>
    </tr>
  @endforeach
  </tbody>
</table>
    </div>


</div>@section('js')

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