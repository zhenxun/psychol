<?php

namespace Leopard\Middleware;

use Slim\Router;
use Slim\Views\Twig;
use Noodlehaus\Config; 

class LocaleMiddleware{
	
	protected $view;

	protected $router;

	public function __construct(Twig $view, Router $router, Config $config){

		$this->router = $router;
		$this->view = $view;
		$this->config = $config;
	}

	public function __invoke($request, $response, $next){

		$getlocale = $request->getQueryParam('lang');

		$locale = (!empty($getlocale))? $getlocale:$this->config->get('config.locale');

		if(!isset($_SESSION['lang']))
		{
			$_SESSION['lang'] = $locale;
			$this->view->getEnvironment()->addGlobal('locale', $locale);
			
		}

		$response = $next($request, $response);

		return $response;

	}
}