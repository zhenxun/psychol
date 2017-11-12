<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Charters;

class CharterController{

	protected $router;

	protected $view;

	protected $charter;
	
	public function __construct(Router $router, Twig $view, Charters $charter){

		$this->router = $router;
		$this->view = $view;
		$this->charter = $charter;

	}

	public function index(Request $request, Response $response){

		$charters = $this->charter->where('lang', 'chn')->first();

		$charter = html_entity_decode($charters->content);

		return $this->view->render($response, 'charter/index.twig',compact('charter'));

	}
}