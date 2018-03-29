<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\CourseAbouts;

class CourseAboutController{

	protected $router;

	protected $view;

	protected $courseAbout;
	
	public function __construct(Router $router, Twig $view, CourseAbouts $courseAbout){

		$this->router = $router;
		$this->view = $view;
		$this->courseAbout = $courseAbout;

	}

	public function index(Request $request, Response $response){

		$courseAbouts = $this->courseAbout->where('lang', 'chn')->first();

		$courseAbout = (!empty($courseAbouts->content))? html_entity_decode($courseAbouts->content):'';

		$this->isActive();

		return $this->view->render($response, 'course/about/index.twig',compact('courseAbout'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['origin' => true, 'is_dropdown_about' => true]);
	}

}