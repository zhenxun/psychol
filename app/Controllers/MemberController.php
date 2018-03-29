<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Teachers;
use Leopard\Models\Client\Departments;

class MemberController{

	protected $router;

	protected $view;

	protected $member;

	protected $department;
	
	public function __construct(Router $router, Twig $view, Teachers $member, Departments $department){

		$this->router = $router;
		$this->view = $view;
		$this->member = $member;
		$this->department = $department;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';

		$members = $this->member->where('lang', $locale)->orderBy('sort','asc')->get();
		$deps = $this->department->where('lang', $locale)->orderBy('sort','asc')->get();

		$this->isActive();

		return $this->view->render($response, 'member/index.twig',compact('members','deps'));

	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}


	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['teachers' => true, 'is_dropdown_member'=> true]);
	}
}