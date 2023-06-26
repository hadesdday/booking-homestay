/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : booking-homestay

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 31/01/2023 15:42:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_checkin` datetime NULL DEFAULT NULL,
  `date_checkout` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `voucher_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint NULL DEFAULT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  `room_id` bigint NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKlnnelfsha11xmo2ndjq66fvro`(`customer_id` ASC) USING BTREE,
  INDEX `FKhacdq9bfa3r9xdimovsnonbyi`(`hotel_id` ASC) USING BTREE,
  INDEX `FKq83pan5xy2a6rn0qsl9bckqai`(`room_id` ASC) USING BTREE,
  CONSTRAINT `FKhacdq9bfa3r9xdimovsnonbyi` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKlnnelfsha11xmo2ndjq66fvro` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKq83pan5xy2a6rn0qsl9bckqai` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES (1, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 1, 1, NULL, NULL);
INSERT INTO `booking` VALUES (2, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 5, 13, NULL, NULL);
INSERT INTO `booking` VALUES (3, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 4, 12, NULL, NULL);
INSERT INTO `booking` VALUES (4, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 6, 16, NULL, NULL);
INSERT INTO `booking` VALUES (5, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 10, 28, NULL, NULL);
INSERT INTO `booking` VALUES (6, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 1, 2, NULL, NULL);
INSERT INTO `booking` VALUES (7, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 7, 20, NULL, NULL);
INSERT INTO `booking` VALUES (8, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 5, 15, NULL, NULL);
INSERT INTO `booking` VALUES (9, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 9, 26, NULL, NULL);
INSERT INTO `booking` VALUES (10, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 8, 23, NULL, NULL);
INSERT INTO `booking` VALUES (11, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 2, 5, NULL, NULL);
INSERT INTO `booking` VALUES (12, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 2, 6, NULL, NULL);
INSERT INTO `booking` VALUES (13, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 4, 11, NULL, NULL);
INSERT INTO `booking` VALUES (14, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 6, 18, NULL, NULL);
INSERT INTO `booking` VALUES (15, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 5, 15, NULL, NULL);
INSERT INTO `booking` VALUES (16, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 3, 9, NULL, NULL);
INSERT INTO `booking` VALUES (17, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 4, 10, NULL, NULL);
INSERT INTO `booking` VALUES (18, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 10, 28, NULL, NULL);
INSERT INTO `booking` VALUES (19, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 7, 21, NULL, NULL);
INSERT INTO `booking` VALUES (20, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 10, 29, NULL, NULL);
INSERT INTO `booking` VALUES (21, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 9, 27, NULL, NULL);
INSERT INTO `booking` VALUES (22, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 4, 10, NULL, NULL);
INSERT INTO `booking` VALUES (23, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 1, 2, NULL, NULL);
INSERT INTO `booking` VALUES (24, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 10, 29, NULL, NULL);
INSERT INTO `booking` VALUES (25, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 5, 13, NULL, NULL);
INSERT INTO `booking` VALUES (26, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 7, 19, NULL, NULL);
INSERT INTO `booking` VALUES (27, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 3, 7, NULL, NULL);
INSERT INTO `booking` VALUES (28, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 1, '1', 1, 6, 17, NULL, NULL);
INSERT INTO `booking` VALUES (29, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 8, 23, NULL, NULL);
INSERT INTO `booking` VALUES (30, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 8, 22, NULL, NULL);
INSERT INTO `booking` VALUES (31, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 2, 4, NULL, NULL);
INSERT INTO `booking` VALUES (32, '2022-12-26 21:49:28', '2022-12-27 21:49:28', 0, '1', 1, 2, 4, NULL, NULL);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adult` int NOT NULL,
  `children` int NOT NULL,
  `from_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hotel_id` int NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `to_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKej6lhabpn9qvujgc51lqlkmur`(`hotel_id` ASC) USING BTREE,
  CONSTRAINT `FKej6lhabpn9qvujgc51lqlkmur` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK418xwcu9qhc1ttktrshmrv952`(`username` ASC) USING BTREE,
  CONSTRAINT `FK418xwcu9qhc1ttktrshmrv952` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'vietnam', 'nhocproaoe@gmail.com', 'nguyen van hieu', '09876544321', 'nhocproaoe');
INSERT INTO `customer` VALUES (6, 'vietnam', 'billcp38@gmail.com', 'nguyen van hieu', '09876544321', 'hello');

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (1, 'air conditioner', 'comforts', 'air conditioner  ');
INSERT INTO `facility` VALUES (2, 'swimming pool', 'comforts', 'swimminng pool');
INSERT INTO `facility` VALUES (3, 'free wifi', 'entertainment', 'free wifi');
INSERT INTO `facility` VALUES (4, 'car park', 'convinient', 'car park');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_update` datetime NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `policy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `status_data` int NOT NULL,
  `owner_id` bigint NULL DEFAULT NULL,
  `place_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6ihhjjb34iyi1vka7okkxc209`(`owner_id` ASC) USING BTREE,
  INDEX `FKem3bjw83m62unmcesnco11m8i`(`place_id` ASC) USING BTREE,
  CONSTRAINT `FK6ihhjjb34iyi1vka7okkxc209` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKem3bjw83m62unmcesnco11m8i` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (1, '2022-12-26 22:26:46', '1', '1', 'this is ngan sao', 0, 0, NULL, 1);
INSERT INTO `hotel` VALUES (2, '2022-12-26 22:26:46', '1', '2', 'this is hotel 1 sao', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (3, '2022-12-26 22:26:46', '2', '3', 'this is hotel bau troi', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (4, '2022-12-26 22:26:46', '3', '4', 'this is hotel dong song', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (5, '2022-12-26 22:26:46', '4', '5', 'this is hotel 1447', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (6, '2022-12-26 22:26:46', '5', '6', 'this is hotel vip', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (7, '2022-12-26 22:26:46', '5', '7', 'this is 4 hotel flc', 0, 2, NULL, 1);
INSERT INTO `hotel` VALUES (8, '2022-12-26 22:26:46', '6', '8', 'this is hotel hanoi', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (9, '2022-12-26 22:26:46', '6', '9', 'this is hotel tinh ban', 0, 1, NULL, 1);
INSERT INTO `hotel` VALUES (10, '2022-12-26 22:26:46', '6', '1', 'nothing', 0, 1, NULL, 1);

-- ----------------------------
-- Table structure for hotel_facility
-- ----------------------------
DROP TABLE IF EXISTS `hotel_facility`;
CREATE TABLE `hotel_facility`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` int NOT NULL,
  `facility_id` bigint NULL DEFAULT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2kh8p1kmqv9m5d62cxsxwrauu`(`facility_id` ASC) USING BTREE,
  INDEX `FK9sc9e92apu176v84w6xbhbvae`(`hotel_id` ASC) USING BTREE,
  CONSTRAINT `FK2kh8p1kmqv9m5d62cxsxwrauu` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK9sc9e92apu176v84w6xbhbvae` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_facility
-- ----------------------------
INSERT INTO `hotel_facility` VALUES (1, 1, 1, 1);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnmctq4w6r7lkp880d4utoop2l`(`hotel_id` ASC) USING BTREE,
  CONSTRAINT `FKnmctq4w6r7lkp880d4utoop2l` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owner
-- ----------------------------

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES (1, '123/11 kp1 ', 'bien hoa', 'dong nai', 'vietnam');
INSERT INTO `place` VALUES (2, '100/44 kp3 ', 'long thanh', 'dong nai', 'vietnam');
INSERT INTO `place` VALUES (3, '1/22 kp4 ', 'xuan loc', 'dong nai', 'vietnam');
INSERT INTO `place` VALUES (4, '33/11 kp7 ', 'quan 1', 'tpHCM', 'vietnam');
INSERT INTO `place` VALUES (5, '16/8 kp1 ', 'Thu Duc', 'tpHCM', 'vietnam');
INSERT INTO `place` VALUES (6, '55/9 kp7 ', 'Tan Binh', 'tpHCM', 'vietnam');
INSERT INTO `place` VALUES (7, '5/123 kp1 ', 'Quan 3', 'tpHCM', 'vietnam');
INSERT INTO `place` VALUES (8, '45/1 kp4 ', 'di an', 'binh duong', 'vietnam');
INSERT INTO `place` VALUES (9, '77/99 kp3 ', 'Thu dau mot', 'dong nai', 'vietnam');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKilvnqr4fvvtelmmsq74oekd5o`(`username` ASC) USING BTREE,
  CONSTRAINT `FKilvnqr4fvvtelmmsq74oekd5o` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (1, 'khach san khong dung nhu tren web ', 0, NULL);
INSERT INTO `report` VALUES (2, 'scam1', 0, NULL);

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rate` double NOT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKi0ly7ivbh8ijdgoi7cwtuoavt`(`hotel_id` ASC) USING BTREE,
  INDEX `FK117o6riye2xefmyeaanbvdx1i`(`username` ASC) USING BTREE,
  CONSTRAINT `FK117o6riye2xefmyeaanbvdx1i` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKi0ly7ivbh8ijdgoi7cwtuoavt` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 'good', 5, 2, 'nhocproaoe');
INSERT INTO `review` VALUES (2, 'asd', 5, 3, 'nhocproaoe');
INSERT INTO `review` VALUES (3, 'good', 5, 4, 'nhocproaoe');
INSERT INTO `review` VALUES (4, 'asd', 5, 5, 'nhocproaoe');
INSERT INTO `review` VALUES (5, 'good', 5, 6, 'nhocproaoe');
INSERT INTO `review` VALUES (6, 'asd', 5, 7, 'nhocproaoe');
INSERT INTO `review` VALUES (7, 'good', 5, 8, 'nhocproaoe');
INSERT INTO `review` VALUES (8, 'asd', 5, 9, 'nhocproaoe');
INSERT INTO `review` VALUES (9, 'good', 5, 1, 'nhocproaoe');
INSERT INTO `review` VALUES (10, 'asd', 5, 2, 'nhocproaoe');
INSERT INTO `review` VALUES (11, 'good', 5, 3, 'nhocproaoe');
INSERT INTO `review` VALUES (12, 'asd', 5, 4, 'nhocproaoe');
INSERT INTO `review` VALUES (13, 'good', 5, 5, 'nhocproaoe');
INSERT INTO `review` VALUES (14, 'asd', 5, 5, 'nhocproaoe');
INSERT INTO `review` VALUES (15, 'good', 5, 6, 'nhocproaoe');
INSERT INTO `review` VALUES (16, 'asd', 5, 7, 'nhocproaoe');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adult` int NOT NULL,
  `children` int NOT NULL,
  `discount` double NOT NULL,
  `price` double NOT NULL,
  `status` int NULL DEFAULT NULL,
  `hotel_id` bigint NULL DEFAULT NULL,
  `type_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdosq3ww4h9m2osim6o0lugng8`(`hotel_id` ASC) USING BTREE,
  INDEX `FKf5vbgyps3ubaknn710nk2m5o5`(`type_id` ASC) USING BTREE,
  CONSTRAINT `FKdosq3ww4h9m2osim6o0lugng8` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKf5vbgyps3ubaknn710nk2m5o5` FOREIGN KEY (`type_id`) REFERENCES `room_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 5, 3, 30, 500000, 1, 1, 1);
INSERT INTO `room` VALUES (2, 4, 0, 25, 400000, 1, 1, 1);
INSERT INTO `room` VALUES (3, 4, 2, 30, 650000, 1, 1, 1);
INSERT INTO `room` VALUES (4, 4, 0, 16, 1000000, 1, 2, 1);
INSERT INTO `room` VALUES (5, 5, 3, 50, 200000, 1, 2, 1);
INSERT INTO `room` VALUES (6, 4, 0, 44, 800000, 1, 2, 1);
INSERT INTO `room` VALUES (7, 4, 2, 12, 500000, 1, 3, 1);
INSERT INTO `room` VALUES (8, 4, 0, 13, 460000, 1, 3, 1);
INSERT INTO `room` VALUES (9, 5, 3, 9, 710000, 1, 3, 1);
INSERT INTO `room` VALUES (10, 4, 0, 12, 250000, 1, 4, 1);
INSERT INTO `room` VALUES (11, 4, 2, 15, 350000, 1, 4, 1);
INSERT INTO `room` VALUES (12, 4, 0, 16, 400000, 1, 4, 1);
INSERT INTO `room` VALUES (13, 5, 3, 18, 500000, 1, 5, 1);
INSERT INTO `room` VALUES (14, 4, 0, 17, 600000, 1, 5, 1);
INSERT INTO `room` VALUES (15, 4, 2, 0, 1500000, 1, 5, 1);
INSERT INTO `room` VALUES (16, 4, 0, 0, 420000, 1, 6, 1);
INSERT INTO `room` VALUES (17, 5, 3, 0, 850000, 1, 6, 1);
INSERT INTO `room` VALUES (18, 4, 0, 0, 660000, 1, 6, 1);
INSERT INTO `room` VALUES (19, 4, 2, 0, 900000, 1, 7, 1);
INSERT INTO `room` VALUES (20, 4, 0, 0, 800000, 1, 7, 1);
INSERT INTO `room` VALUES (21, 5, 3, 0, 300000, 1, 7, 1);
INSERT INTO `room` VALUES (22, 4, 0, 0, 250000, 1, 8, 1);
INSERT INTO `room` VALUES (23, 4, 2, 0, 450000, 1, 8, 1);
INSERT INTO `room` VALUES (24, 4, 0, 0, 650000, 1, 8, 1);
INSERT INTO `room` VALUES (25, 5, 3, 30, 2000000, 1, 9, 1);
INSERT INTO `room` VALUES (26, 4, 0, 0, 1200000, 1, 9, 1);
INSERT INTO `room` VALUES (27, 4, 2, 0, 630000, 1, 9, 1);
INSERT INTO `room` VALUES (28, 4, 0, 0, 450000, 1, 10, 1);
INSERT INTO `room` VALUES (29, 4, 2, 0, 230000, 1, 10, 1);
INSERT INTO `room` VALUES (30, 4, 0, 0, 454000, 1, 10, 1);

-- ----------------------------
-- Table structure for room_facility
-- ----------------------------
DROP TABLE IF EXISTS `room_facility`;
CREATE TABLE `room_facility`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` int NOT NULL,
  `facility_id` bigint NULL DEFAULT NULL,
  `room_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKj7d5o0yjvyvev7owenan66mcy`(`facility_id` ASC) USING BTREE,
  INDEX `FKt8cyiqxlu6kpr29sa7n1vk4pm`(`room_id` ASC) USING BTREE,
  CONSTRAINT `FKj7d5o0yjvyvev7owenan66mcy` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt8cyiqxlu6kpr29sa7n1vk4pm` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_facility
-- ----------------------------
INSERT INTO `room_facility` VALUES (1, 1, 3, 1);
INSERT INTO `room_facility` VALUES (2, 2, 3, 1);
INSERT INTO `room_facility` VALUES (3, 2, 3, 1);
INSERT INTO `room_facility` VALUES (4, 2, 3, 1);
INSERT INTO `room_facility` VALUES (5, 1, 4, 1);

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '2 nguoi', 'phong danh cho 4 nguoi');
INSERT INTO `room_type` VALUES (2, '4 nguoi', 'phong danh cho 4 nguoi');
INSERT INTO `room_type` VALUES (3, 'vip', 'phong vip');
INSERT INTO `room_type` VALUES (4, 'phong lon', 'phong danh cho 4 nguoi tro len');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('hello', 1, 'billcp38@gmail.com', '46d01f7fe5b631c0993dc620094690e3', NULL, NULL, 1, NULL);
INSERT INTO `user` VALUES ('nhocproaoe', 1, 'nhocproaoe@gmail.com', '865c0c0b4ab0e063e5caa3387c1a8741', NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for voucher
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expired_date` date NULL DEFAULT NULL,
  `minimum_spending` double NOT NULL,
  `rate` double NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voucher
-- ----------------------------
INSERT INTO `voucher` VALUES ('1', 'giam 10%', '2022-12-29', 2000000, 0.1, 1);
INSERT INTO `voucher` VALUES ('2', 'giam 5%', '2022-12-29', 5000000, 0.05, 1);
INSERT INTO `voucher` VALUES ('3', 'giam 20%', '2022-12-29', 3000000, 0.2, 1);
INSERT INTO `voucher` VALUES ('4', 'giam 15%', '2022-12-29', 4000000, 0.15, 1);
INSERT INTO `voucher` VALUES ('5', 'giam 8%', '2022-12-29', 1000000, 0.08, 1);

SET FOREIGN_KEY_CHECKS = 1;
