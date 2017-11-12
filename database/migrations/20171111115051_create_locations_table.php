<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLocationsTable extends Migration
{

    public function up(){

    	$this->schema->create('location', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->text('map');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('location');

    }
}
