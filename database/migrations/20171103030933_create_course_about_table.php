<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCourseAboutTable extends Migration
{

    public function up(){

    	$this->schema->create('course_about', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->text('content');
            $table->timestamps();
            $table->softDeletes(); 
    		
    	});

    }

    public function down(){

    	$this->dropTable('course_about');

    }
}
