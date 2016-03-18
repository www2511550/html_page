<?php
namespace Admin\Controller;
use Think\Controller;
class GoodsController extends Controller {
	private $GoodsModel;  // 商品模型
	public function __construct(){
		parent::__construct();

		$this->GoodsModel = M('Goods');
	}
    public function edit(){
    	if (IS_GET) {
    		$gid = I('get.gid');
	    	if ( !$gid ) $this->error('参数错误');
	    	$map['gid'] = $gid;
	    	$data = $this->GoodsModel->where($map)->find();
	    	if (!$data) $this->error('不存在此商品');
	    	$this->assign('data', $data);
	    	$this->display();die;
	    }

	    // 组装数据
	    $data = I('post.');

    	
        // $status = $this->GoodsModel->where($map)->save($data);
    }
}