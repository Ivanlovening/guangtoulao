<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/2
 * Time: 11:44
 */
namespace Home\Controller;
class JoinController extends BaseController{
	public function join(){
		if(IS_POST){
			$model = D('Qwadmin/Model/Join');
			 // var_dump($model);die;
			if($data=$model->create(I('post.'),1)){
				$data['addtime'] = time();
				if($model->add($data)){
					$this->success('留言提交成功，我们会尽快查看',U('Home/Join/join'));
					exit;
				}else{
					$this->error($model->getError());
				}
			}else{
				$this->error($model->getError());
			}
		}
		$this->setPageInfo('加入我们','加入我们','加入我们',array(),array('formyz','join','Area'));
		$this->display();
	}
}