<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    /**
     * 首页展示
     * 
     * @return 
     * @author cong.cheng <2016年2月23日 下午12:01:55>
     */
    public function index()
    {
        // 分类模型
        $categoryModel = M('category');
        // 商品模型
        $goodsModel = M('goods');
        // 品牌模型
        $brandModel = M('brand');
        // banner模型
        $bannerModel = M('banner');
        // 获取首页分类数据
        $map['c_position'] = array('IN',array(1,2,3,4,5));
        $map['c_status'] = 1;
        $cateNames = $categoryModel->field('c_name,cid,c_position')->where($map)->select();
        // 位置分类
        $nameData = array();
        foreach ($cateNames as $val){
            $nameData[$val['c_position']][] = $val;
        }
        // 获取位置分类对应数据
        foreach ($nameData as $k => $val) {
            foreach ($val as $key => $value) {
                $m['cid'] = $value['cid'];
                $m['is_display'] = 1;
                $value['list'] = $goodsModel->where($m)->order('gid DESC')->limit(6)->select();
                $nameData[$k][$key] = $value;
            }    
        }
        // 导航菜单
        $maps['c_position'] = array('IN',array(6,7,8,9));
        $maps['c_status'] = 1;
        $menus = $categoryModel->where($maps)->select();
        // 获取首页品牌数据
        $brandMap['b_status'] = 1;
        $brandData = $brandModel->where($brandMap)->limit('18')->select();
        // 获取美美哒数据
        $mmMap['is_display'] = 1;
        $mmMap['cid'] = 6;
        $mmData = $goodsModel->where($mmMap)->order('money desc')->limit(14)->select();
        // 首页banner数据
        $bannerMap['b_status'] =1;
        $bannerData = $bannerModel->where($bannerMap)->order('b_sort desc,bid desc')->limit(4)->select();

        $this->assign(array('brandData'=>$brandData,'mmData'=>$mmData,'bannerData'=>$bannerData));
        $this->assign('nameData',$nameData);
        $this->assign('action','index');
        $this->display();
    }
    /**
     * 商品列表
     * 
     * @return 
     * @author cong.cheng <2016年2月23日 下午12:01:55>
     */
    public function lists(){exit('aaa');
        $this->display();die;

        $cid = I('get.cid');
        $sort = I('get.sort');
        // 商品模型 
        $goodsModel = M('goods');
        // 分类模型
        $categoryModel = M('category');
        $where['cid'] = $cid;
        // 获取子分类对应数据
        $mp['pid'] = $cid;
        $cates = $categoryModel->where($mp)->select();
        if ($cates) {
            $cidArr = array();
            foreach ($cates as $value) {
                $cidArr[] = $value['cid'];
            }
            $where['cid'] = array('IN', $cidArr);
        }
        // 排序
        switch ($sort) {
            case '2':   // 价格排序
                $order = 'new_price ASC';
                break;
            case '3':   // 上架时间
                $order = 'addtime DESC';
                break;
            case '4':   // 收益
                $order = 'money DESC';
                break;
            default:
                $order = 'click_num desc,gid desc';
                break;
        }
        // 分页获取数据
        $count = $goodsModel->where($where)->count();
        $pageSize = 16;
        $Page = new \Think\Page($count,$pageSize);
        $data = $goodsModel->where($where)->order($order)->limit($Page->firstRow.','.$Page->listRows)->select();
        // 分页样式设置
        // $Page->setConfig();
        $this->assign('page',$Page->show());
        $this->assign('data',$data);
        $this->display();
    }
    /**
     * 单个商品详情
     * 
     * @return 
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function single(){
        $gid = I('get.gid');
        !$gid && $this->error('商品不存在或已下架！');
        // 商品模型 
        $goodsModel = M('goods');
        $map['gid'] = $gid;
        // 点击数自增
        $goodsModel->where($map)->setInc('click_num');
        // 获取跳转链接
        $href = 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4Fzzg8Z%2Fh8ccQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMde47RS03EfO79%2FTFaMDK6T7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MEnQ%2BVk1uGuGWisZaGocrkvcSpj5qSCmbA%3D';//$goodsModel->where($map)->getField('href_path');
        $this->assign('href',$href);
        // header('location:'.$href);
        $this->display();
    }
    /**
     *  话题问答详细
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function news(){
        $this->assign('action','women');
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function brand(){
        $this->assign('action','collection');
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function special(){
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function contact(){
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function privacy(){
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function signup(){
        $this->display();
    }
    
    
    
}