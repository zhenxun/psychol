<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Banners extends Model{

	use SoftDeletes;

	protected $table = 'banner';

	protected $fillable = [
		'lang',
		'title',
		'sub_title',
		'intro',
		'photo',
		'updated_at',
	];

	protected $dates = ['deleted_at'];	
}