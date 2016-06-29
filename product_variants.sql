/*
Navicat MySQL Data Transfer

Source Server         : Rackspace Server MYsQL phillip
Source Server Version : 50546
Source Host           : 162.242.218.155:3306
Source Database       : stage_grace

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-06-28 13:22:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product_variants
-- ----------------------------
DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_attribute_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_variants
-- ----------------------------
INSERT INTO `product_variants` VALUES ('2', '1', 'Hoop Size', '14\" Inch', '2016-06-22 13:36:17', '2016-06-22 13:36:17', null);
INSERT INTO `product_variants` VALUES ('3', '1', 'Hoop Size', '18\" Inch', '2016-06-22 13:36:17', '2016-06-22 13:36:17', null);
INSERT INTO `product_variants` VALUES ('4', '1', 'Hoop Size', '24\" Inch', '2016-06-22 13:36:17', '2016-06-22 13:36:17', null);
INSERT INTO `product_variants` VALUES ('5', '3', 'Crib Size', '59\" Inches ', '2016-06-27 10:59:18', '2016-06-27 10:59:18', null);
INSERT INTO `product_variants` VALUES ('6', '3', 'Queen Size', '98\" Inches', '2016-06-27 10:59:18', '2016-06-27 10:59:18', null);
INSERT INTO `product_variants` VALUES ('7', '4', 'Size Specifications:  Physical EZ3 Frame Sizes', '', '2016-06-27 21:00:07', '2016-06-27 21:00:07', null);
INSERT INTO `product_variants` VALUES ('8', '4', 'Queen Size', '99 Inches', '2016-06-27 21:00:07', '2016-06-27 21:00:07', null);
INSERT INTO `product_variants` VALUES ('9', '4', 'Crib Size', '67 Inches', '2016-06-27 21:00:07', '2016-06-27 21:00:07', null);
INSERT INTO `product_variants` VALUES ('10', '4', 'Craft Size', '35 Inches', '2016-06-27 21:00:07', '2016-06-27 21:00:07', null);
SET FOREIGN_KEY_CHECKS=1;
