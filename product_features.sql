/*
Navicat MySQL Data Transfer

Source Server         : Rackspace Server MYsQL phillip
Source Server Version : 50546
Source Host           : 162.242.218.155:3306
Source Database       : stage_grace

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-06-28 13:22:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product_features
-- ----------------------------
DROP TABLE IF EXISTS `product_features`;
CREATE TABLE `product_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `feature_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `useicon` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '<i class="icon-caret-right"></i>',
  PRIMARY KEY (`id`),
  KEY `product_features_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_features
-- ----------------------------
INSERT INTO `product_features` VALUES ('2', '1', 'Stand Supports three hoop sizes.', '2016-06-22 13:36:17', '2016-06-22 13:36:17', '0', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('3', '1', '14\" Size Hoop', '2016-06-22 13:36:17', '2016-06-22 13:36:17', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('4', '1', '18\" Size Hoop', '2016-06-22 13:36:17', '2016-06-22 13:36:17', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('5', '1', '24\" Size Hoop', '2016-06-22 13:36:17', '2016-06-22 13:36:17', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('6', '2', '14\" diameter hoop', '2016-06-22 15:18:00', '2016-06-22 15:18:00', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('7', '2', 'Adjustable outer hoop for various fabric thicknesses', '2016-06-22 15:18:00', '2016-06-22 15:18:00', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('8', '2', 'Edge tools included for ideal fabric tension', '2016-06-22 15:18:00', '2016-06-22 15:18:00', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('9', '2', 'Rotates 360 degrees', '2016-06-22 15:18:00', '2016-06-22 15:18:00', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('10', '2', 'Tilting work area for any angle', '2016-06-22 15:18:00', '2016-06-22 15:18:00', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('11', '3', 'Sets up in crib, twin, queen and king sizes', '2016-06-27 10:59:18', '2016-06-27 10:59:18', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('12', '3', 'Tilt adjustable work area (6 angles)', '2016-06-27 10:59:18', '2016-06-27 10:59:18', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('13', '3', 'Folds for convenient storage', '2016-06-27 10:59:18', '2016-06-27 10:59:18', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('14', '3', '50-tooth ratchets provide superior tension', '2016-06-27 10:59:18', '2016-06-27 10:59:18', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('15', '4', 'Sets up in craft, crib, and queen size', '2016-06-27 21:00:07', '2016-06-27 21:00:07', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('16', '4', 'Tilt adjustable work area (4 angles)', '2016-06-27 21:00:07', '2016-06-27 21:00:07', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('17', '4', 'Folds for convenient storage', '2016-06-27 21:00:07', '2016-06-27 21:00:07', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('18', '4', '30-tooth ratchets provide superior tension', '2016-06-27 21:00:07', '2016-06-27 21:00:07', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('19', '5', 'Easy Assembly', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('20', '5', 'Durable Rails', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('21', '5', 'Metal Connectors', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('22', '5', 'Elegant Design', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('23', '5', 'Clamps Included', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
INSERT INTO `product_features` VALUES ('24', '5', 'Breaks down for easy storage.', '2016-06-27 21:22:03', '2016-06-27 21:22:03', '1', '<i class=\"icon-caret-right\"></i>');
SET FOREIGN_KEY_CHECKS=1;
