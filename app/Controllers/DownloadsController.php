<?php
namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\DownloadAttachments;

class DownloadsController{

	protected $router;

	protected $view;

	protected $attachment;
	
	public function __construct(Router $router, Twig $view, DownloadAttachments $attachment){

		$this->router = $router;
		$this->view = $view;
		$this->attachment = $attachment;

	}

	public function index(Request $request, Response $response){

		$locale = ($this->getLocale() == 'en')? 'eng':'chn';
		$headerClearFix = ($locale == 'eng')? '<br>':'';

		$attachments = $this->attachment->where('lang', $locale)->get();

		$this->isActive();

		return $this->view->render($response, 'downloads/index.twig',compact('attachments','headerClearFix'));

	}

	private function isActive(){
		$this->view->getEnvironment()->addGlobal('active',['downloads' => true]);
	}

	private function getLocale(){
		if(isset($_SESSION['lang']))
		{
			return $_SESSION['lang'];
		}		
	}

}