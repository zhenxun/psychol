<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Organizations extends Model{

	use SoftDeletes;

	protected $table = 'organization';

	protected $fillable = [
		'lang',
		'content',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}