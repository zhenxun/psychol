<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Leopard\Models\Admin\CourseAbouts;


class CourseAboutController{

	protected $view;

	protected $router;

	protected $flash;

	protected $courseAbout;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, CourseAbouts $courseAbout, HandlerInterface $interface)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->courseAbout = $courseAbout;
		$this->interface = $interface;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'course.about.create';
		$user = $this->interface->getUserInfo(); 
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/about/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$courseAbout_own = $this->courseAbout->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'course.about.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();
		return $this->view->render($response, 'admin/course/about/index.twig', compact('action_route','courseAbout_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($lang !="" && $content!= "")
		{
			$course_about = $this->courseAbout->create([
				'lang' => $lang,
				'content' => $content
			]);

		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('course.about.index'));

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.about.index'));
		}


	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$content = $request->getParam('editor1');

		if($id!="" && $lang!="" && $content!="" )
		{
			$course_about_update = $this->courseAbout->where('id',$id)->update([
				'lang' => $lang,
				'content' => $content
			]);

			$this->flash->addMessage('success', '資料儲存成功');
			return $response->withRedirect($this->router->pathFor('course.about.search',[
				'id' => $id 
			]));			
		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('course.about.index'));			
		}

	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->courseAbout->where('id',$id)->delete();

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
		return $this->courseAbout->get();
	}

	private function is_active(){

		$this->view->getEnvironment()->addGlobal('active',['courseAbout' => true, 'is_dropdown_course' => true]);
	}
}