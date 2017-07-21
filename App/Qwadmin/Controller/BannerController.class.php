<?php 
	namespace Qwadmin\Controller;
	class BannerController extends ComController{
		public function add(){
			if(IS_POST){
				$model = D('Banner');
				if($model->create(I('post.'),1)){
					if($model->add()){
						$this->success('添加成功！',U('lst'));
						exit;
					}
					else{
						$this->error($model->getError());
					}
				}else{
					$this->error($model->getError());
				}
			}
			$this->display();
		}
		public function lst(){
			$model = M('Banner');
			$data = $model->select();
			// var_dump($data);die;
			$this->assign('data',$data);
			$this->display();
		}
		public function edit(){
			$id = I('get.id');
			if(IS_POST){
				$model = D('Banner');
				if($model->create(I('post.'),2)){
					if($model->save()!==false){
						$this->success('修改成功！',U('lst'));
						exit;
					}else{
						$this->error($model->getError());
					}
				}else
					$this->error($model->getError());
			}
			$model = M('Banner');
			$data = $model->find($id);
			$this->assign('data',$data);
			$this->display();

		}
		public function delete(){
			$id = I('get.id');
			$ids = I('post.ids');
			if($id){
				$model = M('Banner');
				$picData = $model->field('picurl,sm_picurl')->find($id);
				deleteImage($picData);
				$model->delete($id);
				$this->success('删除成功',U('lst'));
			}else if($ids){
				$model = M('Banner');
				$picData = $model->field('picurl,sm_picurl')->where(array('id'=>array('in',$ids)))->select();
				$model->where(array('id'=>array('in',$ids)))->delete();
				foreach($picData as $k=>$v){
					deleteImage($v);
				}
				$this->success('删除成功',U('lst'));
			}
		}
		public function ajaxDelBanner(){
			$id = I('get.id');
			$data = array('ok'=>'0');
			if($id){
				$model = D('Banner');
				$picData = $model->field('picurl,sm_picurl')->find($id);
				deleteImage($picData);
				$model->where("id=$id")->setField('picurl','');
				$model->where("id=$id")->setField('sm_picurl','');
				$data['ok'] = '1';
			}
			echo json_encode($data);
		}
	}
 ?>