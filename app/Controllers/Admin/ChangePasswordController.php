<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Users;


class ChangePasswordController{

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
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/change-password/index.twig',compact('user'));
	}

	public function change(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$pwd = md5($request->getParam('pwd'));
		$confirm_pwd = md5($request->getParam('confirm-pwd'));

		if($pwd!='' && $confirm_pwd!='')
		{
			if($pwd === $confirm_pwd)
			{
				$reset_password = $this->user->where('id',$id)->update([
					'password' => $pwd
				]);

				$this->flash->addMessage('success', '新密碼儲存成功');
				return $response->withRedirect($this->router->pathFor('change.password.index'));				
			}
			else
			{
				$this->flash->addMessage('error', '確認密碼不符！');
				return $response->withRedirect($this->router->pathFor('change.password.index'));			
			}
		}
		else
		{
				$this->flash->addMessage('error', '資料填寫不完整！');
				return $response->withRedirect($this->router->pathFor('change.password.index'));			
		}

	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['changePwd' => true]);
	}
}