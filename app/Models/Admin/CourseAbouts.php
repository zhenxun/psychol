<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseAbouts extends Model{

	use SoftDeletes;

	protected $table = 'course_about';

	protected $fillable = [
		'lang',
		'content',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}