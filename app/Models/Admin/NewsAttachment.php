<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Leopard\Models\Admin\News;

class NewsAttachment extends Model{

	use SoftDeletes;

	protected $table = 'news_attachemnt';

	protected $fillable = [
		'news_id',
		'filename',
		'hash_filename',
		'location',
	];

	protected $dates = ['deleted_at'];

 	public function belongsToNews(){

    	return $this->belongsTo(News::class);
    }
	
}