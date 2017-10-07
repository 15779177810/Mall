/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : mydb1

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-09-20 15:37:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `balance` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `FK_account` (`user_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('5', '8', '284.00');
INSERT INTO `account` VALUES ('9', '12', '10777.00');
INSERT INTO `account` VALUES ('16', '19', '0.00');
INSERT INTO `account` VALUES ('17', '20', '0.00');
INSERT INTO `account` VALUES ('18', '21', '0.00');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `notes_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `balance` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`notes_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `business_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('51', '8', '消费', '2017-09-19 17:56:22', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('52', '8', '消费', '2017-09-19 17:56:36', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('53', '8', '消费', '2017-09-19 17:56:50', '用户id8收款', '78.00');
INSERT INTO `business` VALUES ('54', '8', '消费', '2017-09-19 17:58:05', '用户id12收款', '101.00');
INSERT INTO `business` VALUES ('55', '8', '消费', '2017-09-19 18:48:09', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('56', '12', '消费', '2017-09-19 20:11:44', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('57', '12', '消费', '2017-09-19 20:11:53', '用户id12收款', '101.00');
INSERT INTO `business` VALUES ('58', '12', '消费', '2017-09-19 20:11:58', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('59', '12', '消费', '2017-09-19 20:12:18', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('60', '8', '消费', '2017-09-19 20:16:24', '用户id12收款', '201.00');
INSERT INTO `business` VALUES ('61', '8', '消费', '2017-09-19 20:16:31', '用户id12收款', '101.00');
INSERT INTO `business` VALUES ('62', '8', '消费', '2017-09-19 20:16:37', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('63', '8', '消费', '2017-09-19 20:17:02', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('64', '8', '消费', '2017-09-19 20:17:12', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('65', '8', '消费', '2017-09-19 20:17:17', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('66', '8', '消费', '2017-09-19 20:17:23', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('67', '8', '消费', '2017-09-19 20:17:28', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('68', '8', '消费', '2017-09-19 20:17:37', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('69', '8', '消费', '2017-09-19 20:17:43', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('70', '8', '消费', '2017-09-19 20:17:59', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('71', '8', '消费', '2017-09-19 20:18:10', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('72', '8', '消费', '2017-09-19 20:18:17', '用户id12收款', '1.00');
INSERT INTO `business` VALUES ('73', '8', '消费', '2017-09-19 20:18:26', '用户id12收款', '78.00');
INSERT INTO `business` VALUES ('74', '8', '消费', '2017-09-19 20:28:30', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('75', '8', '消费', '2017-09-19 20:29:00', '用户id12收款', '100.00');
INSERT INTO `business` VALUES ('76', '8', '消费', '2017-09-19 20:30:20', '用户id12收款', '200.00');
INSERT INTO `business` VALUES ('77', '8', '消费', '2017-09-19 20:32:54', '用户id12收款', '101.00');
INSERT INTO `business` VALUES ('78', '8', '消费', '2017-09-19 20:34:51', '用户id12收款', '0.50');
INSERT INTO `business` VALUES ('79', '8', '消费', '2017-09-19 20:36:11', '用户id12收款', '100.00');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for car_item
-- ----------------------------
DROP TABLE IF EXISTS `car_item`;
CREATE TABLE `car_item` (
  `car_item_id` int(11) NOT NULL,
  `good_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`car_item_id`),
  KEY `car_id` (`car_id`),
  KEY `good_id` (`good_id`),
  CONSTRAINT `car_item_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  CONSTRAINT `car_item_ibfk_2` FOREIGN KEY (`good_id`) REFERENCES `goods` (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_item
-- ----------------------------

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`),
  CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `good_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `good_desc` varchar(255) DEFAULT '',
  `price` double(11,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`good_id`),
  KEY `type_id` (`type_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `goods_type` (`type_id`),
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '变形金刚', '大黄蜂', '100.00', 'goodimg/1.jpg', '1');
INSERT INTO `goods` VALUES ('2', '1', '变形金刚', '擎天柱', '101.00', 'goodimg/2.jpg', '1');
INSERT INTO `goods` VALUES ('3', '2', '铅笔', '晨光', '1.00', 'goodimg/3.jpg', '1');
INSERT INTO `goods` VALUES ('4', '2', '橡皮', '真彩', '0.50', 'goodimg/4.jpg', '1');
INSERT INTO `goods` VALUES ('5', '3', '手机', '三星', '4888.00', 'goodimg/5.jpg', '1');
INSERT INTO `goods` VALUES ('6', '3', 'ipad mini4', 'Apple', '2500.00', 'goodimg/6.jpg', '1');
INSERT INTO `goods` VALUES ('7', '4', '卫衣', '潮流前线', '80.00', 'goodimg/7.jpg', '1');
INSERT INTO `goods` VALUES ('8', '4', '牛仔裤', '美特斯邦威', '78.00', 'goodimg/8.jpg', '1');

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '玩具');
INSERT INTO `goods_type` VALUES ('2', '学习用品');
INSERT INTO `goods_type` VALUES ('3', '电子产品');
INSERT INTO `goods_type` VALUES ('4', '服饰');

-- ----------------------------
-- Table structure for good_comment
-- ----------------------------
DROP TABLE IF EXISTS `good_comment`;
CREATE TABLE `good_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `good_comment` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `good_id` (`good_id`),
  CONSTRAINT `good_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_comment
-- ----------------------------
INSERT INTO `good_comment` VALUES ('5', '8', '1', '大黄蜂光泽真的好', '2017-09-18 11:03:30');
INSERT INTO `good_comment` VALUES ('6', '8', '2', '擎天柱好贵啊', '2017-09-18 11:03:30');
INSERT INTO `good_comment` VALUES ('7', '8', '7', '这卫衣起球', '2017-09-18 11:03:47');
INSERT INTO `good_comment` VALUES ('8', '8', '5', '果然是年度旗舰机，真正的机皇，给个赞', '2017-09-18 11:04:17');
INSERT INTO `good_comment` VALUES ('9', '8', '3', '铅笔很好以哦那个', '2017-09-19 16:37:20');
INSERT INTO `good_comment` VALUES ('10', '8', '4', '橡皮很好用', '2017-09-19 16:37:20');
INSERT INTO `good_comment` VALUES ('11', '8', '1', 'aaaaaa', '2017-09-19 16:42:57');
INSERT INTO `good_comment` VALUES ('12', '8', '2', 'hahahahaha', '2017-09-19 16:42:57');
INSERT INTO `good_comment` VALUES ('13', '8', '2', '擎天柱不好玩', '2017-09-19 17:48:42');
INSERT INTO `good_comment` VALUES ('14', '12', '2', '好帅呀！！！！！', '2017-09-19 20:13:10');
INSERT INTO `good_comment` VALUES ('15', '8', '1', 'keyi d', '2017-09-19 20:37:07');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '0代表未发货\r\n1表示已发货待收货\r\n2表示已收货待评价\r\n3表示已评价，交易完成',
  PRIMARY KEY (`order_id`),
  KEY `FK_order` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('29', '12', '2017-09-19 20:11:38', '1');
INSERT INTO `orders` VALUES ('30', '12', '2017-09-19 20:11:52', '3');
INSERT INTO `orders` VALUES ('31', '12', '2017-09-19 20:11:58', '0');
INSERT INTO `orders` VALUES ('32', '12', '2017-09-19 20:12:17', '0');
INSERT INTO `orders` VALUES ('33', '8', '2017-09-19 20:16:24', '1');
INSERT INTO `orders` VALUES ('34', '8', '2017-09-19 20:16:31', '1');
INSERT INTO `orders` VALUES ('35', '8', '2017-09-19 20:16:37', '1');
INSERT INTO `orders` VALUES ('36', '8', '2017-09-19 20:16:44', '0');
INSERT INTO `orders` VALUES ('37', '8', '2017-09-19 20:17:02', '0');
INSERT INTO `orders` VALUES ('38', '8', '2017-09-19 20:17:12', '0');
INSERT INTO `orders` VALUES ('39', '8', '2017-09-19 20:17:17', '0');
INSERT INTO `orders` VALUES ('40', '8', '2017-09-19 20:17:22', '0');
INSERT INTO `orders` VALUES ('41', '8', '2017-09-19 20:17:28', '0');
INSERT INTO `orders` VALUES ('42', '8', '2017-09-19 20:17:36', '0');
INSERT INTO `orders` VALUES ('43', '8', '2017-09-19 20:17:43', '0');
INSERT INTO `orders` VALUES ('44', '8', '2017-09-19 20:17:58', '0');
INSERT INTO `orders` VALUES ('45', '8', '2017-09-19 20:18:10', '0');
INSERT INTO `orders` VALUES ('46', '8', '2017-09-19 20:18:17', '0');
INSERT INTO `orders` VALUES ('47', '8', '2017-09-19 20:18:26', '0');
INSERT INTO `orders` VALUES ('48', '8', '2017-09-19 20:28:29', '1');
INSERT INTO `orders` VALUES ('49', '8', '2017-09-19 20:29:00', '1');
INSERT INTO `orders` VALUES ('50', '8', '2017-09-19 20:30:19', '1');
INSERT INTO `orders` VALUES ('51', '8', '2017-09-19 20:32:54', '1');
INSERT INTO `orders` VALUES ('52', '8', '2017-09-19 20:34:50', '0');
INSERT INTO `orders` VALUES ('53', '8', '2017-09-19 20:36:11', '3');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `gid` (`good_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`good_id`),
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('35', '1', '1', '29');
INSERT INTO `order_item` VALUES ('36', '1', '2', '30');
INSERT INTO `order_item` VALUES ('37', '1', '3', '31');
INSERT INTO `order_item` VALUES ('38', '1', '1', '32');
INSERT INTO `order_item` VALUES ('39', '1', '2', '33');
INSERT INTO `order_item` VALUES ('40', '1', '1', '33');
INSERT INTO `order_item` VALUES ('41', '1', '2', '34');
INSERT INTO `order_item` VALUES ('42', '1', '3', '35');
INSERT INTO `order_item` VALUES ('43', '1', '5', '36');
INSERT INTO `order_item` VALUES ('44', '1', '3', '37');
INSERT INTO `order_item` VALUES ('45', '1', '4', '38');
INSERT INTO `order_item` VALUES ('46', '1', '4', '39');
INSERT INTO `order_item` VALUES ('47', '1', '4', '40');
INSERT INTO `order_item` VALUES ('48', '1', '3', '41');
INSERT INTO `order_item` VALUES ('49', '1', '4', '42');
INSERT INTO `order_item` VALUES ('50', '1', '3', '43');
INSERT INTO `order_item` VALUES ('51', '2', '4', '44');
INSERT INTO `order_item` VALUES ('52', '1', '4', '45');
INSERT INTO `order_item` VALUES ('53', '1', '3', '46');
INSERT INTO `order_item` VALUES ('54', '1', '8', '47');
INSERT INTO `order_item` VALUES ('55', '1', '1', '48');
INSERT INTO `order_item` VALUES ('56', '1', '1', '49');
INSERT INTO `order_item` VALUES ('57', '2', '1', '50');
INSERT INTO `order_item` VALUES ('58', '1', '2', '51');
INSERT INTO `order_item` VALUES ('59', '1', '4', '52');
INSERT INTO `order_item` VALUES ('60', '1', '1', '53');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `FK_shop` (`user_id`),
  CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '商城自营店', '12', '商城自营店');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tooken` varchar(255) DEFAULT NULL,
  `expired` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `FK_ticket` (`user_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `sys` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', '西门吹雪', '吴伯伯', '123', '123', '110', '1');
INSERT INTO `user` VALUES ('12', 'root', 'root', 'root', null, null, '1');
INSERT INTO `user` VALUES ('19', 'zs', '张三', '123', 'sdaf', '123', '1');
INSERT INTO `user` VALUES ('20', 'lisi', '李四', '123', '123', '123', '1');
INSERT INTO `user` VALUES ('21', '王五', 'wangwu', '123', '123', '123', '1');

-- ----------------------------
-- View structure for shop_orders
-- ----------------------------
DROP VIEW IF EXISTS `shop_orders`;
CREATE ALGORITHM=UNDEFINED DEFINER=`shopping`@`localhost` SQL SECURITY DEFINER  VIEW `shop_orders` AS SELECT `user`.user_name,`date`,state,orders.order_id,goods.good_id,goods.good_name,img,shop.user_id
FROM orders JOIN order_item ON orders.order_id=order_item.order_id
	JOIN `user` ON `USER`.user_id = orders.user_id 
	JOIN goods ON goods.good_id = order_item.good_id 
	JOIN shop ON shop.shop_id = goods.shop_id ;
