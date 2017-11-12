<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCourseTable extends Migration
{

    public function up(){

    	$this->schema->create('course_table', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('code');
            $table->string('name');
            $table->integer('credit');
            $table->string('lang');
            $table->text('notes');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('course_table');

    }
}
