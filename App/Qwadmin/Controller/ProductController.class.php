<?php 
	namespace Qwadmin\Controller;
	class ProductController extends ComController{
		//添加产品
		public function add(){
			if(IS_POST){
				$model = D('Product');
				if($model->create(I('post.'),1)){
					if($model->add()){
						$this->success('添加成功',U('lst'));
						exit;
					}else{
						$this->error($model->getError());
					}
				}else{
					$this->error($model->getError());
				}
			}

			//取类别
			$pcModel = M('ProductCat');
			$pcData = $pcModel->select();
			//展示
			$this->assign('pcData',$pcData);
			$this->display();
		}
		//修改产品
		public function edit(){
			$id = I('get.id');
			if(IS_POST){
				$model = D('Product');
				if($model->create(I('post.'),2)){
					if($model->save()!== FALSE){
						$this->success('修改成功！',U('lst'));
						exit;
					}else{
						$this->error($model->getError());
					}
				}else{
					$this->error($model->getError());
				}
			}
			//取出分类
			$pcModel = M('ProductCat');
			$pcData = $pcModel->select();

			$proModel = M('Product');
			$proData = $proModel->find($id);

			$ppModel = M('ProductPics');
			$picData = $ppModel->field('id,sm_pic')->where(array('pro_id'=>array('eq',$id)))->select();
			$this->assign(array(
					'pcData' => $pcData,
					'picData' => $picData,
					'proData'=>$proData
				));
			
			$this->display();
		}
		//删除产品
		public function delete(){
			$id = I('get.id');
			$ids = I('post.ids');
			$proModel = M('Product');
			$ppModel = M('ProductPics');
			if($id){
				//删除记录
				$picData = $proModel->field('logo,sm_logo')->find($id);			
				$proModel->delete($id);
				deleteImage($picData);
				//删除四张图
				$picData = $ppModel->field('pic,sm_pic')->where(array('pro_id'=>array('eq',$id)))->select();
				$ppModel->where(array('pro_id'=>array('eq',$id)))->delete();
				foreach ($picData as $k => $v) {
					deleteImage($v);
				}
				$this->success('删除成功！',U('Product/lst'));
			}
			if($ids){
				foreach ($ids as $k => $v) {
					//删除记录
					$picData = $proModel->field('logo,sm_logo')->find($v);
					$proModel->delete($v);
					deleteImage($picData);
					//删除四张图
					$picData = $ppModel->field('pic,sm_pic')->where(array('pro_id'=>array('eq',$v)))->select();
					$ppModel->where(array('pro_id'=>array('eq',$v)))->delete();
					foreach ($picData as $k1 => $v1) {
						deleteImage($v1);
					}
				}
				$this->success('删除成功！',U('Product/lst'));
			}
			
		}
		//产品列表
		public function lst(){
			$model = M('Product');
			$count = $model->alias('a')->count();
			$pageSize = 10;
			$page = new \Think\Page($count, $pageSize);
			// 配置翻页的样式
			$page->setConfig('prev', '上一页');
			$page->setConfig('next', '下一页');
			$data['page'] = $page->show();
			$data['data'] = $model->alias('a')->field('a.id,a.pro_name,a.cat_id,a.sm_logo,a.sort,a.addtime,b.cat_name')->join('left join qw_product_cat b on a.cat_id=b.id')->order('a.sort ASC')->limit($page->firstRow.','.$page->listRows)->select();
			// var_dump($data);die;
			$this->assign(array(
					'data' => $data['data'],
					'page' => $data['page'],
				));
			$this->display();
		}
		//ajax删除图片
		public function ajaxDeletePic(){
			$picId = I('get.picId');
			$data = array(
				'ok' => '0'
				);
			if($picId){
				$ppModel = M('ProductPics');
				$rp = C('IMG_rootPath');
				//删除四张图
				$picData = $ppModel->field('pic,sm_pic')->find($picId);
				$ppModel->delete($picId);
				deleteImage($picData);
				$data['ok'] = '1';
			}
			echo json_encode($data);
		}
	}
	
 ?>