<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Charters extends Model{

	use SoftDeletes;

	protected $table = 'charter';

	protected $fillable = [
		'lang',
		'content',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}