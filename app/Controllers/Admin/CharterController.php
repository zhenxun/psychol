<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Charters;


class CharterController{

	protected $view;

	protected $router;

	protected $flash;

	protected $charter;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, Charters $charter, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->charter = $charter;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'about.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/charter/index.twig', compact('action_route','data', 'user'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($lang!="" && $content!="")
		{
			$charter = $this->charter->create([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('charter.index'));
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('charter.index'));			
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="")
		{
			$charter_update = $this->charter->update([
				'lang' => $lang,
				'content' => $content
			]);

			return $response->withRedirect($this->router->pathFor('charter.search',[
				'id' => $id 
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('charter.index'));				
		}

	}

	public function delete($id, Request $request, Response $response)
	{
		$doDel = $this->charter->where('id',$id)->delete();

		if($doDel)
		{
			echo 1;
		}
		else
		{
			echo 0;
		}		
	}

	public function search($id, Request $request, Response $response){

		$charter_own = $this->charter->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'charter.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/charter/index.twig', compact('action_route','charter_own','data','user'));		

	}

	private function getAllData(){
		return $this->charter->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['charter' => true, 'is_dropdown_about' => true]);
	}
}