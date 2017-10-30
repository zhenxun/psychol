<?php


use Leopard\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateOrganizationTable extends Migration
{

    public function up(){

    	$this->schema->create('organization', function (Blueprint $table){

            $table->increments('id')->unique();
            $table->string('lang');
            $table->text('content');
            $table->timestamps();
            $table->softDeletes();  
    	});

    }

    public function down(){

    	$this->dropTable('organization');

    }
}
