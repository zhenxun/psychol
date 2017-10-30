<?php

namespace Leopard\Controllers\Admin;

use Slim\Router;
use Slim\Flash\Messages;
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Leopard\Models\Admin\News;
use Leopard\Models\Admin\NewsAttachment;


class NewsController{

	protected $view;

	protected $router;

	protected $flash;

	protected $news;

	protected $attachment;

	public function __construct(Twig $view, Router $router, News $news, NewsAttachment $attachment, Messages $flash)
	{
		$this->view = $view;
		$this->router = $router;
		$this->news = $news;
		$this->attachment = $attachment;
		$this->flash = $flash;
	}

	public function index(Request $request, Response $response)
	{

		$data = $this->getAllData();
		$action_route = 'news.create';
		
		return $this->view->render($response, 'admin/news/index.twig', compact('data','action_route'));
	}
	

	public function create(Request $request, Response $response){

		$title = $request->getParam('title');
		$content = htmlentities($request->getParam('editor1'));

		$status = ($request->getParam('status') === '1')? true:false;

		$news = $this->news->create([
			'title' => $title,
			'contents' => $content,
			'status' => $status
		]);

		$files = $request->getUploadedFiles();

		$each_file = $files['attach'];

		$count_file = count($each_file);

		if($count_file >= 1 && $each_file[0]->getClientFilename() != "")
		{
			for ($i=0; $i<$count_file; $i++) 
			{ 
					
				$filename = $each_file[$i]->getClientFilename();
				$fileExtension = explode('.', $filename);

				$hash_filename = hash('crc32', $filename);
				$uploadFilename = date('YmdHsi').'_'.$i.'_'.$hash_filename.'.'.$fileExtension[1];

				//window upload path
				$upload_dir_window = env('WINUPLOADPATH');

				$uri = $upload_dir_window.'/news/'.$uploadFilename;

				if ($each_file[$i]->getError() === UPLOAD_ERR_OK)
				{
			 		$each_file[$i]->moveTo($uri);
					$attachment = $news->hasManyAttachment()->create([
						'filename' => $filename,
						'hash_filename' => $uploadFilename
					]);

			    }
			    else
			    {
			 			$message = '文件名稱'. $filename . '上傳失敗('.$each_file[$i]->getError().')';
			 			$this->flash->addMessage('error', $message);
			 			return $response->withRedirect($this->router->pathFor('news.index'));			    	
			    }

			}
		}


		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('news.index'));

	}

	public function update(Request $request, Response $response)
	{
		$id = $request->getParam('update-id');
		$status = ($request->getParam('status') === '1')? true:false;

		$news_update = $this->news->where('id',$id)->update([
			'title'=>$request->getParam('title'),
			'contents'=>$request->getParam('editor1'),
			'status'=>$status,
			'updated_at'=>date("Y-m-d H:i:s")
		]);

		$files = $request->getUploadedFiles();

		$uploadFile = $this->uploadFile($files,'attach',$id);

		$this->flash->addMessage('success', '資料儲存成功');
		return $response->withRedirect($this->router->pathFor('new.search',[
			'id' => $id
		]));		
	}

	public function delete($id, Request $request, Response $response){

		$doDel = $this->news->where('id',$id)->delete();

		if($doDel)
		{
			$doAttachDel = $this->attachment->where('news_id',$id)->delete();
			if($doAttachDel)
			{
				echo 1;
			}
			
		}
		else
		{
			echo 0;
		}	

	}

	public function fileDelete($id, Request $request, Response $response){

		$doDel = $this->attachment->where('id',$id)->delete();

		if($doDel)
		{
			echo 1;
		}
		else
		{
			echo 0;
		}		
	}

	public function search($id, Request $request, Response $response){

		$news = $this->news->where('id',$id)->first();
		$numAttachment = $this->attachment->where('news_id',$id)->count();
		$attachment = $this->attachment->where('news_id',$id)->get();

		$data = $this->getAllData();
		$action_route = 'news.update';

		return $this->view->render($response, 'admin/news/index.twig', compact('action_route','news','numAttachment','attachment','data'));
	}


	private function getAllData(){

		$news_all = $this->news->get();

		foreach ($news_all as $new) {
			$id = $new->id;
			$numOfAttachment = $this->attachment->where('news_id',$id)->count();
			$data[] = array(
				'newsid' => $new->id,
				'title' => $new->title,
				'content' => $new->contents,
				'status' => $new->status,
				'attachNum' => $numOfAttachment,
				'updated_at' => $new->updated_at
			);
		}

		return $data;		
	} 


	private function uploadFile($files,$name,$save_id){
		$each_file = $files[$name];

		$count_file = count($each_file);

		if($count_file >= 1 && $each_file[0]->getClientFilename() != "")
		{
			for ($i=0; $i<$count_file; $i++) 
			{ 
					
				$filename = $each_file[$i]->getClientFilename();
				$fileExtension = explode('.', $filename);

				$hash_filename = hash('crc32', $filename);
				$uploadFilename = date('YmdHsi').'_'.$i.'_'.$hash_filename.'.'.$fileExtension[1];

				//window upload path
				$upload_dir_window = env('WINUPLOADPATH');

				$uri = $upload_dir_window.'/news/'.$uploadFilename;

				if ($each_file[$i]->getError() === UPLOAD_ERR_OK)
				{
			 		$each_file[$i]->moveTo($uri);
					$attachment = $this->attachment->create([
						'news_id' => $save_id,
						'filename' => $filename,
						'hash_filename' => $uploadFilename
					]);

			    }
			    else
			    {
			 			$message = '文件名稱'. $filename . '上傳失敗('.$each_file[$i]->getError().')';
			 			$this->flash->addMessage('error', $message);
			 			return $response->withRedirect($this->router->pathFor('news.index'));			    	
			    }

			}
		}

		return true;
	}
}