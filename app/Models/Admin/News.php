<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Leopard\Models\Admin\NewsAttachment;

class News extends Model{

	use SoftDeletes;

	protected $table = 'news';

	protected $fillable = [
		'title',
		'contents',
		'status',
		'updated_at',
	];

	protected $dates = ['deleted_at'];

	public function hasManyAttachment(){

    	return $this->hasMany(NewsAttachment::class);
    }
	
}