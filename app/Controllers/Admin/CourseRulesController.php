<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\CourseRules;

class CourseRulesController{

	protected $view;

	protected $router;

	protected $flash;

	protected $interface;

	protected $courseRule;

	public function __construct(Twig $view, Router $router, Messages $flash, HandlerInterface $interface, CourseRules $courseRule)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->interface = $interface;
		$this->courseRule = $courseRule;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'course.rules.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/rules/index.twig', compact('action_route','data','user'));
	}


	public function search($id, Request $request, Response $response){

		$courseRules_own = $this->courseRule->where('id',$id)->first();

		$data = $this->getAllData();
		$action_route = 'course.rules.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/rules/index.twig', compact('action_route','courseRules_own','data','user'));

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = htmlentities($request->getParam('editor1'));

		if($lang !="" && $content!= "")
		{
			$course_rule = $this->courseRule->create([
				'lang' => $lang,
				'content' => $content
			]);

		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('course.rules.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.rules.index'));
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="" )
		{
			$course_rule_update = $this->courseRule->where('id',$id)->update([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.rules.search',[
				'id' => $id 
			]));			
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.rules.index'));			
		}
	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->courseRule->where('id',$id)->delete();

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
		return $this->courseRule->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['courseRules' => true, 'is_dropdown_course' => true]);
	}
}