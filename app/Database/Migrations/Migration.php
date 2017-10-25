<?php

namespace Leopard\Database\Migrations;

use Illuminate\Database\Capsule\Manager as Capsule;
use Phinx\Migration\AbstractMigration;

class Migration extends AbstractMigration{

	protected $schema;

	public function init(){

		$this->schema = (new Capsule)->schema();
	}

}