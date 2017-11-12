<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Links;


class RelatedLinkController{

	protected $view;

	protected $router;

	protected $flash;

	protected $link;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, Links $link, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->link = $link;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'link.create';
		$user = $this->interface->getuserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/link/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$link_own = $this->link->where('id',$id)->first();

		$data = $this->getAllData();
		$action_route = 'link.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/link/index.twig', compact('action_route','link_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$title = $request->getParam('title');
		$uri = $request->getParam('uri');

		if($lang!='' && $title!='' && $uri !=''){

			$link = $this->link->create([
				'lang' => $lang,
				'title' => $title,
				'uri' => $uri
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('link.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('link.index'));				
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');		
		$lang = $request->getParam('lang');
		$title = $request->getParam('title');
		$uri = $request->getParam('uri');

		if($lang!='' && $title!='' && $uri !=''){

			$link = $this->link->where('id',$id)->update([
				'lang' => $lang,
				'title' => $title,
				'uri' => $uri
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('link.search',[
				'id' => $id
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('link.index'));				
		}		

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->link->where('id',$id)->delete();

		if($doDel)
		{
			echo 1;
		}
		else
		{
			echo 0;
		}


	}

	private function getAllData(){
		return $this->link->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['links' => true]);
	}
}