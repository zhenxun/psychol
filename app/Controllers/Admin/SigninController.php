<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Admin\Users;
use Leopard\Models\Admin\Logs;


class SigninController{

	protected $view;

	protected $router;

	protected $flash;

	protected $user;

	protected $log;

	public function __construct(Twig $view, Router $router, Messages $flash, Users $user, Logs $log)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->user = $user;
		$this->log = $log;
	}

	public function index(Request $request, Response $response)
	{

		return $this->view->render($response, 'admin/signin/index.twig');
	}

	public function login(Request $request, Response $response){

		$username = $request->getParam('username');
		$pwd = $request->getParam('pwd');

		if($username!='' && $pwd!= ''){

			$user = $this->user->where('username', $username)->first();

			if($user->password === md5($pwd))
			{
				$clientIP = $this->getClientIp();
				$login_string = date('YmdHis').'_'.$username.'_'.$clientIP ;

				if(!isset($_SESSION['login-hash'] ))
				{
					$_SESSION['user-id'] = $user->id; 
					$_SESSION['login-hash'] = md5($login_string);
				}

				$log = $this->log->create([
					'ip' => $clientIP,
					'session_hash' => $_SESSION['login-hash'],
					'login_time'=> date('Y-m-d H:i:s')
				]);

				return $response->withRedirect($this->router->pathFor('admin.home'));	

			}
			else
			{
				$this->flash->addMessage('error', '帳號或密碼錯誤！');
				return $response->withRedirect($this->router->pathFor('signin.index'));						
			}

		}
		else
		{

			$this->flash->addMessage('error', '帳號或密碼不能空白！');
			return $response->withRedirect($this->router->pathFor('signin.index'));						
		}

	}

	private function getClientIp(){

		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
		   $ip = $_SERVER['HTTP_CLIENT_IP'];
		}else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
		   $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
		   $ip= $_SERVER['REMOTE_ADDR'];
		}

		return $ip;

	}
}