/*
Navicat MySQL Data Transfer

Source Server         : mysql-root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : spring6

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-14 14:30:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssh_employee
-- ----------------------------
DROP TABLE IF EXISTS `ssh_employee`;
CREATE TABLE `ssh_employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `DISHPRICE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssh_employee
-- ----------------------------
INSERT INTO `ssh_employee` VALUES ('1', '炒土豆丝', '有点辣', '12');
INSERT INTO `ssh_employee` VALUES ('2', '干煸豆角', '有点干,味道不错', '21');
INSERT INTO `ssh_employee` VALUES ('3', '炸蘑菇', '挺好吃的，采用上乘蘑菇，高温加工而成。', '14');
INSERT INTO `ssh_employee` VALUES ('4', '大盘鸡', '真的特别好吃，建议来一个。', '30');
INSERT INTO `ssh_employee` VALUES ('8', '大份大盘鸡', '这个是大份的大盘鸡，比前一个分量多。', '60');
INSERT INTO `ssh_employee` VALUES ('9', '西红柿炒鸡蛋', '越吃越好吃', '67');
SET FOREIGN_KEY_CHECKS=1;
