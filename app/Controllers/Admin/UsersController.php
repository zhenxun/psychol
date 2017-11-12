<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Users;


class UsersController{

	protected $view;

	protected $router;

	protected $flash;

	protected $user;

	public function __construct(Twig $view, Router $router, Messages $flash, Users $user, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->user = $user;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'users.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/users/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$user_own = $this->user->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'users.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/users/index.twig', compact('action_route','user_own','data','user'));				

	}

	public function create(Request $request, Response $response){

		$name = $request->getParam('name');
		$username = $request->getParam('username');
		$password = md5($request->getParam('pwd'));
		$email = $request->getParam('email');
		$status = $request->getParam('status');
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];


		if($name!='' && $username!='' && $password!='' && $email!= '' && $status!= ''){

			$uri = $this->getSystemUploadPath().'/users/'.$uploadFilename;

			if ($filePhoto->getError() === UPLOAD_ERR_OK)
			{
				$filePhoto->moveTo($uri);
				$photo = $uploadFilename;
			}
			else
			{
				$photo = 'anonymous.png';
			}

			$user = $this->user->create([
				'name' => $name,
				'username' => $username,
				'password' => $password,
				'email' => $email,
				'photo' => $photo,
				'status' => $status
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('users.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('users.index'));			
		}


	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$name = $request->getParam('name');
		$username = $request->getParam('username');
		$password = md5($request->getParam('pwd'));
		$email = $request->getParam('email');
		$status = $request->getParam('status');
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($name!='' && $username!='' && $password!='' && $email!= '' && $status!= ''){

			$uri = $this->getSystemUploadPath().'/users/'.$uploadFilename;

			if ($filePhoto->getError() === UPLOAD_ERR_OK)
			{
				$filePhoto->moveTo($uri);
				$photo = $uploadFilename;
			}
			else
			{
				$photo = 'anonymous.png';
			}

				$user = $this->user->where('id',$id)->update([
					'name' => $name,
					'username' => $username,
					'password' => $password,
					'email' => $email,
					'photo' => $photo,
					'status' => $status
				]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('users.search',[
				'id' => $id
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('users.index'));			
		}

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->user->where('id',$id)->delete();

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
		return $this->user->get();
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

		$this->view->getEnvironment()->addGlobal('active',['users' => true]);
	}


}