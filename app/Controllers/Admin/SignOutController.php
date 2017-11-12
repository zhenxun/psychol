<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Admin\Logs;

class SignOutController{

	protected $router;

	protected $log;

	public function __construct(Router $router, Logs $log)
	{
		$this->router = $router;
		$this->log = $log;
	}

	public function logout(Request $request, Response $response)
	{

		if(isset($_SESSION['login-hash']))
		{
			$session = $_SESSION['login-hash'];
			$logout = $this->log->where('session_hash',$session)->update([
				'logout_time' => date('Y-m-d H:i:s')
			]);

			session_unset();
			session_destroy();
		}

		return $response->withredirect($this->router->pathFor('signin.index'));
	}
}