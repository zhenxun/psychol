<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateNewsTable extends Migration
{

    public function up(){

    	$this->schema->create('news', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('title');
            $table->text('contents');
            $table->boolean('status');
            $table->timestamps();
             $table->softDeletes();
    	});

    }

    public function down(){

    	$this->dropTable('news');

    }
}
