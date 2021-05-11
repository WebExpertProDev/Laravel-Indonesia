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
    <h5 class="form-heading mb-0">Checklist Data</h5>
	
    <div class="chectlist">

      
        <div class="record mt-3">
        <div class="row">
          <div class="col-md-6">
            
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
<div class  = "table table-responsive">
<table class="table mt-3" id = "example">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Username</th>
      
      
      <th scope="col">Location</th>
      <th scope="col">Plate No</th>
      <th scope="col">Vehicle Cleaned</th>
	  <th scope="col">Vehicle Indicator</th>
	  <th scope="col">Vehicle Brake</th>
	  <th scope="col">Vehicle Battery</th>
	  <th scope="col">Vehicle Mirror</th>
	  <th scope="col">Vehicle Crash</th>
	  <th scope="col">Vehicle Scratch</th>
	  <th scope="col">Vehicle Tire Pressure</th>
	  <th scope="col">Vehicle Sticker</th>
	  <th scope="col">Vehicle Handle Bar</th>
	  <th scope="col">Vehicle Noise</th>
	  <th scope="col">Vehicle Vandalism</th>
	  <th scope="col">Helmet</th>
	  <th scope="col">Vehicle Damage</th>
	  <th scope="col">Comments</th>
	  <th scope="col">Dated On</th>
	  
    </tr>
  </thead>
  <tbody>
  @foreach($checklist as $key => $check)
  
  
  @php
  $n = [];
  if($check->noise != null){
  if(is_array($check->noise)){
  foreach($check->noise as $noises){
  $n[] = $noises;
  }
  }
  $noise= implode(", ", $n);
  $noise = str_replace("_", " ", $noise);
  $noise = ucwords($noise);
  }
  else
  {
	$noise= '';
 }
  if($check->damage != null){
  $damage = implode(", ", $check->damage);
  $damage = str_replace("_", " ", $damage);
  $damage = ucwords($damage);
  if($check->location != null){
  $get = explode(", ", $check->location);
  
  $latitude = $get[0];
  $longitude = $get[1];
  }
  }
  else{
  
  $damage = '';
  }
  $battery = str_replace("_", " ", $check->battery);
  $battery = ucwords($battery);
  
  @endphp
    <tr>
	
	<td>{{++$key}}</td>
        <td>{{$check->user->name}}</td>
      
      <td>{{$check->location !=null ? "Nearby Restaurant Are : " . $check->nearby : ''}}</td>
	  <td>{{$check->plate_no}}</td>
	  <td>{{$check->cleaned}}</td>
	  <td>{{$check->indicator}}</td>
	  <td>{{$check->bakery}}</td>
	  <td>{{$battery}}</td>
	  <td>{{$check->mirror}}</td>
	  <td>{{$check->crash}}</td>
	  <td>{{$check->scratch}}</td>
	  <td>{{$check->tire_pressure}}</td>
	  <td>{{$check->sticker}}</td>
	  <td>{{$check->handle_bar}}</td>
	  
	  <td>{{$noise}}</td>
	  
	  <td>{{$check->vandalism}}</td>
	  <td>{{$check->helmet}}</td>
	  <td>{{$damage}}</td>
      <td>{{$check->comments}}</td>
	  <td>{{$check->created_at->diffForHumans()}}</td>
	  
    </tr>
  @endforeach
  </tbody>
</table>
</div>
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