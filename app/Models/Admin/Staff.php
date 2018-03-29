<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Staff extends Model{

	use SoftDeletes;

	protected $table = 'staff';

	protected $fillable = [
		'lang',
		'name',
		'email',
		'tel',
		'photo',
		'updated_at'
	];

	protected $dates = ['deleted_at'];	
}