<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Teachers;


class TeachersController{

	protected $view;

	protected $router;

	protected $flash;

	protected $teacher;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, Teachers $teacher, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->teacher = $teacher;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'teachers.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/teachers/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$teacher_own = $this->teacher->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'teachers.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/teachers/index.twig', compact('action_route','teacher_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$name = $request->getParam('name');
		$email = $request->getParam('email');
		$tel = $request->getParam('tel');
		$labWeb = $request->getParam('lab-web');
		$introduce = htmlspecialchars($request->getParam('introduce'));
		$publication = htmlspecialchars($request->getParam('publication'));
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang!='' && $name!='' && $email!='' && $tel!='' && $filename!='')
		{
			$uri = $this->getSystemUploadPath().'/teachers/'.$uploadFilename;

			if ($filePhoto->getError() === UPLOAD_ERR_OK)
			{
				$filePhoto->moveTo($uri);

				$teacher = $this->teacher->create([
					'lang' => $lang,
					'name' => $name,
					'email' => $email,
					'tel' => $tel,
					'lab_web' => $lab_web,
					'photo' => $uploadFilename,
					'introduce' => $introduce,
					'publications' => $publication
				]);

				$this->flash->addMessage('success', '資料儲存成功');
				return $response->withRedirect($this->router->pathFor('teachers.index'));

			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('teachers.index'));					
			}			

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('teachers.index'));				
		}


	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$name = $request->getParam('name');
		$email = $request->getParam('email');
		$tel = $request->getParam('tel');
		$labWeb = $request->getParam('lab-web');
		$introduce = htmlspecialchars($request->getParam('introduce'));
		$publication = htmlspecialchars($request->getParam('publication'));
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang!='' && $name!='' && $email!='' && $tel!='' && $filename!='')
		{
			$uri = $this->getSystemUploadPath().'/teachers/'.$uploadFilename;

			if ($filePhoto->getError() === UPLOAD_ERR_OK)
			{
				$filePhoto->moveTo($uri);

				$teacher = $this->teacher->where('id',$id)->update([
					'lang' => $lang,
					'name' => $name,
					'email' => $email,
					'tel' => $tel,
					'lab_web' => $lab_web,
					'photo' => $uploadFilename,
					'introduce' => $introduce,
					'publications' => $publication
				]);

				$this->flash->addMessage('success', '資料儲存成功');
				return $response->withRedirect($this->router->pathFor('teachers.index'));

			}
			else
			{
				$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
				return $response->withRedirect($this->router->pathFor('teachers.index'));					
			}			

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('teachers.search',[
				'id' => $id
			]));				
		}


	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->teacher->where('id',$id)->delete();

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
		return $this->teacher->get();
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

		$this->view->getEnvironment()->addGlobal('active',['teachers' => true]);
	}


}