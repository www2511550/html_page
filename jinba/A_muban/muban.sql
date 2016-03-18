/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : muban

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-03-18 18:31:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bgw_banner
-- ----------------------------
DROP TABLE IF EXISTS `bgw_banner`;
CREATE TABLE `bgw_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `b_name` varchar(50) DEFAULT NULL COMMENT 'banner标题',
  `b_min_img_path` varchar(255) DEFAULT NULL COMMENT '小图地址',
  `b_img_path` varchar(255) DEFAULT NULL COMMENT '大图地址',
  `b_sort` int(11) DEFAULT '0' COMMENT '优先级',
  `b_status` tinyint(4) DEFAULT '1' COMMENT '0不显示，1显示',
  `b_addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `b_href` varchar(266) DEFAULT NULL COMMENT '跳转地址',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_banner
-- ----------------------------
INSERT INTO `bgw_banner` VALUES ('1', '韩都衣舍', 'Uploads/thumb/banner/2016-03-05/145716154012.jpg', 'Uploads/banner/2016-03-05/145716154012.jpg', '10', '1', '2016-03-05 15:05:41', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D5pDtEHlMfg0cQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMTpK1UdtTU7At4hWD5k2kjP7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MGN8vnPi8JEuOd0SAH%2Fup2mxgxdTc00KD8%3D');
INSERT INTO `bgw_banner` VALUES ('2', '诗凡黎官方旗舰店', 'Uploads/thumb/banner/2016-03-05/145716174989.jpg', 'Uploads/banner/2016-03-05/145716174989.jpg', '4', '1', '2016-03-05 15:09:09', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DhyIWq86EctwcQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMbMzNErFusR9xq3IhSJN6GT7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MGkltzErhRUJG6ndXtK%2FoOXxgxdTc00KD8%3D');
INSERT INTO `bgw_banner` VALUES ('3', '天衣布品旗舰店', 'Uploads/thumb/banner/2016-03-05/145716210685.jpg', 'Uploads/banner/2016-03-05/145716210685.jpg', '8', '1', '2016-03-05 15:15:06', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DiaAlrz6T8C4cQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMYOEamBLB5QI8sviUM61dt37NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MHnkc8xSdGVfJ05TDQljNi3cSpj5qSCmbA%3D');
INSERT INTO `bgw_banner` VALUES ('4', '薇妮鸟旗舰店', 'Uploads/thumb/banner/2016-03-05/145716231410.jpg', 'Uploads/banner/2016-03-05/145716231410.jpg', '9', '0', '2016-03-05 15:18:34', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dg2ArNtnL%2FcEcQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMVAlUgL3FTaj79%2FTFaMDK6T7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MH5i9Stkdg5pDCE03k8qrN7xgxdTc00KD8%3D');
INSERT INTO `bgw_banner` VALUES ('5', '诗梵米亚旗舰店', 'Uploads/thumb/banner/2016-03-05/145716303988.jpg', 'Uploads/banner/2016-03-05/145716303988.jpg', '12', '1', '2016-03-05 15:30:40', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dbjxk5ANJ7EkcQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMWk9QPjAm2B7J1gyddu7kN%2F7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MHY%2FiSLytfYujRWbJeSN%2FyNxgxdTc00KD8%3D');

-- ----------------------------
-- Table structure for bgw_brand
-- ----------------------------
DROP TABLE IF EXISTS `bgw_brand`;
CREATE TABLE `bgw_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `b_name` varchar(20) NOT NULL COMMENT '品牌名称',
  `b_img` varchar(255) NOT NULL COMMENT '品牌图片',
  `b_href` varchar(255) NOT NULL COMMENT '品牌跳转地址',
  `b_sort` tinyint(4) NOT NULL COMMENT '优先级，大到小',
  `b_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-关闭，1-开启',
  `b_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_brand
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_cart
-- ----------------------------
DROP TABLE IF EXISTS `bgw_cart`;
CREATE TABLE `bgw_cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `gid` int(11) DEFAULT NULL COMMENT '商品id',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_cart
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_category
-- ----------------------------
DROP TABLE IF EXISTS `bgw_category`;
CREATE TABLE `bgw_category` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `c_name` varchar(25) NOT NULL COMMENT '栏目名',
  `pid` smallint(6) NOT NULL COMMENT '父级id',
  `c_status` tinyint(4) NOT NULL COMMENT '是否上架 0隐藏 1显示',
  `c_position` tinyint(4) NOT NULL COMMENT '位置id',
  `c_sort` tinyint(4) NOT NULL COMMENT '优先级',
  `c_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_category
-- ----------------------------
INSERT INTO `bgw_category` VALUES ('1', '三只松鼠大礼包', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('2', '三只松鼠坚果', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('3', '三只松鼠干果', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('4', '三只松鼠花茶', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('5', '品牌汇', '0', '1', '3', '0', '0');
INSERT INTO `bgw_category` VALUES ('6', '三只松鼠美美哒', '0', '1', '4', '0', '0');
INSERT INTO `bgw_category` VALUES ('7', '上衣', '0', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('9', 'T恤', '7', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('8', '针织衫', '7', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('10', '裤子', '0', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('11', '休闲裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('12', '牛仔裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('13', '打底裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('14', '三只松鼠推荐', '0', '1', '5', '0', '0');
INSERT INTO `bgw_category` VALUES ('15', '随衣搭配', '0', '1', '9', '0', '0');
INSERT INTO `bgw_category` VALUES ('16', '美容装', '0', '1', '7', '0', '0');
INSERT INTO `bgw_category` VALUES ('17', '衬衫', '7', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('18', '三只松鼠特价', '0', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for bgw_config
-- ----------------------------
DROP TABLE IF EXISTS `bgw_config`;
CREATE TABLE `bgw_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动递增',
  `w_title` varchar(50) NOT NULL COMMENT '网站标题',
  `w_keywords` varchar(100) NOT NULL COMMENT '网站关键字',
  `w_descprition` varchar(200) NOT NULL COMMENT '网站描述',
  `w_href` varchar(300) NOT NULL COMMENT '网站推广链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_config
-- ----------------------------
INSERT INTO `bgw_config` VALUES ('1', '劲霸男装-劲霸官网-劲霸旗舰店-劲霸', '劲霸男装，劲霸男装怎么样，劲霸旗舰店，劲霸男装质量如何', '', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dgl42xkK3SiYcQipKwQzePDAVflQIoZepK7Vc7tFgwiFRAdhuF14FMTeX%2BrctLXsJMMgx22UI05b7NDlUe4zrD%2Fs0nw0WcSU4kgd8uhri6MEb4CGj5PWdvBE%2BS%2BmISuKycSpj5qSCmbA%3D');

-- ----------------------------
-- Table structure for bgw_goods
-- ----------------------------
DROP TABLE IF EXISTS `bgw_goods`;
CREATE TABLE `bgw_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `title` varchar(50) NOT NULL COMMENT '商品标题',
  `new_price` decimal(10,0) NOT NULL COMMENT '商品最新价格',
  `old_price` decimal(10,0) NOT NULL COMMENT '商品原价',
  `min_img_path` varchar(255) NOT NULL COMMENT 'wap图片',
  `img_path` varchar(255) NOT NULL COMMENT '原图',
  `href_path` varchar(268) NOT NULL COMMENT '跳转地址',
  `is_display` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `addtime` int(11) NOT NULL COMMENT '上架时间',
  `money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '预计返现',
  `sort` int(11) DEFAULT '0' COMMENT '是否优先展示',
  `goods_num` varchar(20) DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '1',
  `click_num` int(11) DEFAULT '0' COMMENT '点击数',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_goods
-- ----------------------------
INSERT INTO `bgw_goods` VALUES ('408', '【三只松鼠_坚果大礼包1528g】零食干果特产礼盒8袋装 时尚红', '118', '148', 'Uploads/thumb/2016-03-12/1457775004_9.jpg', 'Uploads/images/2016-03-12/1457775004_9.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Das%2BLWx9BTt4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBayGckMejm0j1ZlJ747JPcnEqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775005', '3', '0', '524608118829', '1', '1');
INSERT INTO `bgw_goods` VALUES ('409', '14袋 包邮三只松鼠旗舰店大礼包礼盒坚果B套餐碧根果夏威夷果零食', '247', '296', 'Uploads/thumb/2016-03-12/1457775005_63.jpg', 'Uploads/images/2016-03-12/1457775005_63.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DEswZLLC3OxYcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8NtCRY4VzQgUl86wUitt%2BItFmPADVNzqXEqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775005', '5', '0', '35448544603', '1', '0');
INSERT INTO `bgw_goods` VALUES ('410', '【三只松鼠_大礼包D套餐】端午节零食礼包特产坚果礼盒1996g', '119', '155', 'Uploads/thumb/2016-03-12/1457775005_28.jpg', 'Uploads/images/2016-03-12/1457775005_28.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dl0tBE3qZ9tYcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8j2rI6IEd1fS01SseDrwAmhNBs7RHAgRcYMXU3NNCg%2F&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775005', '4', '0', '520069307319', '1', '0');
INSERT INTO `bgw_goods` VALUES ('411', '三只松鼠旗舰店大礼包D套餐 9包休闲零食干果坚果礼盒1996g包邮', '95', '109', 'Uploads/thumb/2016-03-12/1457775005_66.jpg', 'Uploads/images/2016-03-12/1457775005_66.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DBA3z%2FahAZ7scQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR9oFwm8vYFoC7lgnFz2KQWxge%2BXdDIMGbiGFCzYOOqAQ&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775005', '1', '0', '523939506750', '1', '0');
INSERT INTO `bgw_goods` VALUES ('412', '【三只松鼠_坚果大礼包1208g】零食特产年货礼盒6袋装 活力橙版', '92', '106', 'Uploads/thumb/2016-03-12/1457775006_45.jpg', 'Uploads/images/2016-03-12/1457775006_45.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DFk7%2F%2BheAHFocQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROqz9N98RfLXMiu3d7xANiVSVwLX04yq3DsYMXU3NNCg%2F&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775006', '1', '0', '525406633174', '1', '0');
INSERT INTO `bgw_goods` VALUES ('413', '7袋 包邮三只松鼠旗舰店大礼包礼盒C套餐夏威夷果坚果零食品1635g', '150', '180', 'Uploads/thumb/2016-03-12/1457775006_75.jpg', 'Uploads/images/2016-03-12/1457775006_75.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D5lj9brHR%2BFkcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8NtCRY4VzQgUl86wUitt%2BIPcZMl9ERu7nEqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775006', '3', '0', '35447473770', '1', '0');
INSERT INTO `bgw_goods` VALUES ('414', '【三只松鼠_坚果大礼包1528g】零食特产年货礼盒8袋装时尚红版', '130', '149', 'Uploads/thumb/2016-03-12/1457775006_65.jpg', 'Uploads/images/2016-03-12/1457775006_65.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4jeSP%2F5uj60cQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg0usO5Il2m%2B1pfsplCw6m35mCpYb%2BW79L8YMXU3NNCg%2F&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775006', '2', '0', '525820552562', '1', '0');
INSERT INTO `bgw_goods` VALUES ('415', '【三只松鼠_零食大礼包1996g】休闲零食森林礼盒9袋装 D套餐版', '98', '123', 'Uploads/thumb/2016-03-12/1457775007_100.jpg', 'Uploads/images/2016-03-12/1457775007_100.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DPpYTn706a7ccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBuwWb0nf3qzGnDXEIccYAiyGFCzYOOqAQ&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775007', '2', '0', '37766596873', '1', '2');
INSERT INTO `bgw_goods` VALUES ('416', '【三只松鼠_坚果大礼包1635g】零食特产特产礼盒7袋装 雅致黑版', '149', '186', 'Uploads/thumb/2016-03-12/1457775007_67.jpg', 'Uploads/images/2016-03-12/1457775007_67.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Doq5tMZJHQWQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBJsdPYYWIMBlhT2dooslNvyGFCzYOOqAQ&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775007', '4', '0', '36608973006', '1', '0');
INSERT INTO `bgw_goods` VALUES ('417', '【三只松鼠旗舰店坚果大礼包1528g】零食特产年货礼盒8袋装时尚红', '118', '136', 'Uploads/thumb/2016-03-12/1457775007_8.jpg', 'Uploads/images/2016-03-12/1457775007_8.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DKcDnJZBl8iMcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROqz9N98RfLXM9wfHOxNI2vKzOq26TVLMdcYMXU3NNCg%2F&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775008', '2', '0', '525382091143', '1', '0');
INSERT INTO `bgw_goods` VALUES ('418', '两3个支颗棵三只松鼠坚果大礼包盒1635g C套餐组合三3个只颗松鼠', '168', '193', 'Uploads/thumb/2016-03-12/1457775008_97.jpg', 'Uploads/images/2016-03-12/1457775008_97.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DnAmD2b%2BE%2FmYcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR9dHe%2F2Xxxhoelp5XCAOVISpKALGdKhVq3EqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775008', '3', '0', '525147762889', '1', '0');
INSERT INTO `bgw_goods` VALUES ('419', '三只松鼠旗舰店坚果大礼包C套餐1635g特产7包坚果旗舰店礼盒包邮', '148', '170', 'Uploads/thumb/2016-03-12/1457775008_86.jpg', 'Uploads/images/2016-03-12/1457775008_86.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4L5uE4wNGlscQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR9oFwm8vYFoCET7Bd8E28h86OsADFYA04cYOae24fhW0&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775008', '2', '0', '43838066850', '1', '0');
INSERT INTO `bgw_goods` VALUES ('420', '三只松鼠旗舰店坚果大礼包C套餐特产7包坚果1635g礼盒雅致黑版', '155', '178', 'Uploads/thumb/2016-03-12/1457775009_95.jpg', 'Uploads/images/2016-03-12/1457775009_95.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dco9IC0K6SbscQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROqz9N98RfLXMCvlMBrpcxnnrIsl%2B0mSdpnEqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775009', '2', '0', '43009652531', '1', '0');
INSERT INTO `bgw_goods` VALUES ('421', '三只松鼠旗舰店大礼包D套餐9包零食礼包干果特产送礼礼盒1996g', '98', '113', 'Uploads/thumb/2016-03-12/1457775009_30.jpg', 'Uploads/images/2016-03-12/1457775009_30.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DFhtrn1LqOF8cQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROqz9N98RfLXMHWVl0qvp%2BhpBWScLYlPiD3EqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775009', '1', '0', '42932663948', '1', '0');
INSERT INTO `bgw_goods` VALUES ('422', '【天猫超市】三只松鼠 坚果大礼包1635g零食礼盒7袋装 雅致黑版', '149', '194', 'Uploads/thumb/2016-03-12/1457775009_36.jpg', 'Uploads/images/2016-03-12/1457775009_36.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DZbKffD55bgYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3A87FBk1HI8KruTKdtkh9hcvWGPBqEBRiGFCzYOOqAQ&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775009', '4', '0', '45720727282', '1', '0');
INSERT INTO `bgw_goods` VALUES ('423', '【三只松鼠_坚果大礼包2956g】零食特产干果礼盒14袋装 金色版', '238', '298', 'Uploads/thumb/2016-03-12/1457775009_46.jpg', 'Uploads/images/2016-03-12/1457775009_46.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DN%2Bdr91ooGmccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB%2BdNPrzYA1uAfWqzsu18tgyGFCzYOOqAQ&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775009', '6', '0', '36638560539', '1', '0');
INSERT INTO `bgw_goods` VALUES ('424', '简装 三只松鼠旗舰店坚果组合大礼包 非礼盒 套餐 6包1176g 包邮', '90', '103', 'Uploads/thumb/2016-03-12/1457775009_45.jpg', 'Uploads/images/2016-03-12/1457775009_45.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2BSMgmPTnxtAcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg0usO5Il2m%2B1jBpjmn9FNRDyLCEcLERx33EqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775009', '1', '0', '44862542354', '1', '1');
INSERT INTO `bgw_goods` VALUES ('425', '【三只松鼠_坚果大礼包1208g】零食干果特产礼盒6袋装活力橙', '88', '110', 'Uploads/thumb/2016-03-12/1457775010_88.jpg', 'Uploads/images/2016-03-12/1457775010_88.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2BRf5sZMrMf8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qdmWteZNZOQ2VSL3ITNpk2rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBl3CqB2b7HPLI6YsEKU%2BhonEqY%2Bakgpmw&pvid=11_27.38.9.128_357_1457774646474', '1', '1457775010', '2', '0', '524324255594', '1', '0');
INSERT INTO `bgw_goods` VALUES ('426', '【三只松鼠_夏威夷果265gx3袋】零食坚果炒货干果奶油味送开口器', '66', '82', 'Uploads/thumb/2016-03-12/1457775868_40.jpg', 'Uploads/images/2016-03-12/1457775868_40.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D03FoPRHtz5EcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB5%2BchlZOGEsCJVCtuz7KwuyGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '2', '0', '38396983087', '2', '0');
INSERT INTO `bgw_goods` VALUES ('427', '【三只松鼠_炭烧腰果185g】零食坚果炒货干果越南特产腰果仁', '32', '40', 'Uploads/thumb/2016-03-12/1457775868_75.jpg', 'Uploads/images/2016-03-12/1457775868_75.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D6x4LS0%2FEyFEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBo3%2Ffp8s%2B0YkqvmcUMJdMSyGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '1', '0', '45724380204', '2', '0');
INSERT INTO `bgw_goods` VALUES ('428', '【天猫超市】三只松鼠 开口松子218g零食坚果炒货东北红松子原味', '26', '34', 'Uploads/thumb/2016-03-12/1457775868_21.jpg', 'Uploads/images/2016-03-12/1457775868_21.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DnhOMlv9GQ6EcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg1DHByrIDx1QWuIt1uuQw2mb99kYF1uL%2BnEqY%2Bakgpmw&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '1', '0', '45801533607', '2', '0');
INSERT INTO `bgw_goods` VALUES ('429', '【三只松鼠_蜜味夏威夷果仁135g】休闲零食特产炒货澳洲坚果仁', '30', '37', 'Uploads/thumb/2016-03-12/1457775868_95.jpg', 'Uploads/images/2016-03-12/1457775868_95.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2FHWht9NdlpMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBJG0Q5b5uXcwsD4SPPOrjyyGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '1', '0', '43568207885', '2', '0');
INSERT INTO `bgw_goods` VALUES ('430', '【三只松鼠_炭烧腰果185gx2袋】零食坚果炒货越南特产腰果仁', '34', '42', 'Uploads/thumb/2016-03-12/1457775868_75.jpg', 'Uploads/images/2016-03-12/1457775868_75.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Ds8pQhpxlUF0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBpcbnfEto88%2FwAe%2FS%2FZNGmyGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '1', '0', '16205066035', '2', '0');
INSERT INTO `bgw_goods` VALUES ('431', '【三只松鼠_手剥巴旦木235gx2袋】零食坚果炒货特产干果巴达木', '43', '54', 'Uploads/thumb/2016-03-12/1457775868_54.jpg', 'Uploads/images/2016-03-12/1457775868_54.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D1H8uqiJhJCscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBgFtrWVzp5fRQNSH5R5fJ3SGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775868', '1', '0', '15103662173', '2', '0');
INSERT INTO `bgw_goods` VALUES ('432', '【三只松鼠_兰花豆120g】休闲零食坚果炒货小包装蚕豆牛肉味', '7', '9', 'Uploads/thumb/2016-03-12/1457775869_39.jpg', 'Uploads/images/2016-03-12/1457775869_39.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DraB11dsuMOMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBF5i7FPtqjk8wwvaVo7DKuiGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '0', '0', '38217647200', '2', '0');
INSERT INTO `bgw_goods` VALUES ('433', '【三只松鼠_兰花豆205gx2袋】休闲零食小吃坚果炒货蚕豆牛肉味', '22', '27', 'Uploads/thumb/2016-03-12/1457775869_53.jpg', 'Uploads/images/2016-03-12/1457775869_53.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DWUZ%2BuKis8iwcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBK2DlPW04QzD8V4aAJKlGGyGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '1', '0', '45625715009', '2', '0');
INSERT INTO `bgw_goods` VALUES ('434', '【三只松鼠_碧根果210gx2袋】零食坚果山核桃长寿果干果奶油味', '37', '46', 'Uploads/thumb/2016-03-12/1457775869_95.jpg', 'Uploads/images/2016-03-12/1457775869_95.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DvTlze5yetsgcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBMwfGPLfe2%2F5spb8ugb5OOCGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '1', '0', '16204910274', '2', '0');
INSERT INTO `bgw_goods` VALUES ('435', '【三只松鼠_奶油味瓜子168g】休闲零食坚果炒货葵花籽', '7', '9', 'Uploads/thumb/2016-03-12/1457775869_5.jpg', 'Uploads/images/2016-03-12/1457775869_5.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DgvymUo0eVbMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBNXNiLy7iDQ3akj2Y0E0xJSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '0', '0', '41620092822', '2', '0');
INSERT INTO `bgw_goods` VALUES ('436', '【三只松鼠_夏威夷果265gx2袋】零食坚果干果奶油味送开口器', '40', '50', 'Uploads/thumb/2016-03-12/1457775869_28.jpg', 'Uploads/images/2016-03-12/1457775869_28.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DdY%2FG0ZREqagcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBYMYRRduE75Y%2BQaIeOPeWCSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '1', '0', '16455487050', '2', '0');
INSERT INTO `bgw_goods` VALUES ('437', '【三只松鼠_紫薯花生120g】零食小吃坚果炒货花生米萌版小包装', '6', '7', 'Uploads/thumb/2016-03-12/1457775869_14.jpg', 'Uploads/images/2016-03-12/1457775869_14.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DRFLmM0zLAg4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBus5FDZnMQNzQdr%2Fo8LolNSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775869', '0', '0', '35596126919', '2', '0');
INSERT INTO `bgw_goods` VALUES ('438', '【三只松鼠_甘栗仁100g】休闲零食坚果河北特产板栗仁栗子仁美栗', '10', '12', 'Uploads/thumb/2016-03-12/1457775869_47.jpg', 'Uploads/images/2016-03-12/1457775869_47.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dg1EnUuCYShUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBFy2Q0cIN7NadoKnbgYHJsCGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775870', '0', '0', '42674067342', '2', '0');
INSERT INTO `bgw_goods` VALUES ('439', '【三只松鼠_碧根果210g】零食坚果炒货山核桃长寿果干果奶油味', '34', '42', 'Uploads/thumb/2016-03-12/1457775870_94.jpg', 'Uploads/images/2016-03-12/1457775870_94.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DKwvBXZqyerUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBLjYwS%2BmBZFvthmjnzydTKiGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775870', '1', '0', '19357050216', '2', '0');
INSERT INTO `bgw_goods` VALUES ('440', '【三只松鼠_手剥巴旦木235g】零食坚果炒货干果巴达木扁桃仁', '40', '50', 'Uploads/thumb/2016-03-12/1457775870_30.jpg', 'Uploads/images/2016-03-12/1457775870_30.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2Bg0kbLZ1OwAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB0Dlr3pbA61fx0J2tJVWypSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775870', '1', '0', '41686937186', '2', '0');
INSERT INTO `bgw_goods` VALUES ('441', '【三只松鼠_小贱甘栗仁100g】零食坚果特产小吃熟制无壳板栗仁', '7', '9', 'Uploads/thumb/2016-03-12/1457775870_17.jpg', 'Uploads/images/2016-03-12/1457775870_17.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DZB5mnLdrjrAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBi43Of4%2F4hbLbL3YQggKTv3EqY%2Bakgpmw&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775870', '0', '0', '521425719678', '2', '0');
INSERT INTO `bgw_goods` VALUES ('442', '【三只松鼠_小银杏225g】零食坚果特产炒货开口扁杏仁', '16', '20', 'Uploads/thumb/2016-03-12/1457775870_48.jpg', 'Uploads/images/2016-03-12/1457775870_48.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4BUR9DndvJkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBoyz4wHQXJEiLpSf05UB3kCGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775870', '0', '0', '18316108636', '2', '0');
INSERT INTO `bgw_goods` VALUES ('443', '【三只松鼠_多味花生205g】休闲零食坚果炒货花生米', '16', '20', 'Uploads/thumb/2016-03-12/1457775870_17.jpg', 'Uploads/images/2016-03-12/1457775870_17.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DbRMLn1PdvXQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB3VpFyJfxLyXIe8xJStJG5SGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '0', '0', '35597367954', '2', '0');
INSERT INTO `bgw_goods` VALUES ('444', '【三只松鼠_手剥松子125g】零食坚果特产炒货干果巴西松子', '46', '57', 'Uploads/thumb/2016-03-12/1457775871_39.jpg', 'Uploads/images/2016-03-12/1457775871_39.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DNwLOJ6OGfgEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBIfco2MGosP5ogiN3TbnkcSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '1', '0', '15907054662', '2', '0');
INSERT INTO `bgw_goods` VALUES ('445', '【三只松鼠_琥珀核桃仁165gx2袋】坚果特产休闲零食纸皮核桃肉', '33', '41', 'Uploads/thumb/2016-03-12/1457775871_70.jpg', 'Uploads/images/2016-03-12/1457775871_70.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D0NsyW9UXwl4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBlIhn7m1Xe0dJ2F8TubQMiSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '1', '0', '35302964863', '2', '0');
INSERT INTO `bgw_goods` VALUES ('446', '【三只松鼠_紫薯花生120gx2袋】零食小吃坚果炒货花生米萌版', '10', '12', 'Uploads/thumb/2016-03-12/1457775871_48.jpg', 'Uploads/images/2016-03-12/1457775871_48.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DASglK4Np7UkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBKtd3We4W1aWmY8guwe1ZpSGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '0', '0', '39833569462', '2', '0');
INSERT INTO `bgw_goods` VALUES ('447', '【三只松鼠_夏威夷果185g】零食坚果特产炒货干果奶油味送开口器', '30', '37', 'Uploads/thumb/2016-03-12/1457775871_24.jpg', 'Uploads/images/2016-03-12/1457775871_24.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DEvHNq7plBp8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBZtPrVYL%2FBrthxGVwhSy2CiGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '1', '0', '44221741342', '2', '0');
INSERT INTO `bgw_goods` VALUES ('448', '聚【三只松鼠_开口松子218gx2袋】零食坚果炒货东北红松子原味', '45', '60', 'Uploads/thumb/2016-03-12/1457775871_92.jpg', 'Uploads/images/2016-03-12/1457775871_92.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DUlQR7Z%2FyXAscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBF2dI7R47Q7BweRaWB0gNOCGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '2', '0', '17540507116', '2', '0');
INSERT INTO `bgw_goods` VALUES ('449', '【三只松鼠_开心果225gx2袋】休闲零食坚果炒货干果原味无漂白', '60', '75', 'Uploads/thumb/2016-03-12/1457775871_24.jpg', 'Uploads/images/2016-03-12/1457775871_24.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DKSMm5dd0SpMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67idpWVfNDEoZ%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBCIufWBzSkk%2Fqx5IFbxNF9CGFCzYOOqAQ&pvid=11_27.38.9.127_365_1457775826467', '1', '1457775871', '1', '0', '17200027726', '2', '3');
INSERT INTO `bgw_goods` VALUES ('450', '【天猫超市】三只松鼠 手剥松子125g零食坚果炒货干果巴西松子', '46', '64', 'Uploads/thumb/2016-03-12/1457776008_59.jpg', 'Uploads/images/2016-03-12/1457776008_59.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Ds42g1Wv7D34cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eClwLi2cI8uYkOGbCt62CCZbHEqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776008', '2', '0', '45720555580', '3', '0');
INSERT INTO `bgw_goods` VALUES ('451', '【三只松鼠_脆动枣180g】休闲零食特产干果红枣即食无核脆冬枣', '27', '34', 'Uploads/thumb/2016-03-12/1457776009_89.jpg', 'Uploads/images/2016-03-12/1457776009_89.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DHC5CeQ1gs6scQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBQloTYO03p%2FsAakSR8cjlr3EqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776009', '1', '0', '521137160609', '3', '0');
INSERT INTO `bgw_goods` VALUES ('452', '【三只松鼠_黑加仑葡萄干280g】休闲零食特产新疆吐鲁番干果', '19', '24', 'Uploads/thumb/2016-03-12/1457776009_65.jpg', 'Uploads/images/2016-03-12/1457776009_65.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D9lTn03%2FLvJEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBS3U1tMrHmkjtqscZqAZLbyGFCzYOOqAQ&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776009', '0', '0', '17488579296', '3', '0');
INSERT INTO `bgw_goods` VALUES ('453', '【三只松鼠_和田骏枣二等415gx2袋】休闲零食干果特产红枣子大枣', '64', '80', 'Uploads/thumb/2016-03-12/1457776009_97.jpg', 'Uploads/images/2016-03-12/1457776009_97.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DXMWsjpb%2FsEocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB34FMyP%2Bf%2Ff7Vb3N518pY8SGFCzYOOqAQ&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776009', '2', '0', '41661002666', '3', '0');
INSERT INTO `bgw_goods` VALUES ('454', '【三只松鼠_手剥巴旦木235gx3袋】零食坚果炒货特产干果巴达木', '72', '90', 'Uploads/thumb/2016-03-12/1457776009_69.jpg', 'Uploads/images/2016-03-12/1457776009_69.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DpF8HWz3%2BqDUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBsU33pSbGONVCXQFSES8GMHEqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776009', '2', '0', '523343172954', '3', '0');
INSERT INTO `bgw_goods` VALUES ('455', '【天猫超市】 三只松鼠 黑加仑葡萄干 280g新疆特产干果吐鲁番', '19', '26', 'Uploads/thumb/2016-03-12/1457776009_33.jpg', 'Uploads/images/2016-03-12/1457776009_33.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DVuoar5CwFKAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eClrsEg5vBMuVE8aZtJ1RcbRXEqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776009', '1', '0', '45821432901', '3', '0');
INSERT INTO `bgw_goods` VALUES ('456', '【三只松鼠_和田小枣180g】休闲零食干果新疆特产红枣子', '12', '15', 'Uploads/thumb/2016-03-12/1457776009_37.jpg', 'Uploads/images/2016-03-12/1457776009_37.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DajWmKlQvc5QcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBDK78e6GtBvYzrHgA2fliJSGFCzYOOqAQ&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '0', '0', '19786813863', '3', '0');
INSERT INTO `bgw_goods` VALUES ('457', '【天猫超市】 三只松鼠 和田小枣 180g新疆特产干果休闲零食红枣', '13', '18', 'Uploads/thumb/2016-03-12/1457776010_15.jpg', 'Uploads/images/2016-03-12/1457776010_15.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DBaIOFp7sIn8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eClwLi2cI8uYkMkGaY6UknG1HEqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '1', '0', '45720371849', '3', '0');
INSERT INTO `bgw_goods` VALUES ('458', '【天猫超市】三只松鼠 炭烧腰果185gx2袋零食坚果炒货干果腰果仁', '59', '77', 'Uploads/thumb/2016-03-12/1457776010_89.jpg', 'Uploads/images/2016-03-12/1457776010_89.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DwxCL76ktxnscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg1DHByrIDx1Qd%2BWZB36gu8MicdxpQgV2HcYMXU3NNCg%2F&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '2', '0', '525150450156', '3', '0');
INSERT INTO `bgw_goods` VALUES ('459', '【三只松鼠_和田骏枣一等415g】休闲零食干果新疆特产红枣子', '33', '41', 'Uploads/thumb/2016-03-12/1457776010_32.jpg', 'Uploads/images/2016-03-12/1457776010_32.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dkahz9wAGDN4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkNn%2BZ%2BvmugEgERJmwrwwiyGFCzYOOqAQ&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '1', '0', '26847476773', '3', '0');
INSERT INTO `bgw_goods` VALUES ('460', '【三只松鼠_开心果225gx3袋】休闲零食坚果炒货干果原味无漂白', '100', '125', 'Uploads/thumb/2016-03-12/1457776010_7.jpg', 'Uploads/images/2016-03-12/1457776010_7.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DBmX3lwtq6J4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBE0edr2RQqBPvJYL%2Ba31SsCGFCzYOOqAQ&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '2', '0', '41695832920', '3', '0');
INSERT INTO `bgw_goods` VALUES ('461', '【三只松鼠_无核香枣240g】休闲零食特产干果红枣即食灰枣', '26', '32', 'Uploads/thumb/2016-03-12/1457776010_91.jpg', 'Uploads/images/2016-03-12/1457776010_91.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DC7s749ZAfA0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67nEq40hJonIoWI6w0dMGH8irEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBQloTYO03p%2FstmiC%2B%2BICcwXEqY%2Bakgpmw&pvid=11_27.38.9.127_1257387_1457775985180', '1', '1457776010', '1', '0', '521134169167', '3', '1');
INSERT INTO `bgw_goods` VALUES ('462', '【三只松鼠_小美法兰西玫瑰50gx2盒】花草茶玫瑰花茶玫瑰花蕾', '26', '30', 'Uploads/thumb/2016-03-12/1457776126_61.jpg', 'Uploads/images/2016-03-12/1457776126_61.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dgn7zPKGaMb4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9YFMBzHxYoCOrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8y9k4gH3VYdQnEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776126', '0', '0', '521470849943', '4', '0');
INSERT INTO `bgw_goods` VALUES ('463', '【三只松鼠_小美杭白菊40g】花草茶菊花茶桐乡杭白菊', '16', '18', 'Uploads/thumb/2016-03-12/1457776127_32.jpg', 'Uploads/images/2016-03-12/1457776127_32.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D9OPCC1%2BdP0scQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9YFMBzHxYoCOrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBx8pkQygOvROraMuOcLLJ1XEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776127', '0', '0', '527661067224', '4', '0');
INSERT INTO `bgw_goods` VALUES ('464', '【三只松鼠_小美玫瑰茄45gx2盒】花草茶茶饮洛神花茶', '20', '23', 'Uploads/thumb/2016-03-12/1457776127_3.jpg', 'Uploads/images/2016-03-12/1457776127_3.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DFf%2BwH6vIZtkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9YFMBzHxYoCOrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8yiGvPYqI2auXEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776127', '0', '0', '521472405299', '4', '0');
INSERT INTO `bgw_goods` VALUES ('465', '【三只松鼠_小美清心甘菊15gx2罐】花草茶菊花茶杭白菊桐乡茶', '17', '19', 'Uploads/thumb/2016-03-12/1457776127_80.jpg', 'Uploads/images/2016-03-12/1457776127_80.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dc5%2B9xKTNsuYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9YFMBzHxYoCOrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8wLs8bqhBdmB3EqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776127', '0', '0', '521472309976', '4', '0');
INSERT INTO `bgw_goods` VALUES ('466', '【三只松鼠_小美灵香茉莉10gx2罐】花草茶茉莉花茶随身泡', '16', '18', 'Uploads/thumb/2016-03-12/1457776128_43.jpg', 'Uploads/images/2016-03-12/1457776128_43.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D6sMsIlLI8zQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8zjPpqnZRlSP3EqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776128', '0', '0', '521472473864', '4', '0');
INSERT INTO `bgw_goods` VALUES ('467', '【三只松鼠_法兰西玫瑰花茶】花草茶玫瑰花蕾45g罐装', '20', '23', 'Uploads/thumb/2016-03-12/1457776128_69.jpg', 'Uploads/images/2016-03-12/1457776128_69.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DaB3ysqwQ0RgcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBUy6TrvhUjanqFfd0Z9qAEiGFCzYOOqAQ&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776128', '0', '0', '16776015711', '4', '0');
INSERT INTO `bgw_goods` VALUES ('468', '【三只松鼠_小美馥郁桂花15gx2罐】花草茶桂花茶干桂花饮品', '27', '31', 'Uploads/thumb/2016-03-12/1457776128_58.jpg', 'Uploads/images/2016-03-12/1457776128_58.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DAWr0bJrebwwcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8wwFS9kXtVYRXEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776128', '0', '0', '521475800199', '4', '0');
INSERT INTO `bgw_goods` VALUES ('469', '【三只松鼠_小美洛神红葵15gx2罐】花草茶洛神花茶玫瑰茄盒装', '13', '15', 'Uploads/thumb/2016-03-12/1457776128_23.jpg', 'Uploads/images/2016-03-12/1457776128_23.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DRZ5UURdHB10cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8waF%2BPk%2FBPtCXEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776129', '0', '0', '521470793697', '4', '0');
INSERT INTO `bgw_goods` VALUES ('470', '【三只松鼠_小美情迷玫瑰20gx2罐】花草茶苦水玫瑰花茶盒装', '16', '18', 'Uploads/thumb/2016-03-12/1457776129_96.jpg', 'Uploads/images/2016-03-12/1457776129_96.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DZOtRznMuXjUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8zTzEM8a%2BRxRXEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776129', '0', '0', '521475182971', '4', '0');
INSERT INTO `bgw_goods` VALUES ('471', '【三只松鼠_小美杞菊决明茶礼盒115g】花草茶决明子茶菊花茶枸杞', '37', '42', 'Uploads/thumb/2016-03-12/1457776129_99.jpg', 'Uploads/images/2016-03-12/1457776129_99.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DYPH2z7%2BJI10cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8y%2BqAEbzvdhb3EqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776129', '1', '0', '521478204742', '4', '0');
INSERT INTO `bgw_goods` VALUES ('472', '【三只松鼠_小美金银花茶40g】花草茶茶饮金银花茶', '20', '23', 'Uploads/thumb/2016-03-12/1457776129_87.jpg', 'Uploads/images/2016-03-12/1457776129_87.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DPlCXJ3Gc9jAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBHs8zDWa%2Bfd56AKfVg1CzGXEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776129', '0', '0', '527702710481', '4', '0');
INSERT INTO `bgw_goods` VALUES ('473', '【三只松鼠_小美胎菊王茶45gx2盒】花草茶菊花茶杭白菊桐乡胎菊茶', '24', '28', 'Uploads/thumb/2016-03-12/1457776129_90.jpg', 'Uploads/images/2016-03-12/1457776129_90.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2Fjt%2B2IeG56EcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67pRQ9CorhMN9c4zWPc6e822rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBkxnPV4sYj8ymCcsDr12B0XEqY%2Bakgpmw&pvid=11_27.38.9.128_348_1457776076414', '1', '1457776129', '0', '0', '521476870136', '4', '0');
INSERT INTO `bgw_goods` VALUES ('474', '【三只松鼠_麻辣花生125g】休闲零食坚果炒货花生米麻辣味', '7', '9', 'Uploads/thumb/2016-03-12/1457777802_60.jpg', 'Uploads/images/2016-03-12/1457777802_60.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DVq7dQ8d5NYYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB%2BT03lborPYeGFAAfIMzj6iGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777802', '0', '0', '36729256493', '18', '0');
INSERT INTO `bgw_goods` VALUES ('475', '【三只松鼠_开口甘栗120g】坚果炒货河北特产即食带壳板栗子能栗', '10', '12', 'Uploads/thumb/2016-03-12/1457777802_65.jpg', 'Uploads/images/2016-03-12/1457777802_65.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DduoDc9yVSr8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBwIcmBNHJ025xg7qldoucFyGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777803', '0', '0', '42693002712', '18', '0');
INSERT INTO `bgw_goods` VALUES ('476', '【天猫超市】 三只松鼠 蟹香蚕豆205g 休闲零食炒货小吃蟹香蚕豆', '13', '17', 'Uploads/thumb/2016-03-12/1457777803_5.jpg', 'Uploads/images/2016-03-12/1457777803_5.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DVGfRQNn6JQUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3A87FBk1HI86g7uRA9vAQ1Z2rBdDMUIRSGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777803', '0', '0', '45821844338', '18', '0');
INSERT INTO `bgw_goods` VALUES ('477', '【三只松鼠_香酥绿豆】休闲零食炒货萌版装香酥绿豆125g', '7', '9', 'Uploads/thumb/2016-03-12/1457777803_47.jpg', 'Uploads/images/2016-03-12/1457777803_47.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DRAsg%2BX9NedkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBzymO7KO6tNW1nD4GpFGEnCGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777803', '0', '0', '38233957817', '18', '0');
INSERT INTO `bgw_goods` VALUES ('478', '【天猫超市】三只松鼠 紫薯花生120g零食坚果炒货花生米小包装', '10', '13', 'Uploads/thumb/2016-03-12/1457777803_31.jpg', 'Uploads/images/2016-03-12/1457777803_31.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DCtMKFpsDuHscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3A87FBk1HI8e9jZThFzHiqUa%2BrmSy%2BoeSGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777803', '0', '0', '45753750076', '18', '0');
INSERT INTO `bgw_goods` VALUES ('479', '【三只松鼠_情丝豆145g】休闲零食特产炒货竹笋丝青豆', '10', '12', 'Uploads/thumb/2016-03-12/1457777803_38.jpg', 'Uploads/images/2016-03-12/1457777803_38.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DyeKTkjiKsNgcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBAFruMGn%2B6au70T4AT4Ne8SGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777804', '0', '0', '17165599240', '18', '0');
INSERT INTO `bgw_goods` VALUES ('480', '【天猫超市】三只松鼠 蟹黄味瓜子仁218g零食炒货葵花籽仁蟹黄味', '13', '18', 'Uploads/thumb/2016-03-12/1457777804_81.jpg', 'Uploads/images/2016-03-12/1457777804_81.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DfX04wQHzIeccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eClrsEg5vBMuVHvI%2F3lFpgE93EqY%2Bakgpmw&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777804', '1', '0', '45821812393', '18', '0');
INSERT INTO `bgw_goods` VALUES ('481', '【天猫超市】三只松鼠 紫薯花生120g零食坚果炒货花生米小包装', '10', '13', 'Uploads/thumb/2016-03-12/1457777804_75.jpg', 'Uploads/images/2016-03-12/1457777804_75.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dp%2FtFt3LWOCUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg1DHByrIDx1QaSqnR6Bh4YHAbD5HHuqraXEqY%2Bakgpmw&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777804', '0', '0', '45753338996', '18', '0');
INSERT INTO `bgw_goods` VALUES ('482', '【三只松鼠_奶香花生150g】休闲零食坚果炒货带壳奶香味', '7', '9', 'Uploads/thumb/2016-03-12/1457777804_49.jpg', 'Uploads/images/2016-03-12/1457777804_49.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DUB2xaqxGloocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBupGI%2BJLV4tqkOc7U%2B3%2BiGiGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777804', '0', '0', '36719093098', '18', '0');
INSERT INTO `bgw_goods` VALUES ('483', '【三只松鼠_多味花生120g】休闲零食炒货小吃花生米萌版小包装', '7', '9', 'Uploads/thumb/2016-03-12/1457777804_89.jpg', 'Uploads/images/2016-03-12/1457777804_89.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4DTKJItEIAIcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB7pzxK1Q8%2FV%2BGmTqghRFRyiGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777804', '0', '0', '38232257688', '18', '0');
INSERT INTO `bgw_goods` VALUES ('484', '【三只松鼠_黑皮花生145g】休闲零食坚果炒货带壳黑花生', '10', '12', 'Uploads/thumb/2016-03-12/1457777804_10.jpg', 'Uploads/images/2016-03-12/1457777804_10.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D0lbC0R5%2BJF8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBhA87b%2FNOaa%2BqG145jHJkfSGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777805', '0', '0', '27082784051', '18', '0');
INSERT INTO `bgw_goods` VALUES ('485', '【三只松鼠_海苔瓜子仁】海苔味办公休闲时尚零食特产瓜子仁120g', '9', '11', 'Uploads/thumb/2016-03-12/1457777805_1.jpg', 'Uploads/images/2016-03-12/1457777805_1.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DuHTHw5OnYswcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB2Pfvsg3UqeuiKyeWs9fqVCGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777805', '0', '0', '35598284202', '18', '0');
INSERT INTO `bgw_goods` VALUES ('486', '【三只松鼠_老醋蚕豆180g】休闲零食特产炒货豆制品传统美食', '12', '15', 'Uploads/thumb/2016-03-12/1457777805_10.jpg', 'Uploads/images/2016-03-12/1457777805_10.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DqS4JJ3tajgMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBmjXmLYRYU2layWP7LcyBkXEqY%2Bakgpmw&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777805', '0', '0', '523155543569', '18', '0');
INSERT INTO `bgw_goods` VALUES ('487', '【三只松鼠_蒜香豌豆90g】休闲零食特产炒货小包装豌豆蒜香味', '7', '9', 'Uploads/thumb/2016-03-12/1457777805_59.jpg', 'Uploads/images/2016-03-12/1457777805_59.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DdknLIxvj5%2BkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBus5FDZnMQNzFLaCxcu3VyyGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777805', '0', '0', '35596887446', '18', '0');
INSERT INTO `bgw_goods` VALUES ('488', '【三只松鼠_小贱蟹黄瓜子仁225g】休闲零食炒货蟹黄味小吃葵花籽', '13', '16', 'Uploads/thumb/2016-03-12/1457777806_15.jpg', 'Uploads/images/2016-03-12/1457777806_15.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D0e7HBlRJSsEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBbbmkYQpaKNK7FvFtgUrTV3EqY%2Bakgpmw&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777806', '0', '0', '521439124044', '18', '1');
INSERT INTO `bgw_goods` VALUES ('489', '【三只松鼠_香酥绿豆205g】休闲零食特产炒货办公室小吃绿豆', '10', '12', 'Uploads/thumb/2016-03-12/1457777806_18.jpg', 'Uploads/images/2016-03-12/1457777806_18.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DyehiBv4F6sgcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mnrly6djGTcHBMajAjK1gCrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBuvPVKQZvsTGKRd0w8ZZhgSGFCzYOOqAQ&pvid=11_27.38.9.128_321_1457776445939', '1', '1457777806', '0', '0', '35595913783', '18', '0');
INSERT INTO `bgw_goods` VALUES ('490', '【三只松鼠_年货大礼箱3100g】休闲零食组合年货礼盒18袋装', '198', '248', 'Uploads/thumb/2016-03-16/1458102747_51.jpg', 'Uploads/images/2016-03-16/1458102747_51.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2Ba6iJmcUhmccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBzKAcXpyfIlQ533NNbdZchXEqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102748', '5', '0', '525938826294', '6', '0');
INSERT INTO `bgw_goods` VALUES ('491', '【三只松鼠_能量果盘839g】零食特产高端礼盒4袋装 能量果盘礼', '138', '173', 'Uploads/thumb/2016-03-16/1458102748_47.jpg', 'Uploads/images/2016-03-16/1458102748_47.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dyyg88ZM3G8AcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBZ11a9oWwnlHp6fVZK8SFViGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102748', '3', '0', '43640228792', '6', '0');
INSERT INTO `bgw_goods` VALUES ('492', '【三只松鼠_功夫熊猫定制礼盒1106g】坚果干果零食礼盒', '88', '110', 'Uploads/thumb/2016-03-16/1458102748_46.jpg', 'Uploads/images/2016-03-16/1458102748_46.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DygeyoiHOe8ocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB58%2F2pqabooe88LzTcre9IHEqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102748', '2', '0', '525393638974', '6', '0');
INSERT INTO `bgw_goods` VALUES ('493', '【三只松鼠_红松鼠礼盒942g】休闲零食年货送礼高端坚果特产礼盒', '365', '456', 'Uploads/thumb/2016-03-16/1458102748_66.jpg', 'Uploads/images/2016-03-16/1458102748_66.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4KaW4ZEmxPccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBpIRCsDqh7wDPY3P25Q%2Fo1iGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102748', '9', '0', '43649444410', '6', '0');
INSERT INTO `bgw_goods` VALUES ('494', '【三只松鼠_坚果大礼包985g】零食干果特产礼盒4罐装 舌尖全球版', '178', '223', 'Uploads/thumb/2016-03-16/1458102748_60.jpg', 'Uploads/images/2016-03-16/1458102748_60.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dmdqn1e2zjq0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBRfv55F7%2F14VHPbNDF5%2FyXyGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102749', '4', '0', '36886026387', '6', '0');
INSERT INTO `bgw_goods` VALUES ('495', '【三只松鼠_山核桃仁155gx2袋】休闲零食坚果炒货临安特产小核桃', '108', '135', 'Uploads/thumb/2016-03-16/1458102749_59.jpg', 'Uploads/images/2016-03-16/1458102749_59.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DUK0be0F%2FJzEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThPfl2ZNdwIlmrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBzAOrv5soqIog64MMe1JZZSGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102749', '3', '0', '41655274828', '6', '0');
INSERT INTO `bgw_goods` VALUES ('496', '【天猫超市】三只松鼠 碧根果225g零食坚果核桃长寿果干果奶油味', '18', '23', 'Uploads/thumb/2016-03-16/1458102762_52.jpg', 'Uploads/images/2016-03-16/1458102762_52.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DI1GnUzw2Bh0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3A87FBk1HI8KruTKdtkh9g2BKZFaZ36viGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102762', '1', '0', '45720407952', '14', '0');
INSERT INTO `bgw_goods` VALUES ('497', '【三只松鼠_甘栗仁100gx2袋】休闲零食坚果特产板栗仁栗子仁', '22', '27', 'Uploads/thumb/2016-03-16/1458102762_38.jpg', 'Uploads/images/2016-03-16/1458102762_38.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DYE%2FmcQTRQcwcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBVkHDKbcI8rYIpTlzGJde2yGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102762', '1', '0', '45722448546', '14', '0');
INSERT INTO `bgw_goods` VALUES ('498', '【天猫超市】三只松鼠 奶油味夏威夷果 185g 特产坚果 送开口器', '20', '28', 'Uploads/thumb/2016-03-16/1458102762_80.jpg', 'Uploads/images/2016-03-16/1458102762_80.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DP%2FwmoniQOSocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eClWuIt1uuQw2ny6d1csIsWpXEqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102763', '1', '0', '45801457790', '14', '0');
INSERT INTO `bgw_goods` VALUES ('499', '【三只松鼠_蟹黄味瓜子仁218gx2袋】休闲零食炒货葵花籽仁', '22', '27', 'Uploads/thumb/2016-03-16/1458102763_83.jpg', 'Uploads/images/2016-03-16/1458102763_83.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DVDjnK%2FEP6C8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJB21ZXwm4gvgCT1oYeT4sp23EqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102763', '1', '0', '523336206678', '14', '0');
INSERT INTO `bgw_goods` VALUES ('500', '【三只松鼠_瓜蒌子205g】零食特产坚果炒货秘制瓜蒌籽', '20', '25', 'Uploads/thumb/2016-03-16/1458102763_10.jpg', 'Uploads/images/2016-03-16/1458102763_10.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dvbgm9E63yq0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBK%2F314V3N2UTO%2F3Y%2Fcp8qQCGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102763', '0', '0', '35709222938', '14', '0');
INSERT INTO `bgw_goods` VALUES ('501', '【三只松鼠_真好剥山核桃95g】零食坚果炒货临安手剥小核桃奶油味', '20', '25', 'Uploads/thumb/2016-03-16/1458102763_36.jpg', 'Uploads/images/2016-03-16/1458102763_36.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dlcc5O6TopAUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBoYK0GjA%2FDhexY4E6n4pMMCGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102763', '0', '0', '15805767976', '14', '0');
INSERT INTO `bgw_goods` VALUES ('502', '【天猫超市】三只松鼠 炭烧腰果185g零食坚果炒货干果特产腰果仁', '20', '26', 'Uploads/thumb/2016-03-16/1458102763_98.jpg', 'Uploads/images/2016-03-16/1458102763_98.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Db%2BAYrGxvVZYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg1DHByrIDx1QigGJPOZpC2ZxBRZrF5MvjnEqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102763', '1', '0', '45741850505', '14', '0');
INSERT INTO `bgw_goods` VALUES ('503', '【三只松鼠_多味花生205gx2袋】休闲零食坚果炒货花生米', '22', '27', 'Uploads/thumb/2016-03-16/1458102764_25.jpg', 'Uploads/images/2016-03-16/1458102764_25.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DgExbr%2FbFGDMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI10thd%2BEo8xJBbovnBeb0UO5qLwlXYzIx5HEqY%2Bakgpmw&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102764', '1', '0', '520059947879', '14', '0');
INSERT INTO `bgw_goods` VALUES ('504', '【天猫超市】三只松鼠 夏威夷果265g零食坚果干果奶油味送开口器', '20', '28', 'Uploads/thumb/2016-03-16/1458102764_9.jpg', 'Uploads/images/2016-03-16/1458102764_9.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D7Gsr6kGmaiIcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2zHXiYq0eCloFKOvBphoRZo83puAhWAAsYMXU3NNCg%2F&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102764', '1', '0', '522891484688', '14', '0');
INSERT INTO `bgw_goods` VALUES ('505', '【天猫超市】三只松鼠 炭烧腰果185g零食坚果炒货干果特产腰果仁', '20', '26', 'Uploads/thumb/2016-03-16/1458102764_77.jpg', 'Uploads/images/2016-03-16/1458102764_77.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dy68nle6Js3QcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67mrMFE5RkwThP9LlJoUu0c6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3A87FBk1HI86g7uRA9vAQ1a90QlnPNWEyGFCzYOOqAQ&pvid=11_183.62.219.125_386_1458102474321', '1', '1458102764', '1', '0', '45821724447', '14', '0');

-- ----------------------------
-- Table structure for bgw_ip
-- ----------------------------
DROP TABLE IF EXISTS `bgw_ip`;
CREATE TABLE `bgw_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `ip` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '0.0.0.0',
  `ip_long` int(10) NOT NULL COMMENT 'ipv4地址',
  `addtime` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bgw_ip
-- ----------------------------
INSERT INTO `bgw_ip` VALUES ('1', '103.29.140.153', '1729989785', '2016-03-18 11:58:44');
INSERT INTO `bgw_ip` VALUES ('2', '112.90.82.164', '1884967588', '2016-03-18 12:40:18');
INSERT INTO `bgw_ip` VALUES ('3', '183.195.233.188', '2147483647', '2016-03-18 12:33:52');
INSERT INTO `bgw_ip` VALUES ('4', '101.226.73.30', '1709328670', '2016-03-18 12:27:51');
INSERT INTO `bgw_ip` VALUES ('5', '112.90.141.121', '1884982649', '2016-03-18 12:23:33');
INSERT INTO `bgw_ip` VALUES ('6', '120.204.200.21', '2026686485', '2016-03-18 12:38:10');
INSERT INTO `bgw_ip` VALUES ('7', '112.90.82.139', '1884967563', '2016-03-18 12:35:36');
INSERT INTO `bgw_ip` VALUES ('8', '121.42.0.71', '2032795719', '2016-03-18 10:28:21');
INSERT INTO `bgw_ip` VALUES ('9', '121.42.0.64', '2032795712', '2016-03-18 10:28:22');
INSERT INTO `bgw_ip` VALUES ('10', '121.42.0.55', '2032795703', '2016-03-18 10:28:28');
INSERT INTO `bgw_ip` VALUES ('11', '121.42.0.56', '2032795704', '2016-03-18 10:28:45');
INSERT INTO `bgw_ip` VALUES ('12', '117.25.139.35', '1964608291', '2016-03-18 11:52:53');
INSERT INTO `bgw_ip` VALUES ('13', '119.147.101.156', '2006148508', '2016-03-18 11:52:33');

-- ----------------------------
-- Table structure for bgw_position
-- ----------------------------
DROP TABLE IF EXISTS `bgw_position`;
CREATE TABLE `bgw_position` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '位置',
  `p_name` varchar(20) NOT NULL COMMENT '位置名称',
  `p_status` tinyint(4) NOT NULL COMMENT '0下架，1上架',
  `p_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_position
-- ----------------------------
INSERT INTO `bgw_position` VALUES ('1', '首页商品', '1', '0');
INSERT INTO `bgw_position` VALUES ('2', '首页banner', '1', '0');
INSERT INTO `bgw_position` VALUES ('3', '首页品牌', '1', '0');
INSERT INTO `bgw_position` VALUES ('4', '首页精选店铺', '1', '0');
INSERT INTO `bgw_position` VALUES ('5', '首页其他推荐', '1', '0');
INSERT INTO `bgw_position` VALUES ('6', '上衣', '1', '0');
INSERT INTO `bgw_position` VALUES ('7', '美妆必备', '1', '0');
INSERT INTO `bgw_position` VALUES ('8', '裤子', '1', '0');
INSERT INTO `bgw_position` VALUES ('9', '饰品汇', '1', '0');

-- ----------------------------
-- Table structure for bgw_shop
-- ----------------------------
DROP TABLE IF EXISTS `bgw_shop`;
CREATE TABLE `bgw_shop` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `s_img_path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `s_img_href` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `s_cid` tinyint(4) DEFAULT '1' COMMENT '1-店铺，2-精选天猫',
  `s_sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `s_addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `s_name` varchar(30) DEFAULT NULL COMMENT '店铺名称',
  `s_status` tinyint(4) DEFAULT '0' COMMENT '0-不显示，1-显示',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺列表';

-- ----------------------------
-- Records of bgw_shop
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_user
-- ----------------------------
DROP TABLE IF EXISTS `bgw_user`;
CREATE TABLE `bgw_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(12) NOT NULL COMMENT '用户名',
  `pwd` char(32) NOT NULL COMMENT '密码',
  `addtime` int(11) NOT NULL COMMENT '注册时间',
  `lastLoginTime` datetime NOT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_user
-- ----------------------------
