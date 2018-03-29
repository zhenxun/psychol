<?php

namespace Leopard\Middleware;

use Slim\Router;
use Slim\Views\Twig;
use Slim\Flash\Messages;

class AuthMiddleware{
	
	protected $view;

	protected $flash;

	protected $router;

	public function __construct(Twig $view, Router $router, Messages $flash){

		$this->router = $router;
		$this->view = $view;
		$this->flash = $flash;

	}

	public function __invoke($request, $response, $next){

		if(isset($_SESSION['login-hash']))
		{
			$this->view->getEnvironment()->addGlobal('login-token', $_SESSION['login-hash']);
			$response = $next($request, $response);
		}
		else
		{
			$basepath = $request->getUri()->getBasePath();
			$uri = $basepath. '/admin/signin';
			$response = $response->withRedirect($uri);
		}

		return $response;

	}
}