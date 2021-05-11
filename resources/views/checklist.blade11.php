
@extends('layouts.app')
@section('css')

<style>
img.battery_swap1 {
    width: 70%;
}
.prob1 {
    width: 70px;
}
 .cal , .local ,.plateno,.cleans,.lights,.break-img,.batter-img,.mirror-img,.crash-img,.scratch-img,.tire-img,.unnamed-img,.handlebar-img,.noise-img,.vanda-img,.helmet-img,.damage-img {
    width: 90px;
}
  input.form-control {
    border: 1px solid gainsboro;
}
.red {
    color: red;
}
strong {
  font-size: 1.75em;
  text-align: center;
  width: 100%;
  display: block;
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
.noise {
    background: url({{asset('assets/images/bike1.png')}});
    background-repeat: no-repeat;
    background-size: 100% 100%;
    height: 400px;
    position: relative;
    color: #fff;
    font-size: 18px;
    width:100%;
}
li.main2 {
    position: absolute;
    left: 65%;
    top: 10%;
    color: #000;
}
li.main3 {
    position: absolute;
    top: 30%;
    right: 27%;
    color: #000;
}
li.main7 {
    position: absolute;
    top: 55%;
    left: 25%;
    color: #fff;
}
li.main5 {
    position: absolute;
    top: 75%;
    right: 24%;
    color: #000;
}
li.main10 {
    position: absolute;
    left: 30%;
    top: 30%;
    color: #000;
}
li.main6 {
    position: absolute;
    top: 70%;
    left: 56%;
    color: #000;
}
li.main8 {
    position: absolute;
    top: 80%;
    left: 10%;
    color: #000;
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
    left: 7%;
    color: #000;
}
.nav-menu .drop-down ul {
    display: grid;
}
@media screen and (max-width: 767px) {
  .cal , .local ,.plateno,.cleans,.lights,.break-img,.batter-img,.mirror-img,.crash-img,.scratch-img,.tire-img,.unnamed-img,.handlebar-img,.noise-img,.vanda-img,.helmet-img,.damage-img {
    width: 70px;
}
.prob1 {
    width: 25px;
}
.ok {
    width: 25px;
}
/*.fix {*/
/*    width: 18%;*/
/*    margin-bottom: 5px;*/
/*}*/
.battery-ok {
    width: 55px;
    margin-bottom: 8px;
}
.lights2 {
    width: 50px;
}
.mobile-view {
    margin: 0px;
}
nav.mobile-nav.d-lg-none ul {
    display: contents;
}
.mobile-nav a {
    font-size: 17px;
}
.form-check.form-check-inline.pl-3 {
    padding-left: 0px !important;
}

.form-check.form-check-inline {
    width: 100%;
}
}
@media screen and (max-width: 425px) {
    .cal, .local, .plateno, .cleans, .lights, .break-img, .batter-img, .mirror-img, .crash-img, .scratch-img, .tire-img, .unnamed-img, .handlebar-img, .noise-img, .vanda-img, .helmet-img, .damage-img {
    width: 40px;
}
li.main5 {
    right: 22%;
}
}
@media screen and (max-width: 425px) {
    li.main10 {
    left: 23%;
    top: 33%;
}
}
</style>
@endsection


  <!-- ======= Header ======= -->
  @section('content')
  <div hidden id = "dvMap"></div>
  <div class="container">
    <h5 class="form-heading mb-0">Operations Checklist</h5>
    <div class="chectlist">
      <form method  = "post" action = "{{route('checklist-store')}}">
		  {{csrf_field()}}
  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="cal" src="{{asset('assets\images\calander.png')}}" alt="demo" width="20%" height=""></label>
    <div class="col-10">
      <input required type="plate" class="form-control" id="inputdate" placeholder="21-01-21 / 11:03:12" readonly value = "{{\Carbon\Carbon::now()}}">
      <!-- <input required type="password" class="form-control" id="inputPassword" placeholder="Password"> -->
      <!-- <input required type="date" id="myDate" value="2014-02-09"> -->
      <small id="emailHelp" class="form-text text-muted">Date of checklist report</small>
    </div>
  </div>

    <div class="form-group row">

    <label for="staticEmail" class="col-2 col-form-label"><img class="local" src="{{asset('assets\images\location.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10">
      <input required type="text" value = "" readonly class="form-control" id="set_location" name = "location"  placeholder="Location">
      <small id="emailHelp" class="form-text text-muted">place of the motorcycle</small>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-2 col-form-label"><img class="plateno" src="{{asset('assets\images\plate.png')}}" alt="demo" width="20%" height=""></label>
    <div class="col-10">
      <input required type="plate" class="form-control" id="inputPlate" placeholder="xxxx" name = "plate_no">
      <small id="emailHelp" class="form-text text-muted">Plate no. of the motorcycle</small>
    </div>
  </div>
   <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="cleans" src="{{asset('assets\images\clean.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3 col-md-3">
          <input required class="form-check-input" type="radio" name="cleaned" id="exampleRadios1" value="ok" >
          <label class="form-check-label" for="exampleRadios4">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-5 col-md-3">
          <input required class="form-check-input" type="radio" name="cleaned" id="exampleRadios2" value="fixed">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="fix" src="{{asset('assets\images\fixed.png')}}" alt="demo" width="80%" height=""></a>
          </label>
        </div>

         <div class="form-check col-4 col-md-6">
          <input required class="form-check-input" type="radio" name="cleaned" id="exampleRadios3" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>


 <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="lights" src="{{asset('assets\images\light.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="indicator" id="exampleRadios4" value="ok" >
          <label class="form-check-label" for="exampleRadios4">
            <a href="#"><img class="lights2" src="{{asset('assets\images\01.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="indicator" id="exampleRadios4" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img src="{{asset('assets\images\02.png')}}" alt="demo" width="20%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="break-img" src="{{asset('assets\images\brake.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="brake" id="exampleRadios6" value="ok">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="brake" id="exampleRadios6" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>


  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="batter-img" src="{{asset('assets\images\battery.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-4 col-md-3 ">
          <input required class="form-check-input" type="radio" name="battery" id="exampleRadios6" value="ok" >
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="battery-ok" src="{{asset('assets\images\battery_ok.png')}}" alt="demo" width="90%" height=""></a>
          </label>
        </div>

        <div class="form-check col-8 col-md-7 ">
          <input required class="form-check-input" type="radio" name="battery" id="exampleRadios6" value="battery_changed" >
          <label class="form-check-label" for="exampleRadios7">
           <a href="#"><img class="battery_swap1" src="{{asset('assets\images\battery_swap.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="mirror-img" src="{{asset('assets\images\mirror.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="mirror" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="mirror" id="exampleRadios6" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

<div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="crash-img" src="{{asset('assets\images\crash.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="crash" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="crash" id="exampleRadios6" value="problem" >
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="scratch-img" src="{{asset('assets\images\scratch.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="scratch" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="scratch" id="exampleRadios6" value="problem" >
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="tire-img" src="{{asset('assets\images\tire_pressure2.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3 col-md-3">
          <input required class="form-check-input" type="radio" name="tire_pressure" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

 <div class="form-check col-5 col-md-3">
          <input required class="form-check-input" type="radio" name="tire_pressure" id="exampleRadios2" value="fixed">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="fix" src="{{asset('assets\images\fixed.png')}}" alt="demo" width="80%" height=""></a>
          </label>
        </div>
        <div class="form-check col-4 col-md-6">
          <input required class="form-check-input" type="radio" name="tire_pressure" id="exampleRadios6" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="unnamed-img" src="{{asset('assets\images\unnamed.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="sticker" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="sticker" id="exampleRadios6" value="problem" >
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>
<div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="handlebar-img" src="{{asset('assets\images\handlebar.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input required class="form-check-input" type="radio" name="handle_bar" id="exampleRadios6" value="ok" ="">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input required class="form-check-input" type="radio" name="handle_bar" id="exampleRadios6" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

  <div class="form-group row">
    <label for="inputnoise" class="col-2 col-form-label"><img class="noise-img" src="{{asset('assets\images\noise.png')}}" alt="demo" width="20%" height=""></label>
  
  <ul class="noise col-10">
   <!--  <li classs="main1"><input id="selectAll" type="checkbox"><label for='selectAll'>Select All</label></li> -->
    <li class="main2"><input id="mce-group[19]-19-0" type="checkbox" name="noise[]" value="handle_bar" /><label for="mce-group[19]-19-0"></label></li>
    <li class="main3"><input id="mce-group[19]-19-1" type="checkbox" name="noise[]" value="front_panel" /><label for="mce-group[19]-19-1"></label></li>
    <li class="main4"><input id="mce-group[19]-19-2" type="checkbox" name="noise[]" value="mudguard" /><label for="mce-group[19]-19-2"></label></li>
    <li class="main5"><input id="mce-group[19]-19-3" type="checkbox" name="noise[]" value="front_wheel" /><label for="mce-group[19]-19-3"></label></li>
    <li class="main6"><input id="mce-group[19]-19-4" type="checkbox" name="noise[]" value="foot_panel" /><label for="mce-group[19]-19-4"></label></li>
    <li class="main7"><input id="mce-group[19]-19-5" type="checkbox" name="noise[]" value="side_panel" /><label for="mce-group[19]-19-5"></label></li>
    <li class="main8"><input id="mce-group[19]-19-6" type="checkbox" name="noise[]" value="rear_wheel" /><label for="mce-group[19]-19-6"></label></li>
    <li class="main9"><input id="mce-group[19]-19-7" type="checkbox" name="noise[]" value="rear_end" /><label for="mce-group[19]-19-7"></label></li>
     <li class="main10"><input id="mce-group[19]-19-7" type="checkbox" name="noise[]" value="seat" /><label for="mce-group[19]-19-7"></label></li>
  </ul>
</div>
  <div class="form-group row">
    <label for="staticEmail" class="col-2 col-form-label"><img class="vanda-img" src="{{asset('assets\images\vandalism2.png')}}" alt="demo" width="20%" height=""></label>
     <div class="col-10 pl-4">

      <div class="row">
        <div class="form-check col-3">
          <input class="form-check-input" type="radio" name="vandalism" id="exampleRadios6" value="ok">
          <label class="form-check-label" for="exampleRadios5">
            <a href="#"><img class="ok" src="{{asset('assets\images\ok.png')}}" alt="demo" width="40%" height=""></a>
          </label>
        </div>

        <div class="form-check col-7">
          <input class="form-check-input" type="radio" name="vandalism" id="exampleRadios6" value="problem">
          <label class="form-check-label" for="exampleRadios5">
           <a href="#"><img class="prob1" src="{{asset('assets\images\problem.png')}}" alt="demo" width="7%" height=""></a>
          </label>
        </div>
      </div>

    </div>
  </div>

  <div class="form-group row">
    <label for="inputhelmat" class="col-2 col-form-label"><img class="helmet-img" src="{{asset('assets\images\helmet.png')}}" alt="demo" width="20%" height=""></label>
	<div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="helmet" id="exampleRadios6" value="0" >
      <label class="form-check-label" for="exampleRadios1">
        0
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="helmet" id="exampleRadios6" value="1" >
      <label class="form-check-label" for="exampleRadios1">
        1
      </label>
    </div>
    <div class="form-check ml-3">
      <input class="form-check-input" type="radio" name="helmet" id="exampleRadios6" value="2">
      <label class="form-check-label" for="exampleRadios2">
        2
		</label>
    </div>
  </div>

  <!--<div class="form-group row mobile-view">-->
  <!--  <label for="inputhelmat" class="col-sm-2 col-form-label"><img class="damage-img" src="{{asset('assets\images\damage.png')}}" alt="demo" width="20%" height=""></label>-->
  <!--  <div class="form-check form-check-inline pl-3">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox1" value="handle_bar" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox1">Handle Bar</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox2" value="front_panel" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox2">Front Panel</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox3" value="mudguard" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox3">Mudguard</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox4" value="front_wheel" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox4">Front Wheel</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox5" value="foot_panel" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox5">Foot Panel</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox6" value="side_panel" name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox6">Side Panel</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox7" value="rear_wheel"name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox7">Rear Wheel</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox8" value="rear_end"name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox8">Rear End</label>-->
  <!--  </div>-->
  <!--  <div class="form-check form-check-inline">-->
  <!--    <input  class="form-check-input" type="checkbox" id="inlineCheckbox9" value="seat"name = "damage[]">-->
  <!--    <label class="form-check-label" for="inlineCheckbox9">Seat</label>-->
  <!--  </div>-->

  <!--</div>-->
   <div class="form-group row">
  <label for="inputnoise" class="col-2 col-form-label"><img class="noise-img" src="/oyika/assets/images/damage.png" alt="demo" width="20%" height=""></label>
  <ul class="noise col-10">

   <!--  <li classs="main1"><input id="selectAll" type="checkbox"><label for='selectAll'>Select All</label></li> -->
    <li class="main2"><input id="mce-group[19]-19-0" type="checkbox" name="damage[]" value="handle_bar"><label for="mce-group[19]-19-0"></label></li>
    <li class="main3"><input id="mce-group[19]-19-1" type="checkbox" name="damage[]" value="front_panel"><label for="mce-group[19]-19-1"></label></li>
    <li class="main4"><input id="mce-group[19]-19-2" type="checkbox" name="damage[]" value="mudguard"><label for="mce-group[19]-19-2"></label></li>
    <li class="main5"><input id="mce-group[19]-19-3" type="checkbox" name="damage[]" value="front_wheel"><label for="mce-group[19]-19-3"></label></li>
    <li class="main6"><input id="mce-group[19]-19-4" type="checkbox" name="damage[]" value="foot_panel"><label for="mce-group[19]-19-4"></label></li>
    <li class="main7"><input id="mce-group[19]-19-5" type="checkbox" name="damage[]" value="side_panel"><label for="mce-group[19]-19-5"></label></li>
    <li class="main8"><input id="mce-group[19]-19-6" type="checkbox" name="damage[]" value="rear_wheel"><label for="mce-group[19]-19-6"></label></li>
    <li class="main9"><input id="mce-group[19]-19-7" type="checkbox" name="damage[]" value="rear_end"><label for="mce-group[19]-19-7"></label></li>
     <li class="main10"><input id="mce-group[19]-19-7" type="checkbox" name="damage[]" value="seat"><label for="mce-group[19]-19-7"></label></li>
  </ul>
  </div>

 <div class="form-group row">
    <label for="inputcomment" class="col-3 col-md-2 col-form-label">Comments (Optional)</label>
    <div class="col-9 col-md-10">
      <input type="plate" name = "comments" class="form-control" id="inputPlate" placeholder="comments">
      <small id="emailHelp" class="form-text text-muted">Any extra comments</small>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Save <i class="fa fa-floppy-o pl-2" aria-hidden="true"></i></button>
  <a type="button" href = "{{url()->previous()}}" class="btn btn-secondary"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
</form>
    </div>

</div>

@endsection
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
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
  $("#selectAll").click(function() {
  $("input[type=checkbox]").prop("", $(this).prop(""));
});

$("input[type=checkbox]").click(function() {
  if (!$(this).prop("")) {
    $("#selectAll").prop("", false);
  }
});



  </script>
</html>