/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-09-05 00:24:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  `t_txt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '121', '5151');
INSERT INTO `test` VALUES ('2', '6', '6');
INSERT INTO `test` VALUES ('3', '7', '7');
INSERT INTO `test` VALUES ('4', '8', '8');

-- ----------------------------
-- Table structure for `t_sys_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
INSERT INTO `t_sys_permission_role` VALUES ('1', '1', '1');
INSERT INTO `t_sys_permission_role` VALUES ('10', '1', '9');
INSERT INTO `t_sys_permission_role` VALUES ('11', '1', '10');
INSERT INTO `t_sys_permission_role` VALUES ('12', '1', '11');
INSERT INTO `t_sys_permission_role` VALUES ('13', '1', '12');
INSERT INTO `t_sys_permission_role` VALUES ('14', '1', '13');
INSERT INTO `t_sys_permission_role` VALUES ('15', '1', '14');
INSERT INTO `t_sys_permission_role` VALUES ('16', '1', '15');
INSERT INTO `t_sys_permission_role` VALUES ('17', '1', '16');
INSERT INTO `t_sys_permission_role` VALUES ('18', '1', '17');
INSERT INTO `t_sys_permission_role` VALUES ('19', '1', '18');
INSERT INTO `t_sys_permission_role` VALUES ('2', '1', '2');
INSERT INTO `t_sys_permission_role` VALUES ('3', '2', '1');
INSERT INTO `t_sys_permission_role` VALUES ('4', '1', '3');
INSERT INTO `t_sys_permission_role` VALUES ('5', '1', '4');
INSERT INTO `t_sys_permission_role` VALUES ('6', '1', '5');
INSERT INTO `t_sys_permission_role` VALUES ('7', '1', '6');
INSERT INTO `t_sys_permission_role` VALUES ('8', '1', '7');
INSERT INTO `t_sys_permission_role` VALUES ('9', '1', '8');

-- ----------------------------
-- Table structure for `t_sys_premission`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_premission`;
CREATE TABLE `t_sys_premission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `pid` varchar(255) DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_premission
-- ----------------------------
INSERT INTO `t_sys_premission` VALUES ('1', 'ROLE_HOME', 'home', '/home', null, 'home', '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', null, 'system:role:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', null, 'system:role:add', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', null, 'system:role:remove', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', null, 'system:role:edit', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('14', '权限展示', '权限展示', '/PremissionController/view', '', 'system:premission:view', '1', null, null);
INSERT INTO `t_sys_premission` VALUES ('15', '权限集合', '权限集合', '/PremissionController/list', '', 'system:premission:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('16', '权限添加', '权限添加', '/PremissionController/add', '', 'system:premission:add', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('17', '权限删除', '权限删除', '/PremissionController/remove', '', 'system:premission:remove', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('18', '权限修改', '权限修改', '/PremissionController/edit', '', 'system:premission:edit', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('2', 'ROLE_ADMIN', 'ABel', '/admin', null, 'admin', '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('3', 'ROLE_ADMIN', 'json', '/TestController/test', null, 'test', '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('4', '用户展示', '用户展示', '/UserController/view', null, 'system:user:view', '1', null, null);
INSERT INTO `t_sys_premission` VALUES ('486690002869157888', '33', '33', '33', null, '33', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', null, 'system:user:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', null, 'system:user:add', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', null, 'system:user:remove', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', null, 'system:user:edit', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('9', '角色展示', '角色展示', '/RoleController/view', null, 'system:role:view', '1', null, null);

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', 'admin角色');
INSERT INTO `t_sys_role` VALUES ('2', '用户角色');
INSERT INTO `t_sys_role` VALUES ('485927676985475072', '阿斯顿');

-- ----------------------------
-- Table structure for `t_sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sys_user_id` varchar(255) DEFAULT NULL COMMENT 'ç”¨æˆ·id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('1', '1', '1');
INSERT INTO `t_sys_role_user` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `t_sys_user` VALUES ('485671107106439168', 'wqw', 'qwqwqw');
