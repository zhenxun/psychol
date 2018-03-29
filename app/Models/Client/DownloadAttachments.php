<?php

namespace Leopard\Models\Client;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DownloadAttachments extends Model{

	use SoftDeletes;

	protected $table = 'download_attachment';
	
}