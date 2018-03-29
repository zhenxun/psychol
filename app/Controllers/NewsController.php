<?php

namespace Leopard\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Client\News;

class NewsController{

	protected $router;

	protected $view;

	protected $news;
	
	public function __construct(Router $router, Twig $view, News $news){

		$this->router = $router;
		$this->view = $view;
		$this->news = $news;

	}

	public function index(Request $request, Response $response){

		$news = $this->news->orderBy('updated_at', 'desc')->get();

		return $this->view->render($response, 'news/index.twig',compact('news'));

	}

	public function search($id, Request $request, Response $response){

		$new= $this->news->where('id',$id)->first();

		$news[] = $new;

		$search = true;

		return $this->view->render($response, 'news/index.twig',compact('news','search'));
	}
}