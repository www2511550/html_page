<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    private $newsModel;
    public function __construct(){
        parent::__construct();
        // 配置数据
        $config = M('config')->select();
        if ($config) {
            foreach ($config as $val) {
                $configData[$val['name']] = $val['value'];
            }
            $this->assign('config',$configData);
        }  
        // 菜单栏数据
        $map['c_status'] = 1;
        $map['c_position'] = 2;
        $cateData = M('category')->field('cid,c_name')->where($map)->select();
        $this->assign('cateData',$cateData);
        // 右侧底部热卖图片
        $maps['cid'] = 5;
        $hotGoods = M('goods')->where($maps)->order($order)->limit(5)->select();
        $this->assign('hotGoods',$hotGoods);
        // 劲霸热点新闻,话题
        $this->newsModel = M('news');
        $hotNews = $this->newsModel->field('id,n_title')->where('n_type=0')->limit(8)->select();
        $words = $this->newsModel->field('id,n_title,n_tag')->where('n_type=1')->limit(10)->select();
        $this->assign(array('hotNews'=>$hotNews,'words'=>$words));
    }
    /**
     * 首页展示
     * 
     * @return 
     * @author cong.cheng <2016年2月23日 下午12:01:55>
     */
    public function index()
    {
        // 商品模型
        $goodsModel = M('goods');
        // 首页商品图片 id->1,5
        $map['is_display'] = 1;
        $map['cid'] = 1;
        $order = " gid desc ";
        $indexGoods = $goodsModel->where($map)->order($order)->limit(8)->select();
        // 首页劲霸文章
        $article = $this->newsModel->where('n_type=2')->limit(10)->select();

        $this->assign('article',$article);
        $this->assign('indexGoods',$indexGoods);
        $this->display();
    }
    /**
     * 商品列表
     * 
     * @return 
     * @author cong.cheng <2016年2月23日 下午12:01:55>
     */
    public function lists(){
        $cid = I('get.cid');
        if (!$cid) {
            $this->error('不存在此分类商品！');
        }
        $goodsModel = M('goods');
        // 对应列表数据
        $map['is_display'] = 1;
        $map['cid'] = $cid;
        $order = " gid desc ";
        $count = $goodsModel->where($map)->count();
        $page = new \Think\Page($count,10);
        $data = $goodsModel->where($map)->order($order)->limit($page->firstRow.','.$page->listRows)->select();

        $this->assign('page',$page->show());
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
        $id = I('get.nid');
        if (!$id) $this->error('不存在此新闻！');
        $map['id'] = $id;
        $map['n_status'] = 1;
        $data = M('news')->where($map)->find();

        $this->assign('data',$data);
        $this->display();
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function moreNews(){
        $type = I('get.type');
        if ($type!=0 && !$type) $this->error('暂无此新闻！');
        $map['n_type'] = $type;
        $moreNews = $this->newsModel->where($map)->limit(10)->select();

        $this->assign('moreNews',$moreNews);
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