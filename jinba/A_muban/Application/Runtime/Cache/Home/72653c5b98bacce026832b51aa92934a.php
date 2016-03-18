<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>御泥坊</title>
<link href="/Public/css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Public/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/Public/js/jquery-ui.js"></script>
<script type="text/javascript" src="/Public/js/carouselScript.js"></script>
<link href="/Public/css/carousel.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header-wrap">
  <div class="header">
    <div class="logo">
      <h1>御泥坊</h1>
    </div>
    <div class="menu">
      <ul>
        <li><a href="" class="active">首页</a></li>
        <li><a href="<?php echo U('index/lists');?>">产品一 </a></li>
        <li><a href="<?php echo U('index/lists');?>">产品二 </a></li>
        <li><a href="<?php echo U('index/lists');?>">产品三 </a></li>
        <li><a href="<?php echo U('index/lists');?>">产品四 </a></li>
      </ul>
    </div>
  </div>
</div>

<!---header-wrap-end-->
<div class="page">
  <div class="primary-col">
    <div class="generic bdr-bottom-none">
      <div class="panel">

      <div class="portfolio">
        <div class="title">
          <h1>御泥坊</h1>
          <h2>御泥坊，相传在滩头，这个有着1500年历史的湘西边陲小镇，古代的居民们一直保留着一种奇特的“祭泥仪式”。 清光绪年间，以这种神秘泥块为原料生产的护肤品颇受妇女欢迎，成为宫中养颜圣品，被封为“御泥”。御泥坊通过网络口碑相传，已成为中国泥浆面膜第一品牌。</h2>
        </div>

<?php $__FOR_START_5176__=1;$__FOR_END_5176__=11;for($vo=$__FOR_START_5176__;$vo < $__FOR_END_5176__;$vo+=1){ ?><div class="panel <?php if($vo%2): ?>mar-right30<?php endif; ?> ">
      <div class="content"> <img src="/Public/images/ynf.jpg" width='260'/>
        <p>御泥坊 黑玫瑰矿物洁面乳100ml 男女温和去黄亮肤洗面奶正品包邮 </p>
        <a href="#" style='float:right;'>购买</a> <span style='color:#f47777;font-size:16px;'>￥ 29.9</span></div>
    </div><?php } ?>

    <!-- <div class="panel mar-right30">
      <div class="content"> <img src="images/ynf.jpg" width='260'/>
        <p>御泥坊 黑玫瑰矿物洁面乳100ml 男女温和去黄亮肤洗面奶正品包邮 </p>
        <a href="#" style='float:right;'>购买</a> <span style='color:#f47777;font-size:16px;'>￥ 29.9</span></div>
    </div>
    <div class="panel">
      <div class="content"> <img src="images/ynf.jpg" width='260'/>
        <p>御泥坊 黑玫瑰矿物洁面乳100ml 男女温和去黄亮肤洗面奶正品包邮 </p>
        <a href="#" style='float:right;'>购买</a> <span style='color:#f47777;font-size:16px;'>￥ 29.9</span></div>
    </div> -->                                 

  </div>

      </div>

    </div>
    <div class="clearing"></div>
  </div>
   <!---primary-col-->

  <!-- 右侧新闻区块 -->
    
  <div class="side-bar" style='margin-top:50px;'>
    <div class="submenu">
      <div class="panel">
        <div class="title">
          <h1>最热新闻<a href="" style='float:right;font-size:16px;'>>>更多</a></h1>
        </div>
        <div class="content"> <img src="/Public/images/icon1.png" alt="icon"  class="float-left mar-right20"/>
          <h2>御泥坊</h2>
          <ul>
            <li><a href="#" class="active">御泥坊红石榴鲜活矿物睡眠面膜180g</a></li>

          <?php $__FOR_START_8793__=0;$__FOR_END_8793__=9;for($vo=$__FOR_START_8793__;$vo < $__FOR_END_8793__;$vo+=1){ ?><li><a href="<?php echo U('index/news');?>">御泥坊红石榴鲜活矿物睡眠面膜180g</a></li><?php } ?>

            <!-- <li class="-noborder-bottom"><a href="#">御泥坊红石榴鲜活矿物睡眠面膜180g</a></li> -->
          </ul>
        </div>
      </div>
    </div>
    <div class="clearing"></div>
    <div class="testimonnial">
      <div class="panel">
        <div class="title">
          <h1>热点话题</h1>
        </div>
        <div class="content"> <img src="/Public/images/icon2.png" alt="icon"  class="float-left mar-right20"/>
          <h2>红石榴鲜活矿物睡眠面膜</h2>
        </div>

    <?php $__FOR_START_18858__=0;$__FOR_END_18858__=10;for($vo=$__FOR_START_18858__;$vo < $__FOR_END_18858__;$vo+=1){ ?><div class="content">
          <P>“ 御泥坊的面膜怎么样？ ”<br />
            <span>御泥坊</span> / <a href="<?php echo U('index/news');?>">详情</a></P>
        </div><?php } ?>

      </div>
    </div>
    <div class="quick-contact bdr-bottom-none">
      <div class="panel">
        <div class="title">
          <h1>热卖商品 <a href="" style='float:right;font-size:16px;'>>>更多</a></h1>
        </div>

    <?php $__FOR_START_19976__=0;$__FOR_END_19976__=6;for($vo=$__FOR_START_19976__;$vo < $__FOR_END_19976__;$vo+=1){ ?><div class="content">
          <a href=""><img src="/Public/images/img2.jpg" alt='' /></a>
          <h2>御泥坊红石榴鲜活矿物睡眠面膜</h2>
        </div><?php } ?>

      </div>
    </div>
  </div>
  <div class="clearing"></div>


</div>


<!---page-->

<!-- 底部区块 -->



<div class="copyright-wrap">
  <div class="copyright">
    <div class="content">
      <p>友情链接：<a href="">御泥坊官网</a></p><br/>
      <p>Copyright &copy; 2015-2016.版权所有<a href="" target="_blank"> 御泥坊 </a></p>
    </div>
  </div>
</div>
</body>
</html>