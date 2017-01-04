/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : signin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-04 14:45:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for signin_admin
-- ----------------------------
DROP TABLE IF EXISTS `signin_admin`;
CREATE TABLE `signin_admin` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '状态',
  `level` tinyint(4) unsigned DEFAULT NULL,
  `prem` varchar(20) NOT NULL COMMENT '拥有的菜单权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin_admin
-- ----------------------------
INSERT INTO `signin_admin` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '1', '1', '1,34');
INSERT INTO `signin_admin` VALUES ('3', 'test', '14e1b600b1fd579f47433b88e8d85291', '1', '1', '1');
INSERT INTO `signin_admin` VALUES ('5', 'suadmin', 'c3284d0f94606de1fd2af172aba15bf3', '1', '1', '1,10,16');
INSERT INTO `signin_admin` VALUES ('4', 'credit', '14e1b600b1fd579f47433b88e8d85291', '1', '1', '10');

-- ----------------------------
-- Table structure for signin_lucky
-- ----------------------------
DROP TABLE IF EXISTS `signin_lucky`;
CREATE TABLE `signin_lucky` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(3) unsigned zerofill NOT NULL COMMENT '客户编号',
  `islucky` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '中奖状态1中奖2未中奖',
  `lun` varchar(255) DEFAULT NULL COMMENT '中奖轮次',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用0不启用1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin_lucky
-- ----------------------------
INSERT INTO `signin_lucky` VALUES ('1', '001', '2', null, '0');
INSERT INTO `signin_lucky` VALUES ('2', '002', '2', null, '0');
INSERT INTO `signin_lucky` VALUES ('3', '003', '2', null, '0');
INSERT INTO `signin_lucky` VALUES ('4', '004', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('5', '005', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('6', '006', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('7', '007', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('8', '008', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('9', '009', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('10', '010', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('11', '011', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('12', '012', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('13', '013', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('14', '014', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('15', '015', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('16', '016', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('17', '017', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('18', '018', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('19', '019', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('20', '020', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('21', '021', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('22', '022', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('23', '023', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('24', '024', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('25', '025', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('26', '026', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('27', '027', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('28', '028', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('29', '029', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('30', '030', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('31', '031', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('32', '032', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('33', '033', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('34', '034', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('35', '035', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('36', '036', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('37', '037', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('38', '038', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('39', '039', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('40', '040', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('41', '041', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('42', '042', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('43', '043', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('44', '044', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('45', '045', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('46', '046', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('47', '047', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('48', '048', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('49', '049', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('50', '050', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('51', '051', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('52', '052', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('53', '053', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('54', '054', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('55', '055', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('56', '056', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('57', '057', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('58', '058', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('59', '059', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('60', '060', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('61', '061', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('62', '062', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('63', '063', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('64', '064', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('65', '065', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('66', '066', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('67', '067', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('68', '068', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('69', '069', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('70', '070', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('71', '071', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('72', '072', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('73', '073', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('74', '074', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('75', '075', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('76', '076', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('77', '077', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('78', '078', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('79', '079', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('80', '080', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('81', '081', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('82', '082', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('83', '083', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('84', '084', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('85', '085', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('86', '086', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('87', '087', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('88', '088', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('89', '089', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('90', '090', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('91', '091', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('92', '092', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('93', '093', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('94', '094', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('95', '095', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('96', '096', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('97', '097', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('98', '098', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('99', '099', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('100', '100', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('101', '101', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('102', '102', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('103', '103', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('104', '104', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('105', '105', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('106', '106', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('107', '107', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('108', '108', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('109', '109', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('110', '110', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('111', '111', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('112', '112', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('113', '113', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('114', '114', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('115', '115', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('116', '116', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('117', '117', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('118', '118', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('119', '119', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('120', '120', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('121', '121', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('122', '122', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('123', '123', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('124', '124', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('125', '125', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('126', '126', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('127', '127', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('128', '128', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('129', '129', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('130', '130', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('131', '131', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('132', '132', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('133', '133', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('134', '134', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('135', '135', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('136', '136', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('137', '137', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('138', '138', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('139', '139', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('140', '140', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('141', '141', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('142', '142', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('143', '143', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('144', '144', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('145', '145', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('146', '146', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('147', '147', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('148', '148', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('149', '149', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('150', '150', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('151', '151', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('152', '152', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('153', '153', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('154', '154', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('155', '155', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('156', '156', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('157', '157', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('158', '158', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('159', '159', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('160', '160', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('161', '161', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('162', '162', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('163', '163', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('164', '164', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('165', '165', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('166', '166', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('167', '167', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('168', '168', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('169', '169', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('170', '170', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('171', '171', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('172', '172', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('173', '173', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('174', '174', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('175', '175', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('176', '176', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('177', '177', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('178', '178', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('179', '179', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('180', '180', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('181', '181', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('182', '182', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('183', '183', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('184', '184', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('185', '185', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('186', '186', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('187', '187', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('188', '188', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('189', '189', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('190', '190', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('191', '191', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('192', '192', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('193', '193', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('194', '194', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('195', '195', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('196', '196', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('197', '197', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('198', '198', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('199', '199', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('200', '200', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('201', '201', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('202', '202', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('203', '203', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('204', '204', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('205', '205', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('206', '206', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('207', '207', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('208', '208', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('209', '209', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('210', '210', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('211', '211', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('212', '212', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('213', '213', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('214', '214', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('215', '215', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('216', '216', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('217', '217', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('218', '218', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('219', '219', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('220', '220', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('221', '221', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('222', '222', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('223', '223', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('224', '224', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('225', '225', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('226', '226', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('227', '227', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('228', '228', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('229', '229', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('230', '230', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('231', '231', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('232', '232', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('233', '233', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('234', '234', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('235', '235', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('236', '236', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('237', '237', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('238', '238', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('239', '239', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('240', '240', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('241', '241', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('242', '242', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('243', '243', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('244', '244', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('245', '245', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('246', '246', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('247', '247', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('248', '248', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('249', '249', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('250', '250', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('251', '251', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('252', '252', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('253', '253', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('254', '254', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('255', '255', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('256', '256', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('257', '257', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('258', '258', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('259', '259', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('260', '260', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('261', '261', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('262', '262', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('263', '263', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('264', '264', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('265', '265', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('266', '266', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('267', '267', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('268', '268', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('269', '269', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('270', '270', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('271', '271', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('272', '272', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('273', '273', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('274', '274', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('275', '275', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('276', '276', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('277', '277', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('278', '278', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('279', '279', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('280', '280', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('281', '281', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('282', '282', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('283', '283', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('284', '284', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('285', '285', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('286', '286', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('287', '287', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('288', '288', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('289', '289', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('290', '290', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('291', '291', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('292', '292', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('293', '293', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('294', '294', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('295', '295', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('296', '296', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('297', '297', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('298', '298', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('299', '299', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('300', '300', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('301', '301', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('302', '302', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('303', '303', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('304', '304', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('305', '305', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('306', '306', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('307', '307', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('308', '308', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('309', '309', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('310', '310', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('311', '311', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('312', '312', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('313', '313', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('314', '314', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('315', '315', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('316', '316', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('317', '317', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('318', '318', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('319', '319', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('320', '320', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('321', '321', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('322', '322', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('323', '323', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('324', '324', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('325', '325', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('326', '326', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('327', '327', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('328', '328', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('329', '329', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('330', '330', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('331', '331', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('332', '332', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('333', '333', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('334', '334', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('335', '335', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('336', '336', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('337', '337', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('338', '338', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('339', '339', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('340', '340', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('341', '341', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('342', '342', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('343', '343', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('344', '344', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('345', '345', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('346', '346', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('347', '347', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('348', '348', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('349', '349', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('350', '350', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('351', '351', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('352', '352', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('353', '353', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('354', '354', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('355', '355', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('356', '356', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('357', '357', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('358', '358', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('359', '359', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('360', '360', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('361', '361', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('362', '362', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('363', '363', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('364', '364', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('365', '365', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('366', '366', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('367', '367', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('368', '368', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('369', '369', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('370', '370', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('371', '371', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('372', '372', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('373', '373', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('374', '374', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('375', '375', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('376', '376', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('377', '377', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('378', '378', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('379', '379', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('380', '380', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('381', '381', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('382', '382', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('383', '383', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('384', '384', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('385', '385', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('386', '386', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('387', '387', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('388', '388', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('389', '389', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('390', '390', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('391', '391', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('392', '392', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('393', '393', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('394', '394', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('395', '395', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('396', '396', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('397', '397', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('398', '398', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('399', '399', '2', null, '1');
INSERT INTO `signin_lucky` VALUES ('400', '400', '2', null, '1');

-- ----------------------------
-- Table structure for signin_menu
-- ----------------------------
DROP TABLE IF EXISTS `signin_menu`;
CREATE TABLE `signin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin_menu
-- ----------------------------
INSERT INTO `signin_menu` VALUES ('1', '签到管理', 'credit-card', '', '0');
INSERT INTO `signin_menu` VALUES ('3', '客户列表', 'plus', '/admin/all/', '1');
INSERT INTO `signin_menu` VALUES ('2', '新增客户', 'user-plus', '/admin/useradd/', '1');
INSERT INTO `signin_menu` VALUES ('34', '抽奖系统', 'user-plus', '', '0');
INSERT INTO `signin_menu` VALUES ('35', '抽奖管理', 'user-plus', '/admin/lucky/', '34');
INSERT INTO `signin_menu` VALUES ('36', '参数设置', null, '/admin/lucky/confshow', '34');

-- ----------------------------
-- Table structure for signin_users
-- ----------------------------
DROP TABLE IF EXISTS `signin_users`;
CREATE TABLE `signin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL COMMENT '签到客户姓名',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别',
  `telephone` char(11) NOT NULL COMMENT '手机号',
  `signin` tinyint(5) unsigned NOT NULL DEFAULT '2' COMMENT '签到状态0未签到1已签到',
  `comment` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '登记时间',
  `signin_time` int(11) unsigned DEFAULT NULL COMMENT '签到时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel` (`telephone`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin_users
-- ----------------------------
INSERT INTO `signin_users` VALUES ('58', '007', '1', '13655551102', '1', '股份的股份', '1481868449', '1481868462', '1481868531');
INSERT INTO `signin_users` VALUES ('47', 'y', '1', '13666622211', '2', '没有update_time', '1480650578', null, null);
INSERT INTO `signin_users` VALUES ('48', 'tt', '1', '13699996663', '1', '782rr他', '1480650726', '1481102865', '1480758318');
INSERT INTO `signin_users` VALUES ('52', '马蓉', '2', '13877774452', '2', '达到的接撒打开撒 的挥洒接电话撒撒的谎撒谎的 大俗就看撒谎的爱上的能力啥的萨达哈撒10大坏蛋爱上', '1480901219', null, '1480917411');
INSERT INTO `signin_users` VALUES ('54', '333w', '2', '13265485555', '2', '', '1480929799', null, '1480929799');
INSERT INTO `signin_users` VALUES ('57', 'src', '1', '13666662201', '2', 'ff2', '1481858336', null, '1481858336');
INSERT INTO `signin_users` VALUES ('55', '2211', '1', '13655556666', '1', '', '1480929846', '1481795467', '1480929846');
INSERT INTO `signin_users` VALUES ('56', '王DOe', '2', '13633332214', '2', '达到i', '1481104493', null, '1481795505');
