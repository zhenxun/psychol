<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseCommonProblems extends Model{

	use SoftDeletes;

	protected $table = 'course_common_problem';

	protected $fillable = [
		'lang',
		'title',
		'answer',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}

