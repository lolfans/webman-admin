/*
 Navicat Premium Data Transfer

 Source Server         : ls的数据库
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : 47.109.133.11:3306
 Source Schema         : car_charge_service

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 21/07/2023 16:04:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wa_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `wa_admin_roles`;
CREATE TABLE `wa_admin_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_admin_id`(`role_id`, `admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_admin_roles
-- ----------------------------
INSERT INTO `wa_admin_roles` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for wa_admins
-- ----------------------------
DROP TABLE IF EXISTS `wa_admins`;
CREATE TABLE `wa_admins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/app/admin/avatar.png' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `login_at` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_admins
-- ----------------------------
INSERT INTO `wa_admins` VALUES (1, 'liushuai', '超级管理员', '$2y$10$giP7H9vVg5smhEPgV9Bt2ud2qa6ZP.eH0wg25yhTwVNqHMSEHM6rm', '/app/admin/avatar.png', NULL, NULL, '2023-07-20 13:42:47', '2023-07-21 15:50:41', '2023-07-21 15:50:41', NULL);

-- ----------------------------
-- Table structure for wa_options
-- ----------------------------
DROP TABLE IF EXISTS `wa_options`;
CREATE TABLE `wa_options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '键',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '值',
  `created_at` datetime(0) NOT NULL DEFAULT '2022-08-15 00:00:00' COMMENT '创建时间',
  `updated_at` datetime(0) NOT NULL DEFAULT '2022-08-15 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_options
-- ----------------------------
INSERT INTO `wa_options` VALUES (1, 'system_config', '{\"logo\":{\"title\":\"\\u82cd\\u751f Admin\",\"image\":\"\\/app\\/admin\\/admin\\/images\\/logo.png\"},\"menu\":{\"data\":\"\\/app\\/admin\\/rule\\/get\",\"method\":\"GET\",\"accordion\":true,\"collapse\":false,\"control\":false,\"controlWidth\":500,\"select\":\"0\",\"async\":true},\"tab\":{\"enable\":true,\"keepState\":true,\"preload\":false,\"session\":true,\"max\":\"30\",\"index\":{\"id\":\"0\",\"href\":\"\\/app\\/admin\\/index\\/dashboard\",\"title\":\"\\u4eea\\u8868\\u76d8\"}},\"theme\":{\"defaultColor\":\"2\",\"defaultMenu\":\"light-theme\",\"defaultHeader\":\"light-theme\",\"allowCustom\":true,\"banner\":false},\"colors\":[{\"id\":\"1\",\"color\":\"#36b368\",\"second\":\"#f0f9eb\"},{\"id\":\"2\",\"color\":\"#2d8cf0\",\"second\":\"#ecf5ff\"},{\"id\":\"3\",\"color\":\"#f6ad55\",\"second\":\"#fdf6ec\"},{\"id\":\"4\",\"color\":\"#f56c6c\",\"second\":\"#fef0f0\"},{\"id\":\"5\",\"color\":\"#3963bc\",\"second\":\"#ecf5ff\"}],\"other\":{\"keepLoad\":\"500\",\"autoHead\":false,\"footer\":false},\"header\":{\"message\":false}}', '2022-12-05 14:49:01', '2023-07-21 15:50:24');
INSERT INTO `wa_options` VALUES (2, 'table_form_schema_wa_users', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"enable_sort\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false},\"username\":{\"field\":\"username\",\"_field_id\":\"1\",\"comment\":\"用户名\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"nickname\":{\"field\":\"nickname\",\"_field_id\":\"2\",\"comment\":\"昵称\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"password\":{\"field\":\"password\",\"_field_id\":\"3\",\"comment\":\"密码\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"sex\":{\"field\":\"sex\",\"_field_id\":\"4\",\"comment\":\"性别\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/dict\\/get\\/sex\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"avatar\":{\"field\":\"avatar\",\"_field_id\":\"5\",\"comment\":\"头像\",\"control\":\"uploadImage\",\"control_args\":\"url:\\/app\\/admin\\/upload\\/avatar\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"email\":{\"field\":\"email\",\"_field_id\":\"6\",\"comment\":\"邮箱\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"mobile\":{\"field\":\"mobile\",\"_field_id\":\"7\",\"comment\":\"手机\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"level\":{\"field\":\"level\",\"_field_id\":\"8\",\"comment\":\"等级\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false},\"birthday\":{\"field\":\"birthday\",\"_field_id\":\"9\",\"comment\":\"生日\",\"control\":\"datePicker\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"between\",\"list_show\":false,\"enable_sort\":false},\"money\":{\"field\":\"money\",\"_field_id\":\"10\",\"comment\":\"余额(元)\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false},\"score\":{\"field\":\"score\",\"_field_id\":\"11\",\"comment\":\"积分\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false},\"last_time\":{\"field\":\"last_time\",\"_field_id\":\"12\",\"comment\":\"登录时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"between\",\"list_show\":false,\"enable_sort\":false},\"last_ip\":{\"field\":\"last_ip\",\"_field_id\":\"13\",\"comment\":\"登录ip\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false},\"join_time\":{\"field\":\"join_time\",\"_field_id\":\"14\",\"comment\":\"注册时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"between\",\"list_show\":false,\"enable_sort\":false},\"join_ip\":{\"field\":\"join_ip\",\"_field_id\":\"15\",\"comment\":\"注册ip\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false},\"token\":{\"field\":\"token\",\"_field_id\":\"16\",\"comment\":\"token\",\"control\":\"input\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"17\",\"comment\":\"创建时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"search_type\":\"between\",\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"18\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"between\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"role\":{\"field\":\"role\",\"_field_id\":\"19\",\"comment\":\"角色\",\"control\":\"inputNumber\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"status\":{\"field\":\"status\",\"_field_id\":\"20\",\"comment\":\"禁用\",\"control\":\"switch\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-23 15:28:13');
INSERT INTO `wa_options` VALUES (3, 'table_form_schema_wa_roles', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"name\":{\"field\":\"name\",\"_field_id\":\"1\",\"comment\":\"角色组\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"rules\":{\"field\":\"rules\",\"_field_id\":\"2\",\"comment\":\"权限\",\"control\":\"treeSelectMulti\",\"control_args\":\"url:\\/app\\/admin\\/rule\\/get?type=0,1,2\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"3\",\"comment\":\"创建时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"4\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"pid\":{\"field\":\"pid\",\"_field_id\":\"5\",\"comment\":\"父级\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/role\\/select?format=tree\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-19 14:24:25');
INSERT INTO `wa_options` VALUES (4, 'table_form_schema_wa_rules', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"title\":{\"field\":\"title\",\"_field_id\":\"1\",\"comment\":\"标题\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"icon\":{\"field\":\"icon\",\"_field_id\":\"2\",\"comment\":\"图标\",\"control\":\"iconPicker\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"key\":{\"field\":\"key\",\"_field_id\":\"3\",\"comment\":\"标识\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"pid\":{\"field\":\"pid\",\"_field_id\":\"4\",\"comment\":\"上级菜单\",\"control\":\"treeSelect\",\"control_args\":\"\\/app\\/admin\\/rule\\/select?format=tree&type=0,1\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"5\",\"comment\":\"创建时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"6\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"href\":{\"field\":\"href\",\"_field_id\":\"7\",\"comment\":\"url\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"type\":{\"field\":\"type\",\"_field_id\":\"8\",\"comment\":\"类型\",\"control\":\"select\",\"control_args\":\"data:0:目录,1:菜单,2:权限\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"weight\":{\"field\":\"weight\",\"_field_id\":\"9\",\"comment\":\"排序\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-08 11:44:45');
INSERT INTO `wa_options` VALUES (5, 'table_form_schema_wa_admins', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"ID\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"enable_sort\":true,\"search_type\":\"between\",\"form_show\":false,\"searchable\":false},\"username\":{\"field\":\"username\",\"_field_id\":\"1\",\"comment\":\"用户名\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"nickname\":{\"field\":\"nickname\",\"_field_id\":\"2\",\"comment\":\"昵称\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"password\":{\"field\":\"password\",\"_field_id\":\"3\",\"comment\":\"密码\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"avatar\":{\"field\":\"avatar\",\"_field_id\":\"4\",\"comment\":\"头像\",\"control\":\"uploadImage\",\"control_args\":\"url:\\/app\\/admin\\/upload\\/avatar\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"email\":{\"field\":\"email\",\"_field_id\":\"5\",\"comment\":\"邮箱\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"mobile\":{\"field\":\"mobile\",\"_field_id\":\"6\",\"comment\":\"手机\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"7\",\"comment\":\"创建时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"searchable\":true,\"search_type\":\"between\",\"list_show\":false,\"enable_sort\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"8\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"search_type\":\"normal\",\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"login_at\":{\"field\":\"login_at\",\"_field_id\":\"9\",\"comment\":\"登录时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"between\",\"enable_sort\":false,\"searchable\":false},\"status\":{\"field\":\"status\",\"_field_id\":\"10\",\"comment\":\"禁用\",\"control\":\"switch\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-23 15:36:48');
INSERT INTO `wa_options` VALUES (6, 'table_form_schema_wa_options', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"name\":{\"field\":\"name\",\"_field_id\":\"1\",\"comment\":\"键\",\"control\":\"input\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"value\":{\"field\":\"value\",\"_field_id\":\"2\",\"comment\":\"值\",\"control\":\"textArea\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"3\",\"comment\":\"创建时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"4\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-08 11:36:57');
INSERT INTO `wa_options` VALUES (7, 'table_form_schema_wa_uploads', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"enable_sort\":true,\"search_type\":\"normal\",\"form_show\":false,\"searchable\":false},\"name\":{\"field\":\"name\",\"_field_id\":\"1\",\"comment\":\"名称\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false},\"url\":{\"field\":\"url\",\"_field_id\":\"2\",\"comment\":\"文件\",\"control\":\"upload\",\"control_args\":\"url:\\/app\\/admin\\/upload\\/file\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"admin_id\":{\"field\":\"admin_id\",\"_field_id\":\"3\",\"comment\":\"管理员\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/admin\\/select?format=select\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"file_size\":{\"field\":\"file_size\",\"_field_id\":\"4\",\"comment\":\"文件大小\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"between\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"mime_type\":{\"field\":\"mime_type\",\"_field_id\":\"5\",\"comment\":\"mime类型\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"image_width\":{\"field\":\"image_width\",\"_field_id\":\"6\",\"comment\":\"图片宽度\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"image_height\":{\"field\":\"image_height\",\"_field_id\":\"7\",\"comment\":\"图片高度\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"ext\":{\"field\":\"ext\",\"_field_id\":\"8\",\"comment\":\"扩展名\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false},\"storage\":{\"field\":\"storage\",\"_field_id\":\"9\",\"comment\":\"存储位置\",\"control\":\"input\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"10\",\"comment\":\"上传时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"searchable\":true,\"search_type\":\"between\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false},\"category\":{\"field\":\"category\",\"_field_id\":\"11\",\"comment\":\"类别\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/dict\\/get\\/upload\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"12\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-08 11:47:45');
INSERT INTO `wa_options` VALUES (8, 'table_form_schema_wa_uploads', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"enable_sort\":true,\"search_type\":\"normal\",\"form_show\":false,\"searchable\":false},\"name\":{\"field\":\"name\",\"_field_id\":\"1\",\"comment\":\"名称\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false},\"url\":{\"field\":\"url\",\"_field_id\":\"2\",\"comment\":\"文件\",\"control\":\"upload\",\"control_args\":\"url:\\/app\\/admin\\/upload\\/file\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"admin_id\":{\"field\":\"admin_id\",\"_field_id\":\"3\",\"comment\":\"管理员\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/admin\\/select?format=select\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"file_size\":{\"field\":\"file_size\",\"_field_id\":\"4\",\"comment\":\"文件大小\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"between\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"mime_type\":{\"field\":\"mime_type\",\"_field_id\":\"5\",\"comment\":\"mime类型\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"image_width\":{\"field\":\"image_width\",\"_field_id\":\"6\",\"comment\":\"图片宽度\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"image_height\":{\"field\":\"image_height\",\"_field_id\":\"7\",\"comment\":\"图片高度\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false,\"searchable\":false},\"ext\":{\"field\":\"ext\",\"_field_id\":\"8\",\"comment\":\"扩展名\",\"control\":\"input\",\"control_args\":\"\",\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false,\"enable_sort\":false},\"storage\":{\"field\":\"storage\",\"_field_id\":\"9\",\"comment\":\"存储位置\",\"control\":\"input\",\"control_args\":\"\",\"search_type\":\"normal\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false,\"searchable\":false},\"created_at\":{\"field\":\"created_at\",\"_field_id\":\"10\",\"comment\":\"上传时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"searchable\":true,\"search_type\":\"between\",\"form_show\":false,\"list_show\":false,\"enable_sort\":false},\"category\":{\"field\":\"category\",\"_field_id\":\"11\",\"comment\":\"类别\",\"control\":\"select\",\"control_args\":\"url:\\/app\\/admin\\/dict\\/get\\/upload\",\"form_show\":true,\"list_show\":true,\"searchable\":true,\"search_type\":\"normal\",\"enable_sort\":false},\"updated_at\":{\"field\":\"updated_at\",\"_field_id\":\"12\",\"comment\":\"更新时间\",\"control\":\"dateTimePicker\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-08 11:47:45');
INSERT INTO `wa_options` VALUES (9, 'dict_upload', '[{\"value\":\"1\",\"name\":\"分类1\"},{\"value\":\"2\",\"name\":\"分类2\"},{\"value\":\"3\",\"name\":\"分类3\"}]', '2022-12-04 16:24:13', '2022-12-04 16:24:13');
INSERT INTO `wa_options` VALUES (10, 'dict_sex', '[{\"value\":\"0\",\"name\":\"女\"},{\"value\":\"1\",\"name\":\"男\"}]', '2022-12-04 15:04:40', '2022-12-04 15:04:40');
INSERT INTO `wa_options` VALUES (11, 'dict_status', '[{\"value\":\"0\",\"name\":\"正常\"},{\"value\":\"1\",\"name\":\"禁用\"}]', '2022-12-04 15:05:09', '2022-12-04 15:05:09');
INSERT INTO `wa_options` VALUES (17, 'table_form_schema_wa_admin_roles', '{\"id\":{\"field\":\"id\",\"_field_id\":\"0\",\"comment\":\"主键\",\"control\":\"inputNumber\",\"control_args\":\"\",\"list_show\":true,\"enable_sort\":true,\"searchable\":true,\"search_type\":\"normal\",\"form_show\":false},\"role_id\":{\"field\":\"role_id\",\"_field_id\":\"1\",\"comment\":\"角色id\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false},\"admin_id\":{\"field\":\"admin_id\",\"_field_id\":\"2\",\"comment\":\"管理员id\",\"control\":\"inputNumber\",\"control_args\":\"\",\"form_show\":true,\"list_show\":true,\"search_type\":\"normal\",\"enable_sort\":false,\"searchable\":false}}', '2022-08-15 00:00:00', '2022-12-20 19:42:51');

-- ----------------------------
-- Table structure for wa_roles
-- ----------------------------
DROP TABLE IF EXISTS `wa_roles`;
CREATE TABLE `wa_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色组',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '权限',
  `created_at` datetime(0) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NOT NULL COMMENT '更新时间',
  `pid` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_roles
-- ----------------------------
INSERT INTO `wa_roles` VALUES (1, '超级管理员', '*', '2022-08-13 16:15:01', '2022-12-23 12:05:07', NULL);

-- ----------------------------
-- Table structure for wa_rules
-- ----------------------------
DROP TABLE IF EXISTS `wa_rules`;
CREATE TABLE `wa_rules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标识',
  `pid` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单',
  `created_at` datetime(0) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NOT NULL COMMENT '更新时间',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'url',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '类型',
  `weight` int(11) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_rules
-- ----------------------------
INSERT INTO `wa_rules` VALUES (1, '数据库', 'layui-icon-template-1', 'database', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 1000);
INSERT INTO `wa_rules` VALUES (2, '所有表', NULL, 'plugin\\admin\\app\\controller\\TableController', 1, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/table/index', 1, 800);
INSERT INTO `wa_rules` VALUES (3, '权限管理', 'layui-icon-vercode', 'auth', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 900);
INSERT INTO `wa_rules` VALUES (4, '账户管理', NULL, 'plugin\\admin\\app\\controller\\AdminController', 3, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/admin/index', 1, 1000);
INSERT INTO `wa_rules` VALUES (5, '角色管理', NULL, 'plugin\\admin\\app\\controller\\RoleController', 3, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/role/index', 1, 900);
INSERT INTO `wa_rules` VALUES (6, '菜单管理', NULL, 'plugin\\admin\\app\\controller\\RuleController', 3, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/rule/index', 1, 800);
INSERT INTO `wa_rules` VALUES (7, '会员管理', 'layui-icon-username', 'user', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 800);
INSERT INTO `wa_rules` VALUES (8, '用户', NULL, 'plugin\\admin\\app\\controller\\UserController', 7, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/user/index', 1, 800);
INSERT INTO `wa_rules` VALUES (9, '通用设置', 'layui-icon-set', 'common', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 700);
INSERT INTO `wa_rules` VALUES (10, '个人资料', NULL, 'plugin\\admin\\app\\controller\\AccountController', 9, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/account/index', 1, 800);
INSERT INTO `wa_rules` VALUES (11, '附件管理', NULL, 'plugin\\admin\\app\\controller\\UploadController', 9, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/upload/index', 1, 700);
INSERT INTO `wa_rules` VALUES (12, '字典设置', NULL, 'plugin\\admin\\app\\controller\\DictController', 9, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/dict/index', 1, 600);
INSERT INTO `wa_rules` VALUES (13, '系统设置', NULL, 'plugin\\admin\\app\\controller\\ConfigController', 9, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/config/index', 1, 500);
INSERT INTO `wa_rules` VALUES (14, '插件管理', 'layui-icon-app', 'plugin', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 600);
INSERT INTO `wa_rules` VALUES (15, '应用插件', NULL, 'plugin\\admin\\app\\controller\\PluginController', 14, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/plugin/index', 1, 800);
INSERT INTO `wa_rules` VALUES (16, '开发辅助', 'layui-icon-fonts-code', 'dev', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 500);
INSERT INTO `wa_rules` VALUES (17, '表单构建', NULL, 'plugin\\admin\\app\\controller\\DevController', 16, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/dev/form-build', 1, 800);
INSERT INTO `wa_rules` VALUES (18, '示例页面', 'layui-icon-templeate-1', 'demos', 0, '2023-07-20 13:42:40', '2023-07-20 13:42:40', NULL, 0, 400);
INSERT INTO `wa_rules` VALUES (19, '工作空间', 'layui-icon-console', 'demo1', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (20, '控制后台', 'layui-icon-console', 'demo10', 19, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/console/console1.html', 1, 0);
INSERT INTO `wa_rules` VALUES (21, '数据分析', 'layui-icon-console', 'demo13', 19, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/console/console2.html', 1, 0);
INSERT INTO `wa_rules` VALUES (22, '百度一下', 'layui-icon-console', 'demo14', 19, '2023-07-20 13:42:40', '2023-07-20 13:42:40', 'http://www.baidu.com', 1, 0);
INSERT INTO `wa_rules` VALUES (23, '主题预览', 'layui-icon-console', 'demo15', 19, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/theme.html', 1, 0);
INSERT INTO `wa_rules` VALUES (24, '常用组件', 'layui-icon-component', 'demo20', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (25, '功能按钮', 'layui-icon-face-smile', 'demo2011', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/button.html', 1, 0);
INSERT INTO `wa_rules` VALUES (26, '表单集合', 'layui-icon-face-cry', 'demo2014', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/form.html', 1, 0);
INSERT INTO `wa_rules` VALUES (27, '字体图标', 'layui-icon-face-cry', 'demo2010', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/icon.html', 1, 0);
INSERT INTO `wa_rules` VALUES (28, '多选下拉', 'layui-icon-face-cry', 'demo2012', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/select.html', 1, 0);
INSERT INTO `wa_rules` VALUES (29, '动态标签', 'layui-icon-face-cry', 'demo2013', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/tag.html', 1, 0);
INSERT INTO `wa_rules` VALUES (30, '数据表格', 'layui-icon-face-cry', 'demo2031', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/table.html', 1, 0);
INSERT INTO `wa_rules` VALUES (31, '分布表单', 'layui-icon-face-cry', 'demo2032', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/step.html', 1, 0);
INSERT INTO `wa_rules` VALUES (32, '树形表格', 'layui-icon-face-cry', 'demo2033', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/treetable.html', 1, 0);
INSERT INTO `wa_rules` VALUES (33, '树状结构', 'layui-icon-face-cry', 'demo2034', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/dtree.html', 1, 0);
INSERT INTO `wa_rules` VALUES (34, '文本编辑', 'layui-icon-face-cry', 'demo2035', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/tinymce.html', 1, 0);
INSERT INTO `wa_rules` VALUES (35, '卡片组件', 'layui-icon-face-cry', 'demo2036', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/card.html', 1, 0);
INSERT INTO `wa_rules` VALUES (36, '抽屉组件', 'layui-icon-face-cry', 'demo2021', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/drawer.html', 1, 0);
INSERT INTO `wa_rules` VALUES (37, '消息通知', 'layui-icon-face-cry', 'demo2022', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/notice.html', 1, 0);
INSERT INTO `wa_rules` VALUES (38, '加载组件', 'layui-icon-face-cry', 'demo2024', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/loading.html', 1, 0);
INSERT INTO `wa_rules` VALUES (39, '弹层组件', 'layui-icon-face-cry', 'demo2023', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/popup.html', 1, 0);
INSERT INTO `wa_rules` VALUES (40, '多选项卡', 'layui-icon-face-cry', 'demo60131', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/tab.html', 1, 0);
INSERT INTO `wa_rules` VALUES (41, '数据菜单', 'layui-icon-face-cry', 'demo60132', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/menu.html', 1, 0);
INSERT INTO `wa_rules` VALUES (42, '哈希加密', 'layui-icon-face-cry', 'demo2041', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/encrypt.html', 1, 0);
INSERT INTO `wa_rules` VALUES (43, '图标选择', 'layui-icon-face-cry', 'demo2042', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/iconPicker.html', 1, 0);
INSERT INTO `wa_rules` VALUES (44, '省市级联', 'layui-icon-face-cry', 'demo2043', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/area.html', 1, 0);
INSERT INTO `wa_rules` VALUES (45, '数字滚动', 'layui-icon-face-cry', 'demo2044', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/count.html', 1, 0);
INSERT INTO `wa_rules` VALUES (46, '顶部返回', 'layui-icon-face-cry', 'demo2045', 24, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/document/topBar.html', 1, 0);
INSERT INTO `wa_rules` VALUES (47, '结果页面', 'layui-icon-auz', 'demo666', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (48, '成功', 'layui-icon-face-smile', 'demo667', 47, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/result/success.html', 1, 0);
INSERT INTO `wa_rules` VALUES (49, '失败', 'layui-icon-face-cry', 'demo668', 47, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/result/error.html', 1, 0);
INSERT INTO `wa_rules` VALUES (50, '错误页面', 'layui-icon-face-cry', 'demo-error', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (51, '403', 'layui-icon-face-smile', 'demo403', 50, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/error/403.html', 1, 0);
INSERT INTO `wa_rules` VALUES (52, '404', 'layui-icon-face-cry', 'demo404', 50, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/error/404.html', 1, 0);
INSERT INTO `wa_rules` VALUES (53, '500', 'layui-icon-face-cry', 'demo500', 50, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/error/500.html', 1, 0);
INSERT INTO `wa_rules` VALUES (54, '系统管理', 'layui-icon-set-fill', 'demo-system', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (55, '用户管理', 'layui-icon-face-smile', 'demo601', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/user.html', 1, 0);
INSERT INTO `wa_rules` VALUES (56, '角色管理', 'layui-icon-face-cry', 'demo602', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/role.html', 1, 0);
INSERT INTO `wa_rules` VALUES (57, '权限管理', 'layui-icon-face-cry', 'demo603', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/power.html', 1, 0);
INSERT INTO `wa_rules` VALUES (58, '部门管理', 'layui-icon-face-cry', 'demo604', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/deptment.html', 1, 0);
INSERT INTO `wa_rules` VALUES (59, '行为日志', 'layui-icon-face-cry', 'demo605', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/log.html', 1, 0);
INSERT INTO `wa_rules` VALUES (60, '数据字典', 'layui-icon-face-cry', 'demo606', 54, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/dict.html', 1, 0);
INSERT INTO `wa_rules` VALUES (61, '常用页面', 'layui-icon-template-1', 'demo-common', 18, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '', 0, 0);
INSERT INTO `wa_rules` VALUES (62, '空白页面', 'layui-icon-face-smile', 'demo702', 61, '2023-07-20 13:42:40', '2023-07-20 13:42:40', '/app/admin/demos/system/space.html', 1, 0);
INSERT INTO `wa_rules` VALUES (63, '查看表', NULL, 'plugin\\admin\\app\\controller\\TableController@view', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (64, '查询表', NULL, 'plugin\\admin\\app\\controller\\TableController@show', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (65, '创建表', NULL, 'plugin\\admin\\app\\controller\\TableController@create', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (66, '修改表', NULL, 'plugin\\admin\\app\\controller\\TableController@modify', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (67, '一键菜单', NULL, 'plugin\\admin\\app\\controller\\TableController@crud', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (68, '查询记录', NULL, 'plugin\\admin\\app\\controller\\TableController@select', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (69, '插入记录', NULL, 'plugin\\admin\\app\\controller\\TableController@insert', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (70, '更新记录', NULL, 'plugin\\admin\\app\\controller\\TableController@update', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (71, '删除记录', NULL, 'plugin\\admin\\app\\controller\\TableController@delete', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (72, '删除表', NULL, 'plugin\\admin\\app\\controller\\TableController@drop', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (73, '表摘要', NULL, 'plugin\\admin\\app\\controller\\TableController@schema', 2, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (74, '插入', NULL, 'plugin\\admin\\app\\controller\\AdminController@insert', 4, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (75, '更新', NULL, 'plugin\\admin\\app\\controller\\AdminController@update', 4, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (76, '删除', NULL, 'plugin\\admin\\app\\controller\\AdminController@delete', 4, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (77, '插入', NULL, 'plugin\\admin\\app\\controller\\RoleController@insert', 5, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (78, '更新', NULL, 'plugin\\admin\\app\\controller\\RoleController@update', 5, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (79, '删除', NULL, 'plugin\\admin\\app\\controller\\RoleController@delete', 5, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (80, '获取角色权限', NULL, 'plugin\\admin\\app\\controller\\RoleController@rules', 5, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (81, '查询', NULL, 'plugin\\admin\\app\\controller\\RuleController@select', 6, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (82, '添加', NULL, 'plugin\\admin\\app\\controller\\RuleController@insert', 6, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (83, '更新', NULL, 'plugin\\admin\\app\\controller\\RuleController@update', 6, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (84, '删除', NULL, 'plugin\\admin\\app\\controller\\RuleController@delete', 6, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (85, '插入', NULL, 'plugin\\admin\\app\\controller\\UserController@insert', 8, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (86, '更新', NULL, 'plugin\\admin\\app\\controller\\UserController@update', 8, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (87, '查询', NULL, 'plugin\\admin\\app\\controller\\UserController@select', 8, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (88, '删除', NULL, 'plugin\\admin\\app\\controller\\UserController@delete', 8, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (89, '更新', NULL, 'plugin\\admin\\app\\controller\\AccountController@update', 10, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (90, '修改密码', NULL, 'plugin\\admin\\app\\controller\\AccountController@password', 10, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (91, '查询', NULL, 'plugin\\admin\\app\\controller\\AccountController@select', 10, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (92, '添加', NULL, 'plugin\\admin\\app\\controller\\AccountController@insert', 10, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (93, '删除', NULL, 'plugin\\admin\\app\\controller\\AccountController@delete', 10, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (94, '浏览附件', NULL, 'plugin\\admin\\app\\controller\\UploadController@attachment', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (95, '查询附件', NULL, 'plugin\\admin\\app\\controller\\UploadController@select', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (96, '更新附件', NULL, 'plugin\\admin\\app\\controller\\UploadController@update', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (97, '添加附件', NULL, 'plugin\\admin\\app\\controller\\UploadController@insert', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (98, '上传文件', NULL, 'plugin\\admin\\app\\controller\\UploadController@file', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (99, '上传图片', NULL, 'plugin\\admin\\app\\controller\\UploadController@image', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (100, '上传头像', NULL, 'plugin\\admin\\app\\controller\\UploadController@avatar', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (101, '删除附件', NULL, 'plugin\\admin\\app\\controller\\UploadController@delete', 11, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (102, '查询', NULL, 'plugin\\admin\\app\\controller\\DictController@select', 12, '2023-07-20 13:56:41', '2023-07-20 13:56:41', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (103, '插入', NULL, 'plugin\\admin\\app\\controller\\DictController@insert', 12, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (104, '更新', NULL, 'plugin\\admin\\app\\controller\\DictController@update', 12, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (105, '删除', NULL, 'plugin\\admin\\app\\controller\\DictController@delete', 12, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (106, '更改', NULL, 'plugin\\admin\\app\\controller\\ConfigController@update', 13, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (107, '列表', NULL, 'plugin\\admin\\app\\controller\\PluginController@list', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (108, '安装', NULL, 'plugin\\admin\\app\\controller\\PluginController@install', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (109, '卸载', NULL, 'plugin\\admin\\app\\controller\\PluginController@uninstall', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (110, '支付', NULL, 'plugin\\admin\\app\\controller\\PluginController@pay', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (111, '登录官网', NULL, 'plugin\\admin\\app\\controller\\PluginController@login', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (112, '获取已安装的插件列表', NULL, 'plugin\\admin\\app\\controller\\PluginController@getInstalledPlugins', 15, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);
INSERT INTO `wa_rules` VALUES (113, '表单构建', NULL, 'plugin\\admin\\app\\controller\\DevController@formBuild', 17, '2023-07-20 13:56:42', '2023-07-20 13:56:42', NULL, 2, 0);

-- ----------------------------
-- Table structure for wa_uploads
-- ----------------------------
DROP TABLE IF EXISTS `wa_uploads`;
CREATE TABLE `wa_uploads`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '管理员',
  `file_size` int(11) NOT NULL COMMENT '文件大小',
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'mime类型',
  `image_width` int(11) NULL DEFAULT NULL COMMENT '图片宽度',
  `image_height` int(11) NULL DEFAULT NULL COMMENT '图片高度',
  `ext` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '扩展名',
  `storage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `created_at` date NULL DEFAULT NULL COMMENT '上传时间',
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别',
  `updated_at` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category`(`category`) USING BTREE,
  INDEX `admin_id`(`admin_id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `ext`(`ext`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wa_users
-- ----------------------------
DROP TABLE IF EXISTS `wa_users`;
CREATE TABLE `wa_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `sex` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '性别',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '等级',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额(元)',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '积分',
  `last_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `last_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `join_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `join_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册ip',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'token',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '角色',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `join_time`(`join_time`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE,
  INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_users
-- ----------------------------
INSERT INTO `wa_users` VALUES (1, 'liu', 'liu', '$2y$10$izwswC7RXMyC.EDCabbdCeEWOBLouqySIH/OsHicEv2C2Itbw.Dhe', '1', '', '', '', 0, NULL, 0.00, 0, NULL, '', NULL, '', NULL, '2023-07-20 16:03:21', '2023-07-20 16:03:21', 1, 0);
INSERT INTO `wa_users` VALUES (2, 'kk', 'kk', '$2y$10$/NR8Qqd8T/wXgXepJw8bruhQe1on/jaxN/D3L3saRLVdcNlaiEw.q', '1', '', '', '', 0, NULL, 0.00, 0, NULL, '', NULL, '', NULL, '2023-07-21 11:00:25', '2023-07-21 11:00:25', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
