    var cl_first = 0;
    var cl_second = 0;
    var cl_third = 0;
    var li_first = 0;
    var li_third = 0;
    var br_first = 0;
    var br_third = 0;
    var ba_first = 0;
    var ba_second = 0;
    var ba_third = 0;
    var mi_first = 0;
    var mi_third = 0;
    var cr_first = 0;
    var cr_third = 0;
    var sc_first = 0;
    var sc_third = 0;
    var ti_first = 0;
    var ti_second = 0;
    var ti_third = 0;
    var un_first = 0;
    var un_third = 0;
    var ha_first = 0;
    var ha_third = 0;
    var va_first = 0;
    var va_third = 0;
    var he_first = 0;
    var he_second = 0;
    var he_third = 0;
    var flag1 = false;
    var flag2 = false;
    var flag3 = false;
    var flag4 = false;
    var flag5 = false;
    var flag6 = false;
    var flag7 = false;
    var flag8 = false;
    var flag9 = false;
    var flag11 = false;
    var flag12 = false;
    var flag13 = false;
    var flag14 = false;
    var flag15 = false;
    var flag16 = false;
    var flag17 = false;
    var flag18 = false;
    var flag19 = false;


    function cleanpicture(x){

      if (x == 0 && cl_first == 0){
        document.getElementById('clean_check').setAttribute('src', "assets\\img\\check.png");
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        cl_first = 1;
        cl_second = 0;
        cl_third = 0;
      }
      else if(x == 0 && cl_first == 1){
        document.getElementById('clean_check').setAttribute('src', 'assets\\img\\check_grey.png');
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        cl_first = 0;
        cl_second = 0;
        cl_third = 0;
      }
      else if (x == 1 && cl_second == 0){
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh.png');
        document.getElementById('clean_check').setAttribute('src', 'assets\\img\\check_grey.png');
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        cl_first = 0;
        cl_second = 1;
        cl_third = 0;
      }
      else if(x == 1 && cl_second == 1){
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
        document.getElementById('clean_check').setAttribute('src', 'assets\\img\\check_grey.png');
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        cl_first = 0;
        cl_second = 0;
        cl_third = 0;
      }

      else if (x == 2 && cl_third == 0){
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel.png');
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
        document.getElementById('clean_check').setAttribute('src', 'assets\\img\\check_grey.png');
        cl_first = 0;
        cl_second = 0;
        cl_third = 1;
      }
      else if(x == 2 && cl_third == 1){
        document.getElementById('clean_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        document.getElementById('clean_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
        document.getElementById('clean_check').setAttribute('src', 'assets\\img\\check_grey.png');
        cl_first = 1;
        cl_second = 0;
        cl_third = 0;
      }  
    }

    function lightpicture(x){
        if (x == 0 && li_first == 0){
            document.getElementById('light_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('light_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            li_first = 1;
            li_third = 0;
          }
          else if(x == 0 && li_first == 1){
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('light_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            li_first = 0;
            li_third = 0;
          }
    
          else if (x == 2 && li_third == 0){
            document.getElementById('light_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            li_first = 0;
            li_third = 1;
          }
          else if(x == 2 && li_third == 1){
            document.getElementById('light_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            li_first = 0;
            li_third = 0;
          }        
    }

    function brakepicture(x){
        if (x == 0 && br_first == 0){
            document.getElementById('br_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('br_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            br_first = 1;
            br_third = 0;
          }
          else if(x == 0 && br_first == 1){
            document.getElementById('br_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('br_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            br_first = 0;
            br_third = 0;
          }
    
          else if (x == 2 && br_third == 0){
            document.getElementById('br_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('br_check').setAttribute('src', 'assets\\img\\check_grey.png');
            br_first = 0;
            br_third = 1;
          }
          else if(x == 2 && br_third == 1){
            document.getElementById('br_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('br_check').setAttribute('src', 'assets\\img\\check_grey.png');
            br_first = 0;
            br_third = 0;
          }        
    }

    function batterypicture(x){

        if (x == 0 && ba_first == 0){
          document.getElementById('ba_check').setAttribute('src', "assets\\img\\full_bat.png");
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat_grey.png');
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat_grey.png');
          ba_first = 1;
          ba_second = 0;
          ba_third = 0;
        }
        else if(x == 0 && ba_first == 1){
          document.getElementById('ba_check').setAttribute('src', 'assets\\img\\full_bat_grey.png');
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat_grey.png');
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat_grey.png');
          ba_first = 0;
          ba_second = 0;
          ba_third = 0;
        }
        else if (x == 1 && ba_second == 0){
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat.png');
          document.getElementById('ba_check').setAttribute('src', 'assets\\img\\full_bat_grey.png');
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat_grey.png');
          ba_first = 0;
          ba_second = 1;
          ba_third = 0;
        }
        else if(x == 1 && ba_second == 1){
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat_grey.png');
          document.getElementById('ba_check').setAttribute('src', 'assets\\img\\full_bat_grey.png');
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat_grey.png');
          ba_first = 0;
          ba_second = 0;
          ba_third = 0;
        }
  
        else if (x == 2 && ba_third == 0){
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat.png');
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat_grey.png');
          document.getElementById('ba_check').setAttribute('src', 'assets\\img\\full_bat_grey.png');
          ba_first = 0;
          ba_second = 0;
          ba_third = 1;
        }
        else if(x == 2 && ba_third == 1){
          document.getElementById('ba_cancel').setAttribute('src', 'assets\\img\\low_bat_grey.png');
          document.getElementById('ba_refresh').setAttribute('src', 'assets\\img\\charge_bat_grey.png');
          document.getElementById('ba_check').setAttribute('src', 'assets\\img\\full_bat_grey.png');
          ba_first = 1;
          ba_second = 0;
          ba_third = 0;
        }  
      }

    function mirrorpicture(x){
        if (x == 0 && mi_first == 0){
            document.getElementById('mi_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('mi_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            mi_first = 1;
            mi_third = 0;
          }
          else if(x == 0 && mi_first == 1){
            document.getElementById('mi_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('mi_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            mi_first = 0;
            mi_third = 0;
          }
    
          else if (x == 2 && mi_third == 0){
            document.getElementById('mi_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('mi_check').setAttribute('src', 'assets\\img\\check_grey.png');
            mi_first = 0;
            mi_third = 1;
          }
          else if(x == 2 && mi_third == 1){
            document.getElementById('mi_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('mi_check').setAttribute('src', 'assets\\img\\check_grey.png');
            mi_first = 0;
            mi_third = 0;
          }        
    }

    function crashpicture(x){
        if (x == 0 && cr_first == 0){
            document.getElementById('cr_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('cr_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            cr_first = 1;
            cr_third = 0;
          }
          else if(x == 0 && cr_first == 1){
            document.getElementById('cr_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('cr_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            cr_first = 0;
            cr_third = 0;
          }
    
          else if (x == 2 && cr_third == 0){
            document.getElementById('cr_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('cr_check').setAttribute('src', 'assets\\img\\check_grey.png');
            cr_first = 0;
            cr_third = 1;
          }
          else if(x == 2 && cr_third == 1){
            document.getElementById('cr_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            cr_first = 0;
            cr_third = 0;
          }        
    }

    function scratchpicture(x){
        if (x == 0 && sc_first == 0){
            document.getElementById('sc_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('sc_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            sc_first = 1;
            sc_third = 0;
          }
          else if(x == 0 && sc_first == 1){
            document.getElementById('sc_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('sc_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            sc_first = 0;
            sc_third = 0;
          }
    
          else if (x == 2 && sc_third == 0){
            document.getElementById('sc_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('sc_check').setAttribute('src', 'assets\\img\\check_grey.png');
            sc_first = 0;
            sc_third = 1;
          }
          else if(x == 2 && sc_third == 1){
            document.getElementById('sc_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            sc_first = 0;
            sc_third = 0;
          }        
    }

    function tirepicture(x){

        if (x == 0 && ti_first == 0){
          document.getElementById('ti_check').setAttribute('src', "assets\\img\\check.png");
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
          ti_first = 1;
          ti_second = 0;
          ti_third = 0;
        }
        else if(x == 0 && ti_first == 1){
          document.getElementById('ti_check').setAttribute('src', 'assets\\img\\check_grey.png');
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
          ti_first = 0;
          ti_second = 0;
          ti_third = 0;
        }
        else if (x == 1 && ti_second == 0){
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh.png');
          document.getElementById('ti_check').setAttribute('src', 'assets\\img\\check_grey.png');
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
          ti_first = 0;
          ti_second = 1;
          ti_third = 0;
        }
        else if(x == 1 && ti_second == 1){
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
          document.getElementById('ti_check').setAttribute('src', 'assets\\img\\check_grey.png');
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
          ti_first = 0;
          ti_second = 0;
          ti_third = 0;
        }
  
        else if (x == 2 && ti_third == 0){
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel.png');
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
          document.getElementById('ti_check').setAttribute('src', 'assets\\img\\check_grey.png');
          ti_first = 0;
          ti_second = 0;
          ti_third = 1;
        }
        else if(x == 2 && ti_third == 1){
          document.getElementById('ti_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
          document.getElementById('ti_refresh').setAttribute('src', 'assets\\img\\refresh_grey.png');
          document.getElementById('ti_check').setAttribute('src', 'assets\\img\\check_grey.png');
          ti_first = 1;
          ti_second = 0;
          ti_third = 0;
        }  
      }

    function unnamedpicture(x){ 
    if (x == 0 && un_first == 0){
        document.getElementById('un_check').setAttribute('src', "assets\\img\\check.png");
        document.getElementById('un_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        un_first = 1;
        un_third = 0;
        }
        else if(x == 0 && un_first == 1){
        document.getElementById('un_check').setAttribute('src', 'assets\\img\\check_grey.png');
        document.getElementById('un_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        un_first = 0;
        un_third = 0;
        }

        else if (x == 2 && un_third == 0){
        document.getElementById('un_cancel').setAttribute('src', 'assets\\img\\cancel.png');
        document.getElementById('un_check').setAttribute('src', 'assets\\img\\check_grey.png');
        un_first = 0;
        un_third = 1;
        }
        else if(x == 2 && un_third == 1){
        document.getElementById('un_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
        document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
        un_first = 0;
        un_third = 0;
        }        
    }    

    function handlebarpicture(x){ 
        if (x == 0 && ha_first == 0){
            document.getElementById('ha_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('ha_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            ha_first = 1;
            ha_third = 0;
            }
            else if(x == 0 && ha_first == 1){
            document.getElementById('ha_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('ha_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            ha_first = 0;
            ha_third = 0;
            }
    
            else if (x == 2 && ha_third == 0){
            document.getElementById('ha_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('ha_check').setAttribute('src', 'assets\\img\\check_grey.png');
            ha_first = 0;
            ha_third = 1;
            }
            else if(x == 2 && ha_third == 1){
            document.getElementById('ha_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            ha_first = 0;
            ha_third = 0;
            }        
    }    

    function vandalpicture(x){ 
        if (x == 0 && va_first == 0){
            document.getElementById('va_check').setAttribute('src', "assets\\img\\check.png");
            document.getElementById('va_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            va_first = 1;
            va_third = 0;
            }
            else if(x == 0 && va_first == 1){
            document.getElementById('va_check').setAttribute('src', 'assets\\img\\check_grey.png');
            document.getElementById('va_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            va_first = 0;
            va_third = 0;
            }
    
            else if (x == 2 && va_third == 0){
            document.getElementById('va_cancel').setAttribute('src', 'assets\\img\\cancel.png');
            document.getElementById('va_check').setAttribute('src', 'assets\\img\\check_grey.png');
            va_first = 0;
            va_third = 1;
            }
            else if(x == 2 && va_third == 1){
            document.getElementById('va_cancel').setAttribute('src', 'assets\\img\\cancel_grey.png');
            document.getElementById('light_check').setAttribute('src', 'assets\\img\\check_grey.png');
            va_first = 0;
            va_third = 0;
            }        
    }    

    function helmetpicture(x){

        if (x == 0 && he_first == 0){
          document.getElementById('he_check').setAttribute('src', "assets\\img\\0.png");
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1_GREY.png');
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2_GREY.png');
          he_first = 1;
          he_second = 0;
          he_third = 0;
        }
        else if(x == 0 && he_first == 1){
          document.getElementById('he_check').setAttribute('src', 'assets\\img\\0_GREY.png');
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1_GREY.png');
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2_GREY.png');
          he_first = 0;
          he_second = 0;
          he_third = 0;
        }
        else if (x == 1 && he_second == 0){
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1.png');
          document.getElementById('he_check').setAttribute('src', 'assets\\img\\0_GREY.png');
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2_GREY.png');
          he_first = 0;
          he_second = 1;
          he_third = 0;
        }
        else if(x == 1 && he_second == 1){
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1_GREY.png');
          document.getElementById('he_check').setAttribute('src', 'assets\\img\\0_GREY.png');
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2_GREY.png');
          he_first = 0;
          he_second = 0;
          he_third = 0;
        }
  
        else if (x == 2 && he_third == 0){
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2.png');
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1_GREY.png');
          document.getElementById('he_check').setAttribute('src', 'assets\\img\\0_GREY.png');
          he_first = 0;
          he_second = 0;
          he_third = 1;
        }
        else if(x == 2 && he_third == 1){
          document.getElementById('he_cancel').setAttribute('src', 'assets\\img\\2_GREY.png');
          document.getElementById('he_refresh').setAttribute('src', 'assets\\img\\1_GREY.png');
          document.getElementById('he_check').setAttribute('src', 'assets\\img\\0_GREY.png');
          he_first = 1;
          he_second = 0;
          he_third = 0;
        }  
    }    

    function changepicture1(){  
        flag1 = !flag1;
        if(flag1){
          document.getElementById('no-1').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-1').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture2(){  
        flag2 = !flag2;
        if(flag2){
          document.getElementById('no-2').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-2').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture3(){  
        flag3 = !flag3;
        if(flag3){
          document.getElementById('no-3').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-3').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture4(){  
        flag4 = !flag4;
        if(flag4){
          document.getElementById('no-4').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-4').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture5(){  
        flag5 = !flag5;
        if(flag5){
          document.getElementById('no-5').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-5').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture6(){  
        flag6 = !flag6;
        if(flag6){
          document.getElementById('no-6').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-6').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture7(){  
        flag7 = !flag7;
        if(flag7){
          document.getElementById('no-7').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-7').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture8(){  
        flag8 = !flag8;
        if(flag8){
          document.getElementById('no-8').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-8').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture9(){  
        flag9 = !flag9;
        if(flag9){
          document.getElementById('no-9').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-9').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture11(){  
        flag11 = !flag11;
        if(flag11){
          document.getElementById('no-11').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-11').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture12(){  
        flag12 = !flag12;
        if(flag12){
          document.getElementById('no-12').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-12').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture13(){  
        flag13 = !flag13;
        if(flag13){
          document.getElementById('no-13').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-13').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture14(){  
        flag14 = !flag14;
        if(flag14){
          document.getElementById('no-14').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-14').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture15(){  
        flag15 = !flag15;
        if(flag15){
          document.getElementById('no-15').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-15').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture16(){  
        flag16 = !flag16;
        if(flag16){
          document.getElementById('no-16').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-16').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture17(){  
        flag17 = !flag17;
        if(flag17){
          document.getElementById('no-17').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-17').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture18(){  
        flag18 = !flag18;
        if(flag18){
          document.getElementById('no-18').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-18').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }

    function changepicture19(){  
        flag19 = !flag19;
        if(flag19){
          document.getElementById('no-19').setAttribute('src', "assets\\img\\check.png");
        }    
        else{
          document.getElementById('no-19').setAttribute('src', "assets\\img\\check_grey.png");
        }
    }


    function datePermission(){
      if(document.getElementById('inputdate').value){
        document.getElementById('cal').setAttribute('src', "assets\\img\\calendar.png")
      }
      else{
        document.getElementById('cal').setAttribute('src', "assets\\img\\calendar-grey.png")
      }
      
    }

    function locPermission(){
      if(document.getElementById('inputLocation').value){
        document.getElementById('loc').setAttribute('src', "assets\\img\\location.png")
      }
      else{
        document.getElementById('loc').setAttribute('src', "assets\\img\\location-grey.png")
      }
    }

    function licensePermission(){
      if(document.getElementById('inputPlate').value){
        document.getElementById('license').setAttribute('src', "assets\\img\\license.png")
      }
      else{
        document.getElementById('license').setAttribute('src', "assets\\img\\license-grey.png")
      }
    }