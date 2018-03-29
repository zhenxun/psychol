<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\CourseRules;

class CourseRulesController{

	protected $router;

	protected $view;

	protected $courseAbout;
	
	public function __construct(Router $router, Twig $view, CourseRules $courseRule){

		$this->router = $router;
		$this->view = $view;
		$this->courseRule = $courseRule;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';
		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$courseRules = $this->courseRule->where('lang', $locale)->first();

		$courseRule = (!empty($courseRules->content))? html_entity_decode($courseRules->content):'';

		$this->isActive();

		return $this->view->render($response, 'course/rules/index.twig',compact('courseRule'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['rules' => true, 'is_dropdown_course' => true]);
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}
}