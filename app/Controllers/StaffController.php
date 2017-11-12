<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
// use Leopard\Models\Client\staffs;

class StaffController{

	protected $router;

	protected $view;

	// protected $staff;
	
	public function __construct(Router $router, Twig $view){

		$this->router = $router;
		$this->view = $view;
		// $this->staff = $staff;

	}

	public function index(Request $request, Response $response){

		// $staffs = $this->staff->where('lang', 'chn')->first();

		// $staff = html_entity_decode($staffs->content);

		return $this->view->render($response, 'staff/index.twig');

	}
}