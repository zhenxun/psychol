<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Trends;


class TrendController{

	protected $view;

	protected $router;

	protected $flash;

	protected $trend;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, Trends $trend, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->trend = $trend;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'trend.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/trend/index.twig', compact('action_route','data', 'user'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($lang!="" && $content!="")
		{
			$trend = $this->trend->create([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('trend.index'));
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('trend.index'));			
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="")
		{
			$trend_update = $this->trend->where('id',$id)->update([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功！');
			return $response->withRedirect($this->router->pathFor('trend.search',[
				'id' => $id 
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('trend.index'));				
		}

	}

	public function delete($id, Request $request, Response $response)
	{
		$doDel = $this->trend->where('id',$id)->delete();

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

		$trend_own = $this->trend->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'trend.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/trend/index.twig', compact('action_route','trend_own','data','user'));		

	}

	private function getAllData(){
		return $this->trend->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['trend' => true, 'is_dropdown_about' => true]);
	}
}