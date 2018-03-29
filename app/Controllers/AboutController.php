<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Abouts;

class AboutController{

	protected $router;

	protected $view;

	protected $about;
	
	public function __construct(Router $router, Twig $view, Abouts $about){

		$this->router = $router;
		$this->view = $view;
		$this->about = $about;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';
		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$abouts = $this->about->where('lang', 'chn')->first();

		$about = (!empty($abouts))? html_entity_decode($abouts->content):'';

		$this->isActive();

		return $this->view->render($response, 'about/index.twig',compact('about','headerClearFix'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['intro' => true, 'is_dropdown_about' => true]);
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

}