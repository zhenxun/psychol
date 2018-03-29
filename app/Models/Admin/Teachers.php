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
		'job',
		'high_education',
		'photo',
		'lab_web',
		'expertise',
		'own_dep',
		'updated_at',
		'sort'
	];

	protected $dates = ['deleted_at'];	
}