/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : test
Target Host     : localhost:3306
Target Database : test
Date: 2018-01-18 16:18:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('1', 'zzf', 'zzf');
INSERT INTO `info` VALUES ('2', 'zzuli', 'zzuli');
INSERT INTO `info` VALUES ('5', '郑州', 'a');
INSERT INTO `info` VALUES ('6', '河南', '123');
INSERT INTO `info` VALUES ('8', 'yinweiaiqing', '123456');

-- ----------------------------
-- Table structure for t_use_info
-- ----------------------------
DROP TABLE IF EXISTS `t_use_info`;
CREATE TABLE `t_use_info` (
  `int_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_use_info
-- ----------------------------
INSERT INTO `t_use_info` VALUES ('1', 'sina', '123');
INSERT INTO `t_use_info` VALUES ('2', 'qq', '321');
INSERT INTO `t_use_info` VALUES ('3', 'shengli', '1234');
INSERT INTO `t_use_info` VALUES ('4', 'tencent', '567');
INSERT INTO `t_use_info` VALUES ('5', 'zzf', '666');
INSERT INTO `t_use_info` VALUES ('6', 'ss', 'ss');
INSERT INTO `t_use_info` VALUES ('7', 's', 's');
INSERT INTO `t_use_info` VALUES ('8', 's', 's');

-- ----------------------------
-- Table structure for z
-- ----------------------------
DROP TABLE IF EXISTS `z`;
CREATE TABLE `z` (
  `a` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z
-- ----------------------------
