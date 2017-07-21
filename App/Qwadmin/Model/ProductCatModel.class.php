<?php 
	namespace Qwadmin\Model;
	use Think\Model;
	class ProductCatModel extends Model{

		protected $insertFields = array('cat_name');
		protected $updataFields = array('id','cat_name');
		protected $_validate = array(
				array()
			);
		protected function _before_insert(&$data,$option){
			//处理pic图片
			if(isset($_FILES['cat_pic']) && $_FILES['cat_pic']['error'] == 0)
			{
				$ret = uploadOne('cat_pic', 'Cat', array(
					array(100, 100),
				));
				if($ret['ok'] == 1)
				{
					$data['cat_pic'] = $ret['images'][0];
					$data['cat_smpic'] = $ret['images'][1];
				}
				else 
				{
					$this->error = $ret['error'];
					return FALSE;
				}
			}else{
				$this->error = '请检查是否上传了图片';
					return FALSE;
			}

		}

		protected function _after_insert($data,$option){

		}
		protected function _before_update(&$data,$option){
			//生成缩略图
			//处理logo图片
			if(isset($_FILES['cat_pic']) && $_FILES['cat_pic']['error'] == 0){
				//先删除原来的图片
				$oldlogo = $this->field('cat_pic,cat_smpic')->find($data['id']);
				deleteImage($oldlogo);

				$ret = uploadOne('cat_pic', 'Cat', array(
					array(100, 100),
				));
				if($ret['ok'] == 1)
				{
					$data['cat_pic'] = $ret['images'][0];
					$data['cat_smpic'] = $ret['images'][1];
				}else{
					$this->error = $ret['error'];
					return FALSE;
				}
			}
		}

	}
 ?>
