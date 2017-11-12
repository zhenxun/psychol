<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\News;
use Leopard\Models\Client\Abouts;
use Leopard\Models\Client\CourseAbouts;
use Leopard\Models\Client\Locations;
use Leopard\Models\Client\Banners;


class HomeController{

	protected $view;

	protected $router;

	protected $news;

	protected $about;

	protected $courseAbout;

	protected $location;

	protected $banner;

	public function __construct(Twig $view, Router $router, News $news, Abouts $about, CourseAbouts $courseAbout, Locations $location, Banners $banner){

		$this->view = $view;
		$this->router = $router;
		$this->news = $news;
		$this->about = $about;
		$this->courseAbout = $courseAbout; 
		$this->location = $location;
		$this->banner = $banner;
	}

	public function index(Request $request, Response $response){

		$banner = $this->banner->orderBy('updated_at','desc')->first();
		$news = $this->news->orderBy('updated_at','desc')->get();
		$about = $this->about->where('lang','chn')->first();
		$courseAbout = $this->courseAbout->where('lang','chn')->first();
		$location = $this->location->where('lang','chn')->first();

		$showAboutContent = html_entity_decode(mb_substr($about->content, 0, 530,'utf8'));
		$showCourseAboutContent = html_entity_decode(mb_substr($courseAbout->content, 0, 474, 'utf8'));

		return $this->view->render($response, 'home.twig', compact('banner','news','showAboutContent', 'showCourseAboutContent','location'));
	}

	
}