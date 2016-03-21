<?php
namespace Admin\Controller;
use Think\Controller;
class NewsController extends Controller {
	private $newsModel;  // 商品模型
	public function __construct(){
		parent::__construct();

		$this->newsModel = M('news');
	}
    /**
     * 新闻列表
     */
    public function index(){
    	$map['n_status'] = 1;
    	$data = $this->newsModel->where($map)->order(' id desc')->select();

    	$this->assign('data',$data);
    	$this->display();
    }
    /**
     * 添加新闻
     */
    public function add(){
    	if (!IS_POST) {
    		$this->display();die;
    	}
    	$param = I('post.');
    	if ( !$param['n_title'] || !$param['n_content'] ) $this->error('标题和内容不能为空！');
    	$newsModel = M('news');
    	$param['n_addtime'] = date('Y-m-d H:i:s');
    	if ($newsModel->where("n_title='".$param['n_title']."'")->find()) $this->error('已经添加过！');
    	$status = $newsModel->add($param);
    	!$status ? $this->error('添加失败！') : $this->success('添加成功！');
    	
    }

}