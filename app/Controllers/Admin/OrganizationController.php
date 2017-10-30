<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Admin\Organizations;

class OrganizationController{

	protected $view;

	protected $router;

	protected $flash;

	protected $organization;


	public function __construct(Twig $view, Router $router, Messages $flash, Organizations $organization)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->organization = $organization;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'organization.create';

		return $this->view->render($response, 'admin/organization/index.twig', compact('action_route','data'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($lang!="" && $content!="")
		{
			$organization = $this->organization->create([
				'lang' => $lang,
				'content' => $content
			]);

		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('organization.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('organization.index'));			
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="")
		{
			$organization_update = $this->organization->where('id',$id)->update([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('organization.search',[
				'id' => $id
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('organization.index'));	
		}

	}

	public function search($id, Request $request, Response $response){

		$organization_own = $this->organization->where('id',$id)->first();
		$data = $this->getAllData();
		$action_route = 'organization.update';
		return $this->view->render($response, 'admin/organization/index.twig', compact('action_route','organization_own','data'));

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->organization->where('id',$id)->delete();

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
		return $this->organization->get();
	}
}