<?php
namespace Home\Controller;
class IndexController extends BaseController{
//    首页
    public function index(){
	    
	    $title = '光头佬联圣总部唯一指定官网';
	    $keywords = '光头佬联圣,光头佬水晶饺,光头佬招商加盟,光头佬水晶饺加盟,水晶饺加盟';
	    $description = '光头佬联圣拥有一支从事多年点心食品行业资深人士的研发团队，专门对点心产品款式、原料进行研发和调整，不断引进顶级点心技术，打造亲民的健康时尚点心品牌。';
	    $this->setPageInfo($title,$keywords,$description,array(),array('idangerous.swiper2.7.6.min','bootstrap.min','produce'));
	    //取出轮播图
	    $bannerModel = M('Banner');
	    $banner = $bannerModel->field('picurl')->select();
	    //产品推荐的，获取最新的产品的logo id 5条
	    $productModel = M('Product');
	    $productData  = $productModel->field('id,logo')->order('addtime DESC')->limit('0,5')->select();
	    //取新闻活动文章的 aid thumbnail title activity_time 5条
	    $article = M('Article');
	    $articleNews = $article->field('aid,thumbnail,title,seotitle,activity_time')->where(array('dir'=>array('eq','News')))->order('t DESC')->limit('0,5')->select();
	    //取出资讯的aid title t 8条
	    $articleIndustry = $article->field('aid,title,t')->where(array('dir'=>array('eq','Industry')))->order('t DESC')->limit('0,8')->select();
	    //取出友情链接
	    $linkModel = M('Links');
	    $link = $linkModel->field('title,url')->select();
	    $this->assign(array(
	    		'articleNews' => $articleNews,
	    		'articleIndustry' =>$articleIndustry,
	    		'productData'=>$productData,
	    		'banner' => $banner,
	    		'link'=>$link
	    	));
	    $this->display();
    }

    
}