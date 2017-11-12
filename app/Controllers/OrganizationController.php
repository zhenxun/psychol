<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Organizations;

class OrganizationController{

	protected $router;

	protected $view;

	protected $organization;
	
	public function __construct(Router $router, Twig $view, organizations $organization){

		$this->router = $router;
		$this->view = $view;
		$this->organization = $organization;

	}

	public function index(Request $request, Response $response){

		$organizations = $this->organization->where('lang', 'chn')->first();

		$organization = html_entity_decode($organizations->content);

		return $this->view->render($response, 'organization/index.twig',compact('organization'));

	}
}