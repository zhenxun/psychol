<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBannerTable extends Migration
{

    public function up(){

    	$this->schema->create('banner', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('title');
            $table->string('sub_title');
            $table->text('intro');
            $table->text('photo');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('banner');

    }
}
