<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCourseCommonProblemTable extends Migration
{

    public function up(){

    	$this->schema->create('course_common_problem', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('title');
            $table->string('answer');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('course_common_problem');

    }
}
