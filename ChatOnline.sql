/*
 Navicat Premium Data Transfer

 Source Server         : 云服务器
 Source Server Type    : MySQL
 Source Server Version : 50562 (5.5.62-log)
 Source Host           : 121.43.149.99:3306
 Source Schema         : ppchat

 Target Server Type    : MySQL
 Target Server Version : 50562 (5.5.62-log)
 File Encoding         : 65001

 Date: 14/06/2024 19:20:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hy
-- ----------------------------
DROP TABLE IF EXISTS `hy`;
CREATE TABLE `hy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `hy_user_id` int(11) NOT NULL COMMENT '好友用户',
  `nr` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `zt` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '好友' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hy
-- ----------------------------
INSERT INTO `hy` VALUES (14, 35, 34, '111', '1');
INSERT INTO `hy` VALUES (15, 36, 37, NULL, '1');
INSERT INTO `hy` VALUES (16, 36, 38, '凯南', '1');
INSERT INTO `hy` VALUES (17, 38, 35, NULL, '1');
INSERT INTO `hy` VALUES (18, 38, 34, NULL, '1');
INSERT INTO `hy` VALUES (19, 38, 37, NULL, '0');
INSERT INTO `hy` VALUES (20, 35, 36, '111111111111', '1');
INSERT INTO `hy` VALUES (21, 35, 37, '11111111111', '0');
INSERT INTO `hy` VALUES (22, 39, 38, '1', '1');
INSERT INTO `hy` VALUES (23, 39, 37, '1', '0');
INSERT INTO `hy` VALUES (24, 39, 36, '1', '1');
INSERT INTO `hy` VALUES (25, 39, 35, '1', '1');
INSERT INTO `hy` VALUES (26, 39, 34, '1', '1');
INSERT INTO `hy` VALUES (27, 3, 39, '111', '1');
INSERT INTO `hy` VALUES (28, 3, 34, NULL, '1');
INSERT INTO `hy` VALUES (29, 3, 35, NULL, '1');
INSERT INTO `hy` VALUES (30, 3, 36, NULL, '1');
INSERT INTO `hy` VALUES (31, 3, 37, NULL, '0');
INSERT INTO `hy` VALUES (32, 3, 38, NULL, '1');
INSERT INTO `hy` VALUES (33, 39, 40, NULL, '0');
INSERT INTO `hy` VALUES (34, 39, 41, NULL, '0');
INSERT INTO `hy` VALUES (35, 36, 34, NULL, '0');
INSERT INTO `hy` VALUES (36, 36, 40, NULL, '0');
INSERT INTO `hy` VALUES (37, 36, 41, NULL, '0');
INSERT INTO `hy` VALUES (38, 38, 41, NULL, '0');
INSERT INTO `hy` VALUES (39, 38, 40, NULL, '0');
INSERT INTO `hy` VALUES (40, 3, 41, NULL, '0');
INSERT INTO `hy` VALUES (41, 3, 40, NULL, '0');
INSERT INTO `hy` VALUES (42, 42, 34, NULL, '0');
INSERT INTO `hy` VALUES (43, 42, 35, NULL, '1');
INSERT INTO `hy` VALUES (44, 42, 37, NULL, '0');
INSERT INTO `hy` VALUES (45, 42, 38, NULL, '1');
INSERT INTO `hy` VALUES (46, 42, 39, NULL, '1');
INSERT INTO `hy` VALUES (47, 42, 40, NULL, '0');
INSERT INTO `hy` VALUES (48, 42, 41, NULL, '0');

-- ----------------------------
-- Table structure for imgroup
-- ----------------------------
DROP TABLE IF EXISTS `imgroup`;
CREATE TABLE `imgroup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '群组聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of imgroup
-- ----------------------------
INSERT INTO `imgroup` VALUES (46, 'hello', 'shenshiyang', 'http://121.43.149.99/api/files/qy-default.png', '2024-06-06 00:30:19', 'text');
INSERT INTO `imgroup` VALUES (47, 'http://121.43.149.99/api/files/1717641906217-计算机网络实验任务书及评分标准(2024).docx', 'shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-06 10:45:06', 'file');
INSERT INTO `imgroup` VALUES (48, 'http://121.43.149.99/api/files/1717641940671-屏幕截图 2024-06-06 103326.png', 'shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-06 10:45:40', 'img');
INSERT INTO `imgroup` VALUES (49, 'hhhh', 'gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-06 13:49:31', 'text');
INSERT INTO `imgroup` VALUES (50, 'http://121.43.149.99/api/files/1717655467801-xhy.png', 'xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', '2024-06-06 14:31:07', 'img');
INSERT INTO `imgroup` VALUES (51, 'http://121.43.149.99/api/files/1717656894479-测试.cpp', 'xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', '2024-06-06 14:54:54', 'file');
INSERT INTO `imgroup` VALUES (61, '111', 'shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-06 18:47:09', 'text');
INSERT INTO `imgroup` VALUES (62, 'hi', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-06 18:59:49', 'text');
INSERT INTO `imgroup` VALUES (63, '😁', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-06 18:59:54', 'text');
INSERT INTO `imgroup` VALUES (64, '1111<div><br></div>', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-09 11:47:50', 'text');
INSERT INTO `imgroup` VALUES (67, 'http://121.43.149.99/api/files/1718026807322-6BF42382F81422CDF314BF28B0E19565.jpg', 'shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-10 21:40:07', 'img');
INSERT INTO `imgroup` VALUES (70, 'http://121.43.149.99/api/files/1718026979535-thumb_night_895da10e-4ed0-4517-a527-a288f1b8939c.jpeg', 'shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-10 21:42:59', 'img');
INSERT INTO `imgroup` VALUES (75, 'http://121.43.149.99/api/files/1718113936435-《计算机网络》实验报告(2024) .docx', 'gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-11 21:52:16', 'file');
INSERT INTO `imgroup` VALUES (78, 'http://121.43.149.99/api/files/1718160875452-2023-2024-2-万明老师-杨俊奕学生（6109121067）.docx', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-12 10:54:35', 'file');
INSERT INTO `imgroup` VALUES (79, '😍', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-12 10:54:43', 'text');
INSERT INTO `imgroup` VALUES (80, 'hello e', 'admin', 'http://121.43.149.99/api/files/1717642762314-1714127463566-7.png', '2024-06-12 11:20:53', 'text');
INSERT INTO `imgroup` VALUES (81, '😏', 'yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-12 11:22:38', 'text');
INSERT INTO `imgroup` VALUES (82, 'cvgg', 'shenshiyang', 'http://121.43.149.99/api/files/qy-default.png', '2024-06-12 12:28:17', 'text');

-- ----------------------------
-- Table structure for imsingle
-- ----------------------------
DROP TABLE IF EXISTS `imsingle`;
CREATE TABLE `imsingle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `fromuser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发送人',
  `fromavatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发送人头像',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `touser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '接收人',
  `toavatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '接收人头像',
  `readed` int(11) NULL DEFAULT 0 COMMENT '是否已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '单人聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of imsingle
-- ----------------------------
INSERT INTO `imsingle` VALUES (36, 'http://121.43.149.99/api/files/1717598924233-xhy.png', 'USER_xhy', 'http://121.43.149.99/api/files/1717598402866-xhy.png', '2024-06-05 22:48:44', 'img', 'USER_xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', 1);
INSERT INTO `imsingle` VALUES (37, 'hello', 'USER_shenshiyang', 'http://121.43.149.99/api/files/qy-default.png', '2024-06-06 00:25:30', 'text', 'USER_chusheng', 'http://121.43.149.99/api/files/qy-default.png', 0);
INSERT INTO `imsingle` VALUES (38, 'hello<div><br></div>', 'USER_gkn', 'http://121.43.149.99/api/files/qy-default.png', '2024-06-06 00:29:34', 'text', 'USER_shenshiyang', 'http://121.43.149.99/api/files/qy-default.png', 1);
INSERT INTO `imsingle` VALUES (39, 'hello<div><br></div>', 'USER_shenshiyang', 'http://121.43.149.99/api/files/qy-default.png', '2024-06-06 00:29:43', 'text', 'USER_gkn', 'http://121.43.149.99/api/files/qy-default.png', 1);
INSERT INTO `imsingle` VALUES (40, 'http://121.43.149.99/api/files/1717655532166-ikun.png', 'USER_xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', '2024-06-06 14:32:12', 'img', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', 1);
INSERT INTO `imsingle` VALUES (41, 'http://121.43.149.99/api/files/1717655543546-f4.jpg', 'USER_xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', '2024-06-06 14:32:23', 'img', 'USER_xhy', 'http://121.43.149.99/api/files/1717598402866-xhy.png', 0);
INSERT INTO `imsingle` VALUES (42, '😛', 'USER_xty', 'http://121.43.149.99/api/files/1717598448558-ikun.png', '2024-06-07 19:53:51', 'text', 'USER_shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', 1);
INSERT INTO `imsingle` VALUES (43, '123123', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-11 22:15:47', 'text', 'ADMIN_admin', 'http://121.43.149.99/api/files/1717642762314-1714127463566-7.png', 0);
INSERT INTO `imsingle` VALUES (44, '111', 'USER_shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-11 22:28:10', 'text', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', 1);
INSERT INTO `imsingle` VALUES (45, 'hello<div><br></div>', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-11 22:29:04', 'text', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', 1);
INSERT INTO `imsingle` VALUES (46, 'hi<div><br></div>', 'USER_shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', '2024-06-11 22:29:07', 'text', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', 1);
INSERT INTO `imsingle` VALUES (47, '你好', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-11 22:29:20', 'text', 'USER_shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', 1);
INSERT INTO `imsingle` VALUES (48, 'http://121.43.149.99/api/files/1718116174145-2023-2024-1-万明老师-高恺南学生（6109121067）.docx', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-11 22:29:34', 'file', 'USER_shenshiyang', 'http://121.43.149.99/api/files/1717641259350-屏幕截图 2024-06-06 103326.png', 1);
INSERT INTO `imsingle` VALUES (49, '1', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', '2024-06-12 10:25:55', 'text', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', 1);
INSERT INTO `imsingle` VALUES (50, '1223<div><br></div>', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-12 10:53:19', 'text', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', 1);
INSERT INTO `imsingle` VALUES (51, 'http://121.43.149.99/api/files/1718160837430-Cover.jpg', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-12 10:53:57', 'img', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', 1);
INSERT INTO `imsingle` VALUES (52, 'http://121.43.149.99/api/files/1718160849358-3-【4K顶级画质60FPS】蔡徐坤《只因你太美》原版完整版现场！一晃眼6年过去了-480P 清晰-AVC.mp4', 'USER_gkn', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', '2024-06-12 10:54:09', 'video', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', 1);
INSERT INTO `imsingle` VALUES (53, 'jgfjfj', 'ADMIN_admin', 'http://121.43.149.99/api/files/1717642762314-1714127463566-7.png', '2024-06-12 11:21:06', 'text', 'USER_yjy', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', 0);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '群组聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (45, '欢迎使用在线聊天系统', '在这里，您可以进行单人聊天和群组聊天，与朋友和同事方便地交流。系统还支持文件发送功能，您可以轻松共享各种文档和图片。不要忘了添加好友并管理您的好友列表，享受更便捷的沟通体验。希望您在这里度过愉快的时光！', '2024-06-01 11:13:59');
INSERT INTO `notice` VALUES (46, '新用户指南', '欢迎新用户！感谢您选择我们的在线聊天系统。为了帮助您快速上手，我们准备了一些使用小贴士：1. 使用单人聊天功能，与朋友一对一交流；2. 参与群组聊天，与多个好友一起讨论；3. 通过文件发送功能，轻松共享重要文档和图片；4. 添加好友并管理您的好友列表，随时与重要联系人保持联系。祝您使用愉快！', '2024-06-01 11:14:55');
INSERT INTO `notice` VALUES (47, '更新公告', '大家好！为了提升用户体验，我们对NCU在线聊天系统进行了功能更新。此次更新具体内容如下：\n1、新增了表情包发送功能，您现在可以在聊天中使用各种有趣的表情包，丰富您的聊天体验。\n2、现在，您可以直接在聊天窗口中播放发送的视频，无需下载到本地，让聊天更加流畅。\n3、此外，我们还优化了聊天记录的加载速度，并修复了一些已知问题。\n希望大家在使用过程中多多反馈，感谢您的支持与配合！', '2024-06-06 22:00:39');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'USER' COMMENT '角色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `inmoney` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '抢到红包钱',
  `outmoney` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '发出红包钱',
  `zongmoney` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '总钱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'admin', '123456', '男', 25, '18888222999', 'ADMIN', 'http://121.43.149.99/api/files/1718166734067-test2.png', NULL, NULL, '0');
INSERT INTO `user` VALUES (34, 'xhy', '123456', '男', 21, '1980978123', 'USER', 'http://121.43.149.99/api/files/1717598402866-xhy.png', NULL, NULL, '0');
INSERT INTO `user` VALUES (35, 'xty', '123456', '男', 22, '17809893366', 'USER', 'http://121.43.149.99/api/files/1717598448558-ikun.png', NULL, NULL, '0');
INSERT INTO `user` VALUES (37, 'chusheng', '123456', '男', 23, '13907007575', 'USER', 'http://121.43.149.99/api/files/1717653009769-bc66aa88-e8ec-40a4-a6bb-191edfc54cca.jpeg', NULL, NULL, '0');
INSERT INTO `user` VALUES (38, 'gkn', '123456', '男', 22, NULL, 'USER', 'http://121.43.149.99/api/files/1717652947598-edffbe36-c105-4447-8029-4c0c5187a3d5.jpeg', NULL, NULL, '0');
INSERT INTO `user` VALUES (39, 'yjy', '123456', '男', 21, '13907007575', 'USER', 'http://121.43.149.99/api/files/1717671536852-a3177a0c-a2b7-49e1-8bd2-a4f4fe8d179c.jpeg', NULL, NULL, '0');
INSERT INTO `user` VALUES (40, 'pxy', '123456', NULL, NULL, NULL, 'USER', 'http://121.43.149.99/api/files/1717769968700-test2.png', NULL, NULL, '0');
INSERT INTO `user` VALUES (41, 'zmy', '123456', NULL, NULL, NULL, 'USER', 'http://121.43.149.99/api/files/qy-default.png', NULL, NULL, '0');
INSERT INTO `user` VALUES (42, 'shenshiyang', '123456', '男', 21, '19870116208', 'USER', 'http://121.43.149.99/api/files/1718166556221-chusheng.jpg', NULL, NULL, '0');

SET FOREIGN_KEY_CHECKS = 1;
