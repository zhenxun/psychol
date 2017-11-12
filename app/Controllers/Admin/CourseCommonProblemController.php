<?php

namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\CourseCommonProblems;


class CourseCommonProblemController{

	protected $view;

	protected $router;

	protected $flash;

	protected $commonProblem;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, CourseCommonProblems $commonProblem, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->commonProblem = $commonProblem;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'course.common.problem.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/common-problem/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$common_problem_own = $this->commonProblem->where('id',$id)->first();

		$data = $this->getAllData();
		$action_route = 'course.common.problem.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/common-problem/index.twig', compact('action_route','common_problem_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$title = $request->getParam('course-common-problem-title');
		$answer = $request->getParam('course-common-problem-answer');

		if($lang!='' && $title!='' && $answer!=''){

			$commonProblem = $this->commonProblem->create([
				'lang' => $lang,
				'title' => $title,
				'answer' => $answer
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.common.problem.index'));
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.common.problem.index'));						
		}

	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$title = $request->getParam('course-common-problem-title');
		$answer = trim($request->getParam('course-common-problem-answer'));

		if($lang!='' && $title!='' && $answer!=''){

			$commonProblem_update = $this->commonProblem->where('id',$id)->update([
				'lang' => $lang,
				'title' => $title,
				'answer' => $answer
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.common.problem.search',[
				'id' => $id
			]));
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.common.problem.index'));						
		}


	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->commonProblem->where('id',$id)->delete();

		if($doDel)
		{
			echo 1;
		}
		else
		{
			echo 0;
		}

	}

	public function getAllData(){
		return $this->commonProblem->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['courseCommon' => true, 'is_dropdown_course' => true]);
	}
}