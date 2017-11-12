<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\CourseTables;


class CourseController{

	protected $view;

	protected $router;

	protected $flash;

	protected $courseTables;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, CourseTables $courseTables, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->courseTables = $courseTables;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'course.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/courses/index.twig', compact('action_route','data','user'));
	}


	public function search($id, Request $request, Response $response){

		$course_own = $this->courseTables->where('id',$id)->first();

		$data = $this->getAllData();
		$action_route = 'course.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/courses/index.twig', compact('action_route','course_own','data','user'));

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$code = $request->getParam('course-code');
		$name = $request->getParam('course-name');
		$credit = $request->getParam('course-credit');
		$notes = $request->getParam('course-notes');

		if($lang!='' && $code != '' && $name != '' && $credit!='')
		{
			$courses = $this->courseTables->create([
				'lang' => $lang,
				'code' => $code,
				'name' => $name,
				'credit' => $credit,
				'notes' => $notes
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.index'));			
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$code = $request->getParam('course_code');
		$name = $request->getParam('course_name');
		$credit = $request->getParam('course_credit');
		$notes = $request->getParam('course_notes');

		if($lang!='' && $code != '' && $name != '' && $credit!='')
		{
			$courses = $this->courseTables->where('id',$id)->update([
				'lang' => $lang,
				'code' => $code,
				'name' => $name,
				'credit' => $credit,
				'notes' => $notes
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.search',[
				'id' => $id
			]));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.index'));			
		}

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->courseTables->where('id',$id)->delete();

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
		return $this->courseTables->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['course' => true, 'is_dropdown_course' => true]);
	}
}