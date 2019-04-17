/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : sa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-16 12:05:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article` (`department`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES ('2', '111', '6');
INSERT INTO `office` VALUES ('3', '112', '6');
INSERT INTO `office` VALUES ('4', '113', '6');
INSERT INTO `office` VALUES ('5', '211', '6');
INSERT INTO `office` VALUES ('6', '212', '6');
INSERT INTO `office` VALUES ('7', '213', '6');
INSERT INTO `office` VALUES ('8', '508', '6');
INSERT INTO `office` VALUES ('9', '软件工程系主任办公室', '6');
INSERT INTO `office` VALUES ('10', '510', '6');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('4', '张三');
INSERT INTO `student` VALUES ('2', '李四');
INSERT INTO `student` VALUES ('101', '王五');
INSERT INTO `student` VALUES ('5', '田七');
INSERT INTO `student` VALUES ('3', '许北京');
INSERT INTO `student` VALUES ('100', '赵六');
INSERT INTO `student` VALUES ('1', '邓南京');
INSERT INTO `student` VALUES ('6', '马天津');

-- ----------------------------
-- Table structure for student2teacher
-- ----------------------------
DROP TABLE IF EXISTS `student2teacher`;
CREATE TABLE `student2teacher` (
  `student` bigint(20) NOT NULL,
  `teacher` bigint(20) NOT NULL,
  PRIMARY KEY (`student`,`teacher`),
  KEY `teacher` (`teacher`),
  CONSTRAINT `student2teacher_ibfk_1` FOREIGN KEY (`student`) REFERENCES `student` (`id`),
  CONSTRAINT `student2teacher_ibfk_2` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student2teacher
-- ----------------------------
INSERT INTO `student2teacher` VALUES ('1', '51');
INSERT INTO `student2teacher` VALUES ('2', '51');
INSERT INTO `student2teacher` VALUES ('3', '51');
INSERT INTO `student2teacher` VALUES ('4', '51');
INSERT INTO `student2teacher` VALUES ('5', '51');
INSERT INTO `student2teacher` VALUES ('6', '51');
INSERT INTO `student2teacher` VALUES ('4', '52');
INSERT INTO `student2teacher` VALUES ('5', '52');
INSERT INTO `student2teacher` VALUES ('6', '52');
INSERT INTO `student2teacher` VALUES ('100', '52');
INSERT INTO `student2teacher` VALUES ('1', '53');
INSERT INTO `student2teacher` VALUES ('3', '53');
INSERT INTO `student2teacher` VALUES ('4', '53');
INSERT INTO `student2teacher` VALUES ('101', '53');
INSERT INTO `student2teacher` VALUES ('1', '55');
INSERT INTO `student2teacher` VALUES ('3', '55');
INSERT INTO `student2teacher` VALUES ('5', '55');
INSERT INTO `student2teacher` VALUES ('6', '55');
INSERT INTO `student2teacher` VALUES ('100', '55');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `office` bigint(20) DEFAULT NULL,
  `leader` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `office` (`office`),
  KEY `leader` (`leader`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`office`) REFERENCES `office` (`id`),
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`leader`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('51', '梁早清', '10', null);
INSERT INTO `teacher` VALUES ('52', '陈晓阳', '10', '51');
INSERT INTO `teacher` VALUES ('53', '刘雅虹', '10', '51');
INSERT INTO `teacher` VALUES ('55', '刘财兴', '10', '51');
