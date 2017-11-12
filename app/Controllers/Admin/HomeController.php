<?php

namespace Leopard\Controllers\Admin;

use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;

class HomeController{

	public function __construct(HandlerInterface $interface){
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response, Twig $view){

		$user = $this->interface->getUserInfo();

		return $view->render($response, 'admin/home.twig', compact('user'));
	}
	
}