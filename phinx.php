<?php

require_once __DIR__. '/bootstrap/app.php';

return [
	'paths' => [
		'migrations' => 'database/migrations'
	],
	'migration_base_class' => 'Leopard\Database\Migrations\Migration',
	'templates' =>[
	  'file' => 'app/Database/Migrations/MigrationStub.php'
	],
	'environments' =>[
		'default_migration_table' => 'migrations',
		'default' => [
			'adapter' =>getEnv('DRIVER'),
			'host'=>getEnv('HOST'),
			'port'=>getEnv('DB_PORT'),
			'name'=>getEnv('DB'),
			'user'=>getEnv('DBUSER'),
			'pass'=>getEnv('PASSWORD'),
		]
	]
];