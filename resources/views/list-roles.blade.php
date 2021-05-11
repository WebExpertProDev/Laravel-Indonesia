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
button.btn.btn-danger.dropdown-toggle {
    color: #000 !important;
    background: #fff !important;
    border: 1px solid gainsboro !important;
}
i:hover{
	cursor:pointer;
	
}
</style>




<link href  = "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
<link href  = "//cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css" rel="stylesheet">

@endsection
<div class="container">
    <h5 class="form-heading mb-0">List Roles</h5>
    <div class="chectlist">
	@if(Session::has('message'))
	<div class = "alert alert-success">
	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	{{Session::get('message')}} 
	
	</div>
	@endif
	<div class="record mt-3">
        <div class="row">
           <div class="col-md-6">
           <!--  <button type="button" class="btn btn-primary">+</button>
            <div class="btn-group">
              <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Action <i class="fa fa-angle-down pl-1" aria-hidden="true"></i>
              </button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </div> -->
			<a type="button" href = "{{route('roles.show')}}" class="btn btn-primary">+</a>
            <a type="button" href = "{{url()->previous()}}" class="btn btn-secondary"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
          </div> 
          <div class="col-md-6 text-right">
            <p class="m-0 count">Record count: {{count($roles)}}</p>
          </div>
        </div>
        </div>
<br>
<table id = "example" class="table mt-3">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">
		  Action</th>
      <th scope="col">Name</th>
      <th scope="col">Permissions</th>
    </tr>
  </thead>
  <tbody>
  @php $i = 1 @endphp
  @foreach($roles as $role)
    <tr>
      <td>{{$i++}}</td>
      <td>
		<form method = "POST" action  ="{{route('roles.destroy', $role->id)}}">  
		  <a href = "{{route('roles.edit', $role->id)}}" style = "color:black" class="fa fa-pencil-square-o pl-2" aria-hidden="true"></a>
		  
		
{{csrf_field()}}
@method('DELETE')
<button type ="submit" onclick =  "return confirmdelete();" class="fa fa-eraser" aria-hidden="true" style = "background-color:#fff; border:none;">
	
	
</button>
</form>
</td>
      <td>{{$role->name}}</td>
      <td>
	  @php $perm = '';
	  $countmy = 0;
	  @endphp
	  @foreach($role->permissions as $key => $rolesss)
	    <?php $countmy = $countmy + 1;
		$comma = '';
	   if($countmy < count($role->permissions)){
	   
	   $comma = ', ';
	   }
	   
		$perm  .= $rolesss . $comma;
	  ?>
	  @endforeach
	  {{$perm}}
		  </td>
    </tr>
	
  @endforeach
  </tbody>
</table>
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