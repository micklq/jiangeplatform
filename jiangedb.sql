/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50713
Source Host           : 127.0.0.1:3306
Source Database       : jiangedb

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-07-17 18:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_manage
-- ----------------------------
DROP TABLE IF EXISTS `area_manage`;
CREATE TABLE `area_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `contactpoint_id` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_manage
-- ----------------------------
INSERT INTO `area_manage` VALUES ('1', '2016-07-15 23:38:06', null, null, '2016-07-15 23:38:06', '3', '下寺片区');
INSERT INTO `area_manage` VALUES ('2', '2016-07-15 23:38:25', null, null, '2016-07-15 23:38:25', '5', '城北片区');
INSERT INTO `area_manage` VALUES ('3', '2016-07-15 23:38:37', null, null, '2016-07-15 23:38:37', '7', '柳沟片区');
INSERT INTO `area_manage` VALUES ('4', '2016-07-15 23:38:48', null, null, '2016-07-15 23:38:48', '8', '武连片区');
INSERT INTO `area_manage` VALUES ('5', '2016-07-15 23:39:00', null, null, '2016-07-15 23:39:00', '10', '开封片区');
INSERT INTO `area_manage` VALUES ('6', '2016-07-15 23:39:12', null, null, '2016-07-15 23:39:12', '11', '元山片区');
INSERT INTO `area_manage` VALUES ('7', '2016-07-15 23:39:25', null, null, '2016-07-15 23:39:25', '14', '公兴片区');
INSERT INTO `area_manage` VALUES ('8', '2016-07-15 23:39:37', null, null, '2016-07-15 23:39:37', '17', '白龙片区');
INSERT INTO `area_manage` VALUES ('9', '2016-07-15 23:39:52', null, null, '2016-07-15 23:39:52', '18', '鹤龄片区');
INSERT INTO `area_manage` VALUES ('10', '2016-07-15 23:40:15', null, null, '2016-07-15 23:40:15', '21', '江口片区');

-- ----------------------------
-- Table structure for caring_people
-- ----------------------------
DROP TABLE IF EXISTS `caring_people`;
CREATE TABLE `caring_people` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `guardian_mobile` varchar(255) DEFAULT NULL,
  `is_violence_tendency` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `others` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caring_people
-- ----------------------------

-- ----------------------------
-- Table structure for caring_people_category
-- ----------------------------
DROP TABLE IF EXISTS `caring_people_category`;
CREATE TABLE `caring_people_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(100) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caring_people_category
-- ----------------------------

-- ----------------------------
-- Table structure for contact_point_schedule
-- ----------------------------
DROP TABLE IF EXISTS `contact_point_schedule`;
CREATE TABLE `contact_point_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `areaid` bigint(20) DEFAULT NULL,
  `leadid` bigint(20) DEFAULT NULL,
  `officeid` bigint(20) DEFAULT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_point_schedule
-- ----------------------------
INSERT INTO `contact_point_schedule` VALUES ('1', '2016-07-15 23:50:19', null, null, '2016-07-15 23:50:19', '1', '4', '4', '9', '每月16日');
INSERT INTO `contact_point_schedule` VALUES ('2', '2016-07-15 23:51:07', null, null, '2016-07-15 23:51:07', '2', '6', '6', '2', '每月16日');

-- ----------------------------
-- Table structure for county
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(100) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county
-- ----------------------------
INSERT INTO `county` VALUES ('1', '2016-06-26 09:36:44', null, null, '2016-06-26 09:36:44', '剑阁县', '剑阁县', '0');
INSERT INTO `county` VALUES ('2', '2016-06-26 17:34:06', null, null, '2016-06-26 17:34:06', '普安镇', '普安镇', '1');
INSERT INTO `county` VALUES ('3', '2016-06-26 17:34:28', null, null, '2016-06-26 17:34:28', '下寺镇', '下寺镇', '1');
INSERT INTO `county` VALUES ('4', '2016-06-26 17:34:46', null, null, '2016-06-26 17:34:46', '龙源镇', '龙源镇', '1');
INSERT INTO `county` VALUES ('5', '2016-06-26 17:34:58', null, null, '2016-06-26 17:34:58', '城北镇', '城北镇', '1');
INSERT INTO `county` VALUES ('6', '2016-06-26 17:35:11', null, null, '2016-06-26 17:35:11', '盐店镇', '盐店镇', '1');
INSERT INTO `county` VALUES ('7', '2016-06-26 17:35:23', null, null, '2016-06-26 17:35:23', '柳沟镇', '柳沟镇', '1');
INSERT INTO `county` VALUES ('8', '2016-06-26 17:35:41', null, null, '2016-06-26 17:35:41', '武连镇', '武连镇', '1');
INSERT INTO `county` VALUES ('9', '2016-06-26 17:35:51', null, null, '2016-06-26 17:35:51', '东宝镇', '东宝镇', '1');
INSERT INTO `county` VALUES ('10', '2016-06-26 17:36:03', null, null, '2016-06-26 17:36:03', '开封镇', '开封镇', '1');
INSERT INTO `county` VALUES ('11', '2016-06-26 17:36:14', null, null, '2016-06-26 17:36:14', '元山镇', '元山镇', '1');
INSERT INTO `county` VALUES ('12', '2016-06-26 18:19:03', null, null, '2016-06-26 18:19:03', '演圣镇', '演圣镇', '1');
INSERT INTO `county` VALUES ('13', '2016-06-26 18:19:53', null, null, '2016-06-26 18:19:53', '王河镇', '王河镇', '1');
INSERT INTO `county` VALUES ('14', '2016-06-26 18:20:21', null, null, '2016-06-26 18:20:21', '公兴镇', '公兴镇', '1');
INSERT INTO `county` VALUES ('15', '2016-06-26 18:20:41', null, null, '2016-06-26 18:20:41', '金仙镇', '金仙镇', '1');
INSERT INTO `county` VALUES ('16', '2016-06-26 18:20:52', null, null, '2016-06-26 18:20:52', '香沉镇', '香沉镇', '1');
INSERT INTO `county` VALUES ('17', '2016-06-26 18:21:01', null, null, '2016-06-26 18:21:01', '白龙镇', '白龙镇', '1');
INSERT INTO `county` VALUES ('18', '2016-06-26 18:21:11', null, null, '2016-06-26 18:21:11', '鹤龄镇', '鹤龄镇', '1');
INSERT INTO `county` VALUES ('19', '2016-06-26 18:21:22', null, null, '2016-06-26 18:21:22', '杨村镇', '杨村镇', '1');
INSERT INTO `county` VALUES ('20', '2016-06-26 18:21:31', null, null, '2016-06-26 18:21:31', '羊岭镇', '羊岭镇', '1');
INSERT INTO `county` VALUES ('21', '2016-06-26 18:21:45', null, null, '2016-06-26 18:21:45', '江口镇', '江口镇', '1');
INSERT INTO `county` VALUES ('22', '2016-06-26 18:21:53', null, null, '2016-06-26 18:21:53', '木马镇', '木马镇', '1');
INSERT INTO `county` VALUES ('23', '2016-06-26 18:22:01', null, null, '2016-06-26 18:22:01', '剑门关镇', '剑门关镇', '1');
INSERT INTO `county` VALUES ('24', '2016-06-26 18:22:22', null, null, '2016-06-26 18:22:22', '汉阳镇', '汉阳镇', '1');
INSERT INTO `county` VALUES ('25', '2016-06-26 18:23:01', null, null, '2016-06-26 18:23:01', '江石乡', '江石乡', '1');
INSERT INTO `county` VALUES ('26', '2016-06-26 18:23:09', null, null, '2016-06-26 18:23:09', '田家乡', '田家乡', '1');
INSERT INTO `county` VALUES ('27', '2016-06-26 18:23:17', null, null, '2016-06-26 18:23:17', '闻溪乡', '闻溪乡', '1');
INSERT INTO `county` VALUES ('28', '2016-06-26 18:23:25', null, null, '2016-06-26 18:23:25', '姚家乡', '姚家乡', '1');
INSERT INTO `county` VALUES ('29', '2016-06-26 18:23:33', null, null, '2016-06-26 18:23:33', '北庙乡', '北庙乡', '1');
INSERT INTO `county` VALUES ('30', '2016-06-26 18:23:41', null, null, '2016-06-26 18:23:41', '西庙乡', '西庙乡', '1');
INSERT INTO `county` VALUES ('31', '2016-06-26 18:23:51', null, null, '2016-06-26 18:23:51', '义兴乡', '义兴乡', '1');
INSERT INTO `county` VALUES ('32', '2016-06-26 18:23:59', null, null, '2016-06-26 18:23:59', '毛坝乡', '毛坝乡', '1');
INSERT INTO `county` VALUES ('33', '2016-06-26 18:24:06', null, null, '2016-06-26 18:24:06', '凉山乡', '凉山乡', '1');
INSERT INTO `county` VALUES ('34', '2016-06-26 18:24:19', null, null, '2016-06-26 18:24:19', '垂泉乡', '垂泉乡', '1');
INSERT INTO `county` VALUES ('35', '2016-06-26 18:24:28', null, null, '2016-06-26 18:24:28', '秀钟乡', '秀钟乡', '1');
INSERT INTO `county` VALUES ('36', '2016-06-26 18:24:36', null, null, '2016-06-26 18:24:36', '正兴乡', '正兴乡', '1');
INSERT INTO `county` VALUES ('37', '2016-06-26 18:24:44', null, null, '2016-06-26 18:24:44', '马灯乡', '马灯乡', '1');
INSERT INTO `county` VALUES ('38', '2016-06-26 18:24:52', null, null, '2016-06-26 18:24:52', '高池乡', '高池乡', '1');
INSERT INTO `county` VALUES ('39', '2016-06-26 18:25:00', null, null, '2016-06-26 18:25:00', '碗泉乡', '碗泉乡', '1');
INSERT INTO `county` VALUES ('40', '2016-06-26 18:25:09', null, null, '2016-06-26 18:25:09', '迎水乡', '迎水乡', '1');
INSERT INTO `county` VALUES ('41', '2016-06-26 18:25:16', null, null, '2016-06-26 18:25:16', '国光乡', '国光乡', '1');
INSERT INTO `county` VALUES ('42', '2016-06-26 18:25:26', null, null, '2016-06-26 18:25:26', '柘坝乡', '柘坝乡', '1');
INSERT INTO `county` VALUES ('43', '2016-06-26 18:25:34', null, null, '2016-06-26 18:25:34', '公店乡', '公店乡', '1');
INSERT INTO `county` VALUES ('44', '2016-06-26 18:25:44', null, null, '2016-06-26 18:25:44', '吼狮乡', '吼狮乡', '1');
INSERT INTO `county` VALUES ('45', '2016-06-26 18:25:51', null, null, '2016-06-26 18:25:51', '长岭乡', '长岭乡', '1');
INSERT INTO `county` VALUES ('46', '2016-06-26 18:26:00', null, null, '2016-06-26 18:26:00', '涂山乡', '涂山乡', '1');
INSERT INTO `county` VALUES ('47', '2016-06-26 18:26:08', null, null, '2016-06-26 18:26:08', '圈龙乡', '圈龙乡', '1');
INSERT INTO `county` VALUES ('48', '2016-06-26 18:26:17', null, null, '2016-06-26 18:26:17', '碑垭乡', '碑垭乡', '1');
INSERT INTO `county` VALUES ('49', '2016-06-26 18:26:24', null, null, '2016-06-26 18:26:24', '广坪乡', '广坪乡', '1');
INSERT INTO `county` VALUES ('50', '2016-06-26 18:26:31', null, null, '2016-06-26 18:26:31', '禾丰乡', '禾丰乡', '1');
INSERT INTO `county` VALUES ('51', '2016-06-26 18:26:38', null, null, '2016-06-26 18:26:38', '店子乡', '店子乡', '1');
INSERT INTO `county` VALUES ('52', '2016-06-26 18:26:45', null, null, '2016-06-26 18:26:45', '摇铃乡', '摇铃乡', '1');
INSERT INTO `county` VALUES ('53', '2016-06-26 18:26:54', null, null, '2016-06-26 18:26:54', '樵店乡', '樵店乡', '1');
INSERT INTO `county` VALUES ('54', '2016-06-26 18:27:02', null, null, '2016-06-26 18:27:02', '锦屏乡', '锦屏乡', '1');
INSERT INTO `county` VALUES ('55', '2016-06-26 18:27:10', null, null, '2016-06-26 18:27:10', '柏垭乡', '柏垭乡', '1');
INSERT INTO `county` VALUES ('56', '2016-06-26 18:27:17', null, null, '2016-06-26 18:27:17', '高观乡', '高观乡', '1');
INSERT INTO `county` VALUES ('57', '2016-06-26 18:27:25', null, null, '2016-06-26 18:27:25', '张王乡', '张王乡', '1');
INSERT INTO `county` VALUES ('58', '2016-07-15 23:33:04', null, null, '2016-07-15 23:33:05', '上寺乡', '上寺乡', '1');

-- ----------------------------
-- Table structure for first_network
-- ----------------------------
DROP TABLE IF EXISTS `first_network`;
CREATE TABLE `first_network` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(150) DEFAULT NULL,
  `officeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_network
-- ----------------------------
INSERT INTO `first_network` VALUES ('1', '2016-07-15 23:23:36', null, null, '2016-07-15 23:23:36', '院党组', '1');

-- ----------------------------
-- Table structure for group_manage
-- ----------------------------
DROP TABLE IF EXISTS `group_manage`;
CREATE TABLE `group_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(100) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_manage
-- ----------------------------
INSERT INTO `group_manage` VALUES ('1', '2016-07-17 15:37:29', null, null, '2016-07-17 15:37:29', '设站建站聘员联户民生检察实施网格化社会管理服务工作领导下组', '网络化管理小组', '0');
INSERT INTO `group_manage` VALUES ('2', '2016-07-15 23:05:22', null, null, '2016-07-15 23:05:22', '组长', '组长', '1');
INSERT INTO `group_manage` VALUES ('3', '2016-07-15 23:05:47', null, null, '2016-07-15 23:05:47', '副组长', '副组长', '1');
INSERT INTO `group_manage` VALUES ('4', '2016-07-15 23:06:17', null, null, '2016-07-15 23:06:17', '成员', '成员', '1');

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `groupid` bigint(20) DEFAULT NULL,
  `grouptitleid` bigint(20) DEFAULT NULL,
  `officeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_member
-- ----------------------------
INSERT INTO `group_member` VALUES ('1', '2016-07-17 18:32:09', null, null, '2016-07-17 18:32:09', '1', '2', '1');
INSERT INTO `group_member` VALUES ('2', '2016-07-17 18:32:26', null, null, '2016-07-17 18:32:26', '1', '3', '2');
INSERT INTO `group_member` VALUES ('3', '2016-07-17 18:32:37', null, null, '2016-07-17 18:32:37', '1', '3', '3');

-- ----------------------------
-- Table structure for letter_petition
-- ----------------------------
DROP TABLE IF EXISTS `letter_petition`;
CREATE TABLE `letter_petition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `eventtime` varchar(255) DEFAULT NULL,
  `location` longtext,
  `name` varchar(255) DEFAULT NULL,
  `username` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter_petition
-- ----------------------------

-- ----------------------------
-- Table structure for letter_reply
-- ----------------------------
DROP TABLE IF EXISTS `letter_reply`;
CREATE TABLE `letter_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `letterid` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `replyuserid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter_reply
-- ----------------------------

-- ----------------------------
-- Table structure for officeuser
-- ----------------------------
DROP TABLE IF EXISTS `officeuser`;
CREATE TABLE `officeuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  `others` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of officeuser
-- ----------------------------
INSERT INTO `officeuser` VALUES ('1', '2016-07-15 22:20:39', null, null, '2016-07-15 22:20:39', '18800000000@qq.com', '男', '董升礼', '1', '党组书记', '18800000000', '1');
INSERT INTO `officeuser` VALUES ('2', '2016-07-15 22:37:32', null, null, '2016-07-15 22:37:32', '1888888@qq.com', '男', '范祖波', '1', '党组成员', '18800000000', '2');
INSERT INTO `officeuser` VALUES ('3', '2016-07-15 22:38:06', null, null, '2016-07-15 22:38:06', '1888888@qq.com', '男', '左斌周', '1', '党组成员', '18800000000', '2');
INSERT INTO `officeuser` VALUES ('4', '2016-07-15 22:38:38', null, null, '2016-07-15 22:38:38', '1888888@qq.com', '男', '王斌', '1', '党组成员', '18800000000', '2');
INSERT INTO `officeuser` VALUES ('5', '2016-07-15 22:39:40', null, null, '2016-07-15 22:39:40', '1888888@qq.com', '男', '王洪道', '1', '党组成员', '18800000000', '5');
INSERT INTO `officeuser` VALUES ('6', '2016-07-15 22:40:24', null, null, '2016-07-15 22:40:24', '1888888@qq.com', '女', '黄莉', '2', '党组成员', '18800000000', '6');
INSERT INTO `officeuser` VALUES ('7', '2016-07-15 22:41:00', null, null, '2016-07-15 22:41:00', '1888888@qq.com', '男', '任建勇', '3', '党组成员', '18800000000', '4');
INSERT INTO `officeuser` VALUES ('8', '2016-07-15 22:41:47', null, null, '2016-07-15 22:41:47', '1888888@qq.com', '男', '何军', '4', '党组成员', '18800000000', '4');
INSERT INTO `officeuser` VALUES ('9', '2016-07-15 22:42:23', null, null, '2016-07-15 22:42:23', '1888888@qq.com', '男', '兰春辉', '5', '党组成员', '18800000000', '3');
INSERT INTO `officeuser` VALUES ('10', '2016-07-15 22:43:13', null, null, '2016-07-15 22:43:14', '1888888@qq.com', '男', '何智成', '6', '无', '18800000000', '10');
INSERT INTO `officeuser` VALUES ('11', '2016-07-15 22:43:59', null, null, '2016-07-15 22:43:59', '1888888@qq.com', '男', '王玮', '7', '无', '18800000000', '9');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `module_type` varchar(255) DEFAULT NULL,
  `objectid` varchar(255) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL,
  `oper_type` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `req_type` varchar(255) DEFAULT NULL,
  `req_url` varchar(255) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('1', '2016-07-15 21:39:17', null, null, '2016-07-15 21:39:17', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('2', '2016-07-15 21:41:42', null, null, '2016-07-15 21:41:42', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('3', '2016-07-15 21:57:36', null, null, '2016-07-15 21:57:36', '添加County', 'jiange_admin', '1', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('4', '2016-07-15 21:57:36', null, null, '2016-07-15 21:57:36', '{name=是是是,description=ddd,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('5', '2016-07-15 22:02:24', null, null, '2016-07-15 22:02:24', '添加Organization', 'jiange_admin', '1', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6', '2016-07-15 22:02:24', null, null, '2016-07-15 22:02:24', '{name=sss,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('7', '2016-07-15 22:05:17', null, null, '2016-07-15 22:05:17', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('8', '2016-07-15 22:05:37', null, null, '2016-07-15 22:05:37', '更新Organization', 'jiange_admin', '1', 'Organization', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('9', '2016-07-15 22:05:37', null, null, '2016-07-15 22:05:37', '{name=检察院,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('10', '2016-07-15 22:05:57', null, null, '2016-07-15 22:05:57', '添加Organization', 'jiange_admin', '2', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('11', '2016-07-15 22:05:57', null, null, '2016-07-15 22:05:57', '{name=政治处,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('12', '2016-07-15 22:06:08', null, null, '2016-07-15 22:06:08', '添加Organization', 'jiange_admin', '3', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('13', '2016-07-15 22:06:08', null, null, '2016-07-15 22:06:08', '{name=反贪局,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('14', '2016-07-15 22:06:18', null, null, '2016-07-15 22:06:18', '添加Organization', 'jiange_admin', '4', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('15', '2016-07-15 22:06:18', null, null, '2016-07-15 22:06:18', '{name=反渎局,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('16', '2016-07-15 22:06:28', null, null, '2016-07-15 22:06:28', '添加Organization', 'jiange_admin', '5', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('17', '2016-07-15 22:06:28', null, null, '2016-07-15 22:06:28', '{name=机关党委,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('18', '2016-07-15 22:06:44', null, null, '2016-07-15 22:06:44', '添加Organization', 'jiange_admin', '6', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('19', '2016-07-15 22:06:44', null, null, '2016-07-15 22:06:44', '{name=检委会,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('20', '2016-07-15 22:06:56', null, null, '2016-07-15 22:06:56', '添加Organization', 'jiange_admin', '7', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('21', '2016-07-15 22:06:56', null, null, '2016-07-15 22:06:56', '{name=控申科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('22', '2016-07-15 22:07:06', null, null, '2016-07-15 22:07:06', '添加Organization', 'jiange_admin', '8', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('23', '2016-07-15 22:07:06', null, null, '2016-07-15 22:07:06', '{name=办公室,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('24', '2016-07-15 22:07:22', null, null, '2016-07-15 22:07:22', '添加Organization', 'jiange_admin', '9', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('25', '2016-07-15 22:07:22', null, null, '2016-07-15 22:07:22', '{name=公诉科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('26', '2016-07-15 22:07:51', null, null, '2016-07-15 22:07:51', '添加Organization', 'jiange_admin', '10', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('27', '2016-07-15 22:07:51', null, null, '2016-07-15 22:07:51', '{name=刑事执行检察局,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('28', '2016-07-15 22:08:03', null, null, '2016-07-15 22:08:03', '添加Organization', 'jiange_admin', '11', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('29', '2016-07-15 22:08:03', null, null, '2016-07-15 22:08:03', '{name=民行科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('30', '2016-07-15 22:08:26', null, null, '2016-07-15 22:08:26', '添加Organization', 'jiange_admin', '12', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('31', '2016-07-15 22:08:26', null, null, '2016-07-15 22:08:26', '{name=案管办,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('32', '2016-07-15 22:08:42', null, null, '2016-07-15 22:08:42', '添加Organization', 'jiange_admin', '13', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('33', '2016-07-15 22:08:42', null, null, '2016-07-15 22:08:42', '{name=预防科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('34', '2016-07-15 22:08:50', null, null, '2016-07-15 22:08:50', '添加Organization', 'jiange_admin', '14', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('35', '2016-07-15 22:08:50', null, null, '2016-07-15 22:08:50', '{name=法警队,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('36', '2016-07-15 22:09:27', null, null, '2016-07-15 22:09:27', '添加Organization', 'jiange_admin', '15', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('37', '2016-07-15 22:09:27', null, null, '2016-07-15 22:09:27', '{name=侦监科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('38', '2016-07-15 22:09:40', null, null, '2016-07-15 22:09:40', '添加Organization', 'jiange_admin', '16', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('39', '2016-07-15 22:09:40', null, null, '2016-07-15 22:09:40', '{name=监察科,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('40', '2016-07-15 22:10:35', null, null, '2016-07-15 22:10:35', '{name=科室信息管理,pid=1,value=org/index,sort=1,id=28}', 'jiange_admin', '28', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('41', '2016-07-15 22:10:48', null, null, '2016-07-15 22:10:48', '{name=职务信息管理,pid=1,value=orgpost/index,sort=1,id=32}', 'jiange_admin', '32', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('42', '2016-07-15 22:11:06', null, null, '2016-07-15 22:11:06', '{name=系统信息设置,pid=0,value=,sort=5,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('43', '2016-07-15 22:11:31', null, null, '2016-07-15 22:11:31', '添加OrgPost', 'jiange_admin', '1', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('44', '2016-07-15 22:11:31', null, null, '2016-07-15 22:11:31', '{name=检察长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('45', '2016-07-15 22:11:40', null, null, '2016-07-15 22:11:40', '添加OrgPost', 'jiange_admin', '2', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('46', '2016-07-15 22:11:40', null, null, '2016-07-15 22:11:40', '{name=副检察长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('47', '2016-07-15 22:11:54', null, null, '2016-07-15 22:11:54', '添加OrgPost', 'jiange_admin', '3', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('48', '2016-07-15 22:11:54', null, null, '2016-07-15 22:11:54', '{name=党委书记,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('49', '2016-07-15 22:12:06', null, null, '2016-07-15 22:12:06', '添加OrgPost', 'jiange_admin', '4', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('50', '2016-07-15 22:12:06', null, null, '2016-07-15 22:12:06', '{name=局长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('51', '2016-07-15 22:12:32', null, null, '2016-07-15 22:12:32', '添加OrgPost', 'jiange_admin', '5', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('52', '2016-07-15 22:12:32', null, null, '2016-07-15 22:12:32', '{name=纪检组长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('53', '2016-07-15 22:12:52', null, null, '2016-07-15 22:12:52', '更新OrgPost', 'jiange_admin', '3', 'OrgPost', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('54', '2016-07-15 22:12:52', null, null, '2016-07-15 22:12:52', '{name=书记,id=3}', 'jiange_admin', '3', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('55', '2016-07-15 22:13:13', null, null, '2016-07-15 22:13:13', '添加OrgPost', 'jiange_admin', '6', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('56', '2016-07-15 22:13:13', null, null, '2016-07-15 22:13:13', '{name=主任,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('57', '2016-07-15 22:13:23', null, null, '2016-07-15 22:13:23', '添加OrgPost', 'jiange_admin', '7', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('58', '2016-07-15 22:13:23', null, null, '2016-07-15 22:13:23', '{name=政委,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('59', '2016-07-15 22:13:43', null, null, '2016-07-15 22:13:43', '添加OrgPost', 'jiange_admin', '8', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('60', '2016-07-15 22:13:43', null, null, '2016-07-15 22:13:43', '{name=副主任,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('61', '2016-07-15 22:13:56', null, null, '2016-07-15 22:13:56', '添加OrgPost', 'jiange_admin', '9', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('62', '2016-07-15 22:13:56', null, null, '2016-07-15 22:13:56', '{name=科长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('63', '2016-07-15 22:14:16', null, null, '2016-07-15 22:14:16', '添加OrgPost', 'jiange_admin', '10', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('64', '2016-07-15 22:14:16', null, null, '2016-07-15 22:14:16', '{name=专职委员,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('65', '2016-07-15 22:14:34', null, null, '2016-07-15 22:14:34', '添加OrgPost', 'jiange_admin', '11', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('66', '2016-07-15 22:14:35', null, null, '2016-07-15 22:14:35', '{name=副科长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('67', '2016-07-15 22:15:44', null, null, '2016-07-15 22:15:44', '添加OrgPost', 'jiange_admin', '12', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('68', '2016-07-15 22:15:44', null, null, '2016-07-15 22:15:44', '{name=职员,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('69', '2016-07-15 22:17:53', null, null, '2016-07-15 22:17:53', '添加Permission', 'jiange_admin', '44', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('70', '2016-07-15 22:17:53', null, null, '2016-07-15 22:17:53', '{status=,name=工作人员信息管理,pid=1,value=ouser/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('71', '2016-07-15 22:20:39', null, null, '2016-07-15 22:20:39', '添加OfficeUser', 'jiange_admin', '1', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('72', '2016-07-15 22:20:39', null, null, '2016-07-15 22:20:39', '{name=董升礼,gender=男,phone=18800000000,email=18800000000@qq.com,others=党组书记,orgid=1,postid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('73', '2016-07-15 22:28:22', null, null, '2016-07-15 22:28:22', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('74', '2016-07-15 22:33:14', null, null, '2016-07-15 22:33:14', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('75', '2016-07-15 22:33:24', null, null, '2016-07-15 22:33:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('76', '2016-07-15 22:33:24', null, null, '2016-07-15 22:33:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('77', '2016-07-15 22:33:24', null, null, '2016-07-15 22:33:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('78', '2016-07-15 22:33:24', null, null, '2016-07-15 22:33:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('79', '2016-07-15 22:36:41', null, null, '2016-07-15 22:36:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('80', '2016-07-15 22:36:41', null, null, '2016-07-15 22:36:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('81', '2016-07-15 22:36:41', null, null, '2016-07-15 22:36:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('82', '2016-07-15 22:36:41', null, null, '2016-07-15 22:36:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('83', '2016-07-15 22:37:32', null, null, '2016-07-15 22:37:32', '添加OfficeUser', 'jiange_admin', '2', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('84', '2016-07-15 22:37:32', null, null, '2016-07-15 22:37:32', '{name=范祖波,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=1,postid=2,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('85', '2016-07-15 22:38:06', null, null, '2016-07-15 22:38:06', '添加OfficeUser', 'jiange_admin', '3', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('86', '2016-07-15 22:38:06', null, null, '2016-07-15 22:38:06', '{name=左斌周,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=1,postid=2,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('87', '2016-07-15 22:38:38', null, null, '2016-07-15 22:38:38', '添加OfficeUser', 'jiange_admin', '4', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('88', '2016-07-15 22:38:38', null, null, '2016-07-15 22:38:38', '{name=王斌,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=1,postid=2,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('89', '2016-07-15 22:39:40', null, null, '2016-07-15 22:39:40', '添加OfficeUser', 'jiange_admin', '5', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('90', '2016-07-15 22:39:40', null, null, '2016-07-15 22:39:40', '{name=王洪道,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=1,postid=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('91', '2016-07-15 22:40:25', null, null, '2016-07-15 22:40:25', '添加OfficeUser', 'jiange_admin', '6', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('92', '2016-07-15 22:40:25', null, null, '2016-07-15 22:40:25', '{name=黄莉,gender=女,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=2,postid=6,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('93', '2016-07-15 22:41:00', null, null, '2016-07-15 22:41:00', '添加OfficeUser', 'jiange_admin', '7', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('94', '2016-07-15 22:41:00', null, null, '2016-07-15 22:41:00', '{name=任建勇,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=3,postid=4,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('95', '2016-07-15 22:41:47', null, null, '2016-07-15 22:41:47', '添加OfficeUser', 'jiange_admin', '8', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('96', '2016-07-15 22:41:47', null, null, '2016-07-15 22:41:47', '{name=何军,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=4,postid=4,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('97', '2016-07-15 22:42:23', null, null, '2016-07-15 22:42:23', '添加OfficeUser', 'jiange_admin', '9', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('98', '2016-07-15 22:42:23', null, null, '2016-07-15 22:42:23', '{name=兰春辉,gender=男,phone=18800000000,email=1888888@qq.com,others=党组成员,orgid=5,postid=3,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('99', '2016-07-15 22:43:01', null, null, '2016-07-15 22:43:01', '添加OfficeUser', 'jiange_admin', '10', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('100', '2016-07-15 22:43:02', null, null, '2016-07-15 22:43:02', '{name=何智成,gender=男,phone=18800000000,email=1888888@qq.com,others=,orgid=6,postid=10,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('101', '2016-07-15 22:43:14', null, null, '2016-07-15 22:43:14', '更新OfficeUser', 'jiange_admin', '10', 'OfficeUser', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('102', '2016-07-15 22:43:14', null, null, '2016-07-15 22:43:14', '{name=何智成,gender=男,phone=18800000000,email=1888888@qq.com,others=无,orgid=6,postid=10,id=10}', 'jiange_admin', '10', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('103', '2016-07-15 22:43:59', null, null, '2016-07-15 22:43:59', '添加OfficeUser', 'jiange_admin', '11', 'OfficeUser', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('104', '2016-07-15 22:43:59', null, null, '2016-07-15 22:43:59', '{name=王玮,gender=男,phone=18800000000,email=1888888@qq.com,others=无,orgid=7,postid=9,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ouser/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('105', '2016-07-15 22:45:38', null, null, '2016-07-15 22:45:38', '{name=基本信息管理,pid=0,value=,sort=5,id=6}', 'jiange_admin', '6', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('106', '2016-07-15 22:46:02', null, null, '2016-07-15 22:46:02', '{name=社区村庄管理,pid=6,value=community/index,sort=1,id=26}', 'jiange_admin', '26', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('107', '2016-07-15 22:46:23', null, null, '2016-07-15 22:46:23', '{name=科室信息管理,pid=6,value=org/index,sort=1,id=28}', 'jiange_admin', '28', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('108', '2016-07-15 22:46:32', null, null, '2016-07-15 22:46:32', '{name=职务信息管理,pid=6,value=orgpost/index,sort=1,id=32}', 'jiange_admin', '32', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('109', '2016-07-15 22:46:51', null, null, '2016-07-15 22:46:51', '{name=工作人员信息管理,pid=6,value=ouser/index,sort=5,id=44}', 'jiange_admin', '44', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('110', '2016-07-15 22:47:58', null, null, '2016-07-15 22:47:58', '添加Permission', 'jiange_admin', '45', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('111', '2016-07-15 22:47:58', null, null, '2016-07-15 22:47:58', '{status=,name=工作组管,pid=6,value=gmanage/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('112', '2016-07-15 22:48:57', null, null, '2016-07-15 22:48:57', '添加Permission', 'jiange_admin', '46', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('113', '2016-07-15 22:48:57', null, null, '2016-07-15 22:48:57', '{status=,name=工作组成员管理,pid=6,value=gmember/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('114', '2016-07-15 22:49:09', null, null, '2016-07-15 22:49:09', '{name=工作组管理,pid=6,value=gmanage/index,sort=5,id=45}', 'jiange_admin', '45', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('115', '2016-07-15 22:49:57', null, null, '2016-07-15 22:49:57', '添加Permission', 'jiange_admin', '47', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('116', '2016-07-15 22:49:57', null, null, '2016-07-15 22:49:57', '{status=,name=网格化信息管理,pid=0,value=,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('117', '2016-07-15 22:51:03', null, null, '2016-07-15 22:51:03', '添加Permission', 'jiange_admin', '48', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('118', '2016-07-15 22:51:03', null, null, '2016-07-15 22:51:03', '{status=,name=一级网络管理,pid=47,value=firstnet/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('119', '2016-07-15 22:51:52', null, null, '2016-07-15 22:51:52', '添加Permission', 'jiange_admin', '49', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('120', '2016-07-15 22:51:52', null, null, '2016-07-15 22:51:52', '{status=,name=二级网络管理,pid=47,value=twonet/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('121', '2016-07-15 22:52:31', null, null, '2016-07-15 22:52:31', '添加Permission', 'jiange_admin', '50', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('122', '2016-07-15 22:52:31', null, null, '2016-07-15 22:52:31', '{status=,name=三级网络管理,pid=47,value=threenet/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('123', '2016-07-15 22:53:11', null, null, '2016-07-15 22:53:11', '添加Permission', 'jiange_admin', '51', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('124', '2016-07-15 22:53:11', null, null, '2016-07-15 22:53:11', '{status=,name=工作组管理,pid=0,value=,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('125', '2016-07-15 22:53:28', null, null, '2016-07-15 22:53:28', '{name=工作组管理,pid=48,value=gmanage/index,sort=5,id=45}', 'jiange_admin', '45', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('126', '2016-07-15 22:53:55', null, null, '2016-07-15 22:53:55', '{name=工作组成员管理,pid=51,value=gmember/index,sort=5,id=46}', 'jiange_admin', '46', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('127', '2016-07-15 22:55:33', null, null, '2016-07-15 22:55:33', '{name=工作组设置,pid=51,value=gmanage/index,sort=5,id=45}', 'jiange_admin', '45', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('128', '2016-07-15 22:56:34', null, null, '2016-07-15 22:56:34', '{name=重点关注人群分类,pid=41,value=caringcategory/index,sort=1,id=42}', 'jiange_admin', '42', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('129', '2016-07-15 22:57:00', null, null, '2016-07-15 22:57:00', '{name=重点关注人群分类,pid=41,value=caringcategory/index,sort=1,id=42}', 'jiange_admin', '42', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('130', '2016-07-15 22:57:26', null, null, '2016-07-15 22:57:26', '{name=重点关注人员信息,pid=41,value=dangerpeople/index,sort=1,id=43}', 'jiange_admin', '43', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('131', '2016-07-15 22:57:42', null, null, '2016-07-15 22:57:42', '{name=重点关注人员信息,pid=41,value=caringpeople/index,sort=1,id=43}', 'jiange_admin', '43', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('132', '2016-07-15 22:58:07', null, null, '2016-07-15 22:58:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('133', '2016-07-15 22:58:07', null, null, '2016-07-15 22:58:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('134', '2016-07-15 22:59:33', null, null, '2016-07-15 22:59:33', '添加GroupManage', 'jiange_admin', '1', 'GroupManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('135', '2016-07-15 22:59:33', null, null, '2016-07-15 22:59:33', '{name=网络化管理工作组,description=网络化社会管理服务工作组,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('136', '2016-07-15 23:00:34', null, null, '2016-07-15 23:00:34', '更新GroupManage', 'jiange_admin', '1', 'GroupManage', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('137', '2016-07-15 23:00:34', null, null, '2016-07-15 23:00:34', '{name=网络化社会管理服务领导小组,description=网络化社会管理服务工作组,parentid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('138', '2016-07-15 23:05:02', null, null, '2016-07-15 23:05:02', '更新GroupManage', 'jiange_admin', '1', 'GroupManage', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('139', '2016-07-15 23:05:02', null, null, '2016-07-15 23:05:02', '{name=网络化社会管理服务领导小组,description=设站建站聘员联户民生检察实施网格化社会管理服务工作领导下组,parentid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('140', '2016-07-15 23:05:22', null, null, '2016-07-15 23:05:22', '添加GroupManage', 'jiange_admin', '2', 'GroupManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('141', '2016-07-15 23:05:22', null, null, '2016-07-15 23:05:22', '{name=组长,description=组长,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('142', '2016-07-15 23:05:39', null, null, '2016-07-15 23:05:39', '添加GroupManage', 'jiange_admin', '3', 'GroupManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('143', '2016-07-15 23:05:39', null, null, '2016-07-15 23:05:39', '{name=副组长,description=副组长,parentid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('144', '2016-07-15 23:05:47', null, null, '2016-07-15 23:05:47', '更新GroupManage', 'jiange_admin', '3', 'GroupManage', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('145', '2016-07-15 23:05:48', null, null, '2016-07-15 23:05:48', '{name=副组长,description=副组长,parentid=1,id=3}', 'jiange_admin', '3', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('146', '2016-07-15 23:06:10', null, null, '2016-07-15 23:06:10', '添加GroupManage', 'jiange_admin', '4', 'GroupManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('147', '2016-07-15 23:06:10', null, null, '2016-07-15 23:06:10', '{name=成员,description=成员,parentid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('148', '2016-07-15 23:06:17', null, null, '2016-07-15 23:06:17', '更新GroupManage', 'jiange_admin', '4', 'GroupManage', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('149', '2016-07-15 23:06:17', null, null, '2016-07-15 23:06:17', '{name=成员,description=成员,parentid=1,id=4}', 'jiange_admin', '4', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/gmanage/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('150', '2016-07-15 23:07:04', null, null, '2016-07-15 23:07:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('151', '2016-07-15 23:07:04', null, null, '2016-07-15 23:07:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('152', '2016-07-15 23:07:04', null, null, '2016-07-15 23:07:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('153', '2016-07-15 23:07:15', null, null, '2016-07-15 23:07:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('154', '2016-07-15 23:07:15', null, null, '2016-07-15 23:07:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('155', '2016-07-15 23:07:15', null, null, '2016-07-15 23:07:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('156', '2016-07-15 23:08:13', null, null, '2016-07-15 23:08:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('157', '2016-07-15 23:08:13', null, null, '2016-07-15 23:08:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('158', '2016-07-15 23:16:46', null, null, '2016-07-15 23:16:46', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('159', '2016-07-15 23:17:03', null, null, '2016-07-15 23:17:03', '{id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('160', '2016-07-15 23:17:26', null, null, '2016-07-15 23:17:26', '{name=系统管理员,description=系统管理员,id=1,permissionId=2,3,5,23,4,25,26,27,28,32,44,30,31,36,37,38,39,40,42,43,48,49,50,45,46}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('161', '2016-07-15 23:17:38', null, null, '2016-07-15 23:17:38', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('162', '2016-07-15 23:17:55', null, null, '2016-07-15 23:17:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('163', '2016-07-15 23:17:55', null, null, '2016-07-15 23:17:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('164', '2016-07-15 23:18:07', null, null, '2016-07-15 23:18:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('165', '2016-07-15 23:18:07', null, null, '2016-07-15 23:18:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('166', '2016-07-15 23:18:07', null, null, '2016-07-15 23:18:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('167', '2016-07-15 23:18:27', null, null, '2016-07-15 23:18:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('168', '2016-07-15 23:18:27', null, null, '2016-07-15 23:18:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('169', '2016-07-15 23:18:27', null, null, '2016-07-15 23:18:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('170', '2016-07-15 23:19:05', null, null, '2016-07-15 23:19:05', '{name=工作日程表管理,pid=0,value=,sort=5,id=38}', 'jiange_admin', '38', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('171', '2016-07-15 23:20:30', null, null, '2016-07-15 23:20:30', '添加Permission', 'jiange_admin', '52', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('172', '2016-07-15 23:20:30', null, null, '2016-07-15 23:20:30', '{status=,name=民生检察联络点工作日程表,pid=38,value=cpschedule/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('173', '2016-07-15 23:21:42', null, null, '2016-07-15 23:21:42', '添加Permission', 'jiange_admin', '53', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('174', '2016-07-15 23:21:42', null, null, '2016-07-15 23:21:42', '{status=,name=青少年阳光工作站工作日程表,pid=38,value=wsschedule/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('175', '2016-07-15 23:22:34', null, null, '2016-07-15 23:22:34', '{id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('176', '2016-07-15 23:22:42', null, null, '2016-07-15 23:22:42', '{name=系统管理员,description=系统管理员,id=1,permissionId=2,3,5,23,4,25,26,27,28,32,44,30,31,36,37,39,40,52,53,42,43,48,49,50,45,46}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('177', '2016-07-15 23:23:02', null, null, '2016-07-15 23:23:02', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('178', '2016-07-15 23:23:02', null, null, '2016-07-15 23:23:02', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('179', '2016-07-15 23:23:36', null, null, '2016-07-15 23:23:36', '添加FirstNetwork', 'jiange_admin', '1', 'FirstNetwork', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('180', '2016-07-15 23:23:36', null, null, '2016-07-15 23:23:36', '{name=院党组,officeid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/firstnet/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('181', '2016-07-15 23:23:46', null, null, '2016-07-15 23:23:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('182', '2016-07-15 23:23:46', null, null, '2016-07-15 23:23:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('183', '2016-07-15 23:26:10', null, null, '2016-07-15 23:26:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('184', '2016-07-15 23:26:10', null, null, '2016-07-15 23:26:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('185', '2016-07-15 23:27:42', null, null, '2016-07-15 23:27:42', '添加TwoNetwork', 'jiange_admin', '1', 'TwoNetwork', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('186', '2016-07-15 23:27:42', null, null, '2016-07-15 23:27:42', '{leadid=2,contactids=10,17,orgids=8,17,officeids=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/twonet/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('187', '2016-07-15 23:28:33', null, null, '2016-07-15 23:28:33', '添加Organization', 'jiange_admin', '17', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('188', '2016-07-15 23:28:33', null, null, '2016-07-15 23:28:33', '{name=案件管理办公室,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('189', '2016-07-15 23:28:56', null, null, '2016-07-15 23:28:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('190', '2016-07-15 23:28:56', null, null, '2016-07-15 23:28:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('191', '2016-07-15 23:28:56', null, null, '2016-07-15 23:28:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('192', '2016-07-15 23:28:56', null, null, '2016-07-15 23:28:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('193', '2016-07-15 23:29:18', null, null, '2016-07-15 23:29:18', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('194', '2016-07-15 23:29:18', null, null, '2016-07-15 23:29:18', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('195', '2016-07-15 23:32:46', null, null, '2016-07-15 23:32:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('196', '2016-07-15 23:32:46', null, null, '2016-07-15 23:32:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('197', '2016-07-15 23:32:57', null, null, '2016-07-15 23:32:57', '更新County', 'jiange_admin', '58', 'County', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('198', '2016-07-15 23:32:57', null, null, '2016-07-15 23:32:57', '{name=上寺乡,description=上寺乡,parentid=1,id=58}', 'jiange_admin', '58', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/county/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('199', '2016-07-15 23:33:05', null, null, '2016-07-15 23:33:05', '更新County', 'jiange_admin', '58', 'County', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('200', '2016-07-15 23:33:05', null, null, '2016-07-15 23:33:05', '{name=上寺乡,description=上寺乡,parentid=1,id=58}', 'jiange_admin', '58', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/county/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('201', '2016-07-15 23:33:15', null, null, '2016-07-15 23:33:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('202', '2016-07-15 23:33:15', null, null, '2016-07-15 23:33:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('203', '2016-07-15 23:33:48', null, null, '2016-07-15 23:33:48', '{name=社区村庄管理,pid=6,value=village/index,sort=1,id=26}', 'jiange_admin', '26', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('204', '2016-07-15 23:34:36', null, null, '2016-07-15 23:34:36', '添加Permission', 'jiange_admin', '54', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('205', '2016-07-15 23:34:36', null, null, '2016-07-15 23:34:36', '{status=,name=片区信息管理,pid=6,value=areamanage/index,sort=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('206', '2016-07-15 23:34:46', null, null, '2016-07-15 23:34:46', '{id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('207', '2016-07-15 23:34:50', null, null, '2016-07-15 23:34:50', '{name=系统管理员,description=系统管理员,id=1,permissionId=2,3,5,23,4,25,26,27,28,32,44,54,30,31,36,37,39,40,52,53,42,43,48,49,50,45,46}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('208', '2016-07-15 23:35:04', null, null, '2016-07-15 23:35:04', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('209', '2016-07-15 23:38:06', null, null, '2016-07-15 23:38:06', '添加AreaManage', 'jiange_admin', '1', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('210', '2016-07-15 23:38:06', null, null, '2016-07-15 23:38:06', '{name=下寺片区,contactpointId=3,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('211', '2016-07-15 23:38:25', null, null, '2016-07-15 23:38:25', '添加AreaManage', 'jiange_admin', '2', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('212', '2016-07-15 23:38:25', null, null, '2016-07-15 23:38:25', '{name=城北片区,contactpointId=5,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('213', '2016-07-15 23:38:37', null, null, '2016-07-15 23:38:37', '添加AreaManage', 'jiange_admin', '3', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('214', '2016-07-15 23:38:37', null, null, '2016-07-15 23:38:37', '{name=柳沟片区,contactpointId=7,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('215', '2016-07-15 23:38:49', null, null, '2016-07-15 23:38:49', '添加AreaManage', 'jiange_admin', '4', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('216', '2016-07-15 23:38:49', null, null, '2016-07-15 23:38:49', '{name=武连片区,contactpointId=8,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('217', '2016-07-15 23:39:00', null, null, '2016-07-15 23:39:00', '添加AreaManage', 'jiange_admin', '5', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('218', '2016-07-15 23:39:00', null, null, '2016-07-15 23:39:00', '{name=开封片区,contactpointId=10,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('219', '2016-07-15 23:39:12', null, null, '2016-07-15 23:39:12', '添加AreaManage', 'jiange_admin', '6', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('220', '2016-07-15 23:39:13', null, null, '2016-07-15 23:39:13', '{name=元山片区,contactpointId=11,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('221', '2016-07-15 23:39:25', null, null, '2016-07-15 23:39:25', '添加AreaManage', 'jiange_admin', '7', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('222', '2016-07-15 23:39:25', null, null, '2016-07-15 23:39:25', '{name=公兴片区,contactpointId=14,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('223', '2016-07-15 23:39:37', null, null, '2016-07-15 23:39:37', '添加AreaManage', 'jiange_admin', '8', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('224', '2016-07-15 23:39:38', null, null, '2016-07-15 23:39:38', '{name=白龙片区,contactpointId=17,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('225', '2016-07-15 23:39:52', null, null, '2016-07-15 23:39:52', '添加AreaManage', 'jiange_admin', '9', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('226', '2016-07-15 23:39:52', null, null, '2016-07-15 23:39:52', '{name=鹤龄片区,contactpointId=18,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('227', '2016-07-15 23:40:15', null, null, '2016-07-15 23:40:15', '添加AreaManage', 'jiange_admin', '10', 'AreaManage', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('228', '2016-07-15 23:40:15', null, null, '2016-07-15 23:40:15', '{name=江口片区,contactpointId=21,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/areamanage/index?pid=54&menuId=54', 'POST', '/website/areamanage/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('229', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('230', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('231', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('232', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('233', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('234', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('235', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('236', '2016-07-15 23:40:27', null, null, '2016-07-15 23:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('237', '2016-07-15 23:49:39', null, null, '2016-07-15 23:49:39', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('238', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('239', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('240', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('241', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('242', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('243', '2016-07-15 23:49:50', null, null, '2016-07-15 23:49:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('244', '2016-07-15 23:49:51', null, null, '2016-07-15 23:49:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('245', '2016-07-15 23:49:51', null, null, '2016-07-15 23:49:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('246', '2016-07-15 23:50:19', null, null, '2016-07-15 23:50:19', '添加ContactPointSchedule', 'jiange_admin', '1', 'ContactPointSchedule', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('247', '2016-07-15 23:50:19', null, null, '2016-07-15 23:50:19', '{areaid=1,worktime=每月16日,orgid=9,leadid=4,officeid=4,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/cpschedule/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('248', '2016-07-15 23:51:07', null, null, '2016-07-15 23:51:07', '添加ContactPointSchedule', 'jiange_admin', '2', 'ContactPointSchedule', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('249', '2016-07-15 23:51:07', null, null, '2016-07-15 23:51:07', '{areaid=2,worktime=每月16日,orgid=2,leadid=6,officeid=6,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/cpschedule/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('250', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/schoolall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('251', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/schoolall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('252', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('253', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('254', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('255', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('256', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('257', '2016-07-15 23:51:13', null, null, '2016-07-15 23:51:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('258', '2016-07-15 23:51:22', null, null, '2016-07-15 23:51:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('259', '2016-07-15 23:51:22', null, null, '2016-07-15 23:51:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('260', '2016-07-15 23:52:30', null, null, '2016-07-15 23:52:30', '添加School', 'jiange_admin', '1', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('261', '2016-07-15 23:52:30', null, null, '2016-07-15 23:52:30', '{name=剑门关中学,description=剑门关中学,countyid=23,townid=,villageid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('262', '2016-07-15 23:53:04', null, null, '2016-07-15 23:53:04', '添加School', 'jiange_admin', '2', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('263', '2016-07-15 23:53:04', null, null, '2016-07-15 23:53:04', '{name=剑阁职中,description=剑阁职中,countyid=1,townid=,villageid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('264', '2016-07-15 23:53:19', null, null, '2016-07-15 23:53:19', '添加School', 'jiange_admin', '3', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('265', '2016-07-15 23:53:19', null, null, '2016-07-15 23:53:19', '{name=剑阁中学,description=剑阁中学,countyid=1,townid=,villageid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('266', '2016-07-15 23:53:55', null, null, '2016-07-15 23:53:55', '添加School', 'jiange_admin', '4', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('267', '2016-07-15 23:53:55', null, null, '2016-07-15 23:53:55', '{name=剑州中学,description=剑州中学,countyid=1,townid=,villageid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('268', '2016-07-15 23:54:14', null, null, '2016-07-15 23:54:14', '添加School', 'jiange_admin', '5', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('269', '2016-07-15 23:54:14', null, null, '2016-07-15 23:54:14', '{name=柳沟中学,description=柳沟中学,countyid=7,townid=,villageid=,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('270', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/schoolall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('271', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/schoolall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('272', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('273', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('274', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('275', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('276', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('277', '2016-07-15 23:54:48', null, null, '2016-07-15 23:54:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('278', '2016-07-15 23:58:21', null, null, '2016-07-15 23:58:21', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('279', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('280', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('281', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('282', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('283', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('284', '2016-07-15 23:58:35', null, null, '2016-07-15 23:58:35', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('285', '2016-07-15 23:58:36', null, null, '2016-07-15 23:58:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('286', '2016-07-15 23:58:36', null, null, '2016-07-15 23:58:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('287', '2016-07-15 23:59:14', null, null, '2016-07-15 23:59:14', '添加WorkStationSchedule', 'jiange_admin', '1', 'WorkStationSchedule', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('288', '2016-07-15 23:59:14', null, null, '2016-07-15 23:59:14', '{schoolid=1,worktime=每月第二周 星期三,orgid=9,leadid=4,officeid=4,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/wsschedule/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('289', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('290', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('291', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('292', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('293', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('294', '2016-07-15 23:59:20', null, null, '2016-07-15 23:59:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('295', '2016-07-15 23:59:21', null, null, '2016-07-15 23:59:21', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('296', '2016-07-15 23:59:21', null, null, '2016-07-15 23:59:21', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('297', '2016-07-15 23:59:28', null, null, '2016-07-15 23:59:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('298', '2016-07-15 23:59:28', null, null, '2016-07-15 23:59:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('299', '2016-07-15 23:59:32', null, null, '2016-07-15 23:59:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('300', '2016-07-15 23:59:32', null, null, '2016-07-15 23:59:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('301', '2016-07-15 23:59:38', null, null, '2016-07-15 23:59:38', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('302', '2016-07-15 23:59:38', null, null, '2016-07-15 23:59:38', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('303', '2016-07-15 23:59:46', null, null, '2016-07-15 23:59:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('304', '2016-07-15 23:59:46', null, null, '2016-07-15 23:59:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('305', '2016-07-15 23:59:46', null, null, '2016-07-15 23:59:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('306', '2016-07-16 00:04:29', null, null, '2016-07-16 00:04:29', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('307', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('308', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('309', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('310', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('311', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('312', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('313', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('314', '2016-07-16 00:04:41', null, null, '2016-07-16 00:04:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('315', '2016-07-16 00:04:45', null, null, '2016-07-16 00:04:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('316', '2016-07-16 00:04:45', null, null, '2016-07-16 00:04:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('317', '2016-07-16 00:04:45', null, null, '2016-07-16 00:04:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('318', '2016-07-16 00:04:45', null, null, '2016-07-16 00:04:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('319', '2016-07-16 00:04:53', null, null, '2016-07-16 00:04:53', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('320', '2016-07-16 00:04:53', null, null, '2016-07-16 00:04:53', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('321', '2016-07-16 00:04:53', null, null, '2016-07-16 00:04:53', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('322', '2016-07-16 00:04:53', null, null, '2016-07-16 00:04:53', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('323', '2016-07-16 00:05:43', null, null, '2016-07-16 00:05:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('324', '2016-07-16 00:05:43', null, null, '2016-07-16 00:05:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('325', '2016-07-16 00:05:48', null, null, '2016-07-16 00:05:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('326', '2016-07-16 00:05:48', null, null, '2016-07-16 00:05:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('327', '2016-07-16 00:05:48', null, null, '2016-07-16 00:05:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('328', '2016-07-16 00:05:48', null, null, '2016-07-16 00:05:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('329', '2016-07-16 00:09:22', null, null, '2016-07-16 00:09:22', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('330', '2016-07-16 00:09:34', null, null, '2016-07-16 00:09:34', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('331', '2016-07-16 00:09:34', null, null, '2016-07-16 00:09:34', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('332', '2016-07-16 00:09:34', null, null, '2016-07-16 00:09:34', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('333', '2016-07-16 00:09:34', null, null, '2016-07-16 00:09:34', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('334', '2016-07-16 00:10:56', null, null, '2016-07-16 00:10:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('335', '2016-07-16 00:10:56', null, null, '2016-07-16 00:10:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('336', '2016-07-16 00:10:56', null, null, '2016-07-16 00:10:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('337', '2016-07-16 00:10:56', null, null, '2016-07-16 00:10:56', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('338', '2016-07-16 00:14:44', null, null, '2016-07-16 00:14:44', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('339', '2016-07-16 00:14:57', null, null, '2016-07-16 00:14:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('340', '2016-07-16 00:14:57', null, null, '2016-07-16 00:14:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('341', '2016-07-16 00:19:45', null, null, '2016-07-16 00:19:45', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('342', '2016-07-16 00:20:07', null, null, '2016-07-16 00:20:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('343', '2016-07-16 00:20:07', null, null, '2016-07-16 00:20:07', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('344', '2016-07-16 00:20:16', null, null, '2016-07-16 00:20:16', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('345', '2016-07-16 00:20:16', null, null, '2016-07-16 00:20:16', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('346', '2016-07-16 00:33:39', null, null, '2016-07-16 00:33:39', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('347', '2016-07-16 00:33:49', null, null, '2016-07-16 00:33:49', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('348', '2016-07-16 00:33:49', null, null, '2016-07-16 00:33:49', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('349', '2016-07-16 00:35:44', null, null, '2016-07-16 00:35:44', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('350', '2016-07-16 00:35:55', null, null, '2016-07-16 00:35:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('351', '2016-07-16 00:35:55', null, null, '2016-07-16 00:35:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('352', '2016-07-16 00:37:44', null, null, '2016-07-16 00:37:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('353', '2016-07-16 00:37:44', null, null, '2016-07-16 00:37:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('354', '2016-07-17 15:00:45', null, null, '2016-07-17 15:00:45', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('355', '2016-07-17 15:00:59', null, null, '2016-07-17 15:00:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('356', '2016-07-17 15:00:59', null, null, '2016-07-17 15:00:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('357', '2016-07-17 15:00:59', null, null, '2016-07-17 15:00:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('358', '2016-07-17 15:00:59', null, null, '2016-07-17 15:00:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('359', '2016-07-17 15:07:31', null, null, '2016-07-17 15:07:31', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('360', '2016-07-17 15:07:45', null, null, '2016-07-17 15:07:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('361', '2016-07-17 15:07:45', null, null, '2016-07-17 15:07:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('362', '2016-07-17 15:07:45', null, null, '2016-07-17 15:07:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('363', '2016-07-17 15:07:45', null, null, '2016-07-17 15:07:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('364', '2016-07-17 15:07:59', null, null, '2016-07-17 15:07:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('365', '2016-07-17 15:07:59', null, null, '2016-07-17 15:07:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('366', '2016-07-17 15:08:06', null, null, '2016-07-17 15:08:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('367', '2016-07-17 15:08:06', null, null, '2016-07-17 15:08:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('368', '2016-07-17 15:08:12', null, null, '2016-07-17 15:08:12', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('369', '2016-07-17 15:08:12', null, null, '2016-07-17 15:08:12', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('370', '2016-07-17 15:08:12', null, null, '2016-07-17 15:08:12', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('371', '2016-07-17 15:08:12', null, null, '2016-07-17 15:08:12', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('372', '2016-07-17 15:13:13', null, null, '2016-07-17 15:13:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('373', '2016-07-17 15:13:13', null, null, '2016-07-17 15:13:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('374', '2016-07-17 15:13:13', null, null, '2016-07-17 15:13:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('375', '2016-07-17 15:13:13', null, null, '2016-07-17 15:13:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('376', '2016-07-17 15:19:44', null, null, '2016-07-17 15:19:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/caringpeople/index?pid=43&menuId=43', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('377', '2016-07-17 15:19:44', null, null, '2016-07-17 15:19:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/caringpeople/index?pid=43&menuId=43', 'POST', '/website/ajax/caringcategory', '1', 'admin');
INSERT INTO `operation_log` VALUES ('378', '2016-07-17 15:19:57', null, null, '2016-07-17 15:19:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('379', '2016-07-17 15:19:57', null, null, '2016-07-17 15:19:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('380', '2016-07-17 15:20:06', null, null, '2016-07-17 15:20:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('381', '2016-07-17 15:20:06', null, null, '2016-07-17 15:20:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('382', '2016-07-17 15:20:06', null, null, '2016-07-17 15:20:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('383', '2016-07-17 15:20:06', null, null, '2016-07-17 15:20:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('384', '2016-07-17 15:20:09', null, null, '2016-07-17 15:20:09', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('385', '2016-07-17 15:20:09', null, null, '2016-07-17 15:20:09', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('386', '2016-07-17 15:20:13', null, null, '2016-07-17 15:20:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('387', '2016-07-17 15:20:13', null, null, '2016-07-17 15:20:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('388', '2016-07-17 15:20:13', null, null, '2016-07-17 15:20:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('389', '2016-07-17 15:20:13', null, null, '2016-07-17 15:20:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('390', '2016-07-17 15:20:43', null, null, '2016-07-17 15:20:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('391', '2016-07-17 15:20:43', null, null, '2016-07-17 15:20:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('392', '2016-07-17 15:24:01', null, null, '2016-07-17 15:24:01', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('393', '2016-07-17 15:24:01', null, null, '2016-07-17 15:24:01', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('394', '2016-07-17 15:24:06', null, null, '2016-07-17 15:24:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('395', '2016-07-17 15:24:06', null, null, '2016-07-17 15:24:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('396', '2016-07-17 15:24:06', null, null, '2016-07-17 15:24:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('397', '2016-07-17 15:24:06', null, null, '2016-07-17 15:24:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('398', '2016-07-17 15:37:13', null, null, '2016-07-17 15:37:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('399', '2016-07-17 15:37:13', null, null, '2016-07-17 15:37:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('400', '2016-07-17 15:37:29', null, null, '2016-07-17 15:37:29', '更新GroupManage', 'jiange_admin', '1', 'GroupManage', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('401', '2016-07-17 15:37:30', null, null, '2016-07-17 15:37:30', '{name=网络化管理小组,description=设站建站聘员联户民生检察实施网格化社会管理服务工作领导下组,parentid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/gmanage/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('402', '2016-07-17 15:42:46', null, null, '2016-07-17 15:42:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('403', '2016-07-17 15:42:46', null, null, '2016-07-17 15:42:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('404', '2016-07-17 15:42:46', null, null, '2016-07-17 15:42:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('405', '2016-07-17 15:42:46', null, null, '2016-07-17 15:42:46', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('406', '2016-07-17 15:45:21', null, null, '2016-07-17 15:45:21', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('407', '2016-07-17 15:45:21', null, null, '2016-07-17 15:45:21', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('408', '2016-07-17 15:45:57', null, null, '2016-07-17 15:45:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('409', '2016-07-17 15:45:57', null, null, '2016-07-17 15:45:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('410', '2016-07-17 16:21:28', null, null, '2016-07-17 16:21:28', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('411', '2016-07-17 16:26:32', null, null, '2016-07-17 16:26:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('412', '2016-07-17 16:26:32', null, null, '2016-07-17 16:26:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('413', '2016-07-17 16:26:32', null, null, '2016-07-17 16:26:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('414', '2016-07-17 16:26:32', null, null, '2016-07-17 16:26:32', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('415', '2016-07-17 16:26:40', null, null, '2016-07-17 16:26:40', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('416', '2016-07-17 16:26:40', null, null, '2016-07-17 16:26:40', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('417', '2016-07-17 16:26:40', null, null, '2016-07-17 16:26:40', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('418', '2016-07-17 16:26:40', null, null, '2016-07-17 16:26:40', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('419', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('420', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('421', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('422', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('423', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('424', '2016-07-17 16:27:14', null, null, '2016-07-17 16:27:14', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('425', '2016-07-17 16:27:15', null, null, '2016-07-17 16:27:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('426', '2016-07-17 16:27:15', null, null, '2016-07-17 16:27:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('427', '2016-07-17 16:27:19', null, null, '2016-07-17 16:27:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('428', '2016-07-17 16:27:19', null, null, '2016-07-17 16:27:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('429', '2016-07-17 16:27:20', null, null, '2016-07-17 16:27:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('430', '2016-07-17 16:27:20', null, null, '2016-07-17 16:27:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('431', '2016-07-17 16:27:20', null, null, '2016-07-17 16:27:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('432', '2016-07-17 16:27:20', null, null, '2016-07-17 16:27:20', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('433', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('434', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('435', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('436', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('437', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('438', '2016-07-17 16:27:23', null, null, '2016-07-17 16:27:23', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('439', '2016-07-17 16:27:24', null, null, '2016-07-17 16:27:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('440', '2016-07-17 16:27:24', null, null, '2016-07-17 16:27:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('441', '2016-07-17 16:47:51', null, null, '2016-07-17 16:47:51', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('442', '2016-07-17 16:48:30', null, null, '2016-07-17 16:48:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('443', '2016-07-17 16:48:30', null, null, '2016-07-17 16:48:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('444', '2016-07-17 16:51:15', null, null, '2016-07-17 16:51:15', '添加Village', 'jiange_admin', '1', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('445', '2016-07-17 16:51:15', null, null, '2016-07-17 16:51:15', '{name=双剑村,countyid=2,description=双剑村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('446', '2016-07-17 16:51:30', null, null, '2016-07-17 16:51:30', '添加Village', 'jiange_admin', '2', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('447', '2016-07-17 16:51:30', null, null, '2016-07-17 16:51:30', '{name=剑西村,countyid=2,description=剑西村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('448', '2016-07-17 16:51:42', null, null, '2016-07-17 16:51:42', '添加Village', 'jiange_admin', '3', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('449', '2016-07-17 16:51:42', null, null, '2016-07-17 16:51:42', '{name=中坪村,countyid=2,description=中坪村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('450', '2016-07-17 16:51:54', null, null, '2016-07-17 16:51:54', '添加Village', 'jiange_admin', '4', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('451', '2016-07-17 16:51:54', null, null, '2016-07-17 16:51:54', '{name=江东村,countyid=2,description=江东村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('452', '2016-07-17 16:52:06', null, null, '2016-07-17 16:52:06', '添加Village', 'jiange_admin', '5', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('453', '2016-07-17 16:52:06', null, null, '2016-07-17 16:52:06', '{name=鼓楼社区,countyid=2,description=鼓楼社区,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('454', '2016-07-17 16:52:16', null, null, '2016-07-17 16:52:16', '添加Village', 'jiange_admin', '6', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('455', '2016-07-17 16:52:17', null, null, '2016-07-17 16:52:17', '{name=小玲玲社区,countyid=2,description=小玲玲社区,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('456', '2016-07-17 16:52:33', null, null, '2016-07-17 16:52:33', '添加Village', 'jiange_admin', '7', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('457', '2016-07-17 16:52:33', null, null, '2016-07-17 16:52:33', '{name=下寺村,countyid=3,description=下寺村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('458', '2016-07-17 16:52:44', null, null, '2016-07-17 16:52:44', '添加Village', 'jiange_admin', '8', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('459', '2016-07-17 16:52:44', null, null, '2016-07-17 16:52:44', '{name=友于村,countyid=3,description=友于村,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('460', '2016-07-17 16:52:57', null, null, '2016-07-17 16:52:57', '添加Village', 'jiange_admin', '9', 'Village', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('461', '2016-07-17 16:52:57', null, null, '2016-07-17 16:52:57', '{name=沙溪坝社区,countyid=3,description=沙溪坝社区,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/village/index?pid=26&menuId=26', 'POST', '/website/village/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('462', '2016-07-17 16:53:00', null, null, '2016-07-17 16:53:00', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('463', '2016-07-17 16:53:00', null, null, '2016-07-17 16:53:00', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('464', '2016-07-17 16:53:04', null, null, '2016-07-17 16:53:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('465', '2016-07-17 16:53:04', null, null, '2016-07-17 16:53:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('466', '2016-07-17 17:08:22', null, null, '2016-07-17 17:08:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('467', '2016-07-17 17:08:22', null, null, '2016-07-17 17:08:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('468', '2016-07-17 17:08:22', null, null, '2016-07-17 17:08:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('469', '2016-07-17 17:08:22', null, null, '2016-07-17 17:08:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('470', '2016-07-17 17:08:36', null, null, '2016-07-17 17:08:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('471', '2016-07-17 17:08:36', null, null, '2016-07-17 17:08:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('472', '2016-07-17 17:08:36', null, null, '2016-07-17 17:08:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('473', '2016-07-17 17:08:36', null, null, '2016-07-17 17:08:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('474', '2016-07-17 17:08:50', null, null, '2016-07-17 17:08:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('475', '2016-07-17 17:08:50', null, null, '2016-07-17 17:08:50', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('476', '2016-07-17 17:08:57', null, null, '2016-07-17 17:08:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('477', '2016-07-17 17:08:57', null, null, '2016-07-17 17:08:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('478', '2016-07-17 17:08:57', null, null, '2016-07-17 17:08:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('479', '2016-07-17 17:08:57', null, null, '2016-07-17 17:08:57', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('480', '2016-07-17 17:09:03', null, null, '2016-07-17 17:09:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('481', '2016-07-17 17:09:03', null, null, '2016-07-17 17:09:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('482', '2016-07-17 17:09:13', null, null, '2016-07-17 17:09:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('483', '2016-07-17 17:09:13', null, null, '2016-07-17 17:09:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('484', '2016-07-17 17:09:13', null, null, '2016-07-17 17:09:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('485', '2016-07-17 17:09:13', null, null, '2016-07-17 17:09:13', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('486', '2016-07-17 17:09:22', null, null, '2016-07-17 17:09:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('487', '2016-07-17 17:09:22', null, null, '2016-07-17 17:09:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('488', '2016-07-17 17:09:31', null, null, '2016-07-17 17:09:31', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('489', '2016-07-17 17:09:31', null, null, '2016-07-17 17:09:31', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('490', '2016-07-17 17:10:44', null, null, '2016-07-17 17:10:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('491', '2016-07-17 17:10:44', null, null, '2016-07-17 17:10:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('492', '2016-07-17 17:10:58', null, null, '2016-07-17 17:10:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('493', '2016-07-17 17:10:58', null, null, '2016-07-17 17:10:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('494', '2016-07-17 17:12:26', null, null, '2016-07-17 17:12:26', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('495', '2016-07-17 17:12:26', null, null, '2016-07-17 17:12:26', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('496', '2016-07-17 17:13:11', null, null, '2016-07-17 17:13:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('497', '2016-07-17 17:13:11', null, null, '2016-07-17 17:13:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('498', '2016-07-17 17:13:53', null, null, '2016-07-17 17:13:53', '添加School', 'jiange_admin', '6', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('499', '2016-07-17 17:13:53', null, null, '2016-07-17 17:13:53', '{name=武连职中,sunstation=1,countyid=8,description=武连职中,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('500', '2016-07-17 17:14:14', null, null, '2016-07-17 17:14:14', '添加School', 'jiange_admin', '7', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('501', '2016-07-17 17:14:14', null, null, '2016-07-17 17:14:14', '{name=开封中学,sunstation=0,countyid=10,description=开封中学,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('502', '2016-07-17 17:14:21', null, null, '2016-07-17 17:14:21', '更新School', 'jiange_admin', '7', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('503', '2016-07-17 17:14:21', null, null, '2016-07-17 17:14:21', '{name=开封中学,sunstation=1,countyid=10,description=开封中学,id=7}', 'jiange_admin', '7', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('504', '2016-07-17 17:14:29', null, null, '2016-07-17 17:14:29', '更新School', 'jiange_admin', '6', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('505', '2016-07-17 17:14:29', null, null, '2016-07-17 17:14:29', '{name=武连职中,sunstation=1,countyid=8,description=武连职中,id=6}', 'jiange_admin', '6', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('506', '2016-07-17 17:14:35', null, null, '2016-07-17 17:14:35', '更新School', 'jiange_admin', '6', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('507', '2016-07-17 17:14:35', null, null, '2016-07-17 17:14:35', '{name=武连职中,sunstation=1,countyid=8,description=武连职中,id=6}', 'jiange_admin', '6', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('508', '2016-07-17 17:14:41', null, null, '2016-07-17 17:14:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('509', '2016-07-17 17:14:41', null, null, '2016-07-17 17:14:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('510', '2016-07-17 17:14:50', null, null, '2016-07-17 17:14:50', '更新School', 'jiange_admin', '7', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('511', '2016-07-17 17:14:50', null, null, '2016-07-17 17:14:50', '{name=开封中学,sunstation=1,countyid=10,description=开封中学,id=7}', 'jiange_admin', '7', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('512', '2016-07-17 17:15:23', null, null, '2016-07-17 17:15:23', '更新School', 'jiange_admin', '7', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('513', '2016-07-17 17:15:23', null, null, '2016-07-17 17:15:23', '{name=开封中学,sunstation=1,countyid=10,description=开封中学,id=7}', 'jiange_admin', '7', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('514', '2016-07-17 17:15:31', null, null, '2016-07-17 17:15:31', '更新School', 'jiange_admin', '6', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('515', '2016-07-17 17:15:31', null, null, '2016-07-17 17:15:31', '{name=武连职中,sunstation=1,countyid=8,description=武连职中,id=6}', 'jiange_admin', '6', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('516', '2016-07-17 17:18:42', null, null, '2016-07-17 17:18:42', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('517', '2016-07-17 17:18:42', null, null, '2016-07-17 17:18:42', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('518', '2016-07-17 17:18:42', null, null, '2016-07-17 17:18:42', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('519', '2016-07-17 17:18:42', null, null, '2016-07-17 17:18:42', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('520', '2016-07-17 17:18:58', null, null, '2016-07-17 17:18:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('521', '2016-07-17 17:18:58', null, null, '2016-07-17 17:18:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('522', '2016-07-17 17:19:04', null, null, '2016-07-17 17:19:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('523', '2016-07-17 17:19:04', null, null, '2016-07-17 17:19:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('524', '2016-07-17 17:19:04', null, null, '2016-07-17 17:19:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('525', '2016-07-17 17:19:04', null, null, '2016-07-17 17:19:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('526', '2016-07-17 17:31:22', null, null, '2016-07-17 17:31:22', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('527', '2016-07-17 18:05:50', null, null, '2016-07-17 18:05:50', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('528', '2016-07-17 18:06:04', null, null, '2016-07-17 18:06:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('529', '2016-07-17 18:06:04', null, null, '2016-07-17 18:06:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('530', '2016-07-17 18:06:04', null, null, '2016-07-17 18:06:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('531', '2016-07-17 18:06:04', null, null, '2016-07-17 18:06:04', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('532', '2016-07-17 18:06:17', null, null, '2016-07-17 18:06:17', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('533', '2016-07-17 18:06:17', null, null, '2016-07-17 18:06:17', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('534', '2016-07-17 18:18:00', null, null, '2016-07-17 18:18:00', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('535', '2016-07-17 18:18:55', null, null, '2016-07-17 18:18:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('536', '2016-07-17 18:18:55', null, null, '2016-07-17 18:18:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('537', '2016-07-17 18:18:55', null, null, '2016-07-17 18:18:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('538', '2016-07-17 18:18:55', null, null, '2016-07-17 18:18:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('539', '2016-07-17 18:20:36', null, null, '2016-07-17 18:20:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('540', '2016-07-17 18:20:36', null, null, '2016-07-17 18:20:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('541', '2016-07-17 18:20:36', null, null, '2016-07-17 18:20:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('542', '2016-07-17 18:20:36', null, null, '2016-07-17 18:20:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('543', '2016-07-17 18:20:39', null, null, '2016-07-17 18:20:39', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('544', '2016-07-17 18:20:39', null, null, '2016-07-17 18:20:39', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('545', '2016-07-17 18:20:39', null, null, '2016-07-17 18:20:39', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('546', '2016-07-17 18:20:39', null, null, '2016-07-17 18:20:39', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('547', '2016-07-17 18:23:06', null, null, '2016-07-17 18:23:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('548', '2016-07-17 18:23:06', null, null, '2016-07-17 18:23:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('549', '2016-07-17 18:23:06', null, null, '2016-07-17 18:23:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('550', '2016-07-17 18:23:06', null, null, '2016-07-17 18:23:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('551', '2016-07-17 18:26:18', null, null, '2016-07-17 18:26:18', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('552', '2016-07-17 18:26:33', null, null, '2016-07-17 18:26:33', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('553', '2016-07-17 18:26:33', null, null, '2016-07-17 18:26:33', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('554', '2016-07-17 18:26:33', null, null, '2016-07-17 18:26:33', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('555', '2016-07-17 18:26:33', null, null, '2016-07-17 18:26:33', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('556', '2016-07-17 18:26:43', null, null, '2016-07-17 18:26:43', '更新GroupMember', 'jiange_admin', '1', 'GroupMember', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('557', '2016-07-17 18:26:43', null, null, '2016-07-17 18:26:43', '{officeid=1,groupid=1,grouptitleid=1,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/gmember/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('558', '2016-07-17 18:28:30', null, null, '2016-07-17 18:28:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('559', '2016-07-17 18:28:30', null, null, '2016-07-17 18:28:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('560', '2016-07-17 18:28:30', null, null, '2016-07-17 18:28:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('561', '2016-07-17 18:28:30', null, null, '2016-07-17 18:28:30', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('562', '2016-07-17 18:28:58', null, null, '2016-07-17 18:28:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('563', '2016-07-17 18:28:58', null, null, '2016-07-17 18:28:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('564', '2016-07-17 18:28:58', null, null, '2016-07-17 18:28:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('565', '2016-07-17 18:28:58', null, null, '2016-07-17 18:28:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('566', '2016-07-17 18:31:36', null, null, '2016-07-17 18:31:36', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('567', '2016-07-17 18:31:47', null, null, '2016-07-17 18:31:47', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('568', '2016-07-17 18:31:48', null, null, '2016-07-17 18:31:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('569', '2016-07-17 18:31:48', null, null, '2016-07-17 18:31:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('570', '2016-07-17 18:31:48', null, null, '2016-07-17 18:31:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('571', '2016-07-17 18:31:59', null, null, '2016-07-17 18:31:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('572', '2016-07-17 18:31:59', null, null, '2016-07-17 18:31:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('573', '2016-07-17 18:31:59', null, null, '2016-07-17 18:31:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('574', '2016-07-17 18:31:59', null, null, '2016-07-17 18:31:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('575', '2016-07-17 18:32:10', null, null, '2016-07-17 18:32:10', '添加GroupMember', 'jiange_admin', '1', 'GroupMember', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('576', '2016-07-17 18:32:10', null, null, '2016-07-17 18:32:10', '{officeid=1,groupid=1,grouptitleid=2,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/gmember/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('577', '2016-07-17 18:32:27', null, null, '2016-07-17 18:32:27', '添加GroupMember', 'jiange_admin', '2', 'GroupMember', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('578', '2016-07-17 18:32:27', null, null, '2016-07-17 18:32:27', '{officeid=2,groupid=1,grouptitleid=3,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/gmember/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('579', '2016-07-17 18:32:37', null, null, '2016-07-17 18:32:37', '添加GroupMember', 'jiange_admin', '3', 'GroupMember', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('580', '2016-07-17 18:32:37', null, null, '2016-07-17 18:32:37', '{officeid=3,groupid=1,grouptitleid=3,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmember/index?pid=46&menuId=46', 'POST', '/website/gmember/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('581', '2016-07-17 18:32:43', null, null, '2016-07-17 18:32:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('582', '2016-07-17 18:32:43', null, null, '2016-07-17 18:32:43', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/gmanage/index?pid=45&menuId=45', 'POST', '/website/ajax/grouproot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('583', '2016-07-17 18:32:51', null, null, '2016-07-17 18:32:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('584', '2016-07-17 18:32:51', null, null, '2016-07-17 18:32:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('585', '2016-07-17 18:32:51', null, null, '2016-07-17 18:32:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('586', '2016-07-17 18:32:51', null, null, '2016-07-17 18:32:51', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('587', '2016-07-17 18:33:08', null, null, '2016-07-17 18:33:08', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('588', '2016-07-17 18:33:08', null, null, '2016-07-17 18:33:08', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('589', '2016-07-17 18:33:19', null, null, '2016-07-17 18:33:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('590', '2016-07-17 18:33:19', null, null, '2016-07-17 18:33:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/ajax/countyroot', '1', 'admin');
INSERT INTO `operation_log` VALUES ('591', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('592', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('593', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('594', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('595', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('596', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('597', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('598', '2016-07-17 18:34:58', null, null, '2016-07-17 18:34:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('599', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('600', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('601', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('602', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('603', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('604', '2016-07-17 18:35:06', null, null, '2016-07-17 18:35:06', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('605', '2016-07-17 18:36:55', null, null, '2016-07-17 18:36:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('606', '2016-07-17 18:36:55', null, null, '2016-07-17 18:36:55', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('607', '2016-07-17 18:36:58', null, null, '2016-07-17 18:36:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('608', '2016-07-17 18:36:58', null, null, '2016-07-17 18:36:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('609', '2016-07-17 18:37:03', null, null, '2016-07-17 18:37:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('610', '2016-07-17 18:37:03', null, null, '2016-07-17 18:37:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('611', '2016-07-17 18:37:10', null, null, '2016-07-17 18:37:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('612', '2016-07-17 18:37:10', null, null, '2016-07-17 18:37:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('613', '2016-07-17 18:39:20', null, null, '2016-07-17 18:39:20', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('614', '2016-07-17 18:39:44', null, null, '2016-07-17 18:39:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('615', '2016-07-17 18:39:44', null, null, '2016-07-17 18:39:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('616', '2016-07-17 18:39:44', null, null, '2016-07-17 18:39:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgpostall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('617', '2016-07-17 18:39:44', null, null, '2016-07-17 18:39:44', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/ouser/index?pid=44&menuId=44', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('618', '2016-07-17 18:40:02', null, null, '2016-07-17 18:40:02', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('619', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/sunschool', '1', 'admin');
INSERT INTO `operation_log` VALUES ('620', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('621', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('622', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('623', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('624', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('625', '2016-07-17 18:40:03', null, null, '2016-07-17 18:40:03', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/wsschedule/index?pid=53&menuId=53', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('626', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('627', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('628', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('629', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('630', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('631', '2016-07-17 18:40:10', null, null, '2016-07-17 18:40:10', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/orgall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('632', '2016-07-17 18:40:11', null, null, '2016-07-17 18:40:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('633', '2016-07-17 18:40:11', null, null, '2016-07-17 18:40:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/cpschedule/index?pid=52&menuId=52', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('634', '2016-07-17 18:40:22', null, null, '2016-07-17 18:40:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('635', '2016-07-17 18:40:22', null, null, '2016-07-17 18:40:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('636', '2016-07-17 18:40:27', null, null, '2016-07-17 18:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('637', '2016-07-17 18:40:27', null, null, '2016-07-17 18:40:27', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/firstnet/index?pid=48&menuId=48', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('638', '2016-07-17 18:40:31', null, null, '2016-07-17 18:40:31', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('639', '2016-07-17 18:40:31', null, null, '2016-07-17 18:40:31', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/ajax/areaall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('640', '2016-07-17 18:40:59', null, null, '2016-07-17 18:40:59', '添加ThreeNetwork', 'jiange_admin', '1', 'ThreeNetwork', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('641', '2016-07-17 18:40:59', null, null, '2016-07-17 18:40:59', '{areaid=2,categoryid=3,description=城北片区,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/threenet/index?pid=50&menuId=50', 'POST', '/website/threenet/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('642', '2016-07-17 18:41:05', null, null, '2016-07-17 18:41:05', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('643', '2016-07-17 18:41:05', null, null, '2016-07-17 18:41:05', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/website/twonet/index?pid=49&menuId=49', 'POST', '/website/ajax/officeall', '1', 'admin');

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(150) DEFAULT NULL,
  `parentid` bigint(20) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '2016-07-15 22:05:36', null, null, '2016-07-15 22:05:37', '检察院', '00000000000000000000');
INSERT INTO `organization` VALUES ('2', '2016-07-15 22:05:57', null, null, '2016-07-15 22:05:57', '政治处', '00000000000000000000');
INSERT INTO `organization` VALUES ('3', '2016-07-15 22:06:07', null, null, '2016-07-15 22:06:07', '反贪局', '00000000000000000000');
INSERT INTO `organization` VALUES ('4', '2016-07-15 22:06:17', null, null, '2016-07-15 22:06:17', '反渎局', '00000000000000000000');
INSERT INTO `organization` VALUES ('5', '2016-07-15 22:06:27', null, null, '2016-07-15 22:06:27', '机关党委', '00000000000000000000');
INSERT INTO `organization` VALUES ('6', '2016-07-15 22:06:44', null, null, '2016-07-15 22:06:44', '检委会', '00000000000000000000');
INSERT INTO `organization` VALUES ('7', '2016-07-15 22:06:56', null, null, '2016-07-15 22:06:56', '控申科', '00000000000000000000');
INSERT INTO `organization` VALUES ('8', '2016-07-15 22:07:06', null, null, '2016-07-15 22:07:06', '办公室', '00000000000000000000');
INSERT INTO `organization` VALUES ('9', '2016-07-15 22:07:22', null, null, '2016-07-15 22:07:22', '公诉科', '00000000000000000000');
INSERT INTO `organization` VALUES ('10', '2016-07-15 22:07:51', null, null, '2016-07-15 22:07:51', '刑事执行检察局', '00000000000000000000');
INSERT INTO `organization` VALUES ('11', '2016-07-15 22:08:03', null, null, '2016-07-15 22:08:03', '民行科', '00000000000000000000');
INSERT INTO `organization` VALUES ('12', '2016-07-15 22:08:26', null, null, '2016-07-15 22:08:26', '案管办', '00000000000000000000');
INSERT INTO `organization` VALUES ('13', '2016-07-15 22:08:42', null, null, '2016-07-15 22:08:42', '预防科', '00000000000000000000');
INSERT INTO `organization` VALUES ('14', '2016-07-15 22:08:50', null, null, '2016-07-15 22:08:50', '法警队', '00000000000000000000');
INSERT INTO `organization` VALUES ('15', '2016-07-15 22:09:27', null, null, '2016-07-15 22:09:27', '侦监科', '00000000000000000000');
INSERT INTO `organization` VALUES ('16', '2016-07-15 22:09:40', null, null, '2016-07-15 22:09:40', '监察科', '00000000000000000000');
INSERT INTO `organization` VALUES ('17', '2016-07-15 23:28:33', null, null, '2016-07-15 23:28:33', '案件管理办公室', '00000000000000000000');

-- ----------------------------
-- Table structure for orgpost
-- ----------------------------
DROP TABLE IF EXISTS `orgpost`;
CREATE TABLE `orgpost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgpost
-- ----------------------------
INSERT INTO `orgpost` VALUES ('1', '2016-07-15 22:11:31', null, null, '2016-07-15 22:11:31', '检察长');
INSERT INTO `orgpost` VALUES ('2', '2016-07-15 22:11:40', null, null, '2016-07-15 22:11:40', '副检察长');
INSERT INTO `orgpost` VALUES ('3', '2016-07-15 22:12:52', null, null, '2016-07-15 22:12:52', '书记');
INSERT INTO `orgpost` VALUES ('4', '2016-07-15 22:12:06', null, null, '2016-07-15 22:12:06', '局长');
INSERT INTO `orgpost` VALUES ('5', '2016-07-15 22:12:32', null, null, '2016-07-15 22:12:32', '纪检组长');
INSERT INTO `orgpost` VALUES ('6', '2016-07-15 22:13:13', null, null, '2016-07-15 22:13:13', '主任');
INSERT INTO `orgpost` VALUES ('7', '2016-07-15 22:13:23', null, null, '2016-07-15 22:13:23', '政委');
INSERT INTO `orgpost` VALUES ('8', '2016-07-15 22:13:43', null, null, '2016-07-15 22:13:43', '副主任');
INSERT INTO `orgpost` VALUES ('9', '2016-07-15 22:13:56', null, null, '2016-07-15 22:13:56', '科长');
INSERT INTO `orgpost` VALUES ('10', '2016-07-15 22:14:16', null, null, '2016-07-15 22:14:16', '专职委员');
INSERT INTO `orgpost` VALUES ('11', '2016-07-15 22:14:34', null, null, '2016-07-15 22:14:34', '副科长');
INSERT INTO `orgpost` VALUES ('12', '2016-07-15 22:15:44', null, null, '2016-07-15 22:15:44', '职员');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext COLLATE utf8_bin,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `system_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_from` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '2014-08-26 17:39:34', null, '2016-07-15 22:11:06', '', '系统信息设置', '0', '5', '', 'BVCS', 'URI', '', '');
INSERT INTO `permission` VALUES ('2', '2014-08-26 17:39:47', null, '2015-11-29 11:37:22', null, '用户管理', '1', '2', '', 'BVCS', 'URI', 'user/userlist?menuId=2&menuId=2', null);
INSERT INTO `permission` VALUES ('3', '2014-08-26 17:55:15', null, '2015-11-29 11:37:22', null, '角色管理', '1', '3', '', 'BVCS', 'URI', 'role/rolelist?menuId=3&menuId=3', null);
INSERT INTO `permission` VALUES ('5', '2014-08-26 17:56:01', null, '2015-11-29 11:37:22', null, '菜单管理', '1', '4', '', 'BVCS', 'URI', 'permission/permissionlist?menuId=5&menuId=5', null);
INSERT INTO `permission` VALUES ('6', '2014-08-26 17:39:34', null, '2016-07-15 22:45:38', '', '基本信息管理', '0', '5', '', 'BVCS', 'URI', '', '');
INSERT INTO `permission` VALUES ('23', '2014-11-18 11:37:17', null, '2015-11-29 11:37:22', null, '操作日志', '1', '1', 'valid', 'BVCS', 'URI', 'operationLog/operationLoglist?menuId=23&menuId=23', null);
INSERT INTO `permission` VALUES ('24', '2015-11-15 17:25:40', null, '2015-11-15 17:25:40', null, '新建菜单', '1', '0', 'valid', 'BVCS', 'URI', 'index/welcome', null);
INSERT INTO `permission` VALUES ('25', '2016-06-21 11:12:49', null, '2016-06-21 11:33:56', null, '乡镇信息管理', '6', '1', '', 'BVCS', 'URI', 'county/index', null);
INSERT INTO `permission` VALUES ('26', '2016-06-21 11:23:09', null, '2016-07-15 23:33:48', null, '社区村庄管理', '6', '1', '', 'BVCS', 'URI', 'village/index', null);
INSERT INTO `permission` VALUES ('27', '2016-06-21 11:23:47', null, '2016-06-21 11:33:45', null, '学校信息管理', '6', '1', '', 'BVCS', 'URI', 'school/index', null);
INSERT INTO `permission` VALUES ('28', '2016-06-21 11:24:37', null, '2016-07-15 22:46:23', null, '科室信息管理', '6', '1', '', 'BVCS', 'URI', 'org/index', null);
INSERT INTO `permission` VALUES ('29', '2016-06-21 11:27:56', null, '2016-06-21 11:37:00', null, '信访平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('30', '2016-06-21 11:28:05', null, '2016-06-21 11:33:26', null, '接访信息', '29', '1', 'valid', 'BVCS', 'URI', 'letter/index', null);
INSERT INTO `permission` VALUES ('31', '2016-06-21 11:31:53', null, '2016-06-21 11:33:19', null, '回复接访信息', '29', '1', '', 'BVCS', 'URI', 'letterreply/index', null);
INSERT INTO `permission` VALUES ('32', '2016-06-21 11:34:29', null, '2016-07-15 22:46:31', null, '职务信息管理', '6', '1', '', 'BVCS', 'URI', 'orgpost/index', null);
INSERT INTO `permission` VALUES ('34', '2016-06-21 11:36:52', null, '2016-06-21 11:36:52', null, '维稳平台', null, '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('35', '2016-06-21 11:37:56', null, '2016-06-21 11:37:56', null, '监督平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('38', '2016-06-21 11:41:15', null, '2016-07-15 23:19:04', null, '工作日程表管理', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('39', '2016-06-21 11:42:24', null, '2016-06-21 11:44:33', null, '公共信息', '35', '5', 'valid', 'BVCS', 'URI', 'superv/inex', null);
INSERT INTO `permission` VALUES ('40', '2016-06-21 11:44:24', null, '2016-06-21 11:44:24', null, '回复公共信息', '35', '5', '', 'BVCS', 'URI', 'supervreply/index', null);
INSERT INTO `permission` VALUES ('41', '2016-06-21 11:47:58', null, '2016-06-21 11:47:58', null, '维稳平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('42', '2016-06-21 11:49:12', null, '2016-07-15 22:56:34', null, '重点关注人群分类', '41', '1', '', 'BVCS', 'URI', 'caringcategory/index', null);
INSERT INTO `permission` VALUES ('43', '2016-06-21 11:50:17', null, '2016-07-15 22:57:42', null, '重点关注人员信息', '41', '1', '', 'BVCS', 'URI', 'caringpeople/index', null);
INSERT INTO `permission` VALUES ('44', '2016-07-15 22:17:53', null, '2016-07-15 22:46:51', null, '工作人员信息管理', '6', '5', '', 'BVCS', 'URI', 'ouser/index', null);
INSERT INTO `permission` VALUES ('45', '2016-07-15 22:47:58', null, '2016-07-15 22:55:33', null, '工作组设置', '51', '5', '', 'BVCS', 'URI', 'gmanage/index', null);
INSERT INTO `permission` VALUES ('46', '2016-07-15 22:48:57', null, '2016-07-15 22:53:55', null, '工作组成员管理', '51', '5', '', 'BVCS', 'URI', 'gmember/index', null);
INSERT INTO `permission` VALUES ('47', '2016-07-15 22:49:57', null, '2016-07-15 22:49:57', null, '网格化信息管理', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('48', '2016-07-15 22:51:03', null, '2016-07-15 22:51:03', null, '一级网络管理', '47', '5', '', 'BVCS', 'URI', 'firstnet/index', null);
INSERT INTO `permission` VALUES ('49', '2016-07-15 22:51:52', null, '2016-07-15 22:51:52', null, '二级网络管理', '47', '5', '', 'BVCS', 'URI', 'twonet/index', null);
INSERT INTO `permission` VALUES ('50', '2016-07-15 22:52:31', null, '2016-07-15 22:52:31', null, '三级网络管理', '47', '5', '', 'BVCS', 'URI', 'threenet/index', null);
INSERT INTO `permission` VALUES ('51', '2016-07-15 22:53:11', null, '2016-07-15 22:53:11', null, '工作组管理', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('52', '2016-07-15 23:20:30', null, '2016-07-15 23:20:30', null, '民生检察联络点工作日程表', '38', '5', '', 'BVCS', 'URI', 'cpschedule/index', null);
INSERT INTO `permission` VALUES ('53', '2016-07-15 23:21:42', null, '2016-07-15 23:21:42', null, '青少年阳光工作站工作日程表', '38', '5', '', 'BVCS', 'URI', 'wsschedule/index', null);
INSERT INTO `permission` VALUES ('54', '2016-07-15 23:34:36', null, '2016-07-15 23:34:36', null, '片区信息管理', '6', '5', '', 'BVCS', 'URI', 'areamanage/index', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext COLLATE utf8_bin,
  `is_system` bit(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `data_from` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2014-08-26 17:50:22', null, '2014-08-26 17:50:22', 0xE7B3BBE7BB9FE7AEA1E79086E59198, '', '系统管理员', null, null);
INSERT INTO `role` VALUES ('2', '2014-08-26 17:50:46', null, '2014-08-27 11:04:33', 0xE4B88AE4BCA0E4BABAE59198, '', '上传人员', null, null);
INSERT INTO `role` VALUES ('3', '2014-08-27 11:05:20', null, '2014-08-27 11:05:20', 0xE58F91E5B883E4BABAE59198, '', '发布人员', null, null);
INSERT INTO `role` VALUES ('4', '2014-08-27 11:06:10', null, '2014-08-27 11:06:10', 0xE8BF90E890A5E4B893E59198, '', '运营专员', null, null);
INSERT INTO `role` VALUES ('5', '2014-08-27 11:06:28', null, '2014-08-27 11:06:28', 0xE5AEA1E6A0B8E4BABAE59198, '', '审核人员', null, null);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role` bigint(20) NOT NULL,
  `permissions` bigint(20) NOT NULL,
  KEY `FKBD40D538374EEBE7` (`role`),
  KEY `FKBD40D538B5413D0E` (`permissions`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permissions`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('1', '5');
INSERT INTO `role_permission` VALUES ('1', '23');
INSERT INTO `role_permission` VALUES ('1', '25');
INSERT INTO `role_permission` VALUES ('1', '26');
INSERT INTO `role_permission` VALUES ('1', '27');
INSERT INTO `role_permission` VALUES ('1', '28');
INSERT INTO `role_permission` VALUES ('1', '30');
INSERT INTO `role_permission` VALUES ('1', '31');
INSERT INTO `role_permission` VALUES ('1', '32');
INSERT INTO `role_permission` VALUES ('1', '39');
INSERT INTO `role_permission` VALUES ('1', '40');
INSERT INTO `role_permission` VALUES ('1', '42');
INSERT INTO `role_permission` VALUES ('1', '43');
INSERT INTO `role_permission` VALUES ('1', '44');
INSERT INTO `role_permission` VALUES ('1', '45');
INSERT INTO `role_permission` VALUES ('1', '46');
INSERT INTO `role_permission` VALUES ('1', '48');
INSERT INTO `role_permission` VALUES ('1', '49');
INSERT INTO `role_permission` VALUES ('1', '50');
INSERT INTO `role_permission` VALUES ('1', '52');
INSERT INTO `role_permission` VALUES ('1', '53');
INSERT INTO `role_permission` VALUES ('1', '54');

-- ----------------------------
-- Table structure for ruser
-- ----------------------------
DROP TABLE IF EXISTS `ruser`;
CREATE TABLE `ruser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activation_code` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `all_video_count` int(11) DEFAULT NULL,
  `attention_count` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `day_popularity` double(32,2) DEFAULT '0.00',
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fans_count` int(11) DEFAULT NULL,
  `home_pic` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) NOT NULL,
  `is_locked` bit(1) NOT NULL,
  `locked_date` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_failure_count` int(11) DEFAULT NULL,
  `login_ip` varchar(128) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `sign_sum` int(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  `third_from` varchar(255) DEFAULT NULL,
  `third_userame` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `video_count` int(11) DEFAULT NULL,
  `vstat` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ruser
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `countyid` bigint(20) DEFAULT NULL,
  `description` longtext,
  `name` varchar(150) DEFAULT NULL,
  `villageid` bigint(20) DEFAULT NULL,
  `issun` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '2016-07-15 23:52:30', null, null, '2016-07-15 23:52:30', '23', '剑门关中学', '剑门关中学', '0', '1');
INSERT INTO `school` VALUES ('2', '2016-07-15 23:53:04', null, null, '2016-07-15 23:53:04', '1', '剑阁职中', '剑阁职中', '0', '1');
INSERT INTO `school` VALUES ('3', '2016-07-15 23:53:18', null, null, '2016-07-15 23:53:18', '1', '剑阁中学', '剑阁中学', '0', '1');
INSERT INTO `school` VALUES ('4', '2016-07-15 23:53:55', null, null, '2016-07-15 23:53:55', '1', '剑州中学', '剑州中学', '0', '1');
INSERT INTO `school` VALUES ('5', '2016-07-15 23:54:13', null, null, '2016-07-15 23:54:13', '7', '柳沟中学', '柳沟中学', '0', '1');
INSERT INTO `school` VALUES ('6', '2016-07-17 17:15:31', null, null, '2016-07-17 17:15:31', '8', '武连职中', '武连职中', '0', '0');
INSERT INTO `school` VALUES ('7', '2016-07-17 17:15:22', null, null, '2016-07-17 17:15:23', '10', '开封中学', '开封中学', '0', '0');

-- ----------------------------
-- Table structure for supervision
-- ----------------------------
DROP TABLE IF EXISTS `supervision`;
CREATE TABLE `supervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `eventtime` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supervision
-- ----------------------------

-- ----------------------------
-- Table structure for supervision_reply
-- ----------------------------
DROP TABLE IF EXISTS `supervision_reply`;
CREATE TABLE `supervision_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(50) DEFAULT NULL,
  `replyuserid` bigint(20) DEFAULT NULL,
  `supervid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supervision_reply
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for three_network
-- ----------------------------
DROP TABLE IF EXISTS `three_network`;
CREATE TABLE `three_network` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `areaid` bigint(20) DEFAULT NULL,
  `countyids` varchar(255) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of three_network
-- ----------------------------
INSERT INTO `three_network` VALUES ('1', '2016-07-17 18:40:58', null, null, '2016-07-17 18:40:58', '2', null, '城北片区');

-- ----------------------------
-- Table structure for two_network
-- ----------------------------
DROP TABLE IF EXISTS `two_network`;
CREATE TABLE `two_network` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `contactids` varchar(200) DEFAULT NULL,
  `leadid` bigint(20) DEFAULT NULL,
  `officeids` varchar(200) DEFAULT NULL,
  `orgids` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of two_network
-- ----------------------------
INSERT INTO `two_network` VALUES ('1', '2016-07-15 23:27:42', null, null, '2016-07-15 23:27:42', '', '2', '3,4', '6,7');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activation_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `is_enabled` bit(1) NOT NULL,
  `is_locked` bit(1) NOT NULL,
  `locked_date` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_failure_count` int(11) DEFAULT NULL,
  `login_ip` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2014-07-29 15:16:11', '2016-07-17 18:39:20', null, null, '', '', '\0', null, '2016-07-17 18:39:20', '0', null, null, 'e3ceb5881a0a1fdaad01296d7554868d', null, 'adminuser', 'admin', null, null);

-- ----------------------------
-- Table structure for user_in_charge
-- ----------------------------
DROP TABLE IF EXISTS `user_in_charge`;
CREATE TABLE `user_in_charge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `countyid` bigint(20) DEFAULT NULL,
  `townid` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `villageid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_in_charge
-- ----------------------------

-- ----------------------------
-- Table structure for user_org
-- ----------------------------
DROP TABLE IF EXISTS `user_org`;
CREATE TABLE `user_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `countyid` bigint(20) DEFAULT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  `townid` bigint(20) DEFAULT NULL,
  `villageid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_org
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user` bigint(20) NOT NULL,
  `roles` bigint(20) NOT NULL,
  KEY `FK_jkxpywaiv5wun80y6eh0lhv6n` (`roles`),
  KEY `FK_g8oupfshc5isqq81rjdsiwns0` (`user`),
  CONSTRAINT `FK_g8oupfshc5isqq81rjdsiwns0` FOREIGN KEY (`user`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_jkxpywaiv5wun80y6eh0lhv6n` FOREIGN KEY (`roles`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');

-- ----------------------------
-- Table structure for village
-- ----------------------------
DROP TABLE IF EXISTS `village`;
CREATE TABLE `village` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `countyid` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village
-- ----------------------------
INSERT INTO `village` VALUES ('1', '2016-07-17 16:51:15', null, null, '2016-07-17 16:51:15', '2', '双剑村', '双剑村');
INSERT INTO `village` VALUES ('2', '2016-07-17 16:51:30', null, null, '2016-07-17 16:51:30', '2', '剑西村', '剑西村');
INSERT INTO `village` VALUES ('3', '2016-07-17 16:51:42', null, null, '2016-07-17 16:51:42', '2', '中坪村', '中坪村');
INSERT INTO `village` VALUES ('4', '2016-07-17 16:51:54', null, null, '2016-07-17 16:51:54', '2', '江东村', '江东村');
INSERT INTO `village` VALUES ('5', '2016-07-17 16:52:06', null, null, '2016-07-17 16:52:06', '2', '鼓楼社区', '鼓楼社区');
INSERT INTO `village` VALUES ('6', '2016-07-17 16:52:16', null, null, '2016-07-17 16:52:16', '2', '小玲玲社区', '小玲玲社区');
INSERT INTO `village` VALUES ('7', '2016-07-17 16:52:32', null, null, '2016-07-17 16:52:32', '3', '下寺村', '下寺村');
INSERT INTO `village` VALUES ('8', '2016-07-17 16:52:44', null, null, '2016-07-17 16:52:44', '3', '友于村', '友于村');
INSERT INTO `village` VALUES ('9', '2016-07-17 16:52:57', null, null, '2016-07-17 16:52:57', '3', '沙溪坝社区', '沙溪坝社区');

-- ----------------------------
-- Table structure for work_station_schedule
-- ----------------------------
DROP TABLE IF EXISTS `work_station_schedule`;
CREATE TABLE `work_station_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `leadid` bigint(20) DEFAULT NULL,
  `officeid` bigint(20) DEFAULT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  `schoolid` bigint(20) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_station_schedule
-- ----------------------------
INSERT INTO `work_station_schedule` VALUES ('1', '2016-07-15 23:59:14', null, null, '2016-07-15 23:59:14', '4', '4', '9', '1', '每月第二周 星期三');
