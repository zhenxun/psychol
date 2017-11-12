<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Logs extends Model{

	protected $table = 'login_logs';

	protected $fillable = [
		'ip',
		'session_hash',
		'login_time',
		'logout_time',
		'updated_at',
	];
}