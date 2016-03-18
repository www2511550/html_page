<?php
namespace Admin\Controller;
use Think\Controller;
class AuthController extends Controller {
	public function __construct(){
		parent::__construct();
	}
	/**
	 * 判断是否登录
	 * @return
	 */
	public function isLogin(){
		return !I('session.aid') ? false : true;
	}

	/**
	 * 登录
	 * @return [type] [description]
	 */
	public function login(){
        if (!IS_POST) {
        	$this->display();die;
        }
        $username = trim(I('post.username'));
        $pwd = trim(I('post.pwd'));
        if ( !$username || !$pwd ) {
        	$this->display('账号或密码不能为空');
        }
        $pwd = md5(md5(C('ADMIN_KEY').$pwd));
        $where = "username = '{$username}' AND pwd = '{$pwd}'";
        $res = M('admin')->where($map)->find();
        if (!$res) {
        	$this->error('密码或账号错误！');
        }
        session('aid', $res['aid']);
        session('username', $res['username']);
        $this->success('登录成功！');
    }
}