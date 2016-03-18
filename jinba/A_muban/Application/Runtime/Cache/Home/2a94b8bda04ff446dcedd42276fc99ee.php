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
<!-- header-wrap-end  -->

<div class="page">
  <div class="primary-col">
    <div class="wrap-1">

  <?php $__FOR_START_955__=0;$__FOR_END_955__=8;for($vo=$__FOR_START_955__;$vo < $__FOR_END_955__;$vo+=1){ ?><div class="panel <?php if($vo%2): ?>float-right<?php else: ?>float-left<?php endif; ?>  ">
        <div class="content"> <img src="/Public/images/img2.jpg" alt="image"  class="float-left mar-right20"/>
          <h2><a href="#">御泥坊红石榴鲜活矿物睡眠面膜180g</a></h2>
          <p style='color:#f47777;font-weight:600'>￥ 29.9</p>
        </div>
      </div><?php } ?>


    </div>
    <div class="generic bdr-bottom-none">
      
      <?php $__FOR_START_5617__=0;$__FOR_END_5617__=8;for($vo=$__FOR_START_5617__;$vo < $__FOR_END_5617__;$vo+=1){ ?><div class="panel"><br/>
          <div class="title">
            <h1><a href="">御泥坊牵手电影《特殊身份》 甄子丹献唱首映礼</a></h1>
          </div>
          <div class="content">
            <h2>from御泥坊的面膜怎么样 1265阅读 标签:</h2>
            <p>御泥坊适合什么年龄?面膜不分年龄，是分不同的问题如收缩毛孔去黑头这些问题。看针对性来买。有清洁的，有美白的，有保养的，任何年龄都有针对那一类人群，看你自己...</p>
            <div class="button"><a href="#">More Info</a></div>
          </div>
        </div><?php } ?>
        

    </div><br/>
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

          <?php $__FOR_START_29803__=0;$__FOR_END_29803__=9;for($vo=$__FOR_START_29803__;$vo < $__FOR_END_29803__;$vo+=1){ ?><li><a href="<?php echo U('index/news');?>">御泥坊红石榴鲜活矿物睡眠面膜180g</a></li><?php } ?>

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

    <?php $__FOR_START_6491__=0;$__FOR_END_6491__=10;for($vo=$__FOR_START_6491__;$vo < $__FOR_END_6491__;$vo+=1){ ?><div class="content">
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

    <?php $__FOR_START_10855__=0;$__FOR_END_10855__=6;for($vo=$__FOR_START_10855__;$vo < $__FOR_END_10855__;$vo+=1){ ?><div class="content">
          <a href=""><img src="/Public/images/img2.jpg" alt='' /></a>
          <h2>御泥坊红石榴鲜活矿物睡眠面膜</h2>
        </div><?php } ?>

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
      <p>友情链接：<a href="">御泥坊官网</a></p><br/>
      <p>Copyright &copy; 2015-2016.版权所有<a href="" target="_blank"> 御泥坊 </a></p>
    </div>
  </div>
</div>
</body>
</html>