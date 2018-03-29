<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDepartmentsTable extends Migration
{

    public function up(){

    	$this->schema->create('departments', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('title');
            $table->integer('sort');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('departments');

    }
}
