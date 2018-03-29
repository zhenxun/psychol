<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Develops;

class DevelopController{

	protected $router;

	protected $view;

	protected $develop;
	
	public function __construct(Router $router, Twig $view, Develops $develop){

		$this->router = $router;
		$this->view = $view;
		$this->develop = $develop;

	}

	public function index(Request $request, Response $response){

		$develops = $this->develop->where('lang', 'chn')->first();

		$develop = (!empty($develops))? html_entity_decode($develops->content):'';

		$this->isActive();

		return $this->view->render($response, 'develop/index.twig',compact('develop'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['develop' => true, 'is_dropdown_about' => true]);

	}
}