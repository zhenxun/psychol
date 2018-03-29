<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Banners;

class BannerController{

	protected $view;

	protected $router;

	protected $flash;

	protected $interface;

	protected $banner;

	public function __construct(Twig $view, Router $router, Messages $flash, HandlerInterface $interface, Banners $banner)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->interface = $interface;
		$this->banner = $banner;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'banner.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		

		return $this->view->render($response, 'admin/banner/index.twig', compact('action_route','data','user'));
	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$title = $request->getParam('title');
		$subTitle = $request->getParam('sub-title');
		$intro = $request->getParam('banner-intro');
		$uri = $request->getParam('url');
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang !="" && $filename!= "")
		{

			$uri = $this->getSystemUploadPath().'/banner/'.$uploadFilename;

			if ($filePhoto->getError() === UPLOAD_ERR_OK)
			{
				$filePhoto->moveTo($uri);

				$banner = $this->banner->create([
					'lang' => $lang,
					'title' => $title,
					'sub_title' => $subTitle,
					'intro' => $intro,
					'url' => $uri,
					'photo' => $uploadFilename
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('banner.index'));				
			}

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('banner.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('banner.index'));
		}
	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$title = $request->getParam('title');
		$subTitle = $request->getParam('sub-title');
		$intro = $request->getParam('banner-intro');
		$uri = $request->getParam('url');
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];
		$oldPhoto = $request->getParam('old-photo');


		if($id!="" && $lang!="")
		{
			if($filename!="")
			{
				$uri = $this->getSystemUploadPath().'/map/'.$uploadFilename;

				if ($filePhoto->getError() === UPLOAD_ERR_OK)
				{
					$filePhoto->moveTo($uri);

					$banner_update = $this->banner->where('id',$id)->update([
						'lang' => $lang,
						'title' => $title,
						'sub_title' => $subTitle,
						'intro' => $intro,
						'url' => $uri,
						'photo' => $uploadFilename
					]);
				}
				else
				{
					$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
					return $response->withRedirect($this->router->pathFor('banner.index'));								
				}
			}
			elseif($oldPhoto!="")
			{
					$banner_update = $this->banner->where('id',$id)->update([
						'lang' => $lang,
						'title' => $title,
						'sub_title' => $subTitle,
						'intro' => $intro,
						'url' => $uri,
						'photo' => $oldPhoto
					]);

			}
			else
			{
				$this->flash->addMessage('error', '必須上傳照片！');
				return $response->withRedirect($this->router->pathFor('banner.index'));					
			}

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('banner.search',[
				'id' => $id 
			]));			
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('banner.index'));			
		}


	}

	public function search($id, Request $request, Response $response)
	{
		$banner_own = $this->banner->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'banner.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/banner/index.twig', compact('action_route','banner_own','data','user'));
	}

	public function delete($id, Request $request, Response $response)
	{
		$doDel = $this->banner->where('id',$id)->delete();

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
		 return $this->banner->get();
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

		$this->view->getEnvironment()->addGlobal('active',['banner' => true]);
	}

}