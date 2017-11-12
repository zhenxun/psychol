<?php

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Leopard\Middleware\AuthMiddleware;

$app->group('', function(){

	$this->get('/',['Leopard\Controllers\HomeController', 'index'])->setName('home');

	$this->get('/news',['Leopard\Controllers\NewsController','index'])->setName('c.news.index');

	$this->get('/news/{id}',['Leopard\Controllers\NewsController', 'search'])->setName('c.news.search');

	$this->get('/about',['Leopard\Controllers\AboutController', 'index'])->setName('c.about.index');

	$this->get('/organization',['Leopard\Controllers\OrganizationController', 'index'])->setName('c.organization.index');

	$this->get('/staff',['Leopard\Controllers\StaffController','index'])->setName('c.staff.index');

	$this->get('/charter',['Leopard\Controllers\CharterController', 'index'])->setName('c.charter.index');
});


$app->group('/admin', function(){
	$this->get('',['Leopard\Controllers\Admin\HomeController', 'index'])->setName('admin.home');

	$this->get('/banner',['Leopard\Controllers\Admin\BannerController', 'index'])->setName('banner.index');

	$this->get('/banner/search/{id}',['Leopard\Controllers\Admin\BannerController', 'search'])->setName('banner.search');

	$this->post('/banner', ['Leopard\Controllers\Admin\BannerController', 'create'])->setName('banner.create');

	$this->post('/banner/update',['Leopard\Controllers\Admin\BannerController', 'update'])->setName('banner.update');

	$this->delete('/banner/{id}',['Leopard\Controllers\Admin\BannerController','delete'])->setName('banner.delete');

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

	$this->get('/charter',['Leopard\Controllers\Admin\CharterController','index'])->setName('charter.index');

	$this->get('/charter/search/{id}',['Leopard\Controllers\Admin\CharterController','search'])->setName('charter.search');

	$this->post('/charter',['Leopard\Controllers\Admin\CharterController','create'])->setName('charter.create');

	$this->post('/charter/update',['Leopard\Controllers\Admin\CharterController','update'])->setName('charter.update');

	$this->delete('/charter/{id}',['Leopard\Controllers\Admin\CharterController','delete'])->setName('charter.delete');

	$this->get('/course/about',['Leopard\Controllers\Admin\CourseAboutController','index'])->setName('course.about.index');

	$this->get('/course/about/search/{id}',['Leopard\Controllers\Admin\CourseAboutController','search'])->setName('course.about.search');

	$this->post('/course/about',['Leopard\Controllers\Admin\CourseAboutController','create'])->setName('course.about.create');

	$this->post('/course/about/update',['Leopard\Controllers\Admin\CourseAboutController','update'])->setName('course.about.update');

	$this->delete('/course/about/{id}',['Leopard\Controllers\Admin\CourseAboutController','delete'])->setName('course.about.delete');

	$this->get('/regulations',['Leopard\Controllers\Admin\CourseRegulationsController','index'])->setName('course.regulations.index');

	$this->get('/regulations/search/{id}',['Leopard\Controllers\Admin\CourseRegulationsController','search'])->setName('course.regulations.search');

	$this->post('/regulations',['Leopard\Controllers\Admin\CourseRegulationsController','create'])->setName('course.regulations.create');

	$this->post('/regulations/update',['Leopard\Controllers\Admin\CourseRegulationsController','update'])->setName('course.regulations.update');

	$this->delete('/regulations/{id}',['Leopard\Controllers\Admin\CourseRegulationsController','delete'])->setName('course.regulations.delete');

	$this->get('/course',['Leopard\Controllers\Admin\CourseController','index'])->setName('course.index');

	$this->get('/course/search/{id}',['Leopard\Controllers\Admin\CourseController','search'])->setName('course.search');

	$this->post('/course',['Leopard\Controllers\Admin\CourseController','create'])->setName('course.create');

	$this->post('/course/update',['Leopard\Controllers\Admin\CourseController','update'])->setName('course.update');

	$this->delete('/course/{id}',['Leopard\Controllers\Admin\CourseController','delete'])->setName('course.delete');

	$this->get('/course/common-problem',['Leopard\Controllers\Admin\CourseCommonProblemController','index'])->setName('course.common.problem.index');

	$this->get('/course/common-problem/search/{id}',['Leopard\Controllers\Admin\CourseCommonProblemController','search'])->setName('course.common.problem.search');

	$this->post('/course/common-problem',['Leopard\Controllers\Admin\CourseCommonProblemController','create'])->setName('course.common.problem.create');

	$this->post('/course/common-problem/update',['Leopard\Controllers\Admin\CourseCommonProblemController','update'])->setName('course.common.problem.update');

	$this->delete('/course/common-problem/{id}',['Leopard\Controllers\Admin\CourseCommonProblemController','delete'])->setName('course.common.problem.delete');

	$this->get('/link',['Leopard\Controllers\Admin\RelatedLinkController','index'])->setName('link.index');

	$this->get('/link/search/{id}',['Leopard\Controllers\Admin\RelatedLinkController','search'])->setName('link.search');

	$this->post('/link',['Leopard\Controllers\Admin\RelatedLinkController','create'])->setName('link.create');

	$this->post('/link/update',['Leopard\Controllers\Admin\RelatedLinkController','update'])->setName('link.update');

	$this->delete('/link/{id}',['Leopard\Controllers\Admin\RelatedLinkController','delete'])->setName('link.delete');

	$this->get('/teachers',['Leopard\Controllers\Admin\TeachersController','index'])->setName('teachers.index');

	$this->get('/teachers/search/{id}',['Leopard\Controllers\Admin\TeachersController','search'])->setName('teachers.search');

	$this->post('/teachers',['Leopard\Controllers\Admin\TeachersController','create'])->setName('teachers.create');

	$this->post('/teachers/update',['Leopard\Controllers\Admin\TeachersController','update'])->setName('teachers.update');

	$this->delete('/teachers/{id}',['Leopard\Controllers\Admin\TeachersController','delete'])->setName('teachers.delete');

	$this->get('/users',['Leopard\Controllers\Admin\UsersController','index'])->setName('users.index');

	$this->get('/users/search/{id}',['Leopard\Controllers\Admin\UsersController','search'])->setName('users.search');

	$this->post('/users',['Leopard\Controllers\Admin\UsersController','create'])->setName('users.create');

	$this->post('/users/update',['Leopard\Controllers\Admin\UsersController', 'update'])->setName('users.update');

	$this->delete('/users/{id}',['Leopard\Controllers\Admin\UsersController','delete'])->setName('users.delete');

	$this->get('/password/change',['Leopard\Controllers\Admin\ChangePasswordController', 'index'])->setName('change.password.index');

	$this->post('/password/change',['Leopard\Controllers\Admin\ChangePasswordController', 'change'])->setName('change.password.renew');

	$this->get('/location',['Leopard\Controllers\Admin\LocationController','index'])->setName('location.index');

	$this->get('/location/search/{id}',['Leopard\Controllers\Admin\LocationController','search'])->setName('location.search');

	$this->post('/location',['Leopard\Controllers\Admin\LocationController', 'create'])->setName('location.create');

	$this->post('/location/update',['Leopard\Controllers\Admin\LocationController', 'update'])->setName('location.update');

	$this->delete('/location/{id}',['Leopard\Controllers\Admin\LocationController','delete'])->setName('location.delete');
})->add(new AuthMiddleware($container->get(Twig::class), $container->get('router'), $container->get(Messages::class)));

$app->get('/admin/signin',['Leopard\Controllers\Admin\SigninController', 'index'])->setName('signin.index');

$app->post('/admin/login',['Leopard\Controllers\Admin\SigninController', 'login'])->setName('signin.login');

$app->get('/admin/signout',['Leopard\Controllers\Admin\SignOutController', 'logout'])->setName('logout');



