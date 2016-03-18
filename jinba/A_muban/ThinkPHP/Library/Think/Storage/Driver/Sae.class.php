<?php
// +----------------------------------------------------------------------
// | TOPThink [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://topthink.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: luofei614 <weibo.com/luofei614>
// +----------------------------------------------------------------------
namespace Think\Storage\Driver;
use Think\Storage;
// SAE环境文件写入存储类
class Sae extends Storage{

    /**
     * 架构函数
     * @access public
     */
    private $mc;
    private $kvs        =   array();
    private $htmls      =   array();
    private $contents   =   array();
    public function __construct() {
        if(!function_exists('memcache_init')){
              header('Content-Type:text/html;charset=utf-8');
              exit('请在SAE平台上运行代码。');
        }
        $this->mc       =   @memcache_init();
        if(!$this->mc){
              header('Content-Type:text/html;charset=utf-8');
              exit('您未开通Memcache服务，请在SAE管理平台