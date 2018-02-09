/*
 Navicat Premium Data Transfer

 Source Server         : xiexie
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : mysql

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 09/02/2018 16:46:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tebuy
-- ----------------------------
DROP TABLE IF EXISTS `tebuy`;
CREATE TABLE `tebuy`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tebuy
-- ----------------------------
INSERT INTO `tebuy` VALUES (1, 'img/tebuy', '可莱丝面膜专场', 57.00, 'women', '2018-02-08 21:28:27');
INSERT INTO `tebuy` VALUES (2, 'img/tebuy2.jpg', ' Childlife营养品专场', 55.00, 'milk', '2018-02-08 16:55:41');
INSERT INTO `tebuy` VALUES (3, 'img/tebuy3.jpg', ' 新西兰红印品牌专场', 66.00, 'women', '2018-02-08 21:28:23');
INSERT INTO `tebuy` VALUES (9, 'img/tebuy4.jpg', '小林专场', 40.00, 'style', '2018-02-08 16:58:17');
INSERT INTO `tebuy` VALUES (5, 'img/tebuy5.jpg', '孕期营养专场', 57.00, 'milk', '2018-02-08 16:55:51');
INSERT INTO `tebuy` VALUES (6, 'img/tebuy6.jpg', '产后恢复专场', 35.00, 'style', '2018-02-08 16:58:04');
INSERT INTO `tebuy` VALUES (7, 'img/tebuy7.jpg', '哈罗闪母护婴专场', 52.00, 'women', '2018-02-08 21:28:19');
INSERT INTO `tebuy` VALUES (8, 'img/tebuy8.jpg', '音乐玩具专场', 26.00, 'baby', '2018-02-08 16:56:37');
INSERT INTO `tebuy` VALUES (10, 'img/tebuy9.jpg', '儿童口腔清洁护理专场', 50.00, 'baby', '2018-02-08 16:56:44');
INSERT INTO `tebuy` VALUES (11, 'img/tebuy10.jpg', '女性营养健康专场', 58.00, 'milk', '2018-02-08 16:56:29');
INSERT INTO `tebuy` VALUES (12, 'img/tebuy11.jpg', '甜蜜糖果专场', 69.00, 'milk', '2018-02-08 16:57:49');

SET FOREIGN_KEY_CHECKS = 1;
