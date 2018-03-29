<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Departments extends Model{

	use SoftDeletes;

	protected $table = 'departments';

	protected $fillable = [
		'lang',
		'title',
		'sort',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}