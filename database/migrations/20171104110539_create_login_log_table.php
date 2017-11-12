<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLoginLogTable extends Migration
{

    public function up(){

    	$this->schema->create('login_logs', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('ip');
            $table->string('session_hash');
            $table->dateTime('login_time');
            $table->dateTime('logout_time')->nullable();
            $table->timestamps();
    	});

    }

    public function down(){


    	$this->dropTable('login_logs');

    }
}
