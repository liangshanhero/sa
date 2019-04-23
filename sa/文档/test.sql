/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-04-24 00:08:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `father` bigint(20) DEFAULT NULL,
  `leader` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `father` (`father`),
  KEY `leader` (`leader`),
  CONSTRAINT `a_ibfk_1` FOREIGN KEY (`father`) REFERENCES `a` (`id`),
  CONSTRAINT `a_ibfk_2` FOREIGN KEY (`leader`) REFERENCES `a` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a
-- ----------------------------
INSERT INTO `a` VALUES ('1', '测试一个', null, null);
INSERT INTO `a` VALUES ('2', 'a1', null, null);
INSERT INTO `a` VALUES ('3', 'three', null, null);

-- ----------------------------
-- Table structure for a2a
-- ----------------------------
DROP TABLE IF EXISTS `a2a`;
CREATE TABLE `a2a` (
  `include` bigint(20) NOT NULL,
  `included` bigint(20) NOT NULL,
  PRIMARY KEY (`include`,`included`),
  KEY `son` (`included`),
  CONSTRAINT `a2a_ibfk_1` FOREIGN KEY (`include`) REFERENCES `a` (`id`),
  CONSTRAINT `a2a_ibfk_2` FOREIGN KEY (`included`) REFERENCES `a` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a2a
-- ----------------------------

-- ----------------------------
-- Table structure for a2b
-- ----------------------------
DROP TABLE IF EXISTS `a2b`;
CREATE TABLE `a2b` (
  `a` bigint(20) NOT NULL,
  `b` bigint(20) NOT NULL,
  PRIMARY KEY (`a`,`b`),
  KEY `b` (`b`),
  CONSTRAINT `a2b_ibfk_1` FOREIGN KEY (`a`) REFERENCES `a` (`id`),
  CONSTRAINT `a2b_ibfk_2` FOREIGN KEY (`b`) REFERENCES `b` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a2b
-- ----------------------------

-- ----------------------------
-- Table structure for a2b_id
-- ----------------------------
DROP TABLE IF EXISTS `a2b_id`;
CREATE TABLE `a2b_id` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `a` bigint(20) DEFAULT NULL,
  `b` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `a` (`a`),
  KEY `b` (`b`),
  CONSTRAINT `a2b_id_ibfk_1` FOREIGN KEY (`a`) REFERENCES `a` (`id`),
  CONSTRAINT `a2b_id_ibfk_2` FOREIGN KEY (`b`) REFERENCES `b` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a2b_id
-- ----------------------------

-- ----------------------------
-- Table structure for a2b_name
-- ----------------------------
DROP TABLE IF EXISTS `a2b_name`;
CREATE TABLE `a2b_name` (
  `a` bigint(20) NOT NULL,
  `b` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a`,`b`),
  KEY `b` (`b`),
  CONSTRAINT `a2b_name_ibfk_1` FOREIGN KEY (`a`) REFERENCES `a` (`id`),
  CONSTRAINT `a2b_name_ibfk_2` FOREIGN KEY (`b`) REFERENCES `b` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a2b_name
-- ----------------------------

-- ----------------------------
-- Table structure for appoint
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint` (
  `man` bigint(20) NOT NULL,
  `woman` bigint(20) NOT NULL,
  PRIMARY KEY (`man`,`woman`),
  KEY `woman` (`woman`),
  CONSTRAINT `appoint_ibfk_1` FOREIGN KEY (`man`) REFERENCES `man` (`id`),
  CONSTRAINT `appoint_ibfk_2` FOREIGN KEY (`woman`) REFERENCES `woman` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appoint
-- ----------------------------

-- ----------------------------
-- Table structure for b
-- ----------------------------
DROP TABLE IF EXISTS `b`;
CREATE TABLE `b` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `smallProperty` smallint(6) DEFAULT NULL,
  `intProperty` int(11) DEFAULT NULL,
  `integerProperty` int(11) DEFAULT NULL,
  `realProperty` double DEFAULT NULL,
  `floatProperty` float DEFAULT NULL,
  `decimalProperty` decimal(10,0) DEFAULT NULL,
  `numericProperty` decimal(10,0) DEFAULT NULL,
  `charProperty` char(255) DEFAULT NULL,
  `dateProperty` date DEFAULT NULL,
  `timeProperty` time DEFAULT NULL,
  `yearProperty` year(4) DEFAULT NULL,
  `timestampProperty` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pointProperty` point DEFAULT NULL,
  `datetimeProperty` datetime DEFAULT NULL,
  `tinyblobProperty` tinyblob,
  `mediumblobProperty` mediumblob,
  `longtextProperty` longtext,
  `enumProperty` enum('f','e','d','c','b','a') DEFAULT 'a',
  `setProperty` set('1','2','3','4','5','6') DEFAULT NULL,
  `binaryProperty` binary(255) DEFAULT NULL,
  `varbinaryProperty` varbinary(255) DEFAULT NULL,
  `linestringProperty` linestring DEFAULT NULL,
  `polygonProperty` polygon DEFAULT NULL,
  `geometryProperty` geometry DEFAULT NULL,
  `multipointProperty` multipoint DEFAULT NULL,
  `multilinestringProperty` multilinestring DEFAULT NULL,
  `multipolygonProperty` multipolygon DEFAULT NULL,
  `geometrycollectionProperty` geometrycollection DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '赵文耘《软件工程》');
INSERT INTO `book` VALUES ('2', '马世禄《数据库原理》');
INSERT INTO `book` VALUES ('3', '《现代软件测试原理》');
INSERT INTO `book` VALUES ('6', '《spring 3 reference》');
INSERT INTO `book` VALUES ('7', '《数据库基础》');
INSERT INTO `book` VALUES ('8', '《数据库高级技术》');
INSERT INTO `book` VALUES ('9', 'å¥½ç©');
INSERT INTO `book` VALUES ('10', 'Java');
INSERT INTO `book` VALUES ('11', 'Software Engineer');
INSERT INTO `book` VALUES ('102', 'sa');
INSERT INTO `book` VALUES ('103', 'sa');

-- ----------------------------
-- Table structure for book2course
-- ----------------------------
DROP TABLE IF EXISTS `book2course`;
CREATE TABLE `book2course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '请添加一个名词',
  `book` bigint(20) NOT NULL,
  `course` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher` (`course`),
  KEY `book` (`book`),
  CONSTRAINT `book2course_ibfk_1` FOREIGN KEY (`book`) REFERENCES `book` (`id`),
  CONSTRAINT `book2course_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book2course
-- ----------------------------
INSERT INTO `book2course` VALUES ('1', null, '1', '4');
INSERT INTO `book2course` VALUES ('2', null, '1', '5');
INSERT INTO `book2course` VALUES ('3', null, '1', '3');
INSERT INTO `book2course` VALUES ('4', null, '2', '1');
INSERT INTO `book2course` VALUES ('5', null, '7', '1');
INSERT INTO `book2course` VALUES ('6', null, '8', '1');
INSERT INTO `book2course` VALUES ('7', null, '3', '5');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数据库');
INSERT INTO `course` VALUES ('3', '软件体系结构');
INSERT INTO `course` VALUES ('5', '软件工程');
INSERT INTO `course` VALUES ('4', '面向对象程序设计');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `housecertificate` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `housecertificate` (`housecertificate`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`housecertificate`) REFERENCES `housecertificate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('3', '网络工程系', null);
INSERT INTO `department` VALUES ('4', '地理信息系', '2');
INSERT INTO `department` VALUES ('6', '数学系', null);

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('3', '扩音器');
INSERT INTO `device` VALUES ('5', '投影仪');
INSERT INTO `device` VALUES ('1', '服务器');
INSERT INTO `device` VALUES ('4', '计算机');

-- ----------------------------
-- Table structure for exercise
-- ----------------------------
DROP TABLE IF EXISTS `exercise`;
CREATE TABLE `exercise` (
  `id` bigint(20) NOT NULL,
  `exercise` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exercise
-- ----------------------------
INSERT INTO `exercise` VALUES ('2', '6', '201330330312赖志辉');
INSERT INTO `exercise` VALUES ('3', '7', '201330330312赖志辉');
INSERT INTO `exercise` VALUES ('4', '8', '201330330312赖志辉');
INSERT INTO `exercise` VALUES ('5', '9', '201330330312赖志辉');
INSERT INTO `exercise` VALUES ('6', '10', '201330330312赖志辉');
INSERT INTO `exercise` VALUES ('7', '2', '201330340406方致远');
INSERT INTO `exercise` VALUES ('8', '3', '201330340406方致远');
INSERT INTO `exercise` VALUES ('9', '4', '201330340406方致远');
INSERT INTO `exercise` VALUES ('10', '5', '201330340406方致远');
INSERT INTO `exercise` VALUES ('11', '6', '201330340406方致远');
INSERT INTO `exercise` VALUES ('12', '1', '201430100218刘玮');
INSERT INTO `exercise` VALUES ('13', '10', '201430100218刘玮');
INSERT INTO `exercise` VALUES ('14', '7', '201430320216钮珈振');
INSERT INTO `exercise` VALUES ('15', '10', '201430320216钮珈振');
INSERT INTO `exercise` VALUES ('16', '5', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('17', '6', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('18', '7', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('19', '8', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('20', '9', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('21', '10', '201430320506邓杨');
INSERT INTO `exercise` VALUES ('22', '4', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('23', '5', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('24', '6', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('25', '7', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('26', '8', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('27', '9', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('28', '10', '201430330117梁宸华');
INSERT INTO `exercise` VALUES ('29', '1', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('30', '2', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('31', '3', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('32', '7', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('33', '9', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('34', '10', '201430340110江龙杰');
INSERT INTO `exercise` VALUES ('35', '5', '201512010221游海涛');
INSERT INTO `exercise` VALUES ('36', '6', '201512010221游海涛');
INSERT INTO `exercise` VALUES ('37', '8', '201512010221游海涛');
INSERT INTO `exercise` VALUES ('38', '9', '201512010221游海涛');
INSERT INTO `exercise` VALUES ('39', '10', '201512010221游海涛');
INSERT INTO `exercise` VALUES ('40', '4', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('41', '5', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('42', '6', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('43', '7', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('44', '8', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('45', '9', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('46', '10', '201514090228郑树琨');
INSERT INTO `exercise` VALUES ('47', '4', '201516060212林德钿');
INSERT INTO `exercise` VALUES ('48', '5', '201516060212林德钿');
INSERT INTO `exercise` VALUES ('49', '6', '201516060212林德钿');
INSERT INTO `exercise` VALUES ('50', '7', '201516060212林德钿');
INSERT INTO `exercise` VALUES ('51', '8', '201516060212林德钿');
INSERT INTO `exercise` VALUES ('52', '4', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('53', '6', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('54', '7', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('55', '8', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('56', '9', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('57', '10', '201521190804陈光发');
INSERT INTO `exercise` VALUES ('58', '4', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('59', '5', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('60', '6', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('61', '7', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('62', '8', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('63', '9', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('64', '10', '201521200318宋育升');
INSERT INTO `exercise` VALUES ('65', '5', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('66', '6', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('67', '7', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('68', '8', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('69', '9', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('70', '10', '201521200603曾幸彬');
INSERT INTO `exercise` VALUES ('71', '1', '201525010101曾文珍');
INSERT INTO `exercise` VALUES ('72', '1', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('73', '2', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('74', '3', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('75', '4', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('76', '5', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('77', '6', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('78', '7', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('79', '8', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('80', '9', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('81', '10', '201525010106方嘉盛');
INSERT INTO `exercise` VALUES ('82', '1', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('83', '2', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('84', '3', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('85', '4', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('86', '4', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('87', '5', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('88', '5', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('89', '6', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('90', '7', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('91', '8', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('92', '9', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('93', '10', '201525010107郭沛伦');
INSERT INTO `exercise` VALUES ('94', '1', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('95', '2', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('96', '3', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('97', '4', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('98', '5', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('99', '6', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('100', '7', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('101', '8', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('102', '9', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('103', '10', '201525010109黄冠烨');
INSERT INTO `exercise` VALUES ('104', '1', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('105', '2', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('106', '3', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('107', '4', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('108', '5', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('109', '6', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('110', '7', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('111', '8', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('112', '9', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('113', '10', '201525010111蓝钰达');
INSERT INTO `exercise` VALUES ('114', '1', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('115', '2', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('116', '3', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('117', '4', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('118', '4', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('119', '5', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('120', '6', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('121', '7', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('122', '8', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('123', '9', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('124', '10', '201525010201曹英鹏');
INSERT INTO `exercise` VALUES ('125', '1', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('126', '2', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('127', '3', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('128', '4', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('129', '4', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('130', '5', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('131', '6', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('132', '7', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('133', '8', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('134', '9', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('135', '10', '201525010202陈沂');
INSERT INTO `exercise` VALUES ('136', '1', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('137', '2', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('138', '3', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('139', '4', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('140', '4', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('141', '5', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('142', '5', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('143', '6', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('144', '7', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('145', '8', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('146', '9', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('147', '10', '201525010203陈泽昌');
INSERT INTO `exercise` VALUES ('148', '1', '201525010204陈光发');
INSERT INTO `exercise` VALUES ('149', '2', '201525010204陈光发');
INSERT INTO `exercise` VALUES ('150', '1', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('151', '2', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('152', '3', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('153', '4', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('154', '5', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('155', '6', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('156', '8', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('157', '10', '201525010205高至玮');
INSERT INTO `exercise` VALUES ('158', '1', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('159', '2', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('160', '3', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('161', '4', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('162', '5', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('163', '6', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('164', '7', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('165', '9', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('166', '10', '201525010206黄锦荣');
INSERT INTO `exercise` VALUES ('167', '1', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('168', '2', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('169', '3', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('170', '4', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('171', '5', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('172', '6', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('173', '7', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('174', '8', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('175', '9', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('176', '10', '201525010207黄宇坤');
INSERT INTO `exercise` VALUES ('177', '1', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('178', '2', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('179', '3', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('180', '4', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('181', '5', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('182', '6', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('183', '7', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('184', '8', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('185', '9', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('186', '10', '201525010208黎嘉发');
INSERT INTO `exercise` VALUES ('187', '1', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('188', '2', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('189', '3', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('190', '4', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('191', '5', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('192', '6', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('193', '8', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('194', '10', '201525010211李志鹏');
INSERT INTO `exercise` VALUES ('195', '8', '201525010211杨淑瑜');
INSERT INTO `exercise` VALUES ('196', '9', '201525010211杨淑瑜');
INSERT INTO `exercise` VALUES ('197', '1', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('198', '2', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('199', '3', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('200', '4', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('201', '4', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('202', '5', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('203', '6', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('204', '7', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('205', '8', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('206', '9', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('207', '10', '201525010212梁铭坤');
INSERT INTO `exercise` VALUES ('208', '1', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('209', '2', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('210', '3', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('211', '4', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('212', '5', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('213', '5', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('214', '6', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('215', '7', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('216', '8', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('217', '9', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('218', '10', '201525010214梁伟健');
INSERT INTO `exercise` VALUES ('219', '1', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('220', '2', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('221', '3', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('222', '4', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('223', '5', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('224', '6', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('225', '7', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('226', '8', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('227', '10', '201525010215廖文龙');
INSERT INTO `exercise` VALUES ('228', '1', '201525010216林锴');
INSERT INTO `exercise` VALUES ('229', '2', '201525010216林锴');
INSERT INTO `exercise` VALUES ('230', '3', '201525010216林锴');
INSERT INTO `exercise` VALUES ('231', '4', '201525010216林锴');
INSERT INTO `exercise` VALUES ('232', '4', '201525010216林锴');
INSERT INTO `exercise` VALUES ('233', '5', '201525010216林锴');
INSERT INTO `exercise` VALUES ('234', '6', '201525010216林锴');
INSERT INTO `exercise` VALUES ('235', '7', '201525010216林锴');
INSERT INTO `exercise` VALUES ('236', '8', '201525010216林锴');
INSERT INTO `exercise` VALUES ('237', '9', '201525010216林锴');
INSERT INTO `exercise` VALUES ('238', '10', '201525010216林锴');
INSERT INTO `exercise` VALUES ('239', '1', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('240', '2', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('241', '3', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('242', '4', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('243', '4', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('244', '5', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('245', '6', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('246', '7', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('247', '8', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('248', '9', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('249', '10', '201525010219欧雨');
INSERT INTO `exercise` VALUES ('250', '1', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('251', '2', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('252', '3', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('253', '4', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('254', '4', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('255', '5', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('256', '5', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('257', '6', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('258', '9', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('259', '10', '201525010221苏坤明');
INSERT INTO `exercise` VALUES ('260', '1', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('261', '2', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('262', '3', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('263', '4', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('264', '5', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('265', '5', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('266', '6', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('267', '7', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('268', '8', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('269', '10', '201525010222孙冬冬');
INSERT INTO `exercise` VALUES ('270', '2', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('271', '2', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('272', '3', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('273', '4', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('274', '4', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('275', '5', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('276', '6', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('277', '7', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('278', '8', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('279', '9', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('280', '10', '201525010225魏佳纯');
INSERT INTO `exercise` VALUES ('281', '1', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('282', '3', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('283', '4', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('284', '5', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('285', '6', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('286', '7', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('287', '8', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('288', '9', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('289', '10', '201525010228杨淑瑜');
INSERT INTO `exercise` VALUES ('290', '8', '201525010229张小旗');
INSERT INTO `exercise` VALUES ('291', '10', '201525010229张小旗');
INSERT INTO `exercise` VALUES ('292', '1', '201525010306邓杨');
INSERT INTO `exercise` VALUES ('293', '2', '201525010306邓杨');
INSERT INTO `exercise` VALUES ('294', '1', '201525010311李观云');
INSERT INTO `exercise` VALUES ('295', '2', '201525010311李观云');
INSERT INTO `exercise` VALUES ('296', '3', '201525010311李观云');
INSERT INTO `exercise` VALUES ('297', '5', '201525010311李观云');
INSERT INTO `exercise` VALUES ('298', '6', '201525010311李观云');
INSERT INTO `exercise` VALUES ('299', '7', '201525010311李观云');
INSERT INTO `exercise` VALUES ('300', '8', '201525010311李观云');
INSERT INTO `exercise` VALUES ('301', '9', '201525010311李观云');
INSERT INTO `exercise` VALUES ('302', '10', '201525010311李观云');
INSERT INTO `exercise` VALUES ('303', '1', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('304', '2', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('305', '5', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('306', '6', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('307', '7', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('308', '8', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('309', '9', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('310', '10', '201525010315彭峰');
INSERT INTO `exercise` VALUES ('311', '1', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('312', '3', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('313', '4', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('314', '5', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('315', '6', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('316', '7', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('317', '9', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('318', '10', '201525010319肖宇冰');
INSERT INTO `exercise` VALUES ('319', '2', '201525010426号涂可');
INSERT INTO `exercise` VALUES ('320', '3', '201525010426号涂可');
INSERT INTO `exercise` VALUES ('321', '1', '201525010426涂可');
INSERT INTO `exercise` VALUES ('322', '4', '201525010426涂可');
INSERT INTO `exercise` VALUES ('323', '5', '201525010426涂可');
INSERT INTO `exercise` VALUES ('324', '7', '201525010426涂可');
INSERT INTO `exercise` VALUES ('325', '10', '201525010426涂可');
INSERT INTO `exercise` VALUES ('326', '1', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('327', '2', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('328', '3', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('329', '4', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('330', '5', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('331', '7', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('332', '10', '201525010427肖意洲');
INSERT INTO `exercise` VALUES ('333', '1', '201525010500钮珈振');
INSERT INTO `exercise` VALUES ('334', '2', '201525010500钮珈振');
INSERT INTO `exercise` VALUES ('335', '1', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('336', '2', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('337', '5', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('338', '6', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('339', '7', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('340', '8', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('341', '9', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('342', '10', '201525010501陈春林');
INSERT INTO `exercise` VALUES ('343', '1', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('344', '2', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('345', '3', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('346', '4', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('347', '5', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('348', '6', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('349', '7', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('350', '8', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('351', '9', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('352', '10', '201525010502陈定华');
INSERT INTO `exercise` VALUES ('353', '1', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('354', '2', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('355', '3', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('356', '4', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('357', '5', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('358', '6', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('359', '7', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('360', '8', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('361', '9', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('362', '10', '201525010504陈培福');
INSERT INTO `exercise` VALUES ('363', '1', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('364', '2', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('365', '3', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('366', '4', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('367', '5', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('368', '6', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('369', '7', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('370', '8', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('371', '9', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('372', '10', '201525010505陈新坚');
INSERT INTO `exercise` VALUES ('373', '1', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('374', '2', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('375', '3', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('376', '4', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('377', '5', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('378', '6', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('379', '7', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('380', '8', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('381', '9', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('382', '9', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('383', '10', '201525010512黄嘉明');
INSERT INTO `exercise` VALUES ('384', '1', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('385', '2', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('386', '3', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('387', '4', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('388', '5', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('389', '6', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('390', '7', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('391', '8', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('392', '9', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('393', '10', '201525010601陈嘉文');
INSERT INTO `exercise` VALUES ('394', '1', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('395', '2', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('396', '3', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('397', '4', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('398', '5', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('399', '6', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('400', '8', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('401', '9', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('402', '10', '201525010610李昱颉');
INSERT INTO `exercise` VALUES ('403', '1', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('404', '2', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('405', '3', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('406', '4', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('407', '5', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('408', '6', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('409', '7', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('410', '8', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('411', '10', '201525010611梁晓健');
INSERT INTO `exercise` VALUES ('412', '9', '201525010611梁晓键');
INSERT INTO `exercise` VALUES ('413', '1', '201525010616明玥');
INSERT INTO `exercise` VALUES ('414', '2', '201525010616明玥');
INSERT INTO `exercise` VALUES ('415', '3', '201525010616明玥');
INSERT INTO `exercise` VALUES ('416', '4', '201525010616明玥');
INSERT INTO `exercise` VALUES ('417', '5', '201525010616明玥');
INSERT INTO `exercise` VALUES ('418', '6', '201525010616明玥');
INSERT INTO `exercise` VALUES ('419', '7', '201525010616明玥');
INSERT INTO `exercise` VALUES ('420', '8', '201525010616明玥');
INSERT INTO `exercise` VALUES ('421', '9', '201525010616明玥');
INSERT INTO `exercise` VALUES ('422', '10', '201525010616明玥');
INSERT INTO `exercise` VALUES ('423', '1', '201525010618宋育升');
INSERT INTO `exercise` VALUES ('424', '2', '201525010618宋育升');
INSERT INTO `exercise` VALUES ('425', '3', '201525010618宋育升');
INSERT INTO `exercise` VALUES ('426', '1', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('427', '2', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('428', '3', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('429', '4', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('430', '5', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('431', '7', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('432', '9', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('433', '10', '201525010620汪焕营');
INSERT INTO `exercise` VALUES ('434', '1', '201525010621王永福');
INSERT INTO `exercise` VALUES ('435', '2', '201525010621王永福');
INSERT INTO `exercise` VALUES ('436', '3', '201525010621王永福');
INSERT INTO `exercise` VALUES ('437', '4', '201525010621王永福');
INSERT INTO `exercise` VALUES ('438', '5', '201525010621王永福');
INSERT INTO `exercise` VALUES ('439', '7', '201525010621王永福');
INSERT INTO `exercise` VALUES ('440', '8', '201525010621王永福');
INSERT INTO `exercise` VALUES ('441', '9', '201525010621王永福');
INSERT INTO `exercise` VALUES ('442', '10', '201525010621王永福');
INSERT INTO `exercise` VALUES ('443', '1', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('444', '2', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('445', '3', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('446', '4', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('447', '5', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('448', '5', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('449', '7', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('450', '8', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('451', '10', '201525010622吴俊炫');
INSERT INTO `exercise` VALUES ('452', '6', '201525010622吳俊炫');
INSERT INTO `exercise` VALUES ('453', '1', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('454', '2', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('455', '3', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('456', '4', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('457', '5', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('458', '6', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('459', '7', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('460', '8', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('461', '9', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('462', '10', '201525010623杨烨');
INSERT INTO `exercise` VALUES ('463', '1', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('464', '2', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('465', '3', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('466', '4', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('467', '5', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('468', '6', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('469', '7', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('470', '8', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('471', '9', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('472', '10', '201525010624杨兆森');
INSERT INTO `exercise` VALUES ('473', '1', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('474', '2', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('475', '3', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('476', '4', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('477', '5', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('478', '6', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('479', '7', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('480', '8', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('481', '9', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('482', '10', '201525010628郑皓天');
INSERT INTO `exercise` VALUES ('483', '1', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('484', '2', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('485', '3', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('486', '4', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('487', '5', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('488', '6', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('489', '7', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('490', '8', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('491', '9', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('492', '10', '201525010629郑思婷');
INSERT INTO `exercise` VALUES ('493', '5', '201525040113林鸣冬');
INSERT INTO `exercise` VALUES ('494', '6', '201525040113林鸣冬');
INSERT INTO `exercise` VALUES ('495', '4', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('496', '5', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('497', '6', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('498', '7', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('499', '8', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('500', '10', '201525040315林曦梅');
INSERT INTO `exercise` VALUES ('501', '1', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('502', '3', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('503', '4', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('504', '5', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('505', '6', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('506', '7', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('507', '8', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('508', '9', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('509', '10', '201525060101蔡武坤');
INSERT INTO `exercise` VALUES ('510', '1', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('511', '2', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('512', '3', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('513', '4', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('514', '5', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('515', '7', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('516', '8', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('517', '9', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('518', '10', '201525060102陈海堂');
INSERT INTO `exercise` VALUES ('519', '1', '201525060103陈健');
INSERT INTO `exercise` VALUES ('520', '2', '201525060103陈健');
INSERT INTO `exercise` VALUES ('521', '3', '201525060103陈健');
INSERT INTO `exercise` VALUES ('522', '4', '201525060103陈健');
INSERT INTO `exercise` VALUES ('523', '5', '201525060103陈健');
INSERT INTO `exercise` VALUES ('524', '5', '201525060103陈健');
INSERT INTO `exercise` VALUES ('525', '6', '201525060103陈健');
INSERT INTO `exercise` VALUES ('526', '7', '201525060103陈健');
INSERT INTO `exercise` VALUES ('527', '8', '201525060103陈健');
INSERT INTO `exercise` VALUES ('528', '9', '201525060103陈健');
INSERT INTO `exercise` VALUES ('529', '10', '201525060103陈健');
INSERT INTO `exercise` VALUES ('530', '1', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('531', '2', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('532', '3', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('533', '4', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('534', '5', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('535', '6', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('536', '7', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('537', '8', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('538', '9', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('539', '10', '201525060104邓晓城');
INSERT INTO `exercise` VALUES ('540', '1', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('541', '2', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('542', '3', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('543', '4', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('544', '5', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('545', '6', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('546', '8', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('547', '9', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('548', '10', '201525060105冯文韬');
INSERT INTO `exercise` VALUES ('549', '1', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('550', '2', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('551', '3', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('552', '4', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('553', '5', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('554', '6', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('555', '7', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('556', '8', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('557', '9', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('558', '10', '201525060106何增杰');
INSERT INTO `exercise` VALUES ('559', '1', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('560', '2', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('561', '3', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('562', '4', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('563', '5', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('564', '6', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('565', '7', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('566', '8', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('567', '9', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('568', '10', '201525060107黄崇彬');
INSERT INTO `exercise` VALUES ('569', '1', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('570', '2', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('571', '3', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('572', '4', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('573', '5', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('574', '6', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('575', '7', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('576', '9', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('577', '10', '201525060108黄舒梦');
INSERT INTO `exercise` VALUES ('578', '1', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('579', '2', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('580', '3', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('581', '4', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('582', '5', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('583', '6', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('584', '7', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('585', '8', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('586', '10', '201525060109黄顺通');
INSERT INTO `exercise` VALUES ('587', '1', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('588', '3', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('589', '4', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('590', '5', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('591', '6', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('592', '7', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('593', '10', '201525060110黄仰纯');
INSERT INTO `exercise` VALUES ('594', '1', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('595', '2', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('596', '3', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('597', '4', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('598', '5', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('599', '5', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('600', '6', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('601', '7', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('602', '8', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('603', '9', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('604', '10', '201525060111柯弘正');
INSERT INTO `exercise` VALUES ('605', '1', '201525060112赖志辉');
INSERT INTO `exercise` VALUES ('606', '2', '201525060112赖志辉');
INSERT INTO `exercise` VALUES ('607', '3', '201525060112赖志辉');
INSERT INTO `exercise` VALUES ('608', '1', '201525060112林德钿');
INSERT INTO `exercise` VALUES ('609', '2', '201525060112林德钿');
INSERT INTO `exercise` VALUES ('610', '2', '201525060112林德钿');
INSERT INTO `exercise` VALUES ('611', '3', '201525060112林德钿');
INSERT INTO `exercise` VALUES ('612', '6', '201525060113梁永健');
INSERT INTO `exercise` VALUES ('613', '7', '201525060113梁永健');
INSERT INTO `exercise` VALUES ('614', '8', '201525060113梁永健');
INSERT INTO `exercise` VALUES ('615', '10', '201525060113梁永健');
INSERT INTO `exercise` VALUES ('616', '1', '201525060114林杰');
INSERT INTO `exercise` VALUES ('617', '2', '201525060114林杰');
INSERT INTO `exercise` VALUES ('618', '3', '201525060114林杰');
INSERT INTO `exercise` VALUES ('619', '4', '201525060114林杰');
INSERT INTO `exercise` VALUES ('620', '5', '201525060114林杰');
INSERT INTO `exercise` VALUES ('621', '6', '201525060114林杰');
INSERT INTO `exercise` VALUES ('622', '7', '201525060114林杰');
INSERT INTO `exercise` VALUES ('623', '10', '201525060114林杰');
INSERT INTO `exercise` VALUES ('624', '1', '201525060115林永平');
INSERT INTO `exercise` VALUES ('625', '2', '201525060115林永平');
INSERT INTO `exercise` VALUES ('626', '3', '201525060115林永平');
INSERT INTO `exercise` VALUES ('627', '4', '201525060115林永平');
INSERT INTO `exercise` VALUES ('628', '5', '201525060115林永平');
INSERT INTO `exercise` VALUES ('629', '6', '201525060115林永平');
INSERT INTO `exercise` VALUES ('630', '8', '201525060115林永平');
INSERT INTO `exercise` VALUES ('631', '10', '201525060115林永平');
INSERT INTO `exercise` VALUES ('632', '5', '201525060117刘超强');
INSERT INTO `exercise` VALUES ('633', '1', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('634', '1', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('635', '2', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('636', '3', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('637', '4', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('638', '5', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('639', '6', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('640', '7', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('641', '9', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('642', '10', '201525060118刘东恒');
INSERT INTO `exercise` VALUES ('643', '1', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('644', '2', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('645', '3', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('646', '4', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('647', '5', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('648', '6', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('649', '7', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('650', '8', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('651', '9', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('652', '10', '201525060119刘孟莹');
INSERT INTO `exercise` VALUES ('653', '1', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('654', '2', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('655', '3', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('656', '4', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('657', '5', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('658', '6', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('659', '7', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('660', '8', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('661', '9', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('662', '10', '201525060120刘婉婷');
INSERT INTO `exercise` VALUES ('663', '1', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('664', '2', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('665', '4', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('666', '5', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('667', '6', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('668', '8', '201525060122彭卓青');
INSERT INTO `exercise` VALUES ('669', '1', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('670', '2', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('671', '3', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('672', '4', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('673', '4', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('674', '5', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('675', '6', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('676', '7', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('677', '8', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('678', '9', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('679', '10', '201525060123王嘉乐');
INSERT INTO `exercise` VALUES ('680', '1', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('681', '2', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('682', '3', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('683', '4', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('684', '4', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('685', '5', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('686', '6', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('687', '7', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('688', '8', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('689', '9', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('690', '10', '201525060124温嘉伟');
INSERT INTO `exercise` VALUES ('691', '1', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('692', '2', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('693', '3', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('694', '4', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('695', '5', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('696', '6', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('697', '7', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('698', '8', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('699', '9', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('700', '10', '201525060125吴林伟');
INSERT INTO `exercise` VALUES ('701', '1', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('702', '2', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('703', '3', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('704', '4', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('705', '4', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('706', '5', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('707', '7', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('708', '8', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('709', '9', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('710', '10', '201525060126颜铠胜');
INSERT INTO `exercise` VALUES ('711', '1', '201525060127杨克');
INSERT INTO `exercise` VALUES ('712', '2', '201525060127杨克');
INSERT INTO `exercise` VALUES ('713', '3', '201525060127杨克');
INSERT INTO `exercise` VALUES ('714', '4', '201525060127杨克');
INSERT INTO `exercise` VALUES ('715', '4', '201525060127杨克');
INSERT INTO `exercise` VALUES ('716', '5', '201525060127杨克');
INSERT INTO `exercise` VALUES ('717', '7', '201525060127杨克');
INSERT INTO `exercise` VALUES ('718', '8', '201525060127杨克');
INSERT INTO `exercise` VALUES ('719', '9', '201525060127杨克');
INSERT INTO `exercise` VALUES ('720', '10', '201525060127杨克');
INSERT INTO `exercise` VALUES ('721', '1', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('722', '2', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('723', '3', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('724', '4', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('725', '5', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('726', '7', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('727', '8', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('728', '10', '201525060128张永胜');
INSERT INTO `exercise` VALUES ('729', '6', '2015250601296张致铭');
INSERT INTO `exercise` VALUES ('730', '1', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('731', '2', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('732', '3', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('733', '4', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('734', '4', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('735', '5', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('736', '7', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('737', '9', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('738', '10', '201525060129张致铭');
INSERT INTO `exercise` VALUES ('739', '1', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('740', '3', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('741', '4', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('742', '5', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('743', '7', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('744', '10', '201525060130朱麒霖');
INSERT INTO `exercise` VALUES ('745', '1', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('746', '2', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('747', '3', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('748', '4', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('749', '5', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('750', '6', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('751', '7', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('752', '8', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('753', '9', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('754', '10', '201525060202陈钊');
INSERT INTO `exercise` VALUES ('755', '1', '201525060203曾幸彬');
INSERT INTO `exercise` VALUES ('756', '2', '201525060203曾幸彬');
INSERT INTO `exercise` VALUES ('757', '3', '201525060203曾幸彬');
INSERT INTO `exercise` VALUES ('758', '1', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('759', '2', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('760', '3', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('761', '4', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('762', '5', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('763', '6', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('764', '7', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('765', '8', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('766', '9', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('767', '10', '201525060204黄嘉盈');
INSERT INTO `exercise` VALUES ('768', '1', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('769', '2', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('770', '3', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('771', '4', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('772', '5', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('773', '6', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('774', '7', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('775', '8', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('776', '9', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('777', '10', '201525060205黄嘉瑜');
INSERT INTO `exercise` VALUES ('778', '1', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('779', '2', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('780', '3', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('781', '4', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('782', '5', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('783', '6', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('784', '7', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('785', '8', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('786', '9', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('787', '10', '201525060206黄志勇');
INSERT INTO `exercise` VALUES ('788', '1', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('789', '2', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('790', '3', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('791', '4', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('792', '5', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('793', '6', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('794', '7', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('795', '8', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('796', '9', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('797', '10', '201525060210梁艺贤');
INSERT INTO `exercise` VALUES ('798', '1', '201525060211林港健');
INSERT INTO `exercise` VALUES ('799', '2', '201525060211林港健');
INSERT INTO `exercise` VALUES ('800', '3', '201525060211林港健');
INSERT INTO `exercise` VALUES ('801', '4', '201525060211林港健');
INSERT INTO `exercise` VALUES ('802', '5', '201525060211林港健');
INSERT INTO `exercise` VALUES ('803', '7', '201525060211林港健');
INSERT INTO `exercise` VALUES ('804', '8', '201525060211林港健');
INSERT INTO `exercise` VALUES ('805', '9', '201525060211林港健');
INSERT INTO `exercise` VALUES ('806', '10', '201525060211林港健');
INSERT INTO `exercise` VALUES ('807', '1', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('808', '2', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('809', '3', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('810', '4', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('811', '5', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('812', '6', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('813', '7', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('814', '8', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('815', '9', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('816', '10', '201525060213刘俊略');
INSERT INTO `exercise` VALUES ('817', '1', '201525060216彭相衡');
INSERT INTO `exercise` VALUES ('818', '4', '201525060216彭相衡');
INSERT INTO `exercise` VALUES ('819', '5', '201525060216彭相衡');
INSERT INTO `exercise` VALUES ('820', '7', '201525060216彭相衡');
INSERT INTO `exercise` VALUES ('821', '10', '201525060216彭相衡');
INSERT INTO `exercise` VALUES ('822', '1', '201525060217梁宸华');
INSERT INTO `exercise` VALUES ('823', '2', '201525060217梁宸华');
INSERT INTO `exercise` VALUES ('824', '3', '201525060217梁宸华');
INSERT INTO `exercise` VALUES ('825', '4', '201525060217梁宸华');
INSERT INTO `exercise` VALUES ('826', '1', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('827', '2', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('828', '3', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('829', '4', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('830', '5', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('831', '7', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('832', '8', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('833', '9', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('834', '10', '201525060217彭翔');
INSERT INTO `exercise` VALUES ('835', '1', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('836', '2', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('837', '4', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('838', '5', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('839', '6', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('840', '7', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('841', '8', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('842', '9', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('843', '10', '201525060218邱元玫');
INSERT INTO `exercise` VALUES ('844', '1', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('845', '2', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('846', '3', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('847', '4', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('848', '5', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('849', '7', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('850', '9', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('851', '10', '201525060219王敏铨');
INSERT INTO `exercise` VALUES ('852', '1', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('853', '2', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('854', '3', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('855', '4', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('856', '5', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('857', '6', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('858', '7', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('859', '8', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('860', '9', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('861', '10', '201525060224徐耀荣');
INSERT INTO `exercise` VALUES ('862', '1', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('863', '2', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('864', '3', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('865', '4', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('866', '5', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('867', '6', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('868', '8', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('869', '9', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('870', '10', '201525060225叶镇亮');
INSERT INTO `exercise` VALUES ('871', '1', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('872', '2', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('873', '3', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('874', '4', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('875', '5', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('876', '6', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('877', '7', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('878', '8', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('879', '9', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('880', '10', '201525060226尹文辉');
INSERT INTO `exercise` VALUES ('881', '1', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('882', '2', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('883', '3', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('884', '4', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('885', '5', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('886', '5', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('887', '6', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('888', '7', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('889', '8', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('890', '9', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('891', '10', '201525060227张小燕');
INSERT INTO `exercise` VALUES ('892', '1', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('893', '2', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('894', '3', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('895', '4', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('896', '5', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('897', '6', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('898', '7', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('899', '8', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('900', '9', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('901', '10', '201525060228张颖祥');
INSERT INTO `exercise` VALUES ('902', '1', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('903', '2', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('904', '3', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('905', '3', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('906', '4', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('907', '5', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('908', '6', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('909', '7', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('910', '8', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('911', '9', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('912', '10', '201525060229郑丽卿');
INSERT INTO `exercise` VALUES ('913', '1', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('914', '2', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('915', '3', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('916', '4', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('917', '5', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('918', '6', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('919', '7', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('920', '8', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('921', '9', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('922', '10', '201525060230庄丰鸣');
INSERT INTO `exercise` VALUES ('923', '1', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('924', '2', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('925', '3', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('926', '4', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('927', '5', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('928', '7', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('929', '8', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('930', '10', '201525060301蔡土云');
INSERT INTO `exercise` VALUES ('931', '1', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('932', '2', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('933', '3', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('934', '4', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('935', '5', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('936', '5', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('937', '6', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('938', '7', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('939', '8', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('940', '9', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('941', '10', '201525060303陈炳就');
INSERT INTO `exercise` VALUES ('942', '1', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('943', '2', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('944', '3', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('945', '4', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('946', '5', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('947', '6', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('948', '7', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('949', '8', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('950', '9', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('951', '10', '201525060306邓权威');
INSERT INTO `exercise` VALUES ('952', '1', '201525060308何建航');
INSERT INTO `exercise` VALUES ('953', '2', '201525060308何建航');
INSERT INTO `exercise` VALUES ('954', '3', '201525060308何建航');
INSERT INTO `exercise` VALUES ('955', '4', '201525060308何建航');
INSERT INTO `exercise` VALUES ('956', '5', '201525060308何建航');
INSERT INTO `exercise` VALUES ('957', '6', '201525060308何建航');
INSERT INTO `exercise` VALUES ('958', '7', '201525060308何建航');
INSERT INTO `exercise` VALUES ('959', '8', '201525060308何建航');
INSERT INTO `exercise` VALUES ('960', '9', '201525060308何建航');
INSERT INTO `exercise` VALUES ('961', '10', '201525060308何建航');
INSERT INTO `exercise` VALUES ('962', '1', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('963', '2', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('964', '3', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('965', '4', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('966', '4', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('967', '5', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('968', '6', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('969', '7', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('970', '8', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('971', '9', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('972', '10', '201525060309胡添林');
INSERT INTO `exercise` VALUES ('973', '1', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('974', '2', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('975', '3', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('976', '4', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('977', '5', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('978', '6', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('979', '7', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('980', '8', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('981', '9', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('982', '10', '201525060310黄宽艺');
INSERT INTO `exercise` VALUES ('983', '1', '201525060312雷宇琪');
INSERT INTO `exercise` VALUES ('984', '3', '201525060312雷宇琪');
INSERT INTO `exercise` VALUES ('985', '9', '201525060312雷宇琪');
INSERT INTO `exercise` VALUES ('986', '10', '201525060312雷宇琪');
INSERT INTO `exercise` VALUES ('987', '1', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('988', '2', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('989', '3', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('990', '4', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('991', '5', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('992', '6', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('993', '7', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('994', '8', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('995', '9', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('996', '10', '201525060313李奕通');
INSERT INTO `exercise` VALUES ('997', '1', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('998', '2', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('999', '3', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1000', '4', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1001', '5', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1002', '6', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1003', '7', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1004', '8', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1005', '10', '201525060314林逸希');
INSERT INTO `exercise` VALUES ('1006', '1', '201525060315林曦梅_转专业');
INSERT INTO `exercise` VALUES ('1007', '2', '201525060315林曦梅_转专业');
INSERT INTO `exercise` VALUES ('1008', '3', '201525060315林曦梅_转专业');
INSERT INTO `exercise` VALUES ('1009', '1', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1010', '2', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1011', '3', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1012', '4', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1013', '5', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1014', '6', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1015', '7', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1016', '8', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1017', '10', '201525060315刘乐挺');
INSERT INTO `exercise` VALUES ('1018', '1', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1019', '2', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1020', '3', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1021', '4', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1022', '5', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1023', '6', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1024', '7', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1025', '8', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1026', '9', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1027', '10', '201525060316潘坤城');
INSERT INTO `exercise` VALUES ('1028', '1', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1029', '2', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1030', '3', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1031', '4', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1032', '5', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1033', '6', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1034', '7', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1035', '8', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1036', '9', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1037', '10', '201525060318王洁鸿');
INSERT INTO `exercise` VALUES ('1038', '1', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1039', '2', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1040', '3', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1041', '4', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1042', '5', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1043', '6', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1044', '9', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1045', '10', '201525060319韦鑫');
INSERT INTO `exercise` VALUES ('1046', '1', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1047', '2', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1048', '3', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1049', '4', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1050', '5', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1051', '6', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1052', '7', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1053', '8', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1054', '9', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1055', '10', '201525060320吴国涛');
INSERT INTO `exercise` VALUES ('1056', '1', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1057', '2', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1058', '3', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1059', '4', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1060', '5', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1061', '6', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1062', '7', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1063', '8', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1064', '10', '201525060321吴佳鸿');
INSERT INTO `exercise` VALUES ('1065', '1', '201525060321游海涛（转)');
INSERT INTO `exercise` VALUES ('1066', '3', '201525060321游海涛（转)');
INSERT INTO `exercise` VALUES ('1067', '4', '201525060321游海涛（转)');
INSERT INTO `exercise` VALUES ('1068', '2', '201525060321游海涛（转）');
INSERT INTO `exercise` VALUES ('1069', '1', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1070', '2', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1071', '3', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1072', '4', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1073', '5', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1074', '6', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1075', '7', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1076', '8', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1077', '9', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1078', '10', '201525060322许丽端');
INSERT INTO `exercise` VALUES ('1079', '1', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1080', '2', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1081', '3', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1082', '4', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1083', '5', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1084', '6', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1085', '7', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1086', '8', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1087', '9', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1088', '10', '201525060323詹金宇');
INSERT INTO `exercise` VALUES ('1089', '1', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1090', '2', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1091', '3', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1092', '4', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1093', '5', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1094', '6', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1095', '7', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1096', '8', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1097', '9', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1098', '10', '201525060326张怡');
INSERT INTO `exercise` VALUES ('1099', '1', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1100', '2', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1101', '3', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1102', '4', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1103', '5', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1104', '8', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1105', '9', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1106', '10', '201525060327张跃辉');
INSERT INTO `exercise` VALUES ('1107', '1', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1108', '2', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1109', '3', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1110', '4', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1111', '5', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1112', '6', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1113', '7', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1114', '8', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1115', '9', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1116', '10', '201525060328郑佳慧');
INSERT INTO `exercise` VALUES ('1117', '1', '201525060328郑树琨');
INSERT INTO `exercise` VALUES ('1118', '2', '201525060328郑树琨');
INSERT INTO `exercise` VALUES ('1119', '3', '201525060328郑树琨');
INSERT INTO `exercise` VALUES ('1120', '1', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1121', '2', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1122', '3', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1123', '4', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1124', '5', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1125', '6', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1126', '7', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1127', '8', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1128', '9', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1129', '10', '201525060329钟裕宏');
INSERT INTO `exercise` VALUES ('1130', '1', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1131', '2', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1132', '3', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1133', '4', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1134', '5', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1135', '6', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1136', '7', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1137', '8', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1138', '9', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1139', '10', '201525060330庄友鑫');
INSERT INTO `exercise` VALUES ('1140', '1', '201526141614骆铭娟');
INSERT INTO `exercise` VALUES ('1141', '5', '201526141614骆铭娟');
INSERT INTO `exercise` VALUES ('1142', '10', '201526141614骆铭娟');
INSERT INTO `exercise` VALUES ('1143', '1', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1144', '2', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1145', '3', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1146', '4', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1147', '5', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1148', '6', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1149', '7', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1150', '8', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1151', '10', '201527010105陈俊伟');
INSERT INTO `exercise` VALUES ('1152', '1', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1153', '2', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1154', '3', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1155', '4', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1156', '5', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1157', '6', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1158', '7', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1159', '8', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1160', '10', '201527010106陈垠煌');
INSERT INTO `exercise` VALUES ('1161', '1', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1162', '2', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1163', '5', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1164', '6', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1165', '8', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1166', '10', '201527010107陈子豪');
INSERT INTO `exercise` VALUES ('1167', '1', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1168', '2', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1169', '3', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1170', '4', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1171', '6', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1172', '7', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1173', '9', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1174', '10', '201527010108何巧珠');
INSERT INTO `exercise` VALUES ('1175', '1', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1176', '2', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1177', '3', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1178', '4', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1179', '5', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1180', '6', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1181', '7', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1182', '8', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1183', '9', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1184', '10', '201527010109胡诗鑫');
INSERT INTO `exercise` VALUES ('1185', '1', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1186', '2', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1187', '3', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1188', '4', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1189', '5', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1190', '6', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1191', '9', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1192', '10', '201527010110胡志胜');
INSERT INTO `exercise` VALUES ('1193', '1', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1194', '2', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1195', '2', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1196', '3', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1197', '4', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1198', '5', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1199', '6', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1200', '7', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1201', '8', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1202', '9', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1203', '10', '201527010111黄汉文');
INSERT INTO `exercise` VALUES ('1204', '1', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1205', '2', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1206', '3', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1207', '4', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1208', '5', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1209', '6', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1210', '7', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1211', '8', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1212', '9', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1213', '10', '201527010113李烁');
INSERT INTO `exercise` VALUES ('1214', '1', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1215', '2', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1216', '3', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1217', '4', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1218', '5', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1219', '6', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1220', '7', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1221', '8', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1222', '9', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1223', '10', '201527010114李志钊');
INSERT INTO `exercise` VALUES ('1224', '1', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1225', '2', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1226', '3', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1227', '4', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1228', '6', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1229', '7', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1230', '8', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1231', '9', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1232', '10', '201527010115林梓标');
INSERT INTO `exercise` VALUES ('1233', '1', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1234', '2', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1235', '3', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1236', '4', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1237', '5', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1238', '6', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1239', '7', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1240', '8', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1241', '9', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1242', '10', '201527010116刘文隆');
INSERT INTO `exercise` VALUES ('1243', '1', '201527010117骆超');
INSERT INTO `exercise` VALUES ('1244', '2', '201527010117骆超');
INSERT INTO `exercise` VALUES ('1245', '10', '201527010117骆超');
INSERT INTO `exercise` VALUES ('1246', '1', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1247', '2', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1248', '3', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1249', '4', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1250', '5', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1251', '6', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1252', '7', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1253', '8', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1254', '9', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1255', '10', '201527010118丘楠');
INSERT INTO `exercise` VALUES ('1256', '1', '201527010119王嘉东');
INSERT INTO `exercise` VALUES ('1257', '3', '201527010119王嘉东');
INSERT INTO `exercise` VALUES ('1258', '4', '201527010119王嘉东');
INSERT INTO `exercise` VALUES ('1259', '6', '201527010119王嘉东');
INSERT INTO `exercise` VALUES ('1260', '10', '201527010119王嘉东');
INSERT INTO `exercise` VALUES ('1261', '1', '201527010120魏仰珩');
INSERT INTO `exercise` VALUES ('1262', '10', '201527010120魏仰珩');
INSERT INTO `exercise` VALUES ('1263', '1', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1264', '2', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1265', '3', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1266', '7', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1267', '8', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1268', '9', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1269', '10', '201527010121吴树展');
INSERT INTO `exercise` VALUES ('1270', '1', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1271', '2', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1272', '3', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1273', '4', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1274', '7', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1275', '8', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1276', '9', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1277', '10', '201527010122肖日曦');
INSERT INTO `exercise` VALUES ('1278', '1', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1279', '2', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1280', '3', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1281', '4', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1282', '5', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1283', '7', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1284', '8', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1285', '9', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1286', '10', '201527010123谢富安');
INSERT INTO `exercise` VALUES ('1287', '7', '201527010124谢树杰');
INSERT INTO `exercise` VALUES ('1288', '8', '201527010124谢树杰');
INSERT INTO `exercise` VALUES ('1289', '9', '201527010124谢树杰');
INSERT INTO `exercise` VALUES ('1290', '10', '201527010124谢树杰');
INSERT INTO `exercise` VALUES ('1291', '1', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1292', '2', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1293', '3', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1294', '5', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1295', '7', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1296', '10', '201527010125姚剑钊');
INSERT INTO `exercise` VALUES ('1297', '1', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1298', '2', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1299', '3', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1300', '4', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1301', '5', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1302', '6', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1303', '7', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1304', '9', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1305', '10', '201527010126余星豪');
INSERT INTO `exercise` VALUES ('1306', '1', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1307', '2', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1308', '3', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1309', '4', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1310', '5', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1311', '6', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1312', '7', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1313', '8', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1314', '10', '201527010127张永霖');
INSERT INTO `exercise` VALUES ('1315', '1', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1316', '2', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1317', '3', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1318', '4', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1319', '5', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1320', '6', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1321', '7', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1322', '8', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1323', '10', '201527010128钟锦豪');
INSERT INTO `exercise` VALUES ('1324', '1', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1325', '2', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1326', '3', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1327', '4', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1328', '5', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1329', '6', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1330', '7', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1331', '10', '201527010130庄楠');
INSERT INTO `exercise` VALUES ('1332', '1', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1333', '2', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1334', '3', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1335', '4', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1336', '5', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1337', '6', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1338', '7', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1339', '10', '201527010202陈海鹏');
INSERT INTO `exercise` VALUES ('1340', '1', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1341', '2', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1342', '3', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1343', '4', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1344', '5', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1345', '6', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1346', '7', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1347', '10', '201527010203陈嘉康');
INSERT INTO `exercise` VALUES ('1348', '1', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1349', '2', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1350', '3', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1351', '4', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1352', '6', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1353', '7', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1354', '9', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1355', '10', '201527010204陈键生');
INSERT INTO `exercise` VALUES ('1356', '1', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1357', '2', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1358', '4', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1359', '5', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1360', '6', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1361', '10', '201527010205陈俊全');
INSERT INTO `exercise` VALUES ('1362', '1', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1363', '2', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1364', '3', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1365', '7', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1366', '7', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1367', '9', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1368', '10', '201527010206陈露洁');
INSERT INTO `exercise` VALUES ('1369', '1', '201527010207陈泽鹏');
INSERT INTO `exercise` VALUES ('1370', '5', '201527010207陈泽鹏');
INSERT INTO `exercise` VALUES ('1371', '10', '201527010207陈泽鹏');
INSERT INTO `exercise` VALUES ('1372', '1', '201527010208陈展望');
INSERT INTO `exercise` VALUES ('1373', '1', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1374', '2', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1375', '3', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1376', '4', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1377', '5', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1378', '6', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1379', '7', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1380', '8', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1381', '10', '201527010209方兆彬');
INSERT INTO `exercise` VALUES ('1382', '1', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1383', '2', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1384', '3', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1385', '4', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1386', '5', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1387', '6', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1388', '7', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1389', '8', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1390', '9', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1391', '10', '201527010210郭树涵');
INSERT INTO `exercise` VALUES ('1392', '1', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1393', '2', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1394', '3', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1395', '4', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1396', '5', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1397', '6', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1398', '7', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1399', '8', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1400', '9', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1401', '10', '201527010212黄鑫辉');
INSERT INTO `exercise` VALUES ('1402', '1', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1403', '2', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1404', '3', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1405', '4', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1406', '5', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1407', '6', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1408', '7', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1409', '8', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1410', '10', '201527010214赖海威');
INSERT INTO `exercise` VALUES ('1411', '1', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1412', '2', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1413', '2', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1414', '3', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1415', '4', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1416', '5', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1417', '6', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1418', '7', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1419', '8', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1420', '9', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1421', '10', '201527010215李辉');
INSERT INTO `exercise` VALUES ('1422', '1', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1423', '2', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1424', '4', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1425', '5', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1426', '6', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1427', '7', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1428', '8', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1429', '9', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1430', '10', '201527010216梁城');
INSERT INTO `exercise` VALUES ('1431', '1', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1432', '2', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1433', '3', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1434', '4', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1435', '5', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1436', '6', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1437', '7', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1438', '8', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1439', '10', '201527010217凌华保');
INSERT INTO `exercise` VALUES ('1440', '1', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1441', '2', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1442', '3', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1443', '4', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1444', '4', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1445', '5', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1446', '6', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1447', '7', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1448', '8', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1449', '9', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1450', '10', '201527010218马晓鹏');
INSERT INTO `exercise` VALUES ('1451', '1', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1452', '2', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1453', '3', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1454', '4', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1455', '5', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1456', '6', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1457', '7', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1458', '8', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1459', '10', '201527010219麦声栩');
INSERT INTO `exercise` VALUES ('1460', '1', '201527010220沈英华');
INSERT INTO `exercise` VALUES ('1461', '2', '201527010220沈英华');
INSERT INTO `exercise` VALUES ('1462', '4', '201527010220沈英华');
INSERT INTO `exercise` VALUES ('1463', '5', '201527010220沈英华');
INSERT INTO `exercise` VALUES ('1464', '10', '201527010220沈英华');
INSERT INTO `exercise` VALUES ('1465', '1', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1466', '2', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1467', '3', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1468', '4', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1469', '5', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1470', '6', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1471', '7', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1472', '10', '201527010221唐继全');
INSERT INTO `exercise` VALUES ('1473', '1', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1474', '2', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1475', '3', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1476', '4', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1477', '5', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1478', '6', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1479', '7', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1480', '8', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1481', '9', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1482', '10', '201527010223吴东升');
INSERT INTO `exercise` VALUES ('1483', '1', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1484', '2', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1485', '3', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1486', '4', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1487', '5', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1488', '6', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1489', '7', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1490', '8', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1491', '9', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1492', '10', '201527010224吴嘉润');
INSERT INTO `exercise` VALUES ('1493', '1', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1494', '2', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1495', '3', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1496', '4', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1497', '6', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1498', '7', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1499', '9', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1500', '10', '201527010225吴杰威');
INSERT INTO `exercise` VALUES ('1501', '1', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1502', '2', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1503', '3', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1504', '4', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1505', '5', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1506', '6', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1507', '7', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1508', '8', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1509', '9', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1510', '10', '201527010226伍锦彬');
INSERT INTO `exercise` VALUES ('1511', '1', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1512', '2', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1513', '3', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1514', '4', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1515', '5', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1516', '6', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1517', '7', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1518', '8', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1519', '9', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1520', '10', '201527010227徐兆科');
INSERT INTO `exercise` VALUES ('1521', '1', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1522', '2', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1523', '3', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1524', '4', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1525', '6', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1526', '7', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1527', '8', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1528', '9', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1529', '10', '201527010228许晓佳');
INSERT INTO `exercise` VALUES ('1530', '1', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1531', '2', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1532', '3', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1533', '4', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1534', '5', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1535', '6', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1536', '7', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1537', '8', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1538', '9', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1539', '10', '201527010229袁罗秀');
INSERT INTO `exercise` VALUES ('1540', '8', '201527010230邹邦祺');
INSERT INTO `exercise` VALUES ('1541', '9', '201527010230邹邦祺');
INSERT INTO `exercise` VALUES ('1542', '10', '201527010230邹邦祺');
INSERT INTO `exercise` VALUES ('1543', '1', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1544', '2', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1545', '3', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1546', '4', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1547', '5', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1548', '6', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1549', '7', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1550', '9', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1551', '10', '201527010301陈健容');
INSERT INTO `exercise` VALUES ('1552', '1', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1553', '2', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1554', '3', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1555', '4', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1556', '5', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1557', '6', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1558', '7', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1559', '8', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1560', '9', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1561', '10', '201527010302陈子恒');
INSERT INTO `exercise` VALUES ('1562', '1', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1563', '2', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1564', '3', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1565', '4', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1566', '5', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1567', '6', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1568', '7', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1569', '8', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1570', '9', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1571', '10', '201527010303陈梓烽');
INSERT INTO `exercise` VALUES ('1572', '1', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1573', '4', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1574', '5', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1575', '6', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1576', '7', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1577', '8', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1578', '9', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1579', '10', '201527010305胡智俭');
INSERT INTO `exercise` VALUES ('1580', '1', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1581', '3', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1582', '4', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1583', '7', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1584', '8', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1585', '9', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1586', '10', '201527010306黄泓');
INSERT INTO `exercise` VALUES ('1587', '1', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1588', '2', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1589', '3', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1590', '4', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1591', '5', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1592', '6', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1593', '7', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1594', '8', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1595', '9', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1596', '10', '201527010307黄仁昌');
INSERT INTO `exercise` VALUES ('1597', '1', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1598', '3', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1599', '4', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1600', '5', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1601', '6', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1602', '7', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1603', '8', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1604', '10', '201527010308黄彦铭');
INSERT INTO `exercise` VALUES ('1605', '1', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1606', '2', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1607', '3', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1608', '3', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1609', '4', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1610', '5', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1611', '6', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1612', '7', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1613', '8', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1614', '10', '201527010309蓝翰乾');
INSERT INTO `exercise` VALUES ('1615', '1', '201527010310黎景存');
INSERT INTO `exercise` VALUES ('1616', '2', '201527010310黎景存');
INSERT INTO `exercise` VALUES ('1617', '3', '201527010310黎景存');
INSERT INTO `exercise` VALUES ('1618', '10', '201527010310黎景存');
INSERT INTO `exercise` VALUES ('1619', '1', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1620', '2', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1621', '3', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1622', '4', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1623', '5', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1624', '6', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1625', '7', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1626', '9', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1627', '10', '201527010312李彦孜');
INSERT INTO `exercise` VALUES ('1628', '1', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1629', '2', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1630', '3', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1631', '4', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1632', '5', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1633', '6', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1634', '7', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1635', '8', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1636', '9', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1637', '10', '201527010313林敬明');
INSERT INTO `exercise` VALUES ('1638', '1', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1639', '2', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1640', '3', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1641', '4', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1642', '5', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1643', '6', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1644', '7', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1645', '9', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1646', '10', '201527010314林泽欣');
INSERT INTO `exercise` VALUES ('1647', '1', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1648', '2', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1649', '3', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1650', '4', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1651', '5', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1652', '6', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1653', '7', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1654', '8', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1655', '9', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1656', '10', '201527010315刘伟浩');
INSERT INTO `exercise` VALUES ('1657', '1', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1658', '2', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1659', '3', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1660', '4', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1661', '5', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1662', '6', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1663', '7', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1664', '8', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1665', '9', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1666', '10', '201527010316刘泳锋');
INSERT INTO `exercise` VALUES ('1667', '1', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1668', '2', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1669', '3', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1670', '5', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1671', '6', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1672', '7', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1673', '8', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1674', '10', '201527010317刘远韬');
INSERT INTO `exercise` VALUES ('1675', '1', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1676', '2', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1677', '3', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1678', '4', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1679', '5', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1680', '6', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1681', '7', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1682', '8', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1683', '9', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1684', '10', '201527010318庞富文');
INSERT INTO `exercise` VALUES ('1685', '1', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1686', '2', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1687', '5', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1688', '7', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1689', '8', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1690', '9', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1691', '10', '201527010319佘壕镪');
INSERT INTO `exercise` VALUES ('1692', '1', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1693', '2', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1694', '3', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1695', '4', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1696', '5', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1697', '6', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1698', '7', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1699', '8', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1700', '9', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1701', '10', '201527010320史嘉业');
INSERT INTO `exercise` VALUES ('1702', '2', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1703', '2', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1704', '3', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1705', '5', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1706', '9', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1707', '10', '201527010321涂泽斌');
INSERT INTO `exercise` VALUES ('1708', '1', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1709', '2', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1710', '3', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1711', '4', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1712', '5', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1713', '6', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1714', '7', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1715', '8', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1716', '9', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1717', '10', '201527010322温宇君');
INSERT INTO `exercise` VALUES ('1718', '6', '201527010324吴培坚');
INSERT INTO `exercise` VALUES ('1719', '9', '201527010324吴培坚');
INSERT INTO `exercise` VALUES ('1720', '10', '201527010324吴培坚');
INSERT INTO `exercise` VALUES ('1721', '1', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1722', '4', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1723', '5', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1724', '6', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1725', '7', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1726', '8', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1727', '9', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1728', '10', '201527010325杨时权');
INSERT INTO `exercise` VALUES ('1729', '1', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1730', '5', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1731', '6', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1732', '7', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1733', '9', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1734', '10', '201527010326杨子坤');
INSERT INTO `exercise` VALUES ('1735', '1', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1736', '3', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1737', '4', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1738', '6', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1739', '7', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1740', '8', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1741', '9', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1742', '10', '201527010327姚永攸');
INSERT INTO `exercise` VALUES ('1743', '1', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1744', '2', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1745', '3', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1746', '4', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1747', '5', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1748', '6', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1749', '7', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1750', '8', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1751', '9', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1752', '10', '201527010328尹炫森');
INSERT INTO `exercise` VALUES ('1753', '1', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1754', '2', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1755', '3', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1756', '4', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1757', '5', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1758', '6', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1759', '7', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1760', '8', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1761', '9', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1762', '10', '201527010330周旭东');
INSERT INTO `exercise` VALUES ('1763', '1', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1764', '2', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1765', '3', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1766', '4', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1767', '5', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1768', '7', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1769', '9', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1770', '10', '201527010401蔡梦祥');
INSERT INTO `exercise` VALUES ('1771', '1', '201527010403岑梓荣');
INSERT INTO `exercise` VALUES ('1772', '9', '201527010403岑梓荣');
INSERT INTO `exercise` VALUES ('1773', '10', '201527010403岑梓荣');
INSERT INTO `exercise` VALUES ('1774', '1', '201527010405陈健豪');
INSERT INTO `exercise` VALUES ('1775', '4', '201527010405陈健豪');
INSERT INTO `exercise` VALUES ('1776', '9', '201527010405陈健豪');
INSERT INTO `exercise` VALUES ('1777', '10', '201527010405陈健豪');
INSERT INTO `exercise` VALUES ('1778', '1', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1779', '2', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1780', '3', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1781', '4', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1782', '5', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1783', '6', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1784', '7', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1785', '8', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1786', '9', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1787', '10', '201527010406陈蒙福');
INSERT INTO `exercise` VALUES ('1788', '1', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1789', '2', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1790', '3', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1791', '4', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1792', '6', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1793', '7', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1794', '8', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1795', '9', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1796', '10', '201527010407程蔚健');
INSERT INTO `exercise` VALUES ('1797', '1', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1798', '2', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1799', '3', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1800', '4', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1801', '5', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1802', '6', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1803', '7', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1804', '8', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1805', '9', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1806', '10', '201527010409黄宇翔');
INSERT INTO `exercise` VALUES ('1807', '1', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1808', '2', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1809', '3', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1810', '4', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1811', '5', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1812', '6', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1813', '7', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1814', '8', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1815', '9', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1816', '10', '201527010411李林慧');
INSERT INTO `exercise` VALUES ('1817', '1', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1818', '2', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1819', '3', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1820', '4', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1821', '5', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1822', '6', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1823', '7', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1824', '8', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1825', '9', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1826', '10', '201527010412李林森');
INSERT INTO `exercise` VALUES ('1827', '1', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1828', '2', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1829', '3', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1830', '4', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1831', '6', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1832', '7', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1833', '8', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1834', '9', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1835', '10', '201527010413李志彬');
INSERT INTO `exercise` VALUES ('1836', '1', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1837', '2', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1838', '3', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1839', '4', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1840', '5', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1841', '6', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1842', '7', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1843', '8', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1844', '9', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1845', '10', '201527010414刘炜铭');
INSERT INTO `exercise` VALUES ('1846', '1', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1847', '2', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1848', '3', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1849', '4', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1850', '5', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1851', '7', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1852', '8', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1853', '9', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1854', '10', '201527010417吕浩泰');
INSERT INTO `exercise` VALUES ('1855', '1', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1856', '2', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1857', '3', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1858', '4', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1859', '5', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1860', '6', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1861', '7', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1862', '9', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1863', '10', '201527010418裴佑达');
INSERT INTO `exercise` VALUES ('1864', '1', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1865', '2', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1866', '3', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1867', '4', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1868', '5', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1869', '6', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1870', '7', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1871', '8', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1872', '9', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1873', '10', '201527010419彭植豪');
INSERT INTO `exercise` VALUES ('1874', '1', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1875', '2', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1876', '3', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1877', '4', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1878', '5', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1879', '6', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1880', '7', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1881', '8', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1882', '9', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1883', '10', '201527010420苏武强');
INSERT INTO `exercise` VALUES ('1884', '1', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1885', '2', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1886', '3', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1887', '4', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1888', '4', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1889', '5', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1890', '6', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1891', '7', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1892', '8', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1893', '9', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1894', '10', '201527010421汪卓华');
INSERT INTO `exercise` VALUES ('1895', '1', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1896', '2', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1897', '3', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1898', '4', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1899', '5', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1900', '6', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1901', '7', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1902', '8', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1903', '9', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1904', '10', '201527010422吴梓铭');
INSERT INTO `exercise` VALUES ('1905', '1', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1906', '2', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1907', '3', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1908', '4', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1909', '5', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1910', '6', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1911', '7', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1912', '8', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1913', '9', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1914', '10', '201527010423肖榆涛');
INSERT INTO `exercise` VALUES ('1915', '1', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1916', '2', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1917', '3', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1918', '4', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1919', '4', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1920', '5', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1921', '6', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1922', '7', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1923', '8', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1924', '9', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1925', '10', '201527010424谢润东');
INSERT INTO `exercise` VALUES ('1926', '2', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1927', '3', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1928', '4', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1929', '7', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1930', '8', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1931', '9', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1932', '10', '201527010425叶士充');
INSERT INTO `exercise` VALUES ('1933', '1', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1934', '2', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1935', '3', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1936', '4', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1937', '5', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1938', '6', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1939', '7', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1940', '8', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1941', '9', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1942', '10', '201527010426袁柏荣');
INSERT INTO `exercise` VALUES ('1943', '2', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1944', '3', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1945', '4', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1946', '5', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1947', '6', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1948', '8', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1949', '9', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1950', '10', '201527010427詹前鑫');
INSERT INTO `exercise` VALUES ('1951', '1', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1952', '2', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1953', '3', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1954', '4', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1955', '5', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1956', '6', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1957', '7', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1958', '8', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1959', '9', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1960', '10', '201527010428张健驹');
INSERT INTO `exercise` VALUES ('1961', '1', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1962', '2', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1963', '3', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1964', '4', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1965', '5', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1966', '6', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1967', '7', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1968', '8', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1969', '9', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1970', '10', '201527010429张晓敏');
INSERT INTO `exercise` VALUES ('1971', '1', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1972', '4', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1973', '5', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1974', '6', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1975', '7', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1976', '10', '201527010430周文杰');
INSERT INTO `exercise` VALUES ('1977', '1', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1978', '2', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1979', '3', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1980', '4', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1981', '5', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1982', '6', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1983', '7', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1984', '8', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1985', '9', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1986', '10', '201527010501陈志豪');
INSERT INTO `exercise` VALUES ('1987', '1', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1988', '2', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1989', '3', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1990', '4', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1991', '5', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1992', '6', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1993', '7', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1994', '8', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1995', '9', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1996', '10', '201527010502杜海锋');
INSERT INTO `exercise` VALUES ('1997', '1', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('1998', '2', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('1999', '4', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2000', '5', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2001', '6', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2002', '7', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2003', '8', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2004', '9', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2005', '10', '201527010503胡伟豪');
INSERT INTO `exercise` VALUES ('2006', '1', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2007', '2', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2008', '3', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2009', '4', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2010', '5', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2011', '6', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2012', '7', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2013', '8', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2014', '9', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2015', '10', '201527010504华俊达');
INSERT INTO `exercise` VALUES ('2016', '1', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2017', '2', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2018', '3', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2019', '4', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2020', '5', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2021', '6', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2022', '7', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2023', '8', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2024', '9', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2025', '10', '201527010505黄焕鑫');
INSERT INTO `exercise` VALUES ('2026', '1', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2027', '2', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2028', '3', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2029', '4', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2030', '5', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2031', '6', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2032', '7', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2033', '8', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2034', '10', '201527010506李腾泳');
INSERT INTO `exercise` VALUES ('2035', '1', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2036', '2', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2037', '3', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2038', '4', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2039', '5', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2040', '6', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2041', '7', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2042', '8', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2043', '9', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2044', '10', '201527010507李增伟');
INSERT INTO `exercise` VALUES ('2045', '1', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2046', '2', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2047', '3', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2048', '7', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2049', '9', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2050', '10', '201527010508梁财华');
INSERT INTO `exercise` VALUES ('2051', '1', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2052', '3', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2053', '4', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2054', '5', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2055', '6', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2056', '7', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2057', '8', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2058', '9', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2059', '10', '201527010509刘晓毅');
INSERT INTO `exercise` VALUES ('2060', '10', '201527010510欧阳家裕');
INSERT INTO `exercise` VALUES ('2061', '1', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2062', '3', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2063', '4', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2064', '6', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2065', '7', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2066', '10', '201527010511阮威元');
INSERT INTO `exercise` VALUES ('2067', '1', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2068', '2', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2069', '3', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2070', '4', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2071', '6', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2072', '7', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2073', '8', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2074', '9', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2075', '10', '201527010512谭柱强');
INSERT INTO `exercise` VALUES ('2076', '1', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2077', '2', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2078', '3', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2079', '4', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2080', '5', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2081', '6', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2082', '7', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2083', '8', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2084', '9', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2085', '10', '201527010513翁佳林');
INSERT INTO `exercise` VALUES ('2086', '1', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2087', '2', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2088', '3', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2089', '4', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2090', '7', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2091', '8', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2092', '9', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2093', '10', '201527010514吴晗');
INSERT INTO `exercise` VALUES ('2094', '1', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2095', '2', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2096', '3', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2097', '6', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2098', '7', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2099', '9', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2100', '10', '201527010515吴均鹏');
INSERT INTO `exercise` VALUES ('2101', '1', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2102', '2', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2103', '3', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2104', '4', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2105', '6', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2106', '7', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2107', '8', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2108', '9', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2109', '10', '201527010516伍时宏');
INSERT INTO `exercise` VALUES ('2110', '1', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2111', '2', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2112', '3', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2113', '4', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2114', '5', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2115', '6', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2116', '7', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2117', '9', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2118', '10', '201527010517伍宇轩');
INSERT INTO `exercise` VALUES ('2119', '1', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2120', '2', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2121', '3', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2122', '4', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2123', '5', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2124', '6', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2125', '7', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2126', '8', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2127', '9', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2128', '10', '201527010518熊钦宇');
INSERT INTO `exercise` VALUES ('2129', '1', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2130', '2', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2131', '3', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2132', '4', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2133', '5', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2134', '6', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2135', '7', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2136', '8', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2137', '9', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2138', '10', '201527010519徐嘉兴');
INSERT INTO `exercise` VALUES ('2139', '1', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2140', '2', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2141', '3', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2142', '4', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2143', '5', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2144', '6', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2145', '7', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2146', '8', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2147', '9', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2148', '10', '201527010520杨泰星');
INSERT INTO `exercise` VALUES ('2149', '1', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2150', '2', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2151', '3', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2152', '4', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2153', '6', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2154', '7', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2155', '9', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2156', '10', '201527010521叶沛基');
INSERT INTO `exercise` VALUES ('2157', '1', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2158', '2', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2159', '3', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2160', '4', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2161', '5', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2162', '6', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2163', '7', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2164', '8', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2165', '9', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2166', '10', '201527010522袁晓如');
INSERT INTO `exercise` VALUES ('2167', '1', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2168', '2', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2169', '3', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2170', '4', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2171', '5', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2172', '6', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2173', '7', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2174', '8', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2175', '9', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2176', '10', '201527010523张嘉怡');
INSERT INTO `exercise` VALUES ('2177', '1', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2178', '2', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2179', '3', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2180', '4', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2181', '5', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2182', '6', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2183', '7', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2184', '8', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2185', '9', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2186', '10', '201527010524张树佳');
INSERT INTO `exercise` VALUES ('2187', '1', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2188', '2', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2189', '3', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2190', '4', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2191', '5', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2192', '6', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2193', '7', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2194', '8', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2195', '10', '201527010525张卓乔');
INSERT INTO `exercise` VALUES ('2196', '1', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2197', '2', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2198', '3', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2199', '4', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2200', '5', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2201', '6', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2202', '7', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2203', '8', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2204', '9', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2205', '10', '201527010526郑楚生');
INSERT INTO `exercise` VALUES ('2206', '1', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2207', '2', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2208', '3', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2209', '4', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2210', '5', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2211', '6', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2212', '7', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2213', '8', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2214', '9', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2215', '10', '201527010527郑玩星');
INSERT INTO `exercise` VALUES ('2216', '1', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2217', '2', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2218', '3', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2219', '4', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2220', '4', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2221', '5', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2222', '6', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2223', '7', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2224', '8', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2225', '9', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2226', '10', '201527010528钟政');
INSERT INTO `exercise` VALUES ('2227', '1', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2228', '2', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2229', '3', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2230', '4', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2231', '5', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2232', '6', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2233', '7', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2234', '8', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2235', '9', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2236', '10', '201527010529周锐聪');
INSERT INTO `exercise` VALUES ('2237', '1', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2238', '2', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2239', '3', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2240', '4', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2241', '5', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2242', '6', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2243', '7', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2244', '8', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2245', '9', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2246', '10', '201527010530卓锋');
INSERT INTO `exercise` VALUES ('2247', '1', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2248', '2', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2249', '3', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2250', '4', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2251', '5', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2252', '6', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2253', '7', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2254', '8', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2255', '9', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2256', '10', '201527010601陈凯平');
INSERT INTO `exercise` VALUES ('2257', '1', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2258', '2', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2259', '3', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2260', '4', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2261', '5', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2262', '6', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2263', '7', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2264', '8', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2265', '9', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2266', '10', '201527010602陈明成');
INSERT INTO `exercise` VALUES ('2267', '1', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2268', '2', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2269', '3', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2270', '4', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2271', '5', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2272', '6', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2273', '7', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2274', '8', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2275', '9', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2276', '10', '201527010603陈树沛');
INSERT INTO `exercise` VALUES ('2277', '1', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2278', '2', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2279', '3', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2280', '4', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2281', '5', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2282', '6', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2283', '7', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2284', '9', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2285', '10', '201527010604陈毓楠');
INSERT INTO `exercise` VALUES ('2286', '1', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2287', '2', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2288', '3', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2289', '4', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2290', '6', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2291', '7', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2292', '9', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2293', '10', '201527010605邓敬权');
INSERT INTO `exercise` VALUES ('2294', '1', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2295', '2', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2296', '3', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2297', '4', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2298', '6', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2299', '7', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2300', '9', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2301', '10', '201527010606佃锐彬');
INSERT INTO `exercise` VALUES ('2302', '1', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2303', '2', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2304', '3', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2305', '4', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2306', '5', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2307', '6', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2308', '7', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2309', '8', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2310', '9', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2311', '10', '201527010608黄景祥');
INSERT INTO `exercise` VALUES ('2312', '1', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2313', '2', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2314', '3', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2315', '4', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2316', '5', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2317', '6', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2318', '7', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2319', '8', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2320', '9', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2321', '10', '201527010609黄彦荣');
INSERT INTO `exercise` VALUES ('2322', '1', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2323', '2', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2324', '3', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2325', '4', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2326', '5', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2327', '6', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2328', '7', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2329', '8', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2330', '9', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2331', '10', '201527010610蓝向奔');
INSERT INTO `exercise` VALUES ('2332', '1', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2333', '2', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2334', '3', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2335', '4', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2336', '5', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2337', '6', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2338', '7', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2339', '9', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2340', '10', '201527010611黎恩恒');
INSERT INTO `exercise` VALUES ('2341', '1', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2342', '2', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2343', '3', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2344', '4', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2345', '4', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2346', '5', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2347', '6', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2348', '7', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2349', '8', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2350', '9', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2351', '10', '201527010612李宪恩');
INSERT INTO `exercise` VALUES ('2352', '1', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2353', '2', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2354', '3', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2355', '4', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2356', '5', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2357', '6', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2358', '7', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2359', '8', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2360', '9', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2361', '10', '201527010613李志刚');
INSERT INTO `exercise` VALUES ('2362', '1', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2363', '2', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2364', '3', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2365', '4', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2366', '5', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2367', '6', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2368', '7', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2369', '9', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2370', '10', '201527010614梁筠欣');
INSERT INTO `exercise` VALUES ('2371', '1', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2372', '2', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2373', '3', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2374', '4', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2375', '5', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2376', '6', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2377', '7', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2378', '8', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2379', '10', '201527010615梁倬彬');
INSERT INTO `exercise` VALUES ('2380', '9', '201527010615梁倬九');
INSERT INTO `exercise` VALUES ('2381', '1', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2382', '2', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2383', '3', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2384', '4', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2385', '5', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2386', '6', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2387', '7', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2388', '8', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2389', '9', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2390', '10', '201527010616廖志荣');
INSERT INTO `exercise` VALUES ('2391', '1', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2392', '2', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2393', '3', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2394', '4', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2395', '5', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2396', '6', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2397', '7', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2398', '8', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2399', '9', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2400', '10', '201527010617林宇强');
INSERT INTO `exercise` VALUES ('2401', '1', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2402', '2', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2403', '3', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2404', '4', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2405', '5', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2406', '6', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2407', '7', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2408', '8', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2409', '9', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2410', '10', '201527010618卢浩键');
INSERT INTO `exercise` VALUES ('2411', '1', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2412', '2', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2413', '3', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2414', '4', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2415', '5', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2416', '6', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2417', '7', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2418', '8', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2419', '9', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2420', '10', '201527010619欧嘉俊');
INSERT INTO `exercise` VALUES ('2421', '1', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2422', '2', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2423', '3', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2424', '4', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2425', '5', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2426', '6', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2427', '7', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2428', '10', '201527010620潘浩畅');
INSERT INTO `exercise` VALUES ('2429', '1', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2430', '2', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2431', '3', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2432', '4', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2433', '5', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2434', '6', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2435', '7', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2436', '8', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2437', '9', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2438', '10', '201527010621巫华颖');
INSERT INTO `exercise` VALUES ('2439', '1', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2440', '2', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2441', '3', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2442', '4', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2443', '5', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2444', '6', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2445', '7', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2446', '9', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2447', '10', '201527010622姚家勋');
INSERT INTO `exercise` VALUES ('2448', '1', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2449', '2', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2450', '3', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2451', '4', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2452', '7', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2453', '8', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2454', '9', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2455', '10', '201527010623余志毅');
INSERT INTO `exercise` VALUES ('2456', '1', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2457', '2', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2458', '3', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2459', '4', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2460', '5', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2461', '6', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2462', '7', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2463', '8', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2464', '9', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2465', '10', '201527010624张丹萍');
INSERT INTO `exercise` VALUES ('2466', '1', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2467', '2', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2468', '3', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2469', '4', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2470', '5', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2471', '6', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2472', '7', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2473', '8', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2474', '9', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2475', '10', '201527010625郑海松');
INSERT INTO `exercise` VALUES ('2476', '1', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2477', '2', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2478', '3', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2479', '4', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2480', '5', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2481', '6', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2482', '7', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2483', '8', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2484', '9', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2485', '10', '201527010626郑俊森');
INSERT INTO `exercise` VALUES ('2486', '1', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2487', '2', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2488', '3', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2489', '4', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2490', '5', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2491', '6', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2492', '7', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2493', '9', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2494', '10', '201527010627郑钦瀚');
INSERT INTO `exercise` VALUES ('2495', '1', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2496', '2', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2497', '3', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2498', '4', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2499', '5', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2500', '6', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2501', '7', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2502', '9', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2503', '10', '201527010628郑卫凯');
INSERT INTO `exercise` VALUES ('2504', '1', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2505', '2', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2506', '3', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2507', '4', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2508', '5', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2509', '6', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2510', '7', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2511', '9', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2512', '10', '201527010629朱杰夫');
INSERT INTO `exercise` VALUES ('2513', '1', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2514', '2', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2515', '3', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2516', '4', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2517', '5', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2518', '6', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2519', '7', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2520', '9', '201527010630朱力恒');
INSERT INTO `exercise` VALUES ('2521', '10', '201527010630朱力恒');

-- ----------------------------
-- Table structure for housecertificate
-- ----------------------------
DROP TABLE IF EXISTS `housecertificate`;
CREATE TABLE `housecertificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `depart` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `depart` (`depart`),
  CONSTRAINT `housecertificate_ibfk_1` FOREIGN KEY (`depart`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housecertificate
-- ----------------------------
INSERT INTO `housecertificate` VALUES ('2', '258', '番禺', '4');

-- ----------------------------
-- Table structure for idcard
-- ----------------------------
DROP TABLE IF EXISTS `idcard`;
CREATE TABLE `idcard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `student` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student` (`student`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idcard
-- ----------------------------
INSERT INTO `idcard` VALUES ('1', '441823', '清远', '2017-03-01', '3');

-- ----------------------------
-- Table structure for idcard2student
-- ----------------------------
DROP TABLE IF EXISTS `idcard2student`;
CREATE TABLE `idcard2student` (
  `idcard` bigint(20) NOT NULL COMMENT '一对一的关系',
  `student` bigint(20) NOT NULL,
  PRIMARY KEY (`idcard`,`student`),
  UNIQUE KEY `student` (`student`) USING BTREE,
  UNIQUE KEY `idcard` (`idcard`),
  CONSTRAINT `idcard2student_ibfk_1` FOREIGN KEY (`idcard`) REFERENCES `idcard` (`id`),
  CONSTRAINT `idcard2student_ibfk_2` FOREIGN KEY (`student`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idcard2student
-- ----------------------------
INSERT INTO `idcard2student` VALUES ('1', '4');

-- ----------------------------
-- Table structure for man
-- ----------------------------
DROP TABLE IF EXISTS `man`;
CREATE TABLE `man` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `spouse` bigint(20) DEFAULT NULL,
  `father` bigint(20) DEFAULT NULL,
  `mother` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spouse` (`spouse`),
  KEY `father` (`father`),
  KEY `mother` (`mother`),
  CONSTRAINT `man_ibfk_1` FOREIGN KEY (`spouse`) REFERENCES `woman` (`id`),
  CONSTRAINT `man_ibfk_2` FOREIGN KEY (`father`) REFERENCES `man` (`id`),
  CONSTRAINT `man_ibfk_3` FOREIGN KEY (`mother`) REFERENCES `woman` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of man
-- ----------------------------
INSERT INTO `man` VALUES ('1', '贝克汉姆', '1', '4', '3');
INSERT INTO `man` VALUES ('2', '迈克尔乔丹', null, null, null);
INSERT INTO `man` VALUES ('3', 'C罗', null, null, null);
INSERT INTO `man` VALUES ('4', '贝克汉姆的爸爸', '3', null, null);
INSERT INTO `man` VALUES ('5', '维多利亚的爸爸', '4', null, null);
INSERT INTO `man` VALUES ('6', '中文', '1', '1', '1');
INSERT INTO `man` VALUES ('7', '中文', '1', '1', '1');
INSERT INTO `man` VALUES ('8', 'Strangle', null, null, null);
INSERT INTO `man` VALUES ('9', '?????', null, null, null);

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
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', '信息南楼510');
INSERT INTO `room` VALUES ('2', '教三302');
INSERT INTO `room` VALUES ('3', '启林S501');
INSERT INTO `room` VALUES ('6', '风雨体育馆');

-- ----------------------------
-- Table structure for room2device
-- ----------------------------
DROP TABLE IF EXISTS `room2device`;
CREATE TABLE `room2device` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT '请添加一个名词',
  `room` bigint(20) NOT NULL,
  `device` bigint(20) NOT NULL,
  PRIMARY KEY (`room`,`device`),
  UNIQUE KEY `id` (`id`),
  KEY `teacher` (`device`),
  KEY `book` (`room`),
  CONSTRAINT `room2device_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`id`),
  CONSTRAINT `room2device_ibfk_2` FOREIGN KEY (`device`) REFERENCES `device` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room2device
-- ----------------------------
INSERT INTO `room2device` VALUES ('0', null, '1', '5');

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
INSERT INTO `student` VALUES ('4', '刘仕晓');
INSERT INTO `student` VALUES ('2', '叶愉君');
INSERT INTO `student` VALUES ('101', '巴乔');
INSERT INTO `student` VALUES ('100', '牛顿');
INSERT INTO `student` VALUES ('5', '许大可');
INSERT INTO `student` VALUES ('3', '许骁驹');
INSERT INTO `student` VALUES ('1', '邓丽君');
INSERT INTO `student` VALUES ('6', '马拉多拉');

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
INSERT INTO `teacher` VALUES ('52', '严尚维', '10', '51');
INSERT INTO `teacher` VALUES ('53', '张义青', '10', '51');
INSERT INTO `teacher` VALUES ('55', '郑婵', '10', '51');

-- ----------------------------
-- Table structure for woman
-- ----------------------------
DROP TABLE IF EXISTS `woman`;
CREATE TABLE `woman` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `spouse` bigint(255) DEFAULT NULL,
  `father` bigint(20) DEFAULT NULL,
  `mother` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spouse` (`spouse`),
  KEY `chaser` (`father`),
  KEY `mother` (`mother`),
  CONSTRAINT `woman_ibfk_1` FOREIGN KEY (`spouse`) REFERENCES `man` (`id`),
  CONSTRAINT `woman_ibfk_2` FOREIGN KEY (`father`) REFERENCES `man` (`id`),
  CONSTRAINT `woman_ibfk_3` FOREIGN KEY (`mother`) REFERENCES `woman` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of woman
-- ----------------------------
INSERT INTO `woman` VALUES ('1', '维多利亚', '1', '5', '4');
INSERT INTO `woman` VALUES ('2', '詹妮弗', null, '1', null);
INSERT INTO `woman` VALUES ('3', '贝克汉姆的妈妈', '4', null, null);
INSERT INTO `woman` VALUES ('4', '维多利亚的妈妈', '5', null, null);
