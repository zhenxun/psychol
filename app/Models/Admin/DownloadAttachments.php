<?php

namespace Leopard\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DownloadAttachments extends Model{

	use SoftDeletes;

	protected $table = 'download_attachment';

	protected $fillable = [
		'lang',
		'title',
		'real_filename',
		'hash_filename',
		'updated_at',
	];

	protected $dates = ['deleted_at'];
	
}