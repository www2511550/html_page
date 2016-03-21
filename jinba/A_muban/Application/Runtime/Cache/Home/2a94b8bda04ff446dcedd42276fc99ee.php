<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo ($config["w_title"]); ?></title>
<meta name="keywords" content="<?php echo ($config["w_keywords"]); ?>" />
<meta name="description" content="<?php echo ($config["w_description"]); ?>"/>
<meta name="copyright" content="jinbagw.com"/>
<meta name="og:description" content="<?php echo ($config["w_description"]); ?>"/>
<link href="/A_muban/Public/css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/A_muban/Public/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/A_muban/Public/js/jquery-ui.js"></script>
<script type="text/javascript" src="/A_muban/Public/js/carouselScript.js"></script>
<link href="/A_muban/Public/css/carousel.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="into_out">
  <div class="into">
    <img src="/A_muban/Public/images/into.png" alt="" />
    <a href="">进入官网</a>
  </div>
</div>
<!-- into_out -->

<div class="header-wrap">
  <div class="header">
    <div class="logo">
      <h1><?php echo ($config["w_name"]); ?></h1>
    </div>
    <div class="menu">
      <ul>
        <li><a href="/A_muban" <?php if(!I('get.cid')): ?>class="active"<?php endif; ?> >首页</a></li>

      <?php if(is_array($cateData)): $i = 0; $__LIST__ = $cateData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('index/lists',array('cid'=>$vo['cid']));?>" <?php if(I('get.cid') == $vo['cid']): ?>class="active"<?php endif; ?>><?php echo ($vo["c_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?> 
        
      </ul>
    </div>
  </div>
</div>
<!-- header-wrap-end  -->

<div class="page">
  <div class="primary-col">
    <div class="wrap-1">

  <?php if(is_array($indexGoods)): $k = 0; $__LIST__ = $indexGoods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div class="panel <?php if($k%2): ?>float-right<?php else: ?>float-left<?php endif; ?>  ">
        <div class="content"> <img width='120' height='120' src="./<?php echo ($vo["min_img_path"]); ?>" alt="<?php echo ($vo["title"]); ?>"  class="float-left mar-right20"/>
          <h2><a href="#"><?php echo ($vo["title"]); ?></a></h2>
          <p style='color:#f47777;font-weight:600'>￥ <?php echo ($vo["new_price"]); ?></p>
        </div>
      </div><?php endforeach; endif; else: echo "" ;endif; ?>


    </div>
    <div class="generic bdr-bottom-none">
      
      <?php if(is_array($article)): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="panel"><br/>
          <div class="title">
            <h1><a href="<?php echo U('index/news',array('nid'=>$vo['id']));?>"><?php echo ($vo["n_title"]); ?></a></h1>
          </div>
          <div class="content">
            <h2>from：<?php echo ($config["w_list_title"]); ?> 阅读：889 标签：<?php echo ($vo["n_tag"]); ?></h2>
            <p><?php echo ($vo["n_title"]); ?>...</p>
            <div class="button"><a href="<?php echo U('index/news',array('nid'=>$vo['id']));?>">More Info</a></div>
          </div>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
        

    </div><br/>
    <div class="clearing"></div>
  </div>
  <!---primary-col-->

<!-- 右侧新闻区块 -->

  
  <div class="side-bar" style='margin-top:50px;'>
    <div class="submenu">
      <div class="panel">
        <div class="title">
          <h1>最热新闻<a href="<?php echo U('index/moreNews',array('type'=>0));?>" style='float:right;font-size:16px;'>>>更多</a></h1>
        </div>
        <div class="content"> <img src="/A_muban/Public/images/icon1.png" alt="icon"  class="float-left mar-right20"/>
          <h2><?php echo ($config["w_list_title"]); ?></h2>
          <ul>

          <?php if(is_array($hotNews)): $k = 0; $__LIST__ = $hotNews;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li><a href="<?php echo U('index/news',array('nid'=>$vo['id']));?>" <?php if(!$k): ?>class="active"<?php endif; ?>
              ><?php echo ($vo["n_title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

          </ul>
        </div>
      </div>
    </div>
    <div class="clearing"></div>
    <div class="testimonnial">
      <div class="panel">
        <div class="title">
          <h1>热点话题<a href="<?php echo U('index/moreNews',array('type'=>1));?>" style='float:right;font-size:16px;'>>>更多</a></h1>
        </div>
        <div class="content"> <img src="/A_muban/Public/images/icon2.png" alt="icon"  class="float-left mar-right20"/>
          <h2><?php echo ($config["w_name"]); ?></h2>
        </div>

    <?php if(is_array($words)): $i = 0; $__LIST__ = $words;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="content">
          <P>“ <?php echo ($vo["n_title"]); ?> ”<br />
            <span><?php echo ($vo["n_tag"]); ?></span> / <a href="<?php echo U('index/news',array('nid'=>$vo['id']));?>">详情</a></P>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>

      </div>
    </div>
    <div class="quick-contact bdr-bottom-none">
      <div class="panel">
        <div class="title">
          <h1>热卖商品 <a href="<?php echo U('index/lists',array('cid'=>5));?>" style='float:right;font-size:16px;'>>>更多</a></h1>
        </div>

    <?php if(is_array($hotGoods)): $i = 0; $__LIST__ = $hotGoods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="content">
          <a href=""><img width='120' height='120' src="/A_muban/<?php echo ($vo["min_img_path"]); ?>" alt="<?php echo ($vo["title"]); ?>" /></a>
          <h2><?php echo ($vo["title"]); ?></h2>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>

      </div>
    </div>
  </div>
  <div class="clearing"></div>

  <!---side-bar -->
</div>

<!---page-->


<!-- 底部区块 -->



<div class="copyright-wrap">
  <div class="copyright">
    <div class="content">
      <p>友情链接：<?php echo ($config["w_friend_link"]); ?></p><br/>
      <p>Copyright &copy; 2015-2016.版权所有<a href="/A_muban"> <?php echo ($config["w_list_title"]); ?> </a> 上海市云岭东路599弄汇银金融商务中心19号 </p>
    </div>
  </div>
</div>
</body>
</html>