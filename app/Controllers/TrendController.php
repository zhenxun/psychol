<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Trends;

class TrendController{

	protected $router;

	protected $view;

	protected $trend;
	
	public function __construct(Router $router, Twig $view, Trends $trend){

		$this->router = $router;
		$this->view = $view;
		$this->trend = $trend;

	}

	public function index(Request $request, Response $response){

		$trends = $this->trend->where('lang', 'chn')->first();

		$trend = html_entity_decode($trends->content);

		$this->isActive();

		return $this->view->render($response, 'trend/index.twig',compact('trend'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['trend' => true, 'is_dropdown_about' => true]);
	}


}