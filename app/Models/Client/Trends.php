<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Trends extends Model{

	use SoftDeletes;

	protected $table = 'trend';
}