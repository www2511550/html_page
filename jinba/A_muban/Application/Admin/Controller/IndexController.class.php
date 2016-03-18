<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends AuthController{
	private $GoodsModel;
    public function __construct()
	{	
		parent::__construct();
		// if (!$this->isLogin()) {
		// 	$this->display('auth/login');die;
		// }
		$this->GoodsModel = D('Goods');
		
	}
	public function index()
	{
		$this->display();
	}

	/**
	 * 商品列表
	 * @return [type] [description]
	 */
	public function goodsList(){
		$count = M('goods')->where('is_display=1')->order('gid desc')->count();

		$data = M('goods')->order('gid desc')->limit(10)->select();

		$this->assign('data',$data);
		$this->display();
	}

	/**
	 * 添加商品
	 */
	public function addGoods()
	{
		if ( !IS_POST ) {
			$this->display();die;
		}
		$data = I('post.');

		$upload = new \Think\Upload();//  实例化上传类
		$upload->maxSize = 1024*1024*2 ;//  设置附件上传大小
		$upload->exts = array('jpg', 'gif', 'png', 'jpeg');//  设置附件上传类型
		$upload->savePath = './images/'; //  设置附件上传目录
		//  上传文件
		$info = $upload->upload();
		
		if(!$info) {//  上传错误提示错误信息
			$this->error($upload->getError());
		}
		// 上传图片地址
		$imgUrl = "Uploads/".$info['img_path']['savepath'].$info['img_path']['savename'];
		$image = new \Think\Image();
		$image->open($imgUrl);
		//  生成一个缩放后填充大小 200*250 的缩略图并保存为 thumb.jpg
		$timeStr = date('Y-m-d' ,time());
 		is_dir('Uploads/thumb/'.$timeStr.'/') or mkdir ( 'Uploads/thumb/'.$timeStr.'/', 0777, true );
		$min_img_path = 'Uploads/thumb/'.$timeStr.'/'.$info['img_path']['savename'];
		$image->thumb(350, 350,\Think\Image::IMAGE_THUMB_SCALE)->save($min_img_path);

		// 组装数据
		$data['addtime'] = time();
		$data['href_path'] = json_encode($data['href_path']);
		$data['img_path'] = $imgUrl;
		$data['min_img_path'] = $min_img_path;
		$status = $this->GoodsModel->add($data);
		if (!$status) {
			$this->error('添加失败');
		}
		$this->success('添加成功');
	}

	public function importGoods(){
		if (!IS_POST) {
			$cateData = M('category')->select();
			$this->assign('category',$cateData);
			$this->display();die;
		}
		$fileName = $_FILES['upFile']['tmp_name'];
		$cid = I('post.cid');
		if (!$cid) {
			$this->error('请选择类型！');
		}
		if (!$fileName) {
			$this->error('请选择要上传的文件！');
		}
		$excelData = $this->_getExcelData($fileName);
	    if ( count($excelData)<1 ){
	        $this->error('上传文件为空！');
	    }
	    // dump($excelData);die;
	    // 批量存储
	    $error = $succ = $isAdd = 0;
	    foreach ($excelData as $k => $val) {	    
		    // 检测商品是否已经添加
		    $map['goods_num'] = $val[0];
		    $res = $this->GoodsModel->where($map)->find();
		    if ($res) {
		    	++$isAdd;
		    	continue;
		    }
		    // 原图存储路径
		    $old_path = 'Uploads/import/'.date('Y-m-d').'/';
		    is_dir($old_path) or mkdir($old_path,0777,true);
		    // 根据链接抓取图片
		    $name = @file_get_contents($val[2]);
		    $old_img_name = time().'_'.rand(1,100).'.jpg';
		    $old_img_path = $old_path.'/'.$old_img_name;
		    $img = file_put_contents($old_img_path,$name);
		    // 上传图片地址
			$imgUrl = $old_img_path;
			$image = new \Think\Image();
			$image->open($imgUrl);
			$timeStr = date('Y-m-d');
			// 大略缩图430*430
			$img_path = 'Uploads/images/'.$timeStr.'/'.$old_img_name;
			is_dir('Uploads/images/'.$timeStr.'/') or mkdir('Uploads/images/'.$timeStr.'/',0777,true);	
			$image->thumb(360, 280,\Think\Image::IMAGE_THUMB_SCALE)->save($img_path);
			//  生成一个缩放后填充大小 200*250 的缩略图并保存为 thumb.jpg
	 		is_dir('Uploads/thumb/'.$timeStr.'/') or mkdir ( 'Uploads/thumb/'.$timeStr.'/', 0777, true );
			$min_img_path = 'Uploads/thumb/'.$timeStr.'/'.$old_img_name;
			$image->thumb(260, 200,\Think\Image::IMAGE_THUMB_SCALE)->save($min_img_path);		
			// 删除图片
			@unlink($old_img_path);

			// 组装数据
			$data['cid'] = $cid;
			$data['goods_num'] = $val[0];
			$data['title'] = $val[1];
			$data['new_price'] = $val['5'];
			$data['old_price'] = $val['5']+$val['5']*$val['7']/10;
			$data['addtime'] = time();
			$data['href_path'] = $val[10];
			$data['money'] = $val['5']*$val['7']/100;
			$data['img_path'] = $img_path;
			$data['min_img_path'] = $min_img_path;
			$status = $this->GoodsModel->add($data);
			$status ? ++$succ:++$error;
	    }
	    $msg = "成功".$succ."条，失败".$error."条，已经添加过".$isAdd."条！";
	    $this->success($msg);
	}
	 /**
     * 載入Excel工具类，excel的导入
     * @param string $fileName 上传的文件名
     * @return array $return 返回表格中的数据
     * 2015-08-13
     */
    private function _getExcelData ($fileName) {
        //包含excel工具类
        import("Org.Util.PHPExcel");
        import("Org.Util.PHPExcel.Reader.Excel5");
        import("Org.Util.PHPExcel.IOFactory",'','.php');

        //实例化PHPExcel对象
        $objReader = \PHPExcel_IOFactory::createReader ( 'Excel5' );
        $objReader->setReadDataOnly ( true );
        $objPHPExcel = $objReader->load ($fileName);

        $objWorksheet = $objPHPExcel->getSheet (0);
        //取得excel的总行数
        $highestRow = $objWorksheet->getHighestRow ();
        //取得excel的总列数
        $highestColumn = $objWorksheet->getHighestColumn ();
        $highestColumnIndex = \PHPExcel_Cell::columnIndexFromString ( $highestColumn );

        $return = array ();
        for($row = 2; $row <= $highestRow; $row++) {
            for($col = 0; $col < $highestColumnIndex; $col++) {
                $return[$row-2][] = $objWorksheet->getCellByColumnAndRow ( $col, $row )->getValue ();
            }
        }
        return $return;
    }
}