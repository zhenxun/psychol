<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Banners extends Model{

	use SoftDeletes;

	protected $table = 'banner';

}