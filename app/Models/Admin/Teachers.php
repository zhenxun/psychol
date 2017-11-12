<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Teachers extends Model{

	use SoftDeletes;

	protected $table = 'teachers';

	protected $fillable = [
		'lang',
		'name',
		'email',
		'tel',
		'photo',
		'lab-web',
		'introduce',
		'publications',
		'updated_at'
	];

	protected $dates = ['deleted_at'];	
}