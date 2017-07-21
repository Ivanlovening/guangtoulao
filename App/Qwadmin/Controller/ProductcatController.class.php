<?php 
	namespace Qwadmin\Controller;
	class ProductcatController extends ComController{
		public function add(){
			
			if(IS_POST){
				$model = D('ProductCat');
				if($model->create(I('post.'),1)){
					if($model->add()){
						$this->success('添加成功！',U('lst'));
						exit;
					}else{
						$this->error($model->getError());
					}
				}else{
					$this->error($model->getError());
				}
			}

			$this->display();
		}

		//
		public function edit(){
			$id = I('get.id');
			if(IS_POST){
				$model = D('ProductCat');
				if($model->create(I('post.'),2)){
					if($model->save()!==FALSE){
						$this->success('修改成功！',U('lst'));
					}else{
						$this->error($model->getError());
					}
				}else{
					$this->error($model->getError());
				}
			}

			//取数据
			$model = M('ProductCat');
			$data = $model->find($id);
			$this->assign('data',$data);
			$this->display();
		}

		public function lst(){

			$model = M('ProductCat');
			$data = $model->select();
			$this->assign('data',$data);
			$this->display();
		}

		public function delete(){
			$id = I('get.id');
			$ids = I('post.ids');
			if($id){
				$model = M('ProductCat');
				$picData = $model->field('cat_pic,cat_smpic')->find($id);
				deleteImage($picData);
				$model->delete($id);
				$this->success('删除成功！',U('lst'));
			}else if($ids){
				$model = M('ProductCat');
				$picData = $model->field('cat_pic,cat_smpic')->where("id in $ids")->select();
				foreach ($picData as $k => $v) {
					deleteImage($v);
				}
				$model->where(array('id'=>array('in',$ids)))->delete();
				$this->success('删除成功！',U('lst'));
			}

		}
	}
 ?>