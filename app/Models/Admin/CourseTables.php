<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseTables extends Model{

	use SoftDeletes;

	protected $table = 'course_table';

	protected $fillable = [
		'code',
		'name',
		'credit',
		'lang',
		'notes',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}