<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Locations extends Model{

	use SoftDeletes;

	protected $table = 'location';

	protected $fillable = [
		'lang',
		'map',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}