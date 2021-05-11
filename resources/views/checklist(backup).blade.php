@extends('layouts.app')
@section('css')
<style>
  input.form-control {
    border: 1px solid gainsboro;
}
.red {
    color: red;
}
.noise {
    background: url({{asset('assets/img/bike1.png')}});
    background-repeat: no-repeat;
    background-size: 100% 100%;
    height: 400px;
    position: relative;
    color: #fff;
    font-size: 18px;
}

li.main2 {
    position: absolute;
    left: 70%;
    top: 5%;
}
li.main3 {
    position: absolute;
    top: 30%;
    right: 12%;
}
li.main7 {
    position: absolute;
    top: 55%;
    left: 25%;
    color: #000;
}
li.main5 {
    position: absolute;
    top: 93%;
    right: 9%;
}
  li {
    list-style: none;
    
  }
ul {
  columns: 3;
  font-size: 1.5em;
  margin: 1em 0;
  padding: 0;
  li {
    list-style: none;
    margin: 0;

  }
}
li.main10 {
    position: absolute;
    left: 30%;
    top: 30%;
}
li.main6 {
    position: absolute;
    top: 70%;
    left: 50%;
}
li.main8 {
    position: absolute;
    top: 80%;
    left: 10%;
}
li.main9 {
    position: absolute;
    top: 50%;
    left: 7%;
    color: #000;
}
li.main4 {
    position: absolute;
    top: 60%;
    left: 2%;
}
</style>
@endsection
@section('content')
<div hidden id = "dvMap"></div>
<div class="container">
    <h5 class="form-heading mb-0">Operations Checklist</h5>
    <div class="chectlist">
      <form method  = "post" action = "{{route('checklist-store')}}">
		  {{csrf_field()}}
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label"><img src="{{asset('assets/images/calander.png')}}" alt="demo" width="20%" height=""></label>
    <div class="col-sm-10">
      <input type="plate" class="form-control" id="inputdate" placeholder="21-01-21 / 11:03:12" readonly value = "{{\Carbon\Carbon::now()}}">
      <!-- <input type="password" class="form-control" id="inputPassword" placeholder="Password"> -->
      <!-- <input type="date" id="myDate" value="2014-02-09"> -->
      <small id="emailHelp" class="form-text text-muted">Date of checklist report</small>
    </div>
  </div>

    <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label"><img src="{{asset('assets/images/location.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-sm-10">
      <input type="text" value = "" readonly class="form-control" id="set_location" name = "location"  placeholder="Location">
      <small id="emailHelp" class="form-text text-muted">Location</small>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Plate No.<span class="red">*</span></label>
    <div class="col-sm-10">
      <input type="plate" class="form-control" id="inputPlate" placeholder="xxxx">
      <small id="emailHelp" class="form-text text-muted">Plate no. of the motorcycle</small>
    </div>
  </div>


  <div class="form-group row">
    <label for="inputclean" class="col-sm-2 col-form-label">Clean<span class="red">*</span></label>

    <div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="cleaned" id="exampleRadios1" value="already" checked>
  <label class="form-check-label" for="exampleRadios1">
    Already
  </label>
</div>
<div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="cleaned" id="exampleRadios2" value="just">
  <label class="form-check-label" for="exampleRadios2">
    Just
  </label>
</div>
<div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="cleaned" id="exampleRadios3" value="problem">
  <label class="form-check-label" for="exampleRadios3">
    Problem
  </label>
</div>

  </div>


 <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label"><img src="{{asset('assets/images/light.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-sm-10 pl-4">

      <div class="row">
        <div class="form-check col-md-2">
          <input class="form-check-input" type="radio" name="indicator" id="exampleRadios4" value="ok" checked>
          <label class="form-check-label" for="exampleRadios4">
            <a href="#"><img src="{{asset('assets/images/01.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-md-10">
          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios5" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img src="{{asset('assets/images/02.png')}}" alt="demo" width="20%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>


  <div class="form-group row">
    <label for="inputclean" class="col-sm-2 col-form-label">Brake<span class="red">*</span></label>

    <div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="brake" id="exampleRadios6" value="ok" checked="">
  <label class="form-check-label" for="exampleRadios1">
    Ok
  </label>
</div>
<div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="brake" id="exampleRadios7" value="problem">
  <label class="form-check-label" for="exampleRadios2">
    Problem
  </label>
</div>
  </div>
  <div class="form-group row">
    <label for="inputbattery" class="col-sm-2 col-form-label">Battery<span class="red">*</span></label>
    <div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="battery" id="exampleRadios6" value="ok" checked="">
  <label class="form-check-label" for="exampleRadios1">
    Ok
  </label>
</div>
<div class="form-check ml-3">
  <input class="form-check-input" type="radio" name="battery" id="exampleRadios7" value="problem">
  <label class="form-check-label" for="exampleRadios2">
    Problem
  </label>
</div>
  </div>
   <div class="form-group row">
    <label for="inputmirror" class="col-sm-2 col-form-label">Mirror<span class="red">*</span></label>
     <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="mirror" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="mirror" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputcrash" class="col-sm-2 col-form-label">Crash<span class="red">*</span></label>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="crash" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="crash" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
   <div class="form-group row">
    <label for="inputscratch" class="col-sm-2 col-form-label">Scratch<span class="red">*</span></label>
   <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="scratch" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="scratch" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputnoise" class="col-sm-2 col-form-label">Tire Pressure<span class="red">*</span></label>
   <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="tire_pressure" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="tire_pressure" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputnoise" class="col-sm-2 col-form-label">Sticker<span class="red">*</span></label>
   <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="sticker" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="sticker" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputnoise" class="col-sm-2 col-form-label">Handle Bar<span class="red">*</span></label>
   <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="handle_bar" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="handle_bar" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  
    
  <ul class="noise">
   <!--  <li classs="main1"><input id="selectAll" type="checkbox"><label for='selectAll'>Select All</label></li> -->
    <li class="main2"><input id="mce-group[19]-19-0" type="checkbox" name="noise[]" value="handle_bar" /><label for="mce-group[19]-19-0">Handle Bar</label></li>
    <li class="main3"><input id="mce-group[19]-19-1" type="checkbox" name="noise[]" value="front_panel" /><label for="mce-group[19]-19-1">Front Panel</label></li>
    <li class="main4"><input id="mce-group[19]-19-2" type="checkbox" name="noise[]" value="mudguard" /><label for="mce-group[19]-19-2">Mudguard</label></li>
    <li class="main5"><input id="mce-group[19]-19-3" type="checkbox" name="noise[]" value="front_wheel" /><label for="mce-group[19]-19-3">Front Wheel</label></li>
    <li class="main6"><input id="mce-group[19]-19-4" type="checkbox" name="noise[]" value="foot_panel" /><label for="mce-group[19]-19-4">Foot Panel</label></li>
    <li class="main7"><input id="mce-group[19]-19-5" type="checkbox" name="noise[]" value="side_panel" /><label for="mce-group[19]-19-5">Side Panel</label></li>
    <li class="main8"><input id="mce-group[19]-19-6" type="checkbox" name="noise[]" value="rear_wheel" /><label for="mce-group[19]-19-6">Rear Wheel</label></li>
    <li class="main9"><input id="mce-group[19]-19-7" type="checkbox" name="noise[]" value="rear_end" /><label for="mce-group[19]-19-7">Rear End</label></li>
     <li class="main10"><input id="mce-group[19]-19-7" type="checkbox" name="noise[]" value="seat" /><label for="mce-group[19]-19-7">Seat</label></li>
  </ul>

 <!-- <div class="form-group row">
    <label for="inputnoise" class="col-sm-2 col-form-label">Noise<span class="red">*</span></label>
   <div class="form-check form-check-inline pl-3">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox1" value="handle_bar">
      <label class="form-check-label" for="inlineCheckbox1">Handle Bar</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox2" value="front_panel">
      <label class="form-check-label" for="inlineCheckbox2">Front Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox3" value="mudguard">
      <label class="form-check-label" for="inlineCheckbox3">Mudguard</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox4" value="front_wheel">
      <label class="form-check-label" for="inlineCheckbox4">Front Wheel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox5" value="foot_panel">
      <label class="form-check-label" for="inlineCheckbox5">Foot Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox6" value="side_panel">
      <label class="form-check-label" for="inlineCheckbox6">Side Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox7" value="rear_wheel">
      <label class="form-check-label" for="inlineCheckbox7">Rear Wheel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox8" value="rear_end">
      <label class="form-check-label" for="inlineCheckbox8">Rear End</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name = "noise[]" id="inlineCheckbox9" value="seat">
      <label class="form-check-label" for="inlineCheckbox9">Seat</label>
    </div>
  </div>
  -->
  
  
  
  
  <div class="form-group row">
    <label for="inputnoise" class="col-sm-2 col-form-label">Vandalism <span class="red">*</span></label>
   <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="vandalism" id="exampleRadios6" value="ok" checked="">
      <label class="form-check-label" for="exampleRadios1">
        Ok
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="vandalism" id="exampleRadios7" value="problem">
      <label class="form-check-label" for="exampleRadios2">
        Problem
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputhelmat" class="col-sm-2 col-form-label">Helmet<span class="red">*</span></label>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="helmet" id="exampleRadios6" value="1" checked="">
      <label class="form-check-label" for="exampleRadios1">
        1
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="helmet" id="exampleRadios7" value="2">
      <label class="form-check-label" for="exampleRadios2">
        2
      </label>
    </div>
  </div>

  <div class="form-group row">
    <label for="inputhelmat" class="col-sm-2 col-form-label">Damage<span class="red">*</span></label>
    <div class="form-check form-check-inline pl-3">
      <input class="form-check-input" type="checkbox" name = "damage[]" id="inlineCheckbox1" value="handle_bar">
      <label class="form-check-label" for="inlineCheckbox1">Handle Bar</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox2" value="front_panel">
      <label class="form-check-label" for="inlineCheckbox2">Front Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox3" value="mudguard">
      <label class="form-check-label" for="inlineCheckbox3">Mudguard</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox4" value="front_wheel">
      <label class="form-check-label" for="inlineCheckbox4">Front Wheel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox5" value="front_panel">
      <label class="form-check-label" for="inlineCheckbox5">Foot Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox6" value="side_panel">
      <label class="form-check-label" for="inlineCheckbox6">Side Panel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox7" value="rear_wheel">
      <label class="form-check-label" for="inlineCheckbox7">Rear Wheel</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox8" value="rear_end">
      <label class="form-check-label" for="inlineCheckbox8">Rear End</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox"name = "damage[]" id="inlineCheckbox9" value="seat">
      <label class="form-check-label" for="inlineCheckbox9">Seat</label>
    </div>

  </div>

 <div class="form-group row">
    <label for="inputcomment" class="col-sm-2 col-form-label">Comments</label>
    <div class="col-sm-10">
      <input type="plate"  name = "comments"class="form-control" id="inputPlate" placeholder="comments">
      <small id="emailHelp" class="form-text text-muted">Any extra comments</small>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Save <i class="fa fa-floppy-o pl-2" aria-hidden="true"></i></button>
  <a type="button" href = "{{url()->previous()}}" class="btn btn-secondary"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
</form>
    </div>


</div>

<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (p) {
        var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
		var latitude  = p.coords.latitude;
		var longitude  = p.coords.longitude;
		
		$("#set_location").val(latitude + ", " + longitude);
        var mapOptions = {
            center: LatLng,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        var marker = new google.maps.Marker({
            position: LatLng,
            map: map,
            title: "<div style = 'height:60px;width:200px'><b>Your location:</b><br />Latitude: " + p.coords.latitude + "<br />Longitude: " + p.coords.longitude
        });
        google.maps.event.addListener(marker, "click", function (e) {
            var infoWindow = new google.maps.InfoWindow();
            infoWindow.setContent(marker.title);
            infoWindow.open(map, marker);
        });
    });
} else {
    alert('Geo Location feature is not supported in this browser.');
}
</script>



@endsection