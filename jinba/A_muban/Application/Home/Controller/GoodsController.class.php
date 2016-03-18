<?php
namespace Home\Controller;
use Think\Controller;
class GoodsController extends Controller {
	private $GoodsModel;
    public function __construct(){
        parent::__construct();

        $this->GoodsModel = D('Goods');
    }
    /**
     * 商品搜索，暂时用like匹配
     * @return [type] [description]
     */
    public function searchGoods(){
    	$keywords = I('get.keywords');
    	if ( !$keywords ) {
    		$this->error('请输入搜索关键字');
    	}
    	$map['title'] = array('like','%'.$keywords.'%');
    	$data = $this->GoodsModel->where($map)->select();
    	$maps['is_display'] = 1;
        $banner = M('banner')->where($maps)->order('bid DESC')->limit('0,4')->select();
        $this->assign(array('keywords'=>$keywords,'banner'=>$banner));
    	$this->assign('data',$data);
    	$this->display();



    }
}