<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Checklist extends Model
{
protected $guarded = [];
    use HasFactory;
	protected $casts = [
	'noise' => 'array',
	'damage'=> 'array',
	
	] ;
	
	public function user(){
		
		return $this->belongsTo(User::class);
		}
	
}
