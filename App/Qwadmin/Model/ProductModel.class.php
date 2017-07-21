<?php 
	namespace Qwadmin\Model;
	use think\Model;
	class ProductModel extends Model{
		//插入接受的字段
		protected $insertFileds = array('pro_name','cat_id','logo','title','keywords','description','logotitle','content','pic','sort');
		//更新时接受字段
		protected $updateFileds = array('id','pro_name','cat_id','logo','title','keywords','description','logotitle','content','pic','sort');
		//规则(第四个阐述代表1为必须验证，2不为空才验证，0为存在字段就验证（默认）)
		protected $_validate = array(

				array('pro_name','require','产品名称不能为空',1,'regex',3),
				array('pro_name','1,50','名称最长不超过50个字符',1,'length',3),
				array('cat_id','number','类型必须是整数',2,'regex',3),
				array('title','1,50','标题最长不超过50个字符',2,'length',3),
				array('keywords','1,150','关键字最长不超过150个字符',2,'length',3),
				array('description','1,300','描述最长不超过300个字符',2,'length',3),
				array('logotitle','1,50','图片标题最长不超过50个字符',2,'length',3),
				array('sort','number','排序必须是一个整数',2,'regex',3)
			);
		/***************************************/
		//插入前执行
		protected function _before_insert(&$data,$option){
			$data['addtime'] = time();
			//生成缩略图
			//处理logo图片
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] == 0)
			{
				$ret = uploadOne('logo', 'Product_logo', array(
					array(150, 150),
				));
				if($ret['ok'] == 1)
				{
					$data['logo'] = $ret['images'][0];
					$data['sm_logo'] = $ret['images'][1];
				}
				else 
				{
					$this->error = $ret['error'];
					return FALSE;
				}
			}

		}
		//插入后执行
		protected function _after_insert($data,$option){

			/************************处理四张产品图片*************************/
			// 判断有没有图片
			if(hasImage('pics')){
				$ppModel = M('ProductPics');
				// 批量上传之后的图片数组，改造成每个图片一个一维数组的形式
				$pics = array();
				foreach ($_FILES['pics']['name'] as $k => $v)
				{
					if($_FILES['pics']['size'][$k] == 0)
						continue ;
					$pics[] = array(
						'name' => $v,
						'type' => $_FILES['pics']['type'][$k],
						'tmp_name' => $_FILES['pics']['tmp_name'][$k],
						'error' => $_FILES['pics']['error'][$k],
						'size' => $_FILES['pics']['size'][$k],
					);
				}
				// 在后面调用uploadOne方法时会使用$_FILES数组上传图片，所以我们要把我们处理好的数组赎给$_FILES这样上传时使用的就是我们处理好的数组
				$_FILES = $pics;
				// 循环每张图片一个一个的上传
				foreach ($pics as $k => $v)
				{
					$ret = uploadOne($k, 'Product_pic', array(
						array(160, 120)
					));
					if($ret['ok'] == 1)
					{
						$ppModel->add(array(
							'pro_id' => $data['id'],
							'pic' => $ret['images'][0],     // 原图存到pic字段
							'sm_pic' => $ret['images'][1],  // 第一个缩略图存到sm_pic字段中
						));
					}
				}				
				
			}
			
		}
		//更新之前
		protected function _before_update(&$data,$option){
			$data['addtime'] = time();
			//生成缩略图
			
			//处理logo图片
			if(isset($_FILES['logo']) && $_FILES['logo']['error'] == 0)
			{
				//先删除原来的图片
				$oldlogo = $this->field('logo,sm_logo')->find($data['id']);
				deleteImage($oldlogo);

				$ret = uploadOne('logo', 'Product_logo', array(
					array(150, 150),
				));
				if($ret['ok'] == 1)
				{
					$data['logo'] = $ret['images'][0];
					$data['sm_logo'] = $ret['images'][1];
				}
				else 
				{
					$this->error = $ret['error'];
					return FALSE;
				}
			}
		}
		protected function _after_update($data,$option){
			/************************处理四张产品图片*************************/
			
			// 判断有没有图片
			if(hasImage('pics')){
				$ppModel = M('ProductPics');
				// 批量上传之后的图片数组，改造成每个图片一个一维数组的形式
				$pics = array();
				foreach ($_FILES['pics']['name'] as $k => $v)
				{
					if($_FILES['pics']['size'][$k] == 0)
						continue ;
					$pics[] = array(
						'name' => $v,
						'type' => $_FILES['pics']['type'][$k],
						'tmp_name' => $_FILES['pics']['tmp_name'][$k],
						'error' => $_FILES['pics']['error'][$k],
						'size' => $_FILES['pics']['size'][$k],
					);
				}
					// 在后面调用uploadOne方法时会使用$_FILES数组上传图片，所以我们要把我们处理好的数组赎给$_FILES这样上传时使用的就是我们处理好的数组
				$_FILES = $pics;
				// 循环每张图片一个一个的上传
				foreach ($pics as $k => $v)
				{
					$ret = uploadOne($k, 'Product_pic', array(
						array(160, 120)
					));
					if($ret['ok'] == 1)
					{
						$ppModel->add(array(
							'pro_id' => $data['id'],
							'pic' => $ret['images'][0],     // 原图存到pic字段
							'sm_pic' => $ret['images'][1],  // 第一个缩略图存到sm_pic字段中
						));
					}
				}
			}
			
		}
		/***********************/

	}
 ?>