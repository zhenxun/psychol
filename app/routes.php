<?php

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Leopard\Middleware\AuthMiddleware;
use Leopard\Middleware\LocaleMiddleware;
use Noodlehaus\Config;

$app->group('', function(){

	$this->get('/',['Leopard\Controllers\HomeController', 'index'])->setName('home');

	$this->get('/news',['Leopard\Controllers\NewsController','index'])->setName('c.news.index');

	$this->get('/news/{id}',['Leopard\Controllers\NewsController', 'search'])->setName('c.news.search');

	$this->get('/about',['Leopard\Controllers\AboutController', 'index'])->setName('c.about.index');

	$this->get('/course/about',['Leopard\Controllers\CourseAboutController','index'])->setName('c.course.about.index');

	$this->get('/develop',['Leopard\Controllers\DevelopController', 'index'])->setName('c.about.develop.index');

	$this->get('/trend',['Leopard\Controllers\trendController', 'index'])->setName('c.about.trend.index');

	$this->get('/organization',['Leopard\Controllers\OrganizationController', 'index'])->setName('c.organization.index');

	$this->get('/staff',['Leopard\Controllers\StaffController','index'])->setName('c.staff.index');

	$this->get('/teachers',['Leopard\Controllers\MemberController','index'])->setName('c.teachers.index');

	$this->get('/course/regulations',['Leopard\Controllers\RegulationsController','index'])->setName('c.course.regulation.index');

	$this->get('/downloads',['Leopard\Controllers\DownloadsController','index'])->setName('c.downloads.index');

	$this->get('/common-problem',['Leopard\Controllers\CommonProblemController','index'])->setName('c.common.problem.index');

	$this->get('/links',['Leopard\Controllers\RelatedLinkController','index'])->setName('c.related.link.index');

	$this->get('/course/rules',['Leopard\Controllers\CourseRulesController','index'])->setName('c.course.rules.index');
})->add(new LocaleMiddleware($container->get(Twig::class), $container->get('router'), $container->get('config')));


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

	$this->get('/develop',['Leopard\Controllers\Admin\DevelopController','index'])->setName('develop.index');

	$this->get('/develop/search/{id}',['Leopard\Controllers\Admin\DevelopController','search'])->setName('develop.search');

	$this->post('/develop',['Leopard\Controllers\Admin\DevelopController','create'])->setName('develop.create');

	$this->post('/develop/update',['Leopard\Controllers\Admin\DevelopController','update'])->setName('develop.update');

	$this->delete('/develop/{id}',['Leopard\Controllers\Admin\DevelopController','delete'])->setName('develop.delete');

	$this->get('/trend',['Leopard\Controllers\Admin\TrendController','index'])->setName('trend.index');

	$this->get('/trend/search/{id}',['Leopard\Controllers\Admin\TrendController','search'])->setName('trend.search');

	$this->post('/trend',['Leopard\Controllers\Admin\TrendController','create'])->setName('trend.create');

	$this->post('/trend/update',['Leopard\Controllers\Admin\TrendController','update'])->setName('trend.update');

	$this->delete('/trend/{id}',['Leopard\Controllers\Admin\TrendController','delete'])->setName('trend.delete');

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

	$this->get('/course/rules', ['Leopard\Controllers\Admin\CourseRulesController','index'])->setName('course.rules.index');

	$this->get('/course/rules/search/{id}', ['Leopard\Controllers\Admin\CourseRulesController','search'])->setName('course.rules.search');

	$this->post('/course/rules', ['Leopard\Controllers\Admin\CourseRulesController','create'])->setName('course.rules.create');

	$this->post('/course/rules/update',['Leopard\Controllers\Admin\CourseRulesController','update'])->setName('course.rules.update');

	$this->delete('/course/rules/{id}',['Leopard\Controllers\Admin\CourseRulesController','delete'])->setName('course.rules.delete');

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

	$this->get('/staff',['Leopard\Controllers\Admin\StaffController','index'])->setName('staff.index');

	$this->get('/staff/search/{id}',['Leopard\Controllers\Admin\StaffController','search'])->setName('staff.search');

	$this->post('/staff',['Leopard\Controllers\Admin\StaffController','create'])->setName('staff.create');

	$this->post('/staff/update',['Leopard\Controllers\Admin\StaffController','update'])->setName('staff.update');

	$this->delete('/staff/{id}',['Leopard\Controllers\Admin\StaffController','delete'])->setName('staff.delete');

	$this->get('/department',['Leopard\Controllers\Admin\DepartmentController','index'])->setName('department.index');

	$this->get('/department/search/{id}',['Leopard\Controllers\Admin\DepartmentController','search'])->setName('department.search');

	$this->post('/department',['Leopard\Controllers\Admin\DepartmentController','create'])->setName('department.create');

	$this->post('/department/update',['Leopard\Controllers\Admin\DepartmentController','update'])->setName('department.update');

	$this->delete('/department/{id}',['Leopard\Controllers\Admin\DepartmentController','delete'])->setName('department.delete');

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

	$this->get('/download',['Leopard\Controllers\Admin\DownloadsController','index'])->setName('download.index');

	$this->get('/download/search/{id}',['Leopard\Controllers\Admin\DownloadsController','search'])->setName('download.search');

	$this->post('/download',['Leopard\Controllers\Admin\DownloadsController','create'])->setName('download.create');

	$this->post('/download/update',['Leopard\Controllers\Admin\DownloadsController','update'])->setName('download.update');

	$this->delete('/download/{id}',['Leopard\Controllers\Admin\DownloadsController','delete'])->setName('download.delete');
})->add(new AuthMiddleware($container->get(Twig::class), $container->get('router'), $container->get(Messages::class)));

$app->get('/admin/signin',['Leopard\Controllers\Admin\SigninController', 'index'])->setName('signin.index');

$app->post('/admin/login',['Leopard\Controllers\Admin\SigninController', 'login'])->setName('signin.login');

$app->get('/admin/signout',['Leopard\Controllers\Admin\SignOutController', 'logout'])->setName('logout');



