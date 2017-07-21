<?php 
	return array(
		'HTML_CACHE_ON' => false,//开启静态缓存
		'HTML_CACHE_TIME' => 60,//静态缓存有效期（秒）
		'HTML_CACHE_SUFFIX' => '.html',//静态缓存文件后缀
		/*为前台每个页面单独配置缓存*/
		'HTML_CACHE_RULES' => array(
			//为首页生成一个1小时的缓存页面，页面名叫index.html
				'Index:index' => array('index',3600),
				'About:about' => array('about',3600),
				'Join:join' => array('join',3600),
				'News:article' => array('article{id|goodsdir}/article_{id}',3600),
				'Industry:article' => array('article{id|goodsdir}/article_{id}',3600),
				'Product:detail' => array('product{id|goodsdir}/product_{id}',3600)
			),
		'DEFAULT_CONTROLLER' => 'Index',//默认控制器
		'DEFAULT_ACTION' => 'index',//默认动作
		'URL_HTML_SUFFIX' => '.html',//url后缀,
		//定义路由规则
		'URL_ROUTER_ON'   => true,
		'URL_ROUTE_RULES' => array(
			    'huodong/:id\d' => array('News/article'),
			    'zixun/:id\d' =>array('Industry/article'),
			    'product/:id\d' => array('Product/detail'),
			    'about' => array('About/about'),
			    'product' => array('Product/product'),
			    'huodong' => array('News/news'),
			    'zixun' => array('Industry/news'),
			    'join' => array('Join/join'),
			    'ajaxGetProduct/:catId\d/:start\d/:num\d' => array('Product/ajaxGetProduct'),
		), 

	);
	function goodsdir($id){
		return ceil($id/50);
	}

