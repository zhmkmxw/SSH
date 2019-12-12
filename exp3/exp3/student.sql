/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : student
Target Host     : localhost:3306
Target Database : student
Date: 2018-01-18 16:19:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for stuinfo
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo`;
CREATE TABLE `stuinfo` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `weight` float(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sex';

-- ----------------------------
-- Records of stuinfo
-- ----------------------------
INSERT INTO `stuinfo` VALUES ('2018010001', '李想', '女', '18', '90');
INSERT INTO `stuinfo` VALUES ('2018010002', '梦想', '女', '18', '85');
