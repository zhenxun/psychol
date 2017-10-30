<?php

$app->group('', function(){
	$this->get('/',['Leopard\Controllers\HomeController', 'index'])->setName('home');
});


$app->group('/admin', function(){
	$this->get('',['Leopard\Controllers\Admin\HomeController', 'index'])->setName('admin.home');

	$this->get('/news',['Leopard\Controllers\Admin\NewsController','index'])->setName('news.index');

	$this->get('/news/search/{id}',['Leopard\Controllers\Admin\NewsController','search'])->setName('new.search');

	$this->post('/news',['Leopard\Controllers\Admin\NewsController','create'])->setName('news.create');

	$this->post('/news/update',['Leopard\Controllers\Admin\NewsController','update'])->setName('news.update');

	$this->delete('/news/{id}',['Leopard\Controllers\Admin\NewsController','delete'])->setName('news.delete');

	$this->delete('/news/file/{id}',['Leopard\Controllers\Admin\NewsController','fileDelete'])->setName('news.file.delete');

	$this->get('/about',['Leopard\Controllers\Admin\AboutController','index'])->setName('about.index');

	$this->post('/about',['Leopard\Controllers\Admin\AboutController','create'])->setName('about.create');

	$this->post('/about/update',['Leopard\Controllers\Admin\AboutController','update'])->setName('about.update');

	$this->get('/about/search/{id}',['Leopard\Controllers\Admin\AboutController','search'])->setName('about.search');

	$this->delete('/about/{id}',['Leopard\Controllers\Admin\AboutController','delete'])->setName('about.delete');

	$this->get('/organization',['Leopard\Controllers\Admin\OrganizationController','index'])->setName('organization.index');

	$this->get('/organization/search/{id}',['Leopard\Controllers\Admin\OrganizationController','search'])->setName('organization.search');

	$this->post('/organization',['Leopard\Controllers\Admin\OrganizationController','create'])->setName('organization.create');

	$this->post('/organization/update',['Leopard\Controllers\Admin\OrganizationController','update'])->setName('organization.update');

	$this->delete('/organization/{id}',['Leopard\Controllers\Admin\OrganizationController','delete'])->setName('organization.delete');

});



