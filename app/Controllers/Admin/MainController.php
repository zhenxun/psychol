<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\Users;


class MainController implements HandlerInterface{

	protected $user;

	public function __construct(){

		$this->user = new Users;
	}

	public function getUserInfo()
	{
		$user = $this->user->where('id', $_SESSION['user-id'])->first();

		return $user;
	}

}