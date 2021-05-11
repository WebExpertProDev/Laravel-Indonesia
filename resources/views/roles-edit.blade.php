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
/*.left-side {
    border: 1px solid #2fa4e7;
    padding: 10px 10px;
    border-radius: 10px;
    background: #f1f1f194;
}*/
.right-side {
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
   <div class="container">
    <h5 class="hd-main text-center">Roles Edit</h5>
    <div class="edit-form">

      <div class="row">
      
       <div class="col-md-12">
          <div class="right-side">
            <h6>Role Edit</h6>
			<form method = "POST" action = "{{route('roles.update', $edit->id)}}">
			{{csrf_field()}}
			@method("PATCH")
			<div class="form-group">
                <label for="exampleInputname2">Role Name</label>
				
				@if($errors->has('name'))
				<div class = "alert alert-danger">
				{{$errors->first('name')}}
				</div>
				
				@elseif($errors->has('permissions'))
					<div class = "alert alert-danger">
				{{$errors->first('permissions')}}
				</div>
				@endif
                <label class="sr-only" for="inlineFormInputGroup2">Email</label>
                  <div class="input-group p-0">
                    <div class="input-group-prepend">
                      
                    </div>
                    <input required type="text" value = "{{$edit->name}}" name = "name" class="form-control" id="inlineFormInputGroup2" placeholder="Enter Role Name">
                  </div>
				  <br><br>
            <div class="row justify-content-center mb-3">
			
                <div class="col-lg-6 d-flex justify-content-between">
				
                  <label class="control-label">Security </label>
                 <label class="switch">
                    <input type="checkbox" name="permissions[]" value="Security"
					
					{{
					
					in_array('Security', $edit->permissions) ? 'checked' : ''
					
					}}
					
					>
                    <span class="slider round"></span>
                  </label>
                </div>
                <!-- <div class="col-lg-2"></div> -->
                <div class="col-lg-6 d-flex justify-content-between">
                  <label class="control-label">Checklist </label>
                 <label class="switch">
                  <input type="checkbox" name="permissions[]" value="Checklist"
				  	
					{{
					
					in_array('Checklist', $edit->permissions) ? 'checked' : ''
					
					}}
				  
				  >
                  <span class="slider round"></span>
                </label>
                </div>
            </div>

            <div class="row justify-content-center mb-3">
              <div class="col-lg-6 d-flex justify-content-between">
                <label class="control-label">Analytics </label>
                <label class="switch">
                  <input type="checkbox" name="permissions[]" value="Analytics"
				  	{{
					
					in_array('Analytics', $edit->permissions) ? 'checked' : ''
					
					}}
				  
				  >
                  <span class="slider round"></span>
                </label>
              </div>
              <!-- <div class="col-lg-2"></div> -->
              <div class="col-lg-6 d-flex justify-content-between">
              
              </div>
          </div>

         

         

          <button type="submit" class="btn btn-primary btn-md">Update</button>     

          </div>
		  </form>
        </div>
      </div>
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