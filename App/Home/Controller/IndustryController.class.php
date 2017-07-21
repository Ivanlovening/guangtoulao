<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/2
 * Time: 11:44
 */
namespace Home\Controller;
class IndustryController extends BaseController{
	public function news(){
		$con = CONTROLLER_NAME;
		//取出分类的标题，关键字，描述
		$CatModel = M('Category');
		$IndustryCatData = $CatModel->field('id,seotitle,keywords,description')->where(array('dir'=>array('eq',$con)))->find();
		$this->setPageInfo($IndustryCatData['seotitle'],$IndustryCatData['keywords'],$IndustryCatData['description'],array(),array());
		//取出文章信息
		$articleModel = M('Article');
		$articleData = $articleModel->field('aid,title,keywords,description,thumbnail,t')->where(array('sid'=>array('eq',$IndustryCatData['id'])))->order('t DESC')->limit('0,3')->select();
		//取出轮播图
	    $bannerModel = M('Banner');
	    $banner = $bannerModel->field('picurl')->select();
	    $this->assign(array(
	    		'banner' => $banner,
	    		'IndustryCatData'=>$IndustryCatData,
	    		'article'=>$articleData
	    	));
		$this->display();
	}
	public function article(){
		$id = I('get.id');
		if(!$id)
			$this->error('访问错误,请检查路径！');

		$articleModel = M('Article');
		//获取访问的ip，查找是否已经访问过 read_ip
		$ip = $_SERVER['REMOTE_ADDR'];
		$readIp = $articleModel->field('read_ip')->find($id);
		//空数组存储最后的总的ip
		$arr = array();
		if(!in_array($ip, explode(',', $readIp['read_ip']))){
			if(!empty($readIp['read_ip'])){
				$arr[] = $readIp['read_ip'];
				var_dump($arr);die;								
			}	
			$arr[] = $ip;
			$arr = implode(',', $arr);
			$articleModel->where("aid=$id")->setInc('n');
			$articleModel->where("aid=$id")->setField('read_ip',$arr);		
		}			
		//取出该文章的信息		
		$articleData = $articleModel->field('aid,sid,title,seotitle,keywords,description,content,t,n')->find($id);
		//页面设置
		$this->setPageInfo($articleData['seotitle'],$articleData['keywords'],$articleData['description'],array(),array());
		//获取该类别其他文章
		$articleOther = $articleModel->field('aid,title,t')->where(array('sid'=>array('eq',$articleData['sid'])))->order('t DESC')->limit('0,8')->select();
		//处理数据取出上一条和下一条
		foreach ($articleOther as $k => $v) {
			if($v['aid']==$id){
				$preData = $articleOther[$k-1]?$articleOther[$k-1]:'';
				$nextData = $articleOther[$k+1]?$articleOther[$k+1]:'';
			}
		}
		//取出新闻
		$CatModel = M('Category');
		$NewsCatData = $CatModel->field('id')->where(array('dir'=>array('eq','News')))->find();
		$articleNews = $articleModel->field('aid,title,t')->where(array('sid'=>array('eq',$NewsCatData['id'])))->order('t DESC')->limit('0,8')->select();
		$this->assign(array(
				'articleData' => $articleData,
				'articleOther'=>$articleOther,
				'articleNews' =>$articleNews,
				'preData' =>$preData,
				'nextData' => $nextData
			));
		$this->display();
	}
	//ajax获取数据
	public function ajaxAticleList(){
		$sid = I('get.sid');
		$num = I('get.num');
		$start = I('get.start');
		$num1 = $num+1;
		//取出文章信息
		$articleModel = M('Article');
		$articleData['info'] = $articleModel->field('aid,title,keywords,description,thumbnail,t')->where(array('sid'=>array('eq',$sid)))->order('t DESC')->limit("$start,$num1")->select();
		$count = count($articleData['info']);
		if($count==$num1){
			$articleData['status'] = '1';
			$articleData['loadMore'] = '1';
			//移除最后一个元素
			array_pop($articleData['info']);
		}else if($count<=$num&&$count>0){			
			$articleData['status'] = '1';
			$articleData['loadMore'] = '0';
		}else{
			$articleData['status'] = '0';
		}
		echo json_encode($articleData);
	}
}