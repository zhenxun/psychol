<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CourseAbouts extends Model{

	use SoftDeletes;

	protected $table = 'course_about';

}