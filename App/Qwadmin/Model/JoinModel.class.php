<?php 
	namespace Qwadmin\Model;
	class JoinModel extends Model{
		//接受的字段
		protected $insertFields = array(
			'name','gender','s_province','s_city','s_county','year','month','day',
			'phone','email','content');
		//表单自动验证
		//第四个参数：1必须验证，2值不为空时才验证，0存在字段就验证（默）
		//第五个参数：1插入时验证，2修改时验证，3全部验证
		protected $_validate = array(
				array('name','require','姓名不能为空！',1,'regex',3),
				array('name''1,50','姓名不能超过50个字符',1,'length',3),
				array('gender','require','请选择你的性别',1,'length',3),
				array('gender','男,女','性别有误',1,'in',3),
				array('s_province','require','省份不能为空',1,'regex',3),
				array('s_city','require','地级市不能为空',1,'regex',3),
				array('s_county','require','市、县不能为空',1,'regex',3),
				array('year','require','年份不能为空',1,'regex',3),
				array('year','/(19[\d][\d]|20[01][0-7])/',1,'年份格式不对',1,'regex',3),
				array('month','require','月份不能为空',1,'regex',3),
				array('month','/[1-9]|1[0-2]/','月份格式不对',1,'regex',3),
				array('day','require','日期不能为空',1,'regex',3),
				array('day','/[1-9]|[12]\d|3[01]/','日期格式不对',1,'regex',3),
				array('phone','require','手机号不能为空',1,'regex',3),
				array('phone','/^1[34578]\d{9}$/','手机号格式不对，请仔细检查',1,'regex',3),
				array('email','email','邮箱地址出错',1,'regex',3)
			);
		//插入前置钩子函数
		public function _before_insert(&$data,$option){
			$data['addtime'] = time();

		}
	}
 ?>