<?php
namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\CommonProblems;

class CommonProblemController{

	protected $router;

	protected $view;

	protected $commonProblem;
	
	public function __construct(Router $router, Twig $view, CommonProblems $commonProblem){

		$this->router = $router;
		$this->view = $view;
		$this->commonProblem = $commonProblem;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';
		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$commonProblems = $this->commonProblem->where('lang', $locale)->get();

		$this->isActive();

		return $this->view->render($response, 'common-problem/index.twig',compact('commonProblems','headerClearFix'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['commonProblem' => true]);
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

}