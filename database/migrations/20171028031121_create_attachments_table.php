<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAttachmentsTable extends Migration
{

    public function up(){

    	$this->schema->create('news_attachemnt', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->integer('news_id');
            $table->string('filename');
            $table->string('hash_filename');
            $table->timestamps();
            $table->softDeletes();
    	});


    }

    public function down(){

    	$this->dropTable('news_attachemnt');

    }
}
