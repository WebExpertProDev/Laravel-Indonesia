<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Checklists extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
			Schema::create('checklists', function(Blueprint $table){
			
			
			$table->increments('id');
			
			$table->string('name');
			$table->string('location')->nullable();
			$table->string('plate_no')->nullable();
			$table->string('cleaned')->nullable();
			$table->string('indicator')->nullable();
			$table->string('brake')->nullable();
			$table->string('battery')->nullable();
			$table->string('mirror')->nullable();
			$table->string('crash')->nullable();
			$table->string('scratch')->nullable();
			$table->string('tire_pressure')->nullable();
			$table->string('sticker')->nullable();
			$table->string('handle_bar')->nullable();
			$table->string('noise')->nullable();
			$table->string('vandalism')->nullable();
			$table->string('helmet')->nullable();
			$table->string('damage')->nullable();
			$table->string('comments')->nullable();
			$table->timestamps();
			
			});		
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
