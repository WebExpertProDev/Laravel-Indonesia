
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

.fix-left{
  padding-left: 55px;
}
.text-field{
  padding-top: 30px;
  padding-right: 40px;
}

.fix-left{
  padding-left: 55px;
}
.text-field{
  padding-top: 30px;
  padding-right: 40px;
}

  .cal, .noise-img{
      width: 90px;
  }
  .head_pic, .noise-img{
    width: 110px;
    margin-left: 40px;
  }

  .btu-center{
    padding-left: 15rem;
    padding-top: 10px;
  }

.small-check{
  width: 30px;
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
    right: 14%;
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
    top: 77%;
    left: 15%;
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
    top: 50%;
    left: 83%;
    color: #000;
}
.nav-menu .drop-down ul {
    display: grid;
}
@media screen and (max-width: 767px) {
  .local ,.plateno,.cleans,.lights,.break-img,.batter-img,.mirror-img,.crash-img,.scratch-img,.tire-img,.unnamed-img,.handlebar-img,.noise-img,.vanda-img,.helmet-img,.damage-img {
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
    .local, .plateno, .cleans, .lights, .break-img, .batter-img, .mirror-img, .crash-img, .scratch-img, .tire-img, .unnamed-img, .handlebar-img, .noise-img, .vanda-img, .helmet-img, .damage-img {
    width: 40px;
}
li.main5 {
    right: 10%;
    top: 70%;
}
li.main3 {
    right: 22%;
}

.check, .refresh, .cancel{
  width: 50px !important;
}
.btu-center{
  padding-left: 5rem !important;
}

}
@media screen and (max-width: 425px) {
    li.main10 {
    left: 23%;
    top: 33%;
}
}


@media screen and (max-width: 1920px) {

}


@media screen and (max-width: 1200px) {
  .cancel {
      width: 100px;
  }
  .check {
      width: 100px;
  }
  .refresh {
      width: 100px;
  }

}

@media screen and (max-width: 992px) {
  .calendar-pic{
    width: 70px;
  }
  .location-pic{
    width: 70px;
  }
  .fix-left{
    padding-left: 35px;
  }
  .text-field{
    padding-top: 15px;
    padding-right: 25px !important;
  }
  .btu-center{
    padding-left: 8rem !important ;
    padding-top: 10px;
  }
  .head_pic, .noise-img{
    width: 70px !important;
    margin-left: 20px !important;
  }
  .cal, .noise-img{
    width: 80px;
  }
  .cancel {
      width: 70px;
  }
  .check {
      width: 70px;
  }
  .refresh {
      width: 70px;
  }
}



@media screen and (max-width: 767px) {
  .text-field{
padding-left: 70px;
  }
  .head_pic, .noise-img {
    width: 80px;
    margin-left: 40px;
}
.btu-center {
    padding-left: 5rem !important;
    padding-top: 10px;
}

.noise{
  height: 200px !important;
  margin-top: 70px !important;
}

  .cal, .noise-img{
    width: 70px;
  }
  .cancel {
      width: 70px;
  }
  .check {
      width: 70px;
  }
  .refresh {
      width: 70px;
  }
}

@media screen and (max-width: 425px) {
    .cal, .noise-img{
    width: 40px;
  }
}
</style>
@endsection


  <!-- ======= Header ======= -->
  @section('content')
  <div hidden id = "dvMap"></div>
  <div class="container">
    <h5 class="form-heading mb-0">Operations vvvChecklist</h5>
    <div class="chectlist">
      <form method  = "post" action = "{{route('checklist-store')}}">
		  {{csrf_field()}}
        <div class="form-group row">
          <label for="staticEmail" class="col-2 col-form-label fix-left"><img class="calendar-pic" id="cal" src="{{asset('assets\img\calendar.png')}}" alt="demo" width="110px" height=""></label>
          <div class="col-10 text-field">
            <input type="plate" class="form-control" id="inputdate" placeholder="21-01-21 / 11:03:12" readonly value = "{{\Carbon\Carbon::now()}}">
            <small id="emailHelp" class="form-text text-muted">Date of checklist report</small>
          </div>
        </div>
        <div class="form-group row">
          <label for="staticEmail" class="col-2 col-form-label fix-left"><img class="location-pic" id="loc" src="{{asset('assets\img\location.png')}}" alt="demo" width="110px" height=""></label>
          <div class="col-10 text-field">
            <input type="plate" class="form-control" id="inputLocation" placeholder="Location" readonly>
            <small id="emailHelp" class="form-text text-muted">place of the motorcycle</small>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-2 col-form-label fix-left"><img class="calendar-pic" id="license" class="plateno" src="{{asset('assets\img\license-grey.png')}}" alt="demo" width="110px" height=""></label>
          <div class="col-10 text-field">
            <input type="plate" class="form-control" id="inputPlate" placeholder="xxxx" name = "plate_no" onchange="licensePermission()">
            <small id="emailHelp" class="form-text text-muted">Plate no. of the motorcycle</small>
          </div>
        </div>


        <div class="form-group row">
        
          <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\clean1.png')}}" alt="demo" width="90px" height=""></label>
          <input required class="form-check-input" type="hidden" name="cleaned" id="cleanRadio" value="">
          <div class="col-10 btu-center pl-4">
            <div class="row">
              <div class="form-check col-4 ">
                <label class="form-check-label" for="exampleRadios4">
                  <img class="check" id = "clean_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick="cleanpicture(0)">
                </label>
              </div>

              <div class="form-check col-4 ">
                <label class="form-check-label" for="exampleRadios5">
                <img class="refresh" id = "clean_refresh" src="{{asset('assets\img\refresh_grey.png')}}" alt="demo" width="55%" height="" onclick="cleanpicture(1)">
                </label>
              </div>
              <div class="form-check col-4 ">
                <label class="form-check-label" for="exampleRadios5">
                <img class="cancel" id="clean_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick="cleanpicture(2)">
                </label>
              </div>
            </div>

          </div>
        </div>

          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\light.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="indicator" id="lightRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id = "light_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "lightpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="light_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "lightpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>


          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\brake.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="brake" id="brakeRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id ="br_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "brakepicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="br_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "brakepicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>


          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\battery.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="battery" id="batteryRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id = "ba_check" src="assets\img\full_bat_grey.png" alt="demo" width="55%" height="" onclick = "batterypicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                    <img class = "refresh" id = "ba_refresh" src="assets\img\charge_bat_grey.png" alt="demo" width="55%" height="" onclick = "batterypicture(1)">
                    </label>
                </div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="ba_cancel" src="assets\img\low_bat_grey.png" alt="demo" width="55%" height="" onclick = "batterypicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\mirror1.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="mirror" id="mirrorRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id ="mi_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "mirrorpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="mi_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "mirrorpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\crash.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="crash" id="crashRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id="cr_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "crashpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="cr_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "crashpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\scratch.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="scratch" id="scratchRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id="sc_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "scratchpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="sc_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "scratchpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\tire_pressure2.png')}}" alt="demo" width="90px" height=""></label>
            <input required class="form-check-input" type="hidden" name="tire_pressure" id="tire_pressure2Radio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4 ">
                  <label class="form-check-label" for="exampleRadios4">
                    <img class="check" id ="ti_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick="tirepicture(0)">
                  </label>
                </div>

                <div class="form-check col-4 ">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="refresh" id = "ti_refresh" src="{{asset('assets\img\refresh_grey.png')}}" alt="demo" width="55%" height="" onclick="tirepicture(1)">
                  </label>
                </div>

                <div class="form-check col-4 ">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="ti_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick="tirepicture(2)">
                  </label>
                </div>
              </div>

            </div>
          </div>
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\unnamed.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="sticker" id="unnamedRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id ="un_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "unnamedpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="un_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "unnamedpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\handlebar.png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="handle_bar" id="handlebarRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id="ha_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "handlebarpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="ha_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "handlebarpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>

          <div class="form-group row">
            <label for="inputnoise" class="col-2 col-form-label"><img class="noise-img" src="{{asset('assets\img\noise_1.png')}}" alt="demo" width="20%" height=""></label>
          
            <ul class="noise col-10">
              <!--  <li classs="main1"><input id="selectAll" type="checkbox"><label for='selectAll'>Select All</label></li> -->
                <li class="main2"><input id="mce-group[19]-19-11" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-11" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture11()"></li>
                <li class="main3"><input id="mce-group[19]-19-12" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-12" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture12()"></li>
                <li class="main4"><input id="mce-group[19]-19-13" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-13" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture13()"></li>
                <li class="main5"><input id="mce-group[19]-19-14" type="hidden" name="noise[]" value = "Null" /><img class = "small-check" id="no-14" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture14()"></li>
                <li class="main6"><input id="mce-group[19]-19-15" type="hidden" name="noise[]" value = "Null" /><img class = "small-check" id="no-15" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture15()"></li>
                <li class="main7"><input id="mce-group[19]-19-16" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-16" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture16()"></li>
                <li class="main8"><input id="mce-group[19]-19-17" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-17" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture17()"></li>
                <li class="main9"><input id="mce-group[19]-19-18" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-18" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture18()"></li>
                <li class="main10"><input id="mce-group[19]-19-19" type="hidden" name="noise[]" value = "Null"/><img class = "small-check" id="no-19" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture19()"></li>
              </ul>
          </div>

          <div class="form-group row">
            <label required for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\vandalism2.png')}}" alt="demo" width="20%" height=""></label>
            <input class="form-check-input" type="hidden" name="vandalism" id="vandalism2Radio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id="va_check" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="55%" height="" onclick = "vandalpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4"></div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="va_cancel" src="{{asset('assets\img\cancel_grey.png')}}" alt="demo" width="55%" height="" onclick = "vandalpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>
          
          
          <div class="form-group row">
            <label for="staticEmail" class="col-2 col-form-label"><img class="head_pic" src="{{asset('assets\img\helmet (2).png')}}" alt="demo" width="20%" height=""></label>
            <input required class="form-check-input" type="hidden" name="helmet" id="helmetRadio" value="" >
            <div class="col-10 btu-center pl-4">

              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                  <img class = "check" id = "he_check" src="{{asset('assets\img\0_GREY.png')}}" alt="demo" width="55%" height="" onclick = "helmetpicture(0)">
                  </label>
                </div>
                
                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios4">
                    <img class = "refresh" id="he_refresh" src="{{asset('assets\img\1_GREY.png')}}" alt="demo" width="55%" height="" onclick = "helmetpicture(1)">
                    </label>
                </div>

                <div class="form-check col-4">
                  <label class="form-check-label" for="exampleRadios5">
                  <img class="cancel" id="he_cancel" src="{{asset('assets\img\2_GREY.png')}}" alt="demo" width="55%" height="" onclick = "helmetpicture(2)">
                  </label>
                </div>
              </div>
            </div>
          </div>

          <div class="form-group row">
            <label for="inputnoise" class="col-2 col-form-label"><img class="noise-img" src="{{asset('assets\img\damage_1.png')}}" alt="demo" width="20%" height=""></label>
          
            <ul class="noise col-10">
            <!--  <li classs="main1"><input id="selectAll" type="checkbox"><label for='selectAll'>Select All</label></li> -->
              <li class="main2"><input id="mce-group[19]-19-0" type="hidden" name="damage[]" value = "Null" /><img class = "small-check" id="no-1" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture1()"></li>
              <li class="main3"><input id="mce-group[19]-19-1" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-2" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture2()"></li>
              <li class="main4"><input id="mce-group[19]-19-2" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-3" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture3()"></li>
              <li class="main5"><input id="mce-group[19]-19-3" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-4" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture4()"></li>
              <li class="main6"><input id="mce-group[19]-19-4" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-5" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture5()"></li>
              <li class="main7"><input id="mce-group[19]-19-5" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-6" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture6()"></li>
              <li class="main8"><input id="mce-group[19]-19-6" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-7" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture7()"></li>
              <li class="main9"><input id="mce-group[19]-19-7" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-8" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture8()"></li>
              <li class="main10"><input id="mce-group[19]-19-8" type="hidden" name="damage[]" value = "Null"/><img class = "small-check" id="no-9" src="{{asset('assets\img\check_grey.png')}}" alt="demo" width="40%" height="" onclick = "changepicture9()"></li>
            </ul>
          </div>

          <div class="form-group row">
            <label for="inputcomment" class="col-sm-2 col-form-label">Comments</label>
            <div class="col-sm-10">
              <input type="plate" class="form-control" id="inputPlate" placeholder="comments">
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