/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : chollo

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 14/09/2023 10:29:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `activity_id` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (4, 2, 2);
INSERT INTO `activity` VALUES (5, 2, 3);
INSERT INTO `activity` VALUES (6, 2, 4);

-- ----------------------------
-- Table structure for activity_name
-- ----------------------------
DROP TABLE IF EXISTS `activity_name`;
CREATE TABLE `activity_name`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `point` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_name
-- ----------------------------
INSERT INTO `activity_name` VALUES (2, 'register', 200);
INSERT INTO `activity_name` VALUES (3, 'give score', 1);
INSERT INTO `activity_name` VALUES (4, 'leave comment', 10);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, '<p><strong>Hola,&nbsp;</strong></p><p><strong>Creo que sería beneficioso mantener contacto incluso después de que el proyecto concluya.</strong></p><p><strong>¿Podrías comunicarte conmigo fuera de freelancer.com?</strong></p><p><br></p><p><strong>Whatsapp</strong>: <span style=\"color: rgb(230, 0, 0);\">+584242371521</span></p><p><strong>Skype</strong>: <span style=\"color: rgb(230, 0, 0);\">live:.cid.82cf83a910c4a764</span></p><p>...</p>');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (10, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (11, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (12, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (13, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (14, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (15, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (16, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (17, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (18, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (19, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (20, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (21, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (22, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (23, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (24, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (25, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (26, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (27, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (28, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (29, '\r\n<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\'>');
INSERT INTO `blog` VALUES (30, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (31, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (32, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (33, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (34, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (35, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (36, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (37, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (38, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (39, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (40, '<p>AAABBB</p>');
INSERT INTO `blog` VALUES (41, '<p>This is store description');
INSERT INTO `blog` VALUES (42, '<p>This is store description</p>');
INSERT INTO `blog` VALUES (43, '<p>This is store description</p>');
INSERT INTO `blog` VALUES (44, '<p>This is store description</p>');
INSERT INTO `blog` VALUES (45, '<p>This is new blog</p>');
INSERT INTO `blog` VALUES (46, '<h1>Hello Everyone</h1> This is my slogan.');
INSERT INTO `blog` VALUES (47, '<h1>Hello Everyone</h1> This is my slogan.');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int(4) NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'babies and children', 'babies-and-children', -1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (2, 'Feeding bottle', 'feeding-bottle', 1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (3, 'Dr Brown\'s', 'dr-brown\'s', 2, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (4, 'Philips Avent Babybottles', 'philips-avent-babybottles', 2, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (5, 'Difrax', 'difrax', 2, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (6, 'free layettes', 'free-layettes', 1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (7, 'Strollers and strollers', 'strollers-and-strollers', 1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (8, 'bugaboo', 'bugaboo', 7, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (9, 'Chicco buggy', 'chicco-buggy', 7, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (10, 'Toys', 'toys', 1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (11, 'Cards and board games', 'cards-and-board-games', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (12, 'Fisher-Price', 'fisher-price', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (13, 'Funko Pop!', 'funko-pop', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (14, 'hot wheels', 'hot-wheels', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (15, 'Block & Building Toys', 'block-building-toys', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (16, 'outdoor toys', 'outdoor-toys', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 0);
INSERT INTO `category` VALUES (17, 'LOL Surprise', 'lol-surprise', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (18, 'dolls', 'dolls', 10, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (19, 'Food and drink', 'food-and-drink', -1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (20, 'Feeding', 'feeding', 19, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (21, 'Chocolate', 'chocolate', 19, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (22, 'food at home', 'food-at-home', 19, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (23, 'Sport Nutrition', 'sport-nutrition', 19, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (24, 'Restaurants', 'restaurants', 19, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (25, 'electronics', 'electronics', -1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (26, 'data storage', 'data-storage', 25, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (27, 'Audio & HiFi', 'audio-hifi', 25, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (28, 'power banks', 'power-banks', 25, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (29, 'batteries', 'batteries', 25, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (30, 'Free', 'free', -1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (31, 'raffles', 'raffles', 30, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (32, 'Home', 'home', -1, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (33, 'Garden', 'garden', 32, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (34, 'Furniture', 'furniture', 32, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);
INSERT INTO `category` VALUES (35, 'Home applicances', 'home-applicances', 32, 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `dest_id` int(4) NOT NULL,
  `blog_id` int(4) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (3, 1, 15, 10, 'deal', '2023-08-03 12:00:00');
INSERT INTO `comment` VALUES (4, 1, 16, 10, 'deal', '2023-08-04 12:00:00');
INSERT INTO `comment` VALUES (5, 1, 17, 10, 'deal', '2023-08-03 12:00:00');
INSERT INTO `comment` VALUES (6, 1, 18, 10, 'deal', '2023-08-04 12:00:00');
INSERT INTO `comment` VALUES (7, 1, 19, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (8, 1, 20, 10, 'deal', '2023-08-08 12:00:00');
INSERT INTO `comment` VALUES (9, 1, 21, 10, 'deal', '2023-08-03 12:00:00');
INSERT INTO `comment` VALUES (10, 1, 22, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (11, 1, 23, 10, 'deal', '2023-08-04 12:00:00');
INSERT INTO `comment` VALUES (12, 1, 24, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (13, 1, 25, 10, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (14, 1, 26, 10, 'deal', '2023-08-03 12:00:00');
INSERT INTO `comment` VALUES (15, 1, 27, 10, 'deal', '2023-08-01 12:00:00');
INSERT INTO `comment` VALUES (16, 1, 28, 10, 'deal', '2023-08-09 12:00:00');
INSERT INTO `comment` VALUES (17, 1, 29, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (18, 1, 30, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (19, 2, 15, 10, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (20, 2, 18, 10, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (21, 2, 21, 10, 'deal', '2023-08-04 12:00:00');
INSERT INTO `comment` VALUES (22, 2, 24, 10, 'deal', '2023-08-02 12:00:00');
INSERT INTO `comment` VALUES (23, 2, 27, 10, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (24, 2, 31, 10, 'deal', '2023-07-31 12:00:00');
INSERT INTO `comment` VALUES (25, 2, 33, 10, 'deal', '2023-08-01 12:00:00');
INSERT INTO `comment` VALUES (26, 2, 36, 10, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (27, 2, 38, 10, 'deal', '2023-08-09 12:00:00');
INSERT INTO `comment` VALUES (28, 2, 41, 10, 'deal', '2023-08-04 12:00:00');
INSERT INTO `comment` VALUES (29, 2, -1, 10, 'discussion', '2023-08-03 12:00:00');
INSERT INTO `comment` VALUES (30, 2, -1, 10, 'discussion', '2023-08-05 12:00:00');
INSERT INTO `comment` VALUES (31, 3, 41, 11, 'deal', '2023-08-07 12:00:00');
INSERT INTO `comment` VALUES (32, 3, 41, 11, 'deal', '2023-07-31 12:00:00');
INSERT INTO `comment` VALUES (33, 3, 41, 11, 'deal', '2023-08-01 12:00:00');
INSERT INTO `comment` VALUES (34, 3, 41, 11, 'deal', '2023-08-05 12:00:00');
INSERT INTO `comment` VALUES (35, 3, 41, 11, 'deal', '2023-09-05 19:55:25');
INSERT INTO `comment` VALUES (37, 3, 41, 34, 'deal', '2023-09-06 01:06:18');
INSERT INTO `comment` VALUES (38, 3, 41, 35, 'deal', '2023-09-06 03:02:41');
INSERT INTO `comment` VALUES (39, 3, 41, 36, 'deal', '2023-09-06 03:03:10');
INSERT INTO `comment` VALUES (42, 3, 41, 39, 'deal', '2023-09-06 16:21:29');
INSERT INTO `comment` VALUES (43, 4, 35, 40, 'deal', '2023-09-08 22:43:50');
INSERT INTO `comment` VALUES (44, 5, 44, 47, 'deal', '2023-09-13 20:25:55');

-- ----------------------------
-- Table structure for deal
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_new` float(10, 2) NULL DEFAULT NULL,
  `price_low` float(10, 2) NULL DEFAULT NULL,
  `price_ship` float(10, 2) NULL DEFAULT NULL,
  `store_id` int(4) NULL DEFAULT NULL,
  `deal_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `category_id` int(4) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0,
  `start_date` timestamp(0) NULL DEFAULT NULL,
  `expires` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count_of_used` int(4) NULL DEFAULT 0,
  `vip` int(2) NULL DEFAULT 0,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES (15, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 11, 1, '2023-08-21 12:00:00', '2023-09-15', 0, 0, NULL);
INSERT INTO `deal` VALUES (16, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 12, 0, '2023-07-28 12:00:00', '2023-09-10', 1, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (17, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 13, 1, '2023-08-07 12:00:00', '2023-09-19', 8, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (18, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 14, 1, '2023-08-21 12:00:00', '2023-09-19', 8, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (19, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 15, 1, '2023-07-22 12:00:00', '2023-09-10', 0, 1, NULL);
INSERT INTO `deal` VALUES (20, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 25, 1, '2023-08-08 12:00:00', '2023-09-26', 6, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (21, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 17, 1, '2023-08-09 12:00:00', '2023-09-16', 0, 0, NULL);
INSERT INTO `deal` VALUES (22, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 18, 1, '2023-07-27 12:00:00', '2023-09-13', 6, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (23, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 20, 1, '2023-07-31 12:00:00', '2023-09-11', 1, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (24, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 20, 1, '2023-07-20 12:00:00', '2023-09-08', 9, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (25, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 11, 1, '2023-07-22 12:00:00', '2023-09-21', 0, 1, NULL);
INSERT INTO `deal` VALUES (26, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 12, 1, '2023-08-01 12:00:00', '2023-09-14', 3, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (27, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 13, 1, '2023-08-08 12:00:00', '2023-09-21', 0, 0, NULL);
INSERT INTO `deal` VALUES (28, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 14, 1, '2023-08-12 12:00:00', '2023-09-19', 7, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (29, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 12, 1, '2023-08-14 12:00:00', '2023-09-22', 0, 0, NULL);
INSERT INTO `deal` VALUES (30, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 7, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 12, 1, '2023-08-12 12:00:00', '2023-09-07', 8, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (31, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 12, 1, '2023-07-24 12:00:00', '2023-09-22', 0, 1, NULL);
INSERT INTO `deal` VALUES (32, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 13, 1, '2023-08-09 12:00:00', '2023-09-24', 0, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (33, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 14, 1, '2023-08-09 12:00:00', '2023-09-26', 5, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (34, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 14, 1, '2023-07-24 12:00:00', '2023-09-14', 4, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (35, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 15, 1, '2023-08-22 12:00:00', '2023-09-24', 0, 0, NULL);
INSERT INTO `deal` VALUES (36, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 16, 1, '2023-08-01 12:00:00', '2023-09-11', 8, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (37, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 16, 1, '2023-08-19 12:00:00', '2023-09-16', 8, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (38, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 17, 1, '2023-07-29 12:00:00', '2023-09-22', 5, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (39, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 18, 1, '2023-08-18 12:00:00', '2023-09-14', 0, 0, NULL);
INSERT INTO `deal` VALUES (40, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 20, 1, '2023-07-30 12:00:00', '2023-09-17', 3, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (41, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 21, 1, '2023-07-20 12:00:00', '2023-09-19', 0, 0, NULL);
INSERT INTO `deal` VALUES (42, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 20, 1, '2023-07-24 12:00:00', '2023-09-16', 9, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (43, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 20, 1, '2023-08-13 12:00:00', '2023-09-18', 0, 1, NULL);
INSERT INTO `deal` VALUES (44, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 22, 1, '2023-07-20 12:00:00', '2023-09-17', 6, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (45, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 23, 1, '2023-08-22 12:00:00', '2023-09-21', 0, 0, NULL);
INSERT INTO `deal` VALUES (46, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 24, 1, '2023-08-16 12:00:00', '2023-09-10', 4, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (47, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 24, 1, '2023-07-23 12:00:00', '2023-09-19', 0, 0, NULL);
INSERT INTO `deal` VALUES (48, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 20, 1, '2023-07-25 12:00:00', '2023-09-20', 2, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (49, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 26, 1, '2023-08-05 12:00:00', '2023-09-15', 8, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (50, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 26, 1, '2023-08-17 12:00:00', '2023-09-07', 0, 0, NULL);
INSERT INTO `deal` VALUES (51, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 27, 1, '2023-08-15 12:00:00', '2023-09-25', 6, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (52, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 28, 1, '2023-07-29 12:00:00', '2023-09-17', 7, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (53, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 14, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 28, 1, '2023-07-25 12:00:00', '2023-09-22', 0, 0, NULL);
INSERT INTO `deal` VALUES (54, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 29, 1, '2023-08-21 12:00:00', '2023-09-15', 6, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (55, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 28, 1, '2023-07-24 12:00:00', '2023-09-24', 0, 1, NULL);
INSERT INTO `deal` VALUES (56, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 16, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 27, 1, '2023-08-18 12:00:00', '2023-09-25', 0, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (57, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 16, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 28, 1, '2023-08-17 12:00:00', '2023-09-10', 0, 0, NULL);
INSERT INTO `deal` VALUES (58, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 17, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 28, 1, '2023-08-11 12:00:00', '2023-09-25', 2, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (59, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 17, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 33, 1, '2023-08-12 12:00:00', '2023-09-11', 1, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (60, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 31, 1, '2023-08-05 12:00:00', '2023-09-12', 0, 0, NULL);
INSERT INTO `deal` VALUES (61, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 35, 1, '2023-08-02 12:00:00', '2023-09-20', 9, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (62, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 35, 1, '2023-08-06 12:00:00', '2023-09-19', 0, 0, NULL);
INSERT INTO `deal` VALUES (64, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 30, 1, '2023-08-01 12:00:00', '2023-09-26', 3, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (65, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 1, 30, 1, '2023-07-28 12:00:00', '2023-09-07', 7, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (66, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 30, 1, '2023-07-23 12:00:00', '2023-09-11', 9, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (67, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'discount_fixed', 20.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 1, 1, '2023-08-17 12:00:00', '2023-09-07', 2, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (69, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 300.00, 150.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 3, 1, '2023-08-15 12:00:00', '2023-09-16', 0, 0, NULL);
INSERT INTO `deal` VALUES (70, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_fixed', 50.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 4, 1, '2023-07-31 12:00:00', '2023-09-12', 6, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (71, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 100.00, 20.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 5, 1, '2023-08-02 12:00:00', '2023-09-07', 0, 0, NULL);
INSERT INTO `deal` VALUES (72, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 6, 1, '2023-08-21 12:00:00', '2023-09-14', 4, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (73, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_percent', 30.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 7, 1, '2023-08-05 12:00:00', '2023-09-20', 2, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (74, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_percent', 30.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 2, 8, 1, '2023-08-09 12:00:00', '2023-09-12', 9, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (75, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 3, 9, 1, '2023-08-05 12:00:00', '2023-09-12', 8, 0, 'CODE EXP');
INSERT INTO `deal` VALUES (76, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 3, 10, 1, '2023-08-12 12:00:00', '2023-09-17', 3, 1, 'CODE EXP');
INSERT INTO `deal` VALUES (77, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 100.00, 20.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 3, 11, 1, '2023-08-21 12:00:00', '2023-09-22', 0, 0, NULL);
INSERT INTO `deal` VALUES (78, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_fixed', 20.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', '[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829\",\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\",\"https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148\",\"https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236\"]', 3, 12, 1, '2023-08-11 12:00:00', '2023-09-12', 2, 0, 'CODE EXP');

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `id` int(2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'es');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dest_id` int(4) NOT NULL,
  `is_like` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (7, 1, 'deal', 15, 1);
INSERT INTO `likes` VALUES (8, 2, 'deal', 15, 0);
INSERT INTO `likes` VALUES (9, 2, 'deal', 16, 1);
INSERT INTO `likes` VALUES (10, 2, 'deal', 17, 1);
INSERT INTO `likes` VALUES (11, 2, 'deal', 18, 1);
INSERT INTO `likes` VALUES (12, 2, 'deal', 19, 0);
INSERT INTO `likes` VALUES (13, 2, 'deal', 20, 1);
INSERT INTO `likes` VALUES (14, 2, 'deal', 21, 1);
INSERT INTO `likes` VALUES (15, 2, 'deal', 22, 0);
INSERT INTO `likes` VALUES (16, 1, 'deal', 22, 0);
INSERT INTO `likes` VALUES (17, 1, 'deal', 23, 0);
INSERT INTO `likes` VALUES (18, 2, 'deal', 23, 0);
INSERT INTO `likes` VALUES (19, 3, 'deal', 24, 0);
INSERT INTO `likes` VALUES (20, 1, 'deal', 24, 1);
INSERT INTO `likes` VALUES (21, 2, 'deal', 24, 1);
INSERT INTO `likes` VALUES (22, 1, 'deal', 25, 1);
INSERT INTO `likes` VALUES (23, 1, 'deal', 26, 1);
INSERT INTO `likes` VALUES (24, 2, 'deal', 26, 1);
INSERT INTO `likes` VALUES (25, 3, 'deal', 26, 0);
INSERT INTO `likes` VALUES (26, 3, 'deal', 27, 1);
INSERT INTO `likes` VALUES (27, 1, 'deal', 27, 1);
INSERT INTO `likes` VALUES (28, 2, 'deal', 27, 1);
INSERT INTO `likes` VALUES (30, 3, 'deal', 75, 1);
INSERT INTO `likes` VALUES (31, 3, 'deal', 74, 1);
INSERT INTO `likes` VALUES (98, 2, 'comment', 16, 0);
INSERT INTO `likes` VALUES (99, 1, 'comment', 6, 0);
INSERT INTO `likes` VALUES (100, 1, 'comment', 14, 1);
INSERT INTO `likes` VALUES (101, 1, 'comment', 5, 1);
INSERT INTO `likes` VALUES (102, 2, 'comment', 8, 1);
INSERT INTO `likes` VALUES (103, 3, 'comment', 14, 1);
INSERT INTO `likes` VALUES (104, 1, 'comment', 9, 0);
INSERT INTO `likes` VALUES (105, 1, 'comment', 19, 1);
INSERT INTO `likes` VALUES (106, 3, 'comment', 15, 0);
INSERT INTO `likes` VALUES (107, 1, 'comment', 15, 1);
INSERT INTO `likes` VALUES (108, 3, 'comment', 5, 1);
INSERT INTO `likes` VALUES (109, 1, 'comment', 5, 0);
INSERT INTO `likes` VALUES (110, 2, 'comment', 6, 0);
INSERT INTO `likes` VALUES (111, 2, 'comment', 3, 0);
INSERT INTO `likes` VALUES (112, 2, 'comment', 17, 0);
INSERT INTO `likes` VALUES (113, 3, 'comment', 16, 1);
INSERT INTO `likes` VALUES (114, 2, 'comment', 9, 0);
INSERT INTO `likes` VALUES (115, 2, 'comment', 11, 0);
INSERT INTO `likes` VALUES (116, 1, 'comment', 5, 0);
INSERT INTO `likes` VALUES (117, 2, 'comment', 21, 1);
INSERT INTO `likes` VALUES (118, 3, 'comment', 5, 1);
INSERT INTO `likes` VALUES (119, 2, 'comment', 8, 0);
INSERT INTO `likes` VALUES (120, 2, 'comment', 19, 1);
INSERT INTO `likes` VALUES (121, 3, 'comment', 6, 1);
INSERT INTO `likes` VALUES (122, 2, 'comment', 4, 0);
INSERT INTO `likes` VALUES (123, 2, 'comment', 13, 0);
INSERT INTO `likes` VALUES (124, 1, 'comment', 15, 0);
INSERT INTO `likes` VALUES (125, 2, 'comment', 20, 1);
INSERT INTO `likes` VALUES (126, 1, 'comment', 7, 0);
INSERT INTO `likes` VALUES (127, 2, 'comment', 20, 0);
INSERT INTO `likes` VALUES (128, 2, 'comment', 15, 0);
INSERT INTO `likes` VALUES (129, 2, 'comment', 8, 1);
INSERT INTO `likes` VALUES (130, 4, 'deal', 35, 1);
INSERT INTO `likes` VALUES (131, 4, 'deal', 72, 1);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(4) NOT NULL,
  `is_read` int(1) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (5, 'NOTIFICATION CONTENT1', 1, 1, '2023-08-17');
INSERT INTO `notification` VALUES (6, 'NOTIFICATION CONTENT2', 1, 0, '2023-08-17');
INSERT INTO `notification` VALUES (7, 'NOTIFICATION CONTENT3', 1, 0, '2023-08-17');
INSERT INTO `notification` VALUES (8, 'NOTIFICATION CONTENT4', 1, 0, '2023-08-17');
INSERT INTO `notification` VALUES (9, 'NOTIFICATION CONTENT5', 1, 0, '2023-08-17');
INSERT INTO `notification` VALUES (10, 'NOTIFICATION CONTENT6', 1, 0, '2023-08-17');
INSERT INTO `notification` VALUES (11, 'NOTIFICATION CONTENT6', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (12, 'NOTIFICATION CONTENT1', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (13, 'NOTIFICATION CONTENT2', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (14, 'NOTIFICATION CONTENT3', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (15, 'NOTIFICATION CONTENT4', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (16, 'NOTIFICATION CONTENT5', 2, 0, '2023-08-17');
INSERT INTO `notification` VALUES (17, 'NOTIFICATION CONTENT5', 3, 0, '2023-08-17');
INSERT INTO `notification` VALUES (18, 'NOTIFICATION CONTENT1', 3, 0, '2023-08-17');
INSERT INTO `notification` VALUES (19, 'NOTIFICATION CONTENT2', 3, 0, '2023-08-17');
INSERT INTO `notification` VALUES (20, 'NOTIFICATION CONTENT3', 3, 0, '2023-08-17');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `store_id` int(4) NOT NULL,
  `star` int(2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (5, 1, 3, 4, 'Description 1');
INSERT INTO `review` VALUES (6, 1, 3, 4, 'Description 1');
INSERT INTO `review` VALUES (7, 1, 4, 4, 'Good Store 1');
INSERT INTO `review` VALUES (8, 1, 5, 4, 'Good Store 1');
INSERT INTO `review` VALUES (9, 1, 6, 4, 'Good Store 1');
INSERT INTO `review` VALUES (10, 1, 7, 4, 'Good Store 1');
INSERT INTO `review` VALUES (11, 2, 7, 4, 'Good Store 1');
INSERT INTO `review` VALUES (12, 2, 3, 4, 'Good Store 1');
INSERT INTO `review` VALUES (13, 2, 4, 4, 'Good Store 1');
INSERT INTO `review` VALUES (14, 2, 5, 4, 'Good Store 1');
INSERT INTO `review` VALUES (15, 2, 8, 4, 'Good Store 1');
INSERT INTO `review` VALUES (16, 3, 8, 4, 'Good Store 1');
INSERT INTO `review` VALUES (17, 3, 9, 4, 'Good Store 1');
INSERT INTO `review` VALUES (18, 3, 10, 4, 'Good Store 1');
INSERT INTO `review` VALUES (19, 3, 11, 4, 'Good Store 1');
INSERT INTO `review` VALUES (20, 3, 12, 4, 'Good Store 1');
INSERT INTO `review` VALUES (21, 3, 13, 4, 'Good Store 1');
INSERT INTO `review` VALUES (22, 3, 14, 4, 'Good Store 1');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `info_html` int(4) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (3, 'adidas', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 10, 1);
INSERT INTO `store` VALUES (4, 'AliExpress', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 12, 1);
INSERT INTO `store` VALUES (5, 'Amazon', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 11, 1);
INSERT INTO `store` VALUES (6, 'Manzana', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 22, 1);
INSERT INTO `store` VALUES (7, 'Asos', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 12, 1);
INSERT INTO `store` VALUES (8, 'catch it', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 14, 1);
INSERT INTO `store` VALUES (9, 'Notices', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 13, 1);
INSERT INTO `store` VALUES (10, 'banggood', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 15, 1);
INSERT INTO `store` VALUES (11, 'booking', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 16, 1);
INSERT INTO `store` VALUES (12, 'Burger', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 17, 1);
INSERT INTO `store` VALUES (13, 'BurgerKing', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 18, 1);
INSERT INTO `store` VALUES (14, 'AC', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 19, 1);
INSERT INTO `store` VALUES (15, 'cabify', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 20, 1);
INSERT INTO `store` VALUES (16, 'Carrefour', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 21, 0);
INSERT INTO `store` VALUES (17, 'cheerz', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 22, 1);
INSERT INTO `store` VALUES (18, 'Chinese', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 23, 1);
INSERT INTO `store` VALUES (19, 'Chinese', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'customer',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `point` int(6) NOT NULL DEFAULT 0,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user1', 'daltonchua3@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'customer', NULL, 1, 0, 'Beginner', '');
INSERT INTO `user` VALUES (2, 'user2', 'daltonchua2@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'vip', NULL, 1, 0, 'Beginner', '');
INSERT INTO `user` VALUES (3, 'user3', 'daltonchua1@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'customer', NULL, 1, 0, 'Beginner', '');
INSERT INTO `user` VALUES (4, 'vip', 'vip@gmail.com', '$2a$10$IejCcbRwK9UYC4iUJmcEteJDmOfV16GIUkKjVX.GEYNHXnTE.a/Ku', NULL, 'vip', NULL, 1, 0, 'Beginner', NULL);
INSERT INTO `user` VALUES (5, 'admin', 'admin@gmail.com', '$2a$10$s/vwN4/KgXxZMjdttymp3.uIG5LSTYoDxcErgNzUvP929VoVtco5C', '2003-06-11', 'admin', '2681', 1, 0, 'Beginner', NULL);

SET FOREIGN_KEY_CHECKS = 1;
