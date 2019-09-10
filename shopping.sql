/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50173
Source Host           : 47.94.158.200:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2019-09-10 12:40:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addresseditor`
-- ----------------------------
DROP TABLE IF EXISTS `addresseditor`;
CREATE TABLE `addresseditor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresseditor
-- ----------------------------
INSERT INTO `addresseditor` VALUES ('4', 'Ni', 'you', '15616389272', '北京市北京市门头沟区南春头');
INSERT INTO `addresseditor` VALUES ('7', 'mdzz', 'aaa', '15625424698', '河北省石家庄市井陉矿区101号');
INSERT INTO `addresseditor` VALUES ('8', 'Ni', '优秀', '15616389273', '辽宁省沈阳市经济技术开发区1001号');
INSERT INTO `addresseditor` VALUES ('9', 'admin1', 'n2', '15245624895', '内蒙古自治区呼和浩特市托克托县1001');
INSERT INTO `addresseditor` VALUES ('10', 'a', 'a', '18548954232', '辽宁省沈阳市沈河区1001');
INSERT INTO `addresseditor` VALUES ('11', 'admin', 'asd', '18684954087', '河北省石家庄市栾城区1001号');

-- ----------------------------
-- Table structure for `advertespicture`
-- ----------------------------
DROP TABLE IF EXISTS `advertespicture`;
CREATE TABLE `advertespicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PICTURE_ADDRESS` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertespicture
-- ----------------------------
INSERT INTO `advertespicture` VALUES ('1', 'http://images.baixingliangfan.cn/advertesPicture/20180404/20180404085441_850.gif');

-- ----------------------------
-- Table structure for `buy`
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy
-- ----------------------------

-- ----------------------------
-- Table structure for `floor1`
-- ----------------------------
DROP TABLE IF EXISTS `floor1`;
CREATE TABLE `floor1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor1
-- ----------------------------
INSERT INTO `floor1` VALUES ('1', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180109_6316.jpg');
INSERT INTO `floor1` VALUES ('2', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180151_6180.jpg');
INSERT INTO `floor1` VALUES ('3', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180217_3970.jpg');
INSERT INTO `floor1` VALUES ('4', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180257_2378.jpg');
INSERT INTO `floor1` VALUES ('5', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180427_8557.jpg');

-- ----------------------------
-- Table structure for `floor2`
-- ----------------------------
DROP TABLE IF EXISTS `floor2`;
CREATE TABLE `floor2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor2
-- ----------------------------
INSERT INTO `floor2` VALUES ('1', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180547_3253.jpg');
INSERT INTO `floor2` VALUES ('2', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180631_4071.jpg');
INSERT INTO `floor2` VALUES ('3', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180705_7181.jpg');
INSERT INTO `floor2` VALUES ('4', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407180736_2822.jpg');
INSERT INTO `floor2` VALUES ('5', 'http://images.baixingliangfan.cn/homeFloor/20180408/20180408081756_7181.jpg');

-- ----------------------------
-- Table structure for `floor3`
-- ----------------------------
DROP TABLE IF EXISTS `floor3`;
CREATE TABLE `floor3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor3
-- ----------------------------
INSERT INTO `floor3` VALUES ('1', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407181423_15.jpg');
INSERT INTO `floor3` VALUES ('2', '\"http://images.baixingliangfan.cn/homeFloor/20180407/20180407181216_8263.jpg');
INSERT INTO `floor3` VALUES ('3', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407181247_7554.jpg');
INSERT INTO `floor3` VALUES ('4', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407181316_6196.jpg');
INSERT INTO `floor3` VALUES ('5', 'http://images.baixingliangfan.cn/homeFloor/20180407/20180407181348_4054.jpg');

-- ----------------------------
-- Table structure for `floorname`
-- ----------------------------
DROP TABLE IF EXISTS `floorname`;
CREATE TABLE `floorname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floorname
-- ----------------------------
INSERT INTO `floorname` VALUES ('1', '推荐分类');
INSERT INTO `floorname` VALUES ('2', '营养奶品');
INSERT INTO `floorname` VALUES ('3', '新鲜水果');
INSERT INTO `floorname` VALUES ('4', '休闲食品');

-- ----------------------------
-- Table structure for `leisurefood`
-- ----------------------------
DROP TABLE IF EXISTS `leisurefood`;
CREATE TABLE `leisurefood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `mallPrice` float(255,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float(255,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `repertory` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leisurefood
-- ----------------------------
INSERT INTO `leisurefood` VALUES ('1', 'food', '17.20', 'http://images.baixingliangfan.cn/compressedPic/20180411083404_6619.jpg', '27.00', '纳美小苏打源生护龈牙膏3010/支', '990.00');
INSERT INTO `leisurefood` VALUES ('2', 'food', '9.81', 'http://images.baixingliangfan.cn/compressedPic/20180411085355_2725.jpg', '16.00', 'ABCK25超吸棉柔护垫22片/包', '989.00');
INSERT INTO `leisurefood` VALUES ('3', 'food', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', '8.00', '果倍爽橙汁饮料330ml/瓶', '992.00');
INSERT INTO `leisurefood` VALUES ('4', 'food', '109.06', 'http://images.baixingliangfan.cn/compressedPic/20180409155457_3302.jpg', '129.00', '睿嫣白檀香护发素500ml/瓶', '998.00');
INSERT INTO `leisurefood` VALUES ('5', 'food', '4.40', 'http://images.baixingliangfan.cn/compressedPic/20180412173646_7050.jpg', '5.00', '乐百氏脉动芒果味600ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('6', 'food', '7.10', 'http://images.baixingliangfan.cn/compressedPic/20180413142444_1480.jpg', '9.00', '农夫山泉NFC橙汁100%300ml/瓶', '996.00');
INSERT INTO `leisurefood` VALUES ('7', 'food', '9.20', 'http://images.baixingliangfan.cn/compressedPic/20180411084437_6209.jpg', '9.00', '七度空间少女棉超薄超长夜用卫生巾8片/包', '1000.00');
INSERT INTO `leisurefood` VALUES ('8', 'food', '15.10', 'http://images.baixingliangfan.cn/compressedPic/20180407172335_1082.jpg', '15.00', '爱莲巧牛奶巧克力100g/块', '998.00');
INSERT INTO `leisurefood` VALUES ('9', 'food', '10.60', 'http://images.baixingliangfan.cn/compressedPic/20180407172544_4503.jpg', '10.00', 'Gemez小鸡干脆面（烧烤鸡肉味）90g/袋', '1000.00');
INSERT INTO `leisurefood` VALUES ('10', 'food', '8.50', 'http://images.baixingliangfan.cn/compressedPic/20180407173221_2015.jpg', '8.00', '单身狗粮地中海盐味薯片 71g/袋', '998.00');
INSERT INTO `leisurefood` VALUES ('11', 'food', '6.00', 'http://images.baixingliangfan.cn/compressedPic/20180413091557_6636.jpg', '6.00', '可口可乐2L/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('12', 'food', '7.99', 'http://images.baixingliangfan.cn/compressedPic/20180413142955_5219.jpg', '7.00', '农夫山泉NFC苹果香蕉汁100%300ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('13', 'food', '138.00', 'http://images.baixingliangfan.cn/compressedPic/20180410091738_4529.jpg', '138.00', '可米小子象牙松子罐装262g/罐', '1000.00');
INSERT INTO `leisurefood` VALUES ('14', 'food', '30.00', 'http://images.baixingliangfan.cn/compressedPic/20180407171943_7260.jpg', '30.00', '费罗伦珍珠水果糖（狮子座）240g/盒', '996.00');
INSERT INTO `leisurefood` VALUES ('15', 'food', '4.00', 'http://images.baixingliangfan.cn/compressedPic/20180412174207_1023.jpg', '4.00', '农夫山泉水葡萄果味饮料530ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('16', 'food', '10.06', 'http://images.baixingliangfan.cn/compressedPic/20180407171519_1489.jpg', '11.00', '捷客每日红提味曲奇120g/盒', '1000.00');
INSERT INTO `leisurefood` VALUES ('17', 'food', '26.00', 'http://images.baixingliangfan.cn/compressedPic/20171225110825_6758.jpg', '28.00', '青芒1.6kg/盒', '998.00');
INSERT INTO `leisurefood` VALUES ('18', 'milk', '4.60', 'http://images.baixingliangfan.cn/compressedPic/20180415120500_6504.jpg', '4.00', '美汁源果粒奶优水果饮料蜜桃450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('19', 'milk', '4.00', 'http://images.baixingliangfan.cn/compressedPic/20180415115202_8432.jpg', '4.00', '阿华田麦芽乳饮品牛奶味250mL/盒', '1000.00');
INSERT INTO `leisurefood` VALUES ('20', 'milk', '4.40', 'http://images.baixingliangfan.cn/compressedPic/20180415121351_6470.jpg', '4.00', '养元香浓六个核桃240ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('21', 'milk', '6.30', 'http://images.baixingliangfan.cn/compressedPic/20180415120956_8491.jpg', '6.00', '名屋木瓜牛乳340ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('22', 'milk', '4.60', 'http://images.baixingliangfan.cn/compressedPic/20180415120411_5740.jpg', '4.00', '美汁源果粒奶优草莓味450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('23', 'milk', '7.00', 'http://images.baixingliangfan.cn/compressedPic/20180415120720_7233.jpg', '7.00', '名屋醇豆浆饮料485ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('24', 'milk', '5.00', 'http://images.baixingliangfan.cn/compressedPic/20180103161335_9324.jpg', '6.00', '李子园甜牛奶乳饮料450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('25', 'milk', '5.70', 'http://images.baixingliangfan.cn/compressedPic/20180415120239_7917.jpg', '5.00', '李子园草莓风味乳饮料450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('26', 'milk', '6.00', 'http://images.baixingliangfan.cn/compressedPic/20171224082006_6602.jpg', '8.00', '娃哈哈AD钙奶220ml*4/条', '1000.00');
INSERT INTO `leisurefood` VALUES ('27', 'milk', '6.55', 'http://images.baixingliangfan.cn/compressedPic/20180415121537_4372.jpg', '6.00', '一榨鲜绿豆汁300ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('28', 'milk', '5.00', 'http://images.baixingliangfan.cn/compressedPic/20180415120109_275.jpg', '5.00', '李子园朱古力风味乳饮料450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('29', 'milk', '7.50', 'http://images.baixingliangfan.cn/compressedPic/20180415120857_4885.jpg', '7.00', '名屋黑豆浆饮料485ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('30', 'milk', '4.00', 'http://images.baixingliangfan.cn/compressedPic/20180415114959_7217.jpg', '4.00', '阿华田麦芽乳饮品高钙味250mL/盒', '1000.00');
INSERT INTO `leisurefood` VALUES ('31', 'milk', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180415121108_2001.jpg', '6.00', '名屋香蕉牛乳340ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('32', 'milk', '4.10', 'http://images.baixingliangfan.cn/compressedPic/20180415120608_2319.jpg', '4.00', '美汁源果粒奶优原味450ml/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('33', 'milk', '7.08', 'http://images.baixingliangfan.cn/compressedPic/20171224082144_8430.jpg', '9.00', '旺仔牛奶125ml*4/条', '1000.00');
INSERT INTO `leisurefood` VALUES ('34', 'milk', '68.00', 'http://images.baixingliangfan.cn/compressedPic/20180415122117_1031.jpg', '68.00', '同福阿胶粥300g/箱', '1000.00');
INSERT INTO `leisurefood` VALUES ('35', 'milk', '3.00', 'http://images.baixingliangfan.cn/compressedPic/20180415122256_2373.jpg', '3.00', '银鹭桂圆莲子八宝粥360g/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('36', 'milk', '14.20', 'http://images.baixingliangfan.cn/compressedPic/20180415121432_880.jpg', '14.00', '椰树牌椰汁饮料1L/瓶', '1000.00');
INSERT INTO `leisurefood` VALUES ('37', 'milk', '4.01', 'http://images.baixingliangfan.cn/compressedPic/20180415115515_7254.jpg', '4.00', '豆本豆原味豆奶250ml/盒', '1000.00');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mallPrice` float(11,2) NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('1', 'Ni', 'ABCK25超吸棉柔护垫22片/包', '9.81', '1', 'http://images.baixingliangfan.cn/compressedPic/20180411085355_2725.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('2', 'Ni', '睿嫣白檀香护发素500ml/瓶', '109.06', '1', 'http://images.baixingliangfan.cn/compressedPic/20180409155457_3302.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('3', 'Ni', '七度空间少女棉超薄超长夜用卫生巾8片/包', '9.20', '1', 'http://images.baixingliangfan.cn/compressedPic/20180411084437_6209.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('4', 'Ni', '单身狗粮地中海盐味薯片 71g/袋', '8.50', '1', 'http://images.baixingliangfan.cn/compressedPic/20180407173221_2015.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('5', 'Ni', '农夫山泉水葡萄果味饮料530ml/瓶', '4.00', '1', 'http://images.baixingliangfan.cn/compressedPic/20180412174207_1023.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('6', 'Ni', '农夫山泉水葡萄果味饮料530ml/瓶', '4.00', '1', 'http://images.baixingliangfan.cn/compressedPic/20180412174207_1023.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('7', 'Ni', '农夫山泉NFC橙汁100%300ml/瓶', '7.10', '1', 'http://images.baixingliangfan.cn/compressedPic/20180413142444_1480.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('8', 'mdzz', '果倍爽橙汁饮料330ml/瓶', '6.60', '1', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('9', 'Ni', '名屋木瓜牛乳340ml/瓶', '6.30', '1', 'http://images.baixingliangfan.cn/compressedPic/20180415120956_8491.jpg', 'milk');
INSERT INTO `shoppingcart` VALUES ('10', 'admin1', '可口可乐2L/瓶', '6.00', '1', 'http://images.baixingliangfan.cn/compressedPic/20180413091557_6636.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('11', 'admin1', '单身狗粮地中海盐味薯片 71g/袋', '8.50', '1', 'http://images.baixingliangfan.cn/compressedPic/20180407173221_2015.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('12', 'admin1', '农夫山泉水葡萄果味饮料530ml/瓶', '4.00', '1', 'http://images.baixingliangfan.cn/compressedPic/20180412174207_1023.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('13', 'admin1', '名屋醇豆浆饮料485ml/瓶', '7.00', '1', 'http://images.baixingliangfan.cn/compressedPic/20180415120720_7233.jpg', 'milk');
INSERT INTO `shoppingcart` VALUES ('14', 'admin1', 'ABCK25超吸棉柔护垫22片/包', '9.81', '1', 'http://images.baixingliangfan.cn/compressedPic/20180411085355_2725.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('15', 'a', '纳美小苏打源生护龈牙膏3010/支', '17.20', '1', 'http://images.baixingliangfan.cn/compressedPic/20180411083404_6619.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('16', 'admin', '果倍爽橙汁饮料330ml/瓶', '6.60', '1', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('17', 'admin', '乐百氏脉动芒果味600ml/瓶', '4.40', '1', 'http://images.baixingliangfan.cn/compressedPic/20180412173646_7050.jpg', 'food');
INSERT INTO `shoppingcart` VALUES ('18', 'admin', '果倍爽橙汁饮料330ml/瓶', '6.60', '1', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', 'food');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(12) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `iphone` varchar(255) NOT NULL,
  `address` varchar(256) NOT NULL,
  `image` varchar(9999) NOT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `money` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('20', 'Ni', '$2b$10$xNFScmZ/aPXl7c64ZjeMFOAttdGG5T7fg7/5Wnrg9UxpsrfKuj6va', '18', '18684954089', '北京', 'http://localhost:404/upload/headPortrait/1565920049622-Tulips.jpg', '$2b$10$DeLm4fc63g.G5pvvPeaqd.UTFB3A1DH34DhvwXEDzS5jvZB7i6Z7i', '9364.18');
INSERT INTO `users` VALUES ('22', 'admin', '$2b$10$ubQR/CAi0AYtHGwns5dIIeaSjbEz1az1kYOtxqiEZVCiKxdvy/FN2', '18', '15316235119', '天津', 'http://localhost:404/upload/headPortrait/1566031781525-Koala.jpg', '$2b$10$Ym6YPfBqkivPOBAQ/gbh2uxjzgfkUgwd2W3NL/aSSF7BON3kVr/dK', '9965.60');
INSERT INTO `users` VALUES ('23', 'mdzz', '$2b$10$KO6FuD38sxd4oxfiKqikt.mBfA.SemoVMbsrfw3jBiSbBeudiVTTm', '19', '15616389273', '南京', 'http://localhost:404/upload/headPortrait/1566139392954-Penguins.jpg', '$2b$10$eezhDzAuHFibRVpiRkDGqe5BKDh1.ndqku2AA0Jq0U6GwJ4l69O7W', '9983.59');
INSERT INTO `users` VALUES ('24', 'admin1', '$2b$10$h6j/qqraxPAzW8YGLucbVePdx0dC0WSHyJvYURenNWGwJSI4UsoJy', '18', '15616389274', '北京', 'http://localhost:404/upload/headPortrait/1566193061002-Koala.jpg', '$2b$10$cUrlxo46O2mCaydCr.y7AO4iIhQDHxlUlLqvmWtMS0s7mmcgc45pK', '9956.60');
INSERT INTO `users` VALUES ('25', 'a', '$2b$10$Ez.TU5PQM27rmr5pWaSef.AtZN6zvLYukqIXcRQsVeBz0cV0DOlzy', '18', '18684954089', '北京', 'http://localhost:404/upload/headPortrait/1566196907163-Penguins.jpg', '$2b$10$fsCG7bEi1uEIkfcpxNOwpOKSEmKK9tN08GZrcwiWCYcYy9rinSZXu', '9980.20');
INSERT INTO `users` VALUES ('26', 'admin2', '$2b$10$S8r3/OE2bGPy/zhFDhuUIO8hmRVYBNZYNEXVYiTQyZcv3F1iuU2dW', '18', '18684954089', '南京', 'http://localhost:404/upload/headPortrait/1566458087618-Lighthouse.jpg', null, '10000.00');
INSERT INTO `users` VALUES ('40', 'Na', '$2b$10$QKVn1MJdruG7Blwq9SzmEuHKjF3FO/rKAwViLT/9pwjKGQiSUPNOC', '19', '18684954089', '北京', 'http://47.94.158.200/upload/headPortrait/1566993080937-Tulips.jpg', null, '10000.00');
INSERT INTO `users` VALUES ('41', 'b', '$2b$10$9SAc64B6qk4N03BBsl1K6eke0usPaGU1fMH83AEjYRnSrYT5qvJLa', '18', '18542545652', '北京', 'http://47.94.158.200/upload/headPortrait/1566993778406-Tulips.jpg', null, '10000.00');
INSERT INTO `users` VALUES ('42', 'c', '$2b$10$FQ0l/CkEAndeEljJp4ggzeI6B7pU7Y8FHUYUhpXcYytqGRWZaKmR.', '18', '18545245689', '1', 'http://47.94.158.200/upload/headPortrait/1566995031690-Tulips.jpg', null, '10000.00');
INSERT INTO `users` VALUES ('43', 'd', '$2b$10$IEfpvFFOhG.7Sx5GZNLPE.F.vVqmDgTrXIw9r1piGsqgUTfBzTYze', '19', '18685424520', '1', 'http://47.94.158.200/upload/headPortrait/1566995153902-Tulips.jpg', null, '10000.00');

-- ----------------------------
-- Table structure for `usershopp`
-- ----------------------------
DROP TABLE IF EXISTS `usershopp`;
CREATE TABLE `usershopp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `money` float(11,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prices` float(11,2) NOT NULL,
  `takeName` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usershopp
-- ----------------------------
INSERT INTO `usershopp` VALUES ('8', 'Ni', '纳美小苏打源生护龈牙膏3010/支', '4', '17.20', 'http://images.baixingliangfan.cn/compressedPic/20180411083404_6619.jpg', '68.80', '小龙', '18684954089', '湖南省株洲市茶陵县秩堂镇');
INSERT INTO `usershopp` VALUES ('9', 'Ni', '农夫山泉NFC橙汁100%300ml/瓶', '2', '7.10', 'http://images.baixingliangfan.cn/compressedPic/20180413142444_1480.jpg', '14.20', '小龙', '18684954089', '湖南省株洲市茶陵县秩堂镇');
INSERT INTO `usershopp` VALUES ('10', 'Ni', 'ABCK25超吸棉柔护垫22片/包', '2', '9.81', 'http://images.baixingliangfan.cn/compressedPic/20180411085355_2725.jpg', '19.62', '小龙', '18684954089', '湖南省株洲市茶陵县秩堂镇');
INSERT INTO `usershopp` VALUES ('12', 'Ni', '费罗伦珍珠水果糖（狮子座）240g/盒', '4', '30.00', 'http://images.baixingliangfan.cn/compressedPic/20180407171943_7260.jpg', '120.00', '小龙', '18684954089', '湖南省株洲市茶陵县秩堂镇');
INSERT INTO `usershopp` VALUES ('11', 'Ni', '单身狗粮地中海盐味薯片 71g/袋', '2', '8.50', 'http://images.baixingliangfan.cn/compressedPic/20180407173221_2015.jpg', '17.00', '小龙', '18684954089', '湖南省株洲市茶陵县秩堂镇');
INSERT INTO `usershopp` VALUES ('13', 'mdzz', '果倍爽橙汁饮料330ml/瓶', '1', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', '6.60', 'aaa', '15625424698', '河北省石家庄市井陉矿区101号');
INSERT INTO `usershopp` VALUES ('14', 'mdzz', 'ABCK25超吸棉柔护垫22片/包', '1', '9.81', 'http://images.baixingliangfan.cn/compressedPic/20180411085355_2725.jpg', '9.81', 'aaa', '15625424698', '河北省石家庄市井陉矿区101号');
INSERT INTO `usershopp` VALUES ('15', 'Ni', '果倍爽橙汁饮料330ml/瓶', '2', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', '13.20', 'you', '15616389272', '北京市北京市门头沟区南春头');
INSERT INTO `usershopp` VALUES ('16', 'Ni', '青芒1.6kg/盒', '2', '26.00', 'http://images.baixingliangfan.cn/compressedPic/20171225110825_6758.jpg', '52.00', '优秀', '15616389273', '辽宁省沈阳市经济技术开发区1001号');
INSERT INTO `usershopp` VALUES ('17', 'admin1', '爱莲巧牛奶巧克力100g/块', '2', '15.10', 'http://images.baixingliangfan.cn/compressedPic/20180407172335_1082.jpg', '30.20', 'ni', '15245624895', '内蒙古自治区呼和浩特市托克托县1001');
INSERT INTO `usershopp` VALUES ('18', 'admin1', '果倍爽橙汁饮料330ml/瓶', '2', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', '13.20', 'n2', '15245624895', '内蒙古自治区呼和浩特市托克托县1001');
INSERT INTO `usershopp` VALUES ('19', 'a', '果倍爽橙汁饮料330ml/瓶', '3', '6.60', 'http://images.baixingliangfan.cn/compressedPic/20180413093730_3138.jpg', '19.80', 'a', '18548954232', '辽宁省沈阳市沈河区1001');
INSERT INTO `usershopp` VALUES ('20', 'admin', '纳美小苏打源生护龈牙膏3010/支', '2', '17.20', 'http://images.baixingliangfan.cn/compressedPic/20180411083404_6619.jpg', '34.40', 'asd', '18684954087', '河北省石家庄市栾城区1001号');
