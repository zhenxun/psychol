<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CommonProblems extends Model{

	use SoftDeletes;

	protected $table = 'course_common_problem';
}

