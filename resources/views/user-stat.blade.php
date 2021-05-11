@extends('layouts.app')
@section('content')
@section('css')
<style>
  input.form-control {
    border: 1px solid gainsboro;
}
.red {
    color: red;
}
.user {
    overflow: hidden;
    padding: 10px 0px 10px 25px;
    background: #f2f2f2;
}
.left1 {
    border: 1px solid #ccc;
}

.right1 {
    /* border: 1px solid #ccc; */
    padding: 15px 15px;
    background: #f5f5f5;
}
.top {
    background: #fff;
    padding: 15px 15px;
    border: 1px solid #ccc;
    height: 250px;
}
.user2{
   background: #fff;
    padding: 15px 15px;
    border: 1px solid #ccc;
    margin-top: 15px;
}
</style>
<link rel="stylesheet" href="https://rawgit.com/gionkunz/chartist-js/master/dist/chartist.min.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link href  = "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
<link href  = "//cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href  = "{{asset('assets/css/style.css')}}" rel="stylesheet"> 
<link rel="stylesheet" href="https://rawgit.com/gionkunz/chartist-js/master/dist/chartist.min.css">
<link rel="stylesheet" type="text/css" media="all" href="{{asset('assets/daterangepicker/daterangepicker.css')}}" />
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


@endsection

  <div class="container">
    <h5 class="form-heading mb-0">User Statistics</h5>
    <div class="chectlist">
	{{--   <div class="user">
      <div class="row">
        <p>Group by:</p>
        <div class="pl-2"><button type="button" class="btn btn-primary">Login Count</button></div>
        <div class="pl-2"><button type="button" class="btn btn-primary">Failed Login Count</button></div>
      </div>
    </div> --}}
   

<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row">
            <div class="container-fluid d-flex pt-3">
                <div class="col-md-8">
                  <div class="left1">
                    <div class="card">
                        <div class="card-header">User Statistics</div>
                        <div class="card-body" style="height: 420px">
                            <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                                <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                    <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                    <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                                </div>
                            </div>
							{!! $chartjs->render() !!}
							
							{{--<div class=" ct-chart ct-square chartjs-render-monitor" style="display: block; width: 550px; height: 400px;"></div> --}}
                        </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
				<form action = "{{route('user-stat1')}}" method = "POST">
				{{csrf_field()}}
                  <div class="right1">
                  <div class="top">
                  <h5>Select Type Of Problems</h5>
                  <div class="form-check">
                    <label class="form-check-label" for="exampleRadios1">
                    <input  class="form-check-input" type="radio" name="all_reports" id="exampleRadios1" value="all_reports_with_problem"checked>
                      No. of reports with Problem
                    </label>
                  </div>
                  <div class="form-check">
                    <input  class="form-check-input" type="radio" name="all_reports" id="exampleRadios2" value="all_reports">
                    <label class="form-check-label" for="exampleRadios2">
                  All Reports (with or without problems)
                    </label>
                  </div>
				  
				<!--   <div class="form-check">
                    <input  class="form-check-input" type="radio" name="all_reports" id="problem_checked" value="problem_reports">
                    <label class="form-check-label" for="exampleRadios2">
                  Select Problem
                    </label>
                  </div> -->
				  
				   <div class="form-check">
				         <label class="form-check-label" for="exampleRadios2">
                      Select Date Range
                    </label>
					<br>
                    <input  class="form-check-input" type="text" name="date_range" value =""  id="date_range">

                  </div>
                </div>
				
				 <div class="user2"  id = "problem">
					 <h5>Select Problem</h5>
				  
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "cleaned" class="form-check-input" >Cleaned
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "indicator" class="form-check-input">Indicator
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "brake" class="form-check-input">Brake
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "battery" class="form-check-input" >Battery
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "mirror" class="form-check-input">Mirror
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "crash" class="form-check-input">Crash
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "scratch" class="form-check-input">Scratch
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "tire_pressure" class="form-check-input">Tire Pressure
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "problem_selected[]" value = "sticker" class="form-check-input">Sticker
                    </label>
                  </div>
				  <div class="form-check">
                    <label class="form-check-label">
						<input type="checkbox" name =  "problem_selected[]" value = "handle_bar" class="form-check-input">Handle bar
                    </label>
                  </div>
				  
				  
                  				  
                  </div>
                <div class="user2">
                  <h5>User Name</h5>
				  @foreach(\App\Models\User::all() as $users)
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" name =  "user_list[]" value = "{{$users->id}}" class="form-check-input" value="">{{$users->name}}
                    </label>
                  </div>
                  @endforeach
				  
                  </div>
				  	  @foreach(\App\Models\Checklist::all()->unique('created_at') as $users)
				  <?php
				  $created_at[] = $users->created_at->format('Y-m-d');
				  
				  
				  
				  
				  
				  
				  ?>
				    @endforeach
						  <?php
				  $collect = collect($created_at);
				  $collect = $collect->unique();
				  $collect = $collect->values()->all();
				  
				  
				  
				  ?>
				   <div class="user2">
                  <h5>X-axis</h5>
			
				
				  
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" name = 'x_option'  "date_selected" class="form-check-input" value="per_user">Per Username
                    </label>
                  </div>
                <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" name =  "x_option" class="form-check-input" value="per_date">Per Date 
                    </label>
                  </div>
				  
				  </div>
				
				  
                </div>
				<button type = "submit" class = "btn btn-primary pull-right">Submit</button>
				</form>
                </div>
				
            </div>
        </div>
    </div>
</div>
 </div>
</div>
@section('js')

    <script src = "//code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.js"></script>

      <script type="text/javascript" src="{{asset('assets/daterangepicker/daterangepicker.js')}}"></script>
    
    
	<!-- Template Main JS File -->
  

	<script>
	


	$(function(){
	
		var options =   {
              
              format: 'MM/DD/YYYY HH:mm',
              separator: ' - ',
			  
              applyLabel: 'Apply',
              cancelLabel: 'Cancel',
              fromLabel: 'From',
              toLabel: 'To',
              customRangeLabel: 'Custom',
              daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
              monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
              firstDay: 1
            };
		
		
		$('#date_range').daterangepicker(options, function(start, end, label) {  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD')); });


	/* + ' (predefined range: ' + label + ')' */
	});
	
	$(document).ready(function(){
	$("#date_range").val('');
	
	/* $('#problem_checked').click(function(){
		
		if($(this).is(':checked')){
			$('#problem').show();
			
			}
			else
			{
			$('#problem').hide();	
				}
		
		}); */
	});
	
	

</script>
 
@endsection

@endsection

  

