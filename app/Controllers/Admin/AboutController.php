<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Admin\Abouts;


class AboutController{

	protected $view;

	protected $router;

	protected $flash;

	protected $about;

	public function __construct(Twig $view, Router $router, Messages $flash, Abouts $about)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->about = $about;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'about.create';

		return $this->view->render($response, 'admin/about/index.twig', compact('action_route','data'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = htmlentities($request->getParam('editor1'));

		if($lang !="" && $content!= "")
		{
			$about = $this->about->create([
				'lang' => $lang,
				'content' => $content
			]);

		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('about.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('about.index'));
		}
	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="" )
		{
			$about_update = $this->about->where('id',$id)->update([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('about.search',[
				'id' => $id 
			]));			
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('about.index'));			
		}


	}

	public function search($id, Request $request, Response $response)
	{
		$about_own = $this->about->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'about.update';

		return $this->view->render($response, 'admin/about/index.twig', compact('action_route','about_own','data'));
	}

	public function delete($id, Request $request, Response $response)
	{
		$doDel = $this->about->where('id',$id)->delete();

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
		return $this->about->get();
	}

}