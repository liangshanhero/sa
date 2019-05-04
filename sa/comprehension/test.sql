/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : sa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-29 12:08:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tutor` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `tutor` (`tutor`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`tutor`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '邓南京', null);
INSERT INTO `student` VALUES ('2', '李四', null);
INSERT INTO `student` VALUES ('3', '许北京', null);
INSERT INTO `student` VALUES ('4', '张三', null);
INSERT INTO `student` VALUES ('5', '田七', null);
INSERT INTO `student` VALUES ('6', '马天津', null);
INSERT INTO `student` VALUES ('100', '赵六', null);
INSERT INTO `student` VALUES ('101', '王五', null);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('51', '梁早清');
INSERT INTO `teacher` VALUES ('52', '陈晓阳');
INSERT INTO `teacher` VALUES ('53', '刘雅虹');
INSERT INTO `teacher` VALUES ('55', '刘财兴');
