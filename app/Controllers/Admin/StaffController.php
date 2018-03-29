<?php
namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Controllers\Admin\Contracts\HandlerInterface;
use Intervention\Image\ImageManager;
use Leopard\Models\Admin\Staff;


class StaffController{

	protected $view;

	protected $router;

	protected $flash;

	protected $staff;

	protected $interface;

	public function __construct(Twig $view, Router $router, Messages $flash, Staff $staff, HandlerInterface $interface, ImageManager $imageResize)
	{
		$this->view = $view;
		$this->router = $router;
		$this->flash = $flash;
		$this->staff = $staff;
		$this->interface = $interface;
		$this->imageResize = $imageResize;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'staff.create';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/staff/index.twig', compact('action_route','data','user'));
	}

	public function search($id, Request $request, Response $response){

		$staff_own = $this->staff->where('id', $id)->first();

		$data = $this->getAllData();
		$action_route = 'staff.update';
		$user = $this->interface->getUserInfo();
		$setActive = $this->is_active();

		return $this->view->render($response, 'admin/staff/index.twig', compact('action_route','staff_own','data','user'));		

	}

	public function create(Request $request, Response $response){

		$lang = $request->getParam('lang');
		$name = $request->getParam('name');
		$email = $request->getParam('email');
		$tel = $request->getParam('tel');
		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];

		if($lang!='' && $name!='' && $email!='' && $tel!='')
		{
			if($filename != '')
			{
				$uri = $this->getSystemUploadPath().'/staffs/'.$uploadFilename;

				if ($filePhoto->getError() === UPLOAD_ERR_OK)
				{
					$filePhoto->moveTo($uri);

					$staff = $this->staff->create([
						'lang' => $lang,
						'name' => $name,
						'email' => $email,
						'tel' => $tel,
						'photo' => $uploadFilename
					]);

					$this->flash->addMessage('success', '資料儲存成功');
					return $response->withRedirect($this->router->pathFor('staff.index'));

				}
				else
				{
					$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
					return $response->withRedirect($this->router->pathFor('staff.index'));					
				}
			}
			else
			{
					$staff = $this->staff->create([
						'lang' => $lang,
						'name' => $name,
						'email' => $email,
						'tel' => $tel,
						'photo' => 'anonymous.png'
					]);	

					$this->flash->addMessage('success', '資料儲存成功');
					return $response->withRedirect($this->router->pathFor('staff.index'));
					
			}			

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('staff.index'));				
		}


	}

	public function update(Request $request, Response $response){

		$id = $request->getParam('update-id');
		$lang = $request->getParam('lang');
		$job = $request->getParam('job');
		$name = $request->getParam('name');
		$email = $request->getParam('email');
		$tel = $request->getParam('tel');
		$hedu = $request->getParam('hedu');
		$ownDep = $request->getParam('own-dep');
		$expertise = $request->getParam('expertise');
 		$labWeb = $request->getParam('lab-web');		
 		$photo = $request->getUploadedFiles();
		$filePhoto = $photo['photo'];
		$filename = $filePhoto->getClientFilename();
		$fileExtension = explode('.', $filename);
		$hash_filename = hash('crc32', $filename);
		$uploadFilename = date('YmdHsi').'_'.$hash_filename.'.'.$fileExtension[1];
		$oldPhoto = $request->getParam('old-photo');

		if($lang!='' && $name!='' && $email!='' && $tel!='')
		{
			if($filename != '')
			{
				$uri = $this->getSystemUploadPath().'/staffs/'.$uploadFilename;

				if ($filePhoto->getError() === UPLOAD_ERR_OK)
				{
					$filePhoto->moveTo($uri);

					$staff = $this->staff->where('id',$id)->update([
						'lang' => $lang,
						'name' => $name,
						'email' => $email,
						'tel' => $tel,
						'photo' => $uploadFilename

					]);

					$this->flash->addMessage('success', '資料儲存成功');
					return $response->withRedirect($this->router->pathFor('staf.search',[
						'id' => $id
					]));

				}
				else
				{
					$this->flash->addMessage('error', '資料儲存失敗！(照片上傳錯誤，請重新嘗試或聯絡管理人員)');
					return $response->withRedirect($this->router->pathFor('staff.index'));					
				}
			}
			else
			{
					$staff = $this->staff->where('id',$id)->update([
						'lang' => $lang,
						'name' => $name,
						'email' => $email,
						'tel' => $tel,
						'photo' => $oldPhoto
					]);

					$this->flash->addMessage('success', '資料儲存成功');
					return $response->withRedirect($this->router->pathFor('staff.search',[
						'id' => $id
					]));

			}			

		}
		else
		{
			$this->flash->addMessage('error', '資料填寫不完整');
			return $response->withRedirect($this->router->pathFor('staff.search',[
				'id' => $id
			]));				
		}


	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->staff->where('id',$id)->delete();

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
		return $this->staff->get();
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

		$this->view->getEnvironment()->addGlobal('active',['staff' => true, 'is_dropdown_members'=> true]);
	}


	private function imageResizer($path, $originalImage, $newImage){

		$originalUri = $path.$originalImage;
		$newUri = $path.$newImage;
		// open an image file
		$img = $this->imageResizer->make($originalUri);

		// now you are able to resize the instance
		$img->resize(320, 240);

		// finally we save the image as a new file
		$img->save($newUri);	

	}



}