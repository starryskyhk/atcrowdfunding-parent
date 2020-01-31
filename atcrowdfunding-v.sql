/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : 127.0.0.1:3306
Source Database       : atcrowdfunding-v

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-01-31 21:59:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '系统菜单', '0', null, 'glyphicon glyphicon-th-list');
INSERT INTO `t_permission` VALUES ('2', '控制面板', '1', '', null);
INSERT INTO `t_permission` VALUES ('3', '权限管理', '1', null, null);
INSERT INTO `t_permission` VALUES ('4', '用户维护', '3', null, null);
INSERT INTO `t_permission` VALUES ('5', '角色维护', '3', null, null);
INSERT INTO `t_permission` VALUES ('6', '许可维护', '3', null, null);
INSERT INTO `t_permission` VALUES ('8', '增加用户', '4', null, null);
INSERT INTO `t_permission` VALUES ('9', '修改用户', '4', null, null);
INSERT INTO `t_permission` VALUES ('10', '11', '1', '', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'PM-项目经理');
INSERT INTO `t_role` VALUES ('2', 'SE-软件工程师');
INSERT INTO `t_role` VALUES ('3', 'PG-程序员');
INSERT INTO `t_role` VALUES ('4', 'TL-组长');
INSERT INTO `t_role` VALUES ('5', 'GL-组长');
INSERT INTO `t_role` VALUES ('6', 'QC-品质管控');
INSERT INTO `t_role` VALUES ('7', 'SA-软件架构师');
INSERT INTO `t_role` VALUES ('8', 'CMO/CMS-配置管理员');
INSERT INTO `t_role` VALUES ('9', 'SYSTEM-系统管理员');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '3', '1');
INSERT INTO `t_role_permission` VALUES ('2', '3', '3');
INSERT INTO `t_role_permission` VALUES ('3', '3', '4');
INSERT INTO `t_role_permission` VALUES ('4', '3', '5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `loginacct` varchar(255) DEFAULT NULL,
  `userpswd` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createtime` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '张三', 'zhangsan', 'zhangsan', '1115@qq.com', null);
INSERT INTO `t_user` VALUES ('8', 'ddd的', 'dd', '123456', 'd', '2020-01-30 21:31:18');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '3');
