<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Checklist;
use DB;
use Illuminate\Support\Facades\Response;
class UserStatController extends Controller
{
//
private $chartOptoins;

public function __construct(){

$this->chartOptions = [
'scales' => [
'yAxes' => [
[
'ticks' => [
'beginAtZero' => true,
],
],
],
],
];


}


public function index(){

$users = User::all();

$forchart = DB::table('users')->join('checklists', 'users.id', 'checklists.user_id')->
select('checklists.*', 'users.name as username')->
get();
$xaxis = [];
$count= 0;
$counts = [];

foreach($forchart as $key => $chart){


$forchartChecklist = Checklist::whereUserId($chart->user_id)->
where('brake', 'problem')
->orWhere('battery', 'problem')
->orWhere('mirror', 'problem')
->orWhere('crash', 'problem')
->orWhere('scratch', 'problem')
->orWhere('tire_pressure', 'problem')
->orWhere('handle_bar', 'problem')
->orWhere('cleaned', 'problem')
->orWhere('indicator', 'problem')
->orWhere('checklists.sticker', 'problem')

->get();

} 
foreach($forchartChecklist as $key => $date){


$xaxis[$date->created_at->format('Y-m-d')] = $date->created_at->format('Y-m-d');

$counts['user_id'][$key]  =$date->created_at->format('Y-m-d');

}


$xaxis = array_unique($xaxis);
$userid = $counts['user_id'];
$bnandhu= array_count_values($userid);


$xx = 0;

foreach($xaxis as $xaxs){
$xaxix[$xx] = $xaxs;
$xx++;	
}


//return $xaxis; 
foreach($bnandhu as $key => $value){

$counts['count'][$count]  =  $value;
$count++;			
}


$problems = "No. of reports with problems";


$chartjs = app()->chartjs
->name('barChartTest')
->type('bar')
->size(['width' => 400, 'height' => 200])
->labels($xaxix)    //x axis
->datasets([
[
"label" => $problems,
'backgroundColor' => "rgba(38, 185, 154, 0.31)",
'borderColor' => "rgba(38, 185, 154, 0.7)",
"pointBorderColor" => "rgba(38, 185, 154, 0.7)",        //y axis
"pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
"pointHoverBackgroundColor" => "#fff",
"pointHoverBorderColor" => "rgba(220,220,220,1)",
'data' => $counts['count'],

],

])
->options($this->chartOptions);

/* 
$chartjs = app()->chartjs
->name('barChartTest')
->type('bar')
->size(['width' => 400, 'height' => 200])
->labels(['January', 'February', 'March', 'April', 'May', 'June', 'July'])    //x axis
->datasets([
[
"label" => "My First dataset",
'backgroundColor' => "rgba(38, 185, 154, 0.31)",
'borderColor' => "rgba(38, 185, 154, 0.7)",
"pointBorderColor" => "rgba(38, 185, 154, 0.7)",        //y axis
"pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
"pointHoverBackgroundColor" => "#fff",
"pointHoverBorderColor" => "rgba(220,220,220,1)",
'data' => [65, 59, 80, 81, 56, 55, 40],
],
[
"label" => "My Second dataset",
'backgroundColor' => "rgba(38, 185, 154, 0.31)",
'borderColor' => "rgba(38, 185, 154, 0.7)",
"pointBorderColor" => "rgba(38, 185, 154, 0.7)",
"pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
"pointHoverBackgroundColor" => "#fff",
"pointHoverBorderColor" => "rgba(220,220,220,1)",
'data' => [12, 33, 44, 44, 55, 23, 40],
] 
])
->options([]);  */


return view('user-stat', compact('users', 'chartjs'));
}

public function user_stat_post(Request $r){







$forchartChecklist = DB::table('users')->join('checklists', 'users.id', 'checklists.user_id')

->select('checklists.*', 'users.name as username');
$counts['xaxis'] = [];
$counts['count'] = [];
$counts['user_id'] = [];


$count = 0;

$gotilla = [];
$xaxis = [];


if($r->all_reports == 'all_reports_with_problem')
{

if($r->has('problem_selected')){
if(in_array('brake', $r->problem_selected))
$forchartChecklist->where('checklists.brake', 'problem');





if( in_array('battery', $r->problem_selected))
$forchartChecklist->orWhere('checklists.battery', 'problem');

if(in_array('mirror', $r->problem_selected))

$forchartChecklist->orWhere('checklists.mirror', 'problem');

if(in_array('crash', $r->problem_selected))
$forchartChecklist->orWhere('checklists.crash', 'problem');

if(in_array('cleaned', $r->problem_selected))

$forchartChecklist->orWhere('checklists.cleaned', 'problem');


if(in_array('indicator', $r->problem_selected))


$forchartChecklist->orWhere('checklists.indicator', 'problem');

if( in_array('scratch', $r->problem_selected))


$forchartChecklist->orWhere('checklists.scratch', 'problem');

if(in_array('tire_pressure', $r->problem_selected))

$forchartChecklist->orWhere('checklists.tire_pressure', 'problem');

if( in_array('handle_bar', $r->problem_selected))
$forchartChecklist->orWhere('checklists.handle_bar', 'problem');

if( in_array('sticker', $r->problem_selected))		
$forchartChecklist->orWhere('checklists.sticker', 'problem');


if($r->date_range != null){

$exp  = explode(" - ", $r->date_range);

$end_date = date("Y-m-d", strtotime($exp[1] . "+1 day"));


$start_date = date("Y-m-d", strtotime($exp[0] . "-1 day")) ;


$forchartChecklist->whereBetween('checklists.created_at', [$start_date, $end_date]);


}
}
else{


 $forchartChecklist = $forchartChecklist->where('checklists.brake', 'problem')->orWhere('checklists.battery', 'problem')->orWhere('checklists.mirror', 'problem')
->orWhere('checklists.crash', 'problem')
->orWhere('checklists.cleaned', 'problem')
->orWhere('checklists.indicator', 'problem')
->orWhere('checklists.scratch', 'problem')
->orWhere('checklists.tire_pressure', 'problem')
->orWhere('checklists.handle_bar', 'problem')
->orWhere('checklists.sticker', 'problem');
if($r->date_range != null){

$exp  = explode(" - ", $r->date_range);

$end_date = date("Y-m-d", strtotime($exp[1] . "+1 day"));


$start_date = date("Y-m-d", strtotime($exp[0] . "-1 day")) ;
$forchartChecklist->whereBetween('checklists.created_at', [$start_date, $end_date]);
}
}
if($r->has('date_selected')){
$forchartChecklist->whereDate('checklists.created_at', $r->date_selected);

} 





}
//end of all reports with problem


$forchartChecklists = $forchartChecklist->get();



if($r->date_range != null && $r->has('date_range')){

$exp  = explode(" - ", $r->date_range);


$end_date = date("Y-m-d", strtotime($exp[1] . "+1 day"));


$start_date = date("Y-m-d", strtotime($exp[0]/*  . "-1 day" */)) ;

$forchart  =  $forchartChecklists->collect();
$start1= strtotime($start_date);
$end1= strtotime($end_date);

$forchartChecklists =  $forchart->whereBetween('created_at', [$start_date, $end_date]);

}

//	dd($forchartChecklists);

if($r->has('user_list')){
if(is_array($r->user_list)){
$forchart  =  $forchartChecklists->collect();
$users = $r->user_list;
$forchartChecklists = $forchart->whereIn('user_id', $users);
}
else
{
$forchartChecklists = [];
}
}











/* echo "<pre>";
var_dump($forchartChecklists);
echo "</pre>"; */

foreach($forchartChecklists as $key=> $date){
$created_at =  $date->created_at;

$created_at =  \Carbon\Carbon::parse($created_at)->format('Y-m-d');
if($r->has('x_option')){

$r->x_option ==  'per_user' ? $gotilla[$key] = $date->username : $gotilla[$created_at] = $created_at ; 

$r->x_option ==  'per_user' ? $counts['user_id'][$key]  =$date->username  : $counts['user_id'][$key]  =$created_at; 

}
else{
$gotilla[$created_at] = $created_at;
$counts['user_id'][$key]  =$created_at;
}


}

$counts['xaxis'] = array_unique($gotilla);


$yy = 0;
foreach($counts['xaxis'] as $xaxis1)
{
$xaxis[] = $xaxis1;

$yy++;

}


$userid = $counts['user_id'];


$bnandhu= array_count_values($userid);


foreach($bnandhu as $key => $value){

$counts['count'][$count]  =  $value;
$count++;			
}




if($r->all_reports != 'all_reports')
$problem = "All Report With Problem";
else
$problem = "All Report With or Without Problem";



$chartjs = app()->chartjs
->name('barChartTest')
->type('bar')
->size(['width' => 400, 'height' => 200])
->labels($xaxis)    //x axis
->datasets([
[
"label" => $problem,
'backgroundColor' => "rgba(38, 185, 154, 0.31)",
'borderColor' => "rgba(38, 185, 154, 0.7)",
"pointBorderColor" => "rgba(38, 185, 154, 0.7)",        //y axis
"pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
"pointHoverBackgroundColor" => "#fff",
"pointHoverBorderColor" => "rgba(220,220,220,1)",
'data' => $counts['count'],
],

])
->options($this->chartOptions);


return view('user-stat-post', compact('chartjs', 'r'));

}



}
