<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;


class CourseAboutController{

	protected $view;

	protected $router;

	protected $flash;

	public function __construct(Twig $view, Router $router, Messages $flash)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
	}

	public function index(Request $request, Response $response)
	{

		//$data = $this->getAllData();
		$action_route = 'course.about.create';

		return $this->view->render($response, 'admin/charter/index.twig', compact('action_route','data'));
	}
}