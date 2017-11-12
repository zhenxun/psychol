<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Links extends Model{

	use SoftDeletes;

	protected $table = 'link';

	protected $fillable = [
		'lang',
		'title',
		'uri',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}