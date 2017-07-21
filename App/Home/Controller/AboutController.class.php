<?php 
namespace Home\Controller;
class AboutController extends BaseController{
	public function about(){

		// $this->assign('关于我们','关于我们','关于我们',array(),array('','about','modernizr','jquery.mobile.custom.min','main'));
		$this->assign('page_title','关于我们');
		$this->assign('page_keywords','关于我们');
		$this->assign('page_description','关于我们');
		$this->assign('page_css',array());
		$this->assign('page_js',array('about','modernizr','jquery.mobile.custom.min','main'));
        $this->display();
	}
}