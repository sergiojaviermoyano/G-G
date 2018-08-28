/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : gg

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-08-28 16:44:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artBarCode` varchar(50) NOT NULL,
  `artDescription` varchar(50) NOT NULL,
  `artCoste` decimal(14,2) NOT NULL,
  `artMarginMinorista` decimal(10,2) NOT NULL,
  `artMarginMinoristaIsPorcent` bit(1) NOT NULL,
  `artEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `artMinimo` int(11) DEFAULT '0',
  `ivaId` int(11) NOT NULL DEFAULT '4',
  `subrId` int(11) NOT NULL,
  `artMarginMayorista` decimal(14,2) NOT NULL DEFAULT '0.00',
  `artMarginMayoristaIsPorcent` bit(1) NOT NULL,
  `artCosteIsDolar` bit(1) NOT NULL,
  `marcaId` int(11) NOT NULL,
  PRIMARY KEY (`artId`),
  UNIQUE KEY `artBarCode` (`artBarCode`) USING BTREE,
  UNIQUE KEY `artDescription` (`artDescription`) USING BTREE,
  KEY `ivaId` (`ivaId`) USING BTREE,
  KEY `subrId` (`subrId`) USING BTREE,
  KEY `marcaId` (`marcaId`) USING BTREE,
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`ivaId`) REFERENCES `ivaalicuotas` (`ivaId`) ON UPDATE CASCADE,
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`subrId`) REFERENCES `subrubros` (`subrId`) ON UPDATE CASCADE,
  CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`marcaId`) REFERENCES `marcaart` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2523 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Cod1', 'Artículo 1', '50.00', '40.00', '', 'AC', '4', '4', '2', '30.00', '', '\0', '3');
INSERT INTO `articles` VALUES ('2', 'Cod2', 'Artículo 2', '66.00', '40.00', '', 'AC', '8', '4', '1', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('3', 'Cod3', 'Artículo 3', '640.00', '40.00', '\0', 'AC', '1', '4', '2', '30.00', '\0', '\0', '2');
INSERT INTO `articles` VALUES ('5', 'Cod5', 'Artículo 5', '4.30', '135.00', '', 'AC', '4', '4', '5', '30.00', '', '\0', '34');
INSERT INTO `articles` VALUES ('6', 'Cod6', 'Artículo 6', '7.10', '183.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '34');
INSERT INTO `articles` VALUES ('7', 'Cod7', 'Artículo 7', '6.40', '57.00', '', 'AC', '4', '4', '5', '30.00', '', '\0', '34');
INSERT INTO `articles` VALUES ('8', 'Cod8', 'Artículo 8', '80.00', '50.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('9', 'Cod9', 'Artículo 9', '5.25', '50.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('10', 'Cod10', 'Artículo 10', '40.00', '50.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '34');
INSERT INTO `articles` VALUES ('13', 'Cod13', 'Artículo 13', '1.50', '100.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('14', 'Cod14', 'Artículo 14', '0.33', '100.00', '', 'AC', '4', '4', '5', '0.30', '', '\0', '35');
INSERT INTO `articles` VALUES ('15', 'Cod15', 'Artículo 15', '0.35', '50.00', '', 'AC', '4', '4', '5', '30.00', '', '\0', '34');
INSERT INTO `articles` VALUES ('16', 'Cod16', 'Artículo 16', '1.19', '50.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('17', 'Cod17', 'Artículo 17', '0.70', '80.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('18', 'Cod18', 'Artículo 18', '25.00', '100.00', '', 'AC', '1', '4', '5', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('19', 'Cod19', 'Artículo 19', '1.50', '100.00', '', 'AC', '4', '4', '5', '30.00', '', '\0', '43');
INSERT INTO `articles` VALUES ('20', 'Cod20', 'Artículo 20', '17.42', '40.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '30');
INSERT INTO `articles` VALUES ('21', 'Cod21', 'Artículo 21', '13.00', '40.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '32');
INSERT INTO `articles` VALUES ('22', 'Cod22', 'Artículo 22', '6.42', '35.00', '', 'AC', '4', '4', '4', '25.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('23', 'Cod23', 'Artículo 23', '166.66', '50.00', '', 'AC', '4', '4', '4', '30.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('24', 'Cod24', 'Artículo 24', '121.21', '65.00', '', 'AC', '4', '4', '4', '30.00', '', '\0', '32');
INSERT INTO `articles` VALUES ('25', 'Cod25', 'Artículo 25', '370.00', '40.00', '', 'AC', '1', '4', '4', '30.00', '', '\0', '44');
INSERT INTO `articles` VALUES ('26', 'Cod26', 'Artículo 26', '406.90', '45.00', '', 'AC', '2', '4', '4', '30.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('27', 'Cod27', 'Artículo 27', '0.51', '100.00', '', 'AC', '10', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('28', 'Cod28', 'Artículo 28', '0.62', '100.00', '', 'AC', '0', '4', '5', '30.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('29', 'Cod29', 'Artículo 29', '15.00', '100.00', '', 'AC', '5', '4', '5', '30.00', '', '\0', '37');
INSERT INTO `articles` VALUES ('30', 'Cod30', 'Artículo 30', '0.60', '100.00', '', 'AC', '5', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('31', 'Cod31', 'Artículo 31', '45.00', '100.00', '', 'AC', '1', '4', '6', '30.00', '', '\0', '46');
INSERT INTO `articles` VALUES ('32', 'Cod32', 'Artículo 32', '100.00', '100.00', '', 'AC', '2', '4', '6', '30.00', '', '\0', '45');
INSERT INTO `articles` VALUES ('33', 'Cod33', 'Artículo 33', '38.00', '100.00', '', 'AC', '2', '4', '5', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('34', 'Cod34', 'Artículo 34', '1.60', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('35', 'Cod35', 'Artículo 35', '50.00', '100.00', '\0', 'AC', '2', '4', '7', '30.00', '\0', '\0', '47');
INSERT INTO `articles` VALUES ('36', 'Cod36', 'Artículo 36', '75.00', '100.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '47');
INSERT INTO `articles` VALUES ('37', 'Cod37', 'Artículo 37', '75.00', '100.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '47');
INSERT INTO `articles` VALUES ('38', 'Cod38', 'Artículo 38', '62.50', '100.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '48');
INSERT INTO `articles` VALUES ('39', 'Cod39', 'Artículo 39', '75.00', '100.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('40', 'Cod40', 'Artículo 40', '90.00', '100.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '49');
INSERT INTO `articles` VALUES ('41', 'Cod41', 'Artículo 41', '70.00', '100.00', '\0', 'AC', '4', '4', '8', '30.00', '\0', '\0', '49');
INSERT INTO `articles` VALUES ('42', 'Cod42', 'Artículo 42', '40.00', '100.00', '', 'AC', '4', '4', '4', '30.00', '', '\0', '50');
INSERT INTO `articles` VALUES ('43', 'Cod43', 'Artículo 43', '75.00', '100.00', '', 'AC', '4', '4', '4', '30.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('44', 'Cod44', 'Artículo 44', '75.00', '100.00', '', 'AC', '2', '4', '4', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('46', 'Cod46', 'Artículo 46', '75.00', '100.00', '', 'AC', '4', '4', '4', '30.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('47', 'Cod47', 'Artículo 47', '45.00', '100.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('48', 'Cod48', 'Artículo 48', '45.00', '100.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('49', 'Cod49', 'Artículo 49', '100.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('50', 'Cod50', 'Artículo 50', '4.40', '100.00', '', 'AC', '2', '4', '6', '30.00', '', '\0', '54');
INSERT INTO `articles` VALUES ('51', 'Cod51', 'Artículo 51', '34.37', '60.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '55');
INSERT INTO `articles` VALUES ('52', 'Cod52', 'Artículo 52', '2.00', '100.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '56');
INSERT INTO `articles` VALUES ('53', 'Cod53', 'Artículo 53', '45.00', '100.00', '', 'AC', '2', '4', '4', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('54', 'Cod54', 'Artículo 54', '50.00', '100.00', '', 'AC', '2', '4', '6', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('55', 'Cod55', 'Artículo 55', '1.90', '100.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '57');
INSERT INTO `articles` VALUES ('56', 'Cod56', 'Artículo 56', '40.62', '60.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '58');
INSERT INTO `articles` VALUES ('57', 'Cod57', 'Artículo 57', '42.50', '100.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '60');
INSERT INTO `articles` VALUES ('58', 'Cod58', 'Artículo 58', '181.25', '60.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('59', 'Cod59', 'Artículo 59', '60.00', '100.00', '', 'AC', '5', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('60', 'Cod60', 'Artículo 60', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('61', 'Cod61', 'Artículo 61', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('62', 'Cod62', 'Artículo 62', '50.00', '100.00', '', 'AC', '3', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('63', 'Cod63', 'Artículo 63', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('64', 'Cod64', 'Artículo 64', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('65', 'Cod65', 'Artículo 65', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('66', 'Cod66', 'Artículo 66', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('67', 'Cod67', 'Artículo 67', '60.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('68', 'Cod68', 'Artículo 68', '60.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('69', 'Cod69', 'Artículo 69', '60.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('70', 'Cod70', 'Artículo 70', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('71', 'Cod71', 'Artículo 71', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('72', 'Cod72', 'Artículo 72', '60.00', '100.00', '', 'AC', '4', '4', '3', '3.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('73', 'Cod73', 'Artículo 73', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('74', 'Cod74', 'Artículo 74', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('75', 'Cod75', 'Artículo 75', '90.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('76', 'Cod76', 'Artículo 76', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('77', 'Cod77', 'Artículo 77', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('78', 'Cod78', 'Artículo 78', '72.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('79', 'Cod79', 'Artículo 79', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('80', 'Cod80', 'Artículo 80', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('81', 'Cod81', 'Artículo 81', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('82', 'Cod82', 'Artículo 82', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('83', 'Cod83', 'Artículo 83', '60.00', '100.00', '', 'AC', '5', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('84', 'Cod84', 'Artículo 84', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('85', 'Cod85', 'Artículo 85', '72.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('87', 'Cod87', 'Artículo 87', '60.00', '100.00', '', 'AC', '5', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('88', 'Cod88', 'Artículo 88', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('91', 'Cod91', 'Artículo 91', '120.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('92', 'Cod92', 'Artículo 92', '120.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('93', 'Cod93', 'Artículo 93', '120.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('94', 'Cod94', 'Artículo 94', '64.60', '280.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('95', 'Cod95', 'Artículo 95', '76.65', '230.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('96', 'Cod96', 'Artículo 96', '120.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('97', 'Cod97', 'Artículo 97', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('98', 'Cod98', 'Artículo 98', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('99', 'Cod99', 'Artículo 99', '60.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('100', 'Cod100', 'Artículo 100', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('102', 'Cod102', 'Artículo 102', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('103', 'Cod103', 'Artículo 103', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('104', 'Cod104', 'Artículo 104', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('105', 'Cod105', 'Artículo 105', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('106', 'Cod106', 'Artículo 106', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('107', 'Cod107', 'Artículo 107', '52.56', '130.00', '', 'AC', '5', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('111', 'Cod111', 'Artículo 111', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('112', 'Cod112', 'Artículo 112', '72.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('113', 'Cod113', 'Artículo 113', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('114', 'Cod114', 'Artículo 114', '60.00', '100.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('115', 'Cod115', 'Artículo 115', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('116', 'Cod116', 'Artículo 116', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('117', 'Cod117', 'Artículo 117', '20.00', '30.00', '', 'AC', '10', '4', '4', '300.00', '', '\0', '61');
INSERT INTO `articles` VALUES ('118', 'Cod118', 'Artículo 118', '408.78', '51.50', '', 'AC', '4', '4', '2', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('119', 'Cod119', 'Artículo 119', '456.66', '50.00', '', 'AC', '2', '4', '2', '30.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('120', 'Cod120', 'Artículo 120', '3130.00', '30.00', '', 'AC', '0', '4', '8', '50.00', '', '\0', '17');
INSERT INTO `articles` VALUES ('121', 'Cod121', 'Artículo 121', '57.00', '50.00', '', 'AC', '4', '4', '1', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('122', 'Cod122', 'Artículo 122', '620.00', '30.00', '', 'AC', '4', '4', '8', '50.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('123', 'Cod123', 'Artículo 123', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('124', 'Cod124', 'Artículo 124', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('125', 'Cod125', 'Artículo 125', '120.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('126', 'Cod126', 'Artículo 126', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('127', 'Cod127', 'Artículo 127', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('128', 'Cod128', 'Artículo 128', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('129', 'Cod129', 'Artículo 129', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('130', 'Cod130', 'Artículo 130', '60.00', '100.00', '', 'AC', '4', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('132', 'Cod132', 'Artículo 132', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('133', 'Cod133', 'Artículo 133', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('135', 'Cod135', 'Artículo 135', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('136', 'Cod136', 'Artículo 136', '60.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('137', 'Cod137', 'Artículo 137', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('138', 'Cod138', 'Artículo 138', '60.00', '100.00', '\0', 'AC', '1', '4', '3', '30.00', '\0', '\0', '16');
INSERT INTO `articles` VALUES ('139', 'Cod139', 'Artículo 139', '60.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('141', 'Cod141', 'Artículo 141', '60.00', '100.00', '\0', 'AC', '1', '4', '3', '30.00', '\0', '\0', '16');
INSERT INTO `articles` VALUES ('142', 'Cod142', 'Artículo 142', '56.02', '114.20', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('143', 'Cod143', 'Artículo 143', '141.48', '69.63', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('144', 'Cod144', 'Artículo 144', '120.00', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('145', 'Cod145', 'Artículo 145', '100.00', '100.00', '', 'AC', '2', '4', '13', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('146', 'Cod146', 'Artículo 146', '100.00', '100.00', '', 'AC', '2', '4', '13', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('149', 'Cod149', 'Artículo 149', '100.00', '100.00', '\0', 'AC', '2', '4', '13', '30.00', '\0', '\0', '16');
INSERT INTO `articles` VALUES ('150', 'Cod150', 'Artículo 150', '10.00', '100.00', '', 'AC', '2', '4', '13', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('151', 'Cod151', 'Artículo 151', '150.00', '100.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('152', 'Cod152', 'Artículo 152', '100.00', '100.00', '', 'AC', '3', '4', '14', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('153', 'Cod153', 'Artículo 153', '130.00', '100.00', '\0', 'AC', '3', '4', '14', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('154', 'Cod154', 'Artículo 154', '100.00', '100.00', '', 'AC', '1', '4', '15', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('155', 'Cod155', 'Artículo 155', '6.50', '100.00', '', 'AC', '1', '4', '16', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('156', 'Cod156', 'Artículo 156', '30.00', '100.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('157', 'Cod157', 'Artículo 157', '157.68', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('158', 'Cod158', 'Artículo 158', '7.00', '100.00', '', 'AC', '2', '4', '16', '30.00', '', '\0', '39');
INSERT INTO `articles` VALUES ('159', 'Cod159', 'Artículo 159', '7.14', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '39');
INSERT INTO `articles` VALUES ('160', 'Cod160', 'Artículo 160', '12.50', '100.00', '', 'AC', '2', '4', '16', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('161', 'Cod161', 'Artículo 161', '4.00', '100.00', '', 'AC', '2', '4', '16', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('162', 'Cod162', 'Artículo 162', '170.68', '40.00', '', 'AC', '3', '4', '3', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('163', 'Cod163', 'Artículo 163', '522.31', '50.00', '', 'AC', '1', '4', '17', '30.00', '', '\0', '62');
INSERT INTO `articles` VALUES ('164', 'Cod164', 'Artículo 164', '182.91', '50.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('165', 'Cod165', 'Artículo 165', '19.32', '40.00', '', 'AC', '1', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('166', 'Cod166', 'Artículo 166', '15.00', '40.00', '', 'AC', '2', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('167', 'Cod167', 'Artículo 167', '13.00', '45.00', '', 'AC', '2', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('168', 'Cod168', 'Artículo 168', '3.30', '70.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('169', 'Cod169', 'Artículo 169', '4.30', '60.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('170', 'Cod170', 'Artículo 170', '45.30', '50.00', '', 'AC', '5', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('171', 'Cod171', 'Artículo 171', '1317.00', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('172', 'Cod172', 'Artículo 172', '4.50', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('173', 'Cod173', 'Artículo 173', '1420.13', '54.85', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('174', 'Cod174', 'Artículo 174', '1466.60', '55.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('175', 'Cod175', 'Artículo 175', '138.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('176', 'Cod176', 'Artículo 176', '152.46', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('177', 'Cod177', 'Artículo 177', '2337.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('178', 'Cod178', 'Artículo 178', '68.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('179', 'Cod179', 'Artículo 179', '48.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('180', 'Cod180', 'Artículo 180', '33.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('181', 'Cod181', 'Artículo 181', '47.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('182', 'Cod182', 'Artículo 182', '44.90', '50.00', '', 'AC', '2', '4', '2', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('183', 'Cod183', 'Artículo 183', '1200.00', '50.00', '', 'AC', '2', '4', '2', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('184', 'Cod184', 'Artículo 184', '145.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '17');
INSERT INTO `articles` VALUES ('185', 'Cod185', 'Artículo 185', '105.00', '40.00', '', 'AC', '2', '4', '1', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('186', 'Cod186', 'Artículo 186', '175.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('187', 'Cod187', 'Artículo 187', '390.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('188', 'Cod188', 'Artículo 188', '145.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '17');
INSERT INTO `articles` VALUES ('189', 'Cod189', 'Artículo 189', '1600.00', '50.00', '', 'AC', '2', '4', '2', '30.00', '', '\0', '17');
INSERT INTO `articles` VALUES ('190', 'Cod190', 'Artículo 190', '68.00', '50.00', '', 'AC', '2', '4', '2', '30.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('192', 'Cod192', 'Artículo 192', '73.00', '50.00', '', 'AC', '4', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('193', 'Cod193', 'Artículo 193', '68.00', '50.00', '', 'AC', '4', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('194', 'Cod194', 'Artículo 194', '650.00', '50.00', '', 'AC', '1', '4', '2', '30.00', '', '\0', '20');
INSERT INTO `articles` VALUES ('195', 'Cod195', 'Artículo 195', '52.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('196', 'Cod196', 'Artículo 196', '1999.99', '25.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('197', 'Cod197', 'Artículo 197', '1784.25', '25.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('198', 'Cod198', 'Artículo 198', '2055.55', '33.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('199', 'Cod199', 'Artículo 199', '2220.75', '33.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '54');
INSERT INTO `articles` VALUES ('200', 'Cod200', 'Artículo 200', '2816.25', '34.00', '', 'AC', '1', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('201', 'Cod201', 'Artículo 201', '3105.75', '33.88', '', 'AC', '1', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('202', 'Cod202', 'Artículo 202', '3435.00', '35.00', '', 'AC', '1', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('203', 'Cod203', 'Artículo 203', '3966.75', '34.00', '', 'AC', '1', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('204', 'Cod204', 'Artículo 204', '3.00', '140.00', '', 'AC', '5', '4', '20', '40.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('205', 'Cod205', 'Artículo 205', '3999.45', '34.00', '', 'AC', '1', '4', '12', '10.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('206', 'Cod206', 'Artículo 206', '3874.75', '35.00', '', 'AC', '1', '4', '12', '15.00', '', '\0', '28');
INSERT INTO `articles` VALUES ('207', 'Cod207', 'Artículo 207', '1495.50', '33.58', '', 'AC', '2', '4', '12', '15.00', '', '\0', '29');
INSERT INTO `articles` VALUES ('208', 'Cod208', 'Artículo 208', '1365.75', '35.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '29');
INSERT INTO `articles` VALUES ('209', 'Cod209', 'Artículo 209', '1461.00', '35.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '29');
INSERT INTO `articles` VALUES ('210', 'Cod210', 'Artículo 210', '1658.25', '35.00', '', 'AC', '2', '4', '12', '15.00', '', '\0', '29');
INSERT INTO `articles` VALUES ('211', 'Cod211', 'Artículo 211', '6.00', '65.00', '', 'AC', '2', '4', '23', '30.00', '', '\0', '12');
INSERT INTO `articles` VALUES ('212', 'Cod212', 'Artículo 212', '75.00', '45.00', '', 'AC', '2', '4', '24', '30.00', '', '\0', '12');
INSERT INTO `articles` VALUES ('213', 'Cod213', 'Artículo 213', '62.00', '45.00', '', 'AC', '2', '4', '24', '30.00', '', '\0', '12');
INSERT INTO `articles` VALUES ('214', 'Cod214', 'Artículo 214', '3888.94', '40.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('215', 'Cod215', 'Artículo 215', '6148.01', '40.00', '', 'AC', '1', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('216', 'Cod216', 'Artículo 216', '5065.06', '40.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('217', 'Cod217', 'Artículo 217', '7.89', '40.00', '', 'AC', '4', '4', '6', '25.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('218', 'Cod218', 'Artículo 218', '14.00', '45.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('219', 'Cod219', 'Artículo 219', '41.55', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('220', 'Cod220', 'Artículo 220', '6.00', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '32');
INSERT INTO `articles` VALUES ('221', 'Cod221', 'Artículo 221', '151.00', '50.00', '', 'AC', '2', '4', '18', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('222', 'Cod222', 'Artículo 222', '68.00', '50.00', '', 'AC', '1', '4', '6', '30.00', '', '\0', '46');
INSERT INTO `articles` VALUES ('223', 'Cod223', 'Artículo 223', '5.33', '50.00', '', 'AC', '2', '4', '12', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('224', 'Cod224', 'Artículo 224', '140.60', '50.00', '', 'AC', '2', '4', '1', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('225', 'Cod225', 'Artículo 225', '3.30', '50.00', '', 'AC', '4', '4', '5', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('226', 'Cod226', 'Artículo 226', '6.22', '50.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('227', 'Cod227', 'Artículo 227', '23.00', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '19');
INSERT INTO `articles` VALUES ('228', 'Cod228', 'Artículo 228', '19.00', '50.00', '', 'AC', '1', '4', '7', '40.00', '', '\0', '19');
INSERT INTO `articles` VALUES ('229', 'Cod229', 'Artículo 229', '136.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '22');
INSERT INTO `articles` VALUES ('230', 'Cod230', 'Artículo 230', '1479.83', '50.00', '', 'SU', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('231', 'Cod231', 'Artículo 231', '2226.40', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('232', 'Cod232', 'Artículo 232', '449.99', '90.00', '', 'AC', '2', '4', '30', '30.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('233', 'Cod233', 'Artículo 233', '449.99', '90.00', '', 'AC', '2', '4', '30', '45.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('234', 'Cod234', 'Artículo 234', '340.00', '135.00', '', 'AC', '2', '4', '20', '45.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('235', 'Cod235', 'Artículo 235', '14.50', '60.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('236', 'Cod236', 'Artículo 236', '2580.00', '55.00', '', 'AC', '2', '4', '31', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('237', 'Cod237', 'Artículo 237', '18.67', '50.00', '', 'AC', '3', '4', '8', '30.00', '', '\0', '12');
INSERT INTO `articles` VALUES ('238', 'Cod238', 'Artículo 238', '57.40', '60.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '3');
INSERT INTO `articles` VALUES ('239', 'Cod239', 'Artículo 239', '87.93', '60.00', '', 'AC', '2', '4', '8', '79.58', '', '\0', '52');
INSERT INTO `articles` VALUES ('240', 'Cod240', 'Artículo 240', '9.50', '40.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '3');
INSERT INTO `articles` VALUES ('241', 'Cod241', 'Artículo 241', '72.67', '55.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('242', 'Cod242', 'Artículo 242', '70.58', '70.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('243', 'Cod243', 'Artículo 243', '76.80', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('244', 'Cod244', 'Artículo 244', '96.31', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('245', 'Cod245', 'Artículo 245', '105.17', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('246', 'Cod246', 'Artículo 246', '26.62', '50.00', '', 'AC', '10', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('247', 'Cod247', 'Artículo 247', '15.99', '245.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('248', 'Cod248', 'Artículo 248', '2.50', '65.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('249', 'Cod249', 'Artículo 249', '1.10', '50.00', '', 'AC', '5', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('250', 'Cod250', 'Artículo 250', '1.10', '50.00', '', 'AC', '5', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('251', 'Cod251', 'Artículo 251', '1.10', '50.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('252', 'Cod252', 'Artículo 252', '136.00', '50.00', '\0', 'AC', '3', '4', '8', '30.00', '\0', '\0', '16');
INSERT INTO `articles` VALUES ('253', 'Cod253', 'Artículo 253', '0.89', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('254', 'Cod254', 'Artículo 254', '1.00', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('255', 'Cod255', 'Artículo 255', '425.00', '50.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('256', 'Cod256', 'Artículo 256', '48.61', '150.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('257', 'Cod257', 'Artículo 257', '3.00', '100.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('258', 'Cod258', 'Artículo 258', '3.30', '100.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('259', 'Cod259', 'Artículo 259', '15.00', '100.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('260', 'Cod260', 'Artículo 260', '30.00', '100.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('261', 'Cod261', 'Artículo 261', '538.61', '86.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('262', 'Cod262', 'Artículo 262', '99.31', '51.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('263', 'Cod263', 'Artículo 263', '93.20', '60.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('264', 'Cod264', 'Artículo 264', '93.20', '61.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('265', 'Cod265', 'Artículo 265', '93.20', '61.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('266', 'Cod266', 'Artículo 266', '55.45', '170.50', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('267', 'Cod267', 'Artículo 267', '93.20', '61.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('268', 'Cod268', 'Artículo 268', '93.20', '61.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('269', 'Cod269', 'Artículo 269', '93.20', '61.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('271', 'Cod271', 'Artículo 271', '93.20', '61.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('272', 'Cod272', 'Artículo 272', '13.85', '50.00', '', 'AC', '4', '4', '9', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('273', 'Cod273', 'Artículo 273', '4.00', '72.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('274', 'Cod274', 'Artículo 274', '7.32', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('276', 'Cod276', 'Artículo 276', '192.91', '107.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('277', 'Cod277', 'Artículo 277', '26.90', '78.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('278', 'Cod278', 'Artículo 278', '62.00', '50.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('279', 'Cod279', 'Artículo 279', '57.81', '160.00', '', 'AC', '4', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('280', 'Cod280', 'Artículo 280', '744.77', '103.00', '', 'AC', '2', '4', '3', '20.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('281', 'Cod281', 'Artículo 281', '4.00', '130.00', '', 'AC', '4', '4', '8', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('282', 'Cod282', 'Artículo 282', '450.00', '90.00', '', 'AC', '2', '4', '4', '40.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('283', 'Cod283', 'Artículo 283', '192.00', '50.00', '', 'AC', '2', '4', '32', '25.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('284', 'Cod284', 'Artículo 284', '230.00', '55.00', '', 'AC', '1', '4', '18', '25.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('285', 'Cod285', 'Artículo 285', '120.00', '68.00', '', 'AC', '1', '4', '8', '35.00', '', '\0', '2');
INSERT INTO `articles` VALUES ('286', 'Cod286', 'Artículo 286', '16.80', '50.00', '', 'AC', '2', '4', '48', '35.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('287', 'Cod287', 'Artículo 287', '1000.00', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('288', 'Cod288', 'Artículo 288', '320.00', '50.00', '', 'AC', '1', '4', '48', '40.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('289', 'Cod289', 'Artículo 289', '26.00', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('290', 'Cod290', 'Artículo 290', '218.00', '50.00', '', 'AC', '1', '4', '48', '40.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('291', 'Cod291', 'Artículo 291', '3049.62', '40.00', '', 'AC', '2', '4', '34', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('292', 'Cod292', 'Artículo 292', '148.99', '40.00', '', 'AC', '2', '4', '35', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('293', 'Cod293', 'Artículo 293', '160.54', '40.00', '', 'AC', '2', '4', '35', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('294', 'Cod294', 'Artículo 294', '0.39', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('295', 'Cod295', 'Artículo 295', '0.25', '150.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('296', 'Cod296', 'Artículo 296', '1.50', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('297', 'Cod297', 'Artículo 297', '720.24', '50.00', '', 'AC', '4', '4', '9', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('298', 'Cod298', 'Artículo 298', '87.35', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('299', 'Cod299', 'Artículo 299', '153.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('301', 'Cod301', 'Artículo 301', '100.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('302', 'Cod302', 'Artículo 302', '2964.00', '50.00', '', 'AC', '0', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('303', 'Cod303', 'Artículo 303', '1235.00', '50.00', '', 'AC', '0', '4', '9', '30.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('304', 'Cod304', 'Artículo 304', '1950.00', '50.00', '', 'AC', '0', '4', '9', '30.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('305', 'Cod305', 'Artículo 305', '37.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '41');
INSERT INTO `articles` VALUES ('306', 'Cod306', 'Artículo 306', '73.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('307', 'Cod307', 'Artículo 307', '500.00', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('308', 'Cod308', 'Artículo 308', '35.70', '50.00', '', 'AC', '0', '4', '3', '30.00', '', '\0', '61');
INSERT INTO `articles` VALUES ('309', 'Cod309', 'Artículo 309', '100.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('310', 'Cod310', 'Artículo 310', '390.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('311', 'Cod311', 'Artículo 311', '1491.93', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('312', 'Cod312', 'Artículo 312', '105.00', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('313', 'Cod313', 'Artículo 313', '2226.40', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('314', 'Cod314', 'Artículo 314', '11.40', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('315', 'Cod315', 'Artículo 315', '20.00', '50.00', '', 'AC', '2', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('316', 'Cod316', 'Artículo 316', '200.00', '50.00', '', 'AC', '2', '4', '27', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('317', 'Cod317', 'Artículo 317', '900.00', '50.00', '', 'AC', '1', '4', '29', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('318', 'Cod318', 'Artículo 318', '82.00', '50.00', '', 'AC', '1', '4', '27', '30.00', '', '\0', '8');
INSERT INTO `articles` VALUES ('319', 'Cod319', 'Artículo 319', '23.00', '80.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('320', 'Cod320', 'Artículo 320', '419.55', '50.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('321', 'Cod321', 'Artículo 321', '419.55', '80.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('322', 'Cod322', 'Artículo 322', '376.23', '75.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('323', 'Cod323', 'Artículo 323', '206.05', '75.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('324', 'Cod324', 'Artículo 324', '19.00', '60.00', '', 'AC', '3', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('325', 'Cod325', 'Artículo 325', '9.39', '330.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('326', 'Cod326', 'Artículo 326', '95.31', '80.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('327', 'Cod327', 'Artículo 327', '111.88', '80.00', '', 'AC', '8', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('328', 'Cod328', 'Artículo 328', '758.03', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('329', 'Cod329', 'Artículo 329', '5.50', '150.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('330', 'Cod330', 'Artículo 330', '33.11', '200.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('331', 'Cod331', 'Artículo 331', '13.24', '60.00', '', 'AC', '10', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('332', 'Cod332', 'Artículo 332', '5.50', '150.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('333', 'Cod333', 'Artículo 333', '33.83', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('334', 'Cod334', 'Artículo 334', '350.00', '50.00', '', 'AC', '2', '4', '20', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('335', 'Cod335', 'Artículo 335', '26.44', '50.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('336', 'Cod336', 'Artículo 336', '13.00', '52.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('337', 'Cod337', 'Artículo 337', '57.00', '40.00', '', 'AC', '1', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('338', 'Cod338', 'Artículo 338', '101.00', '45.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('340', 'Cod340', 'Artículo 340', '133.54', '50.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('341', 'Cod341', 'Artículo 341', '7.50', '50.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('342', 'Cod342', 'Artículo 342', '6.00', '50.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('343', 'Cod343', 'Artículo 343', '8.70', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('344', 'Cod344', 'Artículo 344', '297.00', '50.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('345', 'Cod345', 'Artículo 345', '1470.00', '50.00', '', 'AC', '1', '4', '8', '30.00', '', '\0', '65');
INSERT INTO `articles` VALUES ('346', 'Cod346', 'Artículo 346', '382.51', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '65');
INSERT INTO `articles` VALUES ('347', 'Cod347', 'Artículo 347', '30.60', '195.00', '', 'AC', '5', '4', '38', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('348', 'Cod348', 'Artículo 348', '72.42', '110.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('349', 'Cod349', 'Artículo 349', '92.82', '105.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('350', 'Cod350', 'Artículo 350', '112.20', '100.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('351', 'Cod351', 'Artículo 351', '21.42', '290.00', '', 'AC', '5', '4', '4', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('352', 'Cod352', 'Artículo 352', '214.20', '65.00', '', 'AC', '2', '4', '4', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('353', 'Cod353', 'Artículo 353', '14.75', '75.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('354', 'Cod354', 'Artículo 354', '18.00', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('355', 'Cod355', 'Artículo 355', '8.30', '70.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('356', 'Cod356', 'Artículo 356', '66.30', '130.00', '', 'AC', '5', '4', '4', '30.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('357', 'Cod357', 'Artículo 357', '130.82', '65.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('358', 'Cod358', 'Artículo 358', '111.18', '130.00', '', 'AC', '2', '4', '39', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('359', 'Cod359', 'Artículo 359', '36.06', '150.00', '', 'AC', '5', '4', '38', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('360', 'Cod360', 'Artículo 360', '34.67', '200.00', '', 'AC', '5', '4', '4', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('361', 'Cod361', 'Artículo 361', '195.57', '85.00', '', 'AC', '2', '4', '4', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('362', 'Cod362', 'Artículo 362', '1406.58', '75.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('364', 'Cod364', 'Artículo 364', '51.00', '50.00', '', 'AC', '1', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('365', 'Cod365', 'Artículo 365', '240.00', '40.00', '', 'AC', '1', '4', '2', '30.00', '', '\0', '25');
INSERT INTO `articles` VALUES ('366', 'Cod366', 'Artículo 366', '14.39', '50.00', '', 'AC', '5', '4', '41', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('367', 'Cod367', 'Artículo 367', '160.00', '50.00', '', 'AC', '1', '4', '2', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('368', 'Cod368', 'Artículo 368', '10.00', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('369', 'Cod369', 'Artículo 369', '35.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('370', 'Cod370', 'Artículo 370', '38.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('371', 'Cod371', 'Artículo 371', '28.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('372', 'Cod372', 'Artículo 372', '2.00', '100.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('373', 'Cod373', 'Artículo 373', '15.00', '60.00', '', 'AC', '1', '4', '6', '30.00', '', '\0', '25');
INSERT INTO `articles` VALUES ('377', 'Cod377', 'Artículo 377', '225.94', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('378', 'Cod378', 'Artículo 378', '256.26', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('379', 'Cod379', 'Artículo 379', '7.14', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('380', 'Cod380', 'Artículo 380', '5.10', '52.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('381', 'Cod381', 'Artículo 381', '408.38', '50.00', '', 'AC', '1', '4', '5', '30.00', '', '\0', '25');
INSERT INTO `articles` VALUES ('382', 'Cod382', 'Artículo 382', '759.81', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('383', 'Cod383', 'Artículo 383', '35.00', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('384', 'Cod384', 'Artículo 384', '34.40', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('385', 'Cod385', 'Artículo 385', '15.58', '50.00', '\0', 'AC', '4', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('386', 'Cod386', 'Artículo 386', '45.90', '50.00', '', 'AC', '3', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('387', 'Cod387', 'Artículo 387', '28.34', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('388', 'Cod388', 'Artículo 388', '28.34', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('390', 'Cod390', 'Artículo 390', '6.36', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('391', 'Cod391', 'Artículo 391', '32.52', '55.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('392', 'Cod392', 'Artículo 392', '94.54', '50.00', '', 'AC', '1', '4', '9', '30.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('393', 'Cod393', 'Artículo 393', '100.00', '100.00', '', 'AC', '4', '4', '40', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('394', 'Cod394', 'Artículo 394', '95.00', '60.00', '', 'AC', '4', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('395', 'Cod395', 'Artículo 395', '2.50', '100.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('396', 'Cod396', 'Artículo 396', '650.00', '100.00', '', 'AC', '1', '4', '44', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('397', 'Cod397', 'Artículo 397', '4.00', '100.00', '', 'AC', '2', '4', '42', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('398', 'Cod398', 'Artículo 398', '1200.00', '100.00', '', 'AC', '2', '4', '44', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('399', 'Cod399', 'Artículo 399', '48.00', '50.00', '', 'AC', '2', '4', '47', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('400', 'Cod400', 'Artículo 400', '7.50', '80.00', '', 'AC', '2', '4', '44', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('401', 'Cod401', 'Artículo 401', '1000.00', '100.00', '', 'AC', '1', '4', '44', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('402', 'Cod402', 'Artículo 402', '650.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '17');
INSERT INTO `articles` VALUES ('403', 'Cod403', 'Artículo 403', '420.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('404', 'Cod404', 'Artículo 404', '345.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('405', 'Cod405', 'Artículo 405', '6.75', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '41');
INSERT INTO `articles` VALUES ('406', 'Cod406', 'Artículo 406', '128.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('407', 'Cod407', 'Artículo 407', '100.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('408', 'Cod408', 'Artículo 408', '85.00', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('409', 'Cod409', 'Artículo 409', '40.00', '100.00', '', 'AC', '5', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('410', 'Cod410', 'Artículo 410', '70.00', '72.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('411', 'Cod411', 'Artículo 411', '6.00', '50.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('412', 'Cod412', 'Artículo 412', '3.50', '58.00', '', 'AC', '5', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('413', 'Cod413', 'Artículo 413', '315.00', '55.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('414', 'Cod414', 'Artículo 414', '20.00', '100.00', '', 'AC', '4', '4', '43', '50.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('415', 'Cod415', 'Artículo 415', '100.00', '55.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('416', 'Cod416', 'Artículo 416', '180.00', '40.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('417', 'Cod417', 'Artículo 417', '220.00', '45.40', '', 'AC', '2', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('418', 'Cod418', 'Artículo 418', '150.00', '40.00', '', 'AC', '1', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('419', 'Cod419', 'Artículo 419', '40.00', '64.90', '', 'AC', '3', '4', '43', '30.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('420', 'Cod420', 'Artículo 420', '160.00', '40.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('421', 'Cod421', 'Artículo 421', '280.00', '50.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('422', 'Cod422', 'Artículo 422', '40.00', '100.00', '', 'AC', '5', '4', '43', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('423', 'Cod423', 'Artículo 423', '90.00', '50.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('424', 'Cod424', 'Artículo 424', '95.00', '75.00', '', 'AC', '1', '4', '43', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('425', 'Cod425', 'Artículo 425', '50.00', '100.00', '', 'AC', '3', '4', '43', '50.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('426', 'Cod426', 'Artículo 426', '170.00', '65.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('427', 'Cod427', 'Artículo 427', '150.00', '50.00', '', 'AC', '1', '4', '48', '30.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('428', 'Cod428', 'Artículo 428', '200.00', '90.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('429', 'Cod429', 'Artículo 429', '40.00', '50.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('430', 'Cod430', 'Artículo 430', '67.00', '50.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('431', 'Cod431', 'Artículo 431', '20.00', '150.00', '', 'AC', '1', '4', '43', '50.00', '', '\0', '13');
INSERT INTO `articles` VALUES ('432', 'Cod432', 'Artículo 432', '1.00', '100.00', '', 'AC', '3', '4', '8', '50.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('433', 'Cod433', 'Artículo 433', '3.57', '80.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '5');
INSERT INTO `articles` VALUES ('434', 'Cod434', 'Artículo 434', '5.45', '40.00', '\0', 'AC', '1', '4', '43', '30.00', '\0', '\0', '41');
INSERT INTO `articles` VALUES ('435', 'Cod435', 'Artículo 435', '3.90', '50.00', '', 'AC', '1', '4', '43', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('437', 'Cod437', 'Artículo 437', '125.20', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('438', 'Cod438', 'Artículo 438', '41.55', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('439', 'Cod439', 'Artículo 439', '3.57', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('440', 'Cod440', 'Artículo 440', '421.20', '40.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('441', 'Cod441', 'Artículo 441', '221.50', '40.00', '', 'AC', '5', '4', '7', '30.00', '', '\0', '32');
INSERT INTO `articles` VALUES ('442', 'Cod442', 'Artículo 442', '90.06', '40.00', '', 'AC', '1', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('443', 'Cod443', 'Artículo 443', '37.60', '50.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('444', 'Cod444', 'Artículo 444', '132.60', '51.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('445', 'Cod445', 'Artículo 445', '40.00', '80.00', '\0', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('446', 'Cod446', 'Artículo 446', '60.00', '55.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('447', 'Cod447', 'Artículo 447', '25.00', '100.00', '', 'AC', '20', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('448', 'Cod448', 'Artículo 448', '20.00', '100.00', '', 'AC', '0', '4', '32', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('449', 'Cod449', 'Artículo 449', '162.00', '85.20', '', 'AC', '5', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('450', 'Cod450', 'Artículo 450', '147.90', '103.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('451', 'Cod451', 'Artículo 451', '165.24', '81.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('452', 'Cod452', 'Artículo 452', '187.00', '98.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('453', 'Cod453', 'Artículo 453', '31.00', '198.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('454', 'Cod454', 'Artículo 454', '29.78', '202.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('455', 'Cod455', 'Artículo 455', '37.59', '140.00', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('456', 'Cod456', 'Artículo 456', '37.59', '140.00', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('457', 'Cod457', 'Artículo 457', '37.78', '138.00', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('458', 'Cod458', 'Artículo 458', '32.78', '185.00', '', 'AC', '4', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('459', 'Cod459', 'Artículo 459', '37.15', '142.50', '', 'AC', '4', '4', '32', '45.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('460', 'Cod460', 'Artículo 460', '37.15', '142.50', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('461', 'Cod461', 'Artículo 461', '38.24', '136.00', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('462', 'Cod462', 'Artículo 462', '31.62', '185.00', '', 'AC', '4', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('463', 'Cod463', 'Artículo 463', '18.00', '92.61', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('464', 'Cod464', 'Artículo 464', '14.27', '251.00', '', 'AC', '5', '4', '43', '50.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('465', 'Cod465', 'Artículo 465', '10.91', '360.00', '', 'AC', '5', '4', '43', '150.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('467', 'Cod467', 'Artículo 467', '378.42', '112.00', '', 'AC', '1', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('468', 'Cod468', 'Artículo 468', '54.63', '179.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('469', 'Cod469', 'Artículo 469', '93.45', '175.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('470', 'Cod470', 'Artículo 470', '94.86', '169.00', '', 'AC', '2', '4', '32', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('471', 'Cod471', 'Artículo 471', '2.75', '150.00', '', 'AC', '5', '4', '32', '65.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('472', 'Cod472', 'Artículo 472', '54.62', '190.00', '', 'AC', '4', '4', '32', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('473', 'Cod473', 'Artículo 473', '5.10', '120.00', '', 'AC', '2', '4', '32', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('474', 'Cod474', 'Artículo 474', '92.87', '100.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('475', 'Cod475', 'Artículo 475', '5.50', '100.00', '', 'AC', '4', '4', '32', '45.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('476', 'Cod476', 'Artículo 476', '9.55', '80.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('477', 'Cod477', 'Artículo 477', '187.68', '80.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('478', 'Cod478', 'Artículo 478', '336.00', '100.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('479', 'Cod479', 'Artículo 479', '13.83', '50.00', '', 'AC', '10', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('480', 'Cod480', 'Artículo 480', '18.44', '50.00', '', 'AC', '10', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('481', 'Cod481', 'Artículo 481', '25.20', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('482', 'Cod482', 'Artículo 482', '23.05', '50.00', '', 'AC', '6', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('483', 'Cod483', 'Artículo 483', '0.50', '100.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('484', 'Cod484', 'Artículo 484', '56.13', '53.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('485', 'Cod485', 'Artículo 485', '102.44', '50.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('486', 'Cod486', 'Artículo 486', '109.46', '50.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('487', 'Cod487', 'Artículo 487', '224.54', '35.00', '', 'AC', '3', '4', '32', '20.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('488', 'Cod488', 'Artículo 488', '61.47', '50.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('489', 'Cod489', 'Artículo 489', '70.69', '55.00', '', 'AC', '4', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('490', 'Cod490', 'Artículo 490', '212.06', '50.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('491', 'Cod491', 'Artículo 491', '193.60', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('492', 'Cod492', 'Artículo 492', '199.77', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('493', 'Cod493', 'Artículo 493', '304.27', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('494', 'Cod494', 'Artículo 494', '304.27', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('495', 'Cod495', 'Artículo 495', '242.80', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('496', 'Cod496', 'Artículo 496', '273.53', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('497', 'Cod497', 'Artículo 497', '599.31', '35.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('498', 'Cod498', 'Artículo 498', '169.04', '50.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('499', 'Cod499', 'Artículo 499', '76.83', '50.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('500', 'Cod500', 'Artículo 500', '75.78', '50.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('501', 'Cod501', 'Artículo 501', '205.58', '75.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('502', 'Cod502', 'Artículo 502', '291.00', '60.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('503', 'Cod503', 'Artículo 503', '9014.38', '50.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('504', 'Cod504', 'Artículo 504', '428.67', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('505', 'Cod505', 'Artículo 505', '185.00', '55.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '19');
INSERT INTO `articles` VALUES ('506', 'Cod506', 'Artículo 506', '233.00', '35.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('507', 'Cod507', 'Artículo 507', '289.99', '36.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('508', 'Cod508', 'Artículo 508', '8.40', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('509', 'Cod509', 'Artículo 509', '149.99', '100.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('510', 'Cod510', 'Artículo 510', '2369.00', '35.00', '', 'AC', '1', '4', '32', '20.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('511', 'Cod511', 'Artículo 511', '1679.00', '35.00', '', 'AC', '1', '4', '32', '20.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('512', 'Cod512', 'Artículo 512', '100.00', '35.00', '', 'AC', '1', '4', '32', '20.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('513', 'Cod513', 'Artículo 513', '160.43', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('514', 'Cod514', 'Artículo 514', '7352.43', '40.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('515', 'Cod515', 'Artículo 515', '99.61', '40.00', '', 'AC', '1', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('516', 'Cod516', 'Artículo 516', '417.00', '65.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('517', 'Cod517', 'Artículo 517', '28.50', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('518', 'Cod518', 'Artículo 518', '278.58', '65.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('519', 'Cod519', 'Artículo 519', '112.26', '52.00', '', 'AC', '3', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('520', 'Cod520', 'Artículo 520', '19.50', '50.00', '', 'AC', '0', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('521', 'Cod521', 'Artículo 521', '14.35', '40.00', '', 'AC', '5', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('522', 'Cod522', 'Artículo 522', '84.00', '50.00', '', 'AC', '2', '4', '9', '35.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('523', 'Cod523', 'Artículo 523', '124.00', '40.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('524', 'Cod524', 'Artículo 524', '174.00', '40.00', '', 'AC', '10', '4', '32', '30.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('525', 'Cod525', 'Artículo 525', '1253.56', '45.00', '', 'AC', '0', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('526', 'Cod526', 'Artículo 526', '3908.30', '45.00', '', 'AC', '0', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('527', 'Cod527', 'Artículo 527', '3162.94', '45.00', '', 'AC', '0', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('528', 'Cod528', 'Artículo 528', '124.63', '50.00', '', 'AC', '1', '4', '48', '40.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('529', 'Cod529', 'Artículo 529', '102.85', '50.00', '', 'AC', '5', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('530', 'Cod530', 'Artículo 530', '94.08', '50.00', '', 'AC', '1', '4', '48', '40.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('531', 'Cod531', 'Artículo 531', '1558.48', '45.00', '', 'AC', '1', '4', '48', '30.00', '', '\0', '7');
INSERT INTO `articles` VALUES ('532', 'Cod532', 'Artículo 532', '200.00', '50.00', '', 'AC', '1', '4', '48', '40.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('533', 'Cod533', 'Artículo 533', '230.00', '50.00', '', 'AC', '1', '4', '48', '30.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('534', 'Cod534', 'Artículo 534', '8380.00', '45.00', '', 'AC', '1', '4', '48', '30.00', '', '\0', '74');
INSERT INTO `articles` VALUES ('535', 'Cod535', 'Artículo 535', '28.57', '50.00', '', 'AC', '2', '4', '6', '30.00', '', '\0', '25');
INSERT INTO `articles` VALUES ('536', 'Cod536', 'Artículo 536', '28.57', '60.00', '', 'AC', '2', '4', '6', '30.00', '', '\0', '25');
INSERT INTO `articles` VALUES ('537', 'Cod537', 'Artículo 537', '7.00', '100.00', '', 'AC', '2', '4', '7', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('538', 'Cod538', 'Artículo 538', '4.00', '100.00', '', 'AC', '2', '4', '39', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('539', 'Cod539', 'Artículo 539', '27.77', '80.00', '', 'AC', '2', '4', '20', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('540', 'Cod540', 'Artículo 540', '18.00', '60.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('541', 'Cod541', 'Artículo 541', '43.00', '30.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('542', 'Cod542', 'Artículo 542', '2.80', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('543', 'Cod543', 'Artículo 543', '18.55', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('544', 'Cod544', 'Artículo 544', '21.78', '50.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('545', 'Cod545', 'Artículo 545', '9.68', '50.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('546', 'Cod546', 'Artículo 546', '7.87', '50.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('547', 'Cod547', 'Artículo 547', '1.33', '100.00', '', 'AC', '10', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('548', 'Cod548', 'Artículo 548', '17.80', '50.00', '', 'AC', '2', '4', '32', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('549', 'Cod549', 'Artículo 549', '2.85', '130.00', '', 'AC', '2', '4', '32', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('550', 'Cod550', 'Artículo 550', '4.00', '70.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('551', 'Cod551', 'Artículo 551', '4.50', '70.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('552', 'Cod552', 'Artículo 552', '2.50', '200.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('553', 'Cod553', 'Artículo 553', '28.00', '70.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('554', 'Cod554', 'Artículo 554', '13.80', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('555', 'Cod555', 'Artículo 555', '20.00', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('556', 'Cod556', 'Artículo 556', '15.50', '70.00', '', 'AC', '0', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('557', 'Cod557', 'Artículo 557', '59.00', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('558', 'Cod558', 'Artículo 558', '13.75', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('559', 'Cod559', 'Artículo 559', '13.75', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('560', 'Cod560', 'Artículo 560', '14.64', '70.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('561', 'Cod561', 'Artículo 561', '6.92', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('563', 'Cod563', 'Artículo 563', '3.89', '70.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('564', 'Cod564', 'Artículo 564', '3.85', '80.00', '', 'AC', '2', '4', '32', '35.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('565', 'Cod565', 'Artículo 565', '3.40', '100.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('566', 'Cod566', 'Artículo 566', '3.40', '100.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('567', 'Cod567', 'Artículo 567', '1.60', '80.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('568', 'Cod568', 'Artículo 568', '2.40', '80.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('569', 'Cod569', 'Artículo 569', '60.00', '50.00', '', 'AC', '0', '4', '9', '30.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('570', 'Cod570', 'Artículo 570', '6.63', '60.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('571', 'Cod571', 'Artículo 571', '8.30', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('572', 'Cod572', 'Artículo 572', '24.20', '50.00', '', 'AC', '0', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('573', 'Cod573', 'Artículo 573', '13.91', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('574', 'Cod574', 'Artículo 574', '16.29', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('575', 'Cod575', 'Artículo 575', '9.89', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('576', 'Cod576', 'Artículo 576', '12.10', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('577', 'Cod577', 'Artículo 577', '14.52', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('578', 'Cod578', 'Artículo 578', '11.13', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('579', 'Cod579', 'Artículo 579', '5.45', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('580', 'Cod580', 'Artículo 580', '5.81', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('581', 'Cod581', 'Artículo 581', '6.78', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('582', 'Cod582', 'Artículo 582', '10.41', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('583', 'Cod583', 'Artículo 583', '5.32', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('584', 'Cod584', 'Artículo 584', '5.75', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('585', 'Cod585', 'Artículo 585', '5.75', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('586', 'Cod586', 'Artículo 586', '4.36', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('587', 'Cod587', 'Artículo 587', '3.39', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('588', 'Cod588', 'Artículo 588', '4.84', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('589', 'Cod589', 'Artículo 589', '9.98', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('590', 'Cod590', 'Artículo 590', '9.07', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('591', 'Cod591', 'Artículo 591', '15.46', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('592', 'Cod592', 'Artículo 592', '141.57', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('593', 'Cod593', 'Artículo 593', '1.45', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('594', 'Cod594', 'Artículo 594', '9.38', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('595', 'Cod595', 'Artículo 595', '18.00', '50.00', '', 'AC', '2', '4', '7', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('596', 'Cod596', 'Artículo 596', '47.08', '157.00', '', 'AC', '0', '4', '13', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('598', 'Cod598', 'Artículo 598', '32.67', '250.00', '', 'AC', '2', '4', '13', '50.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('599', 'Cod599', 'Artículo 599', '54.99', '100.00', '\0', 'AC', '10', '4', '9', '50.00', '', '\0', '16');
INSERT INTO `articles` VALUES ('600', 'Cod600', 'Artículo 600', '1.90', '260.00', '', 'AC', '2', '4', '6', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('601', 'Cod601', 'Artículo 601', '21.00', '100.00', '', 'AC', '2', '4', '50', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('602', 'Cod602', 'Artículo 602', '1.50', '200.00', '', 'AC', '2', '4', '6', '60.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('603', 'Cod603', 'Artículo 603', '6.50', '100.00', '', 'AC', '2', '4', '50', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('604', 'Cod604', 'Artículo 604', '16.14', '100.00', '', 'AC', '2', '4', '50', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('605', 'Cod605', 'Artículo 605', '28.60', '100.00', '', 'AC', '2', '4', '50', '50.00', '', '\0', '14');
INSERT INTO `articles` VALUES ('606', 'Cod606', 'Artículo 606', '1.00', '200.00', '', 'AC', '10', '4', '6', '80.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('607', 'Cod607', 'Artículo 607', '0.70', '300.00', '', 'AC', '10', '4', '6', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('608', 'Cod608', 'Artículo 608', '0.50', '300.00', '', 'AC', '10', '4', '6', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('609', 'Cod609', 'Artículo 609', '1.70', '120.00', '', 'AC', '2', '4', '6', '65.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('610', 'Cod610', 'Artículo 610', '1.53', '150.00', '', 'AC', '10', '4', '6', '65.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('611', 'Cod611', 'Artículo 611', '0.80', '250.00', '', 'AC', '10', '4', '6', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('612', 'Cod612', 'Artículo 612', '2.00', '100.00', '', 'AC', '10', '4', '6', '40.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('613', 'Cod613', 'Artículo 613', '1.60', '150.00', '', 'AC', '2', '4', '6', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('614', 'Cod614', 'Artículo 614', '2.70', '160.00', '', 'AC', '2', '4', '6', '60.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('615', 'Cod615', 'Artículo 615', '2.10', '150.00', '', 'AC', '10', '4', '6', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('616', 'Cod616', 'Artículo 616', '56.00', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('617', 'Cod617', 'Artículo 617', '15.00', '100.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('618', 'Cod618', 'Artículo 618', '1.00', '150.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('619', 'Cod619', 'Artículo 619', '3.03', '135.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('620', 'Cod620', 'Artículo 620', '3.50', '100.00', '', 'AC', '2', '4', '7', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('621', 'Cod621', 'Artículo 621', '123.00', '70.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('622', 'Cod622', 'Artículo 622', '4.00', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('623', 'Cod623', 'Artículo 623', '0.40', '250.00', '', 'AC', '2', '4', '6', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('624', 'Cod624', 'Artículo 624', '7.46', '100.00', '', 'AC', '2', '4', '39', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('625', 'Cod625', 'Artículo 625', '2.46', '190.00', '', 'AC', '2', '4', '20', '50.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('626', 'Cod626', 'Artículo 626', '48.18', '100.00', '', 'AC', '2', '4', '2', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('627', 'Cod627', 'Artículo 627', '10.53', '100.00', '', 'AC', '2', '4', '48', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('628', 'Cod628', 'Artículo 628', '15.32', '100.00', '', 'AC', '2', '4', '2', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('629', 'Cod629', 'Artículo 629', '19.96', '100.00', '', 'AC', '2', '4', '2', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('630', 'Cod630', 'Artículo 630', '7.87', '100.00', '', 'AC', '2', '4', '2', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('631', 'Cod631', 'Artículo 631', '12.21', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('632', 'Cod632', 'Artículo 632', '1.00', '160.00', '', 'AC', '5', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('633', 'Cod633', 'Artículo 633', '47.19', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('634', 'Cod634', 'Artículo 634', '1.45', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('635', 'Cod635', 'Artículo 635', '8.95', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('636', 'Cod636', 'Artículo 636', '9.82', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('637', 'Cod637', 'Artículo 637', '6.53', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('638', 'Cod638', 'Artículo 638', '21.78', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('639', 'Cod639', 'Artículo 639', '27.83', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('640', 'Cod640', 'Artículo 640', '26.45', '50.00', '', 'AC', '2', '4', '3', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('641', 'Cod641', 'Artículo 641', '9.84', '50.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('642', 'Cod642', 'Artículo 642', '11.35', '50.00', '', 'AC', '1', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('643', 'Cod643', 'Artículo 643', '12.19', '50.00', '', 'AC', '1', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('644', 'Cod644', 'Artículo 644', '17.64', '50.00', '', 'AC', '1', '4', '19', '30.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('645', 'Cod645', 'Artículo 645', '33.83', '50.00', '', 'AC', '2', '4', '9', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('646', 'Cod646', 'Artículo 646', '0.63', '50.00', '', 'AC', '2', '4', '8', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('647', 'Cod647', 'Artículo 647', '4.00', '100.00', '', 'AC', '1', '4', '8', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('648', 'Cod648', 'Artículo 648', '171.00', '50.00', '', 'AC', '2', '4', '9', '35.00', '', '\0', '79');
INSERT INTO `articles` VALUES ('649', 'Cod649', 'Artículo 649', '118.00', '50.00', '', 'AC', '2', '4', '9', '35.00', '', '\0', '79');
INSERT INTO `articles` VALUES ('650', 'Cod650', 'Artículo 650', '213.00', '50.00', '', 'AC', '1', '4', '9', '35.00', '', '\0', '79');
INSERT INTO `articles` VALUES ('651', 'Cod651', 'Artículo 651', '22.00', '50.00', '', 'AC', '2', '4', '8', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('652', 'Cod652', 'Artículo 652', '84.00', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('653', 'Cod653', 'Artículo 653', '3.50', '100.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('654', 'Cod654', 'Artículo 654', '40.00', '60.00', '', 'AC', '2', '4', '2', '40.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('655', 'Cod655', 'Artículo 655', '135.00', '50.00', '', 'AC', '1', '4', '9', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('656', 'Cod656', 'Artículo 656', '0.48', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('657', 'Cod657', 'Artículo 657', '0.48', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('658', 'Cod658', 'Artículo 658', '0.48', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('659', 'Cod659', 'Artículo 659', '1.13', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('660', 'Cod660', 'Artículo 660', '0.76', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('661', 'Cod661', 'Artículo 661', '0.25', '150.00', '', 'AC', '2', '4', '5', '50.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('662', 'Cod662', 'Artículo 662', '0.44', '100.00', '', 'AC', '2', '4', '5', '50.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('663', 'Cod663', 'Artículo 663', '19.34', '35.00', '', 'AC', '2', '4', '7', '35.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('664', 'Cod664', 'Artículo 664', '8.06', '40.00', '', 'AC', '2', '4', '7', '35.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('665', 'Cod665', 'Artículo 665', '43.57', '40.00', '', 'AC', '2', '4', '7', '35.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('666', 'Cod666', 'Artículo 666', '132.00', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('667', 'Cod667', 'Artículo 667', '7.46', '50.00', '', 'AC', '2', '4', '19', '40.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('668', 'Cod668', 'Artículo 668', '8.85', '60.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('669', 'Cod669', 'Artículo 669', '74.00', '50.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('670', 'Cod670', 'Artículo 670', '29.00', '90.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('671', 'Cod671', 'Artículo 671', '9.80', '40.00', '', 'AC', '2', '4', '43', '30.00', '', '\0', '42');
INSERT INTO `articles` VALUES ('672', 'Cod672', 'Artículo 672', '132.00', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('673', 'Cod673', 'Artículo 673', '7.04', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('674', 'Cod674', 'Artículo 674', '5.92', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('675', 'Cod675', 'Artículo 675', '7.56', '50.00', '', 'AC', '2', '4', '4', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('676', 'Cod676', 'Artículo 676', '13.78', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('677', 'Cod677', 'Artículo 677', '7.04', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('678', 'Cod678', 'Artículo 678', '7.04', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('679', 'Cod679', 'Artículo 679', '12.66', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '31');
INSERT INTO `articles` VALUES ('680', 'Cod680', 'Artículo 680', '1.40', '100.00', '', 'AC', '2', '4', '4', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('681', 'Cod681', 'Artículo 681', '20.44', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('682', 'Cod682', 'Artículo 682', '195.00', '50.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('683', 'Cod683', 'Artículo 683', '57.00', '50.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('684', 'Cod684', 'Artículo 684', '99.00', '50.00', '', 'AC', '2', '4', '48', '40.00', '', '\0', '4');
INSERT INTO `articles` VALUES ('685', 'Cod685', 'Artículo 685', '285.00', '50.00', '', 'AC', '1', '4', '9', '40.00', '', '\0', '41');
INSERT INTO `articles` VALUES ('686', 'Cod686', 'Artículo 686', '180.00', '50.00', '', 'AC', '1', '4', '9', '40.00', '', '\0', '41');
INSERT INTO `articles` VALUES ('687', 'Cod687', 'Artículo 687', '62.00', '50.00', '', 'AC', '2', '4', '48', '40.00', '', '\0', '18');
INSERT INTO `articles` VALUES ('688', 'Cod688', 'Artículo 688', '88.00', '50.00', '', 'AC', '2', '4', '48', '40.00', '', '\0', '18');
INSERT INTO `articles` VALUES ('689', 'Cod689', 'Artículo 689', '57.97', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('690', 'Cod690', 'Artículo 690', '57.14', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('691', 'Cod691', 'Artículo 691', '6.13', '50.00', '', 'AC', '2', '4', '17', '40.00', '', '\0', '62');
INSERT INTO `articles` VALUES ('692', 'Cod692', 'Artículo 692', '14.52', '50.00', '', 'AC', '2', '4', '17', '40.00', '', '\0', '62');
INSERT INTO `articles` VALUES ('693', 'Cod693', 'Artículo 693', '73.81', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('694', 'Cod694', 'Artículo 694', '85.21', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('695', 'Cod695', 'Artículo 695', '1.33', '50.00', '', 'AC', '2', '4', '48', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('696', 'Cod696', 'Artículo 696', '77.00', '50.00', '', 'AC', '1', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('697', 'Cod697', 'Artículo 697', '10.78', '80.00', '', 'AC', '2', '4', '2', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('698', 'Cod698', 'Artículo 698', '10.32', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('699', 'Cod699', 'Artículo 699', '11.82', '80.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('700', 'Cod700', 'Artículo 700', '1.84', '80.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '15');
INSERT INTO `articles` VALUES ('701', 'Cod701', 'Artículo 701', '15.00', '80.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('702', 'Cod702', 'Artículo 702', '13.85', '80.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('703', 'Cod703', 'Artículo 703', '13.85', '80.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('704', 'Cod704', 'Artículo 704', '6.78', '80.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('705', 'Cod705', 'Artículo 705', '6.00', '80.00', '', 'AC', '2', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('706', 'Cod706', 'Artículo 706', '34.57', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '10');
INSERT INTO `articles` VALUES ('707', 'Cod707', 'Artículo 707', '4.84', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('708', 'Cod708', 'Artículo 708', '2.78', '100.00', '', 'AC', '2', '4', '9', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('709', 'Cod709', 'Artículo 709', '1.11', '150.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('710', 'Cod710', 'Artículo 710', '3.11', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '57');
INSERT INTO `articles` VALUES ('711', 'Cod711', 'Artículo 711', '2.50', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('712', 'Cod712', 'Artículo 712', '0.78', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('713', 'Cod713', 'Artículo 713', '4.25', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('714', 'Cod714', 'Artículo 714', '4.10', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '51');
INSERT INTO `articles` VALUES ('715', 'Cod715', 'Artículo 715', '2.30', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('716', 'Cod716', 'Artículo 716', '20.25', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '26');
INSERT INTO `articles` VALUES ('717', 'Cod717', 'Artículo 717', '10.35', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('718', 'Cod718', 'Artículo 718', '7.90', '100.00', '', 'AC', '2', '4', '7', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('719', 'Cod719', 'Artículo 719', '8.40', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('720', 'Cod720', 'Artículo 720', '4.85', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('721', 'Cod721', 'Artículo 721', '12.00', '100.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('722', 'Cod722', 'Artículo 722', '0.87', '100.00', '', 'AC', '2', '4', '6', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('723', 'Cod723', 'Artículo 723', '0.50', '100.00', '', 'AC', '10', '4', '12', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('724', 'Cod724', 'Artículo 724', '15.00', '50.00', '', 'AC', '2', '4', '44', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('725', 'Cod725', 'Artículo 725', '22.50', '55.00', '', 'AC', '2', '4', '50', '40.00', '', '\0', '80');
INSERT INTO `articles` VALUES ('726', 'Cod726', 'Artículo 726', '0.45', '60.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('727', 'Cod727', 'Artículo 727', '0.40', '80.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('728', 'Cod728', 'Artículo 728', '0.40', '80.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('729', 'Cod729', 'Artículo 729', '0.40', '80.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('730', 'Cod730', 'Artículo 730', '0.40', '80.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('731', 'Cod731', 'Artículo 731', '0.80', '80.00', '', 'AC', '10', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('732', 'Cod732', 'Artículo 732', '0.06', '150.00', '', 'AC', '2', '4', '32', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('733', 'Cod733', 'Artículo 733', '0.06', '150.00', '', 'AC', '100', '4', '32', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('734', 'Cod734', 'Artículo 734', '0.60', '100.00', '', 'AC', '10', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('735', 'Cod735', 'Artículo 735', '0.70', '100.00', '', 'AC', '20', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('736', 'Cod736', 'Artículo 736', '2.80', '100.00', '', 'AC', '2', '4', '3', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('737', 'Cod737', 'Artículo 737', '1.75', '100.00', '', 'AC', '5', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('738', 'Cod738', 'Artículo 738', '6.50', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('739', 'Cod739', 'Artículo 739', '5.00', '50.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('740', 'Cod740', 'Artículo 740', '0.57', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('741', 'Cod741', 'Artículo 741', '2.35', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('742', 'Cod742', 'Artículo 742', '4.28', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('743', 'Cod743', 'Artículo 743', '0.13', '100.00', '', 'AC', '2', '4', '32', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('744', 'Cod744', 'Artículo 744', '11.43', '60.00', '', 'AC', '10', '4', '3', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('745', 'Cod745', 'Artículo 745', '0.35', '60.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('746', 'Cod746', 'Artículo 746', '8.17', '50.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('747', 'Cod747', 'Artículo 747', '5.26', '50.00', '', 'AC', '5', '4', '9', '40.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('748', 'Cod748', 'Artículo 748', '0.88', '80.00', '', 'AC', '10', '4', '9', '50.00', '', '\0', '23');
INSERT INTO `articles` VALUES ('749', 'Cod749', 'Artículo 749', '2.67', '120.00', '', 'AC', '2', '4', '9', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('750', 'Cod750', 'Artículo 750', '1.89', '130.00', '', 'AC', '5', '4', '35', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('751', 'Cod751', 'Artículo 751', '1.89', '130.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('752', 'Cod752', 'Artículo 752', '2.90', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('753', 'Cod753', 'Artículo 753', '7.70', '70.00', '', 'AC', '2', '4', '13', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('754', 'Cod754', 'Artículo 754', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('755', 'Cod755', 'Artículo 755', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('756', 'Cod756', 'Artículo 756', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('757', 'Cod757', 'Artículo 757', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('758', 'Cod758', 'Artículo 758', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('759', 'Cod759', 'Artículo 759', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('760', 'Cod760', 'Artículo 760', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('761', 'Cod761', 'Artículo 761', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('762', 'Cod762', 'Artículo 762', '3.50', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('763', 'Cod763', 'Artículo 763', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('764', 'Cod764', 'Artículo 764', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('765', 'Cod765', 'Artículo 765', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('766', 'Cod766', 'Artículo 766', '3.60', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('767', 'Cod767', 'Artículo 767', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('768', 'Cod768', 'Artículo 768', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('769', 'Cod769', 'Artículo 769', '4.60', '120.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('770', 'Cod770', 'Artículo 770', '3.60', '150.00', '', 'AC', '2', '4', '13', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('771', 'Cod771', 'Artículo 771', '3.93', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('772', 'Cod772', 'Artículo 772', '6.66', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('773', 'Cod773', 'Artículo 773', '38.12', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('774', 'Cod774', 'Artículo 774', '1.51', '70.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('775', 'Cod775', 'Artículo 775', '2.01', '65.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('776', 'Cod776', 'Artículo 776', '2.01', '70.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('777', 'Cod777', 'Artículo 777', '0.93', '50.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('778', 'Cod778', 'Artículo 778', '1.13', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('779', 'Cod779', 'Artículo 779', '2.45', '100.00', '', 'AC', '1', '4', '49', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('780', 'Cod780', 'Artículo 780', '2.96', '100.00', '', 'AC', '1', '4', '49', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('781', 'Cod781', 'Artículo 781', '1.51', '150.00', '', 'AC', '1', '4', '49', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('782', 'Cod782', 'Artículo 782', '2.21', '140.00', '', 'AC', '1', '4', '49', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('783', 'Cod783', 'Artículo 783', '1.53', '70.00', '', 'AC', '1', '4', '49', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('784', 'Cod784', 'Artículo 784', '2.35', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('785', 'Cod785', 'Artículo 785', '2.83', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('786', 'Cod786', 'Artículo 786', '3.63', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('787', 'Cod787', 'Artículo 787', '5.52', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('788', 'Cod788', 'Artículo 788', '6.05', '65.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('789', 'Cod789', 'Artículo 789', '5.01', '60.00', '', 'AC', '1', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('790', 'Cod790', 'Artículo 790', '4.94', '75.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('791', 'Cod791', 'Artículo 791', '7.02', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('792', 'Cod792', 'Artículo 792', '7.02', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('793', 'Cod793', 'Artículo 793', '8.77', '65.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('794', 'Cod794', 'Artículo 794', '2.93', '70.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('795', 'Cod795', 'Artículo 795', '4.78', '100.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('796', 'Cod796', 'Artículo 796', '8.06', '75.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('797', 'Cod797', 'Artículo 797', '14.14', '100.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('798', 'Cod798', 'Artículo 798', '7.79', '100.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('800', 'Cod800', 'Artículo 800', '55.83', '75.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('801', 'Cod801', 'Artículo 801', '39.06', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('802', 'Cod802', 'Artículo 802', '4.84', '70.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('803', 'Cod803', 'Artículo 803', '24.37', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('804', 'Cod804', 'Artículo 804', '23.03', '90.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('805', 'Cod805', 'Artículo 805', '0.91', '100.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('806', 'Cod806', 'Artículo 806', '2.25', '80.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('807', 'Cod807', 'Artículo 807', '2.25', '85.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('808', 'Cod808', 'Artículo 808', '6.13', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('809', 'Cod809', 'Artículo 809', '6.74', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('810', 'Cod810', 'Artículo 810', '168.19', '40.00', '', 'AC', '1', '4', '7', '35.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('811', 'Cod811', 'Artículo 811', '72.10', '50.00', '', 'AC', '1', '4', '51', '40.00', '', '\0', '82');
INSERT INTO `articles` VALUES ('812', 'Cod812', 'Artículo 812', '16.10', '90.00', '', 'AC', '2', '4', '9', '60.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('813', 'Cod813', 'Artículo 813', '11.30', '90.00', '', 'AC', '1', '4', '32', '50.00', '', '\0', '82');
INSERT INTO `articles` VALUES ('814', 'Cod814', 'Artículo 814', '3.90', '50.00', '', 'AC', '20', '4', '9', '40.00', '', '\0', '63');
INSERT INTO `articles` VALUES ('815', 'Cod815', 'Artículo 815', '4.80', '50.00', '', 'AC', '2', '4', '9', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('816', 'Cod816', 'Artículo 816', '6.47', '40.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('817', 'Cod817', 'Artículo 817', '6.74', '45.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('818', 'Cod818', 'Artículo 818', '7.82', '45.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('819', 'Cod819', 'Artículo 819', '7.82', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('820', 'Cod820', 'Artículo 820', '7.21', '60.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('821', 'Cod821', 'Artículo 821', '25.11', '55.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('822', 'Cod822', 'Artículo 822', '1.32', '75.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('823', 'Cod823', 'Artículo 823', '0.19', '400.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('824', 'Cod824', 'Artículo 824', '0.19', '400.00', '', 'AC', '1', '4', '49', '200.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('825', 'Cod825', 'Artículo 825', '0.24', '400.00', '', 'AC', '1', '4', '49', '200.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('826', 'Cod826', 'Artículo 826', '0.24', '400.00', '', 'AC', '1', '4', '49', '200.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('827', 'Cod827', 'Artículo 827', '0.62', '160.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('828', 'Cod828', 'Artículo 828', '0.62', '175.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('829', 'Cod829', 'Artículo 829', '0.47', '200.00', '', 'AC', '1', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('831', 'Cod831', 'Artículo 831', '0.47', '200.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('832', 'Cod832', 'Artículo 832', '0.47', '200.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('833', 'Cod833', 'Artículo 833', '0.67', '150.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('834', 'Cod834', 'Artículo 834', '0.67', '150.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('835', 'Cod835', 'Artículo 835', '0.62', '150.00', '', 'AC', '2', '4', '49', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('836', 'Cod836', 'Artículo 836', '0.77', '100.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('837', 'Cod837', 'Artículo 837', '0.77', '100.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('838', 'Cod838', 'Artículo 838', '0.60', '150.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('839', 'Cod839', 'Artículo 839', '0.83', '100.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('840', 'Cod840', 'Artículo 840', '0.62', '150.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('841', 'Cod841', 'Artículo 841', '0.74', '100.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('842', 'Cod842', 'Artículo 842', '52.04', '50.00', '', 'AC', '1', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('843', 'Cod843', 'Artículo 843', '3.69', '250.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('845', 'Cod845', 'Artículo 845', '5.09', '150.00', '', 'AC', '1', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('846', 'Cod846', 'Artículo 846', '1.45', '100.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('847', 'Cod847', 'Artículo 847', '0.65', '150.00', '', 'AC', '2', '4', '49', '80.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('848', 'Cod848', 'Artículo 848', '10.70', '50.00', '', 'AC', '2', '4', '18', '30.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('849', 'Cod849', 'Artículo 849', '84.60', '50.00', '', 'AC', '1', '4', '44', '30.00', '', '\0', '55');
INSERT INTO `articles` VALUES ('850', 'Cod850', 'Artículo 850', '59.86', '50.00', '', 'AC', '2', '4', '49', '30.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('851', 'Cod851', 'Artículo 851', '3.00', '100.00', '', 'AC', '5', '4', '4', '60.00', '', '\0', '38');
INSERT INTO `articles` VALUES ('852', 'Cod852', 'Artículo 852', '4.00', '79.00', '', 'AC', '2', '4', '38', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('853', 'Cod853', 'Artículo 853', '4.00', '80.00', '', 'AC', '10', '4', '13', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('854', 'Cod854', 'Artículo 854', '46.50', '50.00', '', 'AC', '2', '4', '3', '35.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('855', 'Cod855', 'Artículo 855', '2.20', '150.00', '', 'AC', '2', '4', '47', '50.00', '', '\0', '6');
INSERT INTO `articles` VALUES ('856', 'Cod856', 'Artículo 856', '0.57', '200.00', '', 'AC', '2', '4', '32', '100.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('857', 'Cod857', 'Artículo 857', '1.80', '100.00', '', 'AC', '2', '4', '8', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('858', 'Cod858', 'Artículo 858', '6.75', '100.00', '', 'AC', '2', '4', '39', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('859', 'Cod859', 'Artículo 859', '15.00', '60.00', '', 'AC', '2', '4', '38', '50.00', '', '\0', '84');
INSERT INTO `articles` VALUES ('2504', 'Cod2504', 'Artículo 2504', '13.50', '60.00', '', 'AC', '2', '4', '9', '50.00', '', '\0', '11');
INSERT INTO `articles` VALUES ('2505', 'Cod2505', 'Artículo 2505', '0.30', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2506', 'Cod2506', 'Artículo 2506', '6.90', '50.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2507', 'Cod2507', 'Artículo 2507', '17.69', '60.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2508', 'Cod2508', 'Artículo 2508', '5.88', '60.00', '', 'AC', '2', '4', '48', '40.00', '', '\0', '64');
INSERT INTO `articles` VALUES ('2509', 'Cod2509', 'Artículo 2509', '53.24', '60.00', '', 'AC', '2', '4', '49', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2510', 'Cod2510', 'Artículo 2510', '29.30', '60.00', '', 'AC', '2', '4', '32', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2511', 'Cod2511', 'Artículo 2511', '32.75', '55.00', '', 'AC', '2', '4', '24', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2512', 'Cod2512', 'Artículo 2512', '27.58', '70.00', '', 'AC', '2', '4', '24', '50.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2513', 'Cod2513', 'Artículo 2513', '55.00', '50.00', '', 'AC', '1', '4', '9', '40.00', '', '\0', '1');
INSERT INTO `articles` VALUES ('2514', 'Cod2514', 'Artículo 2514', '3.00', '100.00', '', 'AC', '1', '4', '7', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2515', 'Cod2515', 'Artículo 2515', '10.00', '50.00', '', 'AC', '2', '4', '9', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2516', 'Cod2516', 'Artículo 2516', '4.00', '50.00', '', 'AC', '0', '4', '41', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2517', 'Cod2517', 'Artículo 2517', '14.92', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '85');
INSERT INTO `articles` VALUES ('2518', 'Cod2518', 'Artículo 2518', '17.13', '50.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '85');
INSERT INTO `articles` VALUES ('2519', 'Cod2519', 'Artículo 2519', '336.10', '40.00', '', 'AC', '2', '4', '7', '40.00', '', '\0', '86');
INSERT INTO `articles` VALUES ('2520', 'Cod2520', 'Artículo 2520', '0.45', '50.00', '', 'AC', '2', '4', '5', '40.00', '', '\0', '35');
INSERT INTO `articles` VALUES ('2521', 'Cod2521', 'Artículo 2521', '3.00', '50.00', '', 'AC', '2', '4', '44', '40.00', '', '\0', '52');
INSERT INTO `articles` VALUES ('2522', 'Cod2522', 'Artículo 2522', '16.00', '50.00', '', 'AC', '2', '4', '51', '40.00', '', '\0', '52');

-- ----------------------------
-- Table structure for cajas
-- ----------------------------
DROP TABLE IF EXISTS `cajas`;
CREATE TABLE `cajas` (
  `cajaId` int(11) NOT NULL AUTO_INCREMENT,
  `cajaApertura` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cajaCierre` datetime DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `cajaImpApertura` decimal(10,2) NOT NULL,
  `cajaImpVentas` decimal(10,2) DEFAULT NULL,
  `cajaImpRendicion` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cajaId`),
  KEY `usrId` (`usrId`) USING BTREE,
  CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`usrId`) REFERENCES `sisusers` (`usrId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cajas
-- ----------------------------
INSERT INTO `cajas` VALUES ('1', '2018-05-04 00:02:49', '2018-05-04 00:17:16', '9', '1.00', '3052.32', '10.00');
INSERT INTO `cajas` VALUES ('2', '2018-05-04 00:18:19', '2018-05-08 21:59:50', '9', '0.01', '13579.03', '0.01');
INSERT INTO `cajas` VALUES ('3', '2018-05-08 22:00:04', '2018-06-01 13:20:41', '9', '600.00', '353.83', '600.00');
INSERT INTO `cajas` VALUES ('4', '2018-06-01 13:21:45', '2018-06-01 22:46:07', '4', '850.00', '3898.16', '22.22');
INSERT INTO `cajas` VALUES ('5', '2018-06-01 22:48:15', '2018-06-05 19:19:19', '4', '10.00', '43.00', '0.01');
INSERT INTO `cajas` VALUES ('6', '2018-06-05 19:23:53', '2018-06-15 12:41:23', '4', '0.33', '0.00', '0.33');
INSERT INTO `cajas` VALUES ('7', '2018-06-15 12:42:21', '2018-06-15 12:43:05', '4', '900.00', '0.00', '900.00');
INSERT INTO `cajas` VALUES ('8', '2018-06-15 12:43:25', '2018-06-15 13:35:01', '4', '900.00', '1.00', '1000.00');
INSERT INTO `cajas` VALUES ('9', '2018-06-15 13:37:35', '2018-06-18 14:18:42', '4', '1000.00', '0.00', '10.00');
INSERT INTO `cajas` VALUES ('10', '2018-06-18 14:18:57', '2018-06-21 20:12:03', '4', '100.00', '0.00', '100.00');
INSERT INTO `cajas` VALUES ('11', '2018-06-21 20:12:19', '2018-06-29 21:17:04', '4', '1000.00', '15.00', '100.00');
INSERT INTO `cajas` VALUES ('12', '2018-06-30 09:40:03', '2018-07-05 09:47:20', '4', '800.00', '0.00', '1000.00');
INSERT INTO `cajas` VALUES ('13', '2018-07-05 09:48:09', '2018-07-06 09:33:50', '4', '2000.00', '49.50', '2049.50');
INSERT INTO `cajas` VALUES ('14', '2018-07-06 09:34:18', '2018-07-30 09:53:30', '4', '1500.00', '93.00', '93693.28');
INSERT INTO `cajas` VALUES ('15', '2018-07-30 09:54:11', null, '4', '1400.00', null, null);

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `cliId` int(11) NOT NULL AUTO_INCREMENT,
  `cliNombre` varchar(100) NOT NULL,
  `cliApellido` varchar(100) NOT NULL,
  `docId` int(11) DEFAULT NULL,
  `cliDocumento` varchar(14) DEFAULT NULL,
  `cliDomicilio` varchar(255) DEFAULT NULL,
  `cliTelefono` varchar(255) DEFAULT NULL,
  `cliMail` varchar(100) DEFAULT NULL,
  `cliEstado` varchar(2) DEFAULT NULL,
  `cliDefault` bit(1) DEFAULT b'0',
  PRIMARY KEY (`cliId`),
  UNIQUE KEY `docId` (`docId`,`cliDocumento`) USING BTREE,
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`docId`) REFERENCES `tipos_documentos` (`docId`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'Nombre', 'Apellido 1', '1', '', '', '', '', 'AC', '');
INSERT INTO `clientes` VALUES ('2', 'Nombre', 'Apellido 2', '1', '31324208', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('3', 'Nombre', 'Apellido 3', '1', '286916506', 'justo castro 4', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('4', 'Nombre', 'Apellido 4', '1', '26791993', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('5', 'Nombre', 'Apellido 5', '1', '42799255', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('6', 'Nombre', 'Apellido 6', '1', '29977604', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('7', 'Nombre', 'Apellido 7', '1', '27651456', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('8', 'Nombre', 'Apellido 8', '1', '26399329', '', '2644842816', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('9', 'Nombre', 'Apellido 9', '1', '28888888', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('10', 'Nombre', 'Apellido 10', '1', '29999999', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('11', 'Nombre', 'Apellido 11', '1', '1111', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('12', 'Nombre', 'Apellido 12', '1', '28691687', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('13', 'Nombre', 'Apellido 13', '1', '38200200', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('14', 'Nombre', 'Apellido 14', '1', '37649443', '', '2645737376', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('15', 'Nombre', 'Apellido 15', '1', '22291795', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('16', 'Nombre', 'Apellido 16', '1', '8238767', '', '', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('17', 'Nombre', 'Apellido 17', '1', '41321763', '', '2644657515', '', 'AC', '\0');
INSERT INTO `clientes` VALUES ('18', 'Nombre', 'Apellido 18', '1', '17314210', '25 de mayo y salvadoodd', '123456789', '', 'AC', '\0');

-- ----------------------------
-- Table structure for configuracion
-- ----------------------------
DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE `configuracion` (
  `validezpresupuesto` int(11) DEFAULT NULL,
  `title1` varchar(15) DEFAULT NULL,
  `title2` varchar(15) DEFAULT NULL,
  `cotizacionDolar` decimal(10,2) DEFAULT '1.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configuracion
-- ----------------------------
INSERT INTO `configuracion` VALUES ('5', 'G & G', ' ', '28.00');

-- ----------------------------
-- Table structure for cuentacorrientecliente
-- ----------------------------
DROP TABLE IF EXISTS `cuentacorrientecliente`;
CREATE TABLE `cuentacorrientecliente` (
  `cctepId` int(11) NOT NULL AUTO_INCREMENT,
  `cctepConcepto` varchar(50) NOT NULL,
  `cctepRef` int(11) DEFAULT NULL,
  `cctepTipo` varchar(2) NOT NULL,
  `cctepDebe` decimal(14,2) DEFAULT NULL,
  `cctepHaber` decimal(14,2) DEFAULT NULL,
  `cctepFecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cliId` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `cajaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cctepId`),
  KEY `cliId` (`cliId`) USING BTREE,
  KEY `usrId` (`usrId`) USING BTREE,
  KEY `cajaId` (`cajaId`),
  CONSTRAINT `cuentacorrientecliente_ibfk_1` FOREIGN KEY (`cliId`) REFERENCES `clientes` (`cliId`) ON UPDATE CASCADE,
  CONSTRAINT `cuentacorrientecliente_ibfk_2` FOREIGN KEY (`usrId`) REFERENCES `sisusers` (`usrId`) ON UPDATE CASCADE,
  CONSTRAINT `cuentacorrientecliente_ibfk_3` FOREIGN KEY (`cajaId`) REFERENCES `cajas` (`cajaId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cuentacorrientecliente
-- ----------------------------
INSERT INTO `cuentacorrientecliente` VALUES ('1', 'Venta: 14', '14', 'VN', '68.00', null, '2018-04-12 14:17:25', '1', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('2', 'Venta: 15', '15', 'VN', '300.00', null, '2018-04-13 17:32:41', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('3', 'Venta: 15', '15', 'VN', '300.00', null, '2018-04-13 17:32:41', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('4', 'Venta: 16', '16', 'VN', '238.00', null, '2018-04-13 17:45:16', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('5', 'pago', null, 'MN', '0.00', '500.00', '2018-04-17 20:11:15', '2', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('6', 'pago', null, 'MN', '0.00', '150.00', '2018-04-17 20:27:30', '2', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('7', 'prestamo', null, 'MN', '500.00', '0.00', '2018-04-17 20:28:07', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('8', 'pago recibo 12132', null, 'MN', '0.00', '400.00', '2018-04-17 20:50:01', '2', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('9', 'prestam adnansdasd', null, 'MN', '1000.00', '0.00', '2018-04-17 20:50:36', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('10', 'sdfsdf', null, 'MN', '0.00', '2000.00', '2018-04-17 20:51:24', '2', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('11', 'xgdgdgf', null, 'MN', '3000.00', '0.00', '2018-04-17 20:51:59', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('12', 'interes', null, 'MN', '700.00', '0.00', '2018-04-17 20:52:22', '2', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('13', 'Venta: 31', '31', 'VN', '246.00', null, '2018-04-18 17:23:40', '1', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('14', 'Venta: 35', '35', 'VN', '246.00', null, '2018-04-18 17:25:37', '1', '4', null);
INSERT INTO `cuentacorrientecliente` VALUES ('15', 'Venta: 36', '36', 'VN', '246.00', null, '2018-04-18 17:34:18', '1', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('16', 'Venta: 37', '37', 'VN', '246.00', null, '2018-04-18 17:35:11', '1', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('17', 'Venta: 38', '38', 'VN', '246.00', null, '2018-04-18 17:35:54', '1', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('18', 'Venta: 41', '41', 'VN', '246.00', null, '2018-04-18 17:36:54', '1', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('19', 'Venta: 47', '47', 'VN', '272.65', null, '2018-04-18 17:50:01', '1', '4', '1');
INSERT INTO `cuentacorrientecliente` VALUES ('20', 'pago adelantado', null, 'MN', '0.00', '600.00', '2018-05-02 16:34:34', '6', '4', '5');
INSERT INTO `cuentacorrientecliente` VALUES ('21', 'Venta: 72', '72', 'VN', '60.00', null, '2018-05-03 21:39:48', '2', '9', '2');
INSERT INTO `cuentacorrientecliente` VALUES ('22', 'Cancelar', null, 'MN', '0.00', '3048.00', '2018-05-03 21:40:46', '2', '9', '2');
INSERT INTO `cuentacorrientecliente` VALUES ('23', 'Venta: 73', '73', 'VN', '202.50', null, '2018-05-03 21:41:32', '2', '9', '2');
INSERT INTO `cuentacorrientecliente` VALUES ('24', 'Venta: 86', '86', 'VN', '153.84', null, '2018-05-08 19:03:11', '3', '9', '3');
INSERT INTO `cuentacorrientecliente` VALUES ('25', 'Venta: 86', '86', 'VN', '153.84', null, '2018-05-08 19:03:11', '3', '9', '3');
INSERT INTO `cuentacorrientecliente` VALUES ('26', 'entrega a cuenta', null, 'MN', '0.00', '58.00', '2018-05-08 19:03:58', '3', '9', '3');
INSERT INTO `cuentacorrientecliente` VALUES ('27', 'Venta: 97', '97', 'VN', '28688.00', null, '2018-06-01 20:25:10', '1', '4', '5');
INSERT INTO `cuentacorrientecliente` VALUES ('28', 'Venta: 98', '98', 'VN', '11475.20', null, '2018-06-01 20:28:15', '2', '4', '5');
INSERT INTO `cuentacorrientecliente` VALUES ('29', 'Venta: 99', '99', 'VN', '2868.80', null, '2018-06-01 20:33:16', '2', '4', '5');
INSERT INTO `cuentacorrientecliente` VALUES ('30', '-1', '111', 'VN', '1203.90', null, '2018-07-06 21:54:32', '5', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('31', 'Venta: 112', '112', 'VN', '2868.58', null, '2018-07-06 22:00:36', '6', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('32', 'CONCELA', null, 'MN', '0.00', '2268.58', '2018-07-06 22:01:28', '6', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('33', 'entrega x saldo estereo pioneer', null, 'MN', '0.00', '600.00', '2018-07-14 22:14:54', '5', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('34', 'Venta: 118', '118', 'VN', '1420.86', null, '2018-07-19 12:16:31', '8', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('35', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('36', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('37', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('38', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('39', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('40', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('41', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('42', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('43', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('44', '-1', '119', 'VN', '4726.19', null, '2018-07-20 13:20:05', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('45', '-1', '120', 'VN', '2292.23', null, '2018-07-20 13:26:46', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('46', '-1', '120', 'VN', '2292.23', null, '2018-07-20 13:26:46', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('47', '-1', '120', 'VN', '2292.23', null, '2018-07-20 13:26:46', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('48', '-1', '120', 'VN', '2292.23', null, '2018-07-20 13:26:46', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('49', '-1', '120', 'VN', '2292.23', null, '2018-07-20 13:26:46', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('50', 'Venta: 122', '122', 'VN', '10109.40', null, '2018-07-21 17:54:40', '10', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('51', 'Venta: 122', '122', 'VN', '10109.40', null, '2018-07-21 17:54:40', '10', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('52', '-1', '123', 'VN', '49.01', null, '2018-07-22 23:23:06', '11', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('53', '-1', '124', 'VN', '500.00', null, '2018-07-22 23:25:55', '11', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('54', '-1', '125', 'VN', '133.28', null, '2018-07-22 23:28:05', '11', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('55', '-1', '126', 'VN', '1533.17', null, '2018-07-23 10:32:06', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('56', '-1', '126', 'VN', '1533.17', null, '2018-07-23 10:32:06', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('57', '-1', '126', 'VN', '1533.17', null, '2018-07-23 10:32:06', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('58', '-1', '127', 'VN', '1753.99', null, '2018-07-23 10:38:19', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('59', '-1', '127', 'VN', '1753.99', null, '2018-07-23 10:38:19', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('60', '-1', '127', 'VN', '1753.99', null, '2018-07-23 10:38:19', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('61', '-1', '128', 'VN', '49474.31', null, '2018-07-23 10:50:35', '11', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('62', '-1', '129', 'VN', '1085.70', null, '2018-07-23 10:52:58', '9', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('63', '-1', '130', 'VN', '4000.00', null, '2018-07-23 12:24:32', '12', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('64', 'Venta: 131', '131', 'VN', '172.38', null, '2018-07-24 21:54:52', '4', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('65', 'Venta: 132', '132', 'VN', '2338.48', null, '2018-07-24 22:03:28', '13', '4', '14');
INSERT INTO `cuentacorrientecliente` VALUES ('66', 'Venta: 136', '136', 'VN', '7408.00', null, '2018-07-31 19:02:35', '15', '4', '15');
INSERT INTO `cuentacorrientecliente` VALUES ('67', 'cancela saldo', null, 'MN', '0.00', '172.38', '2018-08-01 12:04:35', '4', '4', '15');
INSERT INTO `cuentacorrientecliente` VALUES ('68', 'Venta: 137', '137', 'VN', '2136.00', null, '2018-08-01 12:52:54', '16', '4', '15');

-- ----------------------------
-- Table structure for cuentacorrienteproveedor
-- ----------------------------
DROP TABLE IF EXISTS `cuentacorrienteproveedor`;
CREATE TABLE `cuentacorrienteproveedor` (
  `cctepId` int(11) NOT NULL AUTO_INCREMENT,
  `cctepConcepto` varchar(50) NOT NULL,
  `cctepRef` int(11) DEFAULT NULL,
  `cctepTipo` varchar(2) NOT NULL,
  `cctepDebe` decimal(10,2) DEFAULT NULL,
  `cctepHaber` decimal(10,2) DEFAULT NULL,
  `cctepFecha` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `prvId` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `cajaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cctepId`),
  KEY `prvId` (`prvId`) USING BTREE,
  KEY `usrId` (`usrId`) USING BTREE,
  KEY `cajaId` (`cajaId`) USING BTREE,
  CONSTRAINT `cuentacorrienteproveedor_ibfk_1` FOREIGN KEY (`prvId`) REFERENCES `proveedores` (`prvId`) ON UPDATE CASCADE,
  CONSTRAINT `cuentacorrienteproveedor_ibfk_2` FOREIGN KEY (`usrId`) REFERENCES `sisusers` (`usrId`) ON UPDATE CASCADE,
  CONSTRAINT `cuentacorrienteproveedor_ibfk_3` FOREIGN KEY (`cajaId`) REFERENCES `cajas` (`cajaId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cuentacorrienteproveedor
-- ----------------------------
INSERT INTO `cuentacorrienteproveedor` VALUES ('1', 'Recepción Remito X número: 1', '4', 'RC', '0.00', null, '2018-02-28 00:00:00', '1', '4', null);
INSERT INTO `cuentacorrienteproveedor` VALUES ('2', 'Recepción Factura A número: 0003-0008195', '5', 'RC', '1679.93', null, '2018-02-23 00:00:00', '2', '9', null);
INSERT INTO `cuentacorrienteproveedor` VALUES ('3', 'compra de productos fa 122345455', null, 'MN', '6000.00', '0.00', '2018-06-01 22:52:44', '10', '4', null);
INSERT INTO `cuentacorrienteproveedor` VALUES ('4', 'pago a proveedor , recibo 3333', null, 'MN', '0.00', '1000.00', '2018-06-01 22:54:38', '10', '4', '5');
INSERT INTO `cuentacorrienteproveedor` VALUES ('5', 'qweqweqwe', null, 'MN', '5000.00', '0.00', '2018-06-01 22:57:06', '10', '4', null);
INSERT INTO `cuentacorrienteproveedor` VALUES ('6', 'le pague 100', null, 'MN', '0.00', '100.00', '2018-08-28 16:32:01', '1', '4', '15');

-- ----------------------------
-- Table structure for ivaalicuotas
-- ----------------------------
DROP TABLE IF EXISTS `ivaalicuotas`;
CREATE TABLE `ivaalicuotas` (
  `ivaId` int(11) NOT NULL AUTO_INCREMENT,
  `ivaDescripcion` varchar(20) NOT NULL,
  `ivaPorcentaje` decimal(10,2) NOT NULL,
  `ivaEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `ivaPorDefecto` bigint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ivaId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ivaalicuotas
-- ----------------------------
INSERT INTO `ivaalicuotas` VALUES ('1', 'Exen', '0.00', 'AC', '0');
INSERT INTO `ivaalicuotas` VALUES ('2', 'No Grav', '0.00', 'AC', '0');
INSERT INTO `ivaalicuotas` VALUES ('3', '10,5%', '10.50', 'AC', '0');
INSERT INTO `ivaalicuotas` VALUES ('4', '21%', '21.00', 'AC', '1');
INSERT INTO `ivaalicuotas` VALUES ('5', '27%', '27.00', 'AC', '0');

-- ----------------------------
-- Table structure for listadeprecios
-- ----------------------------
DROP TABLE IF EXISTS `listadeprecios`;
CREATE TABLE `listadeprecios` (
  `lpId` int(11) NOT NULL AUTO_INCREMENT,
  `lpDescripcion` varchar(50) NOT NULL,
  `lpDefault` bit(1) NOT NULL DEFAULT b'0',
  `lpMargen` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lpEstado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`lpId`),
  UNIQUE KEY `lpDescripcion` (`lpDescripcion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listadeprecios
-- ----------------------------
INSERT INTO `listadeprecios` VALUES ('1', 'Contado', '', '0.00', 'AC');
INSERT INTO `listadeprecios` VALUES ('2', 'Visa x 3', '\0', '20.00', 'AC');
INSERT INTO `listadeprecios` VALUES ('3', 'VISA X 6', '\0', '30.00', 'AC');
INSERT INTO `listadeprecios` VALUES ('4', 'VISA X 12', '\0', '40.00', 'AC');
INSERT INTO `listadeprecios` VALUES ('5', 'NEVADA', '\0', '15.00', 'AC');
INSERT INTO `listadeprecios` VALUES ('6', 'DATA', '\0', '15.00', 'AC');

-- ----------------------------
-- Table structure for marcaart
-- ----------------------------
DROP TABLE IF EXISTS `marcaart`;
CREATE TABLE `marcaart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marcaart
-- ----------------------------
INSERT INTO `marcaart` VALUES ('1', 'Marca 1');
INSERT INTO `marcaart` VALUES ('10', 'Marca 10');
INSERT INTO `marcaart` VALUES ('11', 'Marca 11');
INSERT INTO `marcaart` VALUES ('12', 'Marca 12');
INSERT INTO `marcaart` VALUES ('13', 'Marca 13');
INSERT INTO `marcaart` VALUES ('14', 'Marca 14');
INSERT INTO `marcaart` VALUES ('15', 'Marca 15');
INSERT INTO `marcaart` VALUES ('16', 'Marca 16');
INSERT INTO `marcaart` VALUES ('17', 'Marca 17');
INSERT INTO `marcaart` VALUES ('18', 'Marca 18');
INSERT INTO `marcaart` VALUES ('19', 'Marca 19');
INSERT INTO `marcaart` VALUES ('2', 'Marca 2');
INSERT INTO `marcaart` VALUES ('20', 'Marca 20');
INSERT INTO `marcaart` VALUES ('21', 'Marca 21');
INSERT INTO `marcaart` VALUES ('22', 'Marca 22');
INSERT INTO `marcaart` VALUES ('23', 'Marca 23');
INSERT INTO `marcaart` VALUES ('24', 'Marca 24');
INSERT INTO `marcaart` VALUES ('25', 'Marca 25');
INSERT INTO `marcaart` VALUES ('26', 'Marca 26');
INSERT INTO `marcaart` VALUES ('27', 'Marca 27');
INSERT INTO `marcaart` VALUES ('28', 'Marca 28');
INSERT INTO `marcaart` VALUES ('29', 'Marca 29');
INSERT INTO `marcaart` VALUES ('3', 'Marca 3');
INSERT INTO `marcaart` VALUES ('30', 'Marca 30');
INSERT INTO `marcaart` VALUES ('31', 'Marca 31');
INSERT INTO `marcaart` VALUES ('32', 'Marca 32');
INSERT INTO `marcaart` VALUES ('33', 'Marca 33');
INSERT INTO `marcaart` VALUES ('34', 'Marca 34');
INSERT INTO `marcaart` VALUES ('35', 'Marca 35');
INSERT INTO `marcaart` VALUES ('36', 'Marca 36');
INSERT INTO `marcaart` VALUES ('37', 'Marca 37');
INSERT INTO `marcaart` VALUES ('38', 'Marca 38');
INSERT INTO `marcaart` VALUES ('39', 'Marca 39');
INSERT INTO `marcaart` VALUES ('4', 'Marca 4');
INSERT INTO `marcaart` VALUES ('40', 'Marca 40');
INSERT INTO `marcaart` VALUES ('41', 'Marca 41');
INSERT INTO `marcaart` VALUES ('42', 'Marca 42');
INSERT INTO `marcaart` VALUES ('43', 'Marca 43');
INSERT INTO `marcaart` VALUES ('44', 'Marca 44');
INSERT INTO `marcaart` VALUES ('45', 'Marca 45');
INSERT INTO `marcaart` VALUES ('46', 'Marca 46');
INSERT INTO `marcaart` VALUES ('47', 'Marca 47');
INSERT INTO `marcaart` VALUES ('48', 'Marca 48');
INSERT INTO `marcaart` VALUES ('49', 'Marca 49');
INSERT INTO `marcaart` VALUES ('5', 'Marca 5');
INSERT INTO `marcaart` VALUES ('50', 'Marca 50');
INSERT INTO `marcaart` VALUES ('51', 'Marca 51');
INSERT INTO `marcaart` VALUES ('52', 'Marca 52');
INSERT INTO `marcaart` VALUES ('53', 'Marca 53');
INSERT INTO `marcaart` VALUES ('54', 'Marca 54');
INSERT INTO `marcaart` VALUES ('55', 'Marca 55');
INSERT INTO `marcaart` VALUES ('56', 'Marca 56');
INSERT INTO `marcaart` VALUES ('57', 'Marca 57');
INSERT INTO `marcaart` VALUES ('58', 'Marca 58');
INSERT INTO `marcaart` VALUES ('59', 'Marca 59');
INSERT INTO `marcaart` VALUES ('6', 'Marca 6');
INSERT INTO `marcaart` VALUES ('60', 'Marca 60');
INSERT INTO `marcaart` VALUES ('61', 'Marca 61');
INSERT INTO `marcaart` VALUES ('62', 'Marca 62');
INSERT INTO `marcaart` VALUES ('63', 'Marca 63');
INSERT INTO `marcaart` VALUES ('64', 'Marca 64');
INSERT INTO `marcaart` VALUES ('65', 'Marca 65');
INSERT INTO `marcaart` VALUES ('7', 'Marca 7');
INSERT INTO `marcaart` VALUES ('73', 'Marca 73');
INSERT INTO `marcaart` VALUES ('74', 'Marca 74');
INSERT INTO `marcaart` VALUES ('79', 'Marca 79');
INSERT INTO `marcaart` VALUES ('8', 'Marca 8');
INSERT INTO `marcaart` VALUES ('80', 'Marca 80');
INSERT INTO `marcaart` VALUES ('81', 'Marca 81');
INSERT INTO `marcaart` VALUES ('82', 'Marca 82');
INSERT INTO `marcaart` VALUES ('83', 'Marca 83');
INSERT INTO `marcaart` VALUES ('84', 'Marca 84');
INSERT INTO `marcaart` VALUES ('85', 'Marca 85');
INSERT INTO `marcaart` VALUES ('86', 'Marca 86');
INSERT INTO `marcaart` VALUES ('9', 'Marca 9');

-- ----------------------------
-- Table structure for mediosdepago
-- ----------------------------
DROP TABLE IF EXISTS `mediosdepago`;
CREATE TABLE `mediosdepago` (
  `medId` int(11) NOT NULL AUTO_INCREMENT,
  `medCodigo` varchar(3) NOT NULL,
  `medDescripcion` varchar(50) NOT NULL,
  `tmpId` int(11) NOT NULL,
  `medEstado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`medId`),
  UNIQUE KEY `medCodigo` (`medCodigo`) USING BTREE,
  UNIQUE KEY `medDescripcion` (`medDescripcion`) USING BTREE,
  KEY `tmpId` (`tmpId`) USING BTREE,
  CONSTRAINT `mediosdepago_ibfk_1` FOREIGN KEY (`tmpId`) REFERENCES `tipomediopago` (`tmpId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mediosdepago
-- ----------------------------
INSERT INTO `mediosdepago` VALUES ('1', 'EFE', 'Efectivo', '1', 'AC');
INSERT INTO `mediosdepago` VALUES ('2', 'VIS', 'Visa', '2', 'AC');
INSERT INTO `mediosdepago` VALUES ('3', 'MAS', 'MasterCard', '2', 'AC');
INSERT INTO `mediosdepago` VALUES ('4', 'NEV', 'Nevada', '2', 'AC');
INSERT INTO `mediosdepago` VALUES ('5', 'DAT', 'Data', '2', 'AC');
INSERT INTO `mediosdepago` VALUES ('6', 'CRA', 'Credito Argentino', '3', 'AC');
INSERT INTO `mediosdepago` VALUES ('7', 'CCT', 'Cuenta Corriente', '4', 'AC');

-- ----------------------------
-- Table structure for orden
-- ----------------------------
DROP TABLE IF EXISTS `orden`;
CREATE TABLE `orden` (
  `oId` int(11) NOT NULL AUTO_INCREMENT,
  `oFecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lpId` int(11) NOT NULL,
  `lpPorcentaje` decimal(10,2) NOT NULL,
  `venId` int(11) NOT NULL,
  `cliId` int(11) NOT NULL,
  `oDescuento` decimal(14,2) NOT NULL DEFAULT '0.00',
  `oEsPresupuesto` bit(1) DEFAULT NULL,
  `oEsVenta` bit(1) DEFAULT NULL,
  `oEsPlanReserva` bit(1) DEFAULT NULL,
  `oEsMayorista` bit(1) DEFAULT NULL,
  `cajaId` int(11) DEFAULT NULL,
  `oEstado` varchar(2) DEFAULT 'AC',
  PRIMARY KEY (`oId`),
  KEY `lpId` (`lpId`),
  KEY `venId` (`venId`),
  KEY `cliId` (`cliId`),
  KEY `cajaId` (`cajaId`),
  CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`lpId`) REFERENCES `listadeprecios` (`lpId`) ON UPDATE CASCADE,
  CONSTRAINT `orden_ibfk_2` FOREIGN KEY (`venId`) REFERENCES `vendedores` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orden_ibfk_3` FOREIGN KEY (`cliId`) REFERENCES `clientes` (`cliId`) ON UPDATE CASCADE,
  CONSTRAINT `orden_ibfk_4` FOREIGN KEY (`cajaId`) REFERENCES `cajas` (`cajaId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden
-- ----------------------------
INSERT INTO `orden` VALUES ('54', '2018-05-03 21:09:19', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('55', '2018-05-03 21:10:56', '1', '0.00', '2', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('56', '2018-05-03 21:11:10', '1', '0.00', '2', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('57', '2018-05-03 21:11:46', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('58', '2018-05-03 21:11:47', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('59', '2018-05-03 21:11:49', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('60', '2018-05-03 21:11:50', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('61', '2018-05-03 21:11:52', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('62', '2018-05-03 21:11:53', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('63', '2018-05-03 21:11:55', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('64', '2018-05-03 21:11:57', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('65', '2018-05-03 21:11:58', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('66', '2018-05-03 21:12:00', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '1', 'AC');
INSERT INTO `orden` VALUES ('67', '2018-05-03 21:21:23', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('68', '2018-05-03 21:23:22', '1', '0.00', '3', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('69', '2018-05-03 21:29:25', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('70', '2018-05-03 21:31:35', '1', '0.00', '3', '1', '2.50', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('71', '2018-05-03 21:36:15', '2', '20.00', '1', '1', '43.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('72', '2018-05-03 21:39:48', '1', '0.00', '3', '2', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('73', '2018-05-03 21:41:32', '1', '0.00', '1', '2', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('74', '2018-05-04 17:28:25', '1', '0.00', '3', '2', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('75', '2018-05-04 17:45:56', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('76', '2018-05-04 17:46:34', '1', '0.00', '3', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('77', '2018-05-04 17:47:00', '1', '0.00', '2', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('78', '2018-05-04 17:48:59', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('79', '2018-05-04 17:50:41', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('80', '2018-05-04 17:50:58', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('81', '2018-05-04 17:51:14', '1', '0.00', '3', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('82', '2018-05-07 17:22:36', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('83', '2018-05-07 21:21:49', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '2', 'AC');
INSERT INTO `orden` VALUES ('84', '2018-05-07 21:25:17', '1', '0.00', '3', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('85', '2018-05-07 21:26:52', '1', '0.00', '3', '1', '0.00', '\0', '', '\0', '', '2', 'AC');
INSERT INTO `orden` VALUES ('86', '2018-05-08 19:03:11', '2', '20.00', '2', '3', '0.00', '\0', '', '\0', '\0', '3', 'AC');
INSERT INTO `orden` VALUES ('87', '2018-05-14 18:33:39', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '3', 'AC');
INSERT INTO `orden` VALUES ('88', '2018-06-01 10:39:58', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'AC');
INSERT INTO `orden` VALUES ('89', '2018-06-01 10:52:31', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'AC');
INSERT INTO `orden` VALUES ('90', '2018-06-01 11:19:33', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'AC');
INSERT INTO `orden` VALUES ('91', '2018-06-01 11:27:32', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'AC');
INSERT INTO `orden` VALUES ('92', '2018-06-01 15:04:17', '1', '0.00', '1', '1', '0.00', '\0', '\0', '', '\0', '4', 'AC');
INSERT INTO `orden` VALUES ('93', '2018-06-01 19:31:13', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'FA');
INSERT INTO `orden` VALUES ('94', '2018-06-05 16:18:08', '1', '0.00', '3', '1', '0.00', '\0', '\0', '', '\0', '4', 'FA');
INSERT INTO `orden` VALUES ('95', '2018-06-01 19:35:59', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', '4', 'FA');
INSERT INTO `orden` VALUES ('96', '2018-06-01 19:39:49', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '4', 'FA');
INSERT INTO `orden` VALUES ('97', '2018-06-01 20:25:10', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '5', 'FA');
INSERT INTO `orden` VALUES ('98', '2018-06-01 20:28:15', '1', '0.00', '1', '2', '0.00', '\0', '', '\0', '\0', '5', 'FA');
INSERT INTO `orden` VALUES ('99', '2018-06-01 20:33:16', '1', '0.00', '3', '2', '0.00', '\0', '', '\0', '\0', '5', 'FA');
INSERT INTO `orden` VALUES ('100', '2018-06-15 10:03:41', '1', '0.00', '1', '1', '98.00', '\0', '', '\0', '\0', '8', 'FA');
INSERT INTO `orden` VALUES ('101', '2018-06-25 12:58:44', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('102', '2018-06-25 12:59:21', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('103', '2018-06-25 13:00:29', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('104', '2018-06-25 13:03:23', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('105', '2018-06-25 19:14:26', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('106', '2018-06-25 19:50:17', '1', '0.00', '1', '1', '0.00', '\0', '', '\0', '\0', '11', 'FA');
INSERT INTO `orden` VALUES ('107', '2018-06-25 20:20:50', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('108', '2018-06-29 19:55:49', '6', '15.00', '1', '1', '0.00', '\0', '', '\0', '\0', '11', 'FA');
INSERT INTO `orden` VALUES ('109', '2018-07-05 09:51:16', '6', '15.00', '1', '1', '0.00', '\0', '', '\0', '\0', '13', 'FA');
INSERT INTO `orden` VALUES ('110', '2018-07-06 20:58:17', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('111', '2018-07-06 21:54:32', '1', '0.00', '1', '5', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('112', '2018-07-06 22:00:36', '6', '15.00', '1', '6', '0.00', '\0', '', '\0', '\0', '14', 'FA');
INSERT INTO `orden` VALUES ('113', '2018-07-07 09:49:55', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('114', '2018-07-10 20:42:41', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('115', '2018-07-14 19:14:20', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('116', '2018-07-16 18:50:22', '6', '15.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('117', '2018-07-18 12:50:53', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '', null, 'AC');
INSERT INTO `orden` VALUES ('118', '2018-07-19 12:16:31', '6', '15.00', '1', '8', '0.00', '\0', '', '\0', '\0', '14', 'FA');
INSERT INTO `orden` VALUES ('119', '2018-07-20 13:20:04', '6', '15.00', '1', '9', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('120', '2018-07-20 13:26:46', '6', '15.00', '1', '9', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('121', '2018-07-20 20:02:12', '6', '15.00', '1', '1', '0.00', '\0', '', '\0', '\0', '14', 'FA');
INSERT INTO `orden` VALUES ('122', '2018-07-21 17:54:40', '6', '15.00', '1', '10', '0.00', '\0', '', '\0', '\0', '14', 'FA');
INSERT INTO `orden` VALUES ('123', '2018-07-22 23:23:06', '6', '15.00', '1', '11', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('124', '2018-07-22 23:25:55', '6', '15.00', '3', '11', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('125', '2018-07-22 23:28:05', '6', '15.00', '1', '11', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('126', '2018-07-23 10:32:06', '6', '15.00', '1', '9', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('127', '2018-07-23 10:38:19', '6', '15.00', '1', '9', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('128', '2018-07-23 10:50:35', '6', '15.00', '3', '11', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('129', '2018-07-23 10:52:58', '6', '15.00', '1', '9', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('130', '2018-07-23 12:24:32', '6', '15.00', '1', '12', '644.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('131', '2018-07-24 21:54:52', '1', '0.00', '1', '4', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('132', '2018-07-24 22:03:28', '1', '0.00', '1', '13', '0.00', '\0', '', '\0', '', '14', 'FA');
INSERT INTO `orden` VALUES ('133', '2018-07-25 10:36:42', '1', '0.00', '1', '5', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('134', '2018-07-25 18:17:02', '1', '0.00', '1', '14', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('135', '2018-07-26 19:52:51', '1', '0.00', '1', '1', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('136', '2018-07-31 19:02:34', '1', '0.00', '1', '15', '0.00', '\0', '', '\0', '\0', '15', 'FA');
INSERT INTO `orden` VALUES ('137', '2018-08-01 12:52:54', '1', '0.00', '1', '16', '0.00', '\0', '', '\0', '\0', '15', 'FA');
INSERT INTO `orden` VALUES ('138', '2018-08-01 20:10:35', '1', '0.00', '1', '6', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('139', '2018-08-04 10:09:02', '1', '0.00', '1', '17', '0.00', '\0', '\0', '', '\0', '15', 'AC');
INSERT INTO `orden` VALUES ('140', '2018-08-07 10:10:41', '1', '0.00', '2', '6', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('141', '2018-08-07 12:20:45', '1', '0.00', '1', '6', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('142', '2018-08-08 16:01:43', '1', '0.00', '1', '6', '0.00', '', '\0', '\0', '\0', null, 'AC');
INSERT INTO `orden` VALUES ('143', '2018-08-08 16:32:30', '1', '0.00', '1', '6', '0.00', '', '\0', '\0', '\0', null, 'AC');

-- ----------------------------
-- Table structure for ordendetalle
-- ----------------------------
DROP TABLE IF EXISTS `ordendetalle`;
CREATE TABLE `ordendetalle` (
  `odId` int(11) NOT NULL AUTO_INCREMENT,
  `oId` int(11) NOT NULL,
  `artId` int(11) DEFAULT NULL,
  `artCode` varchar(20) DEFAULT NULL,
  `artDescripcion` varchar(200) NOT NULL,
  `artCosto` decimal(14,2) NOT NULL,
  `artVenta` decimal(14,2) NOT NULL,
  `artVentaSD` decimal(14,2) NOT NULL,
  `artCant` decimal(14,2) NOT NULL,
  PRIMARY KEY (`odId`),
  KEY `artId` (`artId`),
  KEY `ordId` (`odId`) USING BTREE,
  KEY `oId` (`oId`),
  CONSTRAINT `ordendetalle_ibfk_2` FOREIGN KEY (`artId`) REFERENCES `articles` (`artId`) ON UPDATE CASCADE,
  CONSTRAINT `ordendetalle_ibfk_3` FOREIGN KEY (`oId`) REFERENCES `orden` (`oId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordendetalle
-- ----------------------------
INSERT INTO `ordendetalle` VALUES ('56', '54', '289', '7790368029890', ' Parlante  6\" B52  WA-6192', '556.48', '834.72', '834.72', '1.00');
INSERT INTO `ordendetalle` VALUES ('57', '55', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('58', '56', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('59', '56', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('60', '57', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('61', '58', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('62', '59', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('63', '60', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('64', '61', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('65', '62', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('66', '63', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('67', '64', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('68', '65', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('69', '66', '285', 'CAR-702', 'Control remoto estereo SONY ', '120.00', '201.60', '201.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('70', '67', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('71', '67', '74', '342', 'control remoto Tv 425', '50.00', '100.00', '100.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('72', '68', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('73', '69', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('74', '69', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('75', '69', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('76', '69', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('77', '69', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('78', '70', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('79', '71', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '243.00', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('80', '72', '260', '869767142924', 'Lector de tarjeta SIYOTEAM USB', '30.00', '60.00', '60.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('81', '73', '22', '740617128147', 'Tarjeta de memoria 8GB Kingston', '150.00', '202.50', '202.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('82', '74', '289', '7790368029890', ' Parlante  6\" B52  WA-6192', '556.48', '834.72', '834.72', '1.00');
INSERT INTO `ordendetalle` VALUES ('83', '75', '289', '7790368029890', ' Parlante  6\" B52  WA-6192', '556.48', '834.72', '834.72', '1.00');
INSERT INTO `ordendetalle` VALUES ('84', '76', '287', '7790368029906', ' Parlantes  6x9', '774.27', '1161.40', '1161.40', '1.00');
INSERT INTO `ordendetalle` VALUES ('85', '77', '278', '7798137388544 EK\'102', 'Sistema de parlantes NOGA PC C/C remoto S-2176R', '1280.00', '1920.00', '1920.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('86', '78', '287', '7790368029906', ' Parlantes  6x9', '774.27', '1161.40', '1161.40', '1.00');
INSERT INTO `ordendetalle` VALUES ('87', '79', '289', '7790368029890', ' Parlante  6\" B52  WA-6192', '556.48', '834.72', '834.72', '1.00');
INSERT INTO `ordendetalle` VALUES ('88', '80', '187', '884938344883', 'Estereo Pioneer AVH-295BT', '6330.00', '9495.00', '9495.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('89', '81', '58', 'LED1', 'led programable ventilador USB', '181.25', '290.00', '290.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('90', '82', '278', '7798137388544 EK\'102', 'Sistema de parlantes NOGA PC C/C remoto S-2176R', '1280.00', '1920.00', '1920.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('91', '83', '278', '7798137388544 EK\'102', 'Sistema de parlantes NOGA PC C/C remoto S-2176R', '1280.00', '1920.00', '1920.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('92', '84', '278', '7798137388544 EK\'102', 'Sistema de parlantes NOGA PC C/C remoto S-2176R', '1280.00', '1920.00', '1920.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('93', '85', '289', '7790368029890', ' Parlante  6\" B52  WA-6192', '556.48', '779.07', '779.07', '1.00');
INSERT INTO `ordendetalle` VALUES ('94', '86', '296', 'MIC-M-CH', 'canon macho a chasis 3 patas', '33.30', '46.62', '46.62', '2.00');
INSERT INTO `ordendetalle` VALUES ('95', '86', '294', 'HUECO1.7', 'PLug hueco 1.7 mm plastico c/colita', '8.66', '12.12', '12.12', '5.00');
INSERT INTO `ordendetalle` VALUES ('96', '87', '143', '639', 'Control Remoto TV LCD Philips 639', '117.90', '199.99', '199.99', '1.00');
INSERT INTO `ordendetalle` VALUES ('97', '88', '447', 'cable aux', 'cable 3.5 st a 3.5 st', '25.00', '50.00', '50.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('98', '89', '5', '7501037600056', 'Pilas  AA', '4.30', '10.11', '10.11', '2.00');
INSERT INTO `ordendetalle` VALUES ('99', '90', '448', 'soldadura', 'reparacion de cables', '20.00', '40.00', '40.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('100', '91', '7', '8999002672013', 'Pilas AAA', '6.40', '10.05', '10.05', '2.00');
INSERT INTO `ordendetalle` VALUES ('101', '92', '293', 'AUTAAC180', 'Control p/porton electrico 4 canales ZDREMOTE SEG', '160.54', '224.76', '224.76', '1.00');
INSERT INTO `ordendetalle` VALUES ('102', '93', '293', 'AUTAAC180', 'Control p/porton electrico 4 canales ZDREMOTE SEG', '160.54', '224.76', '224.76', '1.00');
INSERT INTO `ordendetalle` VALUES ('103', '93', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '10.00');
INSERT INTO `ordendetalle` VALUES ('104', '94', '293', 'AUTAAC180', 'Control p/porton electrico 4 canales ZDREMOTE SEG', '160.54', '224.76', '224.76', '3.00');
INSERT INTO `ordendetalle` VALUES ('105', '94', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '5.00');
INSERT INTO `ordendetalle` VALUES ('106', '95', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '40.00');
INSERT INTO `ordendetalle` VALUES ('107', '96', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '1.00');
INSERT INTO `ordendetalle` VALUES ('108', '97', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '50.00');
INSERT INTO `ordendetalle` VALUES ('109', '98', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '20.00');
INSERT INTO `ordendetalle` VALUES ('110', '99', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '5.00');
INSERT INTO `ordendetalle` VALUES ('111', '100', '319', 'MS-106BT', 'PARLANTE PORTATIL BLUETOOH MS-106BT-A', '610.00', '1098.00', '1098.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('112', '103', '176', '884938369350', 'Estereo PIoneer  MVH-X30BT', '4076.50', '5707.10', '5707.10', '1.00');
INSERT INTO `ordendetalle` VALUES ('113', '104', '192', '884938311649', 'Parlante Pioneer TS-A6976S 550W', '2080.00', '3352.96', '3352.96', '1.00');
INSERT INTO `ordendetalle` VALUES ('114', '104', '178', '884938311465', 'Parlante Pioneer  6 1/2 TS -A1676S', '2000.00', '2800.00', '2800.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('115', '104', '176', '884938369350', 'Estereo PIoneer  MVH-X30BT', '4076.50', '5707.10', '5707.10', '1.00');
INSERT INTO `ordendetalle` VALUES ('116', '105', '532', 'potencia skp max 720', 'potencia skp max 720 ', '5500.00', '7975.00', '7975.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('117', '105', '216', 'BA', 'Bafle  GBR  2 vias 15', '5065.06', '7091.08', '7091.08', '2.00');
INSERT INTO `ordendetalle` VALUES ('118', '106', '216', 'BA', 'Bafle  GBR  2 vias 15', '5065.06', '7091.08', '7091.08', '2.00');
INSERT INTO `ordendetalle` VALUES ('119', '107', '216', 'BA', 'Bafle  GBR  2 vias 15', '5065.06', '7091.08', '7091.08', '2.00');
INSERT INTO `ordendetalle` VALUES ('120', '108', null, '-', 'instalacion', '600.00', '600.00', '600.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('121', '108', '346', 'TX4R', 'CONTROL REMOTO P/ALARMA DOMICILIO X28', '382.51', '573.76', '573.76', '1.00');
INSERT INTO `ordendetalle` VALUES ('122', '109', '16', '039800013613', 'BATERIA 9V ', '30.00', '49.50', '49.50', '1.00');
INSERT INTO `ordendetalle` VALUES ('123', '110', '551', 'SJ-803', 'JOYSTICK', '128.70', '218.79', '218.79', '1.00');
INSERT INTO `ordendetalle` VALUES ('124', '110', '550', 'SJ-802', 'JOYSTICK PS2 SEISA C/CABLE', '114.40', '194.48', '194.48', '3.00');
INSERT INTO `ordendetalle` VALUES ('125', '110', '555', 'MS-221BT', 'PARLANTE PORTATIL MS-221BT', '572.00', '972.40', '972.40', '3.00');
INSERT INTO `ordendetalle` VALUES ('126', '110', '556', 'MS-278BT', 'PARLANTE PORTATIL MS-278BT', '443.30', '753.61', '753.61', '2.00');
INSERT INTO `ordendetalle` VALUES ('127', '110', '553', 'MS-158BT', 'PARLANTE PORTATIL BLUETOOTH MS-158', '800.80', '1361.36', '1361.36', '2.00');
INSERT INTO `ordendetalle` VALUES ('128', '110', '560', 'MS-254BT', 'PARLANTE PORTATIL MS-254BT', '418.70', '711.80', '711.80', '3.00');
INSERT INTO `ordendetalle` VALUES ('129', '110', '554', 'MS-205BT', 'PARLANTE PORTATIL MS-205BT', '394.68', '670.96', '670.96', '2.00');
INSERT INTO `ordendetalle` VALUES ('130', '110', '558', 'MS-199BT', 'PARLANTE PORTATIL MS-199BT', '393.25', '668.52', '668.52', '2.00');
INSERT INTO `ordendetalle` VALUES ('131', '110', '323', 'HBS500', 'AURICULARES BLUETOOTH DEPORTIVO', '206.05', '360.59', '360.59', '4.00');
INSERT INTO `ordendetalle` VALUES ('132', '110', '557', 'OM-819BT', 'PARLANTE PORTATIL OM-819BT CON MICROFONO', '1687.40', '2868.58', '2868.58', '1.00');
INSERT INTO `ordendetalle` VALUES ('133', '111', '185', '884938309325', 'Estereo Pioneer DEH-X1850UB', '3003.00', '3903.90', '3903.90', '1.00');
INSERT INTO `ordendetalle` VALUES ('134', '112', '557', 'OM-819BT', 'PARLANTE PORTATIL OM-819BT CON MICROFONO', '1687.40', '2868.58', '2868.58', '1.00');
INSERT INTO `ordendetalle` VALUES ('135', '113', '586', '355007', 'ENCORDADOS CAMPANA', '124.70', '187.04', '187.04', '5.00');
INSERT INTO `ordendetalle` VALUES ('136', '113', '587', '390007', 'ENCORDADOS M ARTIGAS S/AMARILLO 520 ', '96.95', '145.43', '145.43', '4.00');
INSERT INTO `ordendetalle` VALUES ('137', '113', '588', '397007', 'ENCORDADOS III MILENIUN M ARTIGAS PLATA 720', '138.42', '207.64', '207.64', '4.00');
INSERT INTO `ordendetalle` VALUES ('138', '113', '589', '535015', 'ENCORDADOS PARA ACUSTICA FENDER 70XL-010', '285.43', '428.14', '428.14', '3.00');
INSERT INTO `ordendetalle` VALUES ('139', '113', '594', '860325', 'COPODASTRO OLYMPIA BCO-001 ', '268.27', '402.40', '402.40', '1.00');
INSERT INTO `ordendetalle` VALUES ('140', '113', '593', '860065', 'TRANSPORTE PINZA ALICE A005MP', '41.47', '62.20', '62.20', '2.00');
INSERT INTO `ordendetalle` VALUES ('141', '113', '590', '580010', 'FLAUTA DULCE YAMAHA YRS23', '259.40', '389.10', '389.10', '1.00');
INSERT INTO `ordendetalle` VALUES ('142', '113', '570', '120006', 'AFINADOR CREEP CT36 C/PINZA DISPLAY', '189.62', '303.39', '303.39', '4.00');
INSERT INTO `ordendetalle` VALUES ('143', '113', '571', '120029 AFINADOR', 'AFINADOR CROMATICO CHERUMWST 650C  C/PINZA ', '237.38', '356.07', '356.07', '2.00');
INSERT INTO `ordendetalle` VALUES ('144', '113', '572', '258101 ', 'CENCERRO PLASTICO MPX BLH-03', '692.12', '1038.18', '1038.18', '1.00');
INSERT INTO `ordendetalle` VALUES ('145', '113', '573', '258155', 'CENCERRO BLOK CHICO DENVER BSH 01', '397.83', '596.74', '596.74', '1.00');
INSERT INTO `ordendetalle` VALUES ('146', '113', '574', '258165', 'CENCERRO BLOCK CHICO DENVER BSL 02', '465.89', '698.84', '698.84', '1.00');
INSERT INTO `ordendetalle` VALUES ('147', '113', '575', '258206', 'CENCERRO METALICO DENVER CBK06', '282.85', '424.28', '424.28', '1.00');
INSERT INTO `ordendetalle` VALUES ('148', '113', '578', '258506', 'CENCERRO METALICO MXP 6', '318.32', '477.48', '477.48', '1.00');
INSERT INTO `ordendetalle` VALUES ('149', '113', '579', '290040', 'CLAVIJERO MANARGUEZ N 40 LIRA NIQ', '155.87', '233.81', '233.81', '1.00');
INSERT INTO `ordendetalle` VALUES ('150', '113', '580', '290041', 'CLAVIJERO MENARGUEZ N 41 LIRA DORADO', '166.17', '249.25', '249.25', '1.00');
INSERT INTO `ordendetalle` VALUES ('151', '113', '581', '290050', 'CLAVIJERO MENARGUEZ N 50 CROMADO', '193.91', '290.86', '290.86', '1.00');
INSERT INTO `ordendetalle` VALUES ('152', '113', '582', '290051', 'CLAVIJERO MENARGUEZ N51 LIRA LUJO', '297.73', '446.59', '446.59', '1.00');
INSERT INTO `ordendetalle` VALUES ('153', '113', '583', '295207', 'CLAVIJERO MENARGUEZ 207 PASO INT LIRA NIQUEL', '152.15', '228.23', '228.23', '1.00');
INSERT INTO `ordendetalle` VALUES ('154', '113', '584', '295208', 'CLAVIJERO MENARGUEZ 208 PASO INT CAJA DORADA', '164.45', '246.68', '246.68', '1.00');
INSERT INTO `ordendetalle` VALUES ('155', '113', '585', '295209', 'CLAVIJERO MENARGUEZ 209', '164.45', '246.68', '246.68', '1.00');
INSERT INTO `ordendetalle` VALUES ('156', '114', '605', '3367', 'GAMA SECADOR POTENZA 2400W', '817.96', '1635.92', '1635.92', '1.00');
INSERT INTO `ordendetalle` VALUES ('157', '114', '601', 'MP-H-036', 'PLANCHA CON CEPILLO OM MP-H-036', '600.60', '1201.20', '1201.20', '1.00');
INSERT INTO `ordendetalle` VALUES ('158', '114', '616', 'LMD998', 'DVD PORTATIL 9.8', '1601.60', '3203.20', '3203.20', '1.00');
INSERT INTO `ordendetalle` VALUES ('159', '114', '624', 'T61', 'LINTERNA RECARG OM ', '213.36', '426.71', '426.71', '1.00');
INSERT INTO `ordendetalle` VALUES ('160', '114', '473', 'X-2670', 'AURICULAR VINCHA M/LIBRES NOGA X-2670', '145.86', '320.89', '320.89', '1.00');
INSERT INTO `ordendetalle` VALUES ('161', '114', '603', 'OM-2995', 'PLANCHA DE PELO OM OM-2995', '185.90', '371.80', '371.80', '1.00');
INSERT INTO `ordendetalle` VALUES ('162', '114', '604', '7120', 'SECADOR GAMA EOLIC NANO1300W 7120', '461.60', '923.21', '923.21', '1.00');
INSERT INTO `ordendetalle` VALUES ('163', '114', '631', 'V33', 'VINCHA ENJOY MUSIC BT V33', '349.21', '698.41', '698.41', '1.00');
INSERT INTO `ordendetalle` VALUES ('164', '114', '614', '2226', 'CARGADOR SAMSUNG S8  C/NEGRA T-50 2226', '77.22', '154.44', '154.44', '4.00');
INSERT INTO `ordendetalle` VALUES ('165', '114', '612', '25680', 'CABEZAL SAMSUNG TRABEL  25680', '57.20', '114.40', '114.40', '4.00');
INSERT INTO `ordendetalle` VALUES ('166', '114', '623', '2712', 'LECTOR DE MEMORIA  7126', '11.44', '40.04', '40.04', '5.00');
INSERT INTO `ordendetalle` VALUES ('167', '114', '608', 'K16A-215', 'CABLE USB V8 K16A-215', '14.30', '42.90', '42.90', '3.00');
INSERT INTO `ordendetalle` VALUES ('168', '114', '602', '1718013', 'AURICULAR SAMSUNG CAJITA', '42.90', '107.25', '107.25', '20.00');
INSERT INTO `ordendetalle` VALUES ('169', '114', '619', 'KJ-AC02', 'RECEPTOR DE MUSICA BLUETOOTH', '86.66', '173.32', '173.32', '5.00');
INSERT INTO `ordendetalle` VALUES ('170', '114', '613', '77302', 'CARGADOR PULPO EFFECT', '45.76', '91.52', '91.52', '2.00');
INSERT INTO `ordendetalle` VALUES ('171', '114', '630', 'RC-503', 'AURICULAR ROYALCELLBT  RC-503', '225.08', '450.16', '450.16', '2.00');
INSERT INTO `ordendetalle` VALUES ('172', '114', '617', '18077', 'CHROMECAST G2 GOOGLR CONVERSOR', '429.00', '858.00', '858.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('173', '115', '516', 'KIT', 'KIT RACING 4 GAUGE', '417.00', '688.05', '688.05', '1.00');
INSERT INTO `ordendetalle` VALUES ('174', '115', '367', 'CAJA', 'CAJA DOBLE ALFOMBRADO  BOMBER C/ 12 CARBON 250W', '4480.00', '6720.00', '6720.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('175', '116', '635', 'GUIRO ', 'GUIRO ABIERTO CHICO CON PEINE ', '250.60', '400.96', '400.96', '1.00');
INSERT INTO `ordendetalle` VALUES ('176', '116', '636', 'GUIRO2', 'GUIRO ABIERTO GRANDE CON PEINE', '248.92', '398.27', '398.27', '1.00');
INSERT INTO `ordendetalle` VALUES ('177', '116', '634', 'CORREA', 'CORREA PARA REDOBLANTE O REPIQUE', '40.60', '64.96', '64.96', '1.00');
INSERT INTO `ordendetalle` VALUES ('178', '116', '639', 'ZURDO', 'ZURDO METALICO PINTADO DE 16\" TENSION SIMPLE', '779.24', '1246.78', '1246.78', '1.00');
INSERT INTO `ordendetalle` VALUES ('179', '116', '637', 'MAZO ', 'MAZO DE GOMA EVA PARA BOMBO', '182.84', '292.54', '292.54', '1.00');
INSERT INTO `ordendetalle` VALUES ('180', '116', '633', 'BOMBO', 'BOMBO METALICO PINTADO 24', '1321.32', '2114.11', '2114.11', '1.00');
INSERT INTO `ordendetalle` VALUES ('181', '116', '638', 'REPIQUE', 'REPIQUE METALICO PINTADO 10', '609.84', '975.74', '975.74', '1.00');
INSERT INTO `ordendetalle` VALUES ('182', '117', '132', '227', 'Control REmoto Tv Philips Ps266', '60.00', '78.00', '78.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('183', '117', null, '-', '3CABLE A/V DRECTV', '60.00', '60.00', '60.00', '3.00');
INSERT INTO `ordendetalle` VALUES ('184', '117', '537', 'CARGADOR UNIVERSAL P', 'CARGADOR UNIV POWER P/ PC 96W HC-5808', '196.00', '294.00', '294.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('185', '117', '602', '1718013', 'AURICULAR SAMSUNG CAJITA', '42.00', '67.20', '67.20', '4.00');
INSERT INTO `ordendetalle` VALUES ('186', '117', '600', 'CC003', 'CARGADOR TURBO 2.4 AUTHENTIC 8766', '53.20', '85.12', '85.12', '4.00');
INSERT INTO `ordendetalle` VALUES ('187', '118', '333', '7798161081046', 'KIT CABLE BLAULINE K-009', '947.24', '1420.86', '1420.86', '1.00');
INSERT INTO `ordendetalle` VALUES ('188', '119', '52', '6942626020335', 'Soporte universal  Cel GPS', '56.00', '72.80', '72.80', '4.00');
INSERT INTO `ordendetalle` VALUES ('189', '119', null, '-', 'CARGADOR PORTATIL INOVA PC-03', '140.00', '140.00', '140.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('190', '119', '600', 'CC003', 'CARGADOR TURBO 2.4 AUTHENTIC 8766', '53.20', '85.12', '85.12', '4.00');
INSERT INTO `ordendetalle` VALUES ('191', '119', null, '-', 'CABLE TYPE C', '75.00', '75.00', '75.00', '4.00');
INSERT INTO `ordendetalle` VALUES ('192', '119', '623', '2712', 'LECTOR DE MEMORIA  7126', '11.20', '22.40', '22.40', '5.00');
INSERT INTO `ordendetalle` VALUES ('193', '119', '356', '7798318653065', 'CARGADOR INOVA  CAR-2006 3.1A', '66.30', '86.19', '86.19', '10.00');
INSERT INTO `ordendetalle` VALUES ('194', '119', null, '-', 'AURICULAR EXTRA BASS ', '220.00', '220.00', '220.00', '3.00');
INSERT INTO `ordendetalle` VALUES ('195', '119', '323', 'HBS500', 'AURICULARES BLUETOOTH DEPORTIVO', '206.05', '267.87', '267.87', '2.00');
INSERT INTO `ordendetalle` VALUES ('196', '119', '356', '7798318653065', 'CARGADOR INOVA  CAR-2006 3.1A', '66.30', '86.19', '86.19', '5.00');
INSERT INTO `ordendetalle` VALUES ('197', '119', '473', 'X-2670', 'AURICULAR VINCHA M/LIBRES NOGA X-2670', '142.80', '228.48', '228.48', '4.00');
INSERT INTO `ordendetalle` VALUES ('198', '120', '524', '740617220445', 'PEN DRIVE KINGSTON 8GB DTIG4/8GB', '174.00', '226.20', '226.20', '2.00');
INSERT INTO `ordendetalle` VALUES ('199', '120', '441', '619659070632', 'PENDRIVE  CRUZER FIT 16 GB', '221.50', '287.95', '287.95', '1.00');
INSERT INTO `ordendetalle` VALUES ('200', '120', '678', '619659000431', 'PEN DRIVE 16GB SANDISK NEGRO', '197.12', '275.97', '275.97', '2.00');
INSERT INTO `ordendetalle` VALUES ('201', '120', '677', '740617198270', 'PEN DRIVE 16GB KINGSTON METALICO', '197.12', '275.97', '275.97', '2.00');
INSERT INTO `ordendetalle` VALUES ('202', '120', '611', 'ECB-DU4AWD', 'CABLE V8 BLANCO ENROLLADO ECB-DU4AWD', '22.40', '44.80', '44.80', '10.00');
INSERT INTO `ordendetalle` VALUES ('203', '121', null, '-', 'INSTALACION', '209.00', '209.00', '209.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('204', '121', '522', '884938313360', 'ESTEREO PIONEER MVH-85UB', '2352.00', '3292.80', '3292.80', '1.00');
INSERT INTO `ordendetalle` VALUES ('205', '122', '272', '7897183020351', 'DRIVER BOMBER  DB200X o omhs 100w 75rms', '387.80', '581.70', '581.70', '2.00');
INSERT INTO `ordendetalle` VALUES ('206', '122', '650', 'SOUNDMAGUS', 'POTENCIA SOUNDMAGUS DK1800', '5964.00', '8946.00', '8946.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('207', '123', '598', '391', 'CONTROL REMOTO PARA DECO', '32.67', '49.01', '49.01', '1.00');
INSERT INTO `ordendetalle` VALUES ('208', '124', '653', 'K-1038E', 'CONTROL REMOTO PARA AIRE K-1038', '98.00', '137.20', '137.20', '5.00');
INSERT INTO `ordendetalle` VALUES ('209', '125', '566', 'K-100E', 'CONTROL REMOTO P/AA K-100E', '95.20', '133.28', '133.28', '1.00');
INSERT INTO `ordendetalle` VALUES ('210', '126', '560', 'MS-254BT', 'PARLANTE PORTATIL MS-254BT', '409.92', '573.89', '573.89', '1.00');
INSERT INTO `ordendetalle` VALUES ('211', '126', '614', '2226', 'CARGADOR SAMSUNG S8  C/NEGRA T-50 2226', '75.60', '120.96', '120.96', '1.00');
INSERT INTO `ordendetalle` VALUES ('212', '126', '629', 'MS-268-270', 'PARLANTE BT C/ROJA MS-269', '558.88', '838.32', '838.32', '1.00');
INSERT INTO `ordendetalle` VALUES ('213', '127', '702', '141228', 'MINI TECLADO PARA SMART  ILUMINADO KP21SDL-RGB', '387.80', '542.92', '542.92', '1.00');
INSERT INTO `ordendetalle` VALUES ('214', '127', '467', '6701', 'PARALANTE PC C/CONTROL - BT  USBF-601', '378.42', '567.63', '567.63', '1.00');
INSERT INTO `ordendetalle` VALUES ('215', '127', '628', 'MS-277', 'PARLANTE BT CAJA ROJA FM MS -278-279', '428.96', '643.44', '643.44', '1.00');
INSERT INTO `ordendetalle` VALUES ('216', '128', '214', 'CONTR', 'Controlador GBR PRO DJ 100 MK II', '3888.94', '5055.62', '5055.62', '5.00');
INSERT INTO `ordendetalle` VALUES ('217', '128', '688', 'PRO18 ', 'PARLANTE PEAVEY PRO18 18\"', '2464.00', '3449.60', '3449.60', '7.00');
INSERT INTO `ordendetalle` VALUES ('218', '128', '598', '391', 'CONTROL REMOTO PARA DECO', '32.67', '49.01', '49.01', '1.00');
INSERT INTO `ordendetalle` VALUES ('219', '129', '627', 'MS-233', 'PARLANTE BT C/ROJA FMMS-234235', '294.84', '442.26', '442.26', '1.00');
INSERT INTO `ordendetalle` VALUES ('220', '129', '628', 'MS-277', 'PARLANTE BT CAJA ROJA FM MS -278-279', '428.96', '643.44', '643.44', '1.00');
INSERT INTO `ordendetalle` VALUES ('221', '130', '682', 'TV LED', 'TV LED KEN BROWN 32 SMART ', '5460.00', '7644.00', '7644.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('222', '131', '444', '097855124180', 'MOUSE INALAMBRICO M-170', '132.60', '172.38', '172.38', '1.00');
INSERT INTO `ordendetalle` VALUES ('223', '132', null, '-', 'LINTERNA FAROL', '65.00', '65.00', '65.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('224', '132', null, '-', 'CALCULADORA KENKO KK-8985', '65.00', '65.00', '65.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('225', '132', '564', 'SM-SC219 DC219 DL-21', 'CARGADOR LDNIO DOBLE USB 2.1 IPHONES SM-SC219', '107.80', '145.53', '145.53', '1.00');
INSERT INTO `ordendetalle` VALUES ('226', '132', '667', '58935', 'RADIO DE BOLSILLO PANACOM RF-2030', '208.88', '292.43', '292.43', '1.00');
INSERT INTO `ordendetalle` VALUES ('227', '132', '555', 'MS-221BT', 'PARLANTE PORTATIL MS-221BT', '560.00', '756.00', '756.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('228', '132', '627', 'MS-233', 'PARLANTE BT C/ROJA FMMS-234235', '294.84', '442.26', '442.26', '2.00');
INSERT INTO `ordendetalle` VALUES ('229', '133', '588', '397007', 'ENCORDADOS III MILENIUN M ARTIGAS PLATA 720', '135.52', '203.28', '203.28', '1.00');
INSERT INTO `ordendetalle` VALUES ('230', '133', '589', '535015', 'ENCORDADOS PARA ACUSTICA FENDER 70XL-010', '279.44', '419.16', '419.16', '2.00');
INSERT INTO `ordendetalle` VALUES ('231', '133', '593', '860065', 'TRANSPORTE PINZA ALICE A005MP', '40.60', '60.90', '60.90', '2.00');
INSERT INTO `ordendetalle` VALUES ('232', '133', '555', 'MS-221BT', 'PARLANTE PORTATIL MS-221BT', '560.00', '952.00', '952.00', '3.00');
INSERT INTO `ordendetalle` VALUES ('233', '133', '629', 'MS-268-270', 'PARLANTE BT C/ROJA MS-269', '558.88', '1117.76', '1117.76', '1.00');
INSERT INTO `ordendetalle` VALUES ('234', '133', '628', 'MS-277', 'PARLANTE BT CAJA ROJA FM MS -278-279', '428.96', '857.92', '857.92', '2.00');
INSERT INTO `ordendetalle` VALUES ('235', '133', '560', 'MS-254BT', 'PARLANTE PORTATIL MS-254BT', '409.92', '696.86', '696.86', '1.00');
INSERT INTO `ordendetalle` VALUES ('236', '133', '321', 'MS-184BT', 'PARLANTE PORTATIL BT MS184BT', '419.55', '755.19', '755.19', '1.00');
INSERT INTO `ordendetalle` VALUES ('237', '134', '185', '884938309325', 'Estereo Pioneer DEH-X1850UB', '2940.00', '4116.00', '4116.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('238', '134', '279', 'COLN', 'Corneta/bocina p/driver  larga negra', '57.81', '150.31', '150.31', '1.00');
INSERT INTO `ordendetalle` VALUES ('239', '134', '272', '7897183020351', 'DRIVER BOMBER  DB200X o omhs 100w 75rms', '387.80', '581.70', '581.70', '1.00');
INSERT INTO `ordendetalle` VALUES ('240', '134', null, '-', 'CAJA DOBLE 15 VENTILADA', '2000.00', '2000.00', '2000.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('241', '134', '666', '67760', 'PARLANTE 15 BOMBER BICHO SWBP-15-800 4+4', '3696.00', '5544.00', '5544.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('242', '135', '725', '074590540079', 'MAQUINA COERTA PELO REMINGTON HC1095', '630.00', '976.50', '976.50', '2.00');
INSERT INTO `ordendetalle` VALUES ('243', '135', '717', '0006', 'SACACORCHO AUTOMATICO', '289.80', '579.60', '579.60', '1.00');
INSERT INTO `ordendetalle` VALUES ('244', '135', '714', '6402', 'CARGADOR SAMSUNG BLISTER ORIG 2A', '114.80', '229.60', '229.60', '4.00');
INSERT INTO `ordendetalle` VALUES ('245', '135', '700', '122924', 'MAUSE MINI RETRACTIL OPTICO SEISA DN-K215', '51.52', '92.74', '92.74', '3.00');
INSERT INTO `ordendetalle` VALUES ('246', '135', '719', 'JR071602', 'AUTO ROBOT RACES CAR', '235.20', '470.40', '470.40', '2.00');
INSERT INTO `ordendetalle` VALUES ('247', '135', '709', 'M801', 'CABLE V8 COMUN CON LUZ J-17', '31.08', '77.70', '77.70', '8.00');
INSERT INTO `ordendetalle` VALUES ('248', '135', '710', 'KK-8202-12', 'CALCULADORA DOBLE VISOR', '87.08', '174.16', '174.16', '2.00');
INSERT INTO `ordendetalle` VALUES ('249', '135', '711', '7495', 'CARGADOR  2.5 X7MM ', '70.00', '140.00', '140.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('250', '135', '697', '144165', 'PARLANTE PORTATIL E300 BLUETOOTH ', '301.84', '543.31', '543.31', '3.00');
INSERT INTO `ordendetalle` VALUES ('251', '135', '715', 'G22', 'CARGADOR INOVA 3.1A DUAL G22', '64.40', '128.80', '128.80', '3.00');
INSERT INTO `ordendetalle` VALUES ('252', '135', '720', 'JAC-1003', 'PAWER BANK 9600MAH REAL DAMACO 0038', '135.80', '271.60', '271.60', '3.00');
INSERT INTO `ordendetalle` VALUES ('253', '135', '699', '144330', 'JUEGO CONSOLA PORTATIL 2.4\" SY-988', '330.96', '595.73', '595.73', '1.00');
INSERT INTO `ordendetalle` VALUES ('254', '135', '703', '141195', 'MINI TECLADO INALAMBRICO TV KP09S', '387.80', '698.04', '698.04', '1.00');
INSERT INTO `ordendetalle` VALUES ('255', '135', '698', '144297', 'JUEGO CONSOLA PORTATIL 1.8\" SY-888A', '288.96', '577.92', '577.92', '1.00');
INSERT INTO `ordendetalle` VALUES ('256', '135', '702', '141228', 'MINI TECLADO PARA SMART  ILUMINADO KP21SDL-RGB', '387.80', '698.04', '698.04', '1.00');
INSERT INTO `ordendetalle` VALUES ('257', '135', '721', 'TCL-1500', 'TECLADO MINI DINAX INALAMBRICO', '336.00', '672.00', '672.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('258', '135', '701', '142845', 'MINI TECLADO INALAMBRICO PARA SMART KP21T', '420.00', '756.00', '756.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('259', '135', '716', 'W-34', 'PLANCHA A VAPOR WINCO', '567.00', '1134.00', '1134.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('260', '136', '365', '885170317550', 'PARLANTE ACTIVO  PANASONIC SC-UA3', '6720.00', '9408.00', '9408.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('261', '137', '616', 'LMD998', 'DVD PORTATIL 9.8', '1568.00', '3136.00', '3136.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('262', '138', '321', 'MS-184BT', 'PARLANTE PORTATIL BT MS184BT', '419.55', '755.19', '755.19', '2.00');
INSERT INTO `ordendetalle` VALUES ('263', '138', '559', 'MS-200BT', 'PARLANTE PORTATIL MS-200BT', '385.00', '654.50', '654.50', '2.00');
INSERT INTO `ordendetalle` VALUES ('264', '138', '560', 'MS-254BT', 'PARLANTE PORTATIL MS-254BT', '409.92', '696.86', '696.86', '2.00');
INSERT INTO `ordendetalle` VALUES ('265', '138', '554', 'MS-205BT', 'PARLANTE PORTATIL MS-205BT', '386.40', '656.88', '656.88', '2.00');
INSERT INTO `ordendetalle` VALUES ('266', '138', '555', 'MS-221BT', 'PARLANTE PORTATIL MS-221BT', '560.00', '952.00', '952.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('267', '138', '718', 'SJ-913', 'JOYSTICK  INALAMBRICO 6 EN 1', '221.20', '442.40', '442.40', '2.00');
INSERT INTO `ordendetalle` VALUES ('268', '139', null, '-', 'CELULAR MOTO C PLUS', '4900.00', '4900.00', '4900.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('269', '140', '468', 'K16A-32', 'PARLANTE PC ', '54.63', '152.42', '152.42', '1.00');
INSERT INTO `ordendetalle` VALUES ('270', '140', '704', '141998', 'CARGADOR PORTATIL 6000MAH 925C', '189.84', '341.71', '341.71', '3.00');
INSERT INTO `ordendetalle` VALUES ('271', '140', '537', 'CARGADOR UNIVERSAL P', 'CARGADOR UNIV POWER P/ PC 96W HC-5808', '196.00', '392.00', '392.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('272', '140', '746', '7798130904413', 'RADIO DE BOLSILLO PANACOM RF-2050', '228.76', '343.14', '343.14', '2.00');
INSERT INTO `ordendetalle` VALUES ('273', '140', '204', '7798318655977', 'Foco led c/efecto luminosos inova', '84.00', '201.60', '201.60', '4.00');
INSERT INTO `ordendetalle` VALUES ('274', '140', '565', 'K-1028E', 'CONTROL REMOTO P/AA K-1028', '95.20', '190.40', '190.40', '3.00');
INSERT INTO `ordendetalle` VALUES ('275', '140', '720', 'JAC-1003', 'PAWER BANK 9600MAH REAL DAMACO 0038', '135.80', '271.60', '271.60', '2.00');
INSERT INTO `ordendetalle` VALUES ('276', '140', '166', '6902361204223', 'Radio de mesa dual AM/FM  W-2005', '420.00', '588.00', '588.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('277', '140', '167', '6902361204032', 'Radiode mesa winco Dual w-2004', '364.00', '527.80', '527.80', '1.00');
INSERT INTO `ordendetalle` VALUES ('278', '140', '851', '17898635101922', 'CARGADOR RAPIDO INOVA IN-G52 ', '84.00', '168.00', '168.00', '3.00');
INSERT INTO `ordendetalle` VALUES ('279', '141', null, '-', 'CONTROL REMOTO Direc tv', '180.00', '180.00', '180.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('280', '141', null, '-', 'auricular beats rojo', '200.00', '200.00', '200.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('281', '141', '538', '6944363939505', 'LINTERNA OSR-8881 9LED 17HS 1100MAH', '112.00', '224.00', '224.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('282', '141', '556', 'MS-278BT', 'PARLANTE PORTATIL MS-278BT', '434.00', '737.80', '737.80', '2.00');
INSERT INTO `ordendetalle` VALUES ('283', '141', '560', 'MS-254BT', 'PARLANTE PORTATIL MS-254BT', '409.92', '696.86', '696.86', '1.00');
INSERT INTO `ordendetalle` VALUES ('284', '141', '473', 'X-2670', 'AURICULAR VINCHA M/LIBRES NOGA X-2670', '142.80', '314.16', '314.16', '2.00');
INSERT INTO `ordendetalle` VALUES ('285', '142', '857', '0335', 'HOLDER CAJA BLANCA UNIVERSAL CAR  XM-001', '50.40', '100.80', '100.80', '1.00');
INSERT INTO `ordendetalle` VALUES ('286', '142', '856', '2827', 'HOLDER PARA CELULAR REJILLA DE AUTO', '15.96', '47.88', '47.88', '5.00');
INSERT INTO `ordendetalle` VALUES ('287', '142', null, '-', 'CELULAR UON SMART', '2900.00', '2900.00', '2900.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('288', '142', null, '-', 'RADIO RELOG PANACOM', '590.00', '590.00', '590.00', '1.00');
INSERT INTO `ordendetalle` VALUES ('289', '142', '859', '5901234123426', 'AURICULAR BUETOOHT 3.0 ZUENA', '420.00', '672.00', '672.00', '2.00');
INSERT INTO `ordendetalle` VALUES ('290', '142', '855', 'NG-FUN', 'FUNDA PARA TABLET 7 NOGA 1571 GOMA', '61.60', '154.00', '154.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('291', '142', '858', '1101', 'PICANA CON LINTERNA GRANDE ', '189.00', '378.00', '378.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('292', '142', '854', '3675', 'TV BOX DINAX 4K SM4K-061718278', '1302.00', '1953.00', '1953.00', '5.00');
INSERT INTO `ordendetalle` VALUES ('293', '143', '832', '810115', 'PUAS DUNLOP STD486R HEAVY RED', '13.16', '39.48', '39.48', '12.00');
INSERT INTO `ordendetalle` VALUES ('294', '143', '831', '810100', 'PUAS DUNLOP GELSTD-486R MEDIA LIGTH GREEN', '13.16', '39.48', '39.48', '12.00');
INSERT INTO `ordendetalle` VALUES ('295', '143', '829', '810090', 'PUAS DUNLOP-GELS-STD486-LIGHT-BLUE', '13.16', '39.48', '39.48', '12.00');
INSERT INTO `ordendetalle` VALUES ('296', '143', '828', '810060', 'PUAS DUNLOP-TOTEX 424R WEDGW0.88', '17.36', '47.74', '47.74', '12.00');
INSERT INTO `ordendetalle` VALUES ('297', '143', '827', '810055', 'PUAS DUNLOP-TORTEX-424R WEDGE-073', '17.36', '45.14', '45.14', '1.00');
INSERT INTO `ordendetalle` VALUES ('298', '143', '827', '810055', 'PUAS DUNLOP-TORTEX-424R WEDGE-073', '17.36', '45.14', '45.14', '12.00');
INSERT INTO `ordendetalle` VALUES ('299', '143', '826', '805060', 'PUAS HABESHIAN MOD JAZZ GOTITA CHIQUITA CARBON', '6.72', '33.60', '33.60', '12.00');
INSERT INTO `ordendetalle` VALUES ('300', '143', '825', '805010', 'PUAS HABESHIAN-THIN SURTIDAS', '6.72', '33.60', '33.60', '12.00');
INSERT INTO `ordendetalle` VALUES ('301', '143', '824', '800496', 'PUA TORTOISESHELL MAGMA HEAVY', '5.32', '26.60', '26.60', '12.00');
INSERT INTO `ordendetalle` VALUES ('302', '143', '823', '800481', 'PUA TORTOISESHELL MAGMA MEDIUM', '5.32', '26.60', '26.60', '12.00');
INSERT INTO `ordendetalle` VALUES ('303', '143', '822', '800170', 'PORTA PUAS HABESHIAN C/LLAVERO', '36.96', '64.68', '64.68', '5.00');
INSERT INTO `ordendetalle` VALUES ('304', '143', '821', '775702', 'PEDAL DANELECTRO-FAB-D2-OVERDRIVE', '703.08', '1089.77', '1089.77', '1.00');
INSERT INTO `ordendetalle` VALUES ('305', '143', '820', '740113', 'PANDERETAS DE MADERA RESOUND-JB-908H 20 CM', '201.88', '323.01', '323.01', '2.00');
INSERT INTO `ordendetalle` VALUES ('306', '143', '819', '7300245', 'PALILLOS NOVA (BY VIC FIRTH)5B PTA NYLON', '218.96', '328.44', '328.44', '2.00');
INSERT INTO `ordendetalle` VALUES ('307', '143', '818', '730235', 'PALILLOS NOVA(BY VIC FIRTH)5A PTA NYLON', '218.96', '317.49', '317.49', '2.00');
INSERT INTO `ordendetalle` VALUES ('308', '143', '817', '730083', 'PALILLOS L.A SPECIAL (BY PRO MARK)7A PTA PLASTICA', '188.72', '273.64', '273.64', '2.00');
INSERT INTO `ordendetalle` VALUES ('309', '143', '816', '730080', 'PALILLOS L.A SPECIAL(BY PROMARK)5B PTAPLASTICA', '181.16', '253.62', '253.62', '2.00');
INSERT INTO `ordendetalle` VALUES ('310', '143', '809', '730070', 'PALLILOS L.A SPECIAL (BY PRO MARK)5A PTA PLASTICA', '188.72', '301.95', '301.95', '2.00');
INSERT INTO `ordendetalle` VALUES ('311', '143', '808', '730064', 'PALILLOS L.A SPECIAL(BY PRO MARK) 7A -PTA MADERA', '171.64', '257.46', '257.46', '2.00');
INSERT INTO `ordendetalle` VALUES ('312', '143', '807', '722121', 'PALILLOS BATEROS 5 B PUNTA MADERA COLOR', '63.00', '116.55', '116.55', '5.00');
INSERT INTO `ordendetalle` VALUES ('313', '143', '806', '722111', 'PALILLOS BATEROS 5A PTA MADERA COLOR', '63.00', '113.40', '113.40', '5.00');
INSERT INTO `ordendetalle` VALUES ('314', '143', '805', '722060', 'PALILLOS PLASTICO ECONOMICOS', '25.48', '50.96', '50.96', '5.00');
INSERT INTO `ordendetalle` VALUES ('315', '143', '804', '674026', 'MELODICA A PIANO  LAZER FTK-27 ESTUCHE PLASTICO', '644.84', '1225.20', '1225.20', '1.00');
INSERT INTO `ordendetalle` VALUES ('316', '143', '803', '674025', 'MELODICA PIANO  LAZER FTK32', '682.36', '1091.78', '1091.78', '1.00');
INSERT INTO `ordendetalle` VALUES ('317', '143', '846', '900500', 'RESINA PARA VIOLIN  HEIDMOND', '40.60', '81.20', '81.20', '5.00');
INSERT INTO `ordendetalle` VALUES ('318', '143', '845', '855005', 'TRANSPORTE Nº2 AUTOMATICO (18-049)', '142.52', '356.30', '356.30', '2.00');
INSERT INTO `ordendetalle` VALUES ('319', '143', '843', '855003', 'TRANSPORTE N3 ABIERTO GRUESO(18-047)', '103.32', '361.62', '361.62', '2.00');
INSERT INTO `ordendetalle` VALUES ('320', '143', '842', '840010', 'SOPORTE PARA BOMBO PESADO-KRUPA (08-018)', '1457.12', '2185.68', '2185.68', '1.00');
INSERT INTO `ordendetalle` VALUES ('321', '143', '841', '810728', 'PUAS ERNIE BALL CELULOIDE 9128 HEAVY', '20.72', '41.44', '41.44', '12.00');
INSERT INTO `ordendetalle` VALUES ('322', '143', '840', '810718', 'PUAS ERNIE BALL CELULOIDE 91218MEDIUM', '17.36', '43.40', '43.40', '12.00');
INSERT INTO `ordendetalle` VALUES ('323', '143', '847', '810500', 'PUAS DUNLOP NYLON C/MAX GRIP 449R0.6 TM', '18.20', '45.50', '45.50', '12.00');
INSERT INTO `ordendetalle` VALUES ('324', '143', '839', '810430', 'PUAS FENDER HEAVY ', '23.24', '46.48', '46.48', '12.00');
INSERT INTO `ordendetalle` VALUES ('325', '143', '838', '810420', 'PUAS FENDER MEDIUM', '16.80', '42.00', '42.00', '12.00');
INSERT INTO `ordendetalle` VALUES ('326', '143', '837', '810280', 'PUAS DUNLOP BLACKLINE BL1001.00C/DIBUJOS', '21.56', '43.12', '43.12', '12.00');
INSERT INTO `ordendetalle` VALUES ('327', '143', '836', '810270', 'PUAS DUNLOP BLACKLINE BL100-073C/DIBUJOS', '21.56', '43.12', '43.12', '12.00');
INSERT INTO `ordendetalle` VALUES ('328', '143', '835', '810255', 'PUAS DUNLOP TORTEX BAJO 0.88', '17.36', '43.40', '43.40', '12.00');
INSERT INTO `ordendetalle` VALUES ('329', '143', '834', '810190', 'PUAS DUNLOP SHELL CLASSIC 483 HAEVY', '18.76', '46.90', '46.90', '12.00');
INSERT INTO `ordendetalle` VALUES ('330', '143', '833', '810180', 'PUAS DUNLOP SHELL CLASSIC-483R MEDIUM', '18.76', '46.90', '46.90', '12.00');
INSERT INTO `ordendetalle` VALUES ('331', '143', '802', '674013', 'MELODICA 13 NOTAS MAGMA', '135.52', '230.38', '230.38', '3.00');
INSERT INTO `ordendetalle` VALUES ('332', '143', '801', '643501', 'UKELELE LEONARD CON FUNDA COLORES', '1093.68', '1749.89', '1749.89', '1.00');
INSERT INTO `ordendetalle` VALUES ('333', '143', '800', '635505', 'GUITARRA TROVADOR DE ESTUDIO C/FUNDA', '1563.24', '2735.67', '2735.67', '1.00');
INSERT INTO `ordendetalle` VALUES ('334', '143', '798', '605015', 'FUNDA 15 CRIOLLA TELA DE AVION C/BANDOLY CIERRE', '218.12', '436.24', '436.24', '2.00');
INSERT INTO `ordendetalle` VALUES ('335', '143', '797', '605007', 'FUNDA 07 CRIOLLA MEDIANA ALCOLCHADA TELA DE AVION', '395.92', '791.84', '791.84', '2.00');
INSERT INTO `ordendetalle` VALUES ('336', '143', '796', '605006', 'FUNDA 06-CRIOLLA-MEDIANA TELA DE AVION', '225.68', '394.94', '394.94', '1.00');
INSERT INTO `ordendetalle` VALUES ('337', '143', '795', '605005', 'FUNA 05 -CRIOLLA-(MEDIANA) ECON.PLASTICO', '133.84', '267.68', '267.68', '1.00');
INSERT INTO `ordendetalle` VALUES ('338', '143', '794', '525307', 'ENCOR.UKULELE CAMPANA ', '82.04', '139.47', '139.47', '5.00');
INSERT INTO `ordendetalle` VALUES ('339', '143', '793', '515020', 'ENCOR.SAN SEBASTIAN 810 (7CUERDA)C/3ªLISA Y LAMINA', '245.56', '405.17', '405.17', '2.00');
INSERT INTO `ordendetalle` VALUES ('340', '143', '792', '492140', 'ENCOR.ELECTRICA MAGMA GE-140 ED-010 L/LAR.DURACION', '196.56', '294.84', '294.84', '2.00');
INSERT INTO `ordendetalle` VALUES ('341', '143', '791', '492110', 'ENCOR.ELECTRICA MAGMA GE110ED-009EL/LAR.DURACION', '196.56', '314.50', '314.50', '2.00');
INSERT INTO `ordendetalle` VALUES ('342', '143', '790', '437120', 'ENCORD.ACUSTICA PATAGONIA GA-120G LIGTH-010', '138.32', '242.06', '242.06', '2.00');
INSERT INTO `ordendetalle` VALUES ('343', '143', '789', '420007', 'ENCORDADO RUFINO MUJICA  NEGRO', '140.28', '224.45', '224.45', '5.00');
INSERT INTO `ordendetalle` VALUES ('344', '143', '788', '415007', 'ENCORDADO RUFINO MUJICA GRIS', '169.40', '279.51', '279.51', '5.00');
INSERT INTO `ordendetalle` VALUES ('345', '143', '787', '410007', 'ENCORDADOS RUFINO MUJICA DORADO', '154.56', '247.30', '247.30', '5.00');
INSERT INTO `ordendetalle` VALUES ('346', '143', '786', '350010', 'CUERDA GUITARRON 10ªCAMPANA', '101.64', '152.46', '152.46', '2.00');
INSERT INTO `ordendetalle` VALUES ('347', '143', '785', '350009', 'CUERDA P/GUITARRON 9ª CAMPANA', '79.24', '126.78', '126.78', '2.00');
INSERT INTO `ordendetalle` VALUES ('348', '143', '784', '350008', 'CUERDAS P/GUITARRON 8ª CAMPANA', '65.80', '105.28', '105.28', '2.00');
INSERT INTO `ordendetalle` VALUES ('349', '143', '783', '350007', 'CUERDAS P/GUITARRON 7ª.CAMPANA', '42.84', '72.83', '72.83', '2.00');
INSERT INTO `ordendetalle` VALUES ('350', '143', '781', '335010', 'CORREA P/REDOBLANTE ', '42.28', '105.70', '105.70', '2.00');
INSERT INTO `ordendetalle` VALUES ('351', '143', '782', '330051', 'CORREA BOMBO MURGA  MAGMA 50 MM', '61.88', '148.51', '148.51', '2.00');
INSERT INTO `ordendetalle` VALUES ('352', '143', '780', '3055150', 'CORREA ALYMAR CRIOLLA DOBLE ENGANCHE REGULABLE', '82.88', '165.76', '165.76', '2.00');
INSERT INTO `ordendetalle` VALUES ('353', '143', '779', '305100', 'CORREA ALYMAR  CRIOLLA BORDADA TIPO ACE', '68.60', '137.20', '137.20', '2.00');
INSERT INTO `ordendetalle` VALUES ('354', '143', '778', '290200', 'REPUESTO P/CLAVIJERO - PERNOS', '31.64', '50.62', '50.62', '10.00');
INSERT INTO `ordendetalle` VALUES ('355', '143', '777', '290190', 'REPUESTO  CLAVIJERP /ENGRANAJES', '26.04', '39.06', '39.06', '10.00');
INSERT INTO `ordendetalle` VALUES ('356', '143', '776', '285113', 'MANIVELA  OLYMPIA PW60 STD', '56.28', '95.68', '95.68', '2.00');
INSERT INTO `ordendetalle` VALUES ('357', '143', '775', '285112', 'MANIVELA OLYMPIA PW70', '56.28', '92.86', '92.86', '2.00');
INSERT INTO `ordendetalle` VALUES ('358', '143', '774', '285111', 'MANIVELA A009A DENVER ', '42.28', '71.88', '71.88', '2.00');
INSERT INTO `ordendetalle` VALUES ('359', '143', '773', '200607', 'BOMBO CRIOLLO Nº7 C/PARCHE DE CABRA  41X45', '1067.36', '1707.78', '1707.78', '1.00');
INSERT INTO `ordendetalle` VALUES ('360', '143', '772', '103450', 'TILTER LAZER - DCH 1018 BPROFESIONAL DES', '186.48', '298.37', '298.37', '2.00');
INSERT INTO `ordendetalle` VALUES ('361', '143', '771', '103440', 'TILTER LAZER-DCH216 STANDAR DESP.', '110.04', '176.06', '176.06', '2.00');

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores` (
  `prvId` int(11) NOT NULL AUTO_INCREMENT,
  `prvNombre` varchar(100) DEFAULT NULL,
  `prvApellido` varchar(100) DEFAULT NULL,
  `prvRazonSocial` varchar(100) DEFAULT NULL,
  `docId` int(11) NOT NULL,
  `prvDocumento` varchar(13) NOT NULL,
  `prvDomicilio` varchar(250) DEFAULT NULL,
  `prvMail` varchar(50) DEFAULT NULL,
  `prvEstado` varchar(2) DEFAULT NULL,
  `prvTelefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`prvId`),
  UNIQUE KEY `docId` (`docId`,`prvDocumento`) USING BTREE,
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`docId`) REFERENCES `tipos_documentos` (`docId`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES ('1', 'Nombre', 'Proveedor 1', 'RS Proveedor 1', '1', '1', 'mendoza', '', 'AC', '');
INSERT INTO `proveedores` VALUES ('2', 'Nombre', 'Proveedor 2', 'RS Proveedor 2', '2', '20045435653', 'Leiva 4710 (1427) Capital Federal', 'pedidos@trooner.com.ar', 'AC', '48542158');
INSERT INTO `proveedores` VALUES ('3', 'Nombre', 'Proveedor 3', 'RS Proveedor 3', '2', '30711875669', 'Lucio Mansilla 502', 'ventas@audio-insumos.com.ar', 'AC', '02614321900-4311576');
INSERT INTO `proveedores` VALUES ('4', 'Nombre', 'Proveedor 4', 'RS Proveedor 4', '2', '20-24662997-9', 'Gral.Pedernera 576 Vª Madero Bs As', 'ventas@ingetec.com.ar', 'AC', '54932137051');
INSERT INTO `proveedores` VALUES ('5', 'Nombre', 'Proveedor 5', 'RS Proveedor 5', '2', '1', '1', '1', 'AC', '1');
INSERT INTO `proveedores` VALUES ('6', 'Nombre', 'Proveedor 6', 'RS Proveedor 6', '2', '20-10870907-8', 'Liniers 830 Bº Cofico Cordoba', '1', 'AC', '3514731322 / 4731307');
INSERT INTO `proveedores` VALUES ('7', 'Nombre', 'Proveedor 7', 'RS Proveedor 7', '2', '30-63313914-4', 'Luzuriaga 38 Bs.As ', 'Info@kolram.com.ar', 'AC', '011 43063006 fax 4306420');
INSERT INTO `proveedores` VALUES ('8', 'Nombre', 'Proveedor 8', 'RS Proveedor 8', '2', '20-27658911-4', 'AV.Santa Fe 2847 PB  \"B\" Bs As', '1', 'AC', '1');
INSERT INTO `proveedores` VALUES ('9', 'Nombre', 'Proveedor 9', 'RS Proveedor 9', '2', '30651655516', 'Eusebio Blanco  3696 ', '', 'AC', '26104202678');
INSERT INTO `proveedores` VALUES ('10', 'Nombre', 'Proveedor 10', 'RS Proveedor 10', '2', '307089559932', 'Pasteur 348 BS AS', '', 'AC', '01149517549');
INSERT INTO `proveedores` VALUES ('11', 'Nombre', 'Proveedor 11', 'RS Proveedor 11', '2', '23-14696455-9', 'Aberastain 1093 sur  SAN JUAN', 'autopartesg@hotmail.com', 'AC', '0264-4226322');
INSERT INTO `proveedores` VALUES ('12', 'Nombre', 'Proveedor 12', 'RS Proveedor 12', '2', '23-23146549-9', 'AV.Hipolito Yrigoyen  9257 LOmas de Zamora', '', 'AC', '');
INSERT INTO `proveedores` VALUES ('13', 'Nombre', 'Proveedor 13', 'RS Proveedor 13', '2', '20-29205584-7', 'Av.Rivadavia 5512 2 piso local 56', '', 'AC', '011-44317025');
INSERT INTO `proveedores` VALUES ('14', 'Nombre', 'Proveedor 14', 'RS Proveedor 14', '2', '.', 'Av. COrdoba 402 E ', 'elec_sj@infovia.com.ar', 'AC', '4274012');
INSERT INTO `proveedores` VALUES ('15', 'Nombre', 'Proveedor 15', 'RS Proveedor 15', '2', '30-70217915-3', 'Pte. Saenz Peña 788 piso 9', '.', 'AC', '011-46553333');
INSERT INTO `proveedores` VALUES ('16', 'Nombre', 'Proveedor 16', 'RS Proveedor 16', '2', '30707551611', 'AV . Bartolome  Mitre 1416 florida Oeste ', '', 'AC', '01147617661');
INSERT INTO `proveedores` VALUES ('17', 'Nombre', 'Proveedor 17', 'RS Proveedor 17', '1', '28888888', '11', '', 'AC', '');
INSERT INTO `proveedores` VALUES ('18', 'Nombre', 'Proveedor 18', 'RS Proveedor 18', '2', '20-22812837-7', '', '', 'AC', '');
INSERT INTO `proveedores` VALUES ('19', 'Nombre', 'Proveedor 19', 'RS Proveedor 19', '2', '20957035346', 'SARMIENTO 2872 BS AS', '', 'AC', '');

-- ----------------------------
-- Table structure for receptions
-- ----------------------------
DROP TABLE IF EXISTS `receptions`;
CREATE TABLE `receptions` (
  `recId` int(11) NOT NULL AUTO_INCREMENT,
  `recFecha` datetime NOT NULL,
  `recEstado` varchar(2) NOT NULL,
  `prvId` int(11) NOT NULL,
  `recObservacion` varchar(250) DEFAULT NULL,
  `tcId` int(11) DEFAULT NULL,
  `tcNumero` varchar(12) DEFAULT NULL,
  `tcImporte` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`recId`),
  KEY `prvId` (`prvId`) USING BTREE,
  KEY `tcId` (`tcId`) USING BTREE,
  CONSTRAINT `receptions_ibfk_1` FOREIGN KEY (`prvId`) REFERENCES `proveedores` (`prvId`) ON UPDATE CASCADE,
  CONSTRAINT `receptions_ibfk_2` FOREIGN KEY (`tcId`) REFERENCES `tipo_comprobante` (`tcId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of receptions
-- ----------------------------
INSERT INTO `receptions` VALUES ('4', '2018-02-28 00:00:00', 'CF', '1', '', '4', '1', '0.00');
INSERT INTO `receptions` VALUES ('5', '2018-02-23 00:00:00', 'CF', '2', '', '1', '0003-0008195', '1679.93');
INSERT INTO `receptions` VALUES ('6', '2018-03-06 00:00:00', 'DS', '3', 'p', '1', '0003-0000121', '27725.02');
INSERT INTO `receptions` VALUES ('7', '2018-03-06 00:00:00', 'AC', '3', 'DEBO AL 11/03', '1', '000300001210', '27725.02');
INSERT INTO `receptions` VALUES ('8', '2018-03-05 00:00:00', 'AC', '4', 'falta factura A', '4', '0011-0000001', '23100.00');
INSERT INTO `receptions` VALUES ('9', '2018-03-13 00:00:00', 'AC', '5', ' A PAGAR DENTRO DE 15 DIAS A PARTIR DE LA FECHA', '4', '1', '75.00');
INSERT INTO `receptions` VALUES ('10', '2018-03-06 00:00:00', 'AC', '6', 'la factura se aduada al 14/03/18', '1', '0004-0000327', '17242.35');
INSERT INTO `receptions` VALUES ('11', '2018-03-07 00:00:00', 'AC', '7', 'Pago de contado', '4', '9999-0000354', '33996.68');
INSERT INTO `receptions` VALUES ('12', '2018-03-14 00:00:00', 'DS', '8', 'Pagado', '1', '0004-0000005', '17999.96');
INSERT INTO `receptions` VALUES ('13', '2018-03-12 00:00:00', 'AC', '9', '', '4', '0013-0011172', '13066.05');
INSERT INTO `receptions` VALUES ('14', '2018-03-12 00:00:00', 'AC', '9', 'adeuda  remito hasta el dia 14/03', '4', '0013-0011172', '13066.05');
INSERT INTO `receptions` VALUES ('15', '2018-03-12 00:00:00', 'DS', '3', 'Pagado', '1', '0003-0000130', '10053.97');
INSERT INTO `receptions` VALUES ('16', '2018-03-12 00:00:00', 'DS', '3', 'Pagado', '1', '0003-0000130', '10053.97');
INSERT INTO `receptions` VALUES ('17', '2018-03-13 00:00:00', 'AC', '3', 'se debe hasta el 14/03', '1', '0003-0000131', '10671.88');
INSERT INTO `receptions` VALUES ('18', '2018-03-12 00:00:00', 'AC', '3', '', '1', '0003-0000130', '9485.49');
INSERT INTO `receptions` VALUES ('19', '2018-03-13 00:00:00', 'AC', '7', '10.5 % (IVA) PAGADO', '4', '000800002429', '16465.68');
INSERT INTO `receptions` VALUES ('20', '2018-03-13 00:00:00', 'AC', '10', '359551075932466 359551076134476 359551076138931 359551075936921 359551076103745359551075901735 359551075925890 359551076127900', '1', '0003-0000101', '1800.00');
INSERT INTO `receptions` VALUES ('21', '2018-03-13 00:00:00', 'AC', '10', 'PAGADO', '4', '0000-0000000', '2492.00');
INSERT INTO `receptions` VALUES ('22', '2018-03-14 00:00:00', 'DS', '11', '', '1', '0002-0000130', '2435.42');
INSERT INTO `receptions` VALUES ('23', '2018-03-14 00:00:00', 'AC', '3', '', '1', '0002-0000130', '2435.42');
INSERT INTO `receptions` VALUES ('24', '2018-03-14 00:00:00', 'AC', '11', '', '4', '00016301', '1677.46');
INSERT INTO `receptions` VALUES ('25', '2018-03-27 00:00:00', 'AC', '2', 'se adeuda al dia de la fecha 27/03/2018', '1', '0003-0000825', '9695.75');
INSERT INTO `receptions` VALUES ('26', '2018-03-27 00:00:00', 'DS', '3', '', '4', '0212-0002930', '11418.36');
INSERT INTO `receptions` VALUES ('27', '2018-03-27 00:00:00', 'AC', '3', 'total $11418.36 NOTA DE CREDITO -$745.60', '4', '0212-0002930', '10672.76');
INSERT INTO `receptions` VALUES ('28', '2018-03-27 00:00:00', 'AC', '3', '', '4', '0212-0002930', '346.86');
INSERT INTO `receptions` VALUES ('29', '2018-04-10 00:00:00', 'AC', '13', 'cancelado x mercado pago', '1', '0002-0000440', '2200.01');
INSERT INTO `receptions` VALUES ('30', '2018-04-10 00:00:00', 'AC', '14', '', '4', '01', '1528.00');
INSERT INTO `receptions` VALUES ('31', '2018-04-10 00:00:00', 'AC', '15', 'falta cargar a la lista parlante b52 6 \" cantidad 10 ', '1', '0016-0003250', '45748.60');
INSERT INTO `receptions` VALUES ('32', '2018-04-10 00:00:00', 'AC', '16', '', '1', '0002-0002890', '29397.59');
INSERT INTO `receptions` VALUES ('33', '2018-05-11 00:00:00', 'DS', '3', '', '1', '0003-0000212', '18945.24');
INSERT INTO `receptions` VALUES ('34', '2018-06-29 00:00:00', 'AC', '18', '', '4', 'X', '22855.41');
INSERT INTO `receptions` VALUES ('35', '2018-07-05 00:00:00', 'AC', '19', 'PAGADO', '4', 'OC0212', '63397.61');
INSERT INTO `receptions` VALUES ('36', '2018-07-05 00:00:00', 'AC', '19', 'ADJ.RCEPCION ANTERIOR $63397.61', '4', '', '0.00');
INSERT INTO `receptions` VALUES ('37', '2018-07-06 00:00:00', 'AC', '3', '', '4', '0212-0003087', '24403.90');
INSERT INTO `receptions` VALUES ('38', '2018-07-27 00:00:00', 'AC', '18', 'PAGADO', '4', '000200000000', '23895.20');
INSERT INTO `receptions` VALUES ('39', '2018-08-06 00:00:00', 'AC', '3', 'DEVOLUCION FUENTE (16148) IMPORTE TOTAL REMITO  $20062.91', '4', '0212-0003124', '17067.11');

-- ----------------------------
-- Table structure for receptionsdetail
-- ----------------------------
DROP TABLE IF EXISTS `receptionsdetail`;
CREATE TABLE `receptionsdetail` (
  `recdId` int(11) NOT NULL AUTO_INCREMENT,
  `recId` int(11) NOT NULL,
  `artId` int(11) NOT NULL,
  `recdCant` int(11) NOT NULL,
  PRIMARY KEY (`recdId`),
  KEY `recId` (`recId`) USING BTREE,
  KEY `artId` (`artId`) USING BTREE,
  CONSTRAINT `receptionsdetail_ibfk_1` FOREIGN KEY (`recId`) REFERENCES `receptions` (`recId`) ON UPDATE CASCADE,
  CONSTRAINT `receptionsdetail_ibfk_2` FOREIGN KEY (`artId`) REFERENCES `articles` (`artId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of receptionsdetail
-- ----------------------------
INSERT INTO `receptionsdetail` VALUES ('1', '4', '1', '12');
INSERT INTO `receptionsdetail` VALUES ('2', '4', '3', '20');
INSERT INTO `receptionsdetail` VALUES ('3', '5', '143', '10');
INSERT INTO `receptionsdetail` VALUES ('4', '5', '142', '10');
INSERT INTO `receptionsdetail` VALUES ('5', '6', '169', '10');
INSERT INTO `receptionsdetail` VALUES ('6', '6', '168', '10');
INSERT INTO `receptionsdetail` VALUES ('7', '6', '162', '10');
INSERT INTO `receptionsdetail` VALUES ('8', '7', '171', '2');
INSERT INTO `receptionsdetail` VALUES ('9', '7', '170', '20');
INSERT INTO `receptionsdetail` VALUES ('10', '7', '174', '2');
INSERT INTO `receptionsdetail` VALUES ('11', '7', '173', '1');
INSERT INTO `receptionsdetail` VALUES ('12', '7', '175', '2');
INSERT INTO `receptionsdetail` VALUES ('13', '7', '176', '2');
INSERT INTO `receptionsdetail` VALUES ('14', '7', '165', '1');
INSERT INTO `receptionsdetail` VALUES ('15', '7', '166', '1');
INSERT INTO `receptionsdetail` VALUES ('16', '7', '167', '1');
INSERT INTO `receptionsdetail` VALUES ('17', '7', '164', '4');
INSERT INTO `receptionsdetail` VALUES ('18', '7', '172', '1');
INSERT INTO `receptionsdetail` VALUES ('19', '7', '163', '4');
INSERT INTO `receptionsdetail` VALUES ('20', '7', '169', '10');
INSERT INTO `receptionsdetail` VALUES ('21', '7', '168', '10');
INSERT INTO `receptionsdetail` VALUES ('22', '7', '162', '10');
INSERT INTO `receptionsdetail` VALUES ('23', '8', '186', '4');
INSERT INTO `receptionsdetail` VALUES ('24', '8', '185', '5');
INSERT INTO `receptionsdetail` VALUES ('25', '9', '204', '10');
INSERT INTO `receptionsdetail` VALUES ('26', '10', '212', '2');
INSERT INTO `receptionsdetail` VALUES ('27', '10', '213', '10');
INSERT INTO `receptionsdetail` VALUES ('28', '10', '211', '10');
INSERT INTO `receptionsdetail` VALUES ('29', '11', '216', '6');
INSERT INTO `receptionsdetail` VALUES ('30', '11', '215', '2');
INSERT INTO `receptionsdetail` VALUES ('31', '11', '214', '1');
INSERT INTO `receptionsdetail` VALUES ('32', '12', '217', '50');
INSERT INTO `receptionsdetail` VALUES ('33', '12', '22', '50');
INSERT INTO `receptionsdetail` VALUES ('34', '13', '218', '5');
INSERT INTO `receptionsdetail` VALUES ('35', '14', '219', '5');
INSERT INTO `receptionsdetail` VALUES ('36', '14', '218', '5');
INSERT INTO `receptionsdetail` VALUES ('37', '15', '224', '10');
INSERT INTO `receptionsdetail` VALUES ('38', '15', '221', '10');
INSERT INTO `receptionsdetail` VALUES ('39', '15', '223', '10');
INSERT INTO `receptionsdetail` VALUES ('40', '15', '222', '5');
INSERT INTO `receptionsdetail` VALUES ('41', '16', '227', '4');
INSERT INTO `receptionsdetail` VALUES ('42', '16', '228', '4');
INSERT INTO `receptionsdetail` VALUES ('43', '16', '226', '1');
INSERT INTO `receptionsdetail` VALUES ('44', '16', '225', '20');
INSERT INTO `receptionsdetail` VALUES ('45', '16', '224', '10');
INSERT INTO `receptionsdetail` VALUES ('46', '16', '221', '10');
INSERT INTO `receptionsdetail` VALUES ('47', '16', '223', '10');
INSERT INTO `receptionsdetail` VALUES ('48', '16', '222', '5');
INSERT INTO `receptionsdetail` VALUES ('49', '17', '229', '4');
INSERT INTO `receptionsdetail` VALUES ('50', '18', '227', '4');
INSERT INTO `receptionsdetail` VALUES ('51', '18', '228', '4');
INSERT INTO `receptionsdetail` VALUES ('52', '18', '226', '1');
INSERT INTO `receptionsdetail` VALUES ('53', '18', '225', '20');
INSERT INTO `receptionsdetail` VALUES ('54', '18', '224', '10');
INSERT INTO `receptionsdetail` VALUES ('55', '18', '221', '10');
INSERT INTO `receptionsdetail` VALUES ('56', '18', '223', '10');
INSERT INTO `receptionsdetail` VALUES ('57', '18', '222', '5');
INSERT INTO `receptionsdetail` VALUES ('58', '19', '231', '6');
INSERT INTO `receptionsdetail` VALUES ('59', '19', '230', '6');
INSERT INTO `receptionsdetail` VALUES ('60', '20', '233', '1');
INSERT INTO `receptionsdetail` VALUES ('61', '20', '232', '3');
INSERT INTO `receptionsdetail` VALUES ('62', '21', '236', '8');
INSERT INTO `receptionsdetail` VALUES ('63', '21', '235', '4');
INSERT INTO `receptionsdetail` VALUES ('64', '21', '234', '8');
INSERT INTO `receptionsdetail` VALUES ('65', '22', '240', '5');
INSERT INTO `receptionsdetail` VALUES ('66', '22', '238', '5');
INSERT INTO `receptionsdetail` VALUES ('67', '23', '245', '3');
INSERT INTO `receptionsdetail` VALUES ('68', '23', '244', '3');
INSERT INTO `receptionsdetail` VALUES ('69', '23', '243', '2');
INSERT INTO `receptionsdetail` VALUES ('70', '23', '241', '2');
INSERT INTO `receptionsdetail` VALUES ('71', '23', '239', '2');
INSERT INTO `receptionsdetail` VALUES ('72', '23', '240', '5');
INSERT INTO `receptionsdetail` VALUES ('73', '23', '238', '5');
INSERT INTO `receptionsdetail` VALUES ('74', '24', '242', '3');
INSERT INTO `receptionsdetail` VALUES ('75', '24', '243', '2');
INSERT INTO `receptionsdetail` VALUES ('76', '24', '241', '2');
INSERT INTO `receptionsdetail` VALUES ('77', '24', '239', '2');
INSERT INTO `receptionsdetail` VALUES ('78', '24', '240', '5');
INSERT INTO `receptionsdetail` VALUES ('79', '24', '240', '5');
INSERT INTO `receptionsdetail` VALUES ('80', '25', '250', '10');
INSERT INTO `receptionsdetail` VALUES ('81', '25', '251', '10');
INSERT INTO `receptionsdetail` VALUES ('82', '25', '249', '30');
INSERT INTO `receptionsdetail` VALUES ('83', '25', '254', '10');
INSERT INTO `receptionsdetail` VALUES ('84', '25', '253', '10');
INSERT INTO `receptionsdetail` VALUES ('85', '25', '252', '5');
INSERT INTO `receptionsdetail` VALUES ('86', '25', '255', '2');
INSERT INTO `receptionsdetail` VALUES ('87', '25', '248', '10');
INSERT INTO `receptionsdetail` VALUES ('88', '25', '246', '20');
INSERT INTO `receptionsdetail` VALUES ('89', '25', '246', '50');
INSERT INTO `receptionsdetail` VALUES ('90', '25', '258', '3');
INSERT INTO `receptionsdetail` VALUES ('91', '25', '257', '3');
INSERT INTO `receptionsdetail` VALUES ('92', '25', '116', '10');
INSERT INTO `receptionsdetail` VALUES ('93', '25', '107', '20');
INSERT INTO `receptionsdetail` VALUES ('94', '25', '60', '20');
INSERT INTO `receptionsdetail` VALUES ('95', '25', '84', '5');
INSERT INTO `receptionsdetail` VALUES ('96', '25', '84', '10');
INSERT INTO `receptionsdetail` VALUES ('97', '25', '256', '10');
INSERT INTO `receptionsdetail` VALUES ('98', '25', '79', '5');
INSERT INTO `receptionsdetail` VALUES ('99', '25', '97', '10');
INSERT INTO `receptionsdetail` VALUES ('100', '26', '271', '2');
INSERT INTO `receptionsdetail` VALUES ('101', '26', '269', '2');
INSERT INTO `receptionsdetail` VALUES ('102', '26', '268', '2');
INSERT INTO `receptionsdetail` VALUES ('103', '26', '267', '2');
INSERT INTO `receptionsdetail` VALUES ('104', '26', '266', '6');
INSERT INTO `receptionsdetail` VALUES ('105', '26', '265', '6');
INSERT INTO `receptionsdetail` VALUES ('106', '26', '264', '2');
INSERT INTO `receptionsdetail` VALUES ('107', '26', '263', '2');
INSERT INTO `receptionsdetail` VALUES ('108', '26', '262', '2');
INSERT INTO `receptionsdetail` VALUES ('109', '26', '272', '20');
INSERT INTO `receptionsdetail` VALUES ('110', '26', '261', '4');
INSERT INTO `receptionsdetail` VALUES ('111', '27', '271', '2');
INSERT INTO `receptionsdetail` VALUES ('112', '27', '269', '2');
INSERT INTO `receptionsdetail` VALUES ('113', '27', '268', '2');
INSERT INTO `receptionsdetail` VALUES ('114', '27', '266', '6');
INSERT INTO `receptionsdetail` VALUES ('115', '27', '264', '2');
INSERT INTO `receptionsdetail` VALUES ('116', '27', '263', '2');
INSERT INTO `receptionsdetail` VALUES ('117', '27', '262', '2');
INSERT INTO `receptionsdetail` VALUES ('118', '27', '261', '4');
INSERT INTO `receptionsdetail` VALUES ('119', '27', '272', '20');
INSERT INTO `receptionsdetail` VALUES ('120', '28', '279', '6');
INSERT INTO `receptionsdetail` VALUES ('121', '29', '281', '20');
INSERT INTO `receptionsdetail` VALUES ('122', '30', '285', '1');
INSERT INTO `receptionsdetail` VALUES ('123', '30', '284', '2');
INSERT INTO `receptionsdetail` VALUES ('124', '30', '283', '4');
INSERT INTO `receptionsdetail` VALUES ('125', '31', '288', '2');
INSERT INTO `receptionsdetail` VALUES ('126', '31', '290', '2');
INSERT INTO `receptionsdetail` VALUES ('127', '31', '286', '5');
INSERT INTO `receptionsdetail` VALUES ('128', '31', '287', '8');
INSERT INTO `receptionsdetail` VALUES ('129', '32', '292', '5');
INSERT INTO `receptionsdetail` VALUES ('130', '32', '291', '10');
INSERT INTO `receptionsdetail` VALUES ('131', '33', '344', '1');
INSERT INTO `receptionsdetail` VALUES ('132', '33', '343', '2');
INSERT INTO `receptionsdetail` VALUES ('133', '33', '342', '6');
INSERT INTO `receptionsdetail` VALUES ('134', '33', '341', '6');
INSERT INTO `receptionsdetail` VALUES ('135', '33', '340', '10');
INSERT INTO `receptionsdetail` VALUES ('136', '33', '338', '2');
INSERT INTO `receptionsdetail` VALUES ('137', '33', '192', '2');
INSERT INTO `receptionsdetail` VALUES ('138', '33', '337', '2');
INSERT INTO `receptionsdetail` VALUES ('139', '33', '336', '5');
INSERT INTO `receptionsdetail` VALUES ('140', '33', '335', '4');
INSERT INTO `receptionsdetail` VALUES ('141', '34', '594', '5');
INSERT INTO `receptionsdetail` VALUES ('142', '34', '593', '5');
INSERT INTO `receptionsdetail` VALUES ('143', '34', '592', '1');
INSERT INTO `receptionsdetail` VALUES ('144', '34', '591', '2');
INSERT INTO `receptionsdetail` VALUES ('145', '34', '590', '2');
INSERT INTO `receptionsdetail` VALUES ('146', '34', '589', '5');
INSERT INTO `receptionsdetail` VALUES ('147', '34', '588', '10');
INSERT INTO `receptionsdetail` VALUES ('148', '34', '587', '10');
INSERT INTO `receptionsdetail` VALUES ('149', '34', '586', '10');
INSERT INTO `receptionsdetail` VALUES ('150', '34', '585', '2');
INSERT INTO `receptionsdetail` VALUES ('151', '34', '584', '2');
INSERT INTO `receptionsdetail` VALUES ('152', '34', '583', '2');
INSERT INTO `receptionsdetail` VALUES ('153', '34', '582', '2');
INSERT INTO `receptionsdetail` VALUES ('154', '34', '581', '2');
INSERT INTO `receptionsdetail` VALUES ('155', '34', '580', '2');
INSERT INTO `receptionsdetail` VALUES ('156', '34', '579', '2');
INSERT INTO `receptionsdetail` VALUES ('157', '34', '578', '2');
INSERT INTO `receptionsdetail` VALUES ('158', '34', '577', '2');
INSERT INTO `receptionsdetail` VALUES ('159', '34', '576', '2');
INSERT INTO `receptionsdetail` VALUES ('160', '34', '575', '2');
INSERT INTO `receptionsdetail` VALUES ('161', '34', '574', '2');
INSERT INTO `receptionsdetail` VALUES ('162', '34', '573', '1');
INSERT INTO `receptionsdetail` VALUES ('163', '34', '572', '2');
INSERT INTO `receptionsdetail` VALUES ('164', '34', '571', '5');
INSERT INTO `receptionsdetail` VALUES ('165', '34', '570', '10');
INSERT INTO `receptionsdetail` VALUES ('166', '35', '473', '20');
INSERT INTO `receptionsdetail` VALUES ('167', '35', '631', '2');
INSERT INTO `receptionsdetail` VALUES ('168', '35', '630', '4');
INSERT INTO `receptionsdetail` VALUES ('169', '35', '629', '10');
INSERT INTO `receptionsdetail` VALUES ('170', '35', '628', '10');
INSERT INTO `receptionsdetail` VALUES ('171', '35', '627', '10');
INSERT INTO `receptionsdetail` VALUES ('172', '35', '626', '4');
INSERT INTO `receptionsdetail` VALUES ('173', '35', '625', '30');
INSERT INTO `receptionsdetail` VALUES ('174', '35', '624', '10');
INSERT INTO `receptionsdetail` VALUES ('175', '35', '623', '50');
INSERT INTO `receptionsdetail` VALUES ('176', '35', '622', '10');
INSERT INTO `receptionsdetail` VALUES ('177', '35', '621', '2');
INSERT INTO `receptionsdetail` VALUES ('178', '35', '620', '20');
INSERT INTO `receptionsdetail` VALUES ('179', '35', '619', '10');
INSERT INTO `receptionsdetail` VALUES ('180', '35', '617', '5');
INSERT INTO `receptionsdetail` VALUES ('181', '35', '616', '2');
INSERT INTO `receptionsdetail` VALUES ('182', '35', '615', '20');
INSERT INTO `receptionsdetail` VALUES ('183', '35', '614', '10');
INSERT INTO `receptionsdetail` VALUES ('184', '35', '613', '5');
INSERT INTO `receptionsdetail` VALUES ('185', '35', '612', '20');
INSERT INTO `receptionsdetail` VALUES ('186', '35', '611', '50');
INSERT INTO `receptionsdetail` VALUES ('187', '35', '610', '45');
INSERT INTO `receptionsdetail` VALUES ('188', '35', '609', '5');
INSERT INTO `receptionsdetail` VALUES ('189', '35', '608', '5');
INSERT INTO `receptionsdetail` VALUES ('190', '35', '607', '50');
INSERT INTO `receptionsdetail` VALUES ('191', '35', '606', '20');
INSERT INTO `receptionsdetail` VALUES ('192', '35', '605', '4');
INSERT INTO `receptionsdetail` VALUES ('193', '35', '604', '4');
INSERT INTO `receptionsdetail` VALUES ('194', '35', '603', '2');
INSERT INTO `receptionsdetail` VALUES ('195', '35', '602', '50');
INSERT INTO `receptionsdetail` VALUES ('196', '35', '601', '4');
INSERT INTO `receptionsdetail` VALUES ('197', '35', '600', '50');
INSERT INTO `receptionsdetail` VALUES ('198', '36', '618', '50');
INSERT INTO `receptionsdetail` VALUES ('199', '37', '647', '10');
INSERT INTO `receptionsdetail` VALUES ('200', '37', '646', '20');
INSERT INTO `receptionsdetail` VALUES ('201', '37', '645', '10');
INSERT INTO `receptionsdetail` VALUES ('202', '37', '644', '2');
INSERT INTO `receptionsdetail` VALUES ('203', '37', '643', '2');
INSERT INTO `receptionsdetail` VALUES ('204', '37', '642', '2');
INSERT INTO `receptionsdetail` VALUES ('205', '37', '641', '30');
INSERT INTO `receptionsdetail` VALUES ('206', '37', '640', '4');
INSERT INTO `receptionsdetail` VALUES ('207', '38', '771', '2');
INSERT INTO `receptionsdetail` VALUES ('208', '38', '772', '2');
INSERT INTO `receptionsdetail` VALUES ('209', '38', '773', '1');
INSERT INTO `receptionsdetail` VALUES ('210', '38', '774', '2');
INSERT INTO `receptionsdetail` VALUES ('211', '38', '775', '2');
INSERT INTO `receptionsdetail` VALUES ('212', '38', '776', '2');
INSERT INTO `receptionsdetail` VALUES ('213', '38', '777', '10');
INSERT INTO `receptionsdetail` VALUES ('214', '38', '777', '10');
INSERT INTO `receptionsdetail` VALUES ('215', '38', '780', '2');
INSERT INTO `receptionsdetail` VALUES ('216', '38', '779', '1');
INSERT INTO `receptionsdetail` VALUES ('217', '38', '782', '2');
INSERT INTO `receptionsdetail` VALUES ('218', '38', '781', '2');
INSERT INTO `receptionsdetail` VALUES ('219', '38', '783', '2');
INSERT INTO `receptionsdetail` VALUES ('220', '38', '784', '1');
INSERT INTO `receptionsdetail` VALUES ('221', '38', '784', '2');
INSERT INTO `receptionsdetail` VALUES ('222', '38', '785', '2');
INSERT INTO `receptionsdetail` VALUES ('223', '38', '786', '2');
INSERT INTO `receptionsdetail` VALUES ('224', '38', '787', '5');
INSERT INTO `receptionsdetail` VALUES ('225', '38', '788', '5');
INSERT INTO `receptionsdetail` VALUES ('226', '38', '789', '5');
INSERT INTO `receptionsdetail` VALUES ('227', '38', '790', '2');
INSERT INTO `receptionsdetail` VALUES ('228', '38', '791', '2');
INSERT INTO `receptionsdetail` VALUES ('229', '38', '792', '2');
INSERT INTO `receptionsdetail` VALUES ('230', '38', '793', '2');
INSERT INTO `receptionsdetail` VALUES ('231', '38', '794', '5');
INSERT INTO `receptionsdetail` VALUES ('232', '38', '795', '1');
INSERT INTO `receptionsdetail` VALUES ('233', '38', '797', '2');
INSERT INTO `receptionsdetail` VALUES ('234', '38', '796', '1');
INSERT INTO `receptionsdetail` VALUES ('235', '38', '798', '2');
INSERT INTO `receptionsdetail` VALUES ('236', '38', '800', '1');
INSERT INTO `receptionsdetail` VALUES ('237', '38', '801', '1');
INSERT INTO `receptionsdetail` VALUES ('238', '38', '802', '3');
INSERT INTO `receptionsdetail` VALUES ('239', '38', '803', '1');
INSERT INTO `receptionsdetail` VALUES ('240', '38', '804', '1');
INSERT INTO `receptionsdetail` VALUES ('241', '38', '805', '5');
INSERT INTO `receptionsdetail` VALUES ('242', '38', '806', '5');
INSERT INTO `receptionsdetail` VALUES ('243', '38', '807', '1');
INSERT INTO `receptionsdetail` VALUES ('244', '38', '807', '5');
INSERT INTO `receptionsdetail` VALUES ('245', '38', '808', '2');
INSERT INTO `receptionsdetail` VALUES ('246', '38', '809', '2');
INSERT INTO `receptionsdetail` VALUES ('247', '38', '816', '2');
INSERT INTO `receptionsdetail` VALUES ('248', '38', '817', '2');
INSERT INTO `receptionsdetail` VALUES ('249', '38', '818', '2');
INSERT INTO `receptionsdetail` VALUES ('250', '38', '819', '2');
INSERT INTO `receptionsdetail` VALUES ('251', '38', '820', '2');
INSERT INTO `receptionsdetail` VALUES ('252', '38', '821', '1');
INSERT INTO `receptionsdetail` VALUES ('253', '38', '822', '5');
INSERT INTO `receptionsdetail` VALUES ('254', '38', '823', '12');
INSERT INTO `receptionsdetail` VALUES ('255', '38', '824', '12');
INSERT INTO `receptionsdetail` VALUES ('256', '38', '825', '12');
INSERT INTO `receptionsdetail` VALUES ('257', '38', '826', '12');
INSERT INTO `receptionsdetail` VALUES ('258', '38', '827', '12');
INSERT INTO `receptionsdetail` VALUES ('259', '38', '828', '12');
INSERT INTO `receptionsdetail` VALUES ('260', '38', '829', '12');
INSERT INTO `receptionsdetail` VALUES ('261', '38', '831', '12');
INSERT INTO `receptionsdetail` VALUES ('262', '38', '832', '12');
INSERT INTO `receptionsdetail` VALUES ('263', '38', '846', '5');
INSERT INTO `receptionsdetail` VALUES ('264', '38', '843', '2');
INSERT INTO `receptionsdetail` VALUES ('265', '38', '842', '1');
INSERT INTO `receptionsdetail` VALUES ('266', '38', '841', '12');
INSERT INTO `receptionsdetail` VALUES ('267', '38', '840', '12');
INSERT INTO `receptionsdetail` VALUES ('268', '38', '839', '12');
INSERT INTO `receptionsdetail` VALUES ('269', '38', '838', '12');
INSERT INTO `receptionsdetail` VALUES ('270', '38', '837', '12');
INSERT INTO `receptionsdetail` VALUES ('271', '38', '836', '12');
INSERT INTO `receptionsdetail` VALUES ('272', '38', '835', '12');
INSERT INTO `receptionsdetail` VALUES ('273', '38', '834', '12');
INSERT INTO `receptionsdetail` VALUES ('274', '38', '833', '12');
INSERT INTO `receptionsdetail` VALUES ('275', '39', '850', '3');
INSERT INTO `receptionsdetail` VALUES ('276', '39', '690', '3');
INSERT INTO `receptionsdetail` VALUES ('277', '39', '689', '3');
INSERT INTO `receptionsdetail` VALUES ('278', '39', '849', '1');

-- ----------------------------
-- Table structure for recibos
-- ----------------------------
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE `recibos` (
  `rcbId` int(11) NOT NULL AUTO_INCREMENT,
  `oId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `rcbImporte` decimal(14,2) NOT NULL,
  `rcbEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `rcbFecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cajaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`rcbId`),
  KEY `medId` (`medId`) USING BTREE,
  KEY `oId` (`oId`) USING BTREE,
  KEY `cajaId` (`cajaId`),
  CONSTRAINT `recibos_ibfk_1` FOREIGN KEY (`oId`) REFERENCES `orden` (`oId`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_ibfk_2` FOREIGN KEY (`medId`) REFERENCES `mediosdepago` (`medId`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_ibfk_3` FOREIGN KEY (`cajaId`) REFERENCES `cajas` (`cajaId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of recibos
-- ----------------------------
INSERT INTO `recibos` VALUES ('1', '54', '1', '834.72', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('2', '55', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('3', '57', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('4', '58', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('5', '59', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('6', '60', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('7', '61', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('8', '62', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('9', '63', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('10', '64', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('11', '65', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('12', '66', '1', '201.60', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('13', '68', '1', '202.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('14', '69', '1', '100.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('15', '69', '2', '400.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('16', '69', '3', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('17', '69', '4', '312.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('18', '69', '1', '100.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('19', '69', '2', '400.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('20', '69', '3', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('21', '69', '4', '312.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('22', '69', '1', '100.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('23', '69', '2', '400.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('24', '69', '3', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('25', '69', '4', '312.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('26', '69', '1', '100.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('27', '69', '2', '400.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('28', '69', '3', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('29', '69', '4', '312.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('30', '69', '1', '100.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('31', '69', '2', '400.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('32', '69', '3', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('33', '69', '4', '312.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('34', '70', '1', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('35', '71', '5', '200.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('36', '72', '7', '60.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('37', '73', '7', '202.50', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('38', '74', '1', '834.72', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('39', '75', '1', '834.72', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('40', '76', '1', '1161.40', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('41', '77', '1', '1920.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('42', '78', '1', '1161.40', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('43', '79', '1', '834.72', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('44', '81', '1', '290.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('45', '82', '1', '1920.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('46', '83', '1', '1920.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('47', '85', '1', '779.07', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('48', '86', '7', '153.84', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('49', '86', '7', '153.84', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('50', '87', '1', '199.99', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('51', '88', '1', '50.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('52', '89', '1', '20.22', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('53', '90', '1', '40.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('54', '91', '1', '20.10', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('55', '92', '1', '220.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('56', '93', '1', '5962.36', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('57', '93', '1', '5962.36', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('58', '94', '1', '500.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('59', '94', '1', '500.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('60', '95', '1', '22950.40', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('61', '96', '1', '573.76', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('62', '97', '7', '28688.00', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('63', '98', '7', '11475.20', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('64', '99', '7', '2868.80', 'AC', '2018-06-05 16:15:22', null);
INSERT INTO `recibos` VALUES ('65', '94', '1', '2000.00', 'AC', '2018-06-05 16:17:53', '5');
INSERT INTO `recibos` VALUES ('66', '94', '1', '543.08', 'AC', '2018-06-05 16:18:08', '5');
INSERT INTO `recibos` VALUES ('67', '100', '1', '1000.00', 'AC', '2018-06-15 10:03:41', '8');
INSERT INTO `recibos` VALUES ('68', '106', '1', '14182.16', 'AC', '2018-06-25 19:50:17', '11');
INSERT INTO `recibos` VALUES ('69', '108', '1', '1173.76', 'AC', '2018-06-29 19:55:49', '11');
INSERT INTO `recibos` VALUES ('70', '108', '1', '1173.76', 'AC', '2018-06-29 19:55:49', '11');
INSERT INTO `recibos` VALUES ('71', '109', '1', '49.50', 'AC', '2018-07-05 09:51:16', '13');
INSERT INTO `recibos` VALUES ('72', '111', '1', '2700.00', 'AC', '2018-07-06 21:54:32', '14');
INSERT INTO `recibos` VALUES ('73', '111', '7', '1203.90', 'AC', '2018-07-06 21:54:32', '14');
INSERT INTO `recibos` VALUES ('74', '112', '7', '2868.58', 'AC', '2018-07-06 22:00:36', '14');
INSERT INTO `recibos` VALUES ('75', '118', '7', '1420.86', 'AC', '2018-07-19 12:16:31', '14');
INSERT INTO `recibos` VALUES ('76', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:04', '14');
INSERT INTO `recibos` VALUES ('77', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('78', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('79', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('80', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('81', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('82', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('83', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('84', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('85', '119', '7', '4726.19', 'AC', '2018-07-20 13:20:05', '14');
INSERT INTO `recibos` VALUES ('86', '120', '7', '2292.23', 'AC', '2018-07-20 13:26:46', '14');
INSERT INTO `recibos` VALUES ('87', '120', '7', '2292.23', 'AC', '2018-07-20 13:26:46', '14');
INSERT INTO `recibos` VALUES ('88', '120', '7', '2292.23', 'AC', '2018-07-20 13:26:46', '14');
INSERT INTO `recibos` VALUES ('89', '120', '7', '2292.23', 'AC', '2018-07-20 13:26:46', '14');
INSERT INTO `recibos` VALUES ('90', '120', '7', '2292.23', 'AC', '2018-07-20 13:26:46', '14');
INSERT INTO `recibos` VALUES ('91', '121', '1', '3501.80', 'AC', '2018-07-20 20:02:12', '14');
INSERT INTO `recibos` VALUES ('92', '121', '1', '3501.80', 'AC', '2018-07-20 20:02:12', '14');
INSERT INTO `recibos` VALUES ('93', '122', '7', '10109.40', 'AC', '2018-07-21 17:54:40', '14');
INSERT INTO `recibos` VALUES ('94', '122', '7', '10109.40', 'AC', '2018-07-21 17:54:40', '14');
INSERT INTO `recibos` VALUES ('95', '123', '7', '49.01', 'AC', '2018-07-22 23:23:06', '14');
INSERT INTO `recibos` VALUES ('96', '124', '1', '186.00', 'AC', '2018-07-22 23:25:55', '14');
INSERT INTO `recibos` VALUES ('97', '124', '7', '500.00', 'AC', '2018-07-22 23:25:55', '14');
INSERT INTO `recibos` VALUES ('98', '125', '7', '133.28', 'AC', '2018-07-22 23:28:05', '14');
INSERT INTO `recibos` VALUES ('99', '126', '7', '1533.17', 'AC', '2018-07-23 10:32:06', '14');
INSERT INTO `recibos` VALUES ('100', '126', '7', '1533.17', 'AC', '2018-07-23 10:32:06', '14');
INSERT INTO `recibos` VALUES ('101', '126', '7', '1533.17', 'AC', '2018-07-23 10:32:06', '14');
INSERT INTO `recibos` VALUES ('102', '127', '7', '1753.99', 'AC', '2018-07-23 10:38:19', '14');
INSERT INTO `recibos` VALUES ('103', '127', '7', '1753.99', 'AC', '2018-07-23 10:38:19', '14');
INSERT INTO `recibos` VALUES ('104', '127', '7', '1753.99', 'AC', '2018-07-23 10:38:19', '14');
INSERT INTO `recibos` VALUES ('105', '128', '7', '49474.31', 'AC', '2018-07-23 10:50:35', '14');
INSERT INTO `recibos` VALUES ('106', '129', '7', '1085.70', 'AC', '2018-07-23 10:52:58', '14');
INSERT INTO `recibos` VALUES ('107', '130', '1', '3000.00', 'AC', '2018-07-23 12:24:32', '14');
INSERT INTO `recibos` VALUES ('108', '130', '7', '4000.00', 'AC', '2018-07-23 12:24:32', '14');
INSERT INTO `recibos` VALUES ('109', '131', '7', '172.38', 'AC', '2018-07-24 21:54:52', '14');
INSERT INTO `recibos` VALUES ('110', '132', '7', '2338.48', 'AC', '2018-07-24 22:03:28', '14');
INSERT INTO `recibos` VALUES ('111', '136', '1', '2000.00', 'AC', '2018-07-31 19:02:34', '15');
INSERT INTO `recibos` VALUES ('112', '136', '7', '7408.00', 'AC', '2018-07-31 19:02:35', '15');
INSERT INTO `recibos` VALUES ('113', '137', '1', '1000.00', 'AC', '2018-08-01 12:52:54', '15');
INSERT INTO `recibos` VALUES ('114', '137', '7', '2136.00', 'AC', '2018-08-01 12:52:54', '15');
INSERT INTO `recibos` VALUES ('115', '139', '1', '2000.00', 'AC', '2018-08-04 10:09:02', '15');

-- ----------------------------
-- Table structure for retiros
-- ----------------------------
DROP TABLE IF EXISTS `retiros`;
CREATE TABLE `retiros` (
  `retId` int(11) NOT NULL AUTO_INCREMENT,
  `retFecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usrId` int(11) NOT NULL,
  `retImporte` decimal(10,2) NOT NULL,
  `retDescripcion` varchar(100) DEFAULT NULL,
  `cajaId` int(11) NOT NULL,
  PRIMARY KEY (`retId`),
  KEY `usrId` (`usrId`),
  KEY `cajaId` (`cajaId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of retiros
-- ----------------------------
INSERT INTO `retiros` VALUES ('1', '2018-06-01 14:55:19', '4', '50.00', 'semitas', '4');
INSERT INTO `retiros` VALUES ('2', '2018-06-01 20:02:19', '4', '100.00', 'Agua para negocio 2', '5');
INSERT INTO `retiros` VALUES ('3', '2018-06-01 20:02:32', '4', '30.00', 'Semitas', '5');
INSERT INTO `retiros` VALUES ('4', '2018-06-01 20:05:19', '4', '80.00', 'par la coca', '5');
INSERT INTO `retiros` VALUES ('5', '2018-06-05 16:24:58', '4', '200.00', 'ok', '6');

-- ----------------------------
-- Table structure for rubros
-- ----------------------------
DROP TABLE IF EXISTS `rubros`;
CREATE TABLE `rubros` (
  `rubId` int(11) NOT NULL AUTO_INCREMENT,
  `rubDescripcion` varchar(30) NOT NULL,
  `rubEstado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`rubId`),
  UNIQUE KEY `rubDescripcion` (`rubDescripcion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rubros
-- ----------------------------
INSERT INTO `rubros` VALUES ('1', 'Rubro 1', 'AC');
INSERT INTO `rubros` VALUES ('2', 'Rubro 2', 'AC');
INSERT INTO `rubros` VALUES ('4', 'Rubro 4', 'AC');
INSERT INTO `rubros` VALUES ('7', 'Rubro 7', 'AC');
INSERT INTO `rubros` VALUES ('8', 'Rubro 8', 'AC');
INSERT INTO `rubros` VALUES ('9', 'Rubro 9', 'AC');
INSERT INTO `rubros` VALUES ('10', 'Rubro 10', 'AC');
INSERT INTO `rubros` VALUES ('11', 'Rubro 11', 'AC');
INSERT INTO `rubros` VALUES ('12', 'Rubro 12', 'AC');
INSERT INTO `rubros` VALUES ('13', 'Rubro 13', 'AC');
INSERT INTO `rubros` VALUES ('14', 'Rubro 14', 'AC');
INSERT INTO `rubros` VALUES ('15', 'Rubro 15', 'AC');
INSERT INTO `rubros` VALUES ('16', 'Rubro 16', 'AC');
INSERT INTO `rubros` VALUES ('17', 'Rubro 17', 'AC');
INSERT INTO `rubros` VALUES ('18', 'Rubro 18', 'AC');

-- ----------------------------
-- Table structure for sisactions
-- ----------------------------
DROP TABLE IF EXISTS `sisactions`;
CREATE TABLE `sisactions` (
  `actId` int(11) NOT NULL AUTO_INCREMENT,
  `actDescription` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `actDescriptionSpanish` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sisactions
-- ----------------------------
INSERT INTO `sisactions` VALUES ('1', 'Add', 'Agregar');
INSERT INTO `sisactions` VALUES ('2', 'Edit', 'Editar');
INSERT INTO `sisactions` VALUES ('3', 'Del', 'Eliminar');
INSERT INTO `sisactions` VALUES ('4', 'View', 'Consultar');
INSERT INTO `sisactions` VALUES ('5', 'Imprimir', 'Imprimir');
INSERT INTO `sisactions` VALUES ('6', 'Saldo', 'Consultar Saldo');
INSERT INTO `sisactions` VALUES ('7', 'Close', 'Cerrar');
INSERT INTO `sisactions` VALUES ('8', 'Box', 'Caja');
INSERT INTO `sisactions` VALUES ('9', 'Conf', 'Confirmar');
INSERT INTO `sisactions` VALUES ('10', 'Disc', 'Descartar');
INSERT INTO `sisactions` VALUES ('11', 'Budget', 'Presupuesto');
INSERT INTO `sisactions` VALUES ('12', 'Cob', 'Cobrar');
INSERT INTO `sisactions` VALUES ('13', 'Anu', 'Anular');
INSERT INTO `sisactions` VALUES ('14', 'AyC', 'Ap. y Cier. de Caja');
INSERT INTO `sisactions` VALUES ('15', 'Ent', 'Entregar');

-- ----------------------------
-- Table structure for sisgroups
-- ----------------------------
DROP TABLE IF EXISTS `sisgroups`;
CREATE TABLE `sisgroups` (
  `grpId` int(11) NOT NULL AUTO_INCREMENT,
  `grpName` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`grpId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sisgroups
-- ----------------------------
INSERT INTO `sisgroups` VALUES ('5', 'Administrador');

-- ----------------------------
-- Table structure for sisgroupsactions
-- ----------------------------
DROP TABLE IF EXISTS `sisgroupsactions`;
CREATE TABLE `sisgroupsactions` (
  `grpactId` int(11) NOT NULL AUTO_INCREMENT,
  `grpId` int(11) NOT NULL,
  `menuAccId` int(11) NOT NULL,
  PRIMARY KEY (`grpactId`),
  KEY `grpId` (`grpId`) USING BTREE,
  KEY `menuAccId` (`menuAccId`) USING BTREE,
  CONSTRAINT `sisgroupsactions_ibfk_1` FOREIGN KEY (`grpId`) REFERENCES `sisgroups` (`grpId`) ON UPDATE CASCADE,
  CONSTRAINT `sisgroupsactions_ibfk_2` FOREIGN KEY (`menuAccId`) REFERENCES `sismenuactions` (`menuAccId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1298 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sisgroupsactions
-- ----------------------------
INSERT INTO `sisgroupsactions` VALUES ('1241', '5', '1');
INSERT INTO `sisgroupsactions` VALUES ('1242', '5', '2');
INSERT INTO `sisgroupsactions` VALUES ('1243', '5', '3');
INSERT INTO `sisgroupsactions` VALUES ('1244', '5', '4');
INSERT INTO `sisgroupsactions` VALUES ('1245', '5', '5');
INSERT INTO `sisgroupsactions` VALUES ('1246', '5', '6');
INSERT INTO `sisgroupsactions` VALUES ('1247', '5', '7');
INSERT INTO `sisgroupsactions` VALUES ('1248', '5', '8');
INSERT INTO `sisgroupsactions` VALUES ('1249', '5', '48');
INSERT INTO `sisgroupsactions` VALUES ('1250', '5', '49');
INSERT INTO `sisgroupsactions` VALUES ('1251', '5', '50');
INSERT INTO `sisgroupsactions` VALUES ('1252', '5', '51');
INSERT INTO `sisgroupsactions` VALUES ('1253', '5', '92');
INSERT INTO `sisgroupsactions` VALUES ('1254', '5', '9');
INSERT INTO `sisgroupsactions` VALUES ('1255', '5', '10');
INSERT INTO `sisgroupsactions` VALUES ('1256', '5', '11');
INSERT INTO `sisgroupsactions` VALUES ('1257', '5', '12');
INSERT INTO `sisgroupsactions` VALUES ('1258', '5', '21');
INSERT INTO `sisgroupsactions` VALUES ('1259', '5', '22');
INSERT INTO `sisgroupsactions` VALUES ('1260', '5', '23');
INSERT INTO `sisgroupsactions` VALUES ('1261', '5', '24');
INSERT INTO `sisgroupsactions` VALUES ('1262', '5', '25');
INSERT INTO `sisgroupsactions` VALUES ('1263', '5', '26');
INSERT INTO `sisgroupsactions` VALUES ('1264', '5', '28');
INSERT INTO `sisgroupsactions` VALUES ('1265', '5', '33');
INSERT INTO `sisgroupsactions` VALUES ('1266', '5', '34');
INSERT INTO `sisgroupsactions` VALUES ('1267', '5', '35');
INSERT INTO `sisgroupsactions` VALUES ('1268', '5', '36');
INSERT INTO `sisgroupsactions` VALUES ('1269', '5', '37');
INSERT INTO `sisgroupsactions` VALUES ('1270', '5', '38');
INSERT INTO `sisgroupsactions` VALUES ('1271', '5', '39');
INSERT INTO `sisgroupsactions` VALUES ('1272', '5', '40');
INSERT INTO `sisgroupsactions` VALUES ('1273', '5', '41');
INSERT INTO `sisgroupsactions` VALUES ('1274', '5', '42');
INSERT INTO `sisgroupsactions` VALUES ('1275', '5', '43');
INSERT INTO `sisgroupsactions` VALUES ('1276', '5', '44');
INSERT INTO `sisgroupsactions` VALUES ('1277', '5', '45');
INSERT INTO `sisgroupsactions` VALUES ('1278', '5', '46');
INSERT INTO `sisgroupsactions` VALUES ('1279', '5', '47');
INSERT INTO `sisgroupsactions` VALUES ('1280', '5', '64');
INSERT INTO `sisgroupsactions` VALUES ('1281', '5', '65');
INSERT INTO `sisgroupsactions` VALUES ('1282', '5', '66');
INSERT INTO `sisgroupsactions` VALUES ('1283', '5', '67');
INSERT INTO `sisgroupsactions` VALUES ('1284', '5', '82');
INSERT INTO `sisgroupsactions` VALUES ('1285', '5', '83');
INSERT INTO `sisgroupsactions` VALUES ('1286', '5', '84');
INSERT INTO `sisgroupsactions` VALUES ('1287', '5', '85');
INSERT INTO `sisgroupsactions` VALUES ('1288', '5', '68');
INSERT INTO `sisgroupsactions` VALUES ('1289', '5', '69');
INSERT INTO `sisgroupsactions` VALUES ('1290', '5', '70');
INSERT INTO `sisgroupsactions` VALUES ('1291', '5', '71');
INSERT INTO `sisgroupsactions` VALUES ('1292', '5', '72');
INSERT INTO `sisgroupsactions` VALUES ('1293', '5', '73');
INSERT INTO `sisgroupsactions` VALUES ('1294', '5', '74');
INSERT INTO `sisgroupsactions` VALUES ('1295', '5', '75');
INSERT INTO `sisgroupsactions` VALUES ('1296', '5', '76');
INSERT INTO `sisgroupsactions` VALUES ('1297', '5', '91');

-- ----------------------------
-- Table structure for sismenu
-- ----------------------------
DROP TABLE IF EXISTS `sismenu`;
CREATE TABLE `sismenu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `menuIcon` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `menuController` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `menuView` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `menuFather` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuId`),
  KEY `menuFather` (`menuFather`) USING BTREE,
  CONSTRAINT `sismenu_ibfk_1` FOREIGN KEY (`menuFather`) REFERENCES `sismenu` (`menuId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sismenu
-- ----------------------------
INSERT INTO `sismenu` VALUES ('9', 'Seguridad', 'fa fa-key', '', '', null);
INSERT INTO `sismenu` VALUES ('10', 'Usuarios', '', 'user', 'index', '9');
INSERT INTO `sismenu` VALUES ('11', 'Grupos', '', 'group', 'index', '9');
INSERT INTO `sismenu` VALUES ('12', 'Administración', 'fa fa-fw fa-cogs', '', '', null);
INSERT INTO `sismenu` VALUES ('13', 'Artículos', 'fa fa-cart-plus', 'article', 'index', null);
INSERT INTO `sismenu` VALUES ('16', 'Proveedores', 'fa fa-truck', 'provider', 'index', null);
INSERT INTO `sismenu` VALUES ('17', 'Cajas', 'fa fa-money', 'box', 'index', null);
INSERT INTO `sismenu` VALUES ('19', 'Recepción', 'fa fa-fw fa-archive', 'reception', 'index', null);
INSERT INTO `sismenu` VALUES ('20', 'Stock', 'fa fa-fw fa-industry', 'stock', 'index', null);
INSERT INTO `sismenu` VALUES ('21', 'Configuración', 'fa fa-fw fa-cogs', '', '', null);
INSERT INTO `sismenu` VALUES ('22', 'Rubros', '', 'rubro', 'index', '21');
INSERT INTO `sismenu` VALUES ('23', 'Subrubros', '', 'rubro', 'indexSR', '21');
INSERT INTO `sismenu` VALUES ('24', 'Lista_de_Precios', '', 'lista', 'index', '12');
INSERT INTO `sismenu` VALUES ('27', 'Actualización_de_Precios', '', 'rubro', 'upgrate', '12');
INSERT INTO `sismenu` VALUES ('31', 'Cotización_Dolar', 'fa fa-fw fa-dollar', 'configuration', 'getCotizacion', null);
INSERT INTO `sismenu` VALUES ('32', 'Marcas', '', 'brand', 'index', '21');
INSERT INTO `sismenu` VALUES ('33', 'Cuenta_Corriente', 'fa fa-fw fa-line-chart', ' ', ' ', null);
INSERT INTO `sismenu` VALUES ('34', 'Cta_Cte_Proveedores', '', 'cuentacorriente', 'indexp', '33');
INSERT INTO `sismenu` VALUES ('35', 'Cta_Cte_Clientes', '', 'cuentacorriente', 'indexc', '33');
INSERT INTO `sismenu` VALUES ('36', 'Ventas', 'fa fa-fw fa-info', 'sale', 'listado_minorista', null);
INSERT INTO `sismenu` VALUES ('37', 'Ventas_Mayoristas', 'fa fa-fw fa-info', 'sale', 'listado_mayorista', null);
INSERT INTO `sismenu` VALUES ('38', 'Vendedores', '', 'vendedor', 'index', '21');
INSERT INTO `sismenu` VALUES ('39', 'Faltantes', 'fa fa-fw fa-bell', 'article', 'faltante', null);
INSERT INTO `sismenu` VALUES ('40', 'Ventas_Reservas', 'fa fa-fw fa-info', 'sale', 'listado_reserva', null);
INSERT INTO `sismenu` VALUES ('41', 'Backup', '', 'backup', 'index', '12');
INSERT INTO `sismenu` VALUES ('42', 'Actualizar_Artículos', '', 'backup', 'update', '12');

-- ----------------------------
-- Table structure for sismenuactions
-- ----------------------------
DROP TABLE IF EXISTS `sismenuactions`;
CREATE TABLE `sismenuactions` (
  `menuAccId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `actId` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuAccId`),
  KEY `menuId` (`menuId`) USING BTREE,
  KEY `actId` (`actId`) USING BTREE,
  CONSTRAINT `sismenuactions_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `sismenu` (`menuId`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `sismenuactions_ibfk_2` FOREIGN KEY (`actId`) REFERENCES `sisactions` (`actId`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sismenuactions
-- ----------------------------
INSERT INTO `sismenuactions` VALUES ('1', '10', '1');
INSERT INTO `sismenuactions` VALUES ('2', '10', '2');
INSERT INTO `sismenuactions` VALUES ('3', '10', '3');
INSERT INTO `sismenuactions` VALUES ('4', '10', '4');
INSERT INTO `sismenuactions` VALUES ('5', '11', '1');
INSERT INTO `sismenuactions` VALUES ('6', '11', '2');
INSERT INTO `sismenuactions` VALUES ('7', '11', '3');
INSERT INTO `sismenuactions` VALUES ('8', '11', '4');
INSERT INTO `sismenuactions` VALUES ('9', '13', '1');
INSERT INTO `sismenuactions` VALUES ('10', '13', '2');
INSERT INTO `sismenuactions` VALUES ('11', '13', '3');
INSERT INTO `sismenuactions` VALUES ('12', '13', '4');
INSERT INTO `sismenuactions` VALUES ('21', '16', '1');
INSERT INTO `sismenuactions` VALUES ('22', '16', '2');
INSERT INTO `sismenuactions` VALUES ('23', '16', '3');
INSERT INTO `sismenuactions` VALUES ('24', '16', '4');
INSERT INTO `sismenuactions` VALUES ('25', '17', '1');
INSERT INTO `sismenuactions` VALUES ('26', '17', '7');
INSERT INTO `sismenuactions` VALUES ('28', '17', '4');
INSERT INTO `sismenuactions` VALUES ('33', '19', '1');
INSERT INTO `sismenuactions` VALUES ('34', '19', '9');
INSERT INTO `sismenuactions` VALUES ('35', '19', '10');
INSERT INTO `sismenuactions` VALUES ('36', '19', '4');
INSERT INTO `sismenuactions` VALUES ('37', '20', '1');
INSERT INTO `sismenuactions` VALUES ('38', '20', '4');
INSERT INTO `sismenuactions` VALUES ('39', '20', '5');
INSERT INTO `sismenuactions` VALUES ('40', '22', '1');
INSERT INTO `sismenuactions` VALUES ('41', '22', '2');
INSERT INTO `sismenuactions` VALUES ('42', '22', '3');
INSERT INTO `sismenuactions` VALUES ('43', '22', '4');
INSERT INTO `sismenuactions` VALUES ('44', '23', '1');
INSERT INTO `sismenuactions` VALUES ('45', '23', '2');
INSERT INTO `sismenuactions` VALUES ('46', '23', '3');
INSERT INTO `sismenuactions` VALUES ('47', '23', '4');
INSERT INTO `sismenuactions` VALUES ('48', '24', '1');
INSERT INTO `sismenuactions` VALUES ('49', '24', '2');
INSERT INTO `sismenuactions` VALUES ('50', '24', '3');
INSERT INTO `sismenuactions` VALUES ('51', '24', '4');
INSERT INTO `sismenuactions` VALUES ('59', '27', '2');
INSERT INTO `sismenuactions` VALUES ('63', '31', '2');
INSERT INTO `sismenuactions` VALUES ('64', '32', '1');
INSERT INTO `sismenuactions` VALUES ('65', '32', '2');
INSERT INTO `sismenuactions` VALUES ('66', '32', '3');
INSERT INTO `sismenuactions` VALUES ('67', '32', '4');
INSERT INTO `sismenuactions` VALUES ('68', '34', '1');
INSERT INTO `sismenuactions` VALUES ('69', '34', '4');
INSERT INTO `sismenuactions` VALUES ('70', '35', '1');
INSERT INTO `sismenuactions` VALUES ('71', '35', '4');
INSERT INTO `sismenuactions` VALUES ('72', '36', '1');
INSERT INTO `sismenuactions` VALUES ('73', '36', '2');
INSERT INTO `sismenuactions` VALUES ('74', '36', '3');
INSERT INTO `sismenuactions` VALUES ('75', '36', '4');
INSERT INTO `sismenuactions` VALUES ('76', '36', '5');
INSERT INTO `sismenuactions` VALUES ('77', '37', '1');
INSERT INTO `sismenuactions` VALUES ('78', '37', '2');
INSERT INTO `sismenuactions` VALUES ('79', '37', '3');
INSERT INTO `sismenuactions` VALUES ('80', '37', '4');
INSERT INTO `sismenuactions` VALUES ('81', '37', '5');
INSERT INTO `sismenuactions` VALUES ('82', '38', '1');
INSERT INTO `sismenuactions` VALUES ('83', '38', '2');
INSERT INTO `sismenuactions` VALUES ('84', '38', '3');
INSERT INTO `sismenuactions` VALUES ('85', '38', '4');
INSERT INTO `sismenuactions` VALUES ('86', '40', '1');
INSERT INTO `sismenuactions` VALUES ('87', '40', '2');
INSERT INTO `sismenuactions` VALUES ('88', '40', '3');
INSERT INTO `sismenuactions` VALUES ('89', '40', '4');
INSERT INTO `sismenuactions` VALUES ('90', '40', '5');
INSERT INTO `sismenuactions` VALUES ('91', '39', '4');
INSERT INTO `sismenuactions` VALUES ('92', '41', '4');
INSERT INTO `sismenuactions` VALUES ('93', '42', '4');

-- ----------------------------
-- Table structure for sisusers
-- ----------------------------
DROP TABLE IF EXISTS `sisusers`;
CREATE TABLE `sisusers` (
  `usrId` int(11) NOT NULL AUTO_INCREMENT,
  `usrNick` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `usrName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usrLastName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usrComision` int(11) NOT NULL,
  `usrPassword` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `grpId` int(11) NOT NULL,
  `usrLastAcces` datetime DEFAULT NULL,
  `usrToken` text COLLATE utf8_spanish_ci,
  `usrEsAdmin` bit(1) DEFAULT b'0',
  PRIMARY KEY (`usrId`),
  UNIQUE KEY `usrNick` (`usrNick`) USING BTREE,
  KEY `grpId` (`grpId`) USING BTREE,
  CONSTRAINT `sisusers_ibfk_1` FOREIGN KEY (`grpId`) REFERENCES `sisgroups` (`grpId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sisusers
-- ----------------------------
INSERT INTO `sisusers` VALUES ('4', 'admin', 'Usuario', 'Administrador', '1', 'e10adc3949ba59abbe56e057f20f883e', '5', '2018-08-28 16:34:06', 'JJA4mGrn9qIfD2a1gCrMDReCgjos4Z52rypmtBKDMZI0EN7fW1JwP1URw306ZOWn8qNg8IHFt4qCNnrfZV9rnlWoshM6au729Wz61l5F7an6sE0J2vCBeysWv68HHtfQPueKe6TlHIIHutviMgQ1TPVEwKGX5izbiePWFA2JKGG1rfSXAXaDRrxfR6A9E7JZ9c8OjYic2HxkjaDSoGQPVTzdwJePlCThLK4Ml5tcV4IGQuETkNVTuCQddnSYIkU', '\0');
INSERT INTO `sisusers` VALUES ('9', 'demo', 'Usuario ', 'Prueba', '1', 'e10adc3949ba59abbe56e057f20f883e', '5', '2018-08-07 10:11:09', 'le1SAYCxjTwnIh56FpAUmvdsljCzzcjI80DBi6LEIuuzs8lJZc0Errw7ku7NwHCAsutrmWmktAyEXurTTdC7iKcZfCsOLRqxesgj1KMHu0mhJNVDD1YXuOLk180oRdTORNxegaxNqbBysd7XJV3chwcl8rfdA4MPNpSiUizmhsHSpMdor3Ena6HVTobq15f8HD6d5DZR8pMIrD09ulWjkvbt79v4yhuHTqLTUXt0b3A22CxRI2zpxdtaPR1bwow', '\0');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stkId` int(11) NOT NULL AUTO_INCREMENT,
  `artId` int(11) NOT NULL,
  `stkCant` decimal(10,2) NOT NULL,
  `refId` int(11) DEFAULT NULL,
  `stkOrigen` varchar(2) NOT NULL DEFAULT 'RC',
  `stkFecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stkId`),
  KEY `artId` (`artId`) USING BTREE,
  KEY `recId` (`refId`) USING BTREE,
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`artId`) REFERENCES `articles` (`artId`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('6', '289', '-1.00', '54', 'VN', '2018-05-03 21:09:19');
INSERT INTO `stock` VALUES ('7', '285', '-1.00', '55', 'VN', '2018-05-03 21:10:56');
INSERT INTO `stock` VALUES ('8', '285', '-1.00', '57', 'VN', '2018-05-03 21:11:46');
INSERT INTO `stock` VALUES ('9', '285', '-1.00', '58', 'VN', '2018-05-03 21:11:47');
INSERT INTO `stock` VALUES ('10', '285', '-1.00', '59', 'VN', '2018-05-03 21:11:49');
INSERT INTO `stock` VALUES ('11', '285', '-1.00', '60', 'VN', '2018-05-03 21:11:50');
INSERT INTO `stock` VALUES ('12', '285', '-1.00', '61', 'VN', '2018-05-03 21:11:52');
INSERT INTO `stock` VALUES ('13', '285', '-1.00', '62', 'VN', '2018-05-03 21:11:53');
INSERT INTO `stock` VALUES ('14', '285', '-1.00', '63', 'VN', '2018-05-03 21:11:55');
INSERT INTO `stock` VALUES ('15', '285', '-1.00', '64', 'VN', '2018-05-03 21:11:57');
INSERT INTO `stock` VALUES ('16', '285', '-1.00', '65', 'VN', '2018-05-03 21:11:58');
INSERT INTO `stock` VALUES ('17', '285', '-1.00', '66', 'VN', '2018-05-03 21:12:00');
INSERT INTO `stock` VALUES ('18', '22', '-1.00', '68', 'VN', '2018-05-03 21:23:22');
INSERT INTO `stock` VALUES ('19', '22', '-1.00', '69', 'VN', '2018-05-03 21:29:25');
INSERT INTO `stock` VALUES ('20', '22', '-1.00', '69', 'VN', '2018-05-03 21:29:25');
INSERT INTO `stock` VALUES ('21', '22', '-1.00', '69', 'VN', '2018-05-03 21:29:25');
INSERT INTO `stock` VALUES ('22', '22', '-1.00', '69', 'VN', '2018-05-03 21:29:25');
INSERT INTO `stock` VALUES ('23', '22', '-1.00', '69', 'VN', '2018-05-03 21:29:25');
INSERT INTO `stock` VALUES ('24', '22', '-1.00', '70', 'VN', '2018-05-03 21:31:35');
INSERT INTO `stock` VALUES ('25', '22', '-1.00', '71', 'VN', '2018-05-03 21:36:15');
INSERT INTO `stock` VALUES ('26', '22', '18.00', null, 'AJ', '2018-05-03 21:37:58');
INSERT INTO `stock` VALUES ('27', '260', '-1.00', '72', 'VN', '2018-05-03 21:39:48');
INSERT INTO `stock` VALUES ('28', '22', '-1.00', '73', 'VN', '2018-05-03 21:41:32');
INSERT INTO `stock` VALUES ('29', '289', '-1.00', '74', 'VN', '2018-05-04 17:28:25');
INSERT INTO `stock` VALUES ('30', '289', '-1.00', '75', 'VN', '2018-05-04 17:45:56');
INSERT INTO `stock` VALUES ('31', '287', '-1.00', '76', 'VN', '2018-05-04 17:46:34');
INSERT INTO `stock` VALUES ('32', '278', '-1.00', '77', 'VN', '2018-05-04 17:47:00');
INSERT INTO `stock` VALUES ('33', '287', '-1.00', '78', 'VN', '2018-05-04 17:48:59');
INSERT INTO `stock` VALUES ('34', '289', '-1.00', '79', 'VN', '2018-05-04 17:50:41');
INSERT INTO `stock` VALUES ('35', '58', '-1.00', '81', 'VN', '2018-05-04 17:51:14');
INSERT INTO `stock` VALUES ('36', '278', '-1.00', '82', 'VN', '2018-05-07 17:22:36');
INSERT INTO `stock` VALUES ('37', '278', '-1.00', '83', 'VN', '2018-05-07 21:21:49');
INSERT INTO `stock` VALUES ('38', '289', '-1.00', '85', 'VN', '2018-05-07 21:26:52');
INSERT INTO `stock` VALUES ('39', '296', '-2.00', '86', 'VN', '2018-05-08 19:03:11');
INSERT INTO `stock` VALUES ('40', '294', '-5.00', '86', 'VN', '2018-05-08 19:03:11');
INSERT INTO `stock` VALUES ('41', '143', '-1.00', '87', 'VN', '2018-05-14 18:33:40');
INSERT INTO `stock` VALUES ('42', '319', '10.00', null, 'AJ', '2018-05-15 19:10:21');
INSERT INTO `stock` VALUES ('43', '321', '10.00', null, 'AJ', '2018-05-15 19:13:18');
INSERT INTO `stock` VALUES ('44', '447', '-1.00', '88', 'VN', '2018-06-01 10:39:58');
INSERT INTO `stock` VALUES ('45', '5', '-2.00', '89', 'VN', '2018-06-01 10:52:31');
INSERT INTO `stock` VALUES ('46', '448', '-1.00', '90', 'VN', '2018-06-01 11:19:33');
INSERT INTO `stock` VALUES ('47', '7', '-2.00', '91', 'VN', '2018-06-01 11:27:32');
INSERT INTO `stock` VALUES ('48', '293', '-1.00', '93', 'VN', '2018-06-01 19:31:13');
INSERT INTO `stock` VALUES ('49', '346', '-10.00', '93', 'VN', '2018-06-01 19:31:13');
INSERT INTO `stock` VALUES ('50', '346', '-40.00', '95', 'VN', '2018-06-01 19:35:59');
INSERT INTO `stock` VALUES ('51', '346', '-1.00', '96', 'VN', '2018-06-01 19:39:49');
INSERT INTO `stock` VALUES ('52', '346', '-50.00', '97', 'VN', '2018-06-01 20:25:10');
INSERT INTO `stock` VALUES ('53', '346', '-20.00', '98', 'VN', '2018-06-01 20:28:15');
INSERT INTO `stock` VALUES ('54', '346', '-5.00', '99', 'VN', '2018-06-01 20:33:16');
INSERT INTO `stock` VALUES ('55', '293', '-3.00', '94', 'VN', '2018-06-05 16:18:08');
INSERT INTO `stock` VALUES ('56', '346', '-5.00', '94', 'VN', '2018-06-05 16:18:08');
INSERT INTO `stock` VALUES ('57', '319', '-1.00', '100', 'VN', '2018-06-15 10:03:41');
INSERT INTO `stock` VALUES ('58', '216', '-2.00', '106', 'VN', '2018-06-25 19:50:17');
INSERT INTO `stock` VALUES ('59', '346', '-1.00', '108', 'VN', '2018-06-29 19:55:49');
INSERT INTO `stock` VALUES ('60', '16', '-1.00', '109', 'VN', '2018-07-05 09:51:16');
INSERT INTO `stock` VALUES ('61', '185', '-1.00', '111', 'VN', '2018-07-06 21:54:32');
INSERT INTO `stock` VALUES ('62', '557', '-1.00', '112', 'VN', '2018-07-06 22:00:36');
INSERT INTO `stock` VALUES ('63', '333', '-1.00', '118', 'VN', '2018-07-19 12:16:31');
INSERT INTO `stock` VALUES ('64', '52', '-4.00', '119', 'VN', '2018-07-20 13:20:04');
INSERT INTO `stock` VALUES ('65', '600', '-4.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('66', '623', '-5.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('67', '356', '-10.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('68', '323', '-2.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('69', '356', '-5.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('70', '473', '-4.00', '119', 'VN', '2018-07-20 13:20:05');
INSERT INTO `stock` VALUES ('71', '524', '-2.00', '120', 'VN', '2018-07-20 13:26:46');
INSERT INTO `stock` VALUES ('72', '441', '-1.00', '120', 'VN', '2018-07-20 13:26:46');
INSERT INTO `stock` VALUES ('73', '678', '-2.00', '120', 'VN', '2018-07-20 13:26:46');
INSERT INTO `stock` VALUES ('74', '677', '-2.00', '120', 'VN', '2018-07-20 13:26:46');
INSERT INTO `stock` VALUES ('75', '611', '-10.00', '120', 'VN', '2018-07-20 13:26:46');
INSERT INTO `stock` VALUES ('76', '522', '-1.00', '121', 'VN', '2018-07-20 20:02:12');
INSERT INTO `stock` VALUES ('77', '272', '-2.00', '122', 'VN', '2018-07-21 17:54:40');
INSERT INTO `stock` VALUES ('78', '650', '-1.00', '122', 'VN', '2018-07-21 17:54:40');
INSERT INTO `stock` VALUES ('79', '598', '-1.00', '123', 'VN', '2018-07-22 23:23:06');
INSERT INTO `stock` VALUES ('80', '653', '-5.00', '124', 'VN', '2018-07-22 23:25:55');
INSERT INTO `stock` VALUES ('81', '566', '-1.00', '125', 'VN', '2018-07-22 23:28:05');
INSERT INTO `stock` VALUES ('82', '560', '-1.00', '126', 'VN', '2018-07-23 10:32:06');
INSERT INTO `stock` VALUES ('83', '614', '-1.00', '126', 'VN', '2018-07-23 10:32:06');
INSERT INTO `stock` VALUES ('84', '629', '-1.00', '126', 'VN', '2018-07-23 10:32:06');
INSERT INTO `stock` VALUES ('85', '702', '-1.00', '127', 'VN', '2018-07-23 10:38:19');
INSERT INTO `stock` VALUES ('86', '467', '-1.00', '127', 'VN', '2018-07-23 10:38:19');
INSERT INTO `stock` VALUES ('87', '628', '-1.00', '127', 'VN', '2018-07-23 10:38:19');
INSERT INTO `stock` VALUES ('88', '214', '-5.00', '128', 'VN', '2018-07-23 10:50:35');
INSERT INTO `stock` VALUES ('89', '688', '-7.00', '128', 'VN', '2018-07-23 10:50:35');
INSERT INTO `stock` VALUES ('90', '598', '-1.00', '128', 'VN', '2018-07-23 10:50:35');
INSERT INTO `stock` VALUES ('91', '627', '-1.00', '129', 'VN', '2018-07-23 10:52:58');
INSERT INTO `stock` VALUES ('92', '628', '-1.00', '129', 'VN', '2018-07-23 10:52:58');
INSERT INTO `stock` VALUES ('93', '682', '-1.00', '130', 'VN', '2018-07-23 12:24:32');
INSERT INTO `stock` VALUES ('94', '444', '-1.00', '131', 'VN', '2018-07-24 21:54:52');
INSERT INTO `stock` VALUES ('95', '564', '-1.00', '132', 'VN', '2018-07-24 22:03:28');
INSERT INTO `stock` VALUES ('96', '667', '-1.00', '132', 'VN', '2018-07-24 22:03:28');
INSERT INTO `stock` VALUES ('97', '555', '-1.00', '132', 'VN', '2018-07-24 22:03:28');
INSERT INTO `stock` VALUES ('98', '627', '-2.00', '132', 'VN', '2018-07-24 22:03:28');
INSERT INTO `stock` VALUES ('99', '365', '-1.00', '136', 'VN', '2018-07-31 19:02:34');
INSERT INTO `stock` VALUES ('100', '616', '-1.00', '137', 'VN', '2018-08-01 12:52:54');

-- ----------------------------
-- Table structure for stockreserva
-- ----------------------------
DROP TABLE IF EXISTS `stockreserva`;
CREATE TABLE `stockreserva` (
  `stkId` int(11) NOT NULL AUTO_INCREMENT,
  `artId` int(11) NOT NULL,
  `stkCant` decimal(10,2) NOT NULL,
  `refId` int(11) DEFAULT NULL,
  `stkOrigen` varchar(2) NOT NULL DEFAULT 'RC',
  `stkFecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stkId`),
  KEY `artId` (`artId`) USING BTREE,
  KEY `recId` (`refId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stockreserva
-- ----------------------------
INSERT INTO `stockreserva` VALUES ('1', '293', '1.00', '92', 'VN', '2018-06-01 15:04:17');
INSERT INTO `stockreserva` VALUES ('2', '293', '3.00', '94', 'VN', '2018-06-01 19:32:16');
INSERT INTO `stockreserva` VALUES ('3', '346', '5.00', '94', 'VN', '2018-06-01 19:32:16');
INSERT INTO `stockreserva` VALUES ('4', '293', '-3.00', '94', 'VN', '2018-06-05 16:18:08');
INSERT INTO `stockreserva` VALUES ('5', '346', '-5.00', '94', 'VN', '2018-06-05 16:18:08');

-- ----------------------------
-- Table structure for subrubros
-- ----------------------------
DROP TABLE IF EXISTS `subrubros`;
CREATE TABLE `subrubros` (
  `subrId` int(11) NOT NULL AUTO_INCREMENT,
  `subrDescripcion` varchar(30) NOT NULL,
  `rubId` int(11) NOT NULL,
  `subrEstado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`subrId`),
  UNIQUE KEY `subrDescripcion` (`subrDescripcion`) USING BTREE,
  UNIQUE KEY `subrDescripcion_3` (`subrDescripcion`) USING BTREE,
  UNIQUE KEY `subrDescripcion_4` (`subrDescripcion`) USING BTREE,
  UNIQUE KEY `subrDescripcion_5` (`subrDescripcion`) USING BTREE,
  UNIQUE KEY `subrDescripcion_7` (`subrDescripcion`) USING BTREE,
  KEY `rubId` (`rubId`) USING BTREE,
  KEY `subrDescripcion_2` (`subrDescripcion`) USING BTREE,
  KEY `subrDescripcion_6` (`subrDescripcion`) USING BTREE,
  CONSTRAINT `subrubros_ibfk_1` FOREIGN KEY (`rubId`) REFERENCES `rubros` (`rubId`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subrubros
-- ----------------------------
INSERT INTO `subrubros` VALUES ('1', 'SubRubro 1', '1', 'AC');
INSERT INTO `subrubros` VALUES ('2', 'SubRubro 2', '1', 'AC');
INSERT INTO `subrubros` VALUES ('3', 'SubRubro 3', '2', 'AC');
INSERT INTO `subrubros` VALUES ('4', 'SubRubro 4', '2', 'AC');
INSERT INTO `subrubros` VALUES ('5', 'SubRubro 5', '2', 'AC');
INSERT INTO `subrubros` VALUES ('6', 'SubRubro 6', '2', 'AC');
INSERT INTO `subrubros` VALUES ('7', 'SubRubro 7', '2', 'AC');
INSERT INTO `subrubros` VALUES ('8', 'SubRubro 8', '2', 'AC');
INSERT INTO `subrubros` VALUES ('9', 'SubRubro 9', '1', 'AC');
INSERT INTO `subrubros` VALUES ('12', 'SubRubro 12', '7', 'AC');
INSERT INTO `subrubros` VALUES ('13', 'SubRubro 13', '2', 'AC');
INSERT INTO `subrubros` VALUES ('14', 'SubRubro 14', '2', 'AC');
INSERT INTO `subrubros` VALUES ('15', 'SubRubro 15', '2', 'AC');
INSERT INTO `subrubros` VALUES ('16', 'SubRubro 16', '2', 'AC');
INSERT INTO `subrubros` VALUES ('17', 'SubRubro 17', '2', 'AC');
INSERT INTO `subrubros` VALUES ('18', 'SubRubro 18', '2', 'AC');
INSERT INTO `subrubros` VALUES ('19', 'SubRubro 19', '2', 'AC');
INSERT INTO `subrubros` VALUES ('20', 'SubRubro 20', '9', 'AC');
INSERT INTO `subrubros` VALUES ('23', 'SubRubro 23', '11', 'AC');
INSERT INTO `subrubros` VALUES ('24', 'SubRubro 24', '11', 'AC');
INSERT INTO `subrubros` VALUES ('25', 'SubRubro 25', '4', 'AC');
INSERT INTO `subrubros` VALUES ('26', 'SubRubro 26', '4', 'AC');
INSERT INTO `subrubros` VALUES ('27', 'SubRubro 27', '4', 'AC');
INSERT INTO `subrubros` VALUES ('28', 'SubRubro 28', '4', 'AC');
INSERT INTO `subrubros` VALUES ('29', 'SubRubro 29', '4', 'AC');
INSERT INTO `subrubros` VALUES ('30', 'SubRubro 30', '12', 'AC');
INSERT INTO `subrubros` VALUES ('31', 'SubRubro 31', '13', 'AC');
INSERT INTO `subrubros` VALUES ('32', 'SubRubro 32', '2', 'AC');
INSERT INTO `subrubros` VALUES ('33', 'SubRubro 33', '13', 'AC');
INSERT INTO `subrubros` VALUES ('34', 'SubRubro 34', '14', 'AC');
INSERT INTO `subrubros` VALUES ('35', 'SubRubro 35', '14', 'AC');
INSERT INTO `subrubros` VALUES ('38', 'SubRubro 38', '2', 'AC');
INSERT INTO `subrubros` VALUES ('39', 'SubRubro 39', '2', 'AC');
INSERT INTO `subrubros` VALUES ('40', 'SubRubro 40', '2', 'AC');
INSERT INTO `subrubros` VALUES ('41', 'SubRubro 41', '7', 'AC');
INSERT INTO `subrubros` VALUES ('42', 'SubRubro 42', '2', 'AC');
INSERT INTO `subrubros` VALUES ('43', 'SubRubro 43', '2', 'AC');
INSERT INTO `subrubros` VALUES ('44', 'SubRubro 44', '2', 'AC');
INSERT INTO `subrubros` VALUES ('47', 'SubRubro 47', '2', 'AC');
INSERT INTO `subrubros` VALUES ('48', 'SubRubro 48', '13', 'AC');
INSERT INTO `subrubros` VALUES ('49', 'SubRubro 49', '16', 'AC');
INSERT INTO `subrubros` VALUES ('50', 'SubRubro 50', '17', 'AC');
INSERT INTO `subrubros` VALUES ('51', 'SubRubro 51', '18', 'AC');

-- ----------------------------
-- Table structure for tipomediopago
-- ----------------------------
DROP TABLE IF EXISTS `tipomediopago`;
CREATE TABLE `tipomediopago` (
  `tmpId` int(11) NOT NULL AUTO_INCREMENT,
  `tmpCodigo` varchar(3) NOT NULL,
  `tmpDescripción` varchar(50) NOT NULL,
  `tmpEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `tmpDescripcion1` varchar(50) DEFAULT NULL,
  `tmpDescripcion2` varchar(50) DEFAULT NULL,
  `tmpDescripcion3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tmpId`),
  UNIQUE KEY `tmpCodigo` (`tmpCodigo`) USING BTREE,
  UNIQUE KEY `tmpDescripciÃ³n` (`tmpDescripción`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipomediopago
-- ----------------------------
INSERT INTO `tipomediopago` VALUES ('1', 'EFE', 'Efectivo', 'AC', null, null, null);
INSERT INTO `tipomediopago` VALUES ('2', 'TJT', 'Tarjeta', 'AC', 'N° Lote', 'N° Autorización', 'Cuotas');
INSERT INTO `tipomediopago` VALUES ('3', 'CRE', 'Credito Argentino', 'AC', null, null, null);
INSERT INTO `tipomediopago` VALUES ('4', 'CCT', 'Cuenta Corriente', 'AC', null, null, null);

-- ----------------------------
-- Table structure for tipos_documentos
-- ----------------------------
DROP TABLE IF EXISTS `tipos_documentos`;
CREATE TABLE `tipos_documentos` (
  `docId` int(11) NOT NULL AUTO_INCREMENT,
  `docDescripcion` varchar(50) NOT NULL,
  `docTipo` varchar(2) NOT NULL,
  `docEstado` varchar(2) NOT NULL,
  PRIMARY KEY (`docId`),
  UNIQUE KEY `docDescripcion` (`docDescripcion`,`docTipo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipos_documentos
-- ----------------------------
INSERT INTO `tipos_documentos` VALUES ('1', 'DNI', 'DP', 'AC');
INSERT INTO `tipos_documentos` VALUES ('2', 'CUIT', 'DP', 'AC');
INSERT INTO `tipos_documentos` VALUES ('3', 'LC', 'DP', 'AC');
INSERT INTO `tipos_documentos` VALUES ('4', 'LE', 'DP', 'AC');

-- ----------------------------
-- Table structure for tipo_comprobante
-- ----------------------------
DROP TABLE IF EXISTS `tipo_comprobante`;
CREATE TABLE `tipo_comprobante` (
  `tcId` int(11) NOT NULL AUTO_INCREMENT,
  `tcDescripcion` varchar(25) NOT NULL,
  `tcEstado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`tcId`),
  UNIQUE KEY `tcDescripcion` (`tcDescripcion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_comprobante
-- ----------------------------
INSERT INTO `tipo_comprobante` VALUES ('1', 'Factura A', 'AC');
INSERT INTO `tipo_comprobante` VALUES ('2', 'Factura B', 'AC');
INSERT INTO `tipo_comprobante` VALUES ('3', 'Factura C', 'AC');
INSERT INTO `tipo_comprobante` VALUES ('4', 'Remito X', 'AC');

-- ----------------------------
-- Table structure for vendedores
-- ----------------------------
DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'AC',
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`) USING BTREE,
  UNIQUE KEY `nombre` (`nombre`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vendedores
-- ----------------------------
INSERT INTO `vendedores` VALUES ('1', '100', 'Vendedor1', 'AC');
INSERT INTO `vendedores` VALUES ('2', '002', 'Vendedor2', 'AC');
INSERT INTO `vendedores` VALUES ('3', '003', 'Vendedor3', 'AC');

-- ----------------------------
-- Procedure structure for stockArt
-- ----------------------------
DROP PROCEDURE IF EXISTS `stockArt`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stockArt`(IN `pArtId` int)
BEGIN
	#Routine body goes here...
	select sum(stkCant) as stock from stock where artId = pArtId ;
END
;;
DELIMITER ;
