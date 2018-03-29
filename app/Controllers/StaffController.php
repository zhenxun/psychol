<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Staff;

class StaffController{

	protected $router;

	protected $view;

	protected $staff;
	
	public function __construct(Router $router, Twig $view, Staff $staff){

		$this->router = $router;
		$this->view = $view;
		$this->staff = $staff;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';

		$staffs = $this->staff->where('lang', $locale)->get();

		$this->isActive();

		return $this->view->render($response, 'staff/index.twig', compact('staffs'));

	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

	private function isActive(){

		$this->view->getEnvironment()->addGlobal('active',['staff' => true, 'is_dropdown_member'=> true]);
	}
}