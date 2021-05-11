<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Checklist;
use Adrianorosa\GeoLocation\GeoLocation;
class ChecklistController extends Controller
{
	public function index(){
		$ip = \Request::ip();
		return view('checklist', ['ip'=> $ip]);
		}
		
		public function store(Request $r)
		{
		$input = $r->except("_token");


		$input['user_id'] = \Auth::user()->id;
			if($r->location == null){
				$details = GeoLocation::lookup($r->ip());
				$latitude = $details->getLatitude();
				$long = $details->getLongitude();
				$input['location'] = $latitude . ", ". $long;
			}
			
		$location = explode(", ", $input['location']);
		
		$input['nearby']= $this->nearby_location_get($location[0], $location[1]);
		for ($x = 0; $x <= 8; $x++) {
			if($input['noise'][$x] == 'Null'){
				unset($input['noise'][$x]);
			}
			if($input['damage'][$x] == 'Null'){
				unset($input['damage'][$x]);
			}			
		  }
		
		$store = new Checklist;
		$store = $store->fill($input)->save();
		if($store){
			return redirect()->route('checklist-view')->with('success', 'Checklist Submitted Successfully');
			}
		}
		
		
		public function view(Checklist $checklist){
			$checklist= $checklist::all();
			return view('checklist-data', ['controller' =>$this], compact('checklist'));
			}
			
			
public function nearby_location_get($lat, $long){
	
	
	
$key = env("GOOGLE_MAPS_KEY");

$url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$long&radius=500&types=restaurant&sensor=false&key=$key";
$ch =	curl_init($url);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));

// Return response instead of outputting
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// Execute the POST request
$result = curl_exec($ch);

$result = json_decode($result);
// Close cURL resource
curl_close($ch); 
 $i = 0;
 $location = [];
 
foreach($result->results as $enondhu){
$i++;
if($i <=4){
$location[] =  $enondhu->name;	
}
}
	
	
	return implode(", ", $location);
}
			
			
		
}
