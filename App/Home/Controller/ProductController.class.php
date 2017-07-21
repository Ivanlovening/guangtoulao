<?php
namespace Home\Controller;
class ProductController extends BaseController{
	//产品页
	public function product(){
		
		$this->setPageInfo('产品介绍','产品介绍','产品介绍',array(),array());
		$proCatModel = M('ProductCat');
		$proCatData = $proCatModel->field('id,cat_pic,cat_name')->order('id ASC')->select();
		// $catId = I('get.catId',$proCatData['0']['id']);
		// var_dump($catId);die;
		//取出四条数据

		$proModel = M('Product');
		$proData2 = $proModel->field('id,pro_name,logo,logotitle')->where(array('cat_id'=>array('eq',$proCatData['0']['id'])))->order('addtime DESC')->limit('0,4')->select();
		// var_dump($proData2);die;
		$this->assign(array(
			'proData2' => $proData2,
			'proCatData'=>$proCatData
			));
		$this->display();
	}
	//产品详细页
	public function detail(){
		$id = I('get.id');
		//产品
		$proModel = M('Product');
		$proData = $proModel->field('cat_id,pro_name,content,title,keywords,description')->find($id);
		// var_dump($proData);die;
		//产品图片
		$ppModel = M('ProductPics');
		$ppData = $ppModel->field('pic,sm_pic')->where(array('pro_id'=>array('eq',$id)))->limit('0,4')->select();
		//取出相关推荐
		$likeProModel = M('Product');
		$likePro = $likeProModel->field('id,cat_id,sm_logo,logotitle,addtime')->where(array(
				'cat_id' => array('eq',$proData['cat_id']),
				'id' => array('neq',$id)
			))->order('sort ASC')->limit('0,6')->select();
		//配置seo信息
		$this->setPageInfo($proData['title'],$proData['keywords'],$proData['description'],array('slider-pro.min'),array('','jquery.sliderPro.min','jquery.SuperSlide.2.1.1'));
		//显示到页面
		$this->assign(array(
				'proData'=>$proData,
				'ppData' => $ppData,
				'likePro' => $likePro
			));
		$this->display();
	}
	//ajax加载各种类别产品
	public function ajaxGetProduct(){
		$catId = I('get.catId');
		$start = I('get.start');
		$num = I('get.num');
		$num1 = $num+1;
		//产品模型
		$proModel = M('Product');
		$data['info'] = $proModel->field('id,pro_name,logo,logotitle')->where(array('cat_id'=>array('eq',$catId)))->order('addtime DESC')->limit("$start,$num1")->select();
		$count = count($data['info']);
		//设置默认值
		//还有更多
		//有数据
		if($count==$num1){
			$data['ok'] = '1';
			$data['loadMore'] = '1';
			//移除最后一个元素
			array_pop($data['info']);
		}else if($count<=$num&&$count>0){			
			$data['ok'] = '1';
			$data['loadMore'] = '0';
		}else{
			$data['ok'] = '0';
		}
		echo json_encode($data);
		
	}
}
