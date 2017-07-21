<?php 
	namespace Qwadmin\Controller;
	class JoinController extends ComController{
		public function lst(){
			$model = M('Join');
			$count = $model->count();
			$pageSize = 10;
			$page = new \Think\Page($count, $pageSize);
			// 配置翻页的样式
			$page->setConfig('prev', '上一页');
			$page->setConfig('next', '下一页');
			$data['page'] = $page->show();
			$data['data'] = $model->order('addtime DESC')->limit($page->firstRow.','.$page->listRows)->select();
			$this->assign(array(
					'data' => $data['data'],
					'page' => $data['page'],
				));
			$this->display();
		}
		public function delete(){
			$id = I('get.id');
			$ids = I('post.ids');
			if($id){
				$model = M('Join');
				$model->delete($id);
			}else if($ids){
				$model = M('Join');
				$model->where(array('id'=>array('in',$ids)))->delete();
			}
			$this->success('删除成功！',U('lst'));
		}
		//前台提交
		public function add(){
			if(IS_POST){
				$model = D('Join');
				if($model->create(I('post.'),1)){
					if($model->add()!==false){
						$this->success('留言成功',U('Home/Index/join'));
						exit;
					}
				}else{
					$this->error($model->getError());
				}
			}
		}
	}
 ?>