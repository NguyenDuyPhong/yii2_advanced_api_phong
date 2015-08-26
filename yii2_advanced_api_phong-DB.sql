/*
Navicat MySQL Data Transfer

Source Server         : localhost-3312
Source Server Version : 50158
Source Host           : localhost:3312
Source Database       : yii2_advanced_api_phong

Target Server Type    : MYSQL
Target Server Version : 50158
File Encoding         : 65001

Date: 2015-08-26 12:02:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'vietnam', '123123');
INSERT INTO `country` VALUES ('AU', 'Australia', '18886000');
INSERT INTO `country` VALUES ('BR', 'Brazil', '170115000');
INSERT INTO `country` VALUES ('c0', 'c01...', '0');
INSERT INTO `country` VALUES ('c2', 'c2...', '0');
INSERT INTO `country` VALUES ('c3', 'c3...', '0');
INSERT INTO `country` VALUES ('c4', 'c4...', '0');
INSERT INTO `country` VALUES ('c5', 'c5...', '0');
INSERT INTO `country` VALUES ('CA', 'Canada', '1147000');
INSERT INTO `country` VALUES ('CN', 'China', '1277558000');
INSERT INTO `country` VALUES ('DE', 'Germany', '82164700');
INSERT INTO `country` VALUES ('FR', 'France', '59225700');
INSERT INTO `country` VALUES ('GB', 'United Kingdom', '59623400');
INSERT INTO `country` VALUES ('IN', 'India', '1013662000');
INSERT INTO `country` VALUES ('RU', 'Russia', '146934000');
INSERT INTO `country` VALUES ('US', 'United States', '278357000');
INSERT INTO `country` VALUES ('V2', 'vietnam', '123123');
INSERT INTO `country` VALUES ('VI', 'vietnam', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL COMMENT 'Store ID',
  `first_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'First Name',
  `last_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Last Name',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email',
  `phone` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Phone',
  `fax` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Fax',
  `salt` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Salt',
  `ip` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'IP Address',
  `status` tinyint(3) DEFAULT NULL,
  `approved` tinyint(3) DEFAULT NULL,
  `interest` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Interest',
  `occupation` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Occupation',
  `about` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'About',
  `website_url` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Website URL',
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8,
  `password_hash` text CHARACTER SET utf8 NOT NULL,
  `password_reset_token` text CHARACTER SET utf8,
  `auth_key` text CHARACTER SET utf8,
  `mac_address` text CHARACTER SET utf8,
  `keyrandom` text CHARACTER SET utf8,
  `roles` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Roles',
  `role` int(11) DEFAULT NULL COMMENT '1 Role',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created Date',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Modified Date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', null, 'Ad ', 'Min.', 'ad@g.com', '090', '091', null, '123.123', '1', '1', 'int...', 'occu...', 'about...', '//website...', 'admin', 'f8d3157f0a9acd6e20ee713fccf39062', '$2y$13$w6NhbuqlI91PM.Vbnl3Tse.IOUNk3gBpxk33swyI5TQH.H5LRuKOi', '', 'auth01', null, null, '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `user-lack fields`
-- ----------------------------
DROP TABLE IF EXISTS `user-lack fields`;
CREATE TABLE `user-lack fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `password_hash` text CHARACTER SET utf8 NOT NULL,
  `password_reset_token` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `auth_key` text CHARACTER SET utf8 NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `mac_address` text CHARACTER SET utf8,
  `keyrandom` text CHARACTER SET utf8,
  `roles` text CHARACTER SET latin1,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user-lack fields
-- ----------------------------
INSERT INTO `user-lack fields` VALUES ('1', 'admin', 'f8d3157f0a9acd6e20ee713fccf39062', '$2y$13$w6NhbuqlI91PM.Vbnl3Tse.IOUNk3gBpxk33swyI5TQH.H5LRuKOi', 'token', 'email@g.com', 'auth', '0', '', '', '1', '10', '1434670568', '1434670568');
INSERT INTO `user-lack fields` VALUES ('3', 'us01', '', '$2y$13$lIMtTdz6LvSNuumOMpOb8.gJJ59EPiD0T31ywRZURw/zZwU9zEPf2', '', 'us01@g.com', 'xJfa1lMpK3rBW-dKeqkPqDnnLwMTD-9d', null, null, null, null, '10', '1434670766', '1434670766');
