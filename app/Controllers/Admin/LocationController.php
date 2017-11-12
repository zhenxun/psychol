<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Locations;

class LocationController{

	protected $view;

	protected $router;

	protected $flash;

	protected $interface;

	protected $location;

	public function __construct(Twig $view, Router $router, Messages $flash, HandlerInterface $interface, Locations $location)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->interface = $interface;
		$this->location = $location;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'location.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		

		return $this->view->render($response, 'admin/location/index.twig', compact('action_route','data','user'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$map = $request->getUploadedFiles();
		$fileMap = $map['map'];
		$filename = $fileMap->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang !="" && $filename!= "")
		{

			$uri = $this->getSystemUploadPath().'/map/'.$uploadFilename;

			if ($fileMap->getError() === UPLOAD_ERR_OK)
			{
				$fileMap->moveTo($uri);

				$location = $this->location->create([
					'lang' => $lang,
					'map' => $uploadFilename
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('location.index'));				
			}

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('location.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('location.index'));
		}
	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$map = $request->getUploadedFiles();
		$fileMap = $map['map'];
		$filename = $fileMap->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($id!="" && $lang!="" && $filename!="" )
		{
			$uri = $this->getSystemUploadPath().'/map/'.$uploadFilename;

			if ($fileMap->getError() === UPLOAD_ERR_OK)
			{
				$fileMap->moveTo($uri);

				$location_update = $this->location->where('id',$id)->update([
					'lang' => $lang,
					'map' => $uploadFilename
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('location.index'));								
			}

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('location.search',[
				'id' => $id 
			]));			
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('location.index'));			
		}


	}

	public function search($id, Request $request, Response $response)
	{
		$location_own = $this->location->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'location.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/location/index.twig', compact('action_route','location_own','data','user'));
	}

	public function delete($id, Request $request, Response $response)
	{
		$doDel = $this->location->where('id',$id)->delete();

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
		 return $this->location->get();
	}

	private function getSystemUploadPath(){
		if(PHP_OS == 'Darwin' )
		{
			// MAC upload path
			$upload_dir = env('MAC_UPLOAD_PATH');
		}
		else
		{
			//window upload path
			$upload_dir = env('WIN_UPLOAD_PATH');
		}

		return $upload_dir;
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['location' => true]);
	}

}