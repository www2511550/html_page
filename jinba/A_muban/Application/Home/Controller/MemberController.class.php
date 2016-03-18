<?php
namespace Home\Controller;
use Think\Controller;
class MemberController extends Controller {
	public function __construct(){
		parent::__construct();
		if (!session('uid')) {
			$this->display('index/login');die;
		}
	}
    public function index(){
    	$this->assign(array('title'=>'个人中心','noBack'=>true));
        $this->display();
    }
    /**
     * 我要返现
     */
	public function getMoney(){
		$this->assign('title','我要返现');
		if (!IS_POST) {
			$this->display();die;
		}
		$data = I('post.');
		if (!$data['title']) {
			$this->error('商品标题不能为空！');
		}
		if (!$data['account']) {
			$this->error('账号不能为空！');
		}

		$upload = new \Think\Upload();//  实例化上传类
		$upload->maxSize = 1024*1024*2 ;//  设置附件上传大小
		$upload->exts = array('jpg', 'gif', 'png', 'jpeg');//  设置附件上传类型
		$upload->savePath = './money/'; //  设置附件上传目录
		//  上传文件
		$info = $upload->upload();

		if(!$info) {//  上传错误提示错误信息
			$this->error($upload->getError());
		}
		// 组装数据
		$data['addtime'] = date('Y-m-d H:i:s',time());
		$data['img_url'] = './Upload/'.$info['money_img']['savepath'].$info['money_img']['savename'];
		$data['title'] = $data['title'];
		$data['account'] = $data['account'];
		$data['uid'] = I('session.uid');
		$status = M('Order')->add($data);
		if (!$status) {
			$this->error('提交失败，请稍后再试！');
		}
		$this->success('提交成功，将在七个工作日内将补贴打到你的支付宝账户！','index',3);	
	}
	/**
	 * 补贴订单
	 * @return
	 */
	public function myOrder(){
		$uid = I('session.uid');
		if (!is_numeric($uid)) {
			$this->error('请先登录！','index/login');
		}
		$map['uid'] = $uid;
		$data = M('Order')->field('title,money,is_pass')->where($map)->select();
		$this->assign(array('title'=>'补贴订单', 'data'=>$data));
		$this->display();
	}

}