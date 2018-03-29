<?php
namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\Links;

class RelatedLinkController{

	protected $router;

	protected $view;

	protected $link;
	
	public function __construct(Router $router, Twig $view, links $link){

		$this->router = $router;
		$this->view = $view;
		$this->link = $link;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';
		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$links = $this->link->where('lang', $locale)->get();

		$this->isActive();

		return $this->view->render($response, 'link/index.twig',compact('links','headerClearFix'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['link' => true]);
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

}