<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Users extends Model{

	use SoftDeletes;

	protected $fillable = [
		'name',
		'username',
		'password',
		'email',
		'photo',
		'status',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}