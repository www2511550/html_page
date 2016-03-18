<?php
namespace Admin\Controller;
use Think\Controller;
class BannerController extends Controller {
	private $GoodsModel;  // 商品模型
	public function __construct(){
		parent::__construct();

		$this->bannerModel = M('banner');
	}
    /**
     * 品牌列表
     */
    public function index(){
    	$map['b_status'] = 1;
    	$data = $this->bannerModel->where($map)->order(' bid desc')->select();

    	$this->assign('data',$data);
    	$this->display();
    }
    /**
     * 添加品牌
     */
    public function addBanner(){
    	if (!IS_POST) {
    		$this->display();die;
    	}
    	$params = I('post.');
        // 根据链接抓取图片
        $imgData = @file_get_contents($params['b_img_path']);
        $old_img_name = time().rand(1,100).'.jpg';
        $old_img = 'Uploads/banner/'.date('Y-m-d').'/';
        is_dir($old_img) or mkdir($old_img,0777,true);
        $old_img_path = 'Uploads/banner/'.date('Y-m-d').'/'.$old_img_name;
        $img = file_put_contents($old_img_path,$imgData);
        // 略缩图
        $imageModel = new \Think\Image();
        $imageModel->open($old_img_path);
        $img_path = 'Uploads/thumb/banner/'.date('Y-m-d').'/'.$old_img_name;
        is_dir('Uploads/thumb/banner/'.date('Y-m-d').'/') or mkdir('Uploads/thumb/banner/'.date('Y-m-d').'/',0777,true);
        $imageModel->thumb(809, 425,\Think\Image::IMAGE_THUMB_FIXED)->save($img_path);

        $data['b_name'] = $params['b_name'];
        $data['b_img_path'] = $old_img_path;
        $data['b_min_img_path'] = $img_path;
        $data['b_href'] = $params['b_href'];
        $data['b_sort'] = $params['b_sort'];
        $data['b_status'] = $params['b_status'];
        $data['b_addtime'] = date('Y-m-d H:i:s');
        // dump($data);die;
        $status = $this->bannerModel->add($data);
        if ($status) {
            $this->success('添加成功！');
        }else{
            $this->error('添加失败！');
        }
    }


}