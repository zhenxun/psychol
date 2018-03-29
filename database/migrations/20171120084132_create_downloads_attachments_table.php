<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDownloadsAttachmentsTable extends Migration
{

    public function up(){

    	$this->schema->create('download_attachment', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('lang');
            $table->string('title');
            $table->string('real_filename');
            $table->string('hash_filename');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('download_attachment');

    }
}
