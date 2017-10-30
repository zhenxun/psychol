<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Abouts extends Model{

	use SoftDeletes;

	protected $table = 'about';

	protected $fillable = [
		'lang',
		'content',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}