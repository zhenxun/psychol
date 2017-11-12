<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseRegulations extends Model{

	use SoftDeletes;

	protected $table = 'course_regulations';

	protected $fillable = [
		'lang',
		'content',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}