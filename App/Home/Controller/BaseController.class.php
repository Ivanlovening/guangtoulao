<?php 
namespace Home\Controller;
use \Think\Controller;
class BaseController extends Controller{
	public function __construct(){
			// 先调用父母的构造函数
			parent::__construct();
	}
	//设置网页基本信息
	//标题，关键字，描述，css,js
	public function setPageInfo($title,$keywords,$description,$css,$js){
			$this->assign('page_title',$title);
			$this->assign('page_keywords',$keywords);
			$this->assign('page_description',$description);
			$this->assign('page_css',$css);
			$this->assign('page_js',$js);
	}
}
