<?php
namespace Admin\Controller;
use Think\Controller;
class BrandController extends Controller {
	private $GoodsModel;  // 商品模型
	public function __construct(){
		parent::__construct();

		$this->brandModel = M('Brand');
	}
    /**
     * 品牌列表
     */
    public function index(){
    	$map['b_status'] = 1;
    	$data = $this->brandModel->where($map)->order(' bid desc')->select();
    	$this->assign('data',$data);
    	$this->display();
    }
    /**
     * 添加品牌
     */
    public function addBrand(){
    	if (!IS_POST) {
    		$this->display();die;
    	}
    	$params = I('post.');
        // 根据链接抓取图片
        $imgData = @file_get_contents($params['b_img']);
        $old_img_name = time().rand(1,100).'.jpg';
        $old_img = 'Uploads/brand/'.date('Y-m-d').'/';
        is_dir($old_img) or mkdir($old_img,0777,true);
        $old_img_path = 'Uploads/brand/'.date('Y-m-d').'/'.$old_img_name;
        $img = file_put_contents($old_img_path,$imgData);
        // 略缩图
        $imageModel = new \Think\Image();
        $imageModel->open($old_img_path);
        $img_path = 'Uploads/thumb/brand/'.date('Y-m-d').'/'.$old_img_name;
        is_dir('Uploads/thumb/brand/'.date('Y-m-d').'/') or mkdir('Uploads/thumb/brand/'.date('Y-m-d').'/',0777,true);
        $imageModel->thumb(70, 70,\Think\Image::IMAGE_THUMB_FIXED)->save($img_path);

        $data['b_name'] = $params['b_name'];
        $data['b_img'] = $img_path;
        $data['b_href'] = $params['b_href'];
        $data['b_sort'] = $params['b_sort'];
        $data['b_status'] = $params['b_status'];
        $data['b_addtime'] = time();
        $status = $this->brandModel->add($data);
        if ($status) {
            $this->success('添加成功！');
        }else{
            $this->error('添加失败！');
        }

    }
    /**
     * 店铺列表
     */
    public function banner(){
        $map['b_status'] = 1;
        $data = $this->brandModel->where($map)->order(' bid desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    /**
     * 添加banner
     */
    public function addBanner(){
        if ( !IS_POST ) {
            $this->display();die;
        }
        $data = I('post.');

        $upload = new \Think\Upload();//  实例化上传类
        $upload->maxSize = 1024*1024*2 ;//  设置附件上传大小
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');//  设置附件上传类型
        $upload->savePath = './banner/'; //  设置附件上传目录
        //  上传文件
        $info = $upload->upload();
        
        if(!$info) {//  上传错误提示错误信息
            $this->error($upload->getError());
        }
        // 上传图片地址
        $imgUrl = "Uploads/".$info['imgUrl']['savepath'].$info['imgUrl']['savename'];
        $image = new \Think\Image();
        $image->open($imgUrl);
        //  生成一个缩放后填充大小 150*150 的缩略图并保存为 thumb.jpg
        $timeStr = date('Y-m-d' ,time());
        is_dir('Uploads/thumb/banner/'.$timeStr.'/') or mkdir ( 'Uploads/thumb/banner/'.$timeStr.'/', 0777, true );
        $min_img_path = 'Uploads/thumb/banner/'.$timeStr.'/'.$info['imgUrl']['savename'];
        $image->thumb(600, 180,\Think\Image::IMAGE_THUMB_SCALE)->save($min_img_path);

        // 组装数据
        $data['addtime'] = date('Y-m-d H:i:s',time());
        $data['toUrl'] = json_encode($data['toUrl']);
        $data['imgUrl'] = $imgUrl;
        $data['min_img_url'] = $min_img_path;
        $status = M('banner')->add($data);
        if (!$status) {
            $this->error('添加失败');
        }
        $this->success('添加成功');

    }



}