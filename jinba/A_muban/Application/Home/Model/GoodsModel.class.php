<?php
namespace Home\Model;
use Think\Model;
class GoodsModel extends Model {
	public function append($page,$pageSize=10){
		if ( !$page) return FALSE;
		$s = ($page-1)*$pageSize;
		$sql = "SELECT title, min_img_path, new_price, old_price, is_display, href_path, `money`
				FROM  bgw_goods 
				WHERE  is_display = 1
				ORDER BY gid DESC
				LIMIT $s,$pageSize";
		$data = M()->query($sql);
		if (!$data) {
			$data = M('Goods')->order('gid DESC')->limit($pageSize)->select();
		}
		$d['left'] = $d['right'] = array();
		foreach ($data as $key => $value) {
			$key%2 ? ($d['right'][] = $value) : ($d['left'][] = $value);
		}
		return $d;
	}
	public function appendToWeb($page=0,$pageSize=10,$cid=1){
		if (!$page) return FALSE;
		$s = ($page-1)*$pageSize;
		$map['is_display'] = 1;
		if ($cid==3||$cid==4) {
			$map['cid']=2;
		}else{
			$map['cid']=1;
		}
		$data = M('goods')->where($map)->order('gid desc')->limit($s,$pageSize)->select();
		return $data;
	}
}