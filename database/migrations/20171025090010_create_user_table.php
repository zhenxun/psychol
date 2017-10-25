<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUserTable extends Migration
{

    public function up(){

    	$this->schema->create('users', function (Blueprint $table){
    		$table->increments('id');
    		$table->string('username');
    	});

    }

    public function down(){

    	$this->schema->drop('users');

    }
}
