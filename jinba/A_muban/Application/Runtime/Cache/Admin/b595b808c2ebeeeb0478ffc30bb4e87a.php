<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台模板管理系统</title>
<link type="text/css" rel="stylesheet" href="/A_muban/Public/css/adminstyle.css" />
<script type="text/javascript" src="/A_muban/Public/js/jquery.min.js"></script>
<script type="text/javascript" src="/A_muban/Public/js/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
	<div class="logo">八卦屋后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href=""><?php echo ($_SESSION['username']); ?></a></li>
			<li><a href="">修改密码</a></li>
			<li><a href="">设置</a></li>
			<li><a href="">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span><b>Banner与品牌</b></h4>
          <div class="list-item none">
            <a href="<?php echo U('brand/index');?>" target="mainFrame">品牌列表</a>
            <a href="<?php echo U('brand/addBrand');?>" target="mainFrame">添加品牌</a>
            <a href="<?php echo U('banner/index');?>" target="mainFrame">Banner列表</a>
            <a href="<?php echo U('banner/addBanner');?>" target="mainFrame">添加Banner</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span><b>商品管理</b></h4>
          <div class="list-item none">
            <a href="<?php echo U('goodsList');?>" target="mainFrame">商品列表</a> 
            <a href="<?php echo U('addGoods');?>" target="mainFrame">添加商品</a>
            <a href="<?php echo U('importGoods');?>" target="mainFrame">批量导入</a>      
           </div>
        </li>
  </ul>
		</div>

		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="/A_muban/Public/images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">商品管理</a></li>
						</ul>
			</div>
			<div class="main">
				<iframe src="<?php echo U('goodsList');?>" frameborder="0" width='100%' height='100%' name='mainFrame'></iframe>
			</div>
		</div>
		
</div>
<div class="bottom"></div>
<div id="footer"><p>八卦屋版权所有！</p></div>
<script>navList(12);</script>
</body>
</html>