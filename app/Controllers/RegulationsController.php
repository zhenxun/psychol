<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\CourseRegulations;

class RegulationsController{

	protected $router;

	protected $view;

	protected $courseRegulation;
	
	public function __construct(Router $router, Twig $view, CourseRegulations $courseRegulation){

		$this->router = $router;
		$this->view = $view;
		$this->courseRegulation = $courseRegulation;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';

		$courseRegulations = $this->courseRegulation->where('lang', $locale)->first();

		$courseRegulation = (!empty($courseRegulations->content))? html_entity_decode($courseRegulations->content):'';

		return $this->view->render($response, 'course/regulation/index.twig',compact('courseRegulation'));

	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['courseRegulations' => true]);
	}


}