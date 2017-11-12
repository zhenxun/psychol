<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration
{

    public function up(){

    	$this->schema->create('users', function (Blueprint $table){
    		
            $table->increments('id')->unique();
            $table->string('name');
            $table->string('username');
            $table->string('password');
            $table->string('email');
            $table->text('photo');
            $table->string('status');
            $table->timestamps();
            $table->softDeletes();
    		
    	});

    }

    public function down(){


    	$this->dropTable('users');

    }
}
