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

 Date: 30/08/2023 01:22:12
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
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (10, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (11, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (12, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (13, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (14, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (15, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (16, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (17, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (18, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (19, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (20, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (21, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (22, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (23, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (24, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (25, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (26, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (27, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (28, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');
INSERT INTO `blog` VALUES (29, '<h1>Hello Everyone</h1>This is blog, Do you want to see image<img src=\'http://5.75.224.135:4000/api/resource/get/06644721280130035014128898721307837764739567056815316022876431325417812183779926218424705987505510960999276195847444259616377333103593831805719820507828382457502876093456617339\'>');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'babies and children', 'babies-and-children', -1);
INSERT INTO `category` VALUES (2, 'Feeding bottle', 'feeding-bottle', 1);
INSERT INTO `category` VALUES (3, 'Dr Brown\'s', 'dr-brown\'s', 2);
INSERT INTO `category` VALUES (4, 'Philips Avent Babybottles', 'philips-avent-babybottles', 2);
INSERT INTO `category` VALUES (5, 'Difrax', 'difrax', 2);
INSERT INTO `category` VALUES (6, 'free layettes', 'free-layettes', 1);
INSERT INTO `category` VALUES (7, 'Strollers and strollers', 'strollers-and-strollers', 1);
INSERT INTO `category` VALUES (8, 'bugaboo', 'bugaboo', 7);
INSERT INTO `category` VALUES (9, 'Chicco buggy', 'chicco-buggy', 7);
INSERT INTO `category` VALUES (10, 'Toys', 'toys', 1);
INSERT INTO `category` VALUES (11, 'Cards and board games', 'cards-and-board-games', 10);
INSERT INTO `category` VALUES (12, 'Fisher-Price', 'fisher-price', 10);
INSERT INTO `category` VALUES (13, 'Funko Pop!', 'funko-pop', 10);
INSERT INTO `category` VALUES (14, 'hot wheels', 'hot-wheels', 10);
INSERT INTO `category` VALUES (15, 'Block & Building Toys', 'block-building-toys', 10);
INSERT INTO `category` VALUES (16, 'outdoor toys', 'outdoor-toys', 10);
INSERT INTO `category` VALUES (17, 'LOL Surprise', 'lol-surprise', 10);
INSERT INTO `category` VALUES (18, 'dolls', 'dolls', 10);
INSERT INTO `category` VALUES (19, 'Food and drink', 'food-and-drink', -1);
INSERT INTO `category` VALUES (20, 'Feeding', 'feeding', 19);
INSERT INTO `category` VALUES (21, 'Chocolate', 'chocolate', 19);
INSERT INTO `category` VALUES (22, 'food at home', 'food-at-home', 19);
INSERT INTO `category` VALUES (23, 'Sport Nutrition', 'sport-nutrition', 19);
INSERT INTO `category` VALUES (24, 'Restaurants', 'restaurants', 19);
INSERT INTO `category` VALUES (25, 'electronics', 'electronics', -1);
INSERT INTO `category` VALUES (26, 'data storage', 'data-storage', 25);
INSERT INTO `category` VALUES (27, 'Audio & HiFi', 'audio-hifi', 25);
INSERT INTO `category` VALUES (28, 'power banks', 'power-banks', 25);
INSERT INTO `category` VALUES (29, 'batteries', 'batteries', 25);
INSERT INTO `category` VALUES (30, 'Free', 'free', -1);
INSERT INTO `category` VALUES (31, 'raffles', 'raffles', 30);
INSERT INTO `category` VALUES (32, 'Home', 'home', -1);
INSERT INTO `category` VALUES (33, 'Garden', 'garden', 32);
INSERT INTO `category` VALUES (34, 'Furniture', 'furniture', 32);
INSERT INTO `category` VALUES (35, 'Home applicances', 'home-applicances', 32);

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
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (3, 1, 15, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (4, 1, 16, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (5, 1, 17, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (6, 1, 18, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (7, 1, 19, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (8, 1, 20, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (9, 1, 21, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (10, 1, 22, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (11, 1, 23, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (12, 1, 24, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (13, 1, 25, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (14, 1, 26, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (15, 1, 27, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (16, 1, 28, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (17, 1, 29, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (18, 1, 30, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (19, 2, 15, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (20, 2, 18, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (21, 2, 21, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (22, 2, 24, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (23, 2, 27, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (24, 2, 31, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (25, 2, 33, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (26, 2, 36, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (27, 2, 38, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (28, 2, 41, 10, 'deal', NULL);
INSERT INTO `comment` VALUES (29, 2, -1, 10, 'discussion', NULL);
INSERT INTO `comment` VALUES (30, 2, -1, 10, 'discussion', NULL);

-- ----------------------------
-- Table structure for deal
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_new` decimal(10, 2) NULL DEFAULT NULL,
  `price_low` decimal(10, 2) NULL DEFAULT NULL,
  `price_ship` decimal(10, 2) NULL DEFAULT NULL,
  `store_id` int(4) NULL DEFAULT NULL,
  `deal_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(4) NULL DEFAULT NULL,
  `category_id` int(4) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0,
  `start_date` date NULL DEFAULT NULL,
  `expires` date NULL DEFAULT NULL,
  `count_of_used` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES (15, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1, 11, 1, '2023-08-23', '2023-08-31', 0);
INSERT INTO `deal` VALUES (16, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 1, 12, 1, '2023-08-21', '2023-08-28', 0);
INSERT INTO `deal` VALUES (17, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 1, 13, 1, '2023-08-25', '2023-08-30', 6);
INSERT INTO `deal` VALUES (18, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 3, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 1, 14, 1, '2023-08-23', '2023-08-28', 1);
INSERT INTO `deal` VALUES (19, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 1, 15, 1, '2023-08-25', '2023-08-31', 0);
INSERT INTO `deal` VALUES (20, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1, 25, 1, '2023-08-23', '2023-08-30', 5);
INSERT INTO `deal` VALUES (21, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 1, 17, 1, '2023-08-25', '2023-08-28', 0);
INSERT INTO `deal` VALUES (22, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 4, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 1, 18, 1, '2023-08-21', '2023-08-27', 5);
INSERT INTO `deal` VALUES (23, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 1, 20, 1, '2023-08-25', '2023-09-01', 8);
INSERT INTO `deal` VALUES (24, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 1, 20, 1, '2023-08-23', '2023-08-30', 6);
INSERT INTO `deal` VALUES (25, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 11, 1, '2023-08-24', '2023-08-31', 0);
INSERT INTO `deal` VALUES (26, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 5, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 12, 1, '2023-08-22', '2023-08-29', 6);
INSERT INTO `deal` VALUES (27, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 13, 1, '2023-08-24', '2023-08-31', 0);
INSERT INTO `deal` VALUES (28, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 14, 1, '2023-08-21', '2023-08-29', 5);
INSERT INTO `deal` VALUES (29, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 6, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 12, 1, '2023-08-22', '2023-08-31', 0);
INSERT INTO `deal` VALUES (30, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 7, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 12, 1, '2023-08-22', '2023-08-29', 6);
INSERT INTO `deal` VALUES (31, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 12, 1, '2023-08-21', '2023-08-28', 0);
INSERT INTO `deal` VALUES (32, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 13, 1, '2023-08-22', '2023-08-29', 4);
INSERT INTO `deal` VALUES (33, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 14, 1, '2023-08-24', '2023-09-01', 3);
INSERT INTO `deal` VALUES (34, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 14, 1, '2023-08-21', '2023-08-31', 5);
INSERT INTO `deal` VALUES (35, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 15, 1, '2023-08-25', '2023-08-28', 0);
INSERT INTO `deal` VALUES (36, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 8, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 16, 1, '2023-08-21', '2023-08-28', 6);
INSERT INTO `deal` VALUES (37, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 16, 1, '2023-08-24', '2023-08-30', 4);
INSERT INTO `deal` VALUES (38, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 17, 1, '2023-08-23', '2023-08-31', 2);
INSERT INTO `deal` VALUES (39, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 18, 1, '2023-08-23', '2023-09-01', 0);
INSERT INTO `deal` VALUES (40, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 20, 1, '2023-08-23', '2023-08-30', 8);
INSERT INTO `deal` VALUES (41, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 9, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 21, 1, '2023-08-23', '2023-08-29', 0);
INSERT INTO `deal` VALUES (42, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 20, 1, '2023-08-23', '2023-09-01', 4);
INSERT INTO `deal` VALUES (43, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 20, 1, '2023-08-22', '2023-08-28', 0);
INSERT INTO `deal` VALUES (44, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 22, 1, '2023-08-21', '2023-08-31', 6);
INSERT INTO `deal` VALUES (45, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 23, 1, '2023-08-25', '2023-09-01', 0);
INSERT INTO `deal` VALUES (46, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 11, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 24, 1, '2023-08-25', '2023-08-31', 1);
INSERT INTO `deal` VALUES (47, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 24, 1, '2023-08-21', '2023-08-29', 0);
INSERT INTO `deal` VALUES (48, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 20, 1, '2023-08-25', '2023-08-27', 6);
INSERT INTO `deal` VALUES (49, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 12, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 26, 1, '2023-08-24', '2023-08-29', 8);
INSERT INTO `deal` VALUES (50, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 26, 1, '2023-08-22', '2023-08-28', 0);
INSERT INTO `deal` VALUES (51, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 27, 1, '2023-08-22', '2023-08-30', 1);
INSERT INTO `deal` VALUES (52, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 13, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 28, 1, '2023-08-25', '2023-08-27', 1);
INSERT INTO `deal` VALUES (53, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 14, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 28, 1, '2023-08-22', '2023-08-31', 0);
INSERT INTO `deal` VALUES (54, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 29, 1, '2023-08-23', '2023-08-29', 3);
INSERT INTO `deal` VALUES (55, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 28, 1, '2023-08-24', '2023-08-31', 0);
INSERT INTO `deal` VALUES (56, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 16, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 27, 1, '2023-08-21', '2023-08-30', 5);
INSERT INTO `deal` VALUES (57, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 16, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 28, 1, '2023-08-23', '2023-08-29', 0);
INSERT INTO `deal` VALUES (58, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 17, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-pendentifs-lumineux1_400x.jpg?v=1686912148', 2, 28, 1, '2023-08-25', '2023-08-28', 4);
INSERT INTO `deal` VALUES (59, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 17, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 2, 33, 1, '2023-08-22', '2023-08-28', 6);
INSERT INTO `deal` VALUES (60, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 31, 1, '2023-08-24', '2023-08-30', 0);
INSERT INTO `deal` VALUES (61, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 35, 1, '2023-08-23', '2023-08-27', 7);
INSERT INTO `deal` VALUES (62, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 50.00, 35.00, 0.00, 18, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 35, 1, '2023-08-24', '2023-08-28', 0);
INSERT INTO `deal` VALUES (64, 'Grab Amazon Kindle\'s Fermenting: An Essential Guide to Culturing Food to...', 'Fermenting: An Essential Guide to Culturing Food to Create Kombucha, Sourdough, Kimchi, Sauerkraut, and Yogurt, and More is currently available for free on Amazon Kindle. No coupon code is required to claim this offer.', 'discount_percent', 20.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-gamelle-voyage1_400x.jpg?v=1686921236', 1, 30, 1, '2023-08-25', '2023-08-30', 7);
INSERT INTO `deal` VALUES (65, 'Pick 2 14TB WD Red Pro NAS hard drive as low as £487.19 via Western Digital', 'There is no discount code required to get 2 14TB WD Red Pro NAS hard drives from Western Digital at the price of £487.19.', 'discount_fixed', 25.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 1, 30, 1, '2023-08-22', '2023-09-01', 4);
INSERT INTO `deal` VALUES (66, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'free', 0.00, 0.00, 0.00, 15, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 30, 1, '2023-08-23', '2023-08-31', 3);
INSERT INTO `deal` VALUES (67, '[PC] Jazz Jackrabbit Collection from £1.49 at GOG', 'Snatch your favourite [PC] Jazz Jackrabbit Collection (Win/Mac/Linux) from £1.49 / Jazz Jackrabbit 2 Collection (Windows) - £1.65 - PEGI 12 at Gog. No additional code needed, offer will be applied automatically.', 'discount_fixed', 20.00, 0.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 1, 1, '2023-08-25', '2023-08-29', 0);
INSERT INTO `deal` VALUES (69, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 300.00, 150.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 3, 1, '2023-08-23', '2023-08-28', 0);
INSERT INTO `deal` VALUES (70, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_fixed', 50.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 4, 1, '2023-08-22', '2023-08-29', 5);
INSERT INTO `deal` VALUES (71, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 100.00, 20.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 5, 1, '2023-08-24', '2023-08-27', 0);
INSERT INTO `deal` VALUES (72, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 6, 1, '2023-08-23', '2023-08-27', 3);
INSERT INTO `deal` VALUES (73, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_percent', 30.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 7, 1, '2023-08-23', '2023-08-28', 2);
INSERT INTO `deal` VALUES (74, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_percent', 30.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 8, 1, '2023-08-25', '2023-08-31', 0);
INSERT INTO `deal` VALUES (75, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 2, 9, 1, '2023-08-21', '2023-08-28', 6);
INSERT INTO `deal` VALUES (76, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'free', NULL, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 10, 1, '2023-08-21', '2023-08-27', 0);
INSERT INTO `deal` VALUES (77, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'deal', 100.00, 20.00, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 11, 1, '2023-08-23', '2023-08-31', 0);
INSERT INTO `deal` VALUES (78, 'lkea gift card of 50$ for only 43.11 in Eneba', 'Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.', 'discount_fixed', 20.00, NULL, 0.00, 10, 'https://www.amazon.es/deal/13545001', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718', 2, 12, 1, '2023-08-25', '2023-08-28', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
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
  `tip_id` int(4) NULL DEFAULT NULL,
  `stories_id` int(4) NULL DEFAULT NULL,
  `about_id` int(4) NULL DEFAULT NULL,
  `faq_id` int(4) NULL DEFAULT NULL,
  `howto_id` int(4) NULL DEFAULT NULL,
  `didyou_id` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (3, 'adidas', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 10, 12, 13, 14, 15, 16, 17);
INSERT INTO `store` VALUES (4, 'AliExpress', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 12, 13, 23, 21, 11, 12, 23);
INSERT INTO `store` VALUES (5, 'Amazon', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (6, 'Manzana', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (7, 'Asos', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (8, 'catch it', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (9, 'Notices', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (10, 'banggood', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (11, 'booking', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (12, 'Burger', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (13, 'BurgerKing', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (14, 'AC', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (15, 'cabify', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (16, 'Carrefour', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (17, 'cheerz', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (18, 'Chinese', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);
INSERT INTO `store` VALUES (19, 'Chinese', 'www.amazon.com', 'https://www.french-bandit.com/cdn/shop/files/packshot-tapis-rafraichissant1_400x.jpg?v=1686921829', 25, 12, 15, 11, 22, 21, 11);

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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user1', 'daltonchua3@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'customer', NULL, 1, 0, 'Beginner', '');
INSERT INTO `user` VALUES (2, 'user2', 'daltonchua2@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'customer', NULL, 1, 0, 'Beginner', '');
INSERT INTO `user` VALUES (3, 'user3', 'daltonchu1a@outlook.com', '$2a$10$AS9OnMOjAzTaUzdg6DZ93e1niyQXNv5nxhAMYyalOqjaEWkQPF1vi', NULL, 'customer', NULL, 1, 0, 'Beginner', '');

SET FOREIGN_KEY_CHECKS = 1;
