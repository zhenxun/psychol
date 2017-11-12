<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRelatedLinkTable extends Migration
{

    public function up(){

    	$this->schema->create('link', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('title');
            $table->text('uri');
            $table->timestamps();
            $table->softDeletes();
    	});

    }

    public function down(){


    	$this->dropTable('link');

    }
}
