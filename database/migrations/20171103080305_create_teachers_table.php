<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTeachersTable extends Migration
{

    public function up(){

    	$this->schema->create('teachers', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('name');
            $table->string('email');
            $table->string('tel');
            $table->string('photo');
            $table->text('lab_web');
            $table->text('introduce');
            $table->text('publications');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('teachers');

    }
}
