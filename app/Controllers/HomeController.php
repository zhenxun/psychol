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

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';

		$banner = $this->banner->orderBy('updated_at','desc')->first();
		$news = $this->news->orderBy('updated_at','desc')->get();
		$about = $this->about->where('lang', $locale)->first();
		$courseAbout = $this->courseAbout->where('lang', $locale)->first();
		$location = $this->location->where('lang', $locale)->first();

		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$showAboutContent = (!empty($about->content))? html_entity_decode(mb_substr($about->content, 0, 530,'utf8')):'';
		$showCourseAboutContent = (!empty($courseAbout->content))? html_entity_decode(mb_substr($courseAbout->content, 0, 474, 'utf8')):'';

		return $this->view->render($response, 'home.twig', compact('banner','news','showAboutContent', 'showCourseAboutContent','location','headerClearFix'));
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}
	
}