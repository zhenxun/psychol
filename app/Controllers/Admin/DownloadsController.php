<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\DownloadAttachments;


class DownloadsController{

	protected $view;

	protected $router;

	protected $flash;

	protected $attachment;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, DownloadAttachments $attachment, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->attachment = $attachment;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'download.create';
		$user = $this->interface->getuserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/attachment/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$attachment_own = $this->attachment->where('id',$id)->first();

		$data = $this->getAllData();
		$action_route = 'download.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/attachment/index.twig', compact('action_route','attachment_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$title = $request->getParam('title');
		$attach = $request->getUploadedFiles();
		$files = $attach['attachement'];
		$filename = $files->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang!='' && $title!=''){

			$uri = $this->getSystemUploadPath().'/downloads/'.$uploadFilename;

			if ($files->getError() === UPLOAD_ERR_OK)
			{
				$files->moveTo($uri);
				$attachment = $this->attachment->create([
					'lang' => $lang,
					'title' => $title,
					'real_filename' => $filename,
					'hash_filename' => $uploadFilename
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('download.index'));				
			}


			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('download.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('download.index'));				
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');		
		$title = $request->getParam('title');
		$attach = $request->getUploadedFiles();
		$files = $attach['attachement'];
		$filename = $files->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];
		$oldRealFile = $request->getParam('old-real-filename');
		$oldHashFile = $request->getParam('old-hash-filename');

	if($lang!='' && $title!=''){

		if(!empty($filename))
		{	
			$uri = $this->getSystemUploadPath().'/downloads/'.$uploadFilename;

			if ($files->getError() === UPLOAD_ERR_OK)
			{
				$files->moveTo($uri);
				$attachment = $this->attachment->where('id',$id)->update([
					'lang' => $lang,
					'title' => $title,
					'real_filename' => $filename,
					'hash_filename' => $uploadFilename
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(文件上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('download.index'));				
			}
		}
		else
		{
			if($oldRealFile!='' && $oldHashFile!='')
			{
				$attachment = $this->attachment->where('id',$id)->update([
					'lang' => $lang,
					'title' => $title,
					'real_filename' => $oldRealFile,
					'hash_filename' => $oldHashFile
				]);
			}
			else
			{
				$this->flash->addMessage('error', '資料填寫不完整');
				return $response->withRedirect($this->router->pathFor('download.index'));								
			}
		}

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('download.search',[
				'id' => $id
			]));

	}
	else
	{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('download.index'));				
	}		

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->attachment->where('id',$id)->delete();

		if($doDel)
		{
			echo 1;
		}
		else
		{
			echo 0;
		}


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


	private function getAllData(){
		return $this->attachment->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['attach' => true]);
	}
}