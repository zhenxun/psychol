<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseRules extends Model{

	use SoftDeletes;

	protected $table = 'course_rules';
}