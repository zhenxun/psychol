<?php

$app->group('', function(){
	$this->get('/',['Leopard\Controllers\HomeController', 'index'])->setName('home');
});


$app->group('/admin', function(){
	$this->get('',['Leopard\Controllers\Admin\HomeController', 'index'])->setName('admin.home');

	$this->get('/news',['Leopard\Controllers\Admin\NewsController','index'])->setName('news.index');
});



