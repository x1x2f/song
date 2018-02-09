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

 Date: 09/02/2018 16:45:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for milk
-- ----------------------------
DROP TABLE IF EXISTS `milk`;
CREATE TABLE `milk`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of milk
-- ----------------------------
INSERT INTO `milk` VALUES (1, '../img/milk1.jpg', '美赞成牛奶粉', 95.00, '来自美赞成的精选奶粉', 'milk', '2018-02-08 18:00:32');
INSERT INTO `milk` VALUES (2, '../img/milk2.jpg', '牛栏奶粉', 100.00, '大草原的馈赠牛栏奶粉', 'milk', '2018-02-08 18:00:34');
INSERT INTO `milk` VALUES (3, '../img/milk3.jpg', '德国爱他美奶粉', 105.00, '来自欧洲的纯装正统货', 'milk', '2018-02-08 18:00:36');
INSERT INTO `milk` VALUES (4, '../img/milk4.jpg', '德国喜宝奶粉', 96.00, '喜剧家族诞生以来一直坚守的纯真', 'milk', '2018-02-08 18:00:37');
INSERT INTO `milk` VALUES (5, '../img/milk5.jpg', '荷兰美素奶粉', 98.00, '来自海上马车夫的国度你值得拥有', 'milk', '2018-02-08 18:00:39');
INSERT INTO `milk` VALUES (6, '../img/milk6.jpg', '德国特福芬有机奶', 99.00, '要喝就喝有机奶', 'milk', '2018-02-08 18:00:41');
INSERT INTO `milk` VALUES (7, '../img/milk7.jpg', '澳洲贝拉米奶粉', 120.00, '国人疯狂shopping的澳洲奶粉你喝过吗', 'milk', '2018-02-08 18:00:43');
INSERT INTO `milk` VALUES (8, '../img/milk8.png', '新西兰惠芬奶粉', 121.00, '来自大草原的纯正奶源，要的就是纯真', 'milk', '2018-02-08 18:00:45');
INSERT INTO `milk` VALUES (9, '../img/milk9.jpg', '雅培箐智奶粉', 150.00, '贵族奶粉让你的孩子从小赢在起跑线上', 'milk', '2018-02-08 18:00:46');
INSERT INTO `milk` VALUES (10, '../img/milk10.jpg', '三鹿奶粉', 200.00, '还在为孩子的幼稚感到担忧吗，选三鹿告别幼稚从此不再吃奶', 'milk', '2018-02-08 18:01:07');
INSERT INTO `milk` VALUES (11, '../img/style1.jpg', '黄瓜面膜', 19.00, NULL, 'style', '2018-02-08 19:33:40');
INSERT INTO `milk` VALUES (12, '../img/style2.jpg', '迪奥真我香水', 59.00, NULL, 'style', '2018-02-08 19:35:09');
INSERT INTO `milk` VALUES (13, '../img/style3.jpg', '【花漾淡香水】迪奥Dior花漾甜心淡香水 5ml（海外版）', 75.00, NULL, 'style', '2018-02-08 19:36:32');
INSERT INTO `milk` VALUES (14, '../img/style4.jpg', '【一段非凡的邂逅】菲拉格慕Ferragamo Incanto Charms甜心魔力女士香水 30ml（海外版）', 109.00, NULL, 'style', '2018-02-08 19:39:40');
INSERT INTO `milk` VALUES (15, '../img/style5.jpg', '巴宝莉Burberry英伦迷情女士香水 30ml（海外版）', 115.00, NULL, 'style', '2018-02-08 19:41:49');
INSERT INTO `milk` VALUES (16, '../img/style6.jpg', '【展现迷人个性】菲拉格慕Ferragamo incanto Bloom魔法奇缘淡香水 30ml（海外版）', 125.00, NULL, 'style', '2018-02-08 19:45:00');
INSERT INTO `milk` VALUES (17, '../img/style7.jpg', '【释放真我 尽显情柔】迪奥Dior真我女士香水纯香5ml*3（海外版）', 175.00, NULL, 'style', '2018-02-08 19:47:36');
INSERT INTO `milk` VALUES (18, '../img/style8.jpg', '韩国直邮 包邮包税【细腻水润】得鲜the SAEM 按压口红 水润 02完美珊瑚红色（海外版）', 78.00, NULL, 'style', '2018-02-08 19:49:39');
INSERT INTO `milk` VALUES (19, '../img/style9.jpg', '韩国直邮 包邮包税【持久不脱细腻水润】得鲜 the SAEM 按压口红 水润 05蜜糖粉色（海外版）', 78.00, NULL, 'style', '2018-02-08 19:50:21');
INSERT INTO `milk` VALUES (20, '../img/style10.jpg', '韩国直邮 包邮包税【清爽持久细腻水润】得鲜the SAEM 按压口红 水润 07清爽蓝莓紫（海外版）', 78.00, NULL, 'style', '2018-02-08 19:50:28');
INSERT INTO `milk` VALUES (21, '../img/baby1.jpg', '新品水陆旗鱼艇+呱唧（新品-蓝色）- 正版美泰飓风海底小纵队 益智玩具', 169.00, NULL, 'baby', '2018-02-08 20:06:35');
INSERT INTO `milk` VALUES (22, '../img/baby2.jpg', '英国托马斯&朋友电动系列之城堡大冒险套装BGL99', 259.00, NULL, 'baby', '2018-02-08 20:06:38');
INSERT INTO `milk` VALUES (23, '../img/baby3.jpg', '美国B.Toys大桶沙滩玩具套装--木瓜款', 186.00, NULL, 'baby', '2018-02-08 20:06:44');
INSERT INTO `milk` VALUES (24, '../img/baby4.jpg', '【沙滩派对 马卡龙色】皇室玩具TOYROYAL沙滩戏水玩具5件套 Flex系列', 144.00, NULL, 'baby', '2018-02-08 20:06:47');
INSERT INTO `milk` VALUES (25, '../img/baby5.jpg', '美国Zoobies动物造型三合一长颈鹿中号毛绒、宝宝靠垫、宝宝空调毯BP111', 199.00, NULL, 'baby', '2018-02-08 20:06:57');
INSERT INTO `milk` VALUES (26, '../img/baby6.jpg', '金刚（新品-棕色）- 正版奥迪双钻超级飞侠 变形机器人玩具', 79.00, NULL, 'baby', '2018-02-08 20:07:00');
INSERT INTO `milk` VALUES (27, '../img/baby7.jpg', '淘淘（新品-红色）- 正版奥迪双钻超级飞侠 变形机器人玩具', 89.00, NULL, 'baby', '2018-02-08 20:07:06');
INSERT INTO `milk` VALUES (28, '../img/baby8.jpg', '德国Hape工具敲敲乐（12个月以上）', 39.00, NULL, 'baby', '2018-02-08 20:07:14');
INSERT INTO `milk` VALUES (29, '../img/baby9.jpg', '德国Hape砖匠工具（18个月以上）', 129.00, NULL, 'baby', '2018-02-08 20:07:17');
INSERT INTO `milk` VALUES (30, '../img/baby10.jpg', '【识字识物】德国Hape大写字母立体拼图（3岁以上）', 79.00, NULL, 'baby', '2018-02-08 20:07:54');
INSERT INTO `milk` VALUES (31, '../img/women1.jpg', '康宝妈咪产后剖顺宽搭扣两用加强收腹带', 68.00, NULL, 'women', '2018-02-08 21:28:46');
INSERT INTO `milk` VALUES (32, '../img/women2.jpg', '康宝妈咪绣花产后剖顺两用加强收腹带', 78.00, NULL, 'women', '2018-02-08 21:28:47');
INSERT INTO `milk` VALUES (33, '../img/women3.jpg', '康宝妈咪产后加强骨盆矫正带', 98.00, NULL, 'women', '2018-02-08 21:28:49');
INSERT INTO `milk` VALUES (34, '../img/women4.jpg', '婷美康美婷男女士通用收腹带大码运动护腰带腰椎间盘腰肌劳损', 89.00, NULL, 'women', '2018-02-08 21:28:51');
INSERT INTO `milk` VALUES (35, '../img/women5.jpg', '【去妊娠纹 紧致收腹】美国Palmer\'s孕妇专用修复膏铁盒 125g', 123.00, NULL, 'women', '2018-02-08 21:28:53');
INSERT INTO `milk` VALUES (36, '../img/women6.jpg', '【温和洁净肌肤】美国palmer\'s孕妇专用可可脂沐浴液 400ml', 145.00, NULL, 'women', '2018-02-08 21:28:55');
INSERT INTO `milk` VALUES (37, '../img/women7.jpg', '【全方位修复】美国palmer\'s孕妇按摩多效修复精华油 60ml', 167.00, NULL, 'women', '2018-02-08 21:28:56');
INSERT INTO `milk` VALUES (38, '../img/women8.jpg', '【恢复完美身材】日本三洋DACCO产后剖腹产专用收腹带束腹带', 189.00, NULL, 'women', '2018-02-08 21:28:59');
INSERT INTO `milk` VALUES (39, '../img/women9.jpg', '【恢复完美身材】日本三洋DACCO产后剖腹产专用收腹带束腹带', 189.00, NULL, 'women', '2018-02-08 21:30:35');
INSERT INTO `milk` VALUES (40, '../img/women10.jpg', '【恢复完美身材】日本三洋DACCO产后剖腹产专用收腹带束腹带', 189.00, NULL, 'women', '2018-02-08 21:30:40');

SET FOREIGN_KEY_CHECKS = 1;
