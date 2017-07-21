<?php 
	namespace Qwadmin\Model;
	use think\Model;
	class BannerModel extends Model{
		protected $insertFields = array('banner_name','level');
		protected $updataFields = array('id','banner_name','level');
		protected $_validate = array(
				array('banner_name','require','轮播图名称不能为空',1,'regex',3),
				array('banner_name','1,50','标题最长不超过50个字符',1,'length',3),
				array('level','1,2','级别必须是整数1或者2',2,'in',3),
			);
		protected function _before_insert(&$data,$option){
			$data['addtime'] = time();
			//生成缩略图
			//处理logo图片
			if(isset($_FILES['picurl']) && $_FILES['picurl']['error'] == 0)
			{
				$ret = uploadOne('picurl', 'Banner', array(
					array(150, 150),
				));
				if($ret['ok'] == 1)
				{
					$data['picurl'] = $ret['images'][0];
					$data['sm_picurl'] = $ret['images'][1];
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
			$data['addtime'] = time();
			//生成缩略图
			
			//处理logo图片
			if(isset($_FILES['picurl']) && $_FILES['picurl']['error'] == 0)
			{
				//先删除原来的图片
				$oldlogo = $this->field('picurl,sm_picurl')->find($data['id']);
				deleteImage($oldlogo);

				$ret = uploadOne('picurl', 'Banner', array(
					array(150, 150),
				));
				if($ret['ok'] == 1)
				{
					$data['picurl'] = $ret['images'][0];
					$data['sm_picurl'] = $ret['images'][1];
				}
				else 
				{
					if($this->field('picurl,sm_picurl')->find($data['id'])){
						return true;
					}else{
						$this->error = '请检查是否上传了图片';
						return false;
					}
				}
			}
		}
		protected function _after_update($data,$option){

		}
	}
 ?>