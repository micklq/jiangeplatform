/*
Navicat MySQL Data Transfer

Source Server         : 115.28.111.121
Source Server Version : 50173
Source Host           : 115.28.111.121:3306
Source Database       : jiange

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-07-01 23:03:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `countyid` bigint(20) DEFAULT NULL,
  `description` longtext,
  `name` varchar(50) DEFAULT NULL,
  `townid` bigint(20) DEFAULT NULL,
  `villageid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1', '2016-06-26 18:34:00', null, null, '2016-06-26 18:34:00', '1', '鼓楼社区', '鼓楼社区', '0', '0');
INSERT INTO `community` VALUES ('2', '2016-06-26 18:33:53', null, null, '2016-06-26 18:33:54', '1', '小玲玲社区', '小玲玲社区', '0', '0');
INSERT INTO `community` VALUES ('3', '2016-06-26 18:34:08', null, null, '2016-06-26 18:34:08', '1', '卧龙社区', '卧龙社区', '0', '0');
INSERT INTO `community` VALUES ('4', '2016-06-26 18:34:29', null, null, '2016-06-26 18:34:29', '1', '较场坝社区', '较场坝社区', '0', '0');

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
INSERT INTO `county` VALUES ('1', '2016-06-26 09:36:44', null, null, '2016-06-26 09:36:44', '剑阁县', '剑阁县', null);
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
INSERT INTO `county` VALUES ('58', '2016-06-26 18:27:32', null, null, '2016-06-26 18:27:32', '上寺乡', '上寺乡', '1');

-- ----------------------------
-- Table structure for danger_people
-- ----------------------------
DROP TABLE IF EXISTS `danger_people`;
CREATE TABLE `danger_people` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `name` varchar(100) DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of danger_people
-- ----------------------------
INSERT INTO `danger_people` VALUES ('1', '2016-06-26 11:40:53', null, null, '2016-06-26 11:40:53', '张三', '张三', '1');

-- ----------------------------
-- Table structure for danger_people_category
-- ----------------------------
DROP TABLE IF EXISTS `danger_people_category`;
CREATE TABLE `danger_people_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of danger_people_category
-- ----------------------------
INSERT INTO `danger_people_category` VALUES ('1', '2016-06-26 11:36:16', null, null, '2016-06-26 11:36:16', '精神病人', null, '剑阁县精神病人');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '2016-06-20 13:54:28', null, null, '2016-06-20 13:54:28', 'yigeaemail', 'yigeafname', 'yigealname');
INSERT INTO `employee` VALUES ('2', '2016-06-20 14:01:25', null, null, '2016-06-20 14:01:25', 'snmmdemail', 'snmmdfname', 'snmmdlname');
INSERT INTO `employee` VALUES ('3', '2016-06-20 14:08:27', null, null, '2016-06-20 14:08:27', 'c490aemail', 'c490afname', 'c490alname');

-- ----------------------------
-- Table structure for ftp_servers
-- ----------------------------
DROP TABLE IF EXISTS `ftp_servers`;
CREATE TABLE `ftp_servers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `ip` varchar(20) DEFAULT NULL,
  `is_default` bit(1) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ftp_servers
-- ----------------------------
INSERT INTO `ftp_servers` VALUES ('38', '2015-12-14 10:39:41', null, null, '2015-12-14 10:39:41', '', '121.43.121.166', '', '啊啊啊', '123456', '21', 'FTP');

-- ----------------------------
-- Table structure for keep_peace
-- ----------------------------
DROP TABLE IF EXISTS `keep_peace`;
CREATE TABLE `keep_peace` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` bigint(20) DEFAULT NULL,
  `data_from` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_peace
-- ----------------------------

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
  `eventtime` datetime DEFAULT NULL,
  `location` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter_petition
-- ----------------------------
INSERT INTO `letter_petition` VALUES ('1', '2016-06-26 11:41:17', null, null, '2016-06-26 11:41:17', '剑阁县信访2016', null, null, '信访2016');
INSERT INTO `letter_petition` VALUES ('2', '2016-06-26 11:42:01', null, null, '2016-06-26 11:42:01', '剑阁县信访2-2016', null, null, '信访2-2016');

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
  `name` varchar(50) DEFAULT NULL,
  `letterid` bigint(20) DEFAULT NULL,
  `replyuserid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter_reply
-- ----------------------------
INSERT INTO `letter_reply` VALUES ('1', '2016-06-26 11:43:29', null, null, '2016-06-26 11:43:29', '剑阁县信访批复2016', '信访批复2016', '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=6958 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('6429', '2016-06-22 17:21:54', null, null, '2016-06-22 17:21:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6430', '2016-06-22 17:22:24', null, null, '2016-06-22 17:22:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6431', '2016-06-22 17:22:54', null, null, '2016-06-22 17:22:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6432', '2016-06-23 23:14:49', null, null, '2016-06-23 23:14:49', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6433', '2016-06-23 23:15:19', null, null, '2016-06-23 23:15:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6434', '2016-06-23 23:15:49', null, null, '2016-06-23 23:15:49', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6435', '2016-06-23 23:16:19', null, null, '2016-06-23 23:16:19', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6436', '2016-06-23 23:17:11', null, null, '2016-06-23 23:17:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6437', '2016-06-23 23:17:41', null, null, '2016-06-23 23:17:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6438', '2016-06-23 23:18:11', null, null, '2016-06-23 23:18:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6439', '2016-06-23 23:18:41', null, null, '2016-06-23 23:18:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6440', '2016-06-23 23:19:11', null, null, '2016-06-23 23:19:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6441', '2016-06-23 23:19:41', null, null, '2016-06-23 23:19:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6442', '2016-06-23 23:20:11', null, null, '2016-06-23 23:20:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6443', '2016-06-23 23:20:41', null, null, '2016-06-23 23:20:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6444', '2016-06-23 23:21:11', null, null, '2016-06-23 23:21:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6445', '2016-06-23 23:21:41', null, null, '2016-06-23 23:21:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6446', '2016-06-23 23:22:11', null, null, '2016-06-23 23:22:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6447', '2016-06-23 23:22:41', null, null, '2016-06-23 23:22:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6448', '2016-06-23 23:23:11', null, null, '2016-06-23 23:23:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6449', '2016-06-23 23:23:41', null, null, '2016-06-23 23:23:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6450', '2016-06-23 23:24:11', null, null, '2016-06-23 23:24:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6451', '2016-06-23 23:24:41', null, null, '2016-06-23 23:24:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6452', '2016-06-23 23:25:11', null, null, '2016-06-23 23:25:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6453', '2016-06-23 23:25:41', null, null, '2016-06-23 23:25:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6454', '2016-06-23 23:26:11', null, null, '2016-06-23 23:26:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6455', '2016-06-23 23:26:41', null, null, '2016-06-23 23:26:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6456', '2016-06-23 23:27:11', null, null, '2016-06-23 23:27:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6457', '2016-06-23 23:27:42', null, null, '2016-06-23 23:27:42', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6458', '2016-06-23 23:28:11', null, null, '2016-06-23 23:28:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6459', '2016-06-23 23:28:41', null, null, '2016-06-23 23:28:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6460', '2016-06-23 23:29:11', null, null, '2016-06-23 23:29:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6461', '2016-06-23 23:29:41', null, null, '2016-06-23 23:29:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6462', '2016-06-23 23:30:11', null, null, '2016-06-23 23:30:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6463', '2016-06-23 23:30:41', null, null, '2016-06-23 23:30:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6464', '2016-06-23 23:31:11', null, null, '2016-06-23 23:31:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6465', '2016-06-23 23:31:41', null, null, '2016-06-23 23:31:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6466', '2016-06-23 23:32:11', null, null, '2016-06-23 23:32:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6467', '2016-06-23 23:32:41', null, null, '2016-06-23 23:32:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6468', '2016-06-23 23:33:11', null, null, '2016-06-23 23:33:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6469', '2016-06-23 23:33:41', null, null, '2016-06-23 23:33:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6470', '2016-06-23 23:34:11', null, null, '2016-06-23 23:34:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6471', '2016-06-23 23:34:41', null, null, '2016-06-23 23:34:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6472', '2016-06-23 23:35:11', null, null, '2016-06-23 23:35:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6473', '2016-06-23 23:35:41', null, null, '2016-06-23 23:35:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6474', '2016-06-23 23:36:11', null, null, '2016-06-23 23:36:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6475', '2016-06-23 23:36:41', null, null, '2016-06-23 23:36:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6476', '2016-06-23 23:37:11', null, null, '2016-06-23 23:37:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6477', '2016-06-23 23:37:41', null, null, '2016-06-23 23:37:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6478', '2016-06-23 23:38:11', null, null, '2016-06-23 23:38:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6479', '2016-06-23 23:38:41', null, null, '2016-06-23 23:38:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6480', '2016-06-23 23:39:11', null, null, '2016-06-23 23:39:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6481', '2016-06-23 23:39:41', null, null, '2016-06-23 23:39:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6482', '2016-06-23 23:40:11', null, null, '2016-06-23 23:40:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6483', '2016-06-23 23:40:41', null, null, '2016-06-23 23:40:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6484', '2016-06-23 23:41:11', null, null, '2016-06-23 23:41:11', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6485', '2016-06-23 23:41:41', null, null, '2016-06-23 23:41:41', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6486', '2016-06-24 23:05:03', null, null, '2016-06-24 23:05:03', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6487', '2016-06-24 23:05:58', null, null, '2016-06-24 23:05:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6488', '2016-06-24 23:06:28', null, null, '2016-06-24 23:06:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6489', '2016-06-24 23:06:58', null, null, '2016-06-24 23:06:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6490', '2016-06-24 23:07:28', null, null, '2016-06-24 23:07:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6491', '2016-06-24 23:07:58', null, null, '2016-06-24 23:07:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6492', '2016-06-24 23:08:28', null, null, '2016-06-24 23:08:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6493', '2016-06-24 23:08:58', null, null, '2016-06-24 23:08:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6494', '2016-06-24 23:09:28', null, null, '2016-06-24 23:09:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6495', '2016-06-24 23:09:58', null, null, '2016-06-24 23:09:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6496', '2016-06-24 23:10:28', null, null, '2016-06-24 23:10:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6497', '2016-06-24 23:10:58', null, null, '2016-06-24 23:10:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6498', '2016-06-24 23:11:28', null, null, '2016-06-24 23:11:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6499', '2016-06-24 23:11:58', null, null, '2016-06-24 23:11:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6500', '2016-06-24 23:12:28', null, null, '2016-06-24 23:12:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6501', '2016-06-24 23:12:58', null, null, '2016-06-24 23:12:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6502', '2016-06-24 23:13:28', null, null, '2016-06-24 23:13:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6503', '2016-06-24 23:13:58', null, null, '2016-06-24 23:13:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6504', '2016-06-24 23:14:28', null, null, '2016-06-24 23:14:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6505', '2016-06-24 23:14:58', null, null, '2016-06-24 23:14:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6506', '2016-06-24 23:15:28', null, null, '2016-06-24 23:15:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6507', '2016-06-24 23:15:58', null, null, '2016-06-24 23:15:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6508', '2016-06-24 23:16:28', null, null, '2016-06-24 23:16:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6509', '2016-06-24 23:16:58', null, null, '2016-06-24 23:16:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6510', '2016-06-24 23:17:28', null, null, '2016-06-24 23:17:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6511', '2016-06-24 23:17:58', null, null, '2016-06-24 23:17:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6512', '2016-06-24 23:18:28', null, null, '2016-06-24 23:18:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6513', '2016-06-24 23:18:58', null, null, '2016-06-24 23:18:58', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6514', '2016-06-24 23:19:28', null, null, '2016-06-24 23:19:28', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6515', '2016-06-24 23:20:48', null, null, '2016-06-24 23:20:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6516', '2016-06-24 23:21:18', null, null, '2016-06-24 23:21:18', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6517', '2016-06-24 23:21:48', null, null, '2016-06-24 23:21:48', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6518', '2016-06-24 23:22:18', null, null, '2016-06-24 23:22:18', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/permission/permissionlist?menuId=5&menuId=5&menuId=5', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6519', '2016-06-26 08:43:03', null, null, '2016-06-26 08:43:03', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6520', '2016-06-26 08:43:36', null, null, '2016-06-26 08:43:36', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/operationLog/operationLoglist?menuId=23&menuId=23&menuId=23', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6521', '2016-06-26 08:44:29', null, null, '2016-06-26 08:44:29', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6522', '2016-06-26 08:44:59', null, null, '2016-06-26 08:44:59', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6523', '2016-06-26 08:45:52', null, null, '2016-06-26 08:45:52', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6524', '2016-06-26 08:46:22', null, null, '2016-06-26 08:46:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6525', '2016-06-26 08:46:52', null, null, '2016-06-26 08:46:52', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6526', '2016-06-26 08:47:22', null, null, '2016-06-26 08:47:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6527', '2016-06-26 08:47:52', null, null, '2016-06-26 08:47:52', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6528', '2016-06-26 08:48:22', null, null, '2016-06-26 08:48:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6529', '2016-06-26 08:48:52', null, null, '2016-06-26 08:48:52', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6530', '2016-06-26 08:49:22', null, null, '2016-06-26 08:49:22', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6531', '2016-06-26 08:49:52', null, null, '2016-06-26 08:49:52', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/role/rolelist?menuId=3&menuId=3&menuId=3', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6532', '2016-06-26 08:53:04', null, null, '2016-06-26 08:53:04', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6533', '2016-06-26 11:53:56', null, null, '2016-06-26 11:53:56', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6534', '2016-06-26 11:57:54', null, null, '2016-06-26 11:57:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6535', '2016-06-26 11:58:24', null, null, '2016-06-26 11:58:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6536', '2016-06-26 11:58:54', null, null, '2016-06-26 11:58:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6537', '2016-06-26 11:59:24', null, null, '2016-06-26 11:59:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6538', '2016-06-26 11:59:54', null, null, '2016-06-26 11:59:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6539', '2016-06-26 12:00:24', null, null, '2016-06-26 12:00:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6540', '2016-06-26 12:00:54', null, null, '2016-06-26 12:00:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6541', '2016-06-26 12:01:24', null, null, '2016-06-26 12:01:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6542', '2016-06-26 12:01:54', null, null, '2016-06-26 12:01:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6543', '2016-06-26 12:02:24', null, null, '2016-06-26 12:02:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6544', '2016-06-26 12:02:54', null, null, '2016-06-26 12:02:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6545', '2016-06-26 12:03:24', null, null, '2016-06-26 12:03:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6546', '2016-06-26 12:03:54', null, null, '2016-06-26 12:03:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6547', '2016-06-26 12:04:24', null, null, '2016-06-26 12:04:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6548', '2016-06-26 12:04:54', null, null, '2016-06-26 12:04:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6549', '2016-06-26 12:05:24', null, null, '2016-06-26 12:05:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6550', '2016-06-26 12:05:54', null, null, '2016-06-26 12:05:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6551', '2016-06-26 12:06:24', null, null, '2016-06-26 12:06:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6552', '2016-06-26 12:06:54', null, null, '2016-06-26 12:06:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6553', '2016-06-26 12:07:24', null, null, '2016-06-26 12:07:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6554', '2016-06-26 12:07:54', null, null, '2016-06-26 12:07:54', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6555', '2016-06-26 12:08:24', null, null, '2016-06-26 12:08:24', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=6&menuId=25', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6556', '2016-06-26 17:18:54', null, null, '2016-06-26 17:18:54', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6557', '2016-06-26 17:19:45', null, null, '2016-06-26 17:19:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6558', '2016-06-26 17:20:15', null, null, '2016-06-26 17:20:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6559', '2016-06-26 17:20:45', null, null, '2016-06-26 17:20:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6560', '2016-06-26 17:21:15', null, null, '2016-06-26 17:21:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6561', '2016-06-26 17:21:45', null, null, '2016-06-26 17:21:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6562', '2016-06-26 17:22:15', null, null, '2016-06-26 17:22:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6563', '2016-06-26 17:22:45', null, null, '2016-06-26 17:22:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6564', '2016-06-26 17:23:15', null, null, '2016-06-26 17:23:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6565', '2016-06-26 17:23:45', null, null, '2016-06-26 17:23:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6566', '2016-06-26 17:24:15', null, null, '2016-06-26 17:24:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6567', '2016-06-26 17:24:45', null, null, '2016-06-26 17:24:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6568', '2016-06-26 17:25:15', null, null, '2016-06-26 17:25:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6569', '2016-06-26 17:25:45', null, null, '2016-06-26 17:25:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6570', '2016-06-26 17:26:15', null, null, '2016-06-26 17:26:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6571', '2016-06-26 17:26:45', null, null, '2016-06-26 17:26:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6572', '2016-06-26 17:27:15', null, null, '2016-06-26 17:27:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6573', '2016-06-26 17:27:45', null, null, '2016-06-26 17:27:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6574', '2016-06-26 17:28:15', null, null, '2016-06-26 17:28:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6575', '2016-06-26 17:28:45', null, null, '2016-06-26 17:28:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6576', '2016-06-26 17:29:15', null, null, '2016-06-26 17:29:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6577', '2016-06-26 17:29:45', null, null, '2016-06-26 17:29:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6578', '2016-06-26 17:30:15', null, null, '2016-06-26 17:30:15', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6579', '2016-06-26 17:31:45', null, null, '2016-06-26 17:31:45', '{}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?pid=4&menuId=4', 'POST', '/admin/video/checkNew', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6580', '2016-06-26 17:34:06', null, null, '2016-06-26 17:34:06', '添加County', 'jiange_admin', '2', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6581', '2016-06-26 17:34:06', null, null, '2016-06-26 17:34:06', '{name=普安镇,description=普安镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6582', '2016-06-26 17:34:28', null, null, '2016-06-26 17:34:28', '添加County', 'jiange_admin', '3', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6583', '2016-06-26 17:34:28', null, null, '2016-06-26 17:34:28', '{name=下寺镇,description=下寺镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6584', '2016-06-26 17:34:47', null, null, '2016-06-26 17:34:47', '添加County', 'jiange_admin', '4', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6585', '2016-06-26 17:34:47', null, null, '2016-06-26 17:34:47', '{name=龙源镇,description=龙源镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6586', '2016-06-26 17:34:58', null, null, '2016-06-26 17:34:58', '添加County', 'jiange_admin', '5', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6587', '2016-06-26 17:34:58', null, null, '2016-06-26 17:34:58', '{name=城北镇,description=城北镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6588', '2016-06-26 17:35:11', null, null, '2016-06-26 17:35:11', '添加County', 'jiange_admin', '6', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6589', '2016-06-26 17:35:11', null, null, '2016-06-26 17:35:11', '{name=盐店镇,description=盐店镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6590', '2016-06-26 17:35:23', null, null, '2016-06-26 17:35:23', '添加County', 'jiange_admin', '7', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6591', '2016-06-26 17:35:23', null, null, '2016-06-26 17:35:23', '{name=柳沟镇,description=柳沟镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6592', '2016-06-26 17:35:41', null, null, '2016-06-26 17:35:41', '添加County', 'jiange_admin', '8', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6593', '2016-06-26 17:35:41', null, null, '2016-06-26 17:35:41', '{name=武连镇,description=武连镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6594', '2016-06-26 17:35:51', null, null, '2016-06-26 17:35:51', '添加County', 'jiange_admin', '9', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6595', '2016-06-26 17:35:51', null, null, '2016-06-26 17:35:51', '{name=东宝镇,description=东宝镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6596', '2016-06-26 17:36:03', null, null, '2016-06-26 17:36:03', '添加County', 'jiange_admin', '10', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6597', '2016-06-26 17:36:03', null, null, '2016-06-26 17:36:03', '{name=开封镇,description=开封镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6598', '2016-06-26 17:36:15', null, null, '2016-06-26 17:36:15', '添加County', 'jiange_admin', '11', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6599', '2016-06-26 17:36:15', null, null, '2016-06-26 17:36:15', '{name=元山镇,description=元山镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6600', '2016-06-26 18:18:40', null, null, '2016-06-26 18:18:40', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6601', '2016-06-26 18:19:04', null, null, '2016-06-26 18:19:04', '添加County', 'jiange_admin', '12', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6602', '2016-06-26 18:19:04', null, null, '2016-06-26 18:19:04', '{name=演圣镇,description=演圣镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6603', '2016-06-26 18:19:53', null, null, '2016-06-26 18:19:53', '添加County', 'jiange_admin', '13', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6604', '2016-06-26 18:19:53', null, null, '2016-06-26 18:19:53', '{name=王河镇,description=王河镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6605', '2016-06-26 18:20:21', null, null, '2016-06-26 18:20:21', '添加County', 'jiange_admin', '14', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6606', '2016-06-26 18:20:21', null, null, '2016-06-26 18:20:21', '{name=公兴镇,description=公兴镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6607', '2016-06-26 18:20:42', null, null, '2016-06-26 18:20:42', '添加County', 'jiange_admin', '15', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6608', '2016-06-26 18:20:42', null, null, '2016-06-26 18:20:42', '{name=金仙镇,description=金仙镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6609', '2016-06-26 18:20:52', null, null, '2016-06-26 18:20:52', '添加County', 'jiange_admin', '16', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6610', '2016-06-26 18:20:52', null, null, '2016-06-26 18:20:52', '{name=香沉镇,description=香沉镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6611', '2016-06-26 18:21:02', null, null, '2016-06-26 18:21:02', '添加County', 'jiange_admin', '17', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6612', '2016-06-26 18:21:02', null, null, '2016-06-26 18:21:02', '{name=白龙镇,description=白龙镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6613', '2016-06-26 18:21:11', null, null, '2016-06-26 18:21:11', '添加County', 'jiange_admin', '18', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6614', '2016-06-26 18:21:11', null, null, '2016-06-26 18:21:11', '{name=鹤龄镇,description=鹤龄镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6615', '2016-06-26 18:21:22', null, null, '2016-06-26 18:21:22', '添加County', 'jiange_admin', '19', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6616', '2016-06-26 18:21:22', null, null, '2016-06-26 18:21:22', '{name=杨村镇,description=杨村镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6617', '2016-06-26 18:21:32', null, null, '2016-06-26 18:21:32', '添加County', 'jiange_admin', '20', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6618', '2016-06-26 18:21:32', null, null, '2016-06-26 18:21:32', '{name=羊岭镇,description=羊岭镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6619', '2016-06-26 18:21:45', null, null, '2016-06-26 18:21:45', '添加County', 'jiange_admin', '21', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6620', '2016-06-26 18:21:45', null, null, '2016-06-26 18:21:45', '{name=江口镇,description=江口镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6621', '2016-06-26 18:21:53', null, null, '2016-06-26 18:21:53', '添加County', 'jiange_admin', '22', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6622', '2016-06-26 18:21:53', null, null, '2016-06-26 18:21:53', '{name=木马镇,description=木马镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6623', '2016-06-26 18:22:01', null, null, '2016-06-26 18:22:01', '添加County', 'jiange_admin', '23', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6624', '2016-06-26 18:22:01', null, null, '2016-06-26 18:22:01', '{name=剑门关镇,description=剑门关镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6625', '2016-06-26 18:22:22', null, null, '2016-06-26 18:22:22', '添加County', 'jiange_admin', '24', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6626', '2016-06-26 18:22:22', null, null, '2016-06-26 18:22:22', '{name=汉阳镇,description=汉阳镇,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6627', '2016-06-26 18:23:01', null, null, '2016-06-26 18:23:01', '添加County', 'jiange_admin', '25', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6628', '2016-06-26 18:23:01', null, null, '2016-06-26 18:23:01', '{name=江石乡,description=江石乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6629', '2016-06-26 18:23:09', null, null, '2016-06-26 18:23:09', '添加County', 'jiange_admin', '26', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6630', '2016-06-26 18:23:09', null, null, '2016-06-26 18:23:09', '{name=田家乡,description=田家乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6631', '2016-06-26 18:23:17', null, null, '2016-06-26 18:23:17', '添加County', 'jiange_admin', '27', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6632', '2016-06-26 18:23:17', null, null, '2016-06-26 18:23:17', '{name=闻溪乡,description=闻溪乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6633', '2016-06-26 18:23:26', null, null, '2016-06-26 18:23:26', '添加County', 'jiange_admin', '28', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6634', '2016-06-26 18:23:26', null, null, '2016-06-26 18:23:26', '{name=姚家乡,description=姚家乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6635', '2016-06-26 18:23:33', null, null, '2016-06-26 18:23:33', '添加County', 'jiange_admin', '29', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6636', '2016-06-26 18:23:33', null, null, '2016-06-26 18:23:33', '{name=北庙乡,description=北庙乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6637', '2016-06-26 18:23:41', null, null, '2016-06-26 18:23:41', '添加County', 'jiange_admin', '30', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6638', '2016-06-26 18:23:41', null, null, '2016-06-26 18:23:41', '{name=西庙乡,description=西庙乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6639', '2016-06-26 18:23:51', null, null, '2016-06-26 18:23:51', '添加County', 'jiange_admin', '31', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6640', '2016-06-26 18:23:51', null, null, '2016-06-26 18:23:51', '{name=义兴乡,description=义兴乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6641', '2016-06-26 18:23:59', null, null, '2016-06-26 18:23:59', '添加County', 'jiange_admin', '32', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6642', '2016-06-26 18:23:59', null, null, '2016-06-26 18:23:59', '{name=毛坝乡,description=毛坝乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6643', '2016-06-26 18:24:06', null, null, '2016-06-26 18:24:06', '添加County', 'jiange_admin', '33', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6644', '2016-06-26 18:24:06', null, null, '2016-06-26 18:24:06', '{name=凉山乡,description=凉山乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6645', '2016-06-26 18:24:19', null, null, '2016-06-26 18:24:19', '添加County', 'jiange_admin', '34', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6646', '2016-06-26 18:24:19', null, null, '2016-06-26 18:24:19', '{name=垂泉乡,description=垂泉乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6647', '2016-06-26 18:24:28', null, null, '2016-06-26 18:24:28', '添加County', 'jiange_admin', '35', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6648', '2016-06-26 18:24:28', null, null, '2016-06-26 18:24:28', '{name=秀钟乡,description=秀钟乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6649', '2016-06-26 18:24:36', null, null, '2016-06-26 18:24:36', '添加County', 'jiange_admin', '36', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6650', '2016-06-26 18:24:36', null, null, '2016-06-26 18:24:36', '{name=正兴乡,description=正兴乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6651', '2016-06-26 18:24:44', null, null, '2016-06-26 18:24:44', '添加County', 'jiange_admin', '37', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6652', '2016-06-26 18:24:44', null, null, '2016-06-26 18:24:44', '{name=马灯乡,description=马灯乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6653', '2016-06-26 18:24:52', null, null, '2016-06-26 18:24:52', '添加County', 'jiange_admin', '38', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6654', '2016-06-26 18:24:52', null, null, '2016-06-26 18:24:52', '{name=高池乡,description=高池乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6655', '2016-06-26 18:25:00', null, null, '2016-06-26 18:25:00', '添加County', 'jiange_admin', '39', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6656', '2016-06-26 18:25:00', null, null, '2016-06-26 18:25:00', '{name=碗泉乡,description=碗泉乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6657', '2016-06-26 18:25:09', null, null, '2016-06-26 18:25:09', '添加County', 'jiange_admin', '40', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6658', '2016-06-26 18:25:09', null, null, '2016-06-26 18:25:09', '{name=迎水乡,description=迎水乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6659', '2016-06-26 18:25:16', null, null, '2016-06-26 18:25:16', '添加County', 'jiange_admin', '41', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6660', '2016-06-26 18:25:16', null, null, '2016-06-26 18:25:16', '{name=国光乡,description=国光乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6661', '2016-06-26 18:25:26', null, null, '2016-06-26 18:25:26', '添加County', 'jiange_admin', '42', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6662', '2016-06-26 18:25:26', null, null, '2016-06-26 18:25:26', '{name=柘坝乡,description=柘坝乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6663', '2016-06-26 18:25:34', null, null, '2016-06-26 18:25:34', '添加County', 'jiange_admin', '43', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6664', '2016-06-26 18:25:34', null, null, '2016-06-26 18:25:34', '{name=公店乡,description=公店乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6665', '2016-06-26 18:25:44', null, null, '2016-06-26 18:25:44', '添加County', 'jiange_admin', '44', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6666', '2016-06-26 18:25:44', null, null, '2016-06-26 18:25:44', '{name=吼狮乡,description=吼狮乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6667', '2016-06-26 18:25:51', null, null, '2016-06-26 18:25:51', '添加County', 'jiange_admin', '45', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6668', '2016-06-26 18:25:51', null, null, '2016-06-26 18:25:51', '{name=长岭乡,description=长岭乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6669', '2016-06-26 18:26:00', null, null, '2016-06-26 18:26:00', '添加County', 'jiange_admin', '46', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6670', '2016-06-26 18:26:00', null, null, '2016-06-26 18:26:00', '{name=涂山乡,description=涂山乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6671', '2016-06-26 18:26:08', null, null, '2016-06-26 18:26:08', '添加County', 'jiange_admin', '47', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6672', '2016-06-26 18:26:08', null, null, '2016-06-26 18:26:08', '{name=圈龙乡,description=圈龙乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6673', '2016-06-26 18:26:18', null, null, '2016-06-26 18:26:18', '添加County', 'jiange_admin', '48', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6674', '2016-06-26 18:26:18', null, null, '2016-06-26 18:26:18', '{name=碑垭乡,description=碑垭乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6675', '2016-06-26 18:26:24', null, null, '2016-06-26 18:26:24', '添加County', 'jiange_admin', '49', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6676', '2016-06-26 18:26:24', null, null, '2016-06-26 18:26:24', '{name=广坪乡,description=广坪乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6677', '2016-06-26 18:26:31', null, null, '2016-06-26 18:26:31', '添加County', 'jiange_admin', '50', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6678', '2016-06-26 18:26:31', null, null, '2016-06-26 18:26:31', '{name=禾丰乡,description=禾丰乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6679', '2016-06-26 18:26:38', null, null, '2016-06-26 18:26:38', '添加County', 'jiange_admin', '51', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6680', '2016-06-26 18:26:38', null, null, '2016-06-26 18:26:38', '{name=店子乡,description=店子乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6681', '2016-06-26 18:26:45', null, null, '2016-06-26 18:26:45', '添加County', 'jiange_admin', '52', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6682', '2016-06-26 18:26:45', null, null, '2016-06-26 18:26:45', '{name=摇铃乡,description=摇铃乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6683', '2016-06-26 18:26:55', null, null, '2016-06-26 18:26:55', '添加County', 'jiange_admin', '53', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6684', '2016-06-26 18:26:55', null, null, '2016-06-26 18:26:55', '{name=樵店乡,description=樵店乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6685', '2016-06-26 18:27:02', null, null, '2016-06-26 18:27:02', '添加County', 'jiange_admin', '54', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6686', '2016-06-26 18:27:02', null, null, '2016-06-26 18:27:02', '{name=锦屏乡,description=锦屏乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6687', '2016-06-26 18:27:10', null, null, '2016-06-26 18:27:10', '添加County', 'jiange_admin', '55', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6688', '2016-06-26 18:27:10', null, null, '2016-06-26 18:27:10', '{name=柏垭乡,description=柏垭乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6689', '2016-06-26 18:27:17', null, null, '2016-06-26 18:27:17', '添加County', 'jiange_admin', '56', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6690', '2016-06-26 18:27:17', null, null, '2016-06-26 18:27:17', '{name=高观乡,description=高观乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6691', '2016-06-26 18:27:25', null, null, '2016-06-26 18:27:25', '添加County', 'jiange_admin', '57', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6692', '2016-06-26 18:27:25', null, null, '2016-06-26 18:27:25', '{name=张王乡,description=张王乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6693', '2016-06-26 18:27:32', null, null, '2016-06-26 18:27:32', '添加County', 'jiange_admin', '58', 'County', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6694', '2016-06-26 18:27:32', null, null, '2016-06-26 18:27:32', '{name=上寺乡,description=上寺乡,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/county/index?pid=25&menuId=25', 'POST', '/admin/county/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6695', '2016-06-26 18:28:26', null, null, '2016-06-26 18:28:26', '更新Community', 'jiange_admin', '1', 'Community', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6696', '2016-06-26 18:28:26', null, null, '2016-06-26 18:28:26', '{name=社区一,description=鼓楼社区,countyid=0,townid=0,villageid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6697', '2016-06-26 18:33:21', null, null, '2016-06-26 18:33:21', '更新Community', 'jiange_admin', '1', 'Community', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6698', '2016-06-26 18:33:21', null, null, '2016-06-26 18:33:21', '{name=鼓楼社区,description=鼓楼社区,countyid=0,townid=0,villageid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6699', '2016-06-26 18:33:36', null, null, '2016-06-26 18:33:36', '添加Community', 'jiange_admin', '2', 'Community', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6700', '2016-06-26 18:33:36', null, null, '2016-06-26 18:33:36', '{name=小玲玲社区,description=小玲玲社区,countyid=0,townid=0,villageid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6701', '2016-06-26 18:33:48', null, null, '2016-06-26 18:33:48', '添加Community', 'jiange_admin', '3', 'Community', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6702', '2016-06-26 18:33:48', null, null, '2016-06-26 18:33:48', '{name=卧龙社区,description=卧龙社区,countyid=1,townid=0,villageid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6703', '2016-06-26 18:33:54', null, null, '2016-06-26 18:33:54', '更新Community', 'jiange_admin', '2', 'Community', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6704', '2016-06-26 18:33:54', null, null, '2016-06-26 18:33:54', '{name=小玲玲社区,description=小玲玲社区,countyid=1,townid=0,villageid=0,id=2}', 'jiange_admin', '2', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6705', '2016-06-26 18:34:00', null, null, '2016-06-26 18:34:00', '更新Community', 'jiange_admin', '1', 'Community', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6706', '2016-06-26 18:34:00', null, null, '2016-06-26 18:34:00', '{name=鼓楼社区,description=鼓楼社区,countyid=1,townid=0,villageid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6707', '2016-06-26 18:34:08', null, null, '2016-06-26 18:34:08', '更新Community', 'jiange_admin', '3', 'Community', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6708', '2016-06-26 18:34:08', null, null, '2016-06-26 18:34:08', '{name=卧龙社区,description=卧龙社区,countyid=1,townid=0,villageid=0,id=3}', 'jiange_admin', '3', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6709', '2016-06-26 18:34:29', null, null, '2016-06-26 18:34:29', '添加Community', 'jiange_admin', '4', 'Community', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6710', '2016-06-26 18:34:29', null, null, '2016-06-26 18:34:29', '{name=较场坝社区,description=较场坝社区,countyid=1,townid=0,villageid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/community/index?pid=26&menuId=26', 'POST', '/admin/community/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6711', '2016-06-26 18:37:03', null, null, '2016-06-26 18:37:03', '更新School', 'jiange_admin', '1', 'School', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6712', '2016-06-26 18:37:03', null, null, '2016-06-26 18:37:03', '{name=鼓楼中学,description=鼓楼中学,countyid=1,townid=0,villageid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/school/index?pid=27&menuId=27', 'POST', '/admin/school/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6713', '2016-06-26 18:37:22', null, null, '2016-06-26 18:37:22', '添加School', 'jiange_admin', '2', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6714', '2016-06-26 18:37:22', null, null, '2016-06-26 18:37:22', '{name=卧龙中学,description=卧龙中学,countyid=1,townid=0,villageid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/school/index?pid=27&menuId=27', 'POST', '/admin/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6715', '2016-06-26 18:37:53', null, null, '2016-06-26 18:37:53', '添加School', 'jiange_admin', '3', 'School', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6716', '2016-06-26 18:37:53', null, null, '2016-06-26 18:37:53', '{name=较场坝小学,description=较场坝小学,countyid=1,townid=0,villageid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/school/index?pid=27&menuId=27', 'POST', '/admin/school/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6717', '2016-06-26 19:29:53', null, null, '2016-06-26 19:29:53', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6718', '2016-06-26 19:37:09', null, null, '2016-06-26 19:37:09', '更新Organization', 'jiange_admin', '1', 'Organization', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6719', '2016-06-26 19:37:09', null, null, '2016-06-26 19:37:09', '{name=反贪污贿赂部门,parentid=0,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6720', '2016-06-26 19:37:27', null, null, '2016-06-26 19:37:27', '添加Organization', 'jiange_admin', '2', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6721', '2016-06-26 19:37:27', null, null, '2016-06-26 19:37:27', '{name=反渎职侵权部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6722', '2016-06-26 19:37:39', null, null, '2016-06-26 19:37:39', '添加Organization', 'jiange_admin', '3', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6723', '2016-06-26 19:37:39', null, null, '2016-06-26 19:37:39', '{name=公诉部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6724', '2016-06-26 19:37:51', null, null, '2016-06-26 19:37:51', '添加Organization', 'jiange_admin', '4', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6725', '2016-06-26 19:37:51', null, null, '2016-06-26 19:37:51', '{name=监所检察部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6726', '2016-06-26 19:38:02', null, null, '2016-06-26 19:38:02', '添加Organization', 'jiange_admin', '5', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6727', '2016-06-26 19:38:02', null, null, '2016-06-26 19:38:02', '{name=民事行政检察部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6728', '2016-06-26 19:38:13', null, null, '2016-06-26 19:38:13', '添加Organization', 'jiange_admin', '6', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6729', '2016-06-26 19:38:13', null, null, '2016-06-26 19:38:13', '{name=职务犯罪预防部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6730', '2016-06-26 19:38:25', null, null, '2016-06-26 19:38:25', '添加Organization', 'jiange_admin', '7', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6731', '2016-06-26 19:38:25', null, null, '2016-06-26 19:38:25', '{name=检察技术部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6732', '2016-06-26 19:38:42', null, null, '2016-06-26 19:38:42', '添加Organization', 'jiange_admin', '8', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6733', '2016-06-26 19:38:42', null, null, '2016-06-26 19:38:42', '{name=纪检部门,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6734', '2016-06-26 19:38:55', null, null, '2016-06-26 19:38:55', '添加Organization', 'jiange_admin', '9', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6735', '2016-06-26 19:38:55', null, null, '2016-06-26 19:38:55', '{name=监察机关,parentid=0,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/org/index?pid=28&menuId=28', 'POST', '/admin/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6736', '2016-06-26 19:39:30', null, null, '2016-06-26 19:39:30', '更新OrgPost', 'jiange_admin', '1', 'OrgPost', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6737', '2016-06-26 19:39:30', null, null, '2016-06-26 19:39:30', '{name=检察长,id=1}', 'jiange_admin', '1', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6738', '2016-06-26 19:39:40', null, null, '2016-06-26 19:39:40', '添加OrgPost', 'jiange_admin', '2', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6739', '2016-06-26 19:39:40', null, null, '2016-06-26 19:39:40', '{name=副检察长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6740', '2016-06-26 19:39:46', null, null, '2016-06-26 19:39:46', '添加OrgPost', 'jiange_admin', '3', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6741', '2016-06-26 19:39:46', null, null, '2016-06-26 19:39:46', '{name=科长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6742', '2016-06-26 19:39:56', null, null, '2016-06-26 19:39:56', '添加OrgPost', 'jiange_admin', '4', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6743', '2016-06-26 19:39:56', null, null, '2016-06-26 19:39:56', '{name=副科长,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6744', '2016-06-26 19:40:04', null, null, '2016-06-26 19:40:04', '添加OrgPost', 'jiange_admin', '5', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6745', '2016-06-26 19:40:04', null, null, '2016-06-26 19:40:04', '{name=主任,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6746', '2016-06-26 19:40:09', null, null, '2016-06-26 19:40:09', '添加OrgPost', 'jiange_admin', '6', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6747', '2016-06-26 19:40:09', null, null, '2016-06-26 19:40:09', '{name=副主任,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/orgpost/index?pid=32&menuId=32', 'POST', '/admin/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6748', '2016-06-26 20:03:43', null, null, '2016-06-26 20:03:43', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6749', '2016-06-28 14:50:50', null, null, '2016-06-28 14:50:50', '{username=admin,password=888888}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '0', '');
INSERT INTO `operation_log` VALUES ('6750', '2016-06-28 14:51:00', null, null, '2016-06-28 14:51:00', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6751', '2016-06-28 14:51:27', null, null, '2016-06-28 14:51:27', '添加Test', 'jiange_admin', '11', 'Test', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6752', '2016-06-28 14:51:27', null, null, '2016-06-28 14:51:27', '{name=987654321,description=987654321,id=}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/test/index?menuId=4', 'POST', '/admin/test/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6753', '2016-06-28 16:37:35', null, null, '2016-06-28 16:37:35', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6754', '2016-06-28 17:11:28', null, null, '2016-06-28 17:11:28', '{username=admin,password=wwwwwww}', 'jiange_admin', '', null, null, 'http://localhost:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '0', '');
INSERT INTO `operation_log` VALUES ('6755', '2016-06-28 17:14:24', null, null, '2016-06-28 17:14:24', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://192.168.1.27:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6756', '2016-06-28 17:41:01', null, null, '2016-06-28 17:41:01', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/admin/login.jsp', 'POST', '/admin/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6757', '2016-06-28 22:20:14', null, null, '2016-06-28 22:20:14', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6758', '2016-06-28 22:20:56', null, null, '2016-06-28 22:20:56', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6759', '2016-06-28 22:21:17', null, null, '2016-06-28 22:21:17', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6760', '2016-06-28 22:22:54', null, null, '2016-06-28 22:22:54', '添加Organization', 'jiange_admin', '10', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6761', '2016-06-28 22:22:54', null, null, '2016-06-28 22:22:54', '{name=1111,parentid=2,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6762', '2016-06-28 22:23:21', null, null, '2016-06-28 22:23:21', '更新Organization', 'jiange_admin', '10', 'Organization', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6763', '2016-06-28 22:23:21', null, null, '2016-06-28 22:23:21', '{name=tests,parentid=1,id=10}', 'jiange_admin', '10', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6764', '2016-06-28 22:23:25', null, null, '2016-06-28 22:23:25', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6765', '2016-06-28 22:23:30', null, null, '2016-06-28 22:23:30', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6766', '2016-06-28 22:23:35', null, null, '2016-06-28 22:23:35', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6767', '2016-06-28 22:23:41', null, null, '2016-06-28 22:23:41', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6768', '2016-06-28 22:23:56', null, null, '2016-06-28 22:23:56', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6769', '2016-06-28 22:36:33', null, null, '2016-06-28 22:36:33', '{username=Admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '0', '');
INSERT INTO `operation_log` VALUES ('6770', '2016-06-28 22:36:37', null, null, '2016-06-28 22:36:37', '{username=Admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '0', '');
INSERT INTO `operation_log` VALUES ('6771', '2016-06-28 22:36:40', null, null, '2016-06-28 22:36:40', '{username=Admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '0', '');
INSERT INTO `operation_log` VALUES ('6772', '2016-06-28 22:36:46', null, null, '2016-06-28 22:36:46', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6773', '2016-06-28 22:38:47', null, null, '2016-06-28 22:38:47', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6774', '2016-06-28 22:39:31', null, null, '2016-06-28 22:39:31', '{pid=1,menuId=23}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6775', '2016-06-28 22:40:02', null, null, '2016-06-28 22:40:02', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6776', '2016-06-28 22:40:12', null, null, '2016-06-28 22:40:12', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6777', '2016-06-28 22:40:37', null, null, '2016-06-28 22:40:37', '更新OrgPost', 'jiange_admin', '5', 'OrgPost', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6778', '2016-06-28 22:40:37', null, null, '2016-06-28 22:40:37', '{name=主任,id=5}', 'jiange_admin', '5', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6779', '2016-06-28 22:40:39', null, null, '2016-06-28 22:40:39', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6780', '2016-06-28 22:41:14', null, null, '2016-06-28 22:41:14', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6781', '2016-06-28 22:41:33', null, null, '2016-06-28 22:41:33', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6782', '2016-06-28 22:42:01', null, null, '2016-06-28 22:42:01', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6783', '2016-06-28 22:42:25', null, null, '2016-06-28 22:42:25', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6784', '2016-06-28 22:42:46', null, null, '2016-06-28 22:42:46', '{pid=1,menuId=24}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6785', '2016-06-28 22:43:11', null, null, '2016-06-28 22:43:11', '{pid=6,menuId=4}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=24&menuId=24', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6786', '2016-06-28 22:43:37', null, null, '2016-06-28 22:43:37', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/test/index?pid=4&menuId=4', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6787', '2016-06-28 22:44:24', null, null, '2016-06-28 22:44:24', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6788', '2016-06-28 22:44:33', null, null, '2016-06-28 22:44:33', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6789', '2016-06-28 22:44:52', null, null, '2016-06-28 22:44:52', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6790', '2016-06-28 22:45:13', null, null, '2016-06-28 22:45:13', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6791', '2016-06-28 22:45:24', null, null, '2016-06-28 22:45:24', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6792', '2016-06-28 22:46:09', null, null, '2016-06-28 22:46:09', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6793', '2016-06-28 22:46:33', null, null, '2016-06-28 22:46:33', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6794', '2016-06-28 22:47:21', null, null, '2016-06-28 22:47:21', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6795', '2016-06-28 22:48:03', null, null, '2016-06-28 22:48:03', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6796', '2016-06-28 22:48:11', null, null, '2016-06-28 22:48:11', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6797', '2016-06-28 22:48:40', null, null, '2016-06-28 22:48:40', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6798', '2016-06-28 22:49:02', null, null, '2016-06-28 22:49:02', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6799', '2016-06-28 22:49:21', null, null, '2016-06-28 22:49:21', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6800', '2016-06-28 22:52:30', null, null, '2016-06-28 22:52:30', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6801', '2016-06-28 22:52:41', null, null, '2016-06-28 22:52:41', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6802', '2016-06-28 22:52:55', null, null, '2016-06-28 22:52:55', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6803', '2016-06-28 22:53:05', null, null, '2016-06-28 22:53:05', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6804', '2016-06-28 22:53:13', null, null, '2016-06-28 22:53:13', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6805', '2016-06-28 22:53:23', null, null, '2016-06-28 22:53:23', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6806', '2016-06-28 22:53:31', null, null, '2016-06-28 22:53:31', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6807', '2016-06-28 22:54:15', null, null, '2016-06-28 22:54:15', '添加OrgPost', 'jiange_admin', '7', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6808', '2016-06-28 22:54:15', null, null, '2016-06-28 22:54:15', '{name=联络点联络员,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6809', '2016-06-28 22:54:27', null, null, '2016-06-28 22:54:27', '添加OrgPost', 'jiange_admin', '8', 'OrgPost', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6810', '2016-06-28 22:54:27', null, null, '2016-06-28 22:54:27', '{name=外聘联络员,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/orgpost/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6811', '2016-06-28 22:54:38', null, null, '2016-06-28 22:54:38', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6812', '2016-06-28 22:54:49', null, null, '2016-06-28 22:54:49', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6813', '2016-06-28 22:55:27', null, null, '2016-06-28 22:55:27', '更新Organization', 'jiange_admin', '10', 'Organization', '更新', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6814', '2016-06-28 22:55:27', null, null, '2016-06-28 22:55:27', '{name=外聘联络员,parentid=1,id=10}', 'jiange_admin', '10', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6815', '2016-06-28 22:55:43', null, null, '2016-06-28 22:55:43', '添加Organization', 'jiange_admin', '11', 'Organization', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6816', '2016-06-28 22:55:43', null, null, '2016-06-28 22:55:43', '{name=联络点联络员,parentid=1,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/org/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6817', '2016-06-28 22:56:07', null, null, '2016-06-28 22:56:07', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6818', '2016-06-28 22:56:28', null, null, '2016-06-28 22:56:28', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6819', '2016-06-28 22:56:45', null, null, '2016-06-28 22:56:45', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6820', '2016-06-28 22:57:18', null, null, '2016-06-28 22:57:18', '{pid=6,menuId=4}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6821', '2016-06-28 22:57:50', null, null, '2016-06-28 22:57:50', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/test/index?pid=4&menuId=4', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6822', '2016-06-28 22:58:06', null, null, '2016-06-28 22:58:06', '{pid=1,menuId=2}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6823', '2016-06-28 22:58:27', null, null, '2016-06-28 22:58:27', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6824', '2016-06-28 22:58:58', null, null, '2016-06-28 22:58:58', '{pid=1,menuId=24}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6825', '2016-06-28 23:05:31', null, null, '2016-06-28 23:05:31', '{pid=6,menuId=4}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=24&menuId=24', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6826', '2016-06-28 23:06:00', null, null, '2016-06-28 23:06:00', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/test/index?pid=4&menuId=4', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6827', '2016-06-28 23:06:09', null, null, '2016-06-28 23:06:09', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6828', '2016-06-28 23:06:15', null, null, '2016-06-28 23:06:15', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6829', '2016-06-28 23:09:59', null, null, '2016-06-28 23:09:59', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6830', '2016-06-28 23:10:07', null, null, '2016-06-28 23:10:07', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6831', '2016-06-28 23:10:12', null, null, '2016-06-28 23:10:12', '{pid=29,menuId=31}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6832', '2016-06-28 23:11:47', null, null, '2016-06-28 23:11:47', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6833', '2016-06-28 23:12:00', null, null, '2016-06-28 23:12:00', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6834', '2016-06-28 23:12:10', null, null, '2016-06-28 23:12:10', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6835', '2016-06-28 23:15:32', null, null, '2016-06-28 23:15:32', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6836', '2016-06-28 23:15:40', null, null, '2016-06-28 23:15:40', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6837', '2016-06-28 23:15:50', null, null, '2016-06-28 23:15:50', '{pid=35,menuId=40}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6838', '2016-06-28 23:15:57', null, null, '2016-06-28 23:15:57', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/supervreply/index?pid=40&menuId=40', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6839', '2016-06-28 23:16:07', null, null, '2016-06-28 23:16:07', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/supervreply/index?pid=40&menuId=40', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6840', '2016-06-28 23:16:17', null, null, '2016-06-28 23:16:17', '{pid=29,menuId=31}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6841', '2016-06-28 23:16:40', null, null, '2016-06-28 23:16:40', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6842', '2016-06-28 23:16:54', null, null, '2016-06-28 23:16:54', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6843', '2016-06-28 23:17:00', null, null, '2016-06-28 23:17:00', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6844', '2016-06-28 23:20:17', null, null, '2016-06-28 23:20:17', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6845', '2016-06-28 23:20:31', null, null, '2016-06-28 23:20:31', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6846', '2016-06-29 16:29:43', null, null, '2016-06-29 16:29:43', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6847', '2016-06-29 16:29:56', null, null, '2016-06-29 16:29:56', '{pid=1,menuId=23}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6848', '2016-06-29 16:30:11', null, null, '2016-06-29 16:30:11', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/operationLog/operationLoglist?menuId=23&menuId=23&pid=23&menuId=23', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6849', '2016-06-29 16:30:14', null, null, '2016-06-29 16:30:14', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/operationLog/operationLoglist?menuId=23&menuId=23&pid=23&menuId=23', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6850', '2016-06-29 16:30:26', null, null, '2016-06-29 16:30:26', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/operationLog/operationLoglist?menuId=23&menuId=23&pid=23&menuId=23', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6851', '2016-06-29 16:30:43', null, null, '2016-06-29 16:30:43', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6852', '2016-06-29 16:30:55', null, null, '2016-06-29 16:30:55', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6853', '2016-06-29 16:31:16', null, null, '2016-06-29 16:31:16', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6854', '2016-06-29 16:31:36', null, null, '2016-06-29 16:31:36', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6855', '2016-06-29 16:31:46', null, null, '2016-06-29 16:31:46', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6856', '2016-06-29 16:32:09', null, null, '2016-06-29 16:32:09', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6857', '2016-06-29 16:32:15', null, null, '2016-06-29 16:32:15', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6858', '2016-06-29 16:32:25', null, null, '2016-06-29 16:32:25', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6859', '2016-06-29 16:32:37', null, null, '2016-06-29 16:32:37', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6860', '2016-06-29 16:32:43', null, null, '2016-06-29 16:32:43', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6861', '2016-06-29 16:33:09', null, null, '2016-06-29 16:33:09', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6862', '2016-06-29 17:21:29', null, null, '2016-06-29 17:21:29', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6863', '2016-06-30 09:35:05', null, null, '2016-06-30 09:35:05', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6864', '2016-06-30 09:35:12', null, null, '2016-06-30 09:35:12', '{pid=1,menuId=2}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6865', '2016-06-30 09:35:20', null, null, '2016-06-30 09:35:20', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6866', '2016-06-30 09:35:35', null, null, '2016-06-30 09:35:35', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6867', '2016-06-30 09:35:39', null, null, '2016-06-30 09:35:39', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6868', '2016-06-30 09:35:43', null, null, '2016-06-30 09:35:43', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6869', '2016-06-30 09:43:56', null, null, '2016-06-30 09:43:56', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6870', '2016-06-30 10:22:43', null, null, '2016-06-30 10:22:43', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6871', '2016-06-30 10:22:51', null, null, '2016-06-30 10:22:51', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6872', '2016-06-30 10:22:56', null, null, '2016-06-30 10:22:56', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6873', '2016-06-30 10:23:00', null, null, '2016-06-30 10:23:00', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6874', '2016-06-30 17:59:45', null, null, '2016-06-30 17:59:45', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6875', '2016-06-30 18:00:01', null, null, '2016-06-30 18:00:01', '{pid=1,menuId=24}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6876', '2016-06-30 18:00:12', null, null, '2016-06-30 18:00:12', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=24&menuId=24', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6877', '2016-06-30 18:00:34', null, null, '2016-06-30 18:00:34', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6878', '2016-06-30 18:00:49', null, null, '2016-06-30 18:00:49', '{pid=1,menuId=2}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/letter/index?pid=30&menuId=30', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6879', '2016-06-30 18:00:57', null, null, '2016-06-30 18:00:57', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6880', '2016-06-30 18:01:08', null, null, '2016-06-30 18:01:08', '{pid=41,menuId=43}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6881', '2016-06-30 18:01:22', null, null, '2016-06-30 18:01:22', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6882', '2016-06-30 18:01:51', null, null, '2016-06-30 18:01:51', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6883', '2016-06-30 19:02:57', null, null, '2016-06-30 19:02:57', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6884', '2016-06-30 19:03:04', null, null, '2016-06-30 19:03:04', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6885', '2016-06-30 19:03:12', null, null, '2016-06-30 19:03:12', '{id=2}', 'jiange_admin', '2', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6886', '2016-06-30 19:03:17', null, null, '2016-06-30 19:03:17', '{name=上传人员,description=上传人员,id=2,permissionId=2,3,25}', 'jiange_admin', '2', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6887', '2016-06-30 19:03:29', null, null, '2016-06-30 19:03:29', '{id=1}', 'jiange_admin', '1', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6888', '2016-06-30 19:03:35', null, null, '2016-06-30 19:03:35', '{name=系统管理员,description=系统管理员,id=1,permissionId=2,3,5,23,4,25,26,27,28,32,30,31,39,40}', 'jiange_admin', '1', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6889', '2016-06-30 19:03:56', null, null, '2016-06-30 19:03:56', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6890', '2016-06-30 19:04:13', null, null, '2016-06-30 19:04:13', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6891', '2016-06-30 19:04:22', null, null, '2016-06-30 19:04:22', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6892', '2016-06-30 19:04:36', null, null, '2016-06-30 19:04:36', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6893', '2016-06-30 19:04:44', null, null, '2016-06-30 19:04:44', '{pid=35,menuId=40}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6894', '2016-06-30 19:04:50', null, null, '2016-06-30 19:04:50', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/supervreply/index?pid=40&menuId=40', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6895', '2016-06-30 19:05:11', null, null, '2016-06-30 19:05:11', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/superv/index?pid=39&menuId=39', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6896', '2016-06-30 19:05:45', null, null, '2016-06-30 19:05:45', '{name=公共信息,pid=35,value=superv/index,sort=5,id=39}', 'jiange_admin', '39', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6897', '2016-06-30 19:06:07', null, null, '2016-06-30 19:06:07', '{pid=1,menuId=2}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6898', '2016-06-30 19:06:14', null, null, '2016-06-30 19:06:14', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/user/userlist?menuId=2&menuId=2&pid=2&menuId=2', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6899', '2016-06-30 19:06:23', null, null, '2016-06-30 19:06:23', '{id=1}', 'jiange_admin', '1', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'GET', '/website/role/get', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6900', '2016-06-30 19:06:33', null, null, '2016-06-30 19:06:33', '{name=系统管理员,description=系统管理员,id=1,permissionId=2,3,5,23,4,25,26,27,28,32,30,31,36,37,38,39,40,42,43}', 'jiange_admin', '1', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/role/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6901', '2016-06-30 19:06:49', null, null, '2016-06-30 19:06:49', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6902', '2016-06-30 19:07:27', null, null, '2016-06-30 19:07:27', '{pid=1,menuId=3}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6903', '2016-06-30 19:07:33', null, null, '2016-06-30 19:07:33', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/role/rolelist?menuId=3&menuId=3&pid=3&menuId=3', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6904', '2016-06-30 22:33:26', null, null, '2016-06-30 22:33:26', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6905', '2016-06-30 22:33:38', null, null, '2016-06-30 22:33:38', '{pid=29,menuId=30}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6906', '2016-07-01 09:38:25', null, null, '2016-07-01 09:38:25', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6907', '2016-07-01 09:38:48', null, null, '2016-07-01 09:38:48', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6908', '2016-07-01 09:39:11', null, null, '2016-07-01 09:39:11', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6909', '2016-07-01 09:39:30', null, null, '2016-07-01 09:39:30', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6910', '2016-07-01 09:39:42', null, null, '2016-07-01 09:39:42', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/superv/index?pid=39&menuId=39', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6911', '2016-07-01 09:40:09', null, null, '2016-07-01 09:40:09', '{pid=41,menuId=42}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6912', '2016-07-01 17:29:33', null, null, '2016-07-01 17:29:33', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6913', '2016-07-01 17:29:49', null, null, '2016-07-01 17:29:49', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6914', '2016-07-01 17:30:17', null, null, '2016-07-01 17:30:17', '{pid=33,menuId=36}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6915', '2016-07-01 18:23:22', null, null, '2016-07-01 18:23:22', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6916', '2016-07-01 18:23:28', null, null, '2016-07-01 18:23:28', '{pid=1,menuId=23}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6917', '2016-07-01 18:23:35', null, null, '2016-07-01 18:23:35', '{pid=35,menuId=39}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/operationLog/operationLoglist?menuId=23&menuId=23&pid=23&menuId=23', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6918', '2016-07-01 18:23:41', null, null, '2016-07-01 18:23:41', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/superv/index?pid=39&menuId=39', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6919', '2016-07-01 18:23:54', null, null, '2016-07-01 18:23:54', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6920', '2016-07-01 18:24:04', null, null, '2016-07-01 18:24:04', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6921', '2016-07-01 18:24:17', null, null, '2016-07-01 18:24:17', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6922', '2016-07-01 18:41:01', null, null, '2016-07-01 18:41:01', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6923', '2016-07-01 18:41:11', null, null, '2016-07-01 18:41:11', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6924', '2016-07-01 18:41:15', null, null, '2016-07-01 18:41:15', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6925', '2016-07-01 18:41:15', null, null, '2016-07-01 18:41:15', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6926', '2016-07-01 21:35:32', null, null, '2016-07-01 21:35:32', '{username=admin,password=222222}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/login.jsp', 'POST', '/website/login/loginAjax', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6927', '2016-07-01 21:35:47', null, null, '2016-07-01 21:35:47', '{pid=6,menuId=25}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/index/welcome?pid=16', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6928', '2016-07-01 21:36:39', null, null, '2016-07-01 21:36:39', '{pid=6,menuId=26}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/county/index?pid=25&menuId=25', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6929', '2016-07-01 21:36:43', null, null, '2016-07-01 21:36:43', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6930', '2016-07-01 21:36:43', null, null, '2016-07-01 21:36:43', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6931', '2016-07-01 21:36:48', null, null, '2016-07-01 21:36:48', '{pid=6,menuId=27}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/community/index?pid=26&menuId=26', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6932', '2016-07-01 21:36:52', null, null, '2016-07-01 21:36:52', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6933', '2016-07-01 21:36:52', null, null, '2016-07-01 21:36:52', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6934', '2016-07-01 21:37:07', null, null, '2016-07-01 21:37:07', '{pid=6,menuId=28}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/school/index?pid=27&menuId=27', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6935', '2016-07-01 21:37:12', null, null, '2016-07-01 21:37:12', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6936', '2016-07-01 21:37:12', null, null, '2016-07-01 21:37:12', '{}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/ajax/countyall', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6937', '2016-07-01 21:37:13', null, null, '2016-07-01 21:37:13', '{pid=6,menuId=32}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/org/index?pid=28&menuId=28', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6938', '2016-07-01 21:42:40', null, null, '2016-07-01 21:42:40', '{pid=1,menuId=5}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/orgpost/index?pid=32&menuId=32', 'POST', '/website/permission/saveMenuId', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6939', '2016-07-01 21:43:17', null, null, '2016-07-01 21:43:17', '添加Permission', 'jiange_admin', '44', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6940', '2016-07-01 21:43:17', null, null, '2016-07-01 21:43:17', '{status=,name=区域分管,pid=1,value=,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6941', '2016-07-01 21:43:34', null, null, '2016-07-01 21:43:34', '{name=区域分管,pid=0,value=,sort=5,id=44}', 'jiange_admin', '44', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6942', '2016-07-01 21:44:08', null, null, '2016-07-01 21:44:08', '{name=区域划分管理,pid=0,value=,sort=5,id=44}', 'jiange_admin', '44', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6943', '2016-07-01 21:45:42', null, null, '2016-07-01 21:45:42', '添加Permission', 'jiange_admin', '45', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6944', '2016-07-01 21:45:42', null, null, '2016-07-01 21:45:42', '{status=,name=领导分管区域,pid=44,value=/,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6945', '2016-07-01 21:46:37', null, null, '2016-07-01 21:46:37', '添加Permission', 'jiange_admin', '46', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6946', '2016-07-01 21:46:37', null, null, '2016-07-01 21:46:37', '{status=,name=我的工作,pid=0,value=,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6947', '2016-07-01 21:47:36', null, null, '2016-07-01 21:47:36', '添加Permission', 'jiange_admin', '47', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6948', '2016-07-01 21:47:36', null, null, '2016-07-01 21:47:36', '{status=,name=已审批信访,pid=46,value=,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6949', '2016-07-01 21:48:18', null, null, '2016-07-01 21:48:18', '添加Permission', 'jiange_admin', '48', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6950', '2016-07-01 21:48:18', null, null, '2016-07-01 21:48:18', '{status=,name=未回复信访,pid=46,value=/,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6951', '2016-07-01 21:49:18', null, null, '2016-07-01 21:49:18', '添加Permission', 'jiange_admin', '49', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6952', '2016-07-01 21:49:18', null, null, '2016-07-01 21:49:18', '{status=,name=已处理公开信息,pid=46,value=/,sort=0,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6953', '2016-07-01 21:49:47', null, null, '2016-07-01 21:49:47', '添加Permission', 'jiange_admin', '50', 'Permission', '添加', null, null, null, '1', 'admin');
INSERT INTO `operation_log` VALUES ('6954', '2016-07-01 21:49:47', null, null, '2016-07-01 21:49:47', '{status=,name=未处理公开信息,pid=46,value=/,sort=5,id=}', 'jiange_admin', '', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/create', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6955', '2016-07-01 21:51:43', null, null, '2016-07-01 21:51:43', '{name=工作日程表,pid=46,value=,sort=5,id=38}', 'jiange_admin', '38', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6956', '2016-07-01 21:52:12', null, null, '2016-07-01 21:52:12', '{name=区域分管设置,pid=44,value=/,sort=5,id=45}', 'jiange_admin', '45', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');
INSERT INTO `operation_log` VALUES ('6957', '2016-07-01 21:52:35', null, null, '2016-07-01 21:52:35', '{name=职责划分管理,pid=0,value=,sort=5,id=44}', 'jiange_admin', '44', null, null, 'http://115.28.111.121:8080/website/permission/permissionlist?menuId=5&menuId=5&pid=5&menuId=5', 'POST', '/website/permission/update', '1', 'admin');

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
  `description` longtext,
  `name` varchar(50) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '2016-06-26 19:37:08', null, null, '2016-06-26 19:37:09', null, '反贪污贿赂部门', '0');
INSERT INTO `organization` VALUES ('2', '2016-06-26 19:37:26', null, null, '2016-06-26 19:37:26', null, '反渎职侵权部门', '0');
INSERT INTO `organization` VALUES ('3', '2016-06-26 19:37:39', null, null, '2016-06-26 19:37:39', null, '公诉部门', '0');
INSERT INTO `organization` VALUES ('4', '2016-06-26 19:37:51', null, null, '2016-06-26 19:37:51', null, '监所检察部门', '0');
INSERT INTO `organization` VALUES ('5', '2016-06-26 19:38:02', null, null, '2016-06-26 19:38:02', null, '民事行政检察部门', '0');
INSERT INTO `organization` VALUES ('6', '2016-06-26 19:38:12', null, null, '2016-06-26 19:38:12', null, '职务犯罪预防部门', '0');
INSERT INTO `organization` VALUES ('7', '2016-06-26 19:38:25', null, null, '2016-06-26 19:38:25', null, '检察技术部门', '0');
INSERT INTO `organization` VALUES ('8', '2016-06-26 19:38:42', null, null, '2016-06-26 19:38:42', null, '纪检部门', '0');
INSERT INTO `organization` VALUES ('9', '2016-06-26 19:38:55', null, null, '2016-06-26 19:38:55', null, '监察机关', '0');
INSERT INTO `organization` VALUES ('10', '2016-06-28 22:55:27', null, null, '2016-06-28 22:55:27', null, '外聘联络员', '1');
INSERT INTO `organization` VALUES ('11', '2016-06-28 22:55:43', null, null, '2016-06-28 22:55:43', null, '联络点联络员', '1');

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
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgpost
-- ----------------------------
INSERT INTO `orgpost` VALUES ('1', '2016-06-26 19:39:30', null, null, '2016-06-26 19:39:30', '检察长');
INSERT INTO `orgpost` VALUES ('2', '2016-06-26 19:39:40', null, null, '2016-06-26 19:39:40', '副检察长');
INSERT INTO `orgpost` VALUES ('3', '2016-06-26 19:39:46', null, null, '2016-06-26 19:39:46', '科长');
INSERT INTO `orgpost` VALUES ('4', '2016-06-26 19:39:56', null, null, '2016-06-26 19:39:56', '副科长');
INSERT INTO `orgpost` VALUES ('5', '2016-06-28 22:40:37', null, null, '2016-06-28 22:40:37', '主任');
INSERT INTO `orgpost` VALUES ('6', '2016-06-26 19:40:09', null, null, '2016-06-26 19:40:09', '副主任');
INSERT INTO `orgpost` VALUES ('7', '2016-06-28 22:54:15', null, null, '2016-06-28 22:54:15', '联络点联络员');
INSERT INTO `orgpost` VALUES ('8', '2016-06-28 22:54:27', null, null, '2016-06-28 22:54:27', '外聘联络员');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '2014-08-26 17:39:34', null, '2014-08-27 10:56:53', '', '系统设置', '0', '5', '', 'BVCS', 'URI', '', '');
INSERT INTO `permission` VALUES ('2', '2014-08-26 17:39:47', null, '2015-11-29 11:37:22', null, '用户管理', '1', '2', '', 'BVCS', 'URI', 'user/userlist?menuId=2&menuId=2', null);
INSERT INTO `permission` VALUES ('3', '2014-08-26 17:55:15', null, '2015-11-29 11:37:22', null, '角色管理', '1', '3', '', 'BVCS', 'URI', 'role/rolelist?menuId=3&menuId=3', null);
INSERT INTO `permission` VALUES ('4', '2014-08-26 17:55:39', null, '2016-01-15 18:12:20', null, '测试管理', '6', '1', '', 'BVCS', 'URI', 'test/index', null);
INSERT INTO `permission` VALUES ('5', '2014-08-26 17:56:01', null, '2015-11-29 11:37:22', null, '菜单管理', '1', '4', '', 'BVCS', 'URI', 'permission/permissionlist?menuId=5&menuId=5', null);
INSERT INTO `permission` VALUES ('6', '2014-08-26 17:39:34', null, '2016-06-21 11:37:06', '', '信息平台', '0', '5', '', 'BVCS', 'URI', '', '');
INSERT INTO `permission` VALUES ('23', '2014-11-18 11:37:17', null, '2015-11-29 11:37:22', null, '操作日志', '1', '1', 'valid', 'BVCS', 'URI', 'operationLog/operationLoglist?menuId=23&menuId=23', null);
INSERT INTO `permission` VALUES ('24', '2015-11-15 17:25:40', null, '2015-11-15 17:25:40', null, '新建菜单', '1', '0', 'valid', 'BVCS', 'URI', 'index/welcome', null);
INSERT INTO `permission` VALUES ('25', '2016-06-21 11:12:49', null, '2016-06-21 11:33:56', null, '乡镇信息管理', '6', '1', '', 'BVCS', 'URI', 'county/index', null);
INSERT INTO `permission` VALUES ('26', '2016-06-21 11:23:09', null, '2016-06-21 11:33:50', null, '社区信息管理', '6', '1', '', 'BVCS', 'URI', 'community/index', null);
INSERT INTO `permission` VALUES ('27', '2016-06-21 11:23:47', null, '2016-06-21 11:33:45', null, '学校信息管理', '6', '1', '', 'BVCS', 'URI', 'school/index', null);
INSERT INTO `permission` VALUES ('28', '2016-06-21 11:24:37', null, '2016-06-21 11:33:39', null, '机构信息管理', '6', '1', '', 'BVCS', 'URI', 'org/index', null);
INSERT INTO `permission` VALUES ('29', '2016-06-21 11:27:56', null, '2016-06-21 11:37:00', null, '信访平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('30', '2016-06-21 11:28:05', null, '2016-06-21 11:33:26', null, '接访信息', '29', '1', 'valid', 'BVCS', 'URI', 'letter/index', null);
INSERT INTO `permission` VALUES ('31', '2016-06-21 11:31:53', null, '2016-06-21 11:33:19', null, '回复接访信息', '29', '1', '', 'BVCS', 'URI', 'letterreply/index', null);
INSERT INTO `permission` VALUES ('32', '2016-06-21 11:34:29', null, '2016-06-21 11:34:29', null, '职位信息管理', '6', '1', '', 'BVCS', 'URI', 'orgpost/index', null);
INSERT INTO `permission` VALUES ('33', '2016-06-21 11:36:32', null, '2016-06-21 11:37:29', null, '网络平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('34', '2016-06-21 11:36:52', null, '2016-06-21 11:36:52', null, '维稳平台', null, '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('35', '2016-06-21 11:37:56', null, '2016-06-21 11:37:56', null, '监督平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('36', '2016-06-21 11:39:22', null, '2016-06-21 11:39:22', null, '数据统计', '33', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('37', '2016-06-21 11:39:47', null, '2016-06-21 11:40:09', null, '职责信息', '33', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('38', '2016-06-21 11:41:15', null, '2016-07-01 21:51:43', null, '工作日程表', '46', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('39', '2016-06-21 11:42:24', null, '2016-06-30 19:05:45', null, '公共信息', '35', '5', 'valid', 'BVCS', 'URI', 'superv/index', null);
INSERT INTO `permission` VALUES ('40', '2016-06-21 11:44:24', null, '2016-06-21 11:44:24', null, '回复公共信息', '35', '5', '', 'BVCS', 'URI', 'supervreply/index', null);
INSERT INTO `permission` VALUES ('41', '2016-06-21 11:47:58', null, '2016-06-21 11:47:58', null, '维稳平台', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('42', '2016-06-21 11:49:12', null, '2016-06-21 11:49:12', null, '高危人员分类', '41', '1', '', 'BVCS', 'URI', 'dangercategory/index', null);
INSERT INTO `permission` VALUES ('43', '2016-06-21 11:50:17', null, '2016-06-21 11:50:17', null, '高危人员信息', '41', '1', '', 'BVCS', 'URI', 'dangerpeople/index', null);
INSERT INTO `permission` VALUES ('44', '2016-07-01 21:43:17', null, '2016-07-01 21:52:35', null, '职责划分管理', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('45', '2016-07-01 21:45:42', null, '2016-07-01 21:52:12', null, '区域分管设置', '44', '5', '', 'BVCS', 'URI', '/', null);
INSERT INTO `permission` VALUES ('46', '2016-07-01 21:46:37', null, '2016-07-01 21:46:37', null, '我的工作', '0', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('47', '2016-07-01 21:47:36', null, '2016-07-01 21:47:36', null, '已审批信访', '46', '5', '', 'BVCS', 'URI', '', null);
INSERT INTO `permission` VALUES ('48', '2016-07-01 21:48:18', null, '2016-07-01 21:48:18', null, '未回复信访', '46', '5', '', 'BVCS', 'URI', '/', null);
INSERT INTO `permission` VALUES ('49', '2016-07-01 21:49:18', null, '2016-07-01 21:49:18', null, '已处理公开信息', '46', '0', '', 'BVCS', 'URI', '/', null);
INSERT INTO `permission` VALUES ('50', '2016-07-01 21:49:47', null, '2016-07-01 21:49:47', null, '未处理公开信息', '46', '5', '', 'BVCS', 'URI', '/', null);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2014-08-26 17:50:22', null, '2014-08-26 17:50:22', 0xE7B3BBE7BB9FE7AEA1E79086E59198, '', '系统管理员', null);
INSERT INTO `role` VALUES ('2', '2014-08-26 17:50:46', null, '2014-08-27 11:04:33', 0xE4B88AE4BCA0E4BABAE59198, '', '上传人员', null);
INSERT INTO `role` VALUES ('3', '2014-08-27 11:05:20', null, '2014-08-27 11:05:20', 0xE58F91E5B883E4BABAE59198, '', '发布人员', null);
INSERT INTO `role` VALUES ('4', '2014-08-27 11:06:10', null, '2014-08-27 11:06:10', 0xE8BF90E890A5E4B893E59198, '', '运营专员', null);
INSERT INTO `role` VALUES ('5', '2014-08-27 11:06:28', null, '2014-08-27 11:06:28', 0xE5AEA1E6A0B8E4BABAE59198, '', '审核人员', null);

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
INSERT INTO `role_permission` VALUES ('4', '1');
INSERT INTO `role_permission` VALUES ('4', '2');
INSERT INTO `role_permission` VALUES ('4', '3');
INSERT INTO `role_permission` VALUES ('4', '4');
INSERT INTO `role_permission` VALUES ('4', '5');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('2', '25');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('1', '4');
INSERT INTO `role_permission` VALUES ('1', '5');
INSERT INTO `role_permission` VALUES ('1', '23');
INSERT INTO `role_permission` VALUES ('1', '25');
INSERT INTO `role_permission` VALUES ('1', '26');
INSERT INTO `role_permission` VALUES ('1', '27');
INSERT INTO `role_permission` VALUES ('1', '28');
INSERT INTO `role_permission` VALUES ('1', '30');
INSERT INTO `role_permission` VALUES ('1', '31');
INSERT INTO `role_permission` VALUES ('1', '32');
INSERT INTO `role_permission` VALUES ('1', '36');
INSERT INTO `role_permission` VALUES ('1', '37');
INSERT INTO `role_permission` VALUES ('1', '38');
INSERT INTO `role_permission` VALUES ('1', '39');
INSERT INTO `role_permission` VALUES ('1', '40');
INSERT INTO `role_permission` VALUES ('1', '42');
INSERT INTO `role_permission` VALUES ('1', '43');

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
  `name` varchar(50) DEFAULT NULL,
  `townid` bigint(20) DEFAULT NULL,
  `villageid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '2016-06-26 18:37:03', null, null, '2016-06-26 18:37:03', '1', '鼓楼中学', '鼓楼中学', '0', '0');
INSERT INTO `school` VALUES ('2', '2016-06-26 18:37:22', null, null, '2016-06-26 18:37:22', '1', '卧龙中学', '卧龙中学', '0', '0');
INSERT INTO `school` VALUES ('3', '2016-06-26 18:37:53', null, null, '2016-06-26 18:37:53', '1', '较场坝小学', '较场坝小学', '0', '0');

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
  `name` varchar(50) DEFAULT NULL,
  `eventtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supervision
-- ----------------------------
INSERT INTO `supervision` VALUES ('1', '2016-06-26 11:45:51', null, null, '2016-06-26 11:45:51', '剑阁县监督信息2016', '信访监督信息2016', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supervision_reply
-- ----------------------------
INSERT INTO `supervision_reply` VALUES ('1', '2016-06-26 11:46:40', null, null, '2016-06-26 11:46:40', '剑阁县监督信息回复2016', '监督信息回复2016', '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('9', '2016-06-21 11:10:47', null, null, '2016-06-21 11:10:47', '6543215678', '123456');
INSERT INTO `test` VALUES ('10', '2016-06-21 11:11:18', null, null, '2016-06-21 11:11:18', '描述测试测试测试', '测试测试');
INSERT INTO `test` VALUES ('11', '2016-06-28 14:51:27', null, null, '2016-06-28 14:51:27', '987654321', '987654321');

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
INSERT INTO `user` VALUES ('1', '2014-07-29 15:16:11', '2016-07-01 21:35:32', null, null, '', '', '\0', null, '2016-07-01 21:35:32', '0', null, null, 'e3ceb5881a0a1fdaad01296d7554868d', null, 'adminuser', 'admin', null, null);

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
  KEY `FK143BF46A3D93FA2E` (`roles`),
  KEY `FK143BF46A3751C291` (`user`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`roles`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
