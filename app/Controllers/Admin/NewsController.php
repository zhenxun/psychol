<?php

namespace Leopard\Controllers\Admin;

use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;


class NewsController{

	public function index(Request $request, Response $response, Twig $view){

		return $view->render($response, 'admin/news/index.twig');
	}
	
}