<?php
namespace app\admin\controller;
// use app\admin\model\Menu;
use think\Validate;
// use think\Db;
use app\admin\model\Users;
class Useradd extends Base{
	// 填充表单数据
	public function index(){

		return $this->fetch('useradd');
	}


	// 新增客户
	public function useradd(){

		$num=build_order_no(); //客户编号 预约号

		// dump(input('post.'));
		if(request()->isPost()){
			$usersData=input('post.');
			// dump($usersData);die;

			$validate = validate('User');
			if($validate->scene('userinfo')->check($usersData)){
				if(Users::create($usersData)){
					return "客户添加成功!";
				}else{
					return "客户添加失败!";
				}
			}else{
				return $validate->getError();
				exit;
			}

		}else{
			return '非法操作！';
			exit;
		}
	}
}
