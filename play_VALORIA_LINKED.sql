/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : play
Target Host     : localhost:3306
Target Database : play
Date: 2026-10-03 09:53:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for account_settings
-- ----------------------------
DROP TABLE IF EXISTS `account_settings`;
CREATE TABLE `account_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_settings
-- ----------------------------
INSERT INTO `account_settings` VALUES ('1', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('3', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('5', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('4', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('6', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('7', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('9', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('10', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('8', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('12', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('14', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('16', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('11', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('18', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('19', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('20', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('21', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('13', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('23', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('0', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('26', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('2', 'duty_admin', '1');
INSERT INTO `account_settings` VALUES ('29', 'duty_admin', '1');

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` varchar(32) NOT NULL,
  `salt` varchar(30) NOT NULL DEFAULT '1234567890',
  `email` varchar(100) NOT NULL,
  `discord` text,
  `registerdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text,
  `admin` float NOT NULL DEFAULT '0',
  `supporter` float NOT NULL DEFAULT '0',
  `vct` float NOT NULL DEFAULT '0',
  `mapper` float NOT NULL DEFAULT '0',
  `scripter` float NOT NULL DEFAULT '0',
  `warn_style` int(11) NOT NULL DEFAULT '1',
  `hiddenadmin` tinyint(3) unsigned DEFAULT '0',
  `adminjail` tinyint(3) unsigned DEFAULT '0',
  `adminjail_time` int(11) DEFAULT NULL,
  `adminjail_by` text,
  `adminjail_reason` text,
  `muted` tinyint(3) unsigned DEFAULT '0',
  `globalooc` tinyint(3) unsigned DEFAULT '1',
  `friendsmessage` varchar(255) NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) unsigned DEFAULT '0',
  `adminreports` int(11) DEFAULT '0',
  `warns` tinyint(3) unsigned DEFAULT '0',
  `chatbubbles` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `adminnote` text,
  `appstate` tinyint(1) DEFAULT '10',
  `appdatetime` datetime DEFAULT NULL,
  `appreason` longtext,
  `help` int(11) NOT NULL DEFAULT '1',
  `adblocked` int(11) NOT NULL DEFAULT '0',
  `newsblocked` int(11) DEFAULT '0',
  `mtaserial` text,
  `ownerserial` text,
  `d_addiction` text,
  `loginhash` varchar(64) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `transfers` int(11) DEFAULT '0',
  `monitored` varchar(255) NOT NULL DEFAULT '',
  `autopark` int(11) NOT NULL DEFAULT '1',
  `forceUpdate` smallint(6) NOT NULL DEFAULT '0',
  `anotes` text,
  `oldAdminRank` int(11) DEFAULT '0',
  `suspensionTime` bigint(20) DEFAULT NULL,
  `car_license` int(11) NOT NULL DEFAULT '0',
  `adminreports_saved` int(11) DEFAULT '0',
  `cpa_earned` double DEFAULT '0',
  `electionsvoted` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `serial_whitelist_cap` int(11) NOT NULL DEFAULT '2',
  `tc_backend` tinyint(1) NOT NULL DEFAULT '0',
  `accountCode` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', 'Subaru', 'f30d58f1958cf0cb29e87dae24efaf2c', '1401602716', 'subaru.k@gmail.com', '801787776914948168', '2026-09-24 04:10:43', '2026-09-30 15:36:34', '196.123.91.123', '10', '0', '0', '2', '3', '1', '1', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '90E034AA11DE48BC3BE605CF63331802', '90E034AA11DE48BC3BE605CF63331802', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', '');
INSERT INTO `accounts` VALUES ('2', 'Alone', '73dc68a3bee5bd16a4b7b6bc56c46a4a', '4436540162', 'asfaf@gmail.com', '1215451483999309864', '2026-10-02 09:04:33', '2026-10-03 09:35:23', '197.57.50.124', '10', '0', '0', '0', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '2', '0', '1', null, '10', null, null, '1', '0', '0', '131C67C53EC487625D182C83CA6ACDA1', '131C67C53EC487625D182C83CA6ACDA1', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '2', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('4', 'LUFFYX', '8ea21cc16f01ef4adcb7b0f589c4bf40', '3751682698', 'mokhtartelep777@gmail.com', '980276870782287903', '2026-09-28 21:40:53', '2026-10-02 21:33:58', '197.50.254.245', '10', '0', '3', '2', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '2', '1', '1', null, '10', null, null, '1', '0', '0', 'D24444DD929970D3495612F573706653', 'D24444DD929970D3495612F573706653', null, null, '0', '0', 'Was warned for # ????? ??? ????', '1', '0', null, '0', null, '0', '2', '0', '0', '0', '1', '2', '0', 'NEOXJJ92P4RTH1UVH6EQ');
INSERT INTO `accounts` VALUES ('5', 'F30', '70c7ac886c9371e7677f393a982bf688', '1003556616', 'Khaled4333c@gmail.com', '1025054769041121350', '2026-09-27 05:04:01', '2026-10-03 09:35:22', '156.202.178.210', '10', '0', '3', '2', '3', '1', '0', '0', '0', 'Alonee Alonee', 'shtayem', '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '362DC82376481A46E501F348E9EF98A2', '362DC82376481A46E501F348E9EF98A2', null, null, '102661', '0', 'Was warned for .', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', 'MR17A7KHDLWMJBBV8Q4W');
INSERT INTO `accounts` VALUES ('7', 'SantaX', '28b192fd252c3892800b26200281576b', '1963409618', 'santaontop1122@gmail.com', '0', '2026-09-27 05:49:16', '2026-09-30 06:47:19', '156.203.142.137', '10', '0', '2', '2', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '78F89903779570F9C225F8A8C42C62E3', '78F89903779570F9C225F8A8C42C62E3', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('8', 'ghost', '768e35f01dc708d979d8c0726d80127b', '5742567741', 'ggjoe1170@gmail.com', '0', '2026-09-27 05:56:34', '2026-10-01 15:48:27', '102.190.14.99', '11', '0', '3', '0', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '42F49B3B6FD7F7DEFBE7D63290A40C43', '42F49B3B6FD7F7DEFBE7D63290A40C43', null, null, '50', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('9', 'Sa3dola', '6863af869410cb498b7fc9289c46c266', '1401602716', 'akmsdola@gmail.com', '0', '2026-09-27 07:42:34', '2026-09-28 08:37:39', '45.243.3.177', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', 'B6784314966FC47B1BD15F430B648261', 'B6784314966FC47B1BD15F430B648261', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('10', 'Loay', '1bce2b19db76c9864a24fcf7c9bbb810', '6666039331', 'loaymostafa101@gmail.com', '0', '2026-09-27 21:50:15', '2026-10-03 01:16:31', '154.238.8.187', '10', '0', '3', '0', '3', '1', '1', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', 'EAF34A1564CECC37C855FAB8D9B60953', 'EAF34A1564CECC37C855FAB8D9B60953', null, null, '1000', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('11', 'omarbasha', '14d44638bbf66401cb2dc3cd7556aeb4', '3065537345', 'bastaomar8@gmail.com', '0', '2026-09-28 00:37:45', '2026-10-01 02:23:16', '79.41.229.196', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '369AAEA71FC2D12DC639ECA2B6854D62', '369AAEA71FC2D12DC639ECA2B6854D62', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', 'XPRJU5NDGDXAPH5G');
INSERT INTO `accounts` VALUES ('12', 'AnaasX', '6ce40650fd24d445a75daa363f4cecb9', '4100355661', 'anraanra0189@gmail.com', '0', '2026-09-28 09:00:26', '2026-09-28 10:54:14', '197.54.56.135', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '58E8C5163EBDA28F973B8C88A65F28F3', '58E8C5163EBDA28F973B8C88A65F28F3', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('13', 'Mohamed34763', 'e80ee68d154bd7dce14e308b34876885', '5250260597', 'mmdgaming781@gmail.com', '0', '2026-09-28 21:08:16', '2026-10-02 19:35:34', '197.60.209.120', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', 'A56F89950A511523737BD4488A457394', 'A56F89950A511523737BD4488A457394', null, null, '50', '0', 'Was warned for # ????? ??? ??????', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', 'WWFSYT6GRP3EWU03');
INSERT INTO `accounts` VALUES ('16', 'xMinato', 'dca2b3f488833d85a0bc5699a0378019', '2896133618', 'ahmedmohamed2006h@gmail.com', '0', '2026-09-29 05:27:14', '2026-09-29 05:36:25', '41.237.210.215', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '751B142D35CEA7D790AB0717F7212894', '751B142D35CEA7D790AB0717F7212894', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('17', 'kreto', '83521b3e8ac5776b1b585bfd09d80f43', '1974846912', 'rony741000@gmail.com', '0', '2026-09-29 21:20:42', '2026-09-29 21:47:32', '45.244.69.30', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '4D2161A6231A089B82A9BF8A7D9ADA43', '4D2161A6231A089B82A9BF8A7D9ADA43', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('18', 'MrAdham', '6528dd7faafbe057299e3d3669ce95c1', '7292201432', 'adham80151461@gmail.com', '1395948314741969108', '2026-09-29 22:10:44', '2026-09-30 20:17:59', '102.44.187.59', '0', '0', '0', '3', '0', '1', '1', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '821EB2146B1154DEE01463E0603B5FB3', '821EB2146B1154DEE01463E0603B5FB3', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', '');
INSERT INTO `accounts` VALUES ('19', 'simokacm', 'b8c232d884d8056d36d6413212cdbdf6', '9793280126', 'kacm5163@gmail.com', '1141416105336914061', '2026-09-30 03:28:25', '2026-09-30 14:22:09', '196.70.215.7', '0', '0', '0', '0', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '2144292F6BCAA477771D5A4E68BA8954', '2144292F6BCAA477771D5A4E68BA8954', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', '');
INSERT INTO `accounts` VALUES ('20', 'ShniderX', 'b1f8cb7747940b2dadf5b3432972a47a', '2016333688', 'kemoohossen@gmail.com', '0', '2026-10-01 06:48:13', '2026-10-01 21:14:27', '196.131.173.50', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '5A4F8E339D25DD537D1BF9A6207D14F3', '5A4F8E339D25DD537D1BF9A6207D14F3', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', '8HQUV8U0Y8FWJH94');
INSERT INTO `accounts` VALUES ('21', 'Elsayed', '2d93b4a2d1676f62ca3789f917bc36c3', '2010881813', 'ningaa377@gmail.com', '0', '2026-10-01 13:53:28', '2026-10-01 15:49:04', '156.198.139.13', '0', '0', '0', '0', '0', '1', '0', '0', '499', null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', 'BB002E36B35E783EF16271D8F48486B2', 'BB002E36B35E783EF16271D8F48486B2', null, null, '50', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('22', 'hamza77', 'b6c68f1a3dafa3d312c268ab578c39de', '1766956641', 'hamza8745@gmail.com', '0', '2026-10-01 14:51:46', null, '196.65.47.116', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '33B3AF855D8028E3AFE5E3428A6DF944', '33B3AF855D8028E3AFE5E3428A6DF944', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('23', 'Riven', '446ff071aa5f47ca99c1ab0663286e39', '2222888860', 'riven2025@gmail.com', '0', '2026-10-01 16:30:24', '2026-10-01 17:19:58', '105.109.141.209', '10', '0', '3', '0', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '5589D5CA3D0CD00438247120949CCA81', '5589D5CA3D0CD00438247120949CCA81', null, null, '500', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('24', 'MaZiKaaa', '612c302c558913d7ab44a47c12edb06d', '1446292288', 'selim@gmail.com', '0', '2026-10-02 03:00:49', '2026-10-02 22:04:20', '41.238.168.104', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '2B5C30C4E1E811D952E3AB9CDE70A5A2', '2B5C30C4E1E811D952E3AB9CDE70A5A2', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('25', 'LEEYLIL', 'b331760310f23c6b0ba78359b313fdd4', '5657533101', 'mhmoud.n.mageed@gmail.com', '0', '2026-10-02 08:51:55', '2026-10-02 13:16:13', '102.190.244.27', '11', '0', '2', '0', '3', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', 'FF743B9C3505F4DAED6D86AA1E285694', 'FF743B9C3505F4DAED6D86AA1E285694', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('27', 'mohamadaliiq', '9c1cfe4feb5c49e9e4373ade30ec8a2e', '0817352656', 'faccam4@gmail.com', '0', '2026-10-02 20:24:23', '2026-10-02 20:47:35', '5.62.149.10', '0', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '767A2769B2F257140F26FC06E222DBF2', '767A2769B2F257140F26FC06E222DBF2', null, null, '0', '0', '', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);
INSERT INTO `accounts` VALUES ('29', 'mahoud', '2b11d66db51ec55a6a5f65edf3f56b73', '8441560721', 'mahoumd@gamil.com', '0', '2026-10-03 00:44:11', '2026-10-03 01:24:24', '188.236.118.153', '10', '0', '0', '0', '0', '1', '0', '0', null, null, null, '0', '1', 'Hi!', '0', '0', '0', '1', null, '10', null, null, '1', '0', '0', '5E2FC42653AC7721E1A2CA356E139FBF', '5E2FC42653AC7721E1A2CA356E139FBF', null, null, '0', '0', 'Was warned for ?????', '1', '0', null, '0', null, '0', '0', '0', '0', '0', '1', '2', '0', null);

-- ----------------------------
-- Table structure for adminhistory
-- ----------------------------
DROP TABLE IF EXISTS `adminhistory`;
CREATE TABLE `adminhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `user_char` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` tinyint(4) NOT NULL DEFAULT '6',
  `duration` int(11) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of adminhistory
-- ----------------------------
INSERT INTO `adminhistory` VALUES ('1', '7', '9', '4', '2026-09-27 08:56:22', '4', '0', '????????');
INSERT INTO `adminhistory` VALUES ('2', '7', '9', '4', '2026-09-27 08:56:35', '4', '0', '?? ????? ?? ??');
INSERT INTO `adminhistory` VALUES ('3', '4', '6', '7', '2026-09-27 08:59:07', '4', '0', '???');
INSERT INTO `adminhistory` VALUES ('4', '4', '6', '7', '2026-09-27 08:59:09', '4', '0', '???');
INSERT INTO `adminhistory` VALUES ('5', '4', '6', '7', '2026-09-27 08:59:10', '4', '0', '???');
INSERT INTO `adminhistory` VALUES ('6', '7', '9', '4', '2026-09-27 08:59:30', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('7', '7', '9', '4', '2026-09-27 08:59:33', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('8', '7', '9', '4', '2026-09-27 08:59:35', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('9', '7', '9', '4', '2026-09-27 08:59:38', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('10', '7', '9', '4', '2026-09-27 08:59:40', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('11', '7', '9', '4', '2026-09-27 08:59:43', '4', '0', '?????');
INSERT INTO `adminhistory` VALUES ('12', '4', '6', '7', '2026-09-27 09:14:15', '2', '0', '??? (Permanent)');
INSERT INTO `adminhistory` VALUES ('13', '4', '6', '7', '2026-09-27 09:15:36', '2', '1', '??? (1 Hour)');
INSERT INTO `adminhistory` VALUES ('14', '4', '6', '7', '2026-09-27 09:45:27', '2', '1', '????? ??? ??????? (1 Hour)');
INSERT INTO `adminhistory` VALUES ('16', '6', '8', '5', '2026-09-28 03:12:28', '2', '1', '. (1 Hour)');
INSERT INTO `adminhistory` VALUES ('18', '6', '8', '5', '2026-09-28 09:30:41', '0', '1', '.');
INSERT INTO `adminhistory` VALUES ('20', '8', '10', '6', '2026-09-29 00:37:14', '4', '0', '???? ???? ????');
INSERT INTO `adminhistory` VALUES ('21', '6', '8', '4', '2026-09-29 00:38:32', '4', '0', '??? ??? ?????? :)');
INSERT INTO `adminhistory` VALUES ('22', '4', '16', '5', '2026-09-29 01:30:24', '4', '0', '# ????? ??? ????');
INSERT INTO `adminhistory` VALUES ('23', '7', '9', '7', '2026-09-29 04:04:33', '2', '0', '??? (Permanent)');
INSERT INTO `adminhistory` VALUES ('24', '7', '9', '7', '2026-09-29 22:52:43', '0', '0', 'Unjailed');
INSERT INTO `adminhistory` VALUES ('25', '6', '8', '7', '2026-09-29 22:53:00', '0', '0', 'Unjailed');
INSERT INTO `adminhistory` VALUES ('26', '7', '9', '7', '2026-09-29 22:53:16', '0', '0', 'Unjailed');
INSERT INTO `adminhistory` VALUES ('27', '7', '9', '7', '2026-09-29 22:54:24', '0', '0', 'Unjailed');
INSERT INTO `adminhistory` VALUES ('28', '11', '13', '11', '2026-09-30 01:35:09', '4', '0', '???');
INSERT INTO `adminhistory` VALUES ('30', '21', '22', '8', '2026-10-01 14:37:36', '0', '500', '??? ????? ???????');
INSERT INTO `adminhistory` VALUES ('31', '21', '22', '8', '2026-10-01 14:39:19', '0', '0', 'Unjailed');
INSERT INTO `adminhistory` VALUES ('33', '13', '15', '10', '2026-10-01 21:28:53', '0', '500', '??? ????? ???????');
INSERT INTO `adminhistory` VALUES ('34', '13', '15', '13', '2026-10-01 21:29:05', '0', '0', 'Unjailed');

-- ----------------------------
-- Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `advertisement` text NOT NULL,
  `start` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertisements
-- ----------------------------

-- ----------------------------
-- Table structure for apb
-- ----------------------------
DROP TABLE IF EXISTS `apb`;
CREATE TABLE `apb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apb
-- ----------------------------

-- ----------------------------
-- Table structure for applications
-- ----------------------------
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` int(11) NOT NULL DEFAULT '0',
  `dateposted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datereviewed` datetime DEFAULT NULL,
  `reviewer` int(11) NOT NULL DEFAULT '0',
  `note` text,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `question1` text,
  `question2` text,
  `question3` text,
  `question4` text,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `answer4` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of applications
-- ----------------------------

-- ----------------------------
-- Table structure for applications_questions
-- ----------------------------
DROP TABLE IF EXISTS `applications_questions`;
CREATE TABLE `applications_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `key` tinyint(1) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `updatedBy` int(11) NOT NULL DEFAULT '0',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `part` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of applications_questions
-- ----------------------------

-- ----------------------------
-- Table structure for atm_cards
-- ----------------------------
DROP TABLE IF EXISTS `atm_cards`;
CREATE TABLE `atm_cards` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_owner` int(11) DEFAULT NULL,
  `card_number` text,
  `card_pin` varchar(4) NOT NULL DEFAULT '0000',
  `card_locked` tinyint(1) NOT NULL DEFAULT '0',
  `card_type` tinyint(1) NOT NULL DEFAULT '1',
  `limit_type` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_id_UNIQUE` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of atm_cards
-- ----------------------------

-- ----------------------------
-- Table structure for atms
-- ----------------------------
DROP TABLE IF EXISTS `atms`;
CREATE TABLE `atms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `deposit` tinyint(3) unsigned DEFAULT '0',
  `limit` int(10) unsigned DEFAULT '5000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of atms
-- ----------------------------

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(32) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `reason` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `threadid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle serial bans instead of using MTA built-in / Maxime';

-- ----------------------------
-- Records of bans
-- ----------------------------

-- ----------------------------
-- Table structure for blackmarket
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket`;
CREATE TABLE `blackmarket` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemquantity` int(11) DEFAULT NULL,
  `itemprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of blackmarket
-- ----------------------------

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `author` text,
  `book` longtext,
  `readOnly` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is used for the book system. // Chaos';

-- ----------------------------
-- Records of books
-- ----------------------------

-- ----------------------------
-- Table structure for business_accounts
-- ----------------------------
DROP TABLE IF EXISTS `business_accounts`;
CREATE TABLE `business_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` varchar(250) NOT NULL,
  `recipient_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `business` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of business_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for business_members
-- ----------------------------
DROP TABLE IF EXISTS `business_members`;
CREATE TABLE `business_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `wage` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT 'None',
  `date_hired` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of business_members
-- ----------------------------

-- ----------------------------
-- Table structure for business_rentals
-- ----------------------------
DROP TABLE IF EXISTS `business_rentals`;
CREATE TABLE `business_rentals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_type` int(11) NOT NULL,
  `rental_price` int(11) NOT NULL,
  `rented_to` int(11) NOT NULL,
  `rented_time` int(11) NOT NULL,
  `rented_phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of business_rentals
-- ----------------------------

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `bank_card` varchar(100) NOT NULL DEFAULT '0000 0000 0000 0000',
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of businesses
-- ----------------------------

-- ----------------------------
-- Table structure for character_settings
-- ----------------------------
DROP TABLE IF EXISTS `character_settings`;
CREATE TABLE `character_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_settings
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myid` int(11) DEFAULT NULL,
  `charactername` mediumtext COLLATE utf8mb4_unicode_ci,
  `account` int(11) DEFAULT '0',
  `x` float DEFAULT '1770.02',
  `y` float DEFAULT '-1860.91',
  `z` float DEFAULT '13.5782',
  `rotation` float DEFAULT '359.388',
  `interior_id` int(11) DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `skin` int(11) DEFAULT '264',
  `money` bigint(20) DEFAULT '10000',
  `gender` int(11) DEFAULT '0',
  `cuffed` int(11) DEFAULT '0',
  `duty` int(11) DEFAULT '0',
  `fightstyle` int(11) DEFAULT '4',
  `pdjail` int(11) DEFAULT '0',
  `pdjail_time` int(11) DEFAULT '0',
  `cked` int(11) DEFAULT '0',
  `lastarea` mediumtext COLLATE utf8mb4_unicode_ci,
  `age` int(11) DEFAULT '18',
  `faction_id` int(11) DEFAULT '-1',
  `faction_rank` int(11) DEFAULT '1',
  `faction_perks` mediumtext COLLATE utf8mb4_unicode_ci,
  `faction_phone` int(10) unsigned DEFAULT NULL,
  `skincolor` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '180',
  `height` int(11) DEFAULT '180',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `deaths` int(11) DEFAULT '0',
  `faction_leader` int(11) DEFAULT '0',
  `fingerprint` mediumtext COLLATE utf8mb4_unicode_ci,
  `casualskin` int(11) DEFAULT '0',
  `bankmoney` bigint(20) DEFAULT '15000',
  `car_license` int(11) DEFAULT '0',
  `bike_license` int(11) DEFAULT '0',
  `pilot_license` int(11) DEFAULT '0',
  `fish_license` int(11) DEFAULT '0',
  `boat_license` int(11) DEFAULT '0',
  `gun_license` int(11) DEFAULT '0',
  `gun2_license` int(11) DEFAULT '0',
  `tag` int(11) DEFAULT '1',
  `hoursplayed` int(11) DEFAULT '0',
  `pdjail_station` int(11) DEFAULT '0',
  `timeinserver` int(11) DEFAULT '0',
  `restrainedobj` int(11) DEFAULT '0',
  `restrainedby` int(11) DEFAULT '0',
  `dutyskin` int(11) DEFAULT '-1',
  `fish` int(10) unsigned NOT NULL DEFAULT '0',
  `blindfold` tinyint(4) NOT NULL DEFAULT '0',
  `lang1` tinyint(4) DEFAULT '1',
  `lang1skill` tinyint(4) DEFAULT '100',
  `lang2` tinyint(4) DEFAULT '0',
  `lang2skill` tinyint(4) DEFAULT '0',
  `lang3` tinyint(4) DEFAULT '0',
  `lang3skill` tinyint(4) DEFAULT '0',
  `currlang` tinyint(1) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `election_candidate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `election_canvote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `election_votedfor` int(10) unsigned NOT NULL DEFAULT '0',
  `marriedto` int(10) unsigned NOT NULL DEFAULT '0',
  `photos` int(10) unsigned NOT NULL DEFAULT '0',
  `maxvehicles` int(10) unsigned NOT NULL DEFAULT '5',
  `ck_info` mediumtext COLLATE utf8mb4_unicode_ci,
  `alcohollevel` float NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recovery` int(11) DEFAULT '0',
  `recoverytime` bigint(20) DEFAULT NULL,
  `walkingstyle` int(11) NOT NULL DEFAULT '0',
  `job` int(11) NOT NULL DEFAULT '0',
  `day` tinyint(4) NOT NULL DEFAULT '1',
  `month` tinyint(4) NOT NULL DEFAULT '1',
  `maxinteriors` int(11) NOT NULL DEFAULT '10',
  `clothingid` int(10) unsigned DEFAULT NULL,
  `death_date` datetime DEFAULT NULL,
  `minutesplayed` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '65', 'Subaru_Kagami', '1', '1163.05', '-1549.68', '29.9062', '45.9977', '0', '0', '100', '0', '228', '5849178463', '0', '0', '0', '4', '0', '0', '0', 'Market, Los Santos', '26', '-1', '1', null, null, '0', '180', '180', null, '0', '0', null, '0', '1000010400', '1', '1', '1', '1', '1', '1', '0', '1', '7504', '0', '107', '0', '0', '-1', '0', '0', '1', '100', '2', '100', '3', '100', '1', '2026-09-30 15:36:34', '2026-09-29 01:07:22', '0', '0', '0', '0', '0', '99', null, '0', '1', '0', null, '0', '0', '1', '1', '10', null, null, '20');
INSERT INTO `characters` VALUES ('2', '1', 'Alonee_Alonee', '2', '1609.79', '-1250.25', '47.5244', '14.2962', '0', '0', '95', '0', '62', '10821566', '0', '0', '0', '4', '0', '0', '0', 'Downtown Los Santos, Los Santos', '25', '-1', '1', null, null, '0', '138', '162', '', '0', '0', '53C29E87A44AA94BDB3F949798529686', '0', '121672', '1', '0', '0', '0', '0', '0', '0', '1', '82', '0', '604', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-03 09:35:23', '2026-09-27 08:31:29', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '0', '0', '10', '1', '10', null, null, '51');
INSERT INTO `characters` VALUES ('5', '199', 'Supermeme_Elqhatni', '3', '1720.45', '-1680.33', '56.4688', '113.565', '0', '0', '79', '0', '7', '15000', '0', '0', '0', '4', '0', '0', '0', 'Commerce, Los Santos', '25', '-1', '1', null, null, '0', '64', '199', '', '0', '0', '391050497D0B6D3503F56BC895330BE3', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '15', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-07-10 17:47:50', '2026-07-10 17:32:57', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '27', '1', '10', null, null, '14');
INSERT INTO `characters` VALUES ('7', '228', 'F30', '5', '1043.25', '-1337.03', '13.7266', '18.6413', '0', '0', '100', '0', '0', '31268596', '0', '0', '0', '4', '0', '0', '0', 'Market, Los Santos', '22', '-1', '1', null, null, '0', '61', '199', '', '0', '0', 'FE27E8D32BE1D0B6277F8B527AE4F455', '0', '13814', '1', '0', '0', '0', '0', '0', '0', '1', '100020', '0', '806', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-03 09:35:22', '2026-09-27 08:04:52', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '2', '10', '10', null, null, '29');
INSERT INTO `characters` VALUES ('9', '17', 'Santa', '7', '1625.27', '-2288.22', '94.9967', '126.161', '0', '0', '90', '0', '0', '2084533', '0', '0', '0', '4', '0', '0', '0', 'Los Santos International, Los Santos', '19', '-1', '1', null, null, '0', '53', '191', '', '0', '0', '1EE2B75820D72E75BB3218FDCEFC2420', '0', '88184', '1', '1', '0', '0', '0', '0', '0', '1', '10', '0', '198', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-30 06:47:19', '2026-09-27 08:49:38', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '1', '1', '10', null, null, '18');
INSERT INTO `characters` VALUES ('10', '33', 'GHOST_GHOST', '8', '606.269', '-1441.52', '80.1562', '171.052', '0', '0', '1', '0', '0', '2878015', '0', '0', '0', '4', '0', '0', '0', 'Rodeo, Los Santos', '25', '-1', '1', null, null, '0', '93', '154', '', '0', '0', '995CECDFEB69526431DB650F5E2390B0', '0', '95990', '0', '0', '0', '0', '0', '0', '0', '1', '28', '0', '126', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-01 15:48:27', '2026-09-27 09:06:16', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '15', '8', '10', null, null, '23');
INSERT INTO `characters` VALUES ('11', '333333', 'Jason_Statham', '9', '1474.3', '-1042.74', '23.8281', '1.45297', '0', '0', '94', '0', '7', '1449987', '0', '0', '0', '4', '0', '0', '0', 'Mulholland Intersection, Los Santos', '21', '-1', '1', null, null, '0', '115', '178', '', '0', '0', '860DF7770ED1BCBEB5A645F1760E7FB9', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '73', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-28 08:37:39', '2026-09-27 10:44:13', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '23', '8', '10', null, null, '10');
INSERT INTO `characters` VALUES ('12', '3', 'Loay_Mostafa', '10', '1550.03', '-1368.02', '329.453', '180', '0', '0', '94', '0', '0', '53433491', '0', '0', '0', '4', '0', '0', '0', 'Los Santos, Los Santos', '35', '-1', '1', null, null, '0', '87', '180', '', '0', '0', 'A0D5F9994557970AF06330789F251162', '0', '89330', '1', '0', '0', '0', '0', '0', '0', '1', '5', '0', '85', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-03 01:16:31', '2026-09-28 00:51:09', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '0', '0', '19', '12', '10', null, null, '44');
INSERT INTO `characters` VALUES ('13', '333497', 'Omar_EL_Basha', '11', '1693.52', '-2578.81', '13.5469', '18.6633', '0', '1', '69', '0', '7', '3010000', '0', '0', '0', '4', '0', '0', '0', 'Unknown Area', '21', '-1', '1', null, null, '0', '71', '188', '', '0', '0', 'F6392926E5E97386B8C65A44CE805D99', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '2', '0', '80', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-01 02:23:16', '2026-09-28 03:38:23', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '121', '0', '21', '1', '10', null, null, '20');
INSERT INTO `characters` VALUES ('14', '2', 'Thomas_Klebitz', '12', '1780.36', '-1663.4', '13.2915', '355.56', '0', '0', '100', '0', '7', '43860000', '0', '0', '0', '4', '0', '0', '0', 'Little Mexico, Los Santos', '18', '-1', '1', null, null, '0', '125', '168', '', '0', '0', '96E376F6C8054E4994F3ED788CEBE006', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '86', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-28 10:54:14', '2026-09-28 12:01:02', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '0', '0', '10', '10', '10', null, null, '38');
INSERT INTO `characters` VALUES ('15', '333622', 'Mohamed_Ekdawsari', '13', '-625.266', '-1291.35', '20.546', '252.401', '0', '0', '44', '0', '17', '504468', '0', '0', '0', '4', '0', '0', '0', 'Flint County, Flint County', '20', '-1', '1', null, null, '0', '54', '197', '', '0', '0', '4160173E8984B02E313D6EF4ADC2AC3B', '0', '87154', '0', '0', '0', '0', '0', '0', '0', '1', '5', '0', '98', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-02 19:35:34', '2026-09-29 00:08:38', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '3', '9', '10', null, null, '33');
INSERT INTO `characters` VALUES ('16', '911', 'Luffyx_Johnson', '4', '1049.68', '-1350.37', '13.0469', '0.118103', '0', '0', '50', '0', '0', '13027642', '0', '0', '0', '4', '0', '0', '0', 'Market, Los Santos', '21', '-1', '1', null, null, '0', '100', '197', '', '0', '0', 'B73D30EDDC03F345A607DDBF8C4ACF87', '0', '94866', '1', '0', '0', '0', '0', '0', '0', '1', '22', '0', '68', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-02 21:33:58', '2026-09-29 00:42:12', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '8', '2', '10', null, null, '34');
INSERT INTO `characters` VALUES ('17', '333778', 'Minato_Johnson', '16', '1830.52', '-1664', '13.5469', '202.885', '0', '0', '100', '0', '7', '1479370', '0', '0', '0', '4', '0', '0', '0', 'Idlewood, Los Santos', '22', '-1', '1', null, null, '0', '56', '150', '', '0', '0', '6B7CA795267EBB1F58281A2426DA1A0F', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '8', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-29 05:36:25', '2026-09-29 08:28:33', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '15', '3', '10', null, null, '7');
INSERT INTO `characters` VALUES ('18', '333942', 'Ahmed_Kreto', '17', '1267.3', '-1707.19', '13.5469', '114.301', '0', '0', '100', '0', '24', '1488000', '0', '0', '0', '4', '0', '0', '0', 'Verona Beach, Los Santos', '28', '-1', '1', null, null, '0', '136', '157', '', '0', '0', '23B8619022496EA7FB739747261BF1C7', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '26', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-29 21:47:32', '2026-09-30 00:21:58', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '21', '1', '10', null, null, '25');
INSERT INTO `characters` VALUES ('19', '15', 'Adham_Mohamed', '18', '2622.57', '-2480.3', '13.5453', '2.53513', '0', '0', '64', '0', '7', '760351', '0', '0', '0', '4', '0', '0', '0', 'Ocean Docks, Los Santos', '19', '-1', '1', null, null, '0', '51', '191', '', '0', '0', '20F541038F620167B0622792B6F29AE9', '0', '87154', '1', '0', '0', '0', '0', '0', '0', '1', '6', '0', '113', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-30 20:17:59', '2026-09-30 01:11:13', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '8', '5', '10', null, null, '46');
INSERT INTO `characters` VALUES ('20', '334137', 'Khalide_Elmitnake', '19', '1747.86', '-1367.89', '30.9198', '5.095', '0', '0', '13', '0', '7', '370000', '0', '0', '0', '4', '0', '0', '0', 'Downtown Los Santos, Los Santos', '25', '-1', '1', null, null, '0', '113', '171', '', '0', '0', 'B91B65A966CCBFB5AB2127D32EACC44B', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '71', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-09-30 14:22:09', '2026-09-30 06:29:16', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '19', '12', '10', null, null, '9');
INSERT INTO `characters` VALUES ('21', '334290', 'Kemo_ELdeeb', '20', '1649.33', '-1098.41', '23.9062', '227.072', '0', '0', '62', '0', '7', '1415000', '0', '0', '0', '4', '0', '0', '0', 'Mulholland Intersection, Los Santos', '20', '-1', '1', null, null, '0', '65', '162', '', '0', '0', '50A4E957F2031486B2E7E802DBBC35ED', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '16', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-01 21:14:27', '2026-10-01 06:48:35', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '14', '3', '10', null, null, '13');
INSERT INTO `characters` VALUES ('22', '7', 'Elsayed_Smith', '21', '1953.4', '1495.64', '8.04332', '111.109', '0', '0', '46', '0', '7', '1561976', '0', '0', '0', '4', '0', '0', '0', 'Pirates in Men\'s Pants, Las Venturas', '19', '-1', '1', null, null, '0', '129', '177', '', '0', '0', '8424BCCE9EA85B79B4F8BED70B666C34', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '96', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-01 15:49:04', '2026-10-01 14:06:35', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '6', '1', '10', null, null, '34');
INSERT INTO `characters` VALUES ('23', '2', 'Riven_Oliver', '23', '1801.8', '-1696.41', '13.2435', '349.055', '0', '0', '83', '0', '7', '4105000', '0', '0', '0', '4', '0', '0', '0', 'Little Mexico, Los Santos', '19', '-1', '1', null, null, '0', '85', '175', '', '0', '0', '310532555253C537184334E76EF120C1', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '45', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-01 17:19:58', '2026-10-01 16:31:20', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '10', '10', '10', null, null, '44');
INSERT INTO `characters` VALUES ('25', '69', 'Leyl', '25', '-1905.08', '148.803', '27.5415', '289.859', '4', '25', '72', '0', '7', '2573997', '0', '0', '0', '4', '0', '0', '0', 'Unknown Area', '25', '-1', '1', null, null, '0', '66', '171', '', '0', '0', 'E15ACE5B49D93709111E12805A2C0D25', '0', '86074', '0', '0', '0', '0', '0', '0', '0', '1', '5', '0', '50', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-02 13:16:13', '2026-10-02 09:07:57', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '10', '12', '10', null, null, '55');
INSERT INTO `characters` VALUES ('26', '334404', 'John_Willson', '27', '1792.45', '-1702.35', '13.6531', '247.331', '0', '0', '100', '0', '7', '423998', '0', '0', '0', '4', '0', '0', '0', 'Little Mexico, Los Santos', '19', '-1', '1', null, null, '0', '84', '190', '', '0', '0', '313ED4A7307882DF5283C0FD8ED33891', '0', '85000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '22', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-02 20:47:35', '2026-10-02 20:25:36', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '5', '8', '10', null, null, '21');
INSERT INTO `characters` VALUES ('27', '334536', 'Mazika_Walker', '24', '1006.82', '-1337.58', '13.3747', '169.184', '0', '0', '100', '0', '7', '65000', '0', '0', '0', '4', '0', '0', '0', 'Market, Los Santos', '27', '-1', '1', null, null, '0', '60', '181', '', '0', '0', '9DDDD8B3AD22623EB4AFE5E474B3D696', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '5', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-02 22:04:20', '2026-10-02 21:58:35', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '69', '0', '26', '1', '10', null, null, '5');
INSERT INTO `characters` VALUES ('28', '334689', 'Abo_Abood', '29', '1526.33', '-1608.37', '13.3707', '109.395', '0', '0', '96', '0', '7', '4715000', '0', '0', '0', '4', '0', '0', '0', 'Pershing Square, Los Santos', '18', '-1', '1', null, null, '0', '68', '176', '', '0', '0', '652E0646E294570EAC9BB568DB81411F', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '28', '0', '0', '-1', '0', '0', '11', '100', '0', '0', '0', '0', '1', '2026-10-03 01:24:24', '2026-10-03 00:56:02', '0', '0', '0', '0', '0', '5', null, '0', '1', '0', null, '128', '0', '19', '5', '10', null, null, '27');

-- ----------------------------
-- Table structure for clothing
-- ----------------------------
DROP TABLE IF EXISTS `clothing`;
CREATE TABLE `clothing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skin` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clothing
-- ----------------------------

-- ----------------------------
-- Table structure for commands
-- ----------------------------
DROP TABLE IF EXISTS `commands`;
CREATE TABLE `commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` text,
  `hotkey` text,
  `explanation` text,
  `permission` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of supported commands and con';

-- ----------------------------
-- Records of commands
-- ----------------------------

-- ----------------------------
-- Table structure for computers
-- ----------------------------
DROP TABLE IF EXISTS `computers`;
CREATE TABLE `computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float(10,5) NOT NULL,
  `posY` float(10,5) NOT NULL,
  `posZ` float(10,5) NOT NULL,
  `rotX` float(10,5) NOT NULL,
  `rotY` float(10,5) NOT NULL,
  `rotZ` float(10,5) NOT NULL,
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of computers
-- ----------------------------

-- ----------------------------
-- Table structure for cpa_postbacks
-- ----------------------------
DROP TABLE IF EXISTS `cpa_postbacks`;
CREATE TABLE `cpa_postbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_id` int(11) NOT NULL,
  `payout` double DEFAULT '0',
  `message` text,
  `offer_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cpa_postbacks
-- ----------------------------

-- ----------------------------
-- Table structure for dancers
-- ----------------------------
DROP TABLE IF EXISTS `dancers`;
CREATE TABLE `dancers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `skin` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `interior` int(10) unsigned NOT NULL,
  `dimension` int(10) unsigned NOT NULL,
  `offset` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dancers
-- ----------------------------

-- ----------------------------
-- Table structure for discord_auction_bids
-- ----------------------------
DROP TABLE IF EXISTS `discord_auction_bids`;
CREATE TABLE `discord_auction_bids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL,
  `discord_id` varchar(32) NOT NULL,
  `discord_name` varchar(255) NOT NULL,
  `bid_amount` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `auction_id` (`auction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discord_auction_bids
-- ----------------------------
INSERT INTO `discord_auction_bids` VALUES ('1', '2', '1025054769041121350', 'khaled_4ab00ra', '200000', '2026-10-03 08:31:13');

-- ----------------------------
-- Table structure for discord_auctions
-- ----------------------------
DROP TABLE IF EXISTS `discord_auctions`;
CREATE TABLE `discord_auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(32) NOT NULL,
  `message_id` varchar(32) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_type` varchar(50) DEFAULT 'shop',
  `item_id` int(11) DEFAULT '0',
  `start_price` bigint(20) NOT NULL,
  `current_price` bigint(20) NOT NULL,
  `top_bidder_discord` varchar(32) DEFAULT NULL,
  `top_bidder_name` varchar(255) DEFAULT NULL,
  `image_url` text,
  `created_by_discord` varchar(32) NOT NULL,
  `created_by_name` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT '1',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) DEFAULT 'active',
  `is_claimed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discord_auctions
-- ----------------------------
INSERT INTO `discord_auctions` VALUES ('1', '1555713255530430594', '1555811055303659591', '133', 'shop', '4', '2000000', '2000000', null, null, null, '1025054769041121350', 'khaled_4ab00ra', '14', '2026-10-03 08:17:41', '2026-10-17 08:17:41', 'ended', '0');
INSERT INTO `discord_auctions` VALUES ('2', '1555713255530430594', '1555812805788180490', '0', 'shop', '4', '1', '200000', '1025054769041121350', 'khaled_4ab00ra', null, '1025054769041121350', 'khaled_4ab00ra', '14', '2026-10-03 08:24:38', '2026-10-17 08:24:39', 'ended', '1');

-- ----------------------------
-- Table structure for discord_mta_actions
-- ----------------------------
DROP TABLE IF EXISTS `discord_mta_actions`;
CREATE TABLE `discord_mta_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) NOT NULL,
  `discord_id` varchar(32) NOT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `result` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discord_mta_actions
-- ----------------------------
INSERT INTO `discord_mta_actions` VALUES ('1', 'giveItem', '1025054769041121350', 'shop', '4', 'Auction Win: 0', 'done', 'تم تسليم الاعب ``F30`` عقد البقالة وتغيير ملكيتها بنجاح ✅', '2026-10-03 08:36:31');
INSERT INTO `discord_mta_actions` VALUES ('2', 'restartServer', '50', '50', null, null, 'done', 'تم بدأ العد التنازلي لريستارت الخادم بنجاح، سوف يتم عمل ريستارت للخادم بعد ``50 دقيقة`` ✅', '2026-10-03 08:49:10');
INSERT INTO `discord_mta_actions` VALUES ('3', 'cancelRestart', '', null, null, null, 'done', 'تم إلغاء حالة الريستارت بنجاح ✅', '2026-10-03 08:49:27');

-- ----------------------------
-- Table structure for discord_user_bank
-- ----------------------------
DROP TABLE IF EXISTS `discord_user_bank`;
CREATE TABLE `discord_user_bank` (
  `discord_id` varchar(32) NOT NULL,
  `balance` bigint(20) DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`discord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discord_user_bank
-- ----------------------------
INSERT INTO `discord_user_bank` VALUES ('1025054769041121350', '0', '2026-10-03 08:31:13');

-- ----------------------------
-- Table structure for don_purchases
-- ----------------------------
DROP TABLE IF EXISTS `don_purchases`;
CREATE TABLE `don_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `cost` int(11) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of don_purchases
-- ----------------------------
INSERT INTO `don_purchases` VALUES ('1', 'Purchased new radio station (Name: \'?\', URL: \'https://k.top4top.io/m_3924am2ug1.mp3\')', '-10', '2026-09-30 04:37:03', '4');

-- ----------------------------
-- Table structure for don_transaction_failed
-- ----------------------------
DROP TABLE IF EXISTS `don_transaction_failed`;
CREATE TABLE `don_transaction_failed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `output` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of don_transaction_failed
-- ----------------------------

-- ----------------------------
-- Table structure for don_transactions
-- ----------------------------
DROP TABLE IF EXISTS `don_transactions`;
CREATE TABLE `don_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(64) NOT NULL,
  `donator_email` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `original_request` text,
  `dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `handled` smallint(6) DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `realamount` double NOT NULL DEFAULT '0',
  `item_number` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of don_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for donates
-- ----------------------------
DROP TABLE IF EXISTS `donates`;
CREATE TABLE `donates` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(19) NOT NULL,
  `payer_email` varchar(75) NOT NULL,
  `mc_gross` float(9,2) NOT NULL,
  `donor` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `donated_for` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `txn_id` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of donates
-- ----------------------------

-- ----------------------------
-- Table structure for donators
-- ----------------------------
DROP TABLE IF EXISTS `donators`;
CREATE TABLE `donators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT '-1',
  `perkID` int(11) NOT NULL,
  `perkValue` varchar(10) NOT NULL DEFAULT '1',
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of donators
-- ----------------------------
INSERT INTO `donators` VALUES ('1', '5', '-1', '11', '1', '2026-10-31 20:15:09');
INSERT INTO `donators` VALUES ('2', '5', '-1', '10', '1', '2026-10-31 20:15:09');
INSERT INTO `donators` VALUES ('3', '5', '-1', '7', '1', '2026-10-31 20:15:09');
INSERT INTO `donators` VALUES ('4', '5', '-1', '5', '2', '2026-10-31 20:15:09');
INSERT INTO `donators` VALUES ('6', '10', '-1', '11', '1', '2026-10-02 20:43:19');

-- ----------------------------
-- Table structure for duty_allowed
-- ----------------------------
DROP TABLE IF EXISTS `duty_allowed`;
CREATE TABLE `duty_allowed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faction` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for an admin allow list.';

-- ----------------------------
-- Records of duty_allowed
-- ----------------------------

-- ----------------------------
-- Table structure for duty_custom
-- ----------------------------
DROP TABLE IF EXISTS `duty_custom`;
CREATE TABLE `duty_custom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `skins` text NOT NULL,
  `locations` text NOT NULL,
  `items` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for custom duties.';

-- ----------------------------
-- Records of duty_custom
-- ----------------------------

-- ----------------------------
-- Table structure for duty_locations
-- ----------------------------
DROP TABLE IF EXISTS `duty_locations`;
CREATE TABLE `duty_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `vehicleid` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for custom duty locations.';

-- ----------------------------
-- Records of duty_locations
-- ----------------------------

-- ----------------------------
-- Table structure for elections
-- ----------------------------
DROP TABLE IF EXISTS `elections`;
CREATE TABLE `elections` (
  `idelections` varchar(45) NOT NULL,
  `Votes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idelections`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of elections
-- ----------------------------

-- ----------------------------
-- Table structure for elevators
-- ----------------------------
DROP TABLE IF EXISTS `elevators`;
CREATE TABLE `elevators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `tpx` decimal(10,6) DEFAULT '0.000000',
  `tpy` decimal(10,6) DEFAULT '0.000000',
  `tpz` decimal(10,6) DEFAULT '0.000000',
  `dimensionwithin` int(11) DEFAULT '0',
  `interiorwithin` int(11) DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `car` tinyint(3) unsigned DEFAULT '0',
  `disabled` tinyint(3) unsigned DEFAULT '0',
  `rot` decimal(10,6) DEFAULT '0.000000',
  `tprot` decimal(10,6) DEFAULT '0.000000',
  `oneway` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of elevators
-- ----------------------------

-- ----------------------------
-- Table structure for emailaccounts
-- ----------------------------
DROP TABLE IF EXISTS `emailaccounts`;
CREATE TABLE `emailaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emailaccounts
-- ----------------------------

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `sender` text,
  `receiver` text,
  `subject` text,
  `message` text,
  `inbox` int(11) NOT NULL DEFAULT '0',
  `outbox` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emails
-- ----------------------------

-- ----------------------------
-- Table structure for factions
-- ----------------------------
DROP TABLE IF EXISTS `factions`;
CREATE TABLE `factions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci,
  `bankbalance` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rank_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_3` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_4` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_5` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_6` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_7` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_8` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_9` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_10` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_11` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_12` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_13` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_14` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_15` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_16` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_17` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_18` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_19` mediumtext COLLATE utf8mb4_unicode_ci,
  `rank_20` mediumtext COLLATE utf8mb4_unicode_ci,
  `wage_1` int(11) DEFAULT '100',
  `wage_2` int(11) DEFAULT '100',
  `wage_3` int(11) DEFAULT '100',
  `wage_4` int(11) DEFAULT '100',
  `wage_5` int(11) DEFAULT '100',
  `wage_6` int(11) DEFAULT '100',
  `wage_7` int(11) DEFAULT '100',
  `wage_8` int(11) DEFAULT '100',
  `wage_9` int(11) DEFAULT '100',
  `wage_10` int(11) DEFAULT '100',
  `wage_11` int(11) DEFAULT '100',
  `wage_12` int(11) DEFAULT '100',
  `wage_13` int(11) DEFAULT '100',
  `wage_14` int(11) DEFAULT '100',
  `wage_15` int(11) DEFAULT '100',
  `wage_16` int(11) DEFAULT '100',
  `wage_17` int(11) DEFAULT '100',
  `wage_18` int(11) DEFAULT '100',
  `wage_19` int(11) DEFAULT '100',
  `wage_20` int(11) DEFAULT '100',
  `motd` mediumtext COLLATE utf8mb4_unicode_ci,
  `note` mediumtext COLLATE utf8mb4_unicode_ci,
  `fnote` mediumtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_interiors` int(11) DEFAULT '20',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of factions
-- ----------------------------

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '3',
  `comment` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
INSERT INTO `feedbacks` VALUES ('3', '6', '4', '3', 'f', '2026-09-28 23:07:31');
INSERT INTO `feedbacks` VALUES ('4', '2', '13', '5', '??? ???????? ? ??????? ???? ????? ????????', '2026-10-02 19:13:00');
INSERT INTO `feedbacks` VALUES ('5', '2', '13', '5', '??? ???????? ? ??????? ???? ????? ????????', '2026-10-02 19:23:55');
INSERT INTO `feedbacks` VALUES ('6', '4', '27', '5', '??? ???????? ? ??????? ???? ????? ????????', '2026-10-02 20:44:33');

-- ----------------------------
-- Table structure for force_apps
-- ----------------------------
DROP TABLE IF EXISTS `force_apps`;
CREATE TABLE `force_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) DEFAULT NULL,
  `forceapp_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Save forceapped players information to keep them from resubm';

-- ----------------------------
-- Records of force_apps
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL,
  `friend` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for fuelpeds
-- ----------------------------
DROP TABLE IF EXISTS `fuelpeds`;
CREATE TABLE `fuelpeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `skin` int(11) DEFAULT '50',
  `name` varchar(50) NOT NULL,
  `deletedBy` int(11) DEFAULT '0',
  `shop_link` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fuelpeds
-- ----------------------------

-- ----------------------------
-- Table structure for fuelstations
-- ----------------------------
DROP TABLE IF EXISTS `fuelstations`;
CREATE TABLE `fuelstations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `interior` int(11) DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fuelstations
-- ----------------------------

-- ----------------------------
-- Table structure for gates
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) unsigned NOT NULL,
  `autocloseTime` int(11) NOT NULL,
  `movementTime` int(11) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text,
  `creator` varchar(50) NOT NULL DEFAULT '',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adminNote` varchar(300) NOT NULL DEFAULT '',
  `triggerDistance` float DEFAULT NULL,
  `triggerDistanceVehicle` float DEFAULT NULL,
  `sound` varchar(50) DEFAULT 'metalgate',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gates
-- ----------------------------
INSERT INTO `gates` VALUES ('1', '980', '1245.8', '-767.228', '94.0658', '0', '0', '181.78', '1245.8', '-767.228', '87.0658', '0', '0', '181.78', '1', '20', '20', '0', '0', '', 'F30', '2026-10-02 14:50:28', 'Gate #1', '35', '35', null);

-- ----------------------------
-- Table structure for health_diagnose
-- ----------------------------
DROP TABLE IF EXISTS `health_diagnose`;
CREATE TABLE `health_diagnose` (
  `uniqueID` int(11) DEFAULT NULL,
  `int_diagnose` varchar(255) DEFAULT NULL,
  `ext_diagnose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of health_diagnose
-- ----------------------------

-- ----------------------------
-- Table structure for informationicons
-- ----------------------------
DROP TABLE IF EXISTS `informationicons`;
CREATE TABLE `informationicons` (
  `id` int(11) DEFAULT NULL,
  `createdby` text,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `interior` float DEFAULT NULL,
  `dimension` float DEFAULT NULL,
  `information` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of informationicons
-- ----------------------------

-- ----------------------------
-- Table structure for insurance_data
-- ----------------------------
DROP TABLE IF EXISTS `insurance_data`;
CREATE TABLE `insurance_data` (
  `policyid` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(45) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `protection` varchar(45) NOT NULL,
  `deductible` int(11) NOT NULL,
  `date` date NOT NULL,
  `claims` float NOT NULL,
  `cashout` float NOT NULL,
  `premium` int(11) NOT NULL,
  `insurancefaction` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`policyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of insurance_data
-- ----------------------------

-- ----------------------------
-- Table structure for insurance_factions
-- ----------------------------
DROP TABLE IF EXISTS `insurance_factions`;
CREATE TABLE `insurance_factions` (
  `factionID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gen_maxi` float NOT NULL DEFAULT '0.005',
  `news` text,
  `subscription` text,
  PRIMARY KEY (`factionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of insurance_factions
-- ----------------------------

-- ----------------------------
-- Table structure for interior_business
-- ----------------------------
DROP TABLE IF EXISTS `interior_business`;
CREATE TABLE `interior_business` (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) NOT NULL DEFAULT 'Welcome to our business!',
  PRIMARY KEY (`intID`),
  UNIQUE KEY `intID_UNIQUE` (`intID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about businesses - Maxime';

-- ----------------------------
-- Records of interior_business
-- ----------------------------

-- ----------------------------
-- Table structure for interior_logs
-- ----------------------------
DROP TABLE IF EXISTS `interior_logs`;
CREATE TABLE `interior_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on interiors - Monitored by Interio';

-- ----------------------------
-- Records of interior_logs
-- ----------------------------
INSERT INTO `interior_logs` VALUES ('1', '2026-10-02 19:27:31', '3', 'addnewint - id 119 - price $8000 - name Garage', '5');
INSERT INTO `interior_logs` VALUES ('2', '2026-10-02 22:14:22', '4', 'addnewint - id 119 - price $8000 - name Garage', '5');
INSERT INTO `interior_logs` VALUES ('3', '2026-10-02 22:39:58', '4', 'Bought/rented, $8,000, F30', '5');
INSERT INTO `interior_logs` VALUES ('4', '2026-10-02 22:40:04', '4', 'Entered', '5');
INSERT INTO `interior_logs` VALUES ('5', '2026-10-02 22:40:18', '4', 'Entered', '2');
INSERT INTO `interior_logs` VALUES ('6', '2026-10-02 22:40:27', '4', 'Exited', '5');
INSERT INTO `interior_logs` VALUES ('7', '2026-10-02 22:40:31', '4', 'Exited', '2');
INSERT INTO `interior_logs` VALUES ('8', '2026-10-02 22:40:46', '4', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('9', '2026-10-02 22:40:52', '3', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('10', '2026-10-02 22:40:55', '2', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('11', '2026-10-02 22:41:05', '1', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('12', '2026-10-02 23:10:31', '5', 'addnewint - id 119 - price $8000 - name Garage', '5');
INSERT INTO `interior_logs` VALUES ('13', '2026-10-02 23:10:36', '5', 'Bought/rented, $8,000, F30', '5');
INSERT INTO `interior_logs` VALUES ('14', '2026-10-02 23:10:38', '5', 'Entered', '5');
INSERT INTO `interior_logs` VALUES ('15', '2026-10-02 23:10:45', '5', 'Exited', '5');
INSERT INTO `interior_logs` VALUES ('16', '2026-10-02 23:13:42', '5', 'Entered', '5');
INSERT INTO `interior_logs` VALUES ('17', '2026-10-02 23:13:47', '5', 'Exited', '5');
INSERT INTO `interior_logs` VALUES ('18', '2026-10-02 23:18:30', '5', 'Entered', '5');
INSERT INTO `interior_logs` VALUES ('19', '2026-10-02 23:18:37', '5', 'Exited', '5');
INSERT INTO `interior_logs` VALUES ('20', '2026-10-02 23:18:45', '6', 'addnewint - id 119 - price $8000 - name Garage', '5');
INSERT INTO `interior_logs` VALUES ('21', '2026-10-02 23:23:43', '7', 'addint - id 84 - price $0 - name قصر المطايزه', '5');
INSERT INTO `interior_logs` VALUES ('22', '2026-10-02 23:24:09', '7', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('23', '2026-10-02 23:29:35', '5', 'Entered', '5');
INSERT INTO `interior_logs` VALUES ('24', '2026-10-02 23:29:40', '5', 'Exited', '5');
INSERT INTO `interior_logs` VALUES ('25', '2026-10-02 23:34:44', '6', 'Bought/rented, $8,000, F30', '5');
INSERT INTO `interior_logs` VALUES ('26', '2026-10-02 23:35:18', '6', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('27', '2026-10-02 23:35:22', '5', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('28', '2026-10-02 23:35:41', '8', 'addint - id 84 - price $0 - name قصر المطايزه', '5');
INSERT INTO `interior_logs` VALUES ('29', '2026-10-02 23:41:03', '8', 'Bought/rented, $0, F30', '5');
INSERT INTO `interior_logs` VALUES ('30', '2026-10-02 23:41:17', '8', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('31', '2026-10-02 23:49:28', '9', 'addint - id 84 - price $0 - name قصر المطايزه', '5');
INSERT INTO `interior_logs` VALUES ('32', '2026-10-02 23:49:44', '9', 'Bought/rented, $0, F30', '5');
INSERT INTO `interior_logs` VALUES ('33', '2026-10-03 00:00:01', '9', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('34', '2026-10-03 00:00:08', '10', 'addint - id 84 - price $0 - name قصر المطايزه', '5');
INSERT INTO `interior_logs` VALUES ('35', '2026-10-03 00:00:13', '10', 'Bought/rented, $0, F30', '5');
INSERT INTO `interior_logs` VALUES ('36', '2026-10-03 00:00:23', '10', 'delint', '5');
INSERT INTO `interior_logs` VALUES ('37', '2026-10-03 00:02:14', '11', 'addint - id 84 - price $0 - name قصر المطايزه', '5');
INSERT INTO `interior_logs` VALUES ('38', '2026-10-03 00:03:22', '12', 'addint - id 84 - price $0 - name .', '5');
INSERT INTO `interior_logs` VALUES ('39', '2026-10-03 00:03:38', '13', 'addint - id 84 - price $0 - name 0', '5');
INSERT INTO `interior_logs` VALUES ('40', '2026-10-03 00:03:44', '13', 'Bought/rented, $0, F30', '5');

-- ----------------------------
-- Table structure for interior_notes
-- ----------------------------
DROP TABLE IF EXISTS `interior_notes`;
CREATE TABLE `interior_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of interior_notes
-- ----------------------------

-- ----------------------------
-- Table structure for interior_textures
-- ----------------------------
DROP TABLE IF EXISTS `interior_textures`;
CREATE TABLE `interior_textures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interior` int(11) NOT NULL,
  `texture` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interior_textures
-- ----------------------------

-- ----------------------------
-- Table structure for interiors
-- ----------------------------
DROP TABLE IF EXISTS `interiors`;
CREATE TABLE `interiors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `owner` int(11) DEFAULT '-1',
  `locked` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interior` int(11) DEFAULT '0',
  `interiorx` float DEFAULT '0',
  `interiory` float DEFAULT '0',
  `interiorz` float DEFAULT '0',
  `dimensionwithin` int(11) DEFAULT '0',
  `interiorwithin` int(11) DEFAULT '0',
  `angle` float DEFAULT '0',
  `angleexit` float DEFAULT '0',
  `supplies` int(11) DEFAULT '100',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `disabled` tinyint(3) unsigned DEFAULT '0',
  `lastused` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT '0',
  `keypad_lock` int(11) DEFAULT NULL,
  `keypad_lock_pw` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keypad_lock_auto` tinyint(1) DEFAULT NULL,
  `uploaded_interior` datetime DEFAULT NULL,
  `faction` int(11) DEFAULT '0',
  `protected_until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of interiors
-- ----------------------------
INSERT INTO `interiors` VALUES ('1', '1496.91', '-688.478', '95.4026', '0', '-1', '1', '0', '??? ????????', '10', '24', '1340.33', '1084.37', '0', '0', '0', '178.028', '100', null, null, null, null, '0', '2026-10-01 22:22:32', 'F30', '2026-10-01 22:22:32', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('2', '1497.06', '-690.125', '94.75', '0', '-1', '1', '8000', 'Garage', '21', '-2031.88', '-118.21', '1039.3', '0', '0', '0', '358.124', '100', null, null, null, null, '0', '2026-10-02 18:38:05', 'F30', '2026-10-02 18:38:05', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('3', '1496.8', '-689.44', '94.9761', '0', '-1', '1', '8000', 'Garage', '21', '-2031.88', '-118.21', '1039.3', '0', '0', '0', '358.997', '100', null, null, null, null, '0', '2026-10-02 19:27:31', 'F30', '2026-10-02 19:27:31', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('4', '1494.15', '-692.399', '94.75', '0', '7', '0', '8000', 'Garage', '21', '-2031.88', '-118.21', '1039.3', '0', '0', '0', '123.639', '100', null, null, null, null, '0', '2026-10-02 22:40:31', 'F30', '2026-10-02 22:14:22', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('5', '1492.56', '-690.055', '94.75', '0', '7', '0', '8000', 'Garage', '21', '-2031.88', '-118.21', '1039.3', '0', '0', '0', '310.866', '100', null, null, null, null, '0', '2026-10-02 23:29:40', 'F30', '2026-10-02 23:10:31', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('6', '1497.03', '-689.706', '94.8589', '0', '7', '0', '8000', 'Garage', '21', '-2031.88', '-118.21', '1039.3', '0', '0', '0', '358.542', '100', null, null, null, null, '0', '2026-10-02 23:34:44', 'F30', '2026-10-02 23:18:45', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('7', '1298.76', '-798.933', '84.1406', '0', '-1', '1', '0', '??? ????????', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '358.695', '100', null, null, null, null, '0', '2026-10-02 23:23:43', 'F30', '2026-10-02 23:23:43', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('8', '1497.04', '-690.307', '94.75', '0', '7', '0', '0', '??? ????????', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '72.5411', '100', null, null, null, null, '0', '2026-10-02 23:41:03', 'F30', '2026-10-02 23:35:41', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('9', '1496.94', '-690.738', '94.75', '0', '7', '0', '0', 'قصر المطايزه', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '16.0925', '100', null, null, null, null, '0', '2026-10-02 23:49:44', 'F30', '2026-10-02 23:49:28', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('10', '1497.14', '-690.793', '94.75', '0', '7', '0', '0', 'قصر المطايزه', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '0.848724', '100', null, null, null, null, '0', '2026-10-03 00:00:13', 'F30', '2026-10-03 00:00:08', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('11', '1497.09', '-690.635', '94.75', '0', '-1', '1', '0', 'قصر المطايزه', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '355.614', '100', null, null, null, null, '0', '2026-10-03 00:02:14', '0', '2026-10-03 00:02:14', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('12', '1494.94', '-690.778', '94.75', '0', '-1', '1', '0', '.', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '357.63', '100', null, null, null, null, '0', '2026-10-03 00:03:22', '0', '2026-10-03 00:03:22', 'F30', '0', null, null, null, null, '0', null);
INSERT INTO `interiors` VALUES ('13', '1493.14', '-689.918', '94.75', '3', '7', '0', '0', '0', '5', '1260.84', '-785.42', '1091.9', '0', '0', '270', '85.2085', '100', null, null, null, null, '0', '2026-10-03 00:03:43', '0', '2026-10-03 00:03:38', 'F30', '0', null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` text NOT NULL,
  `protected` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------

-- ----------------------------
-- Table structure for jailed
-- ----------------------------
DROP TABLE IF EXISTS `jailed`;
CREATE TABLE `jailed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL,
  `charactername` text NOT NULL,
  `jail_time` bigint(20) NOT NULL,
  `convictionDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` text NOT NULL,
  `charges` text NOT NULL,
  `cell` text NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jailed
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `jobID` int(11) NOT NULL DEFAULT '0',
  `jobCharID` int(11) NOT NULL DEFAULT '-1',
  `jobLevel` int(11) NOT NULL DEFAULT '1',
  `jobProgress` int(11) NOT NULL DEFAULT '0',
  `jobTruckingRuns` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Saves job info, skill level and progress - Maxime';

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_trucker_orders
-- ----------------------------
DROP TABLE IF EXISTS `jobs_trucker_orders`;
CREATE TABLE `jobs_trucker_orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderX` float NOT NULL DEFAULT '0',
  `orderY` float NOT NULL DEFAULT '0',
  `orderZ` float NOT NULL DEFAULT '0',
  `orderWeight` int(11) NOT NULL DEFAULT '0',
  `orderName` text NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about customer orders to create markers for truck';

-- ----------------------------
-- Records of jobs_trucker_orders
-- ----------------------------

-- ----------------------------
-- Table structure for leo_impound_lot
-- ----------------------------
DROP TABLE IF EXISTS `leo_impound_lot`;
CREATE TABLE `leo_impound_lot` (
  `lane` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `int` float NOT NULL,
  `dim` float NOT NULL,
  `faction` int(11) NOT NULL,
  `veh` int(11) NOT NULL DEFAULT '0',
  `fine` int(11) NOT NULL DEFAULT '0',
  `release_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lane`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of leo_impound_lot
-- ----------------------------

-- ----------------------------
-- Table structure for lift_floors
-- ----------------------------
DROP TABLE IF EXISTS `lift_floors`;
CREATE TABLE `lift_floors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lift` int(11) NOT NULL,
  `x` float(10,6) DEFAULT '0.000000',
  `y` float(10,6) DEFAULT '0.000000',
  `z` float(10,6) DEFAULT '0.000000',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `floor` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lift_floors
-- ----------------------------

-- ----------------------------
-- Table structure for lifts
-- ----------------------------
DROP TABLE IF EXISTS `lifts`;
CREATE TABLE `lifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lifts
-- ----------------------------

-- ----------------------------
-- Table structure for lottery
-- ----------------------------
DROP TABLE IF EXISTS `lottery`;
CREATE TABLE `lottery` (
  `characterid` int(11) NOT NULL,
  `ticketnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lottery
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_apb
-- ----------------------------
DROP TABLE IF EXISTS `mdc_apb`;
CREATE TABLE `mdc_apb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_involved` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `organization` varchar(10) NOT NULL DEFAULT 'LSPD',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_apb
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_calls
-- ----------------------------
DROP TABLE IF EXISTS `mdc_calls`;
CREATE TABLE `mdc_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_calls
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_crimes
-- ----------------------------
DROP TABLE IF EXISTS `mdc_crimes`;
CREATE TABLE `mdc_crimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_crimes
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_criminals
-- ----------------------------
DROP TABLE IF EXISTS `mdc_criminals`;
CREATE TABLE `mdc_criminals` (
  `character` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL DEFAULT 'mm/dd/yyyy',
  `ethnicity` varchar(50) NOT NULL DEFAULT 'Unknown',
  `phone` varchar(10) NOT NULL DEFAULT 'Unknown',
  `occupation` varchar(50) NOT NULL DEFAULT 'Unknown',
  `address` varchar(50) NOT NULL DEFAULT 'Unknown',
  `photo` int(11) NOT NULL DEFAULT '-1',
  `details` varchar(255) NOT NULL DEFAULT 'None',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `wanted` int(11) NOT NULL DEFAULT '0',
  `wanted_by` int(11) NOT NULL DEFAULT '0',
  `wanted_details` varchar(255) DEFAULT NULL,
  `pilot_details` varchar(255) DEFAULT NULL,
  UNIQUE KEY `name` (`character`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_criminals
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_faa_events
-- ----------------------------
DROP TABLE IF EXISTS `mdc_faa_events`;
CREATE TABLE `mdc_faa_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_faa_events
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_faa_licenses
-- ----------------------------
DROP TABLE IF EXISTS `mdc_faa_licenses`;
CREATE TABLE `mdc_faa_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `license` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `officer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_faa_licenses
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_impounds
-- ----------------------------
DROP TABLE IF EXISTS `mdc_impounds`;
CREATE TABLE `mdc_impounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `veh` int(11) NOT NULL,
  `content` text,
  `reporter` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_impounds
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_users
-- ----------------------------
DROP TABLE IF EXISTS `mdc_users`;
CREATE TABLE `mdc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) NOT NULL DEFAULT 'LSPD',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdc_users
-- ----------------------------

-- ----------------------------
-- Table structure for mdcusers
-- ----------------------------
DROP TABLE IF EXISTS `mdcusers`;
CREATE TABLE `mdcusers` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123',
  `high_command` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdcusers
-- ----------------------------

-- ----------------------------
-- Table structure for motd_read
-- ----------------------------
DROP TABLE IF EXISTS `motd_read`;
CREATE TABLE `motd_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Note down everyone that read and dismissed the motd.';

-- ----------------------------
-- Records of motd_read
-- ----------------------------

-- ----------------------------
-- Table structure for motds
-- ----------------------------
DROP TABLE IF EXISTS `motds`;
CREATE TABLE `motds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` datetime DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `dismissable` tinyint(1) NOT NULL DEFAULT '1',
  `audiences` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of motds
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` text,
  `details` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `offline_pm` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(11) NOT NULL DEFAULT '1',
  `doublesided` int(11) NOT NULL DEFAULT '0',
  `scale` float(12,7) DEFAULT NULL,
  `breakable` int(11) NOT NULL DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of objects
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for paynspray
-- ----------------------------
DROP TABLE IF EXISTS `paynspray`;
CREATE TABLE `paynspray` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of paynspray
-- ----------------------------

-- ----------------------------
-- Table structure for pd_tickets
-- ----------------------------
DROP TABLE IF EXISTS `pd_tickets`;
CREATE TABLE `pd_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pd_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for ped_inventory
-- ----------------------------
DROP TABLE IF EXISTS `ped_inventory`;
CREATE TABLE `ped_inventory` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` text NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ped_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for ped_mission
-- ----------------------------
DROP TABLE IF EXISTS `ped_mission`;
CREATE TABLE `ped_mission` (
  `char_id` int(11) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ped_mission
-- ----------------------------

-- ----------------------------
-- Table structure for peds
-- ----------------------------
DROP TABLE IF EXISTS `peds`;
CREATE TABLE `peds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `behaviour` int(11) DEFAULT '1',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  `skin` int(11) DEFAULT NULL,
  `money` bigint(20) NOT NULL DEFAULT '0',
  `gender` int(11) DEFAULT NULL,
  `stats` text,
  `description` text,
  `owner_type` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  `animation` varchar(255) DEFAULT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT '0',
  `nametag` tinyint(1) NOT NULL DEFAULT '1',
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peds
-- ----------------------------

-- ----------------------------
-- Table structure for pending_shop_orders
-- ----------------------------
DROP TABLE IF EXISTS `pending_shop_orders`;
CREATE TABLE `pending_shop_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_value` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pending_shop_orders
-- ----------------------------

-- ----------------------------
-- Table structure for phone_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_contacts`;
CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` bigint(20) NOT NULL,
  `entryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryNumber` bigint(20) NOT NULL,
  `entryEmail` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for phone_history
-- ----------------------------
DROP TABLE IF EXISTS `phone_history`;
CREATE TABLE `phone_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of phone_history
-- ----------------------------

-- ----------------------------
-- Table structure for phone_sms
-- ----------------------------
DROP TABLE IF EXISTS `phone_sms`;
CREATE TABLE `phone_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of phone_sms
-- ----------------------------

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `phonenumber` int(11) NOT NULL,
  `turnedon` smallint(6) NOT NULL DEFAULT '1',
  `secretnumber` smallint(6) NOT NULL DEFAULT '0',
  `phonebook` varchar(40) NOT NULL DEFAULT '0',
  `ringtone` smallint(6) NOT NULL DEFAULT '3',
  `contact_limit` int(11) NOT NULL DEFAULT '50',
  `boughtby` int(11) NOT NULL DEFAULT '-1',
  `bought_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sms_tone` smallint(6) NOT NULL DEFAULT '7',
  `keypress_tone` smallint(6) NOT NULL DEFAULT '1',
  `tone_volume` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`phonenumber`),
  UNIQUE KEY `phonenumber_UNIQUE` (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phones
-- ----------------------------

-- ----------------------------
-- Table structure for pilot_notams
-- ----------------------------
DROP TABLE IF EXISTS `pilot_notams`;
CREATE TABLE `pilot_notams` (
  `id` int(11) NOT NULL,
  `information` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pilot_notams
-- ----------------------------

-- ----------------------------
-- Table structure for publicphones
-- ----------------------------
DROP TABLE IF EXISTS `publicphones`;
CREATE TABLE `publicphones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of publicphones
-- ----------------------------

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` text,
  `account_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of purchases
-- ----------------------------

-- ----------------------------
-- Table structure for radio_stations
-- ----------------------------
DROP TABLE IF EXISTS `radio_stations`;
CREATE TABLE `radio_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_name` text,
  `source` text,
  `owner` int(11) NOT NULL DEFAULT '0',
  `register_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Dynamic radio stations.';

-- ----------------------------
-- Records of radio_stations
-- ----------------------------
INSERT INTO `radio_stations` VALUES ('1', 'bad gay', 'https://j.top4top.io/m_38435ecne1.mp3', '0', null, null, '1', '1');
INSERT INTO `radio_stations` VALUES ('2', 'happy nathion', 'https://j.top4top.io/m_38439c3ua1.mp3', '0', null, null, '1', '2');
INSERT INTO `radio_stations` VALUES ('3', 'harly', 'https://l.top4top.io/m_3843wwys21.mp3', '0', null, null, '1', '3');
INSERT INTO `radio_stations` VALUES ('4', '??? ???? ??? ???????', 'https://e.top4top.io/m_3924amsgb1.mp3', '0', null, null, '1', '4');
INSERT INTO `radio_stations` VALUES ('5', '?', 'https://k.top4top.io/m_3924am2ug1.mp3', '4', null, '2026-10-30 01:37:03', '1', '5');

-- ----------------------------
-- Table structure for ramps
-- ----------------------------
DROP TABLE IF EXISTS `ramps`;
CREATE TABLE `ramps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` text,
  `interior` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT NULL,
  `rotation` int(11) DEFAULT NULL,
  `creator` text,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ramps
-- ----------------------------

-- ----------------------------
-- Table structure for restricted_freqs
-- ----------------------------
DROP TABLE IF EXISTS `restricted_freqs`;
CREATE TABLE `restricted_freqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` text,
  `limitedto` int(11) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of restricted_freqs
-- ----------------------------

-- ----------------------------
-- Table structure for sapt_destinations
-- ----------------------------
DROP TABLE IF EXISTS `sapt_destinations`;
CREATE TABLE `sapt_destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `destinationID` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sapt_destinations
-- ----------------------------

-- ----------------------------
-- Table structure for sapt_locations
-- ----------------------------
DROP TABLE IF EXISTS `sapt_locations`;
CREATE TABLE `sapt_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` int(11) NOT NULL,
  `stopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sapt_locations
-- ----------------------------

-- ----------------------------
-- Table structure for sapt_routes
-- ----------------------------
DROP TABLE IF EXISTS `sapt_routes`;
CREATE TABLE `sapt_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `destination` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sapt_routes
-- ----------------------------

-- ----------------------------
-- Table structure for serial_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `serial_whitelist`;
CREATE TABLE `serial_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `serial` varchar(32) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of serial_whitelist
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('3', 'tax', '15');
INSERT INTO `settings` VALUES ('4', 'incometax', '10');

-- ----------------------------
-- Table structure for sfia_pilots
-- ----------------------------
DROP TABLE IF EXISTS `sfia_pilots`;
CREATE TABLE `sfia_pilots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charactername` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sfia_pilots
-- ----------------------------

-- ----------------------------
-- Table structure for shop_contacts_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_contacts_info`;
CREATE TABLE `shop_contacts_info` (
  `npcID` int(11) NOT NULL,
  `sOwner` text,
  `sPhone` text,
  `sEmail` text,
  `sForum` text,
  PRIMARY KEY (`npcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves data about business''s owners in shop system - MAXIME';

-- ----------------------------
-- Records of shop_contacts_info
-- ----------------------------

-- ----------------------------
-- Table structure for shop_products
-- ----------------------------
DROP TABLE IF EXISTS `shop_products`;
CREATE TABLE `shop_products` (
  `npcID` int(11) DEFAULT NULL,
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text,
  `pDesc` text,
  `pPrice` text,
  `pDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `pQuantity` int(11) NOT NULL DEFAULT '1',
  `pSetQuantity` int(11) NOT NULL DEFAULT '1',
  `pRestockInterval` int(11) DEFAULT '0',
  `pRestockedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pID`),
  UNIQUE KEY `pID_UNIQUE` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxi';

-- ----------------------------
-- Records of shop_products
-- ----------------------------

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `shoptype` tinyint(4) DEFAULT '0',
  `rotationz` float NOT NULL DEFAULT '0',
  `skin` int(11) DEFAULT '-1',
  `sPendingWage` int(11) NOT NULL DEFAULT '0',
  `sIncome` bigint(20) NOT NULL DEFAULT '0',
  `sCapacity` int(11) NOT NULL DEFAULT '10',
  `sSales` varchar(5000) NOT NULL DEFAULT '',
  `pedName` text,
  `deletedBy` int(11) NOT NULL DEFAULT '0',
  `faction_belong` int(11) NOT NULL DEFAULT '0',
  `faction_access` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shops
-- ----------------------------

-- ----------------------------
-- Table structure for speedcams
-- ----------------------------
DROP TABLE IF EXISTS `speedcams`;
CREATE TABLE `speedcams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float(11,7) NOT NULL DEFAULT '0.0000000',
  `y` float(11,7) NOT NULL DEFAULT '0.0000000',
  `z` float(11,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(11) NOT NULL DEFAULT '0' COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `maxspeed` int(11) NOT NULL DEFAULT '120',
  `radius` int(11) NOT NULL DEFAULT '2',
  `enabled` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of speedcams
-- ----------------------------

-- ----------------------------
-- Table structure for speedingviolations
-- ----------------------------
DROP TABLE IF EXISTS `speedingviolations`;
CREATE TABLE `speedingviolations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `speed` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `personVisible` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of speedingviolations
-- ----------------------------

-- ----------------------------
-- Table structure for staff_changelogs
-- ----------------------------
DROP TABLE IF EXISTS `staff_changelogs`;
CREATE TABLE `staff_changelogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `from_rank` int(11) NOT NULL,
  `to_rank` int(11) DEFAULT NULL,
  `by` int(11) DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maxime 2015.01.08';

-- ----------------------------
-- Records of staff_changelogs
-- ----------------------------
INSERT INTO `staff_changelogs` VALUES ('4', '3', '1', '0', '12', '1', '????? ???????? ??? ???? ???? ????? ???', '2026-07-10 17:43:33');
INSERT INTO `staff_changelogs` VALUES ('5', '4', '1', '12', '0', '5', null, '2026-09-27 05:26:45');
INSERT INTO `staff_changelogs` VALUES ('6', '4', '1', '12', '10', '5', null, '2026-09-27 05:27:03');
INSERT INTO `staff_changelogs` VALUES ('7', '6', '2', '0', '3', '4', null, '2026-09-27 05:32:35');
INSERT INTO `staff_changelogs` VALUES ('8', '6', '1', '0', '9', '4', null, '2026-09-27 05:33:30');
INSERT INTO `staff_changelogs` VALUES ('9', '7', '1', '0', '8', '4', null, '2026-09-27 05:50:10');
INSERT INTO `staff_changelogs` VALUES ('10', '7', '1', '0', '9', '4', null, '2026-09-27 05:53:47');
INSERT INTO `staff_changelogs` VALUES ('11', '4', '1', '12', '0', '5', null, '2026-09-27 06:11:17');
INSERT INTO `staff_changelogs` VALUES ('12', '7', '1', '0', '11', '5', null, '2026-09-27 06:11:32');
INSERT INTO `staff_changelogs` VALUES ('13', '4', '1', '0', '11', '5', null, '2026-09-27 06:13:46');
INSERT INTO `staff_changelogs` VALUES ('14', '8', '1', '0', '11', '5', null, '2026-09-27 06:14:21');
INSERT INTO `staff_changelogs` VALUES ('15', '6', '1', '0', '11', '5', null, '2026-09-27 06:15:19');
INSERT INTO `staff_changelogs` VALUES ('16', '5', '5', '0', '2', '5', null, '2026-09-27 06:17:25');
INSERT INTO `staff_changelogs` VALUES ('17', '7', '2', '0', '4', '7', 'f', '2026-09-27 06:17:50');
INSERT INTO `staff_changelogs` VALUES ('18', '7', '3', '0', '2', '7', 'f', '2026-09-27 06:17:50');
INSERT INTO `staff_changelogs` VALUES ('19', '5', '3', '0', '2', '5', null, '2026-09-27 06:18:11');
INSERT INTO `staff_changelogs` VALUES ('20', '7', '2', '4', '0', '5', null, '2026-09-27 06:20:33');
INSERT INTO `staff_changelogs` VALUES ('21', '7', '3', '2', '0', '7', '?', '2026-09-27 06:20:57');
INSERT INTO `staff_changelogs` VALUES ('22', '4', '1', '11', '9', '4', null, '2026-09-27 06:21:17');
INSERT INTO `staff_changelogs` VALUES ('23', '4', '1', '9', '8', '4', null, '2026-09-27 06:25:26');
INSERT INTO `staff_changelogs` VALUES ('24', '4', '1', '8', '0', '7', '#-????? ???? ???? ?????', '2026-09-27 06:25:29');
INSERT INTO `staff_changelogs` VALUES ('25', '4', '1', '0', '11', '7', '??? ???? ??? ???', '2026-09-27 06:25:55');
INSERT INTO `staff_changelogs` VALUES ('26', '6', '1', '11', '12', '5', null, '2026-09-27 06:39:12');
INSERT INTO `staff_changelogs` VALUES ('27', '4', '4', '0', '3', '5', null, '2026-09-27 06:41:07');
INSERT INTO `staff_changelogs` VALUES ('28', '7', '1', '11', '12', '4', 'sss', '2026-09-27 06:41:30');
INSERT INTO `staff_changelogs` VALUES ('29', '4', '1', '11', '0', '7', '???', '2026-09-27 06:41:38');
INSERT INTO `staff_changelogs` VALUES ('30', '4', '1', '0', '12', '7', '?', '2026-09-27 06:41:43');
INSERT INTO `staff_changelogs` VALUES ('31', '9', '1', '0', '10', '4', '?????', '2026-09-27 08:16:56');
INSERT INTO `staff_changelogs` VALUES ('32', '6', '1', '12', '0', '5', null, '2026-09-27 20:18:35');
INSERT INTO `staff_changelogs` VALUES ('33', '6', '1', '0', '12', '5', null, '2026-09-27 20:18:57');
INSERT INTO `staff_changelogs` VALUES ('34', '7', '4', '0', '3', '5', null, '2026-09-27 20:44:43');
INSERT INTO `staff_changelogs` VALUES ('35', '10', '1', '0', '12', '5', '..', '2026-09-27 21:52:58');
INSERT INTO `staff_changelogs` VALUES ('36', '10', '1', '0', '12', '10', '?????', '2026-09-27 21:54:51');
INSERT INTO `staff_changelogs` VALUES ('37', '10', '3', '0', '2', '10', 'asd', '2026-09-27 21:55:40');
INSERT INTO `staff_changelogs` VALUES ('38', '6', '1', '12', '0', '5', 's', '2026-09-28 00:12:08');
INSERT INTO `staff_changelogs` VALUES ('39', '6', '1', '12', '11', '5', '.', '2026-09-28 00:12:50');
INSERT INTO `staff_changelogs` VALUES ('40', '10', '1', '0', '12', '5', null, '2026-09-28 00:23:42');
INSERT INTO `staff_changelogs` VALUES ('41', '10', '1', '0', '12', '10', null, '2026-09-28 00:24:05');
INSERT INTO `staff_changelogs` VALUES ('42', '5', '1', '12', '11', '5', null, '2026-09-28 00:59:48');
INSERT INTO `staff_changelogs` VALUES ('43', '5', '1', '12', '9', '5', null, '2026-09-28 01:00:13');
INSERT INTO `staff_changelogs` VALUES ('44', '5', '1', '12', '11', '5', null, '2026-09-28 01:26:46');
INSERT INTO `staff_changelogs` VALUES ('45', '4', '1', '12', '0', '5', null, '2026-09-28 06:00:17');
INSERT INTO `staff_changelogs` VALUES ('46', '4', '1', '12', '0', '5', null, '2026-09-28 06:01:52');
INSERT INTO `staff_changelogs` VALUES ('47', '4', '1', '12', '0', '5', null, '2026-09-28 06:02:59');
INSERT INTO `staff_changelogs` VALUES ('48', '4', '1', '12', '0', '5', '.', '2026-09-28 06:12:20');
INSERT INTO `staff_changelogs` VALUES ('49', '6', '1', '12', '6', '5', null, '2026-09-28 06:15:11');
INSERT INTO `staff_changelogs` VALUES ('50', '6', '1', '12', '0', '5', null, '2026-09-28 06:15:30');
INSERT INTO `staff_changelogs` VALUES ('51', '6', '1', '12', '11', '5', null, '2026-09-28 06:16:36');
INSERT INTO `staff_changelogs` VALUES ('52', '4', '1', '12', '0', '5', null, '2026-09-28 06:18:00');
INSERT INTO `staff_changelogs` VALUES ('53', '12', '1', '0', '12', '6', 'dasg', '2026-09-28 09:02:48');
INSERT INTO `staff_changelogs` VALUES ('54', '12', '1', '0', '12', '12', 'sss', '2026-09-28 09:13:55');
INSERT INTO `staff_changelogs` VALUES ('55', '12', '4', '3', '0', '5', null, '2026-09-28 09:15:41');
INSERT INTO `staff_changelogs` VALUES ('56', '12', '1', '12', '11', '5', null, '2026-09-28 09:16:04');
INSERT INTO `staff_changelogs` VALUES ('57', '12', '4', '0', '3', '5', null, '2026-09-28 09:17:36');
INSERT INTO `staff_changelogs` VALUES ('58', '12', '1', '11', '12', '12', 's', '2026-09-28 09:17:55');
INSERT INTO `staff_changelogs` VALUES ('59', '10', '1', '0', '12', '6', 'sgfasdg', '2026-09-28 21:33:09');
INSERT INTO `staff_changelogs` VALUES ('60', '8', '1', '11', '0', '10', null, '2026-09-28 21:42:06');
INSERT INTO `staff_changelogs` VALUES ('61', '8', '1', '0', '11', '10', null, '2026-09-28 21:42:44');
INSERT INTO `staff_changelogs` VALUES ('62', '4', '3', '0', '2', '5', null, '2026-09-28 23:14:45');
INSERT INTO `staff_changelogs` VALUES ('63', '4', '1', '12', '11', '5', null, '2026-09-28 23:15:16');
INSERT INTO `staff_changelogs` VALUES ('64', '4', '3', '2', '0', '5', null, '2026-09-28 23:15:16');
INSERT INTO `staff_changelogs` VALUES ('65', '4', '4', '3', '0', '5', null, '2026-09-28 23:15:16');
INSERT INTO `staff_changelogs` VALUES ('66', '4', '5', '2', '0', '5', null, '2026-09-28 23:15:16');
INSERT INTO `staff_changelogs` VALUES ('67', '5', '3', '2', '0', '5', null, '2026-09-28 23:19:20');
INSERT INTO `staff_changelogs` VALUES ('68', '5', '3', '0', '2', '5', null, '2026-09-28 23:23:49');
INSERT INTO `staff_changelogs` VALUES ('69', '7', '3', '0', '2', '7', 'f', '2026-09-28 23:39:07');
INSERT INTO `staff_changelogs` VALUES ('70', '4', '4', '0', '3', '5', null, '2026-09-28 23:56:32');
INSERT INTO `staff_changelogs` VALUES ('71', '4', '1', '11', '12', '4', 'HHH', '2026-09-29 00:13:54');
INSERT INTO `staff_changelogs` VALUES ('72', '4', '3', '0', '2', '4', 'HHH', '2026-09-29 00:13:54');
INSERT INTO `staff_changelogs` VALUES ('73', '4', '5', '0', '2', '4', 'HHH', '2026-09-29 00:13:54');
INSERT INTO `staff_changelogs` VALUES ('74', '7', '3', '2', '0', '5', null, '2026-09-29 00:14:33');
INSERT INTO `staff_changelogs` VALUES ('75', '7', '3', '0', '2', '7', 'q', '2026-09-29 01:09:43');
INSERT INTO `staff_changelogs` VALUES ('76', '7', '1', '12', '10', '7', 'r', '2026-09-29 02:14:32');
INSERT INTO `staff_changelogs` VALUES ('77', '7', '1', '10', '9', '7', 'r', '2026-09-29 02:14:44');
INSERT INTO `staff_changelogs` VALUES ('78', '7', '1', '9', '2', '7', 'f', '2026-09-29 02:15:07');
INSERT INTO `staff_changelogs` VALUES ('79', '7', '1', '2', '12', '7', '3', '2026-09-29 02:15:22');
INSERT INTO `staff_changelogs` VALUES ('80', '7', '1', '12', '8', '7', 'r', '2026-09-29 02:15:41');
INSERT INTO `staff_changelogs` VALUES ('81', '7', '1', '8', '7', '7', '1', '2026-09-29 02:15:54');
INSERT INTO `staff_changelogs` VALUES ('82', '7', '1', '7', '12', '7', '3', '2026-09-29 02:16:02');
INSERT INTO `staff_changelogs` VALUES ('83', '6', '3', '0', '2', '5', null, '2026-09-29 05:18:27');
INSERT INTO `staff_changelogs` VALUES ('84', '16', '1', '0', '11', '7', null, '2026-09-29 05:29:43');
INSERT INTO `staff_changelogs` VALUES ('85', '11', '1', '0', '11', '7', null, '2026-09-29 19:44:44');
INSERT INTO `staff_changelogs` VALUES ('86', '11', '1', '0', '12', '7', null, '2026-09-29 19:46:55');
INSERT INTO `staff_changelogs` VALUES ('87', '18', '1', '0', '12', '6', 'asfasf', '2026-09-29 22:13:35');
INSERT INTO `staff_changelogs` VALUES ('88', '18', '1', '0', '12', '6', 'asddd', '2026-09-29 22:28:06');
INSERT INTO `staff_changelogs` VALUES ('89', '18', '3', '0', '2', '6', 'asfsaf', '2026-09-29 22:28:21');
INSERT INTO `staff_changelogs` VALUES ('90', '11', '1', '0', '12', '6', null, '2026-09-29 22:29:42');
INSERT INTO `staff_changelogs` VALUES ('91', '11', '3', '0', '2', '6', null, '2026-09-29 22:29:42');
INSERT INTO `staff_changelogs` VALUES ('92', '5', '1', '12', '4', '5', null, '2026-09-30 00:32:59');
INSERT INTO `staff_changelogs` VALUES ('93', '5', '1', '4', '12', '5', null, '2026-09-30 00:33:43');
INSERT INTO `staff_changelogs` VALUES ('94', '10', '1', '12', '0', '4', ';s', '2026-09-30 00:55:09');
INSERT INTO `staff_changelogs` VALUES ('95', '11', '1', '12', '0', '4', null, '2026-09-30 00:55:39');
INSERT INTO `staff_changelogs` VALUES ('96', '11', '3', '2', '0', '4', null, '2026-09-30 00:55:39');
INSERT INTO `staff_changelogs` VALUES ('97', '12', '1', '12', '0', '4', null, '2026-09-30 00:56:12');
INSERT INTO `staff_changelogs` VALUES ('98', '12', '4', '3', '0', '4', null, '2026-09-30 00:56:12');
INSERT INTO `staff_changelogs` VALUES ('99', '9', '1', '10', '0', '4', null, '2026-09-30 00:56:34');
INSERT INTO `staff_changelogs` VALUES ('100', '19', '1', '0', '10', '5', '?????? ????? ?? ???? ??????? ????? ??? ??????', '2026-09-30 03:31:50');
INSERT INTO `staff_changelogs` VALUES ('101', '19', '4', '0', '3', '5', '?????? ????? ?? ???? ??????? ????? ??? ??????', '2026-09-30 03:31:50');
INSERT INTO `staff_changelogs` VALUES ('102', '7', '5', '0', '2', '7', 'f', '2026-09-30 06:45:20');
INSERT INTO `staff_changelogs` VALUES ('103', '18', '1', '12', '10', '5', null, '2026-09-30 10:14:13');
INSERT INTO `staff_changelogs` VALUES ('104', '1', '1', '12', '10', '5', '???????? ??????? ?? ??? ????? ????', '2026-09-30 10:14:53');
INSERT INTO `staff_changelogs` VALUES ('105', '10', '1', '0', '11', '5', null, '2026-09-30 10:16:46');
INSERT INTO `staff_changelogs` VALUES ('106', '10', '4', '0', '3', '5', null, '2026-09-30 10:16:46');
INSERT INTO `staff_changelogs` VALUES ('107', '10', '1', '11', '12', '10', null, '2026-09-30 10:17:03');
INSERT INTO `staff_changelogs` VALUES ('108', '10', '1', '12', '10', '5', '????? ?? ????', '2026-09-30 11:41:55');
INSERT INTO `staff_changelogs` VALUES ('109', '6', '1', '12', '11', '6', null, '2026-09-30 12:18:35');
INSERT INTO `staff_changelogs` VALUES ('110', '6', '2', '0', '4', '6', null, '2026-09-30 12:18:35');
INSERT INTO `staff_changelogs` VALUES ('111', '6', '3', '0', '2', '6', null, '2026-09-30 12:18:35');
INSERT INTO `staff_changelogs` VALUES ('112', '6', '2', '4', '0', '6', '?????', '2026-09-30 12:18:53');
INSERT INTO `staff_changelogs` VALUES ('113', '6', '3', '2', '0', '6', '?????', '2026-09-30 12:18:53');
INSERT INTO `staff_changelogs` VALUES ('114', '6', '3', '0', '2', '6', 'as', '2026-09-30 12:20:59');
INSERT INTO `staff_changelogs` VALUES ('115', '1', '1', '10', '12', '1', null, '2026-09-30 14:53:07');
INSERT INTO `staff_changelogs` VALUES ('116', '18', '3', '2', '0', '5', '???', '2026-10-01 02:19:25');
INSERT INTO `staff_changelogs` VALUES ('117', '5', '2', '0', '1', '5', 'تست', '2026-10-01 04:51:54');
INSERT INTO `staff_changelogs` VALUES ('118', '5', '2', '1', '0', '5', null, '2026-10-01 04:52:01');
INSERT INTO `staff_changelogs` VALUES ('119', '20', '3', '0', '2', '20', null, '2026-10-01 06:55:58');
INSERT INTO `staff_changelogs` VALUES ('120', '5', '1', '12', '13', '5', null, '2026-10-01 07:56:35');
INSERT INTO `staff_changelogs` VALUES ('121', '5', '1', '13', '12', '5', null, '2026-10-01 07:56:51');
INSERT INTO `staff_changelogs` VALUES ('122', '5', '3', '2', '3', '5', null, '2026-10-01 08:02:41');
INSERT INTO `staff_changelogs` VALUES ('123', '6', '3', '2', '3', '5', null, '2026-10-01 08:03:13');
INSERT INTO `staff_changelogs` VALUES ('124', '6', '4', '0', '3', '5', null, '2026-10-01 08:03:16');
INSERT INTO `staff_changelogs` VALUES ('125', '6', '1', '11', '12', '5', null, '2026-10-01 08:14:05');
INSERT INTO `staff_changelogs` VALUES ('126', '6', '3', '3', '2', '5', null, '2026-10-01 08:14:05');
INSERT INTO `staff_changelogs` VALUES ('127', '6', '5', '0', '2', '5', null, '2026-10-01 08:14:05');
INSERT INTO `staff_changelogs` VALUES ('128', '6', '3', '2', '3', '5', null, '2026-10-01 09:25:26');
INSERT INTO `staff_changelogs` VALUES ('129', '5', '1', '12', '0', '5', null, '2026-10-01 09:41:32');
INSERT INTO `staff_changelogs` VALUES ('130', '5', '4', '3', '0', '5', null, '2026-10-01 09:42:36');
INSERT INTO `staff_changelogs` VALUES ('131', '5', '5', '2', '0', '5', null, '2026-10-01 09:42:36');
INSERT INTO `staff_changelogs` VALUES ('132', '5', '1', '0', '12', '6', 'ff', '2026-10-01 09:47:54');
INSERT INTO `staff_changelogs` VALUES ('133', '5', '4', '0', '3', '6', 'ff', '2026-10-01 09:47:54');
INSERT INTO `staff_changelogs` VALUES ('134', '6', '1', '12', '0', '5', null, '2026-10-01 09:48:51');
INSERT INTO `staff_changelogs` VALUES ('135', '6', '3', '3', '0', '5', null, '2026-10-01 09:48:51');
INSERT INTO `staff_changelogs` VALUES ('136', '6', '4', '3', '0', '5', null, '2026-10-01 09:48:51');
INSERT INTO `staff_changelogs` VALUES ('137', '6', '5', '2', '0', '5', null, '2026-10-01 09:48:51');
INSERT INTO `staff_changelogs` VALUES ('138', '6', '3', '0', '3', '5', null, '2026-10-01 09:49:22');
INSERT INTO `staff_changelogs` VALUES ('139', '6', '1', '0', '12', '5', null, '2026-10-01 09:49:52');
INSERT INTO `staff_changelogs` VALUES ('140', '6', '4', '0', '3', '5', null, '2026-10-01 09:49:52');
INSERT INTO `staff_changelogs` VALUES ('141', '8', '3', '0', '3', '5', null, '2026-10-01 12:16:30');
INSERT INTO `staff_changelogs` VALUES ('142', '8', '4', '0', '3', '5', null, '2026-10-01 12:16:30');
INSERT INTO `staff_changelogs` VALUES ('143', '21', '1', '0', '10', '5', 'تجربه', '2026-10-01 14:08:46');
INSERT INTO `staff_changelogs` VALUES ('144', '13', '1', '0', '10', '5', null, '2026-10-01 15:24:32');
INSERT INTO `staff_changelogs` VALUES ('145', '23', '1', '0', '12', '5', '# by F30', '2026-10-01 16:32:58');
INSERT INTO `staff_changelogs` VALUES ('146', '23', '3', '0', '3', '5', '# by F30', '2026-10-01 16:32:58');
INSERT INTO `staff_changelogs` VALUES ('147', '23', '4', '0', '3', '5', '# by F30', '2026-10-01 16:32:58');
INSERT INTO `staff_changelogs` VALUES ('148', '10', '1', '10', '12', '10', null, '2026-10-01 20:17:34');
INSERT INTO `staff_changelogs` VALUES ('149', '10', '3', '0', '2', '10', null, '2026-10-01 23:31:33');
INSERT INTO `staff_changelogs` VALUES ('150', '26', '1', '0', '12', '5', null, '2026-10-02 09:12:24');
INSERT INTO `staff_changelogs` VALUES ('151', '26', '3', '0', '3', '5', null, '2026-10-02 09:12:24');
INSERT INTO `staff_changelogs` VALUES ('152', '26', '4', '0', '3', '5', null, '2026-10-02 09:12:24');
INSERT INTO `staff_changelogs` VALUES ('153', '26', '5', '0', '2', '5', null, '2026-10-02 09:12:24');
INSERT INTO `staff_changelogs` VALUES ('154', '25', '1', '0', '11', '5', null, '2026-10-02 09:12:54');
INSERT INTO `staff_changelogs` VALUES ('155', '25', '4', '0', '3', '5', null, '2026-10-02 09:12:54');
INSERT INTO `staff_changelogs` VALUES ('156', '2', '3', '3', '0', '5', null, '2026-10-02 09:27:20');
INSERT INTO `staff_changelogs` VALUES ('157', '2', '3', '0', '3', '5', null, '2026-10-02 09:27:38');
INSERT INTO `staff_changelogs` VALUES ('158', '2', '3', '3', '2', '5', null, '2026-10-02 09:36:35');
INSERT INTO `staff_changelogs` VALUES ('159', '20', '1', '12', '0', '5', null, '2026-10-02 09:48:02');
INSERT INTO `staff_changelogs` VALUES ('160', '20', '3', '2', '0', '5', null, '2026-10-02 09:48:02');
INSERT INTO `staff_changelogs` VALUES ('161', '21', '1', '10', '0', '5', null, '2026-10-02 09:48:10');
INSERT INTO `staff_changelogs` VALUES ('162', '13', '1', '10', '0', '5', null, '2026-10-02 09:48:15');
INSERT INTO `staff_changelogs` VALUES ('163', '18', '1', '10', '0', '5', null, '2026-10-02 09:48:21');
INSERT INTO `staff_changelogs` VALUES ('164', '19', '1', '10', '0', '5', null, '2026-10-02 09:48:26');
INSERT INTO `staff_changelogs` VALUES ('165', '25', '3', '0', '3', '5', null, '2026-10-02 10:02:22');
INSERT INTO `staff_changelogs` VALUES ('166', '25', '3', '3', '2', '5', null, '2026-10-02 10:02:27');
INSERT INTO `staff_changelogs` VALUES ('167', '5', '3', '3', '0', '5', null, '2026-10-02 12:19:06');
INSERT INTO `staff_changelogs` VALUES ('168', '5', '1', '12', '11', '5', null, '2026-10-02 12:32:52');
INSERT INTO `staff_changelogs` VALUES ('169', '5', '1', '11', '10', '5', null, '2026-10-02 12:33:05');
INSERT INTO `staff_changelogs` VALUES ('170', '5', '1', '10', '9', '5', null, '2026-10-02 12:33:16');
INSERT INTO `staff_changelogs` VALUES ('171', '5', '1', '9', '12', '5', null, '2026-10-02 12:36:05');
INSERT INTO `staff_changelogs` VALUES ('172', '2', '3', '2', '3', '5', null, '2026-10-02 18:31:34');
INSERT INTO `staff_changelogs` VALUES ('173', '4', '3', '2', '3', '5', 'مؤسس', '2026-10-02 21:09:19');
INSERT INTO `staff_changelogs` VALUES ('174', '10', '3', '2', '3', '5', null, '2026-10-02 21:13:54');
INSERT INTO `staff_changelogs` VALUES ('175', '2', '3', '3', '0', '5', null, '2026-10-03 01:00:32');
INSERT INTO `staff_changelogs` VALUES ('176', '2', '4', '3', '0', '5', null, '2026-10-03 01:00:32');
INSERT INTO `staff_changelogs` VALUES ('177', '2', '5', '2', '0', '5', null, '2026-10-03 01:00:32');
INSERT INTO `staff_changelogs` VALUES ('178', '2', '1', '12', '1', '5', null, '2026-10-03 01:00:37');
INSERT INTO `staff_changelogs` VALUES ('179', '29', '1', '0', '7', '10', null, '2026-10-03 01:00:54');
INSERT INTO `staff_changelogs` VALUES ('180', '29', '1', '7', '10', '10', null, '2026-10-03 01:01:12');
INSERT INTO `staff_changelogs` VALUES ('181', '2', '1', '1', '2', '5', null, '2026-10-03 01:11:10');
INSERT INTO `staff_changelogs` VALUES ('182', '2', '1', '2', '1', '5', null, '2026-10-03 01:11:20');
INSERT INTO `staff_changelogs` VALUES ('183', '2', '1', '1', '2', '5', null, '2026-10-03 01:12:03');
INSERT INTO `staff_changelogs` VALUES ('184', '2', '1', '2', '3', '5', null, '2026-10-03 01:19:02');
INSERT INTO `staff_changelogs` VALUES ('185', '4', '1', '12', '10', '5', null, '2026-10-03 01:22:23');
INSERT INTO `staff_changelogs` VALUES ('186', '4', '1', '12', '10', '5', null, '2026-10-03 01:24:32');
INSERT INTO `staff_changelogs` VALUES ('187', '10', '1', '12', '10', '5', null, '2026-10-03 01:24:40');
INSERT INTO `staff_changelogs` VALUES ('188', '23', '1', '12', '10', '5', null, '2026-10-03 01:24:52');
INSERT INTO `staff_changelogs` VALUES ('189', '7', '1', '12', '10', '5', null, '2026-10-03 01:25:00');
INSERT INTO `staff_changelogs` VALUES ('190', '1', '1', '12', '10', '5', null, '2026-10-03 01:25:06');
INSERT INTO `staff_changelogs` VALUES ('191', '5', '1', '12', '10', '5', null, '2026-10-03 01:25:19');
INSERT INTO `staff_changelogs` VALUES ('192', '5', '3', '0', '3', '5', null, '2026-10-03 01:25:24');
INSERT INTO `staff_changelogs` VALUES ('193', '2', '1', '3', '4', '5', null, '2026-10-03 01:28:31');
INSERT INTO `staff_changelogs` VALUES ('194', '2', '1', '4', '5', '5', null, '2026-10-03 01:29:10');
INSERT INTO `staff_changelogs` VALUES ('195', '2', '1', '5', '10', '5', null, '2026-10-03 01:37:26');
INSERT INTO `staff_changelogs` VALUES ('196', '2', '4', '0', '3', '5', null, '2026-10-03 01:37:26');
INSERT INTO `staff_changelogs` VALUES ('197', '2', '3', '0', '2', '2', 'a', '2026-10-03 01:38:26');
INSERT INTO `staff_changelogs` VALUES ('198', '2', '2', '0', '4', '2', 'a', '2026-10-03 01:38:54');
INSERT INTO `staff_changelogs` VALUES ('199', '2', '5', '0', '2', '2', 'a', '2026-10-03 01:38:54');
INSERT INTO `staff_changelogs` VALUES ('200', '2', '3', '2', '3', '5', null, '2026-10-03 01:39:05');
INSERT INTO `staff_changelogs` VALUES ('201', '5', '1', '10', '9', '5', null, '2026-10-03 05:01:46');
INSERT INTO `staff_changelogs` VALUES ('202', '5', '1', '9', '10', '5', 'تست', '2026-10-03 05:02:55');
INSERT INTO `staff_changelogs` VALUES ('203', '5', '1', '10', '9', '5', null, '2026-10-03 05:03:45');
INSERT INTO `staff_changelogs` VALUES ('204', '5', '1', '9', '10', '5', 'تست', '2026-10-03 05:04:46');
INSERT INTO `staff_changelogs` VALUES ('205', '5', '1', '10', '9', '5', null, '2026-10-03 05:05:43');
INSERT INTO `staff_changelogs` VALUES ('206', '2', '1', '10', '9', '5', 'سسسس', '2026-10-03 05:06:14');
INSERT INTO `staff_changelogs` VALUES ('207', '5', '1', '9', '10', '5', null, '2026-10-03 05:08:23');
INSERT INTO `staff_changelogs` VALUES ('208', '5', '1', '10', '9', '5', null, '2026-10-03 05:09:44');
INSERT INTO `staff_changelogs` VALUES ('209', '5', '1', '9', '10', '5', null, '2026-10-03 05:11:36');
INSERT INTO `staff_changelogs` VALUES ('210', '5', '1', '10', '9', '5', null, '2026-10-03 05:12:34');
INSERT INTO `staff_changelogs` VALUES ('211', '2', '1', '9', '0', '5', null, '2026-10-03 05:19:47');
INSERT INTO `staff_changelogs` VALUES ('212', '2', '2', '4', '0', '5', null, '2026-10-03 05:19:47');
INSERT INTO `staff_changelogs` VALUES ('213', '2', '3', '3', '0', '5', null, '2026-10-03 05:19:47');
INSERT INTO `staff_changelogs` VALUES ('214', '2', '4', '3', '0', '5', null, '2026-10-03 05:19:47');
INSERT INTO `staff_changelogs` VALUES ('215', '2', '5', '2', '0', '5', null, '2026-10-03 05:19:47');
INSERT INTO `staff_changelogs` VALUES ('216', '2', '1', '0', '1', '5', null, '2026-10-03 05:23:26');
INSERT INTO `staff_changelogs` VALUES ('217', '2', '1', '1', '2', '5', null, '2026-10-03 05:25:36');
INSERT INTO `staff_changelogs` VALUES ('218', '2', '1', '2', '3', '5', null, '2026-10-03 05:28:21');
INSERT INTO `staff_changelogs` VALUES ('219', '2', '1', '2', '1', '5', null, '2026-10-03 05:30:12');
INSERT INTO `staff_changelogs` VALUES ('220', '2', '1', '1', '2', '5', null, '2026-10-03 05:30:18');
INSERT INTO `staff_changelogs` VALUES ('221', '5', '1', '9', '3', '5', null, '2026-10-03 05:32:01');
INSERT INTO `staff_changelogs` VALUES ('222', '5', '1', '2', '10', '5', null, '2026-10-03 05:42:15');
INSERT INTO `staff_changelogs` VALUES ('223', '5', '1', '10', '0', '5', null, '2026-10-03 05:42:27');
INSERT INTO `staff_changelogs` VALUES ('224', '5', '2', '0', '3', '5', null, '2026-10-03 05:42:27');
INSERT INTO `staff_changelogs` VALUES ('225', '5', '1', '0', '10', '5', null, '2026-10-03 05:43:16');
INSERT INTO `staff_changelogs` VALUES ('226', '5', '2', '3', '2', '5', null, '2026-10-03 05:43:22');
INSERT INTO `staff_changelogs` VALUES ('227', '5', '1', '10', '0', '5', null, '2026-10-03 05:43:30');
INSERT INTO `staff_changelogs` VALUES ('228', '5', '2', '2', '3', '5', null, '2026-10-03 05:43:30');
INSERT INTO `staff_changelogs` VALUES ('229', '5', '1', '0', '10', '5', null, '2026-10-03 05:46:25');
INSERT INTO `staff_changelogs` VALUES ('230', '5', '1', '10', '0', '5', null, '2026-10-03 05:46:38');
INSERT INTO `staff_changelogs` VALUES ('231', '5', '1', '0', '10', '5', null, '2026-10-03 05:47:13');
INSERT INTO `staff_changelogs` VALUES ('232', '2', '1', '2', '0', '5', null, '2026-10-03 05:47:25');
INSERT INTO `staff_changelogs` VALUES ('233', '2', '2', '0', '3', '5', null, '2026-10-03 05:47:25');
INSERT INTO `staff_changelogs` VALUES ('234', '5', '2', '3', '0', '5', null, '2026-10-03 06:05:57');
INSERT INTO `staff_changelogs` VALUES ('235', '5', '5', '0', '2', '5', null, '2026-10-03 06:05:57');
INSERT INTO `staff_changelogs` VALUES ('236', '2', '4', '0', '3', '5', null, '2026-10-03 06:09:56');
INSERT INTO `staff_changelogs` VALUES ('237', '2', '1', '0', '10', '5', null, '2026-10-03 06:42:15');
INSERT INTO `staff_changelogs` VALUES ('238', '2', '3', '0', '2', '2', 'asd', '2026-10-03 07:01:38');
INSERT INTO `staff_changelogs` VALUES ('239', '2', '1', '10', '0', '2', 'a', '2026-10-03 07:02:13');
INSERT INTO `staff_changelogs` VALUES ('240', '2', '2', '3', '2', '2', 'a', '2026-10-03 07:02:13');
INSERT INTO `staff_changelogs` VALUES ('241', '2', '3', '2', '0', '2', 'a', '2026-10-03 07:02:13');
INSERT INTO `staff_changelogs` VALUES ('242', '2', '1', '0', '10', '2', 'as', '2026-10-03 07:02:48');
INSERT INTO `staff_changelogs` VALUES ('243', '2', '1', '10', '1', '2', 'a', '2026-10-03 07:03:31');
INSERT INTO `staff_changelogs` VALUES ('244', '2', '1', '1', '10', '2', 'a', '2026-10-03 07:03:50');
INSERT INTO `staff_changelogs` VALUES ('245', '2', '1', '10', '1', '2', 'a', '2026-10-03 07:04:02');
INSERT INTO `staff_changelogs` VALUES ('246', '2', '2', '2', '0', '2', 'a', '2026-10-03 07:04:02');
INSERT INTO `staff_changelogs` VALUES ('247', '2', '1', '1', '2', '2', 'a', '2026-10-03 07:04:27');
INSERT INTO `staff_changelogs` VALUES ('248', '2', '1', '2', '3', '2', 'a', '2026-10-03 07:04:52');
INSERT INTO `staff_changelogs` VALUES ('249', '2', '1', '3', '4', '2', 'A', '2026-10-03 07:05:05');
INSERT INTO `staff_changelogs` VALUES ('250', '2', '1', '4', '5', '2', 'AS', '2026-10-03 07:05:30');
INSERT INTO `staff_changelogs` VALUES ('251', '2', '1', '5', '6', '2', 'AS', '2026-10-03 07:05:51');
INSERT INTO `staff_changelogs` VALUES ('252', '2', '1', '6', '5', '2', 'AS', '2026-10-03 07:06:05');
INSERT INTO `staff_changelogs` VALUES ('253', '2', '1', '5', '7', '2', 'AS', '2026-10-03 07:08:44');
INSERT INTO `staff_changelogs` VALUES ('254', '2', '1', '7', '8', '2', 'AS', '2026-10-03 07:09:03');
INSERT INTO `staff_changelogs` VALUES ('255', '2', '1', '8', '9', '2', 'AS', '2026-10-03 07:09:12');
INSERT INTO `staff_changelogs` VALUES ('256', '2', '1', '9', '10', '2', null, '2026-10-03 07:09:22');

-- ----------------------------
-- Table structure for stats
-- ----------------------------
DROP TABLE IF EXISTS `stats`;
CREATE TABLE `stats` (
  `district` varchar(45) NOT NULL,
  `deaths` double DEFAULT '0',
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stats
-- ----------------------------

-- ----------------------------
-- Table structure for store_orders
-- ----------------------------
DROP TABLE IF EXISTS `store_orders`;
CREATE TABLE `store_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `character_id` int(11) NOT NULL DEFAULT '0',
  `account_name` varchar(100) NOT NULL DEFAULT '',
  `character_name` varchar(100) NOT NULL DEFAULT '',
  `order_type` varchar(50) NOT NULL,
  `order_title` varchar(255) NOT NULL,
  `order_data` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` varchar(100) NOT NULL DEFAULT 'Admin',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `claimed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `character_id` (`character_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_orders
-- ----------------------------
INSERT INTO `store_orders` VALUES ('1', '#ORD-59536', '5', '7', 'F30', 'F30', 'vip', '? رتبة راعي (VIP Sponsor) - 30 يوم', '[ { \"days\": 30 } ]', '1', 'F30', '2026-10-01 20:15:09', '2026-10-01 20:15:09');
INSERT INTO `store_orders` VALUES ('2', '#ORD-90202', '10', '12', 'Loay', 'Loay_Mostafa', 'vip', '? راعي ألماسي (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"diamond\" } ]', '1', 'F30', '2026-10-01 20:27:00', '2026-10-01 20:27:00');
INSERT INTO `store_orders` VALUES ('3', '#ORD-67899', '10', '12', 'Loay', 'Loay_Mostafa', 'vehicle', '? مركبة خاصة: بي إم دبليو إم 4 (2000) [Shop ID: 1052]', '[ { \"color\": [ 255, 255, 255 ], \"shopID\": 1052 } ]', '1', 'F30', '2026-10-01 20:27:21', '2026-10-01 20:27:21');
INSERT INTO `store_orders` VALUES ('4', '#ORD-50930', '10', '12', 'Loay', 'Loay_Mostafa', 'vehicle', '? مركبة خاصة: Bentley (Likely) Luxury Coupe (Possibly Continental GT) (2016) [Shop ID: 1044]', '[ { \"color\": [ 255, 255, 255 ], \"shopID\": 1044 } ]', '1', 'F30', '2026-10-01 20:29:55', '2026-10-01 20:30:29');
INSERT INTO `store_orders` VALUES ('5', '#ORD-14732', '10', '12', 'Loay', 'Loay_Mostafa', 'money', '? مبلغ مالي: $1', '[ { \"amount\": 1 } ]', '1', 'F30', '2026-10-01 20:43:04', '2026-10-01 20:43:04');
INSERT INTO `store_orders` VALUES ('6', '#ORD-68677', '10', '12', 'Loay', 'Loay_Mostafa', 'vip', '? راعي بريميوم بلس (VIP) - 1 يوم', '[ { \"days\": 1, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-01 20:43:19', '2026-10-01 20:43:19');
INSERT INTO `store_orders` VALUES ('7', '#ORD-62557', '10', '12', 'Loay', 'Loay_Mostafa', 'bundle', '? ? باقة إمبراطور السيرفر (Ultimate)', '[ { \"bundleID\": \"bundle_emperor\" } ]', '1', 'Loay Mostafa', '2026-10-01 20:55:00', '2026-10-01 20:55:00');
INSERT INTO `store_orders` VALUES ('8', '#ORD-28149', '20', '21', 'ShniderX', 'Kemo_ELdeeb', 'vehicle', '? مركبة خاصة: بي إم دبليو إم 4 (2000) [Shop ID: 1052 / Veh ID: 83]', '[ { \"color\": [ 255, 255, 255 ], \"shopID\": 1052 } ]', '0', 'F30', '2026-10-01 21:15:23', null);
INSERT INTO `store_orders` VALUES ('9', '#ORD-39490', '5', '7', 'F30', 'F30', 'coins', '? نقاط متجر: 111 GameCoin', '[ { \"amount\": 111 } ]', '1', 'F30', '2026-10-01 22:17:48', '2026-10-01 22:17:48');
INSERT INTO `store_orders` VALUES ('10', '#ORD-48703', '5', '7', 'F30', 'F30', 'level', '? ترقية المستوى: +15 لفل', '[ { \"amount\": 15 } ]', '1', 'F30', '2026-10-01 22:18:01', '2026-10-01 22:18:01');
INSERT INTO `store_orders` VALUES ('11', '#ORD-91419', '10', '12', 'Loay', 'Loay_Mostafa', 'remove_vip', '? سحب رتبة راعي: راعي بريميوم بلس', '[ { \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-01 23:55:10', '2026-10-01 23:55:10');
INSERT INTO `store_orders` VALUES ('12', '#ORD-83910', '10', '12', 'Loay', 'Loay_Mostafa', 'remove_vip', '? سحب رتبة راعي: راعي ألماسي', '[ { \"tier\": \"diamond\" } ]', '1', 'F30', '2026-10-01 23:55:52', '2026-10-01 23:55:52');
INSERT INTO `store_orders` VALUES ('13', '#ORD-76241', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 08:46:59', '2026-10-02 08:46:59');
INSERT INTO `store_orders` VALUES ('14', '#ORD-53427', '25', '25', 'LEEYLIL', 'Layl', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 09:14:17', '2026-10-02 09:14:17');
INSERT INTO `store_orders` VALUES ('15', '#ORD-68072', '25', '25', 'LEEYLIL', 'Layl', 'vehicle', '? مركبة خاصة: بي إم دبليو إم 4 (2000) [Shop ID: 1052 / Veh ID: 87]', '[ { \"color\": [ 255, 255, 255 ], \"shopID\": 1052 } ]', '1', 'F30', '2026-10-02 09:14:53', '2026-10-02 09:14:53');
INSERT INTO `store_orders` VALUES ('16', '#ORD-43292', '5', '7', 'F30', 'F30', 'plate', '? لوحة أرقام مميزة: [777]', '[ { \"plate\": \"777\" } ]', '1', 'F30', '2026-10-02 09:34:42', '2026-10-02 09:34:42');
INSERT INTO `store_orders` VALUES ('17', '#ORD-93465', '25', '25', 'LEEYLIL', 'Leyl', 'remove_vip', '? سحب رتبة راعي: كافة رتب الرعاة', '[ { \"tier\": \"all\" } ]', '1', 'F30', '2026-10-02 10:08:30', '2026-10-02 10:08:30');
INSERT INTO `store_orders` VALUES ('18', '#ORD-48664', '5', '7', 'F30', 'F30', 'remove_vip', '? سحب رتبة راعي: كافة رتب الرعاة', '[ { \"tier\": \"all\" } ]', '1', 'F30', '2026-10-02 10:12:11', '2026-10-02 10:12:11');
INSERT INTO `store_orders` VALUES ('19', '#ORD-60025', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 1 يوم', '[ { \"days\": 1, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 10:13:34', '2026-10-02 10:13:34');
INSERT INTO `store_orders` VALUES ('20', '#ORD-87911', '5', '7', 'F30', 'F30', 'bundle', '? ? باقة إمبراطور السيرفر (Ultimate)', '[ { \"bundleID\": \"bundle_emperor\" } ]', '1', 'F30', '2026-10-02 12:17:12', '2026-10-02 12:17:12');
INSERT INTO `store_orders` VALUES ('21', '#ORD-51444', '5', '7', 'F30', 'F30', 'remove_vip', '? سحب رتبة راعي: راعي بريميوم بلس', '[ { \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 12:42:00', '2026-10-02 12:42:00');
INSERT INTO `store_orders` VALUES ('22', '#ORD-78147', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 13:05:37', '2026-10-02 13:05:37');
INSERT INTO `store_orders` VALUES ('23', '#ORD-17270', '5', '7', 'F30', 'F30', 'bundle', '? ? باقة المليونير الملكية (Millionaire)', '[ { \"bundleID\": \"bundle_millionaire\" } ]', '1', 'F30', '2026-10-02 14:01:22', '2026-10-02 14:01:22');
INSERT INTO `store_orders` VALUES ('24', '#ORD-53691', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 15:14:11', '2026-10-02 15:14:11');
INSERT INTO `store_orders` VALUES ('25', '#ORD-87892', '5', '7', 'F30', 'F30', 'remove_vip', '? سحب رتبة راعي: راعي بريميوم بلس', '[ { \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 15:37:44', '2026-10-02 15:37:44');
INSERT INTO `store_orders` VALUES ('26', '#ORD-82267', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 1 يوم', '[ { \"days\": 1, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 15:44:08', '2026-10-02 15:44:08');
INSERT INTO `store_orders` VALUES ('27', '#ORD-72604', '10', '12', 'Loay', 'Loay_Mostafa', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-02 20:44:27', '2026-10-02 20:44:27');
INSERT INTO `store_orders` VALUES ('28', '#ORD-79853', '10', '12', 'Loay', 'Loay_Mostafa', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'Alonee Alonee', '2026-10-02 21:01:10', '2026-10-02 21:01:10');
INSERT INTO `store_orders` VALUES ('29', '#ORD-60057', '4', '16', 'LUFFYX', 'Luffyx_Johnson', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'Alonee Alonee', '2026-10-02 21:01:23', '2026-10-02 21:01:23');
INSERT INTO `store_orders` VALUES ('30', '#ORD-53611', '2', '2', 'Alone', 'Alonee_Alonee', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'Alonee Alonee', '2026-10-02 21:01:34', '2026-10-02 21:01:34');
INSERT INTO `store_orders` VALUES ('31', '#ORD-44053', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-03 02:28:17', '2026-10-03 02:28:17');
INSERT INTO `store_orders` VALUES ('32', '#ORD-37332', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premium\" } ]', '1', 'F30', '2026-10-03 08:22:18', '2026-10-03 08:22:18');
INSERT INTO `store_orders` VALUES ('33', '#ORD-14185', '5', '7', 'F30', 'F30', 'remove_vip', '? سحب رتبة راعي: كافة رتب الرعاة', '[ { \"tier\": \"all\" } ]', '1', 'F30', '2026-10-03 08:27:05', '2026-10-03 08:27:05');
INSERT INTO `store_orders` VALUES ('34', '#ORD-66111', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-03 08:32:59', '2026-10-03 08:32:59');
INSERT INTO `store_orders` VALUES ('35', '#ORD-56328', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premium\" } ]', '1', 'F30', '2026-10-03 08:33:11', '2026-10-03 08:33:11');
INSERT INTO `store_orders` VALUES ('36', '#ORD-16984', '5', '7', 'F30', 'F30', 'vip', '? راعي برونزي (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"bronze\" } ]', '1', 'F30', '2026-10-03 08:33:13', '2026-10-03 08:33:13');
INSERT INTO `store_orders` VALUES ('37', '#ORD-88290', '5', '7', 'F30', 'F30', 'vip', '? راعي فضي (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"silver\" } ]', '1', 'F30', '2026-10-03 08:33:16', '2026-10-03 08:33:16');
INSERT INTO `store_orders` VALUES ('38', '#ORD-97989', '5', '7', 'F30', 'F30', 'vip', '? راعي ذهبي (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"gold\" } ]', '1', 'F30', '2026-10-03 08:33:19', '2026-10-03 08:33:19');
INSERT INTO `store_orders` VALUES ('39', '#ORD-92702', '5', '7', 'F30', 'F30', 'vip', '? راعي ألماسي (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"diamond\" } ]', '1', 'F30', '2026-10-03 08:33:23', '2026-10-03 08:33:23');
INSERT INTO `store_orders` VALUES ('40', '#ORD-59967', '5', '7', 'F30', 'F30', 'remove_vip', '? سحب رتبة راعي: كافة رتب الرعاة', '[ { \"tier\": \"all\" } ]', '1', 'F30', '2026-10-03 08:40:34', '2026-10-03 08:40:34');
INSERT INTO `store_orders` VALUES ('41', '#ORD-83934', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-03 08:40:42', '2026-10-03 08:40:42');
INSERT INTO `store_orders` VALUES ('42', '#ORD-42317', '5', '7', 'F30', 'F30', 'vip', '? راعي بريميوم بلس (VIP) - 30 يوم', '[ { \"days\": 30, \"tier\": \"premiumplus\" } ]', '1', 'F30', '2026-10-03 08:54:05', '2026-10-03 08:54:05');

-- ----------------------------
-- Table structure for suspectcrime
-- ----------------------------
DROP TABLE IF EXISTS `suspectcrime`;
CREATE TABLE `suspectcrime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_name` text,
  `time` text,
  `date` text,
  `officers` text,
  `ticket` int(11) DEFAULT NULL,
  `arrest` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ticket_price` text,
  `arrest_price` text,
  `fine_price` text,
  `illegal_items` text,
  `details` text,
  `done_by` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suspectcrime
-- ----------------------------

-- ----------------------------
-- Table structure for suspectdetails
-- ----------------------------
DROP TABLE IF EXISTS `suspectdetails`;
CREATE TABLE `suspectdetails` (
  `suspect_name` text,
  `birth` text,
  `gender` text,
  `ethnicy` text,
  `cell` int(11) DEFAULT '0',
  `occupation` text,
  `address` text,
  `other` text,
  `is_wanted` int(11) DEFAULT '0',
  `wanted_reason` text,
  `wanted_punishment` text,
  `wanted_by` text,
  `photo` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suspectdetails
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT NULL,
  `rx` decimal(10,6) DEFAULT NULL,
  `ry` decimal(10,6) DEFAULT NULL,
  `rz` decimal(10,6) DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for tc_comments
-- ----------------------------
DROP TABLE IF EXISTS `tc_comments`;
CREATE TABLE `tc_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal` tinyint(1) NOT NULL DEFAULT '0',
  `tcid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tc_comments
-- ----------------------------

-- ----------------------------
-- Table structure for tc_tickets
-- ----------------------------
DROP TABLE IF EXISTS `tc_tickets`;
CREATE TABLE `tc_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `subcribers` varchar(500) NOT NULL DEFAULT ',',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` varchar(200) NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tc_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for tempinteriors
-- ----------------------------
DROP TABLE IF EXISTS `tempinteriors`;
CREATE TABLE `tempinteriors` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT '0',
  `uploaded_at` datetime DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tempinteriors
-- ----------------------------

-- ----------------------------
-- Table structure for tempobjects
-- ----------------------------
DROP TABLE IF EXISTS `tempobjects`;
CREATE TABLE `tempobjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(11) DEFAULT '1',
  `doublesided` int(11) DEFAULT '0',
  `scale` float(12,7) DEFAULT '1.0000000',
  `breakable` int(11) DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tempobjects
-- ----------------------------

-- ----------------------------
-- Table structure for textures_animated
-- ----------------------------
DROP TABLE IF EXISTS `textures_animated`;
CREATE TABLE `textures_animated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `frames` text NOT NULL,
  `speed` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of textures_animated
-- ----------------------------

-- ----------------------------
-- Table structure for ticketreplies
-- ----------------------------
DROP TABLE IF EXISTS `ticketreplies`;
CREATE TABLE `ticketreplies` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `text` text NOT NULL,
  `by` text NOT NULL,
  `rank` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ticketreplies
-- ----------------------------

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `subject` text NOT NULL,
  `assigned` text NOT NULL,
  `priority` text NOT NULL,
  `username` text NOT NULL,
  `gamename` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------

-- ----------------------------
-- Table structure for tokens
-- ----------------------------
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `action` varchar(32) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(500) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='Random token, used for security and validations - MAXIME';

-- ----------------------------
-- Records of tokens
-- ----------------------------

-- ----------------------------
-- Table structure for towstats
-- ----------------------------
DROP TABLE IF EXISTS `towstats`;
CREATE TABLE `towstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `vehicle_plate` varchar(8) DEFAULT NULL COMMENT 'vehicle plate at the time of towing, if any',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date of towing',
  PRIMARY KEY (`id`),
  KEY `character_idx` (`character`),
  KEY `vehicle_idx` (`vehicle`),
  CONSTRAINT `character` FOREIGN KEY (`character`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle` FOREIGN KEY (`vehicle`) REFERENCES `vehicles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detailed information for TTR leaders who towed what and when';

-- ----------------------------
-- Records of towstats
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_logs
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_logs`;
CREATE TABLE `vehicle_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vehID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4598 DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on vehicles - Monitored by Vehicle ';

-- ----------------------------
-- Records of vehicle_logs
-- ----------------------------
INSERT INTO `vehicle_logs` VALUES ('9', '2026-07-10 07:27:01', '2', 'DONATEGUI Huntley ($0 - to LUFFYX Roma)', '1');
INSERT INTO `vehicle_logs` VALUES ('10', '2026-07-10 07:33:04', '5', 'DONATEGUI Vincent ($0 - to LUFFYX Roma)', '1');
INSERT INTO `vehicle_logs` VALUES ('11', '2026-07-10 07:33:53', '1', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('12', '2026-07-10 07:34:13', '3', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('13', '2026-07-10 07:34:29', '4', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('14', '2026-07-10 07:44:52', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('15', '2026-07-10 08:20:36', '2', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('16', '2026-07-10 11:12:14', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('17', '2026-07-10 13:14:45', '6', 'DONATEGUI FBI Rancher ($0 - to LUFFYX Roma)', '1');
INSERT INTO `vehicle_logs` VALUES ('18', '2026-07-10 17:52:29', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('19', '2026-07-10 17:55:28', '7', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('20', '2026-07-10 18:00:50', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('21', '2026-07-10 18:07:12', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('22', '2026-07-10 18:12:28', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('23', '2026-07-10 18:14:51', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('24', '2026-07-10 18:17:10', '5', 'Started engine', '1');
INSERT INTO `vehicle_logs` VALUES ('25', '2026-09-27 10:42:29', '1', 'restoreveh', '5');
INSERT INTO `vehicle_logs` VALUES ('26', '2026-09-28 23:38:20', '1', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('65', '2026-09-29 00:48:52', '10', 'makeveh Super GT ($175000 - to Fego_ELdkhlawy)', '5');
INSERT INTO `vehicle_logs` VALUES ('66', '2026-09-29 00:49:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('67', '2026-09-29 00:49:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('68', '2026-09-29 00:49:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('69', '2026-09-29 00:49:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('70', '2026-09-29 00:49:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('71', '2026-09-29 00:52:32', '10', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('72', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('73', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('74', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('75', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('76', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('77', '2026-09-29 00:52:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('78', '2026-09-29 00:54:50', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('79', '2026-09-29 00:54:59', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('80', '2026-09-29 00:54:59', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('81', '2026-09-29 00:54:59', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('82', '2026-09-29 00:54:59', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('83', '2026-09-29 00:54:59', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('84', '2026-09-29 00:55:01', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('85', '2026-09-29 00:55:01', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('86', '2026-09-29 00:55:01', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('87', '2026-09-29 00:55:01', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('88', '2026-09-29 00:55:01', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('89', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('90', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('91', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('92', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('93', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('94', '2026-09-29 00:55:15', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('95', '2026-09-29 00:55:31', '11', 'makeveh Bullet ($125000 - to Loay_Mostafa)', '5');
INSERT INTO `vehicle_logs` VALUES ('96', '2026-09-29 00:55:52', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('97', '2026-09-29 00:55:52', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('98', '2026-09-29 00:55:52', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('99', '2026-09-29 00:55:52', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('100', '2026-09-29 00:55:52', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('101', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('102', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('103', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('104', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('105', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('106', '2026-09-29 00:56:03', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('107', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('108', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('109', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('110', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('111', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('112', '2026-09-29 00:56:05', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('113', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('114', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('115', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('116', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('117', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('118', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('119', '2026-09-29 00:56:18', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('120', '2026-09-29 00:56:56', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('121', '2026-09-29 00:58:04', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('122', '2026-09-29 00:58:04', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('123', '2026-09-29 00:58:04', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('124', '2026-09-29 00:58:04', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('125', '2026-09-29 00:58:05', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('126', '2026-09-29 01:00:45', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('127', '2026-09-29 01:01:02', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('128', '2026-09-29 01:01:02', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('129', '2026-09-29 01:01:02', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('130', '2026-09-29 01:01:04', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('131', '2026-09-29 01:01:04', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('132', '2026-09-29 01:01:04', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('133', '2026-09-29 01:01:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('134', '2026-09-29 01:01:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('135', '2026-09-29 01:01:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('136', '2026-09-29 01:01:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('137', '2026-09-29 01:01:25', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('138', '2026-09-29 01:01:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('139', '2026-09-29 01:01:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('140', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('141', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('142', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('143', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('144', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('145', '2026-09-29 01:01:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('146', '2026-09-29 01:01:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('147', '2026-09-29 01:01:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('148', '2026-09-29 01:01:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('149', '2026-09-29 01:01:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('150', '2026-09-29 01:01:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('151', '2026-09-29 01:01:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('152', '2026-09-29 01:01:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('153', '2026-09-29 01:01:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('154', '2026-09-29 01:01:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('155', '2026-09-29 01:02:04', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('156', '2026-09-29 01:02:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('157', '2026-09-29 01:02:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('158', '2026-09-29 01:02:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('159', '2026-09-29 01:02:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('160', '2026-09-29 01:02:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('161', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('162', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('163', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('164', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('165', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('166', '2026-09-29 01:02:19', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('167', '2026-09-29 01:03:06', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('168', '2026-09-29 01:03:53', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('169', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('170', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('171', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('172', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('173', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('174', '2026-09-29 01:03:54', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('175', '2026-09-29 01:04:21', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('176', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('177', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('178', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('179', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('180', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('181', '2026-09-29 01:04:23', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('182', '2026-09-29 01:04:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('183', '2026-09-29 01:04:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('184', '2026-09-29 01:04:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('185', '2026-09-29 01:04:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('186', '2026-09-29 01:04:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('187', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('188', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('189', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('190', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('191', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('192', '2026-09-29 01:04:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('193', '2026-09-29 01:05:17', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('194', '2026-09-29 01:05:43', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('195', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('196', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('197', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('198', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('199', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('200', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('201', '2026-09-29 01:05:44', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('202', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('203', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('204', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('205', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('206', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('207', '2026-09-29 01:06:38', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('208', '2026-09-29 01:06:39', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('209', '2026-09-29 01:06:39', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('210', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('211', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('212', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('213', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('214', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('215', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('216', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('217', '2026-09-29 01:06:40', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('218', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('219', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('220', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('221', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('222', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('223', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('224', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('225', '2026-09-29 01:06:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('226', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('227', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('228', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('229', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('230', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('231', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('232', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('233', '2026-09-29 01:06:47', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('234', '2026-09-29 01:07:31', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('235', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('236', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('237', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('238', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('239', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('240', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('241', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('242', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('243', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('244', '2026-09-29 01:07:33', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('245', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('246', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('247', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('248', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('249', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('250', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('251', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('252', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('253', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('254', '2026-09-29 01:07:35', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('255', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('256', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('257', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('258', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('259', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('260', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('261', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('262', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('263', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('264', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('265', '2026-09-29 01:07:41', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('266', '2026-09-29 01:08:16', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('267', '2026-09-29 01:09:09', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('268', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('269', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('270', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('271', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('272', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('273', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('274', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('275', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('276', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('277', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('278', '2026-09-29 01:09:11', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('279', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('280', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('281', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('282', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('283', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('284', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('285', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('286', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('287', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('288', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('289', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('290', '2026-09-29 01:09:29', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('291', '2026-09-29 01:09:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('292', '2026-09-29 01:09:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('293', '2026-09-29 01:09:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('294', '2026-09-29 01:09:36', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('295', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('296', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('297', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('298', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('299', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('300', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('301', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('302', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('303', '2026-09-29 01:09:37', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('304', '2026-09-29 01:10:48', '10', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('305', '2026-09-29 01:10:51', '10', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('306', '2026-09-29 01:10:54', '10', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('307', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('308', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('309', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('310', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('311', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('312', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('313', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('314', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('315', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('316', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('317', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('318', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('319', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('320', '2026-09-29 01:11:00', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('321', '2026-09-29 01:18:51', '10', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('322', '2026-09-29 01:18:53', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('323', '2026-09-29 01:19:16', '10', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('324', '2026-09-29 01:19:29', '10', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('325', '2026-09-29 01:19:29', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('326', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('327', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('328', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('329', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('330', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('331', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('332', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('333', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('334', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('335', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('336', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('337', '2026-09-29 01:19:30', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('338', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('339', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('340', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('341', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('342', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('343', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('344', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('345', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('346', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('347', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('348', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('349', '2026-09-29 01:19:31', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('350', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('351', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('352', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('353', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('354', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('355', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('356', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('357', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('358', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('359', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('360', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('361', '2026-09-29 01:19:32', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('362', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('363', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('364', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('365', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('366', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('367', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('368', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('369', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('370', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('371', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('372', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('373', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('374', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('375', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('376', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('377', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('378', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('379', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('380', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('381', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('382', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('383', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('384', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('385', '2026-09-29 01:19:33', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('386', '2026-09-29 01:19:39', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('387', '2026-09-29 01:19:39', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('388', '2026-09-29 01:19:39', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('389', '2026-09-29 01:19:39', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('390', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('391', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('392', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('393', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('394', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('395', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('396', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('397', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('398', '2026-09-29 01:19:40', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('400', '2026-09-29 01:43:45', '10', 'getveh', '5');
INSERT INTO `vehicle_logs` VALUES ('401', '2026-09-29 01:44:11', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('402', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('403', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('404', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('405', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('406', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('407', '2026-09-29 01:44:12', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('408', '2026-09-29 01:44:39', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('409', '2026-09-29 01:45:32', '10', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('410', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('411', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('412', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('413', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('414', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('415', '2026-09-29 01:45:34', '10', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('416', '2026-09-29 01:48:12', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('417', '2026-09-29 01:48:12', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('418', '2026-09-29 01:48:13', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('419', '2026-09-29 01:48:13', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('420', '2026-09-29 01:48:14', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('421', '2026-09-29 01:59:14', '10', 'gotoveh', '5');
INSERT INTO `vehicle_logs` VALUES ('422', '2026-09-29 01:59:38', '11', 'restoreveh', '5');
INSERT INTO `vehicle_logs` VALUES ('423', '2026-09-29 01:59:42', '11', 'getveh', '5');
INSERT INTO `vehicle_logs` VALUES ('426', '2026-09-29 02:46:22', '12', 'makeveh Turismo ($1300000 - to Fego_ELdkhlawy)', '5');
INSERT INTO `vehicle_logs` VALUES ('427', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('428', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('429', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('430', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('431', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('432', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('433', '2026-09-29 02:46:50', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('434', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('435', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('436', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('437', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('438', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('439', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('440', '2026-09-29 02:46:51', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('441', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('442', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('443', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('444', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('445', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('446', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('447', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('448', '2026-09-29 02:47:08', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('449', '2026-09-29 02:49:53', '13', 'makeveh Elegant ($106550 - to Alonee_Alonee)', '5');
INSERT INTO `vehicle_logs` VALUES ('450', '2026-09-29 02:50:49', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('451', '2026-09-29 02:50:49', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('452', '2026-09-29 02:50:49', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('453', '2026-09-29 02:50:49', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('454', '2026-09-29 02:50:49', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('455', '2026-09-29 03:02:23', '14', 'makeveh NRG-500 ($16000 - to Luffyx_Johnson)', '5');
INSERT INTO `vehicle_logs` VALUES ('456', '2026-09-29 03:03:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('457', '2026-09-29 03:03:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('458', '2026-09-29 03:03:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('459', '2026-09-29 03:03:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('460', '2026-09-29 03:03:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('461', '2026-09-29 03:03:06', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('462', '2026-09-29 03:03:06', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('463', '2026-09-29 03:03:06', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('464', '2026-09-29 03:03:06', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('465', '2026-09-29 03:03:06', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('466', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('467', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('468', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('469', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('470', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('471', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('472', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('473', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('474', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('475', '2026-09-29 03:03:07', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('476', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('477', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('478', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('479', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('480', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('481', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('482', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('483', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('484', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('485', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('486', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('487', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('488', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('489', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('490', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('491', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('492', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('493', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('494', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('495', '2026-09-29 03:03:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('496', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('497', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('498', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('499', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('500', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('501', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('502', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('503', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('504', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('505', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('506', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('507', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('508', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('509', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('510', '2026-09-29 03:03:09', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('511', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('512', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('513', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('514', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('515', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('516', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('517', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('518', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('519', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('520', '2026-09-29 03:03:10', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('521', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('522', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('523', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('524', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('525', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('526', '2026-09-29 03:03:22', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('527', '2026-09-29 03:03:33', '15', 'makeveh NRG-500 ($16000 - to Alonee_Alonee)', '5');
INSERT INTO `vehicle_logs` VALUES ('528', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('529', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('530', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('531', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('532', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('533', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('534', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('535', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('536', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('537', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('538', '2026-09-29 03:03:45', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('539', '2026-09-29 03:03:46', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('540', '2026-09-29 03:03:46', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('541', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('542', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('543', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('544', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('545', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('546', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('547', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('548', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('549', '2026-09-29 03:03:47', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('550', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('551', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('552', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('553', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('554', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('555', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('556', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('557', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('558', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('559', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('560', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('561', '2026-09-29 03:03:51', '15', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('562', '2026-09-29 03:17:35', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('563', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('564', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('565', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('566', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('567', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('568', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('569', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('570', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('571', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('572', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('573', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('574', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('575', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('576', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('577', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('578', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('579', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('580', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('581', '2026-09-29 03:17:40', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('582', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('583', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('584', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('585', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('586', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('587', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('588', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('589', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('590', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('591', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('592', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('593', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('594', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('595', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('596', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('597', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('598', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('599', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('600', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('601', '2026-09-29 03:17:45', '14', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('602', '2026-09-29 03:17:48', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('603', '2026-09-29 03:56:41', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('604', '2026-09-29 03:56:42', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('605', '2026-09-29 03:56:42', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('606', '2026-09-29 03:56:42', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('607', '2026-09-29 03:56:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('608', '2026-09-29 03:56:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('609', '2026-09-29 03:56:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('610', '2026-09-29 03:56:57', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('611', '2026-09-29 03:56:57', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('612', '2026-09-29 03:56:57', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('613', '2026-09-29 03:56:57', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('614', '2026-09-29 04:11:29', '9', 'makeveh Turismo ($1300000 - to 1)', '5');
INSERT INTO `vehicle_logs` VALUES ('615', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('616', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('617', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('618', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('619', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('620', '2026-09-29 04:11:46', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('621', '2026-09-29 04:18:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('622', '2026-09-29 04:18:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('623', '2026-09-29 04:18:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('624', '2026-09-29 04:18:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('625', '2026-09-29 04:18:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('626', '2026-09-29 04:18:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('627', '2026-09-29 04:18:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('628', '2026-09-29 04:18:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('629', '2026-09-29 04:18:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('630', '2026-09-29 04:18:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('631', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('632', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('633', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('634', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('635', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('636', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('637', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('638', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('639', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('640', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('641', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('642', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('643', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('644', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('645', '2026-09-29 04:18:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('646', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('647', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('648', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('649', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('650', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('651', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('652', '2026-09-29 04:18:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('653', '2026-09-29 04:18:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('654', '2026-09-29 04:18:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('655', '2026-09-29 04:18:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('656', '2026-09-29 04:20:54', '9', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('657', '2026-09-29 04:20:57', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('658', '2026-09-29 04:20:57', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('659', '2026-09-29 04:20:57', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('660', '2026-09-29 04:20:57', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('661', '2026-09-29 04:20:58', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('662', '2026-09-29 04:20:58', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('663', '2026-09-29 04:20:58', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('664', '2026-09-29 04:20:58', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('665', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('666', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('667', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('668', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('669', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('670', '2026-09-29 04:21:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('671', '2026-09-29 04:21:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('672', '2026-09-29 04:21:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('673', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('674', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('675', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('676', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('677', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('678', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('679', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('680', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('681', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('682', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('683', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('684', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('685', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('686', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('687', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('688', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('689', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('690', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('691', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('692', '2026-09-29 04:21:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('693', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('694', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('695', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('696', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('697', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('698', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('699', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('700', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('701', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('702', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('703', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('704', '2026-09-29 04:21:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('705', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('706', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('707', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('708', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('709', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('710', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('711', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('712', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('713', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('714', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('715', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('716', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('717', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('718', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('719', '2026-09-29 04:21:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('720', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('721', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('722', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('723', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('724', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('725', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('726', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('727', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('728', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('729', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('730', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('731', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('732', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('733', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('734', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('735', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('736', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('737', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('738', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('739', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('740', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('741', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('742', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('743', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('744', '2026-09-29 04:21:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('745', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('746', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('747', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('748', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('749', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('750', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('751', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('752', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('753', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('754', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('755', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('756', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('757', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('758', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('759', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('760', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('761', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('762', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('763', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('764', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('765', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('766', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('767', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('768', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('769', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('770', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('771', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('772', '2026-09-29 04:21:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('773', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('774', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('775', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('776', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('777', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('778', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('779', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('780', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('781', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('782', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('783', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('784', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('785', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('786', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('787', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('788', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('789', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('790', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('791', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('792', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('793', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('794', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('795', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('796', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('797', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('798', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('799', '2026-09-29 04:21:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('800', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('801', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('802', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('803', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('804', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('805', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('806', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('807', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('808', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('809', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('810', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('811', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('812', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('813', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('814', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('815', '2026-09-29 04:21:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('816', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('817', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('818', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('819', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('820', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('821', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('822', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('823', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('824', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('825', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('826', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('827', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('828', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('829', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('830', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('831', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('832', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('833', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('834', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('835', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('836', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('837', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('838', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('839', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('840', '2026-09-29 04:21:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('841', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('842', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('843', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('844', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('845', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('846', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('847', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('848', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('849', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('850', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('851', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('852', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('853', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('854', '2026-09-29 04:21:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('855', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('856', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('857', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('858', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('859', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('860', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('861', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('862', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('863', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('864', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('865', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('866', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('867', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('868', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('869', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('870', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('871', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('872', '2026-09-29 04:21:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('873', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('874', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('875', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('876', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('877', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('878', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('879', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('880', '2026-09-29 04:21:14', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('881', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('882', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('883', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('884', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('885', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('886', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('887', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('888', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('889', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('890', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('891', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('892', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('893', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('894', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('895', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('896', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('897', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('898', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('899', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('900', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('901', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('902', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('903', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('904', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('905', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('906', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('907', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('908', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('909', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('910', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('911', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('912', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('913', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('914', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('915', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('916', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('917', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('918', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('919', '2026-09-29 04:21:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('920', '2026-09-29 04:21:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('921', '2026-09-29 04:21:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('922', '2026-09-29 04:21:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('923', '2026-09-29 04:21:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('924', '2026-09-29 04:21:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('925', '2026-09-29 04:21:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('926', '2026-09-29 04:21:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('927', '2026-09-29 04:21:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('928', '2026-09-29 04:21:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('929', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('930', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('931', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('932', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('933', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('934', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('935', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('936', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('937', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('938', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('939', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('940', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('941', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('942', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('943', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('944', '2026-09-29 04:21:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('945', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('946', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('947', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('948', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('949', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('950', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('951', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('952', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('953', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('954', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('955', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('956', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('957', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('958', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('959', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('960', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('961', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('962', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('963', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('964', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('965', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('966', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('967', '2026-09-29 04:21:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('968', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('969', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('970', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('971', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('972', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('973', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('974', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('975', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('976', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('977', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('978', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('979', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('980', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('981', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('982', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('983', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('984', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('985', '2026-09-29 04:21:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('986', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('987', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('988', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('989', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('990', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('991', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('992', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('993', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('994', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('995', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('996', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('997', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('998', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('999', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1000', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1001', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1002', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1003', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1004', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1005', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1006', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1007', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1008', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1009', '2026-09-29 04:21:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1010', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1011', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1012', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1013', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1014', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1015', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1016', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1017', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1018', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1019', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1020', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1021', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1022', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1023', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1024', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1025', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1026', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1027', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1028', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1029', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1030', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1031', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1032', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1033', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1034', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1035', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1036', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1037', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1038', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1039', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1040', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1041', '2026-09-29 04:21:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1042', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1043', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1044', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1045', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1046', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1047', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1048', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1049', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1050', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1051', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1052', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1053', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1054', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1055', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1056', '2026-09-29 04:21:24', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1057', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1058', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1059', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1060', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1061', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1062', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1063', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1064', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1065', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1066', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1067', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1068', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1069', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1070', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1071', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1072', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1073', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1074', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1075', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1076', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1077', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1078', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1079', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1080', '2026-09-29 04:21:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1081', '2026-09-29 04:21:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1082', '2026-09-29 04:21:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1083', '2026-09-29 04:21:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1084', '2026-09-29 04:21:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1085', '2026-09-29 04:21:39', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1086', '2026-09-29 04:21:39', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1087', '2026-09-29 04:21:39', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1088', '2026-09-29 04:21:40', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1089', '2026-09-29 04:21:40', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1090', '2026-09-29 05:12:49', '10', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('1091', '2026-09-29 05:15:10', '13', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('1092', '2026-09-29 05:15:13', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1093', '2026-09-29 05:15:13', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1094', '2026-09-29 05:15:13', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1095', '2026-09-29 05:15:19', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1096', '2026-09-29 05:15:19', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1097', '2026-09-29 05:15:19', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1098', '2026-09-29 05:15:19', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1099', '2026-09-29 05:17:56', '10', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('1100', '2026-09-29 05:17:57', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1101', '2026-09-29 05:17:57', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1102', '2026-09-29 05:17:57', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1103', '2026-09-29 05:17:57', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1104', '2026-09-29 05:17:58', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1105', '2026-09-29 05:17:58', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1106', '2026-09-29 05:17:58', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1107', '2026-09-29 05:17:58', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1108', '2026-09-29 05:18:04', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1109', '2026-09-29 05:18:04', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1110', '2026-09-29 05:18:04', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1111', '2026-09-29 05:18:04', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1112', '2026-09-29 05:18:04', '10', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1113', '2026-09-29 05:22:23', '13', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('1114', '2026-09-29 05:25:12', '13', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('1115', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1116', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1117', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1118', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1119', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1120', '2026-09-29 09:26:50', '13', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('1121', '2026-09-29 09:32:42', '9', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('1122', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1123', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1124', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1125', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1126', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1127', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1128', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1129', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1130', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1131', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1132', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1133', '2026-09-29 09:32:47', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1134', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1135', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1136', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1137', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1138', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1139', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1140', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1141', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1142', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1143', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1144', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1145', '2026-09-29 09:32:48', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1146', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1147', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1148', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1149', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1150', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1151', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1152', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1153', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1154', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1155', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1156', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1157', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1158', '2026-09-29 09:33:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1159', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1160', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1161', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1162', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1163', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1164', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1165', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1166', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1167', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1168', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1169', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1170', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1171', '2026-09-29 09:33:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1172', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1173', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1174', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1175', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1176', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1177', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1178', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1179', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1180', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1181', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1182', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1183', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1184', '2026-09-29 09:33:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1185', '2026-09-29 09:33:04', '10', 'gotoveh', '5');
INSERT INTO `vehicle_logs` VALUES ('1186', '2026-09-29 09:33:09', '9', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('1187', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1188', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1189', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1190', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1191', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1192', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1193', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1194', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1195', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1196', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1197', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1198', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1199', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1200', '2026-09-29 09:33:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1201', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1202', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1203', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1204', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1205', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1206', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1207', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1208', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1209', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1210', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1211', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1212', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1213', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1214', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1215', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1216', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1217', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1218', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1219', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1220', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1221', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1222', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1223', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1224', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1225', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1226', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1227', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1228', '2026-09-29 09:33:15', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1229', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1230', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1231', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1232', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1233', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1234', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1235', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1236', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1237', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1238', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1239', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1240', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1241', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1242', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1243', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1244', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1245', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1246', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1247', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1248', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1249', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1250', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1251', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1252', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1253', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1254', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1255', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1256', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1257', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1258', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1259', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1260', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1261', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1262', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1263', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1264', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1265', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1266', '2026-09-29 09:33:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1267', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1268', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1269', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1270', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1271', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1272', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1273', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1274', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1275', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1276', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1277', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1278', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1279', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1280', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1281', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1282', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1283', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1284', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1285', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1286', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1287', '2026-09-29 09:33:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1288', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1289', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1290', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1291', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1292', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1293', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1294', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1295', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1296', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1297', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1298', '2026-09-29 09:33:18', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1299', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1300', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1301', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1302', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1303', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1304', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1305', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1306', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1307', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1308', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1309', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1310', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1311', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1312', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1313', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1314', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1315', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1316', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1317', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1318', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1319', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1320', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1321', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1322', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1323', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1324', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1325', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1326', '2026-09-29 09:33:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1327', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1328', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1329', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1330', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1331', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1332', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1333', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1334', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1335', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1336', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1337', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1338', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1339', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1340', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1341', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1342', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1343', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1344', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1345', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1346', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1347', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1348', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1349', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1350', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1351', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1352', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1353', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1354', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1355', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1356', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1357', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1358', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1359', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1360', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1361', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1362', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1363', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1364', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1365', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1366', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1367', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1368', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1369', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1370', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1371', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1372', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1373', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1374', '2026-09-29 09:33:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1375', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1376', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1377', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1378', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1379', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1380', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1381', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1382', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1383', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1384', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1385', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1386', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1387', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1388', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1389', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1390', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1391', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1392', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1393', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1394', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1395', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1396', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1397', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1398', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1399', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1400', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1401', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1402', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1403', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1404', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1405', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1406', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1407', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1408', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1409', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1410', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1411', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1412', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1413', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1414', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1415', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1416', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1417', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1418', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1419', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1420', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1421', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1422', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1423', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1424', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1425', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1426', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1427', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1428', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1429', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1430', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1431', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1432', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1433', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1434', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1435', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1436', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1437', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1438', '2026-09-29 09:33:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1439', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1440', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1441', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1442', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1443', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1444', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1445', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1446', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1447', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1448', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1449', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1450', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1451', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1452', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1453', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1454', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1455', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1456', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1457', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1458', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1459', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1460', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1461', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1462', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1463', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1464', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1465', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1466', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1467', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1468', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1469', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1470', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1471', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1472', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1473', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1474', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1475', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1476', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1477', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1478', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1479', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1480', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1481', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1482', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1483', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1484', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1485', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1486', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1487', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1488', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1489', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1490', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1491', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1492', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1493', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1494', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1495', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1496', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1497', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1498', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1499', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1500', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1501', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1502', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1503', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1504', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1505', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1506', '2026-09-29 09:33:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1507', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1508', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1509', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1510', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1511', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1512', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1513', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1514', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1515', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1516', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1517', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1518', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1519', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1520', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1521', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1522', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1523', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1524', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1525', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1526', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1527', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1528', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1529', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1530', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1531', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1532', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1533', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1534', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1535', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1536', '2026-09-29 09:33:23', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1538', '2026-09-29 05:35:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1539', '2026-09-29 05:35:01', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1540', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1541', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1542', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1543', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1544', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1545', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1546', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1547', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1548', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1549', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1550', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1551', '2026-09-29 05:35:02', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1552', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1553', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1554', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1555', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1556', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1557', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1558', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1559', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1560', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1561', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1562', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1563', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1564', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1565', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1566', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1567', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1568', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1569', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1570', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1571', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1572', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1573', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1574', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1575', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1576', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1577', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1578', '2026-09-29 05:35:03', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1579', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1580', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1581', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1582', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1583', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1584', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1585', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1586', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1587', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1588', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1589', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1590', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1591', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1592', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1593', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1594', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1595', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1596', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1597', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1598', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1599', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1600', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1601', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1602', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1603', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1604', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1605', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1606', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1607', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1608', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1609', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1610', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1611', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1612', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1613', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1614', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1615', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1616', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1617', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1618', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1619', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1620', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1621', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1622', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1623', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1624', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1625', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1626', '2026-09-29 05:35:04', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1627', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1628', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1629', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1630', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1631', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1632', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1633', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1634', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1635', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1636', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1637', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1638', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1639', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1640', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1641', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1642', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1643', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1644', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1645', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1646', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1647', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1648', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1649', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1650', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1651', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1652', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1653', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1654', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1655', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1656', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1657', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1658', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1659', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1660', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1661', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1662', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1663', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1664', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1665', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1666', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1667', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1668', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1669', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1670', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1671', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1672', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1673', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1674', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1675', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1676', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1677', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1678', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1679', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1680', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1681', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1682', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1683', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1684', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1685', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1686', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1687', '2026-09-29 05:35:05', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1688', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1689', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1690', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1691', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1692', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1693', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1694', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1695', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1696', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1697', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1698', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1699', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1700', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1701', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1702', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1703', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1704', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1705', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1706', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1707', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1708', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1709', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1710', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1711', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1712', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1713', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1714', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1715', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1716', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1717', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1718', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1719', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1720', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1721', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1722', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1723', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1724', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1725', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1726', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1727', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1728', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1729', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1730', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1731', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1732', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1733', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1734', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1735', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1736', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1737', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1738', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1739', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1740', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1741', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1742', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1743', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1744', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1745', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1746', '2026-09-29 05:35:06', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1747', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1748', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1749', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1750', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1751', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1752', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1753', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1754', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1755', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1756', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1757', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1758', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1759', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1760', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1761', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1762', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1763', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1764', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1765', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1766', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1767', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1768', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1769', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1770', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1771', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1772', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1773', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1774', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1775', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1776', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1777', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1778', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1779', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1780', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1781', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1782', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1783', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1784', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1785', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1786', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1787', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1788', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1789', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1790', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1791', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1792', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1793', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1794', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1795', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1796', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1797', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1798', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1799', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1800', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1801', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1802', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1803', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1804', '2026-09-29 05:35:07', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1805', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1806', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1807', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1808', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1809', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1810', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1811', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1812', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1813', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1814', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1815', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1816', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1817', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1818', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1819', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1820', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1821', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1822', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1823', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1824', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1825', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1826', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1827', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1828', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1829', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1830', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1831', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1832', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1833', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1834', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1835', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1836', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1837', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1838', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1839', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1840', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1841', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1842', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1843', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1844', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1845', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1846', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1847', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1848', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1849', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1850', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1851', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1852', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1853', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1854', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1855', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1856', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1857', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1858', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1859', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1860', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1861', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1862', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1863', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1864', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1865', '2026-09-29 05:35:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1866', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1867', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1868', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1869', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1870', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1871', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1872', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1873', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1874', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1875', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1876', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1877', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1878', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1879', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1880', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1881', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1882', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1883', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1884', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1885', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1886', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1887', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1888', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1889', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1890', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1891', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1892', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1893', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1894', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1895', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1896', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1897', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1898', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1899', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1900', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1901', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1902', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1903', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1904', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1905', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1906', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1907', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1908', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1909', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1910', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1911', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1912', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1913', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1914', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1915', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1916', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1917', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1918', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1919', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1920', '2026-09-29 05:35:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1921', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1922', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1923', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1924', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1925', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1926', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1927', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1928', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1929', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1930', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1931', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1932', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1933', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1934', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1935', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1936', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1937', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1938', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1939', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1940', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1941', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1942', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1943', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1944', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1945', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1946', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1947', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1948', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1949', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1950', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1951', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1952', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1953', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1954', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1955', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1956', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1957', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1958', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1959', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1960', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1961', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1962', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1963', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1964', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1965', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1966', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1967', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1968', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1969', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1970', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1971', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1972', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1973', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1974', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1975', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1976', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1977', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1978', '2026-09-29 05:35:10', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1979', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1980', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1981', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1982', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1983', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1984', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1985', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1986', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1987', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1988', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1989', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1990', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1991', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1992', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1993', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1994', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1995', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1996', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1997', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1998', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('1999', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2000', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2001', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2002', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2003', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2004', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2005', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2006', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2007', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2008', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2009', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2010', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2011', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2012', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2013', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2014', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2015', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2016', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2017', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2018', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2019', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2020', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2021', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2022', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2023', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2024', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2025', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2026', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2027', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2028', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2029', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2030', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2031', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2032', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2033', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2034', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2035', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2036', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2037', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2038', '2026-09-29 05:35:11', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2039', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2040', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2041', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2042', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2043', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2044', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2045', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2046', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2047', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2048', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2049', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2050', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2051', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2052', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2053', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2054', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2055', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2056', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2057', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2058', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2059', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2060', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2061', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2062', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2063', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2064', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2065', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2066', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2067', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2068', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2069', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2070', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2071', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2072', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2073', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2074', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2075', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2076', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2077', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2078', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2079', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2080', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2081', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2082', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2083', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2084', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2085', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2086', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2087', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2088', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2089', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2090', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2091', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2092', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2093', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2094', '2026-09-29 05:35:12', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2095', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2096', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2097', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2098', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2099', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2100', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2101', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2102', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2103', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2104', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2105', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2106', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2107', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2108', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2109', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2110', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2111', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2112', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2113', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2114', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2115', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2116', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2117', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2118', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2119', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2120', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2121', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2122', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2123', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2124', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2125', '2026-09-29 05:35:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2126', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2127', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2128', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2129', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2130', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2131', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2132', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2133', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2134', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2135', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2136', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2137', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2138', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2139', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2140', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2141', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2142', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2143', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2144', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2145', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2146', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2147', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2148', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2149', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2150', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2151', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2152', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2153', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2154', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2155', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2156', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2157', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2158', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2159', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2160', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2161', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2162', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2163', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2164', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2165', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2166', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2167', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2168', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2169', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2170', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2171', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2172', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2173', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2174', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2175', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2176', '2026-09-29 05:35:16', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2177', '2026-09-29 05:35:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2178', '2026-09-29 05:35:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2179', '2026-09-29 05:35:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2180', '2026-09-29 05:35:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2181', '2026-09-29 05:35:17', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2182', '2026-09-29 05:35:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2183', '2026-09-29 05:35:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2184', '2026-09-29 05:35:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2185', '2026-09-29 05:35:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2186', '2026-09-29 05:35:19', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2187', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2188', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2189', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2190', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2191', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2192', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2193', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2194', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2195', '2026-09-29 05:35:20', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2196', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2197', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2198', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2199', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2200', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2201', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2202', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2203', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2204', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2205', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2206', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2207', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2208', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2209', '2026-09-29 05:35:21', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2210', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2211', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2212', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2213', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2214', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2215', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2216', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2217', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2218', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2219', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2220', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2221', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2222', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2223', '2026-09-29 05:35:22', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2224', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2225', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2226', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2227', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2228', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2229', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2230', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2231', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2232', '2026-09-29 05:35:25', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2233', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2234', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2235', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2236', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2237', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2238', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2239', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2240', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2241', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2242', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2243', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2244', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2245', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2246', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2247', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2248', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2249', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2250', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2251', '2026-09-29 05:35:26', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2252', '2026-09-29 05:35:27', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2253', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2254', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2255', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2256', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2257', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2258', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2259', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2260', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2261', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2262', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2263', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2264', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2265', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2266', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2267', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2268', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2269', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2270', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2271', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2272', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2273', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2274', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2275', '2026-09-29 05:35:28', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2276', '2026-09-29 05:35:29', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2277', '2026-09-29 05:35:29', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2278', '2026-09-29 05:35:29', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2279', '2026-09-29 05:35:29', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2280', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2281', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2282', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2283', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2284', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2285', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2286', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2287', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2288', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2289', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2290', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2291', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2292', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2293', '2026-09-29 05:35:31', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2294', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2295', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2296', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2297', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2298', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2299', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2300', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2301', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2302', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2303', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2304', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2305', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2306', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2307', '2026-09-29 05:35:33', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2308', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2309', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2310', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2311', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2312', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2313', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2314', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2315', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2316', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2317', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2318', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2319', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2320', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2321', '2026-09-29 05:35:34', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2322', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2323', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2324', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2325', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2326', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2327', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2328', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2329', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2330', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2331', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2332', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2333', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2334', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2335', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2336', '2026-09-29 05:35:42', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2629', '2026-09-29 07:32:16', '16', 'makeveh Bullet ($80000 - to Fego_ELdkhlawy)', '5');
INSERT INTO `vehicle_logs` VALUES ('2630', '2026-09-29 07:34:49', '17', 'DONATEGUI Rancher ($0 - to Fego ELdkhlawy)', '5');
INSERT INTO `vehicle_logs` VALUES ('2636', '2026-09-29 07:37:15', '21', 'DONATEGUI Huntley ($0 - to Fego ELdkhlawy)', '5');
INSERT INTO `vehicle_logs` VALUES ('2637', '2026-09-29 07:40:50', '21', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('2638', '2026-09-29 07:40:50', '21', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('2643', '2026-09-29 08:10:49', '26', 'DONATEGUI Huntley ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2644', '2026-09-29 08:10:49', '27', 'DONATEGUI Huntley ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2645', '2026-09-29 08:12:43', '9', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('2646', '2026-09-29 08:12:43', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2647', '2026-09-29 08:12:43', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2648', '2026-09-29 08:12:43', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2649', '2026-09-29 08:12:50', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2650', '2026-09-29 08:12:50', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2651', '2026-09-29 08:12:50', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2652', '2026-09-29 08:12:50', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2658', '2026-09-29 08:26:42', '31', 'DONATEGUI Landstalker ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2659', '2026-09-29 08:26:42', '32', 'DONATEGUI Landstalker ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2664', '2026-09-29 08:33:07', '31', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2665', '2026-09-29 08:33:07', '31', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2666', '2026-09-29 08:33:07', '31', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2668', '2026-09-29 08:34:07', '38', 'DONATEGUI Landstalker ($0 - to Alonee Alonee)', '6');
INSERT INTO `vehicle_logs` VALUES ('2669', '2026-09-29 08:34:22', '39', 'DONATEGUI Sentinel ($0 - to Alonee Alonee)', '6');
INSERT INTO `vehicle_logs` VALUES ('2673', '2026-09-29 08:34:49', '43', 'DONATEGUI Huntley ($0 - to Alonee Alonee)', '6');
INSERT INTO `vehicle_logs` VALUES ('2675', '2026-09-29 08:35:26', '45', 'DONATEGUI Huntley ($0 - to Minato Johnson)', '16');
INSERT INTO `vehicle_logs` VALUES ('2676', '2026-09-29 08:35:33', '46', 'DONATEGUI Elegant ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2677', '2026-09-29 08:35:40', '46', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2678', '2026-09-29 08:35:40', '46', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2680', '2026-09-29 08:40:02', '48', 'DONATEGUI Landstalker ($0 - to Santa)', '7');
INSERT INTO `vehicle_logs` VALUES ('2681', '2026-09-29 08:40:17', '48', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2682', '2026-09-29 08:40:17', '48', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2683', '2026-09-29 08:40:17', '48', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('2687', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2688', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2689', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2690', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2691', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2692', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2693', '2026-09-29 08:49:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2694', '2026-09-29 08:57:49', '43', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2695', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2696', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2697', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2698', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2699', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2700', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2701', '2026-09-29 08:57:51', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2702', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2703', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2704', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2705', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2706', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2707', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2708', '2026-09-29 08:57:52', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2709', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2710', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2711', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2712', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2713', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2714', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2715', '2026-09-29 08:57:53', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2716', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2717', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2718', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2719', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2720', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2721', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2722', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2723', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2724', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2725', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2726', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2727', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2728', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2729', '2026-09-29 08:57:54', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2730', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2731', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2732', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2733', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2734', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2735', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2736', '2026-09-29 08:57:55', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2737', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2738', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2739', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2740', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2741', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2742', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2743', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2744', '2026-09-29 08:58:01', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2745', '2026-09-29 09:02:44', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2746', '2026-09-29 09:05:43', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2747', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2748', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2749', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2750', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2751', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2752', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2753', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2754', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2755', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2756', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2757', '2026-09-29 09:05:44', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2758', '2026-09-29 09:10:48', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2759', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2760', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2761', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2762', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2763', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2764', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2765', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2766', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2767', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2768', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2769', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2770', '2026-09-29 09:10:50', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2771', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2772', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2773', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2774', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2775', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2776', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2777', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2778', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2779', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2780', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2781', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2782', '2026-09-29 09:10:51', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2783', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2784', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2785', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2786', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2787', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2788', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2789', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2790', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2791', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2792', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2793', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2794', '2026-09-29 09:10:52', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2795', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2796', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2797', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2798', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2799', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2800', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2801', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2802', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2803', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2804', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2805', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2806', '2026-09-29 09:10:53', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2807', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2808', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2809', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2810', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2811', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2812', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2813', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2814', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2815', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2816', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2817', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2818', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2819', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2820', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2821', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2822', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2823', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2824', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2825', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2826', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2827', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2828', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2829', '2026-09-29 09:10:54', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2830', '2026-09-29 09:10:55', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2831', '2026-09-29 09:11:12', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2832', '2026-09-29 09:11:12', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2833', '2026-09-29 09:11:12', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2834', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2835', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2836', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2837', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2838', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2839', '2026-09-29 09:11:15', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2840', '2026-09-29 09:11:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2841', '2026-09-29 09:11:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2842', '2026-09-29 09:11:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2843', '2026-09-29 09:11:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2844', '2026-09-29 09:12:25', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2845', '2026-09-29 09:12:35', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2846', '2026-09-29 09:12:35', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2847', '2026-09-29 09:12:36', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2848', '2026-09-29 09:12:36', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2849', '2026-09-29 09:12:54', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2850', '2026-09-29 09:12:54', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2851', '2026-09-29 09:12:54', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2852', '2026-09-29 09:12:54', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2853', '2026-09-29 09:12:54', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2854', '2026-09-29 09:12:56', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2855', '2026-09-29 09:12:56', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2856', '2026-09-29 09:12:56', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2857', '2026-09-29 09:12:56', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2858', '2026-09-29 09:12:58', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2859', '2026-09-29 09:12:58', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2860', '2026-09-29 09:12:58', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2861', '2026-09-29 09:12:58', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2862', '2026-09-29 09:12:58', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2863', '2026-09-29 09:13:07', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2864', '2026-09-29 09:13:08', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2865', '2026-09-29 09:13:08', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2866', '2026-09-29 09:13:08', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2867', '2026-09-29 09:13:08', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2868', '2026-09-29 09:13:11', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2869', '2026-09-29 09:13:11', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2870', '2026-09-29 09:13:11', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2871', '2026-09-29 09:13:11', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2872', '2026-09-29 09:13:11', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2873', '2026-09-29 09:13:21', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2874', '2026-09-29 09:13:21', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2875', '2026-09-29 09:13:21', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2876', '2026-09-29 09:13:21', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2877', '2026-09-29 09:13:21', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2878', '2026-09-29 09:13:22', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2879', '2026-09-29 09:13:22', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2880', '2026-09-29 09:13:22', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2881', '2026-09-29 09:13:22', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2882', '2026-09-29 09:13:22', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2883', '2026-09-29 09:13:23', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2884', '2026-09-29 09:13:23', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2885', '2026-09-29 09:13:23', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2886', '2026-09-29 09:13:23', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2887', '2026-09-29 09:13:23', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2888', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2889', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2890', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2891', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2892', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2893', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2894', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2895', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2896', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2897', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2898', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2899', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2900', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2901', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2902', '2026-09-29 09:13:24', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2903', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2904', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2905', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2906', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2907', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2908', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2909', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2910', '2026-09-29 09:13:25', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2911', '2026-09-29 09:13:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2912', '2026-09-29 09:13:26', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2913', '2026-09-29 09:13:33', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2914', '2026-09-29 09:13:33', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2915', '2026-09-29 09:13:33', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2916', '2026-09-29 09:13:33', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2917', '2026-09-29 09:13:33', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2918', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2919', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2920', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2921', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2922', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2923', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2924', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2925', '2026-09-29 09:13:34', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2926', '2026-09-29 09:13:35', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2927', '2026-09-29 09:13:35', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2928', '2026-09-29 09:13:35', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2929', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2930', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2931', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2932', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2933', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2934', '2026-09-29 09:13:39', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2935', '2026-09-29 09:13:40', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2936', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2937', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2938', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2939', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2940', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2941', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2942', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2943', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2944', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2945', '2026-09-29 09:13:41', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2946', '2026-09-29 09:14:44', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2947', '2026-09-29 09:14:46', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2948', '2026-09-29 09:14:46', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2949', '2026-09-29 09:14:46', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2950', '2026-09-29 09:15:26', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2951', '2026-09-29 09:16:17', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2952', '2026-09-29 09:16:19', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2953', '2026-09-29 09:16:19', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2954', '2026-09-29 09:16:19', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2955', '2026-09-29 09:16:21', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2956', '2026-09-29 09:16:21', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2957', '2026-09-29 09:16:21', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2958', '2026-09-29 09:16:22', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2959', '2026-09-29 09:16:22', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2960', '2026-09-29 09:16:22', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2961', '2026-09-29 09:16:23', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2962', '2026-09-29 09:16:23', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2963', '2026-09-29 09:16:23', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2964', '2026-09-29 09:16:31', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2965', '2026-09-29 09:16:31', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2966', '2026-09-29 09:16:31', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2967', '2026-09-29 09:16:31', '12', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2968', '2026-09-29 09:16:38', '49', 'DONATEGUI Buffalo ($0 - to GHOST GHOST)', '8');
INSERT INTO `vehicle_logs` VALUES ('2969', '2026-09-29 09:17:13', '12', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('2970', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2971', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2972', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2973', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2974', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2975', '2026-09-29 09:18:55', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2976', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2977', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2978', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2979', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2980', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2981', '2026-09-29 09:19:01', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('2982', '2026-09-29 09:19:04', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2983', '2026-09-29 09:19:04', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2984', '2026-09-29 09:19:04', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2985', '2026-09-29 09:19:04', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2986', '2026-09-29 09:19:04', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2987', '2026-09-29 09:19:06', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2988', '2026-09-29 09:19:06', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2989', '2026-09-29 09:19:06', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2990', '2026-09-29 09:19:06', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2991', '2026-09-29 09:19:06', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2992', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2993', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2994', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2995', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2996', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('2997', '2026-09-29 09:19:13', '49', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3017', '2026-09-29 09:35:41', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3018', '2026-09-29 09:35:41', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3019', '2026-09-29 09:36:31', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3020', '2026-09-29 09:36:34', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3021', '2026-09-29 09:36:34', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3022', '2026-09-29 09:36:43', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3023', '2026-09-29 09:36:43', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3024', '2026-09-29 09:36:43', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3025', '2026-09-29 09:36:43', '49', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3026', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3027', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3028', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3029', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3030', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3031', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3032', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3033', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3034', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3035', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3036', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3037', '2026-09-29 09:41:50', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3044', '2026-09-29 09:59:36', '19', 'makeveh Glendale Damaged ($1 - to GHOST_GHOST)', '5');
INSERT INTO `vehicle_logs` VALUES ('3045', '2026-09-29 10:00:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3046', '2026-09-29 10:00:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3047', '2026-09-29 10:00:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3048', '2026-09-29 10:00:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3068', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3069', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3070', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3071', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3072', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3073', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3074', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3075', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3076', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3077', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3078', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3079', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3080', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3081', '2026-09-29 11:58:51', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3082', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3083', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3084', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3085', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3086', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3087', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3088', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3089', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3090', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3091', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3092', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3093', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3094', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3095', '2026-09-29 11:58:53', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3096', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3097', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3098', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3099', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3100', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3101', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3102', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3103', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3104', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3105', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3106', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3107', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3108', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3109', '2026-09-29 11:58:54', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3110', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3111', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3112', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3113', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3114', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3115', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3116', '2026-09-29 11:58:57', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3117', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3118', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3119', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3120', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3121', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3122', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3123', '2026-09-29 11:58:58', '10', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3124', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3125', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3126', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3127', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3128', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3129', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3130', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3131', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3132', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3133', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3134', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3135', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3136', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3137', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3138', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3139', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3140', '2026-09-29 12:06:45', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3141', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3142', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3143', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3144', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3145', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3146', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3147', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3148', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3149', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3150', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3151', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3152', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3153', '2026-09-29 12:06:46', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3154', '2026-09-29 12:06:47', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3155', '2026-09-29 12:06:47', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3156', '2026-09-29 12:06:47', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3157', '2026-09-29 12:06:47', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3158', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3159', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3160', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3161', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3162', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3163', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3164', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3165', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3166', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3167', '2026-09-29 12:06:53', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3168', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3169', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3170', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3171', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3172', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3173', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3174', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3175', '2026-09-29 12:06:54', '16', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3198', '2026-09-29 14:15:10', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3199', '2026-09-29 14:15:10', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3200', '2026-09-29 14:15:10', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3201', '2026-09-29 14:15:10', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3202', '2026-09-29 14:15:14', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3203', '2026-09-29 14:15:14', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3204', '2026-09-29 14:15:14', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3205', '2026-09-29 14:15:14', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3206', '2026-09-29 14:15:15', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3207', '2026-09-29 14:15:15', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3208', '2026-09-29 14:15:15', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3209', '2026-09-29 14:15:15', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3210', '2026-09-29 14:15:16', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3211', '2026-09-29 14:15:16', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3212', '2026-09-29 14:15:16', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3213', '2026-09-29 14:15:16', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3214', '2026-09-29 14:15:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3215', '2026-09-29 14:15:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3216', '2026-09-29 14:15:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3217', '2026-09-29 14:15:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3218', '2026-09-29 14:15:18', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3219', '2026-09-29 14:15:18', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3220', '2026-09-29 14:15:18', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3221', '2026-09-29 14:15:18', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3222', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3223', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3224', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3225', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3226', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3227', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3228', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3229', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3230', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3231', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3232', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3233', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3234', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3235', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3236', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3237', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3238', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3239', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3240', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3241', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3242', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3243', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3244', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3245', '2026-09-29 14:15:19', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3246', '2026-09-29 14:15:21', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3247', '2026-09-29 14:15:21', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3248', '2026-09-29 14:15:21', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3249', '2026-09-29 14:15:21', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3250', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3251', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3252', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3253', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3254', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3255', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3256', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3257', '2026-09-29 14:15:25', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3258', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3259', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3260', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3261', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3262', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3263', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3264', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3265', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3266', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3267', '2026-09-29 14:15:29', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3268', '2026-09-29 14:15:30', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3269', '2026-09-29 14:15:30', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3270', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3271', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3272', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3273', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3274', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3275', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3276', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3277', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3278', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3279', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3280', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3281', '2026-09-29 14:15:31', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3282', '2026-09-29 14:23:46', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3283', '2026-09-29 14:23:46', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3284', '2026-09-29 14:23:46', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3285', '2026-09-29 14:23:46', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3286', '2026-09-29 14:23:46', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3287', '2026-09-29 14:23:48', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3288', '2026-09-29 14:23:48', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3289', '2026-09-29 14:23:48', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3290', '2026-09-29 14:23:48', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3291', '2026-09-29 14:23:48', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3292', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3293', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3294', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3295', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3296', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3297', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3298', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3299', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3300', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3301', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3302', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3303', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3304', '2026-09-29 14:23:49', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3305', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3306', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3307', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3308', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3309', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3310', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3311', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3312', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3313', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3314', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3315', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3316', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3317', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3318', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3319', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3320', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3321', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3322', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3323', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3324', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3325', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3326', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3327', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3328', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3329', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3330', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3331', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3332', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3333', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3334', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3335', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3336', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3337', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3338', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3339', '2026-09-29 14:23:50', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3340', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3341', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3342', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3343', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3344', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3345', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3346', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3347', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3348', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3349', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3350', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3351', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3352', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3353', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3354', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3355', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3356', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3357', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3358', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3359', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3360', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3361', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3362', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3363', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3364', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3365', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3366', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3367', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3368', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3369', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3370', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3371', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3372', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3373', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3374', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3375', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3376', '2026-09-29 14:23:51', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3377', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3378', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3379', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3380', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3381', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3382', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3383', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3384', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3385', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3386', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3387', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3388', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3389', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3390', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3391', '2026-09-29 14:23:52', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3392', '2026-09-29 14:23:56', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3393', '2026-09-29 14:23:56', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3394', '2026-09-29 14:23:56', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3395', '2026-09-29 14:23:56', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3396', '2026-09-29 14:23:56', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3397', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3398', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3399', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3400', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3401', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3402', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3403', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3404', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3405', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3406', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3407', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3408', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3409', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3410', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3411', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3412', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3413', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3414', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3415', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3416', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3417', '2026-09-29 14:23:57', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3418', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3419', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3420', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3421', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3422', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3423', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3424', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3425', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3426', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3427', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3428', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3429', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3430', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3431', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3432', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3433', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3434', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3435', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3436', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3437', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3438', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3439', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3440', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3441', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3442', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3443', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3444', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3445', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3446', '2026-09-29 14:23:58', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3449', '2026-09-29 22:38:23', '43', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('3450', '2026-09-29 22:50:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3451', '2026-09-29 22:50:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3452', '2026-09-29 22:50:08', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3453', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3454', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3455', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3456', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3457', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3458', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3459', '2026-09-29 22:50:09', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3460', '2026-09-29 22:50:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3461', '2026-09-29 22:50:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3462', '2026-09-29 22:50:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3463', '2026-09-29 22:50:13', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3464', '2026-09-29 22:50:49', '9', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('3465', '2026-09-29 22:50:51', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3466', '2026-09-29 22:50:51', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3467', '2026-09-29 22:50:51', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3468', '2026-09-29 22:50:51', '9', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3469', '2026-09-29 22:59:48', '9', 'fixveh', '7');
INSERT INTO `vehicle_logs` VALUES ('3470', '2026-09-30 02:13:14', '23', 'DONATEGUI Picador ($0 - to Adham Mohamed)', '18');
INSERT INTO `vehicle_logs` VALUES ('3476', '2026-09-30 02:47:21', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3477', '2026-09-30 02:47:21', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3478', '2026-09-30 02:47:21', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3479', '2026-09-30 02:47:23', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3480', '2026-09-30 02:47:23', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3481', '2026-09-30 02:49:11', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3482', '2026-09-30 02:49:12', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3483', '2026-09-30 02:49:12', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3484', '2026-09-30 02:49:12', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3485', '2026-09-30 02:49:12', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3486', '2026-09-30 02:49:12', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3487', '2026-09-30 02:49:13', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3488', '2026-09-30 02:49:14', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3489', '2026-09-30 02:49:14', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3490', '2026-09-30 02:49:14', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3491', '2026-09-30 02:49:14', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3492', '2026-09-30 02:49:14', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3493', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3494', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3495', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3496', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3497', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3498', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3499', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3500', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3501', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3502', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3503', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3504', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3505', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3506', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3507', '2026-09-30 02:49:15', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3508', '2026-09-30 02:49:16', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3509', '2026-09-30 02:49:16', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3510', '2026-09-30 02:49:16', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3511', '2026-09-30 02:56:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3512', '2026-09-30 02:56:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3513', '2026-09-30 02:56:08', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3536', '2026-09-30 03:34:12', '23', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3537', '2026-09-30 03:34:12', '23', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3538', '2026-09-30 03:34:12', '23', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3539', '2026-09-30 03:37:44', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3540', '2026-09-30 03:37:44', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3541', '2026-09-30 03:37:44', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3542', '2026-09-30 03:37:44', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3543', '2026-09-30 03:37:52', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3544', '2026-09-30 03:37:52', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3545', '2026-09-30 03:37:52', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3546', '2026-09-30 03:37:52', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3547', '2026-09-30 03:37:52', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3548', '2026-09-30 03:38:26', '14', 'unflip', '18');
INSERT INTO `vehicle_logs` VALUES ('3567', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3568', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3569', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3570', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3571', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3572', '2026-09-30 03:40:50', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3573', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3574', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3575', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3576', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3577', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3578', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3579', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3580', '2026-09-30 03:40:51', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3581', '2026-09-30 03:40:52', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3582', '2026-09-30 03:40:52', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3583', '2026-09-30 03:40:52', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3584', '2026-09-30 03:40:52', '23', 'Started engine', '18');
INSERT INTO `vehicle_logs` VALUES ('3585', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3586', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3587', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3588', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3589', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3590', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3591', '2026-09-30 03:53:36', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3647', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3648', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3649', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3650', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3651', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3652', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3653', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3654', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3655', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3656', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3657', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3658', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3659', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3660', '2026-09-30 04:00:04', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3661', '2026-09-30 04:05:46', '21', 'fixveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3663', '2026-09-30 04:06:19', '21', 'fixveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3665', '2026-09-30 04:07:05', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3666', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3667', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3668', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3669', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3670', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3671', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3672', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3673', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3674', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3675', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3676', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3677', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3678', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3679', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3680', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3681', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3682', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3683', '2026-09-30 04:07:26', '14', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('3684', '2026-09-30 04:07:57', '21', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3685', '2026-09-30 04:07:59', '21', 'fixveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3686', '2026-09-30 04:08:14', '21', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3687', '2026-09-30 04:08:16', '21', 'fixveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3688', '2026-09-30 04:08:31', '21', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3689', '2026-09-30 04:08:32', '21', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3690', '2026-09-30 04:11:55', '21', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3691', '2026-09-30 04:20:50', '43', 'unflip', '18');
INSERT INTO `vehicle_logs` VALUES ('3692', '2026-09-30 04:21:02', '43', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('3693', '2026-09-30 04:21:05', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3694', '2026-09-30 04:21:05', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3695', '2026-09-30 04:21:05', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3696', '2026-09-30 04:21:05', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3697', '2026-09-30 04:21:16', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3698', '2026-09-30 04:21:29', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3699', '2026-09-30 04:27:01', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3700', '2026-09-30 04:29:04', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3701', '2026-09-30 04:35:01', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3702', '2026-09-30 04:35:34', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3703', '2026-09-30 04:35:40', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3704', '2026-09-30 04:37:47', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3705', '2026-09-30 04:41:29', '14', 'getveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3706', '2026-09-30 04:41:41', '14', 'getveh', '18');
INSERT INTO `vehicle_logs` VALUES ('3707', '2026-09-30 04:43:44', '43', 'unflip', '18');
INSERT INTO `vehicle_logs` VALUES ('3708', '2026-09-30 04:44:23', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3709', '2026-09-30 04:44:23', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3710', '2026-09-30 04:44:23', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3711', '2026-09-30 04:44:23', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3712', '2026-09-30 04:44:31', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3713', '2026-09-30 04:44:31', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3714', '2026-09-30 04:44:32', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3715', '2026-09-30 04:44:32', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3716', '2026-09-30 04:44:32', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3717', '2026-09-30 04:44:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3718', '2026-09-30 04:44:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3719', '2026-09-30 04:44:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3720', '2026-09-30 04:44:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3721', '2026-09-30 04:44:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3722', '2026-09-30 04:45:00', '43', 'unflip', '18');
INSERT INTO `vehicle_logs` VALUES ('3723', '2026-09-30 04:45:52', '43', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('3796', '2026-09-30 04:54:55', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3797', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3798', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3799', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3800', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3801', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3802', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3803', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3804', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3805', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3806', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3807', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3808', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3809', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3810', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3811', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3812', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3813', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3814', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3815', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3816', '2026-09-30 05:11:31', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3817', '2026-09-30 05:16:38', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3818', '2026-09-30 05:17:21', '14', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('3824', '2026-09-30 05:25:07', '10', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('3825', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3826', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3827', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3828', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3829', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3830', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3831', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3832', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3833', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3834', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3835', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3836', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3837', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3838', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3839', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3840', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3841', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3842', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3843', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3844', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3845', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3846', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3847', '2026-09-30 05:29:13', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3848', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3849', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3850', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3851', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3852', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3853', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3854', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3855', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3856', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3857', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3858', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3859', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3860', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3861', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3862', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3863', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3864', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3865', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3866', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3867', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3868', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3869', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3870', '2026-09-30 05:29:14', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3871', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3872', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3873', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3874', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3875', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3876', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3877', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3878', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3879', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3880', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3881', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3882', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3883', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3884', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3885', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3886', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3887', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3888', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3889', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3890', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3891', '2026-09-30 05:29:15', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3892', '2026-09-30 05:29:16', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3893', '2026-09-30 05:29:16', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3894', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3895', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3896', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3897', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3898', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3899', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3900', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3901', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3902', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3903', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3904', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3905', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3906', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3907', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3908', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3909', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3910', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3911', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3912', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3913', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3914', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3915', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3916', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3917', '2026-09-30 05:29:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3918', '2026-09-30 05:44:22', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('3919', '2026-09-30 05:53:38', '-36', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('3920', '2026-09-30 06:00:29', '-37', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('3922', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3923', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3924', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3925', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3926', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3927', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3928', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3929', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3930', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3931', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3932', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3933', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3934', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3935', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3936', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3937', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3938', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3939', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3940', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3941', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3942', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3943', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3944', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3945', '2026-09-30 06:29:11', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3946', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3947', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3948', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3949', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3950', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3951', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3952', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3953', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3954', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3955', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3956', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3957', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3958', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3959', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3960', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3961', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3962', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3963', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3964', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3965', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3966', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3967', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3968', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3969', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3970', '2026-09-30 06:29:19', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('3971', '2026-09-30 06:47:27', '28', 'gotocar', '5');
INSERT INTO `vehicle_logs` VALUES ('3972', '2026-09-30 06:47:47', '28', 'restoreveh', '5');
INSERT INTO `vehicle_logs` VALUES ('3973', '2026-09-30 06:47:54', '28', 'getveh', '5');
INSERT INTO `vehicle_logs` VALUES ('3974', '2026-09-30 09:18:04', '27', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3975', '2026-09-30 09:18:04', '27', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3976', '2026-09-30 09:18:04', '27', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3977', '2026-09-30 09:18:04', '27', 'Started engine', '7');
INSERT INTO `vehicle_logs` VALUES ('3985', '2026-09-30 12:05:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3986', '2026-09-30 12:05:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3987', '2026-09-30 12:05:17', '19', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3988', '2026-09-30 12:07:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3989', '2026-09-30 12:07:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3990', '2026-09-30 12:07:43', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3991', '2026-09-30 12:07:45', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3992', '2026-09-30 12:07:45', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3993', '2026-09-30 12:07:45', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3994', '2026-09-30 12:07:46', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3995', '2026-09-30 12:07:46', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3996', '2026-09-30 12:07:46', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('3997', '2026-09-30 12:09:16', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3998', '2026-09-30 12:09:16', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('3999', '2026-09-30 12:09:16', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4000', '2026-09-30 12:09:16', '12', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4001', '2026-09-30 12:11:37', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4002', '2026-09-30 12:11:38', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4003', '2026-09-30 12:11:38', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4004', '2026-09-30 12:11:38', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4005', '2026-09-30 12:11:38', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4006', '2026-09-30 12:11:39', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4007', '2026-09-30 12:11:39', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4008', '2026-09-30 12:11:39', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4009', '2026-09-30 12:11:39', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4010', '2026-09-30 12:15:23', '8', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4011', '2026-09-30 12:15:23', '8', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4012', '2026-09-30 12:15:23', '8', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4013', '2026-09-30 12:15:23', '8', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4014', '2026-09-30 12:15:23', '8', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4015', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4016', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4017', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4018', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4019', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4020', '2026-09-30 12:17:48', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4021', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4022', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4023', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4024', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4025', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4026', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4027', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4028', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4029', '2026-09-30 12:32:29', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4030', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4031', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4032', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4033', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4034', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4035', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4036', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4037', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4038', '2026-09-30 12:32:31', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4039', '2026-09-30 12:33:03', '17', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4040', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4041', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4042', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4043', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4044', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4045', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4046', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4047', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4048', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4049', '2026-09-30 12:46:44', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4050', '2026-09-30 13:14:44', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4051', '2026-09-30 13:14:44', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4052', '2026-09-30 13:14:44', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4053', '2026-09-30 13:14:44', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4054', '2026-09-30 13:18:11', '11', 'editveh: ', '10');
INSERT INTO `vehicle_logs` VALUES ('4055', '2026-09-30 13:19:15', '11', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4056', '2026-09-30 13:20:47', '11', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4057', '2026-09-30 13:22:06', '11', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4058', '2026-09-30 13:23:54', '11', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4059', '2026-09-30 13:26:34', '11', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4060', '2026-09-30 13:26:38', '11', 'unflip', '10');
INSERT INTO `vehicle_logs` VALUES ('4061', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4062', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4063', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4064', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4065', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4066', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4067', '2026-09-30 13:29:19', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4068', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4069', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4070', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4071', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4072', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4073', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4074', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4075', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4076', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4077', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4078', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4079', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4080', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4081', '2026-09-30 13:29:26', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4082', '2026-09-30 13:29:35', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4083', '2026-09-30 13:29:35', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4084', '2026-09-30 13:29:35', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4085', '2026-09-30 13:29:35', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4086', '2026-09-30 13:29:36', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4087', '2026-09-30 13:29:36', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4088', '2026-09-30 13:29:36', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4089', '2026-09-30 13:29:36', '11', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4108', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4109', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4110', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4111', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4112', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4113', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4114', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4115', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4116', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4117', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4118', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4119', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4120', '2026-09-30 13:59:18', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4121', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4122', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4123', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4124', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4125', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4126', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4127', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4128', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4129', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4130', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4131', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4132', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4133', '2026-09-30 13:59:20', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4134', '2026-09-30 14:00:01', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4135', '2026-09-30 14:00:45', '12', 'getveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4138', '2026-09-30 18:35:02', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4139', '2026-09-30 18:35:02', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4140', '2026-09-30 18:35:02', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4141', '2026-09-30 18:35:02', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4142', '2026-09-30 18:35:02', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4143', '2026-09-30 18:46:10', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4144', '2026-09-30 18:46:10', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4145', '2026-09-30 18:46:10', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4146', '2026-09-30 18:46:10', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4147', '2026-09-30 18:50:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4148', '2026-09-30 18:50:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4149', '2026-09-30 18:50:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4150', '2026-09-30 18:50:33', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4151', '2026-09-30 18:50:41', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4152', '2026-09-30 18:50:41', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4153', '2026-09-30 18:50:41', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4154', '2026-09-30 18:50:41', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4155', '2026-09-30 18:50:41', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4156', '2026-09-30 19:48:31', '33', 'DONATEGUI Picador ($0 - to Alonee Alonee)', '6');
INSERT INTO `vehicle_logs` VALUES ('4157', '2026-10-01 01:39:28', '10', 'restoreveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4158', '2026-10-01 01:39:40', '10', 'getveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4162', '2026-10-01 02:39:58', '21', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4163', '2026-10-01 02:41:39', '21', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4165', '2026-10-01 03:38:12', '21', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4166', '2026-10-01 03:48:28', '34', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4167', '2026-10-01 03:48:47', '34', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4168', '2026-10-01 03:50:37', '34', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4169', '2026-10-01 03:58:48', '28', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4170', '2026-10-01 04:00:03', '28', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4171', '2026-10-01 06:31:55', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4173', '2026-10-01 08:09:22', '28', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4175', '2026-10-01 08:11:14', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4176', '2026-10-01 08:25:18', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4177', '2026-10-01 08:25:24', '12', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4178', '2026-10-01 08:25:47', '12', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4180', '2026-10-01 08:33:09', '-1', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4181', '2026-10-01 08:47:27', '36', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4182', '2026-10-01 08:55:43', '36', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4183', '2026-10-01 08:55:46', '36', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4186', '2026-10-01 09:51:17', '51', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4187', '2026-10-01 10:01:41', '16', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4188', '2026-10-01 10:01:54', '33', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4189', '2026-10-01 10:03:47', '16', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4190', '2026-10-01 10:04:45', '33', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4191', '2026-10-01 10:04:55', '33', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4192', '2026-10-01 10:04:57', '33', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4193', '2026-10-01 10:05:19', '16', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4194', '2026-10-01 10:05:20', '16', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4195', '2026-10-01 10:06:20', '16', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4200', '2026-10-01 10:11:38', '43', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4207', '2026-10-01 10:16:03', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4208', '2026-10-01 10:16:46', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4209', '2026-10-01 10:17:27', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4210', '2026-10-01 10:22:46', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4211', '2026-10-01 10:27:53', '35', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4212', '2026-10-01 10:27:59', '35', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4213', '2026-10-01 10:28:00', '35', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4214', '2026-10-01 10:52:10', '10', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4215', '2026-10-01 10:55:24', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4216', '2026-10-01 10:55:29', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4217', '2026-10-01 10:57:19', '34', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4218', '2026-10-01 10:57:20', '34', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4219', '2026-10-01 10:57:29', '34', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4220', '2026-10-01 10:57:35', '34', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4221', '2026-10-01 10:59:41', '16', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4222', '2026-10-01 11:01:34', '43', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4223', '2026-10-01 11:12:26', '35', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4224', '2026-10-01 11:14:27', '51', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4226', '2026-10-01 11:37:48', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4227', '2026-10-01 11:54:04', '16', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4228', '2026-10-01 11:57:09', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4229', '2026-10-01 12:10:16', '54', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4230', '2026-10-01 12:17:35', '66', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4231', '2026-10-01 12:24:36', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4232', '2026-10-01 12:24:55', '63', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4233', '2026-10-01 12:24:58', '68', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4234', '2026-10-01 12:25:23', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4235', '2026-10-01 12:25:24', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4236', '2026-10-01 12:25:32', '55', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4237', '2026-10-01 12:25:49', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4238', '2026-10-01 12:25:52', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4239', '2026-10-01 12:25:54', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4240', '2026-10-01 12:26:05', '80', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4241', '2026-10-01 12:26:09', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4242', '2026-10-01 12:26:12', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4243', '2026-10-01 12:26:35', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4244', '2026-10-01 12:26:36', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4245', '2026-10-01 12:27:34', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4246', '2026-10-01 12:27:36', '77', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4247', '2026-10-01 12:27:37', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4248', '2026-10-01 12:27:39', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4249', '2026-10-01 12:27:42', '77', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4250', '2026-10-01 12:27:46', '80', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4251', '2026-10-01 12:28:04', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4252', '2026-10-01 12:29:48', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4253', '2026-10-01 12:41:56', '75', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4254', '2026-10-01 13:17:53', '80', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4255', '2026-10-01 13:17:58', '80', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4256', '2026-10-01 13:18:25', '75', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4257', '2026-10-01 13:24:11', '74', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4258', '2026-10-01 13:24:25', '74', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4259', '2026-10-01 13:24:29', '74', 'unflip', '6');
INSERT INTO `vehicle_logs` VALUES ('4260', '2026-10-01 13:24:53', '74', 'fixveh', '6');
INSERT INTO `vehicle_logs` VALUES ('4262', '2026-10-01 13:30:47', '77', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4263', '2026-10-01 13:30:58', '77', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4264', '2026-10-01 13:34:02', '71', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4265', '2026-10-01 13:34:03', '71', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4266', '2026-10-01 13:34:04', '71', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4269', '2026-10-01 14:12:30', '16', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4272', '2026-10-01 14:16:58', '60', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4273', '2026-10-01 14:17:18', '61', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4274', '2026-10-01 14:17:59', '56', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4275', '2026-10-01 14:18:43', '35', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4276', '2026-10-01 14:18:45', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4277', '2026-10-01 14:21:21', '35', 'Started engine', '21');
INSERT INTO `vehicle_logs` VALUES ('4278', '2026-10-01 14:21:31', '77', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4279', '2026-10-01 14:22:00', '77', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4280', '2026-10-01 14:22:40', '53', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4281', '2026-10-01 14:22:47', '70', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4282', '2026-10-01 14:23:43', '18', 'BOUGHT FROM SHOP ($2)', '5');
INSERT INTO `vehicle_logs` VALUES ('4284', '2026-10-01 14:29:34', '20', 'BOUGHT FROM SHOP ($2)', '5');
INSERT INTO `vehicle_logs` VALUES ('4286', '2026-10-01 14:33:37', '39', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4287', '2026-10-01 14:38:25', '38', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4288', '2026-10-01 14:40:48', '33', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4289', '2026-10-01 14:40:49', '33', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4290', '2026-10-01 14:50:34', '22', 'BOUGHT FROM SHOP ($2)', '13');
INSERT INTO `vehicle_logs` VALUES ('4291', '2026-10-01 14:50:51', '22', 'Started engine', '13');
INSERT INTO `vehicle_logs` VALUES ('4292', '2026-10-01 14:55:27', '67', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4293', '2026-10-01 15:02:45', '24', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4294', '2026-10-01 15:21:22', '25', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4295', '2026-10-01 15:21:31', '25', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4296', '2026-10-01 15:21:48', '30', 'Started engine', '21');
INSERT INTO `vehicle_logs` VALUES ('4297', '2026-10-01 15:25:21', '72', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4298', '2026-10-01 15:33:02', '22', 'Started engine', '13');
INSERT INTO `vehicle_logs` VALUES ('4299', '2026-10-01 15:39:15', '55', 'Started engine', '8');
INSERT INTO `vehicle_logs` VALUES ('4300', '2026-10-01 15:43:07', '8', 'Started engine', '21');
INSERT INTO `vehicle_logs` VALUES ('4301', '2026-10-01 15:44:40', '8', 'Started engine', '21');
INSERT INTO `vehicle_logs` VALUES ('4302', '2026-10-01 15:46:28', '9', 'Started engine', '21');
INSERT INTO `vehicle_logs` VALUES ('4303', '2026-10-01 15:54:42', '9', 'Started engine', '13');
INSERT INTO `vehicle_logs` VALUES ('4304', '2026-10-01 15:55:16', '9', 'Started engine', '13');
INSERT INTO `vehicle_logs` VALUES ('4305', '2026-10-01 16:28:58', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4306', '2026-10-01 16:29:49', '35', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4307', '2026-10-01 16:38:27', '40', 'Started engine', '23');
INSERT INTO `vehicle_logs` VALUES ('4308', '2026-10-01 16:41:44', '40', 'editveh: ', '23');
INSERT INTO `vehicle_logs` VALUES ('4309', '2026-10-01 16:50:39', '40', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4310', '2026-10-01 16:53:26', '40', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4311', '2026-10-01 16:54:07', '40', 'editveh (handling) reset: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4312', '2026-10-01 16:59:00', '41', 'Started engine', '23');
INSERT INTO `vehicle_logs` VALUES ('4313', '2026-10-01 17:02:02', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4314', '2026-10-01 17:02:03', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4315', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4316', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4317', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4318', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4319', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4320', '2026-10-01 17:02:04', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4321', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4322', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4323', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4324', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4325', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4326', '2026-10-01 17:02:05', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4327', '2026-10-01 17:02:06', '41', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4328', '2026-10-01 17:09:46', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4329', '2026-10-01 17:10:20', '50', 'Started engine', '23');
INSERT INTO `vehicle_logs` VALUES ('4330', '2026-10-01 17:10:40', '50', 'editveh: ', '23');
INSERT INTO `vehicle_logs` VALUES ('4331', '2026-10-01 17:21:41', '67', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4332', '2026-10-01 17:22:08', '67', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4333', '2026-10-01 17:22:27', '63', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4334', '2026-10-01 17:22:39', '63', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4335', '2026-10-01 19:33:30', '58', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4336', '2026-10-01 19:33:53', '57', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4337', '2026-10-01 19:34:32', '35', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4339', '2026-10-01 19:35:34', '10', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4340', '2026-10-01 19:35:58', '12', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4341', '2026-10-01 19:36:23', '16', 'editveh: ', '5');
INSERT INTO `vehicle_logs` VALUES ('4342', '2026-10-01 19:58:21', '29', 'BOUGHT FROM SHOP ($2)', '5');
INSERT INTO `vehicle_logs` VALUES ('4343', '2026-10-01 20:19:35', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4344', '2026-10-01 20:27:34', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4345', '2026-10-01 20:31:19', '73', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4346', '2026-10-01 20:31:30', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4347', '2026-10-01 20:32:16', '58', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4348', '2026-10-01 20:36:40', '52', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4349', '2026-10-01 20:36:59', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4350', '2026-10-01 20:39:01', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4351', '2026-10-01 20:39:18', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4352', '2026-10-01 20:39:50', '58', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4353', '2026-10-01 20:47:28', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4354', '2026-10-01 20:48:54', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4355', '2026-10-01 20:49:09', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4356', '2026-10-01 20:49:27', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4357', '2026-10-01 20:52:50', '22', 'getveh', '13');
INSERT INTO `vehicle_logs` VALUES ('4358', '2026-10-01 20:54:04', '22', 'gotoveh', '13');
INSERT INTO `vehicle_logs` VALUES ('4359', '2026-10-01 20:56:44', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4360', '2026-10-01 21:11:45', '52', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4361', '2026-10-01 21:11:55', '52', 'fixveh', '20');
INSERT INTO `vehicle_logs` VALUES ('4362', '2026-10-01 21:12:35', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4363', '2026-10-01 21:13:18', '52', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4364', '2026-10-01 21:13:58', '52', 'delveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4365', '2026-10-01 21:20:47', '82', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4366', '2026-10-01 21:21:48', '14', 'fuelveh', '13');
INSERT INTO `vehicle_logs` VALUES ('4367', '2026-10-01 21:21:49', '14', 'Started engine', '13');
INSERT INTO `vehicle_logs` VALUES ('4368', '2026-10-01 21:29:42', '58', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4369', '2026-10-01 21:57:25', '52', 'editveh (handling): ', '10');
INSERT INTO `vehicle_logs` VALUES ('4370', '2026-10-01 22:19:03', '58', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4371', '2026-10-01 22:41:34', '70', 'editveh (handling): ', '5');
INSERT INTO `vehicle_logs` VALUES ('4372', '2026-10-01 22:45:12', '70', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4373', '2026-10-01 22:51:36', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4374', '2026-10-01 22:52:24', '70', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4375', '2026-10-01 22:52:43', '70', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4376', '2026-10-01 22:59:43', '58', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4377', '2026-10-01 23:00:14', '58', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4378', '2026-10-01 23:00:43', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4379', '2026-10-01 23:01:21', '58', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4380', '2026-10-01 23:03:10', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4381', '2026-10-01 23:03:37', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4382', '2026-10-01 23:03:46', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4383', '2026-10-01 23:03:46', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4384', '2026-10-01 23:03:51', '58', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4385', '2026-10-01 23:04:00', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4386', '2026-10-01 23:04:04', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4387', '2026-10-01 23:04:43', '58', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4388', '2026-10-01 23:19:48', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4389', '2026-10-01 23:33:07', '52', 'editveh (handling reset)', '10');
INSERT INTO `vehicle_logs` VALUES ('4390', '2026-10-01 23:34:41', '52', 'editveh (handling saved)', '10');
INSERT INTO `vehicle_logs` VALUES ('4391', '2026-10-01 23:36:36', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4392', '2026-10-01 23:36:37', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4393', '2026-10-01 23:37:53', '58', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4394', '2026-10-01 23:38:27', '58', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4395', '2026-10-01 23:44:56', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4396', '2026-10-01 23:45:23', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4397', '2026-10-01 23:46:39', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4398', '2026-10-01 23:46:40', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4399', '2026-10-01 23:48:25', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4400', '2026-10-01 23:48:26', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4401', '2026-10-01 23:49:48', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4402', '2026-10-01 23:52:37', '52', 'fuelveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4403', '2026-10-01 23:53:49', '52', 'fuelveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4404', '2026-10-01 23:53:55', '52', 'fuelveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4405', '2026-10-01 23:53:55', '52', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4406', '2026-10-02 02:58:59', '17', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4407', '2026-10-02 03:06:47', '69', 'Started engine', '6');
INSERT INTO `vehicle_logs` VALUES ('4408', '2026-10-02 07:13:22', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4409', '2026-10-02 07:13:24', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4410', '2026-10-02 08:43:27', '57', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4411', '2026-10-02 08:44:44', '57', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4412', '2026-10-02 08:45:36', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4413', '2026-10-02 09:06:15', '86', 'Started engine', '26');
INSERT INTO `vehicle_logs` VALUES ('4414', '2026-10-02 09:15:12', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4415', '2026-10-02 09:16:43', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4416', '2026-10-02 09:16:55', '86', 'fixveh', '26');
INSERT INTO `vehicle_logs` VALUES ('4417', '2026-10-02 09:17:18', '58', 'fixveh', '26');
INSERT INTO `vehicle_logs` VALUES ('4418', '2026-10-02 09:17:35', '58', 'unflip', '26');
INSERT INTO `vehicle_logs` VALUES ('4419', '2026-10-02 09:17:51', '58', 'unflip', '26');
INSERT INTO `vehicle_logs` VALUES ('4420', '2026-10-02 09:17:57', '58', 'fixveh', '26');
INSERT INTO `vehicle_logs` VALUES ('4421', '2026-10-02 09:17:59', '58', 'Started engine', '26');
INSERT INTO `vehicle_logs` VALUES ('4422', '2026-10-02 09:18:13', '58', 'fixveh', '26');
INSERT INTO `vehicle_logs` VALUES ('4423', '2026-10-02 09:18:15', '58', 'Started engine', '26');
INSERT INTO `vehicle_logs` VALUES ('4424', '2026-10-02 09:22:25', '67', 'fixveh', '26');
INSERT INTO `vehicle_logs` VALUES ('4425', '2026-10-02 09:31:22', '88', 'BOUGHT FROM SHOP ($100001)', '2');
INSERT INTO `vehicle_logs` VALUES ('4426', '2026-10-02 09:31:33', '89', 'BOUGHT FROM SHOP ($2)', '2');
INSERT INTO `vehicle_logs` VALUES ('4427', '2026-10-02 09:34:52', '90', 'BOUGHT FROM SHOP ($250001)', '2');
INSERT INTO `vehicle_logs` VALUES ('4428', '2026-10-02 09:57:59', '70', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4429', '2026-10-02 09:58:42', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4430', '2026-10-02 09:59:30', '70', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4431', '2026-10-02 10:06:33', '87', 'editveh (handling saved)', '25');
INSERT INTO `vehicle_logs` VALUES ('4432', '2026-10-02 10:06:38', '87', 'editveh (handling saved)', '25');
INSERT INTO `vehicle_logs` VALUES ('4433', '2026-10-02 10:06:49', '87', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4434', '2026-10-02 10:07:08', '87', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4435', '2026-10-02 10:07:24', '87', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4436', '2026-10-02 10:07:27', '87', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4437', '2026-10-02 10:12:26', '70', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4438', '2026-10-02 10:15:46', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4439', '2026-10-02 10:15:50', '70', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4440', '2026-10-02 10:17:44', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4441', '2026-10-02 10:17:47', '70', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4442', '2026-10-02 10:19:45', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4443', '2026-10-02 10:20:05', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4444', '2026-10-02 10:20:10', '70', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4445', '2026-10-02 10:20:27', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4446', '2026-10-02 10:20:29', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4447', '2026-10-02 10:20:55', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4448', '2026-10-02 10:21:31', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4449', '2026-10-02 10:21:46', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4450', '2026-10-02 10:21:50', '70', 'fixveh', '25');
INSERT INTO `vehicle_logs` VALUES ('4451', '2026-10-02 10:21:51', '70', 'Started engine', '25');
INSERT INTO `vehicle_logs` VALUES ('4452', '2026-10-02 10:22:30', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4453', '2026-10-02 10:29:04', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4454', '2026-10-02 10:29:06', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4455', '2026-10-02 10:30:00', '70', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4456', '2026-10-02 10:30:03', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4457', '2026-10-02 10:30:14', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4458', '2026-10-02 10:30:19', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4459', '2026-10-02 10:30:22', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4460', '2026-10-02 10:31:38', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4461', '2026-10-02 10:35:45', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4463', '2026-10-02 12:31:27', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4464', '2026-10-02 12:31:44', '70', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4465', '2026-10-02 12:31:45', '70', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4466', '2026-10-02 14:22:27', '35', 'editveh (handling saved)', '5');
INSERT INTO `vehicle_logs` VALUES ('4467', '2026-10-02 15:36:24', '58', 'fuelveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4468', '2026-10-02 15:41:56', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4469', '2026-10-02 18:29:31', '90', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4470', '2026-10-02 18:32:45', '70', 'unflip', '2');
INSERT INTO `vehicle_logs` VALUES ('4471', '2026-10-02 18:34:24', '70', 'unflip', '2');
INSERT INTO `vehicle_logs` VALUES ('4472', '2026-10-02 18:34:26', '70', 'unflip', '2');
INSERT INTO `vehicle_logs` VALUES ('4473', '2026-10-02 18:46:19', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4474', '2026-10-02 18:47:21', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4475', '2026-10-02 18:56:16', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4476', '2026-10-02 19:00:44', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4477', '2026-10-02 19:02:51', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4478', '2026-10-02 19:03:04', '58', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4479', '2026-10-02 19:03:08', '58', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4480', '2026-10-02 20:25:19', '8', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('4481', '2026-10-02 20:30:50', '93', 'Started engine', '27');
INSERT INTO `vehicle_logs` VALUES ('4482', '2026-10-02 20:39:35', '93', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4483', '2026-10-02 20:43:06', '94', 'BOUGHT FROM SHOP ($2)', '27');
INSERT INTO `vehicle_logs` VALUES ('4484', '2026-10-02 20:51:49', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4485', '2026-10-02 20:52:19', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4486', '2026-10-02 20:53:19', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4487', '2026-10-02 20:54:42', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4488', '2026-10-02 20:54:43', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4489', '2026-10-02 20:55:43', '52', 'enterveh Loay Mostafa', '10');
INSERT INTO `vehicle_logs` VALUES ('4490', '2026-10-02 20:56:43', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4491', '2026-10-02 20:56:44', '52', 'Started engine', '4');
INSERT INTO `vehicle_logs` VALUES ('4492', '2026-10-02 20:57:00', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4493', '2026-10-02 20:57:44', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4494', '2026-10-02 20:58:14', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4495', '2026-10-02 20:58:41', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4496', '2026-10-02 20:58:42', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4497', '2026-10-02 20:58:53', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4498', '2026-10-02 20:58:53', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4499', '2026-10-02 20:58:53', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4500', '2026-10-02 20:58:56', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4501', '2026-10-02 20:58:56', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4502', '2026-10-02 20:58:59', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4503', '2026-10-02 20:59:11', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4504', '2026-10-02 20:59:15', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4505', '2026-10-02 20:59:18', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4506', '2026-10-02 21:00:25', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4507', '2026-10-02 21:00:59', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4508', '2026-10-02 21:01:15', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4509', '2026-10-02 21:01:17', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4510', '2026-10-02 21:01:23', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4511', '2026-10-02 21:01:56', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4512', '2026-10-02 21:01:57', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4513', '2026-10-02 21:02:11', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4514', '2026-10-02 21:02:14', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4515', '2026-10-02 21:02:30', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4516', '2026-10-02 21:03:32', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4517', '2026-10-02 21:03:44', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4518', '2026-10-02 21:03:58', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4519', '2026-10-02 21:04:07', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4520', '2026-10-02 21:04:15', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4521', '2026-10-02 21:04:16', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4522', '2026-10-02 21:04:43', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4523', '2026-10-02 21:05:07', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4524', '2026-10-02 21:05:08', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4525', '2026-10-02 21:05:38', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4526', '2026-10-02 21:05:39', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4527', '2026-10-02 21:06:36', '52', 'fixveh', '4');
INSERT INTO `vehicle_logs` VALUES ('4528', '2026-10-02 21:06:38', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4529', '2026-10-02 21:06:41', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4530', '2026-10-02 21:07:04', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4531', '2026-10-02 21:08:01', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4532', '2026-10-02 21:09:44', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4533', '2026-10-02 21:09:46', '8', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4534', '2026-10-02 21:10:06', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4535', '2026-10-02 21:10:38', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4536', '2026-10-02 21:10:38', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4537', '2026-10-02 21:10:50', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4538', '2026-10-02 21:12:35', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4539', '2026-10-02 21:12:37', '8', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4540', '2026-10-02 21:13:35', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4541', '2026-10-02 21:14:34', '8', 'getveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4542', '2026-10-02 21:14:42', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4543', '2026-10-02 21:15:18', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4544', '2026-10-02 21:16:55', '98', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4545', '2026-10-02 21:17:23', '98', 'create unique veh properties', '10');
INSERT INTO `vehicle_logs` VALUES ('4546', '2026-10-02 21:18:10', '98', 'editveh (handling saved)', '10');
INSERT INTO `vehicle_logs` VALUES ('4547', '2026-10-02 21:18:59', '8', 'getveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4548', '2026-10-02 21:41:43', '8', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4549', '2026-10-02 21:41:49', '8', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4550', '2026-10-02 21:43:18', '8', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4551', '2026-10-02 22:41:35', '92', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4552', '2026-10-02 22:41:58', '70', 'Started engine', '5');
INSERT INTO `vehicle_logs` VALUES ('4553', '2026-10-02 22:48:22', '14', 'fuelveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4554', '2026-10-02 22:48:49', '14', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4555', '2026-10-02 22:50:10', '98', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4556', '2026-10-02 22:50:12', '98', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4557', '2026-10-02 22:50:51', '98', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4558', '2026-10-02 22:52:59', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4559', '2026-10-02 22:53:01', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4560', '2026-10-02 22:55:02', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4561', '2026-10-02 22:57:10', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4562', '2026-10-02 22:57:19', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4563', '2026-10-02 22:59:46', '52', 'fixveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4564', '2026-10-02 23:01:01', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4565', '2026-10-02 23:06:04', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4566', '2026-10-02 23:08:06', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4567', '2026-10-02 23:09:08', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4568', '2026-10-02 23:12:59', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4569', '2026-10-02 23:14:14', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4570', '2026-10-02 23:16:50', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4571', '2026-10-02 23:22:19', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4572', '2026-10-02 23:32:07', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4573', '2026-10-02 23:33:26', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4574', '2026-10-02 23:34:14', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4575', '2026-10-02 23:36:07', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4576', '2026-10-02 23:37:30', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4577', '2026-10-02 23:38:35', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4578', '2026-10-02 23:40:40', '52', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4579', '2026-10-02 23:40:41', '52', 'fixveh', '5');
INSERT INTO `vehicle_logs` VALUES ('4580', '2026-10-02 23:40:50', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4581', '2026-10-02 23:41:08', '113', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4582', '2026-10-02 23:41:52', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4583', '2026-10-02 23:43:13', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4584', '2026-10-02 23:44:06', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4585', '2026-10-02 23:48:39', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4586', '2026-10-02 23:55:04', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4587', '2026-10-02 23:55:09', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4588', '2026-10-02 23:56:25', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4589', '2026-10-02 23:58:46', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4590', '2026-10-03 00:00:27', '52', 'fixveh', '10');
INSERT INTO `vehicle_logs` VALUES ('4591', '2026-10-03 00:02:54', '52', 'Started engine', '10');
INSERT INTO `vehicle_logs` VALUES ('4592', '2026-10-03 01:39:39', '181', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4593', '2026-10-03 01:42:24', '187', 'Started engine', '2');
INSERT INTO `vehicle_logs` VALUES ('4594', '2026-10-03 01:45:56', '58', 'unflip', '5');
INSERT INTO `vehicle_logs` VALUES ('4595', '2026-10-03 01:52:04', '58', 'getveh', '2');
INSERT INTO `vehicle_logs` VALUES ('4596', '2026-10-03 01:52:44', '58', 'unflip', '2');
INSERT INTO `vehicle_logs` VALUES ('4597', '2026-10-03 02:00:09', '58', 'getveh', '2');

-- ----------------------------
-- Table structure for vehicle_notes
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_notes`;
CREATE TABLE `vehicle_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehicle_notes
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) DEFAULT '0',
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotx` decimal(10,6) DEFAULT '0.000000',
  `roty` decimal(10,6) DEFAULT '0.000000',
  `rotz` decimal(10,6) DEFAULT '0.000000',
  `currx` decimal(10,6) DEFAULT '0.000000',
  `curry` decimal(10,6) DEFAULT '0.000000',
  `currz` decimal(10,6) DEFAULT '0.000000',
  `currrx` decimal(10,6) DEFAULT '0.000000',
  `currry` decimal(10,6) DEFAULT '0.000000',
  `currrz` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `fuel` int(11) DEFAULT '100',
  `engine` int(11) DEFAULT '0',
  `locked` int(11) DEFAULT '0',
  `lights` int(11) DEFAULT '0',
  `sirens` int(11) DEFAULT '0',
  `paintjob` int(11) DEFAULT '0',
  `hp` float DEFAULT '1000',
  `color1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `color2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `color3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate` mediumtext COLLATE utf8mb4_unicode_ci,
  `faction` int(11) DEFAULT '-1',
  `owner` int(11) DEFAULT '-1',
  `job` int(11) DEFAULT '-1',
  `tintedwindows` int(11) DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `currdimension` int(11) DEFAULT '0',
  `currinterior` int(11) DEFAULT '0',
  `enginebroke` int(11) DEFAULT '0',
  `items` mediumtext COLLATE utf8mb4_unicode_ci,
  `itemvalues` mediumtext COLLATE utf8mb4_unicode_ci,
  `Impounded` int(11) DEFAULT '0',
  `handbrake` int(11) DEFAULT '0',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `upgrades` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(11) DEFAULT '0',
  `headlights` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(11) DEFAULT NULL,
  `variant2` int(11) DEFAULT NULL,
  `description1` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description2` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description3` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description4` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description5` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `suspensionLowerLimit` float DEFAULT NULL,
  `driveType` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `chopped` tinyint(4) NOT NULL DEFAULT '0',
  `stolen` tinyint(4) NOT NULL DEFAULT '0',
  `lastUsed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creationDate` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `trackingdevice` mediumtext COLLATE utf8mb4_unicode_ci,
  `registered` int(11) NOT NULL DEFAULT '1',
  `show_plate` int(11) NOT NULL DEFAULT '1',
  `show_vin` int(11) NOT NULL DEFAULT '1',
  `paintjob_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_shop_id` int(11) NOT NULL DEFAULT '0',
  `bulletproof` tinyint(4) NOT NULL DEFAULT '0',
  `textures` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[ [ ] ]',
  `business` int(11) NOT NULL DEFAULT '-1',
  `protected_until` datetime DEFAULT NULL,
  `new_fuel` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('1', '545', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1842.667969', '-1930.531250', '13.484910', '359.835205', '359.890137', '83.540039', '100', '1', '0', '1', '0', '0', '1000', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '34 JB 6469', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-09-28 20:38:41', '2026-07-10 07:26:52', '1', null, '1', '1', '1', null, '249', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('2', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1778.748047', '-1688.023438', '13.502965', '358.478394', '0.010986', '39.951782', '100', '1', '0', '1', '0', '0', '700', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '34 NH 8883', '-1', '3', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 17:45:05', '2026-07-10 07:27:01', '1', null, '1', '1', '1', null, '40', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('3', '400', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1795.557617', '-1732.722656', '13.123285', '0.906372', '0.000000', '261.787720', '100', '1', '0', '1', '0', '0', '980.5', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 WF 8016', '-1', '3', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 17:52:09', '2026-07-10 07:31:23', '1', null, '1', '1', '1', null, '772', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('4', '602', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '2132.625000', '-1541.476563', '2.107441', '359.846191', '359.967041', '11.101685', '100', '1', '0', '1', '0', '0', '688', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 ZP 4531', '-1', '3', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 13:16:50', '2026-07-10 07:31:40', '1', null, '1', '1', '1', null, '175', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('5', '540', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1896.863281', '-1538.672852', '3.394187', '169.183960', '0.521851', '299.542236', '100', '0', '0', '1', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 VA 4382', '-1', '3', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 0, 3, 2, 0, 0 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 18:30:35', '2026-07-10 07:33:04', '1', null, '1', '1', '1', null, '628', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('6', '490', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1024.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 0, 0, 255 ] ]', '[ [ 255, 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 HW 7540', '-1', '3', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 13:14:44', '2026-07-10 13:14:44', '1', null, '1', '1', '1', null, '102', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('7', '451', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1332.842773', '-1571.306641', '12.973608', '0.560303', '359.824219', '74.932251', '100', '0', '0', '1', '0', '0', '959.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '34 WA 3207', '-1', '3', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-07-10 20:57:17', '2026-07-10 17:55:13', '1', null, '1', '1', '1', null, '1011', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('8', '451', '1803.088558', '-1175.891421', '23.638927', '0.000000', '0.000000', '142.579987', '1088.979492', '-1383.894531', '13.439433', '180.010986', '0.016479', '154.682007', '100', '0', '0', '1', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FB1 6616', '-1', '10', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 21:43:22', '2026-09-30 09:14:52', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '45');
INSERT INTO `vehicles` VALUES ('9', '451', '706.244740', '-1410.404903', '13.380985', '0.000000', '0.000000', '321.637909', '1825.780273', '-1582.651367', '13.228389', '0.538330', '359.890137', '328.656006', '100', '1', '0', '1', '0', '0', '1000', '[[255,0,192]]', '[[248,0,198]]', '[[246,0,191]]', '[[255,14,218]]', 'VQ3 9424', '-1', '9', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 15:55:16', '2026-09-29 01:11:28', '5', null, '1', '1', '1', null, '982', '0', '[ [ ] ]', '-1', null, '77');
INSERT INTO `vehicles` VALUES ('10', '506', '1307.279605', '-1384.868077', '13.178798', '0.000000', '0.000000', '117.582428', '637.002930', '-1189.543945', '18.150949', '356.764526', '0.697632', '222.055664', '100', '0', '0', '1', '0', '0', '1000', '[[245,245,245]]', '[[42,119,161]]', '[[0,0,0]]', '[[0,0,0]]', 'EC6 2708', '-1', '7', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 13:17:01', '2026-09-28 21:48:52', '5', null, '1', '1', '1', null, '291', '0', '[ [ ] ]', '-1', null, '78');
INSERT INTO `vehicles` VALUES ('11', '541', '1351.965764', '-1387.413352', '13.415028', '0.000000', '0.000000', '80.841370', '1181.831055', '-1402.479492', '13.050902', '359.143066', '0.219727', '324.964600', '100', '1', '0', '1', '0', '0', '727.5', '[[105,30,59]]', '[[245,245,245]]', '[[0,0,0]]', '[[0,0,0]]', 'IB6 5806', '-1', '12', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 1, 0, 0, 0, 2, 3 ] ]', '[ [ 2, 1, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '10', '0', '0', '2026-09-30 10:32:52', '2026-09-28 21:55:31', '5', null, '1', '1', '1', null, '1003', '0', '[ [ ] ]', '-1', null, '93');
INSERT INTO `vehicles` VALUES ('12', '451', '1213.154289', '-1404.270019', '13.247668', '0.000000', '0.000000', '42.811615', '1781.882813', '-1678.984375', '13.312308', '0.593262', '359.725342', '24.038086', '100', '1', '0', '1', '0', '0', '892', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'MK2 5678', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 3, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 3 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 19:35:58', '2026-09-28 23:46:22', '5', null, '1', '1', '1', null, '982', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('13', '507', '1212.495117', '-1405.983159', '13.287384', '0.000000', '0.000000', '0.002747', '1779.437500', '-1692.333984', '13.480305', '359.708862', '0.197754', '86.292114', '100', '1', '0', '1', '0', '0', '723.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'CS0 6034', '-1', '8', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 2, 2, 3 ] ]', '[ [ 1, 0, 0, 0, 2, 2 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:40:47', '2026-09-28 23:49:53', '5', null, '1', '1', '1', null, '987', '0', '[ [ ] ]', '-1', null, '91');
INSERT INTO `vehicles` VALUES ('14', '522', '827.010649', '-1634.079346', '13.390608', '0.000000', '0.000000', '276.582275', '619.686523', '-1410.000977', '12.917539', '357.742310', '359.637451', '252.773438', '100', '1', '0', '1', '0', '0', '763', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'GP0 6846', '-1', '16', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '4', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 22:49:28', '2026-09-29 00:02:23', '5', null, '1', '1', '1', null, '720', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('15', '522', '1217.220670', '-1439.840455', '13.753125', '0.000000', '0.000000', '204.714127', '1780.983398', '-1702.406250', '13.502027', '38.007202', '14.842529', '155.538940', '100', '1', '0', '1', '0', '0', '1000', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'UP8 4354', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '3', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:40:21', '2026-09-29 00:03:33', '5', null, '1', '1', '1', null, '720', '0', '[ [ ] ]', '-1', null, '60');
INSERT INTO `vehicles` VALUES ('16', '541', '1842.146586', '-1669.835745', '13.578125', '0.000000', '0.000000', '216.909119', '1780.007813', '-1690.866211', '13.251683', '359.154053', '359.884644', '84.830933', '100', '1', '0', '1', '0', '0', '860.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'IO0 7638', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 19:36:23', '2026-09-29 04:32:15', '5', null, '1', '1', '1', null, '431', '0', '[ [ ] ]', '-1', null, '93');
INSERT INTO `vehicles` VALUES ('17', '489', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1233.886719', '-1435.666016', '14.066319', '357.841187', '0.049438', '269.884644', '100', '1', '0', '2', '0', '0', '845', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 LT 7661', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 3, 1 ] ]', '[ [ 2, 2, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-02 02:58:59', '2026-09-29 04:34:49', '5', null, '1', '1', '1', null, '180', '0', '[ [ ] ]', '-1', null, '97');
INSERT INTO `vehicles` VALUES ('18', '588', '1898.746094', '-1712.831055', '23.179688', '0.000000', '0.000000', '270.000000', '1898.746094', '-1712.831055', '23.179688', '0.000000', '0.000000', '270.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 255, 255, 255 ] ]', '[ [ 255, 255, 255, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 QP 7208', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '0', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 14:23:43', '2026-10-01 14:23:43', '5', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('19', '604', '664.809006', '-1404.303438', '13.409760', '0.000000', '0.000000', '94.195496', '1224.363281', '-1437.279297', '13.555858', '0.131836', '0.010986', '342.691040', '100', '1', '0', '1', '0', '0', '944.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'ME3 5954', '-1', '10', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 2 ] ]', '[ [ 0, 0, 0, 0, 0, 1 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-09-30 09:05:23', '2026-09-29 06:59:36', '5', null, '1', '1', '1', null, '1020', '0', '[ [ ] ]', '-1', null, '96');
INSERT INTO `vehicles` VALUES ('20', '588', '1898.746094', '-1712.831055', '23.179688', '0.000000', '0.000000', '270.000000', '1898.746094', '-1712.831055', '23.179688', '0.000000', '0.000000', '270.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 255, 255, 255 ] ]', '[ [ 255, 255, 255, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 VH 4140', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '0', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 14:29:34', '2026-10-01 14:29:34', '5', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('21', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '959.273438', '-1395.649414', '12.913873', '358.225708', '1.840210', '65.868530', '100', '1', '0', '2', '0', '0', '999.5', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 ZQ 8149', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 03:38:12', '2026-09-29 04:37:15', '5', null, '1', '1', '1', null, '823', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('22', '419', '1898.746094', '-1712.831055', '23.179688', '0.000000', '0.000000', '270.000000', '1632.297852', '-1033.355469', '23.693007', '359.428711', '0.038452', '91.466675', '100', '0', '0', '1', '0', '0', '656', '[[20,80,220]]', '[[20,80,220]]', '[[0,0,0]]', '[[0,0,0]]', '34 XW 1374', '-1', '15', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 1, 2, 1 ] ]', '[ [ 1, 1, 0, 0, 1, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '13', '0', '0', '2026-10-02 18:55:48', '2026-10-01 14:50:34', '13', null, '1', '1', '1', null, '1050', '0', '[ [ ] ]', '-1', null, '0');
INSERT INTO `vehicles` VALUES ('23', '600', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1214.534180', '-1447.530273', '13.708693', '358.632202', '1.043701', '104.133911', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 RU 8261', '-1', '19', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '0', '255', '', '', '', '', '', null, null, '18', '0', '0', '2026-09-30 00:40:52', '2026-09-29 23:13:13', '18', null, '1', '1', '1', null, '1026', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('24', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '100', '1', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 TX 9702', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 15:02:45', '2026-10-01 15:00:22', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('25', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1314.318359', '-895.033203', '39.157963', '359.038696', '0.137329', '171.688843', '100', '1', '0', '1', '0', '0', '845', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 II 1522', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 2, 2 ] ]', '[ [ 2, 0, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 15:31:25', '2026-10-01 15:02:09', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '94');
INSERT INTO `vehicles` VALUES ('26', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1024.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 WY 2811', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-29 05:10:49', '2026-09-29 05:10:49', '7', null, '1', '1', '1', null, '823', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('27', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1224.043945', '-1447.098633', '13.631217', '358.764038', '359.890137', '180.010986', '100', '1', '0', '1', '0', '0', '939', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 SX 6859', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-30 06:18:04', '2026-09-29 05:10:49', '7', null, '1', '1', '1', null, '823', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('28', '602', '631.183774', '-1718.678301', '13.942981', '0.000000', '0.000000', '98.749359', '1208.910156', '-1406.353516', '12.714272', '359.456177', '359.802246', '204.422607', '100', '1', '0', '2', '0', '0', '937.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'EW3 2725', '-1', '7', '-1', '1', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 08:09:22', '2026-09-30 02:11:04', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '97');
INSERT INTO `vehicles` VALUES ('29', '419', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 RO 1884', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 19:58:21', '2026-10-01 19:58:21', '5', null, '1', '1', '1', null, '1050', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('30', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1345.991211', '-1361.047852', '12.987713', '358.786011', '0.005493', '3.081665', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 SB 7009', '-1', '22', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 15:40:17', '2026-10-01 15:20:59', '21', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '94');
INSERT INTO `vehicles` VALUES ('31', '400', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1214.026367', '-1431.072266', '13.463819', '0.906372', '0.318604', '3.438721', '100', '1', '0', '1', '0', '0', '979', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 UF 5192', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 1 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-29 05:33:41', '2026-09-29 05:26:42', '7', null, '1', '1', '1', null, '272', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('32', '400', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1024.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 EJ 2389', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-29 05:26:42', '2026-09-29 05:26:42', '7', null, '1', '1', '1', null, '272', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('33', '600', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1823.347656', '-1909.247070', '13.313761', '358.555298', '0.626221', '179.967041', '100', '1', '0', '1', '0', '0', '997', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 DO 1128', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 3, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:42:59', '2026-09-30 19:48:31', '6', null, '1', '1', '1', null, '1026', '0', '[ [ ] ]', '-1', null, '95');
INSERT INTO `vehicles` VALUES ('34', '522', '1595.650965', '-1356.542635', '16.484400', '0.000000', '0.000000', '312.387268', '1234.214844', '-1469.250000', '13.330595', '358.939819', '0.000000', '305.364990', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WL4 7273', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '1', '3', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 10:57:35', '2026-10-01 03:48:21', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '20');
INSERT INTO `vehicles` VALUES ('35', '411', '1010.139789', '-1410.075656', '13.015625', '0.000000', '0.000000', '252.368042', '1810.124023', '2173.816406', '3.859599', '0.164795', '0.021973', '0.543823', '100', '1', '0', '2', '0', '0', '902', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'WF1 5978', '-1', '7', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 2 ] ]', '[ [ 1, 1, 0, 0, 0, 2 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 14:22:27', '2026-10-01 06:31:46', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '16');
INSERT INTO `vehicles` VALUES ('36', '588', '1245.604111', '-1440.197366', '13.753125', '0.000000', '0.000000', '18.668793', '1635.232422', '-1084.595703', '24.005322', '359.631958', '359.791260', '125.886841', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'GX4 1841', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 19:45:22', '2026-10-01 08:46:31', '5', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '78');
INSERT INTO `vehicles` VALUES ('37', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1791.887695', '-1673.635742', '13.277138', '359.176025', '0.000000', '269.313354', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 EJ 5043', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 16:37:36', '2026-10-01 16:35:39', '23', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('38', '400', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1772.005859', '-1683.025391', '13.422187', '359.873657', '359.851685', '146.722412', '100', '1', '0', '1', '0', '0', '999', '[[0,255,255]]', '[[0,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 CS 7170', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:38:36', '2026-09-29 05:34:07', '6', null, '1', '1', '1', null, '272', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('39', '405', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1795.413086', '-1706.151367', '13.477004', '0.115356', '359.989014', '233.898926', '100', '1', '0', '1', '0', '0', '1000', '[[0,255,255]]', '[[0,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 KH 1609', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:33:41', '2026-09-29 05:34:22', '6', null, '1', '1', '1', null, '794', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('40', '586', '1801.622365', '-1683.033392', '13.660439', '0.000000', '0.000000', '269.517975', '1360.918945', '-913.176758', '34.114662', '353.089600', '0.582275', '198.572388', '100', '1', '0', '2', '0', '0', '754', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '213', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 16:59:33', '2026-10-01 16:38:10', '23', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '87');
INSERT INTO `vehicles` VALUES ('41', '566', '1357.931853', '-926.602277', '34.187500', '0.000000', '0.000000', '154.126831', '2518.956055', '-2471.280273', '13.316234', '359.972534', '359.994507', '265.440674', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'EB2 3708', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 17:06:18', '2026-10-01 16:58:36', '23', null, '1', '1', '1', null, '1044', '0', '[ [ ] ]', '-1', null, '96');
INSERT INTO `vehicles` VALUES ('42', '426', '1800.123235', '-1688.376702', '13.660439', '0.000000', '0.000000', '266.672485', '1800.123235', '-1688.376702', '13.660439', '0.000000', '0.000000', '266.672485', '100', '0', '1', '0', '0', '0', '994.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FE8 7869', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 17:08:19', '2026-10-01 17:08:19', '23', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('43', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1769.094727', '-1675.298828', '13.494977', '0.697632', '0.131836', '152.072754', '100', '1', '0', '2', '0', '0', '883.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '34 IB 3646', '-1', '8', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:34:55', '2026-09-29 05:34:49', '6', null, '1', '1', '1', null, '823', '0', '[ [ ] ]', '-1', null, '97');
INSERT INTO `vehicles` VALUES ('44', '427', '1799.322525', '-1670.769941', '13.660439', '0.000000', '0.000000', '62.730164', '1799.204102', '-1669.868164', '13.747391', '0.027466', '359.978027', '79.617920', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'BY0 6089', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 17:09:12', '2026-10-01 17:08:55', '23', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('45', '579', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1024.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 0, 0, 0, 255 ] ]', '[ [ 0, 0, 0, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 CG 3883', '-1', '17', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-09-29 05:35:26', '2026-09-29 05:35:26', '16', null, '1', '1', '1', null, '823', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('46', '507', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '-2010.438477', '659.604492', '42.226551', '350.112305', '4.443970', '215.914307', '100', '1', '0', '1', '0', '0', '499', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 HP 1386', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 3, 0, 0, 1, 2, 3 ] ]', '[ [ 2, 3, 0, 0, 1, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-30 00:05:48', '2026-09-29 05:35:33', '7', null, '1', '1', '1', null, '502', '0', '[ [ ] ]', '-1', null, '80');
INSERT INTO `vehicles` VALUES ('47', '475', '1803.291907', '-1652.686316', '13.660439', '0.000000', '0.000000', '26.513184', '1803.291907', '-1652.686316', '13.660439', '0.000000', '0.000000', '26.513184', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WK4 4721', '-1', '23', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 17:09:17', '2026-10-01 17:09:17', '23', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('48', '400', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1024.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '100', '1', '1', '0', '0', '0', '958', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 VW 1575', '-1', '9', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 1, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '7', '0', '0', '2026-09-29 05:40:17', '2026-09-29 05:40:02', '7', null, '1', '1', '1', null, '272', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('49', '402', '1029.220703', '-894.512695', '42.194923', '0.000000', '0.000000', '180.000000', '1221.914063', '-1442.870117', '13.561140', '0.236206', '359.818726', '176.533813', '100', '1', '0', '1', '0', '0', '589', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '34 TL 6947', '-1', '10', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 1, 3, 2 ] ]', '[ [ 2, 2, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-09-30 09:04:57', '2026-09-29 06:16:38', '8', null, '1', '1', '1', null, '485', '0', '[ [ ] ]', '-1', null, '88');
INSERT INTO `vehicles` VALUES ('50', '496', '1795.786578', '-1662.198612', '13.660439', '0.000000', '0.000000', '174.440796', '1801.800781', '-1696.413086', '13.243519', '0.401001', '0.357056', '0.313110', '100', '1', '0', '2', '0', '0', '704.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'YH0 6546', '-1', '23', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 2, 3 ] ]', '[ [ 0, 0, 0, 0, 0, 2 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 17:19:58', '2026-10-01 17:09:38', '23', null, '1', '1', '1', null, '1052', '0', '[ [ ] ]', '-1', null, '93');
INSERT INTO `vehicles` VALUES ('51', '588', '1214.310667', '-1463.817383', '13.760440', '0.000000', '0.000000', '270.001373', '1631.055664', '-1107.124023', '23.979055', '358.758545', '359.769287', '300.910034', '100', '1', '0', '1', '0', '0', '996.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'ME7 1440', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 11:14:32', '2026-10-01 09:27:56', '5', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '97');
INSERT INTO `vehicles` VALUES ('52', '496', '1829.947658', '-1550.458988', '13.575188', '0.000000', '0.000000', '330.740204', '859.647461', '-1400.166016', '12.649769', '1.027222', '1.873169', '90.802002', '100', '1', '0', '2', '1', '0', '957.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP QN 760', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '1', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:05:03', '2026-10-01 20:27:21', '10', null, '1', '1', '1', null, '1052', '0', '[ [ ] ]', '-1', null, '35');
INSERT INTO `vehicles` VALUES ('53', '467', '1209.970134', '-1404.777219', '13.143432', '0.000000', '0.000000', '258.593414', '2256.791016', '-1089.560547', '41.423481', '0.302124', '0.225220', '58.732910', '100', '1', '0', '1', '0', '0', '748.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'AU6 9896', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 2, 1 ] ]', '[ [ 0, 2, 2, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:23:27', '2026-10-01 12:09:48', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('54', '467', '1205.526067', '-1401.248680', '13.268713', '0.000000', '0.000000', '220.979630', '1203.000977', '-1403.675781', '13.164454', '0.659180', '359.994507', '277.794800', '100', '1', '0', '1', '0', '0', '993.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WZ5 3247', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 2 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 12:11:00', '2026-10-01 12:09:52', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('55', '402', '1139.925423', '-1408.416786', '13.529843', '0.000000', '0.000000', '189.860382', '1203.852539', '-1275.857422', '12.999712', '356.846924', '0.395508', '143.843994', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VI9 3899', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 15:41:55', '2026-10-01 12:12:51', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '98');
INSERT INTO `vehicles` VALUES ('56', '402', '1151.375501', '-1408.283988', '13.471775', '0.000000', '0.000000', '201.780716', '1848.695313', '-1391.985352', '12.935930', '0.505371', '0.000000', '182.274170', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FH4 4746', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:19:11', '2026-10-01 12:12:53', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('57', '402', '1149.576370', '-1402.676560', '13.490459', '0.000000', '0.000000', '151.599915', '1219.309570', '-1440.432617', '13.300561', '0.653687', '359.983521', '105.490723', '100', '1', '0', '1', '0', '0', '998', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'GW4 1422', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 2, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-02 08:44:44', '2026-10-01 12:12:56', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('58', '496', '1130.056399', '-1397.014425', '13.448750', '0.000000', '0.000000', '320.325012', '1104.841797', '-1039.813477', '31.248682', '0.615234', '358.308105', '88.879395', '100', '0', '0', '2', '0', '0', '1000', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'BK1 1298', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 02:24:37', '2026-10-01 12:13:52', '5', null, '1', '1', '1', null, '0', '1', '[ [ ] ]', '-1', null, '54');
INSERT INTO `vehicles` VALUES ('59', '496', '1125.850083', '-1384.205852', '13.694183', '0.000000', '0.000000', '44.728760', '1125.850083', '-1384.205852', '13.694183', '0.000000', '0.000000', '44.728760', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'TO0 3109', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 12:13:55', '2026-10-01 12:13:55', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('60', '496', '1137.248212', '-1402.075754', '13.187714', '0.000000', '0.000000', '21.054962', '1780.653320', '-1692.358398', '13.279641', '359.950562', '359.994507', '21.121216', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CS7 1473', '-1', '8', '-1', '1', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-10-01 14:16:58', '2026-10-01 12:13:57', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('61', '602', '1082.911998', '-1387.032822', '13.553061', '0.000000', '0.000000', '94.022003', '1780.461914', '-1702.284180', '13.620693', '1.900635', '0.000000', '93.889160', '100', '1', '0', '1', '0', '0', '997.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XA1 7850', '-1', '8', '-1', '1', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-10-01 14:17:18', '2026-10-01 12:15:53', '6', null, '1', '1', '1', null, '1036', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('62', '411', '1082.911998', '-1387.032822', '13.553061', '0.000000', '0.000000', '94.022003', '1792.158203', '-1663.997070', '13.624951', '0.406494', '359.994507', '94.070435', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XV4 4093', '-1', '8', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 13:58:54', '2026-10-01 12:16:14', '6', null, '1', '1', '1', null, '1038', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('63', '419', '1083.930354', '-1399.754100', '13.495308', '0.000000', '0.000000', '161.355957', '1646.957031', '-1112.155273', '23.740793', '359.456177', '359.851685', '130.775757', '100', '1', '0', '1', '0', '0', '975.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'NE3 2382', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 2 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-01 21:13:55', '2026-10-01 12:16:46', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('64', '419', '1112.635154', '-1402.892831', '13.384114', '0.000000', '0.000000', '168.134583', '1791.395508', '-1692.533203', '13.489481', '359.857178', '0.181274', '169.079590', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VG1 1334', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 13:54:08', '2026-10-01 12:16:48', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('65', '494', '1099.346521', '-1401.214580', '13.444980', '0.000000', '0.000000', '105.011688', '1791.457031', '-1702.130859', '13.422883', '0.093384', '0.065918', '111.615601', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'BA7 6500', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 13:47:31', '2026-10-01 12:17:04', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('66', '502', '1082.302667', '-1398.441144', '13.508107', '0.000000', '0.000000', '73.782562', '1780.801758', '-1691.671875', '13.353115', '0.164795', '0.032959', '93.554077', '100', '1', '0', '1', '0', '0', '990.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CJ8 1355', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '5', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 13:42:07', '2026-10-01 12:17:22', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '98');
INSERT INTO `vehicles` VALUES ('67', '502', '1070.580625', '-1404.741860', '13.527656', '0.000000', '0.000000', '183.680481', '2178.209961', '-1763.137695', '13.209116', '359.813232', '0.043945', '50.427246', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'BI4 3332', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '5', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 09:24:11', '2026-10-01 12:17:23', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('68', '419', '1094.114196', '-1401.309396', '13.442807', '0.000000', '0.000000', '202.505844', '1094.114196', '-1401.309396', '13.442807', '0.000000', '0.000000', '202.505844', '100', '1', '1', '0', '0', '0', '908.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'KH6 7610', '-1', '10', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 1, 0, 0, 0, 3, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-10-01 12:24:58', '2026-10-01 12:17:43', '8', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('69', '503', '1082.099105', '-1392.769950', '13.234740', '0.000000', '0.000000', '74.241760', '2690.233398', '-1151.897461', '53.059780', '359.912109', '0.005493', '271.170044', '100', '0', '0', '1', '0', '0', '941', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'JE9 3775', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '3', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 03:55:37', '2026-10-01 12:17:51', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '87');
INSERT INTO `vehicles` VALUES ('70', '517', '1063.760533', '-1398.609431', '13.498680', '0.000000', '0.000000', '126.232086', '1598.008789', '-1170.020508', '23.810818', '181.263428', '0.422974', '105.820313', '100', '0', '0', '2', '0', '0', '964.5', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', '[[0,0,0]]', 'AO3 4064', '-1', '7', '-1', '1', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 22:47:06', '2026-10-01 12:18:03', '5', null, '1', '1', '1', null, '0', '1', '[ [ ] ]', '-1', null, '31');
INSERT INTO `vehicles` VALUES ('71', '517', '1064.044941', '-1394.147065', '13.233168', '0.000000', '0.000000', '91.824158', '1561.495117', '-1731.441406', '12.951759', '0.422974', '359.928589', '99.360352', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'JI4 2238', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 13:34:27', '2026-10-01 12:18:06', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('72', '517', '1058.318889', '-1397.831582', '13.490336', '0.000000', '0.000000', '166.025146', '1239.839844', '-1432.177734', '13.320053', '0.390015', '359.945068', '340.554199', '100', '1', '0', '1', '0', '0', '989.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LP3 3466', '-1', '10', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '8', '0', '0', '2026-10-01 15:32:52', '2026-10-01 12:18:09', '8', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '95');
INSERT INTO `vehicles` VALUES ('73', '566', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '1', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP CW 785', '-1', '12', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '10', '0', '0', '2026-10-01 20:31:19', '2026-10-01 20:29:55', '10', null, '1', '1', '1', null, '1044', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('74', '541', '1071.030479', '-1405.975976', '13.511383', '0.000000', '0.000000', '301.395294', '1848.537109', '-1280.777344', '12.985945', '359.110107', '359.989014', '29.108276', '100', '0', '0', '1', '0', '0', '924.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VJ7 6526', '-1', '8', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 2, 1 ] ]', '[ [ 2, 0, 0, 0, 0, 2 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 00:09:33', '2026-10-01 12:18:21', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '0');
INSERT INTO `vehicles` VALUES ('75', '566', '1086.591450', '-1400.550450', '13.500697', '0.000000', '0.000000', '42.916016', '1790.333008', '-1672.194336', '13.493332', '0.054932', '359.989014', '344.113770', '100', '0', '0', '1', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'YP8 1119', '-1', '8', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 1 ] ]', '[ [ 1, 0, 0, 0, 0, 1 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '6', '0', '0', '2026-10-01 13:22:17', '2026-10-01 12:18:32', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('76', '566', '1088.698099', '-1404.557667', '13.509661', '0.000000', '0.000000', '26.480194', '1088.698099', '-1404.557667', '13.509661', '0.000000', '0.000000', '26.480194', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OF7 1415', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 12:18:39', '2026-10-01 12:18:39', '8', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('77', '566', '1076.857757', '-1398.864871', '13.504742', '0.000000', '0.000000', '173.457520', '1793.299805', '-1661.743164', '13.451915', '359.983521', '359.994507', '185.476685', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '777', '-1', '7', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 12:09:48', '2026-10-01 12:18:45', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '93');
INSERT INTO `vehicles` VALUES ('78', '588', '1075.137359', '-1391.970561', '13.533583', '0.000000', '0.000000', '128.044861', '1075.137359', '-1391.970561', '13.533583', '0.000000', '0.000000', '128.044861', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'NL8 7158', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 12:19:51', '2026-10-01 12:19:51', '8', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('79', '455', '1144.367530', '-1404.424345', '13.498387', '0.000000', '0.000000', '14.702667', '1222.822266', '-1436.581055', '13.869401', '0.137329', '0.032959', '33.453369', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'MN1 5559', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 15:39:54', '2026-10-01 12:20:55', '8', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('80', '506', '1223.479680', '-1386.261515', '13.474448', '0.000000', '0.000000', '43.251099', '1801.264648', '-1691.179688', '13.352228', '359.555054', '0.016479', '181.290894', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'HW7 1991', '-1', '8', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '6', '0', '0', '2026-10-01 13:18:02', '2026-10-01 12:23:49', '6', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('81', '506', '1209.325907', '-1387.888866', '13.417925', '0.000000', '0.000000', '228.340576', '1209.325907', '-1387.888866', '13.417925', '0.000000', '0.000000', '228.340576', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XJ7 7649', '-1', '10', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 12:23:52', '2026-10-01 12:23:52', '8', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('82', '411', '1091.980236', '-1394.356805', '13.283473', '0.000000', '0.000000', '96.747253', '1091.980236', '-1394.356805', '13.283473', '0.000000', '0.000000', '96.747253', '100', '1', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP 168', '-1', '12', '-1', '1', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '10', '0', '0', '2026-10-01 21:20:47', '2026-10-01 20:55:00', '10', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('83', '496', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP HJ 578', '-1', '21', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 21:15:23', '2026-10-01 21:15:23', '20', null, '1', '1', '1', null, '1052', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('84', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 255, 255, 255 ] ]', '[ [ 20, 20, 20, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '34 LX 5939', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '0', '0', '', '', '', '', '', null, null, '10', '0', '0', '2026-10-01 21:52:11', '2026-10-01 21:52:11', '10', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('85', '506', '1427.300551', '-2602.598242', '13.546875', '0.000000', '0.000000', '293.660797', '1427.300551', '-2602.598242', '13.546875', '0.000000', '0.000000', '293.660797', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'SL3 8955', '-1', '10', '-1', '0', '1', '0', '1', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-01 14:04:11', '2026-10-01 14:04:11', '8', null, '1', '1', '1', null, '1043', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('86', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1571.063477', '-2675.760742', '5.861128', '355.797729', '354.765015', '270.335083', '100', '1', '0', '1', '0', '0', '990.5', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 BK 2738', '-1', '24', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 09:17:13', '2026-10-02 09:05:23', '26', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '93');
INSERT INTO `vehicles` VALUES ('87', '496', '1827.208927', '-1680.519534', '13.179105', '0.000000', '0.000000', '0.307709', '1255.057617', '-1485.304688', '13.621458', '358.917847', '351.787720', '184.641724', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP RQ 831', '-1', '25', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 10:08:35', '2026-10-02 09:14:53', '25', null, '1', '1', '1', null, '1052', '0', '[ [ ] ]', '-1', null, '99');
INSERT INTO `vehicles` VALUES ('88', '422', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', '34 OE 2559', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '2', '0', '0', '2026-10-02 09:31:22', '2026-10-02 09:31:22', '2', null, '1', '1', '1', null, '1021', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('89', '588', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 255, 255, 255 ] ]', '[ [ 255, 255, 255, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 GS 6129', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '0', '', '', '', '', '', null, null, '2', '0', '0', '2026-10-02 09:31:33', '2026-10-02 09:31:33', '2', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('90', '422', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1776.749023', '-1713.481445', '13.480973', '359.241943', '359.961548', '270.181274', '100', '0', '0', '1', '0', '0', '999.5', '[[20,20,20]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 SF 2840', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '0', '255', '', '', '', '', '', null, null, '2', '0', '0', '2026-10-02 18:30:18', '2026-10-02 09:34:52', '2', null, '1', '1', '1', null, '1021', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('91', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 255, 255, 255, 255 ] ]', '[ [ 20, 20, 20, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '34 MX 7762', '-1', '25', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '0', '0', '', '', '', '', '', null, null, '25', '0', '0', '2026-10-02 09:51:50', '2026-10-02 09:51:50', '25', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('92', '411', '845.414041', '-1415.876552', '13.566101', '0.000000', '0.000000', '269.188354', '845.414041', '-1415.876552', '13.566101', '0.000000', '0.000000', '269.188354', '100', '1', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[0,0,0]]', '[[0,0,0]]', 'VIP 714', '-1', '7', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '5', '0', '0', '2026-10-02 22:41:35', '2026-10-02 14:01:22', '5', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('93', '541', '1898.740000', '-1712.830000', '23.170000', '0.000000', '0.000000', '270.000000', '1856.820313', '-1672.274414', '13.174813', '359.082642', '0.010986', '290.000610', '100', '1', '0', '1', '0', '0', '994.5', '[[255,255,255]]', '[[20,20,20]]', '[[0,0,0]]', '[[0,0,0]]', '34 CE 6799', '-1', '26', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '255', '', '', '', '', '', null, null, '27', '0', '0', '2026-10-02 20:42:19', '2026-10-02 20:27:51', '27', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '90');
INSERT INTO `vehicles` VALUES ('94', '600', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '1893.500000', '-1707.000000', '23.180000', '0.000000', '0.000000', '225.000000', '100', '0', '1', '0', '0', '0', '1000', '[ [ 20, 20, 20, 255 ] ]', '[ [ 20, 20, 20, 0 ]]', '[ [ 0, 0, 0 ] ] ', '[ [ 0, 0, 0 ] ]', '34 ZP 4364', '-1', '26', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255, 255, 255 ] ]', '255', '0', '', '', '', '', '', null, null, '27', '0', '0', '2026-10-02 20:43:06', '2026-10-02 20:43:06', '27', null, '1', '1', '1', null, '1026', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('95', '552', '361.994200', '-1617.116358', '50.210938', '0.000000', '0.000000', '212.316772', '361.994200', '-1617.116358', '50.210938', '0.000000', '0.000000', '212.316772', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XJ0 2618', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 21:14:53', '2026-10-02 21:14:53', '10', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('96', '400', '374.125156', '-1619.730532', '50.210938', '0.000000', '0.000000', '169.535400', '374.125156', '-1619.730532', '50.210938', '0.000000', '0.000000', '169.535400', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'AW8 8625', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 21:15:08', '2026-10-02 21:15:08', '10', null, '1', '1', '1', null, '1056', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('97', '600', '377.273447', '-1627.790392', '50.210938', '0.000000', '0.000000', '242.375824', '377.273447', '-1627.790392', '50.210938', '0.000000', '0.000000', '242.375824', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QF7 4476', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ 255 ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 21:15:16', '2026-10-02 21:15:16', '10', null, '1', '1', '1', null, '1026', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('98', '517', '378.867847', '-1614.624194', '50.210938', '0.000000', '0.000000', '159.872742', '1495.514648', '-696.117188', '94.327415', '0.340576', '359.862671', '271.658936', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'TQ1 9988', '-1', '12', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:08:14', '2026-10-02 21:16:39', '10', null, '1', '1', '1', null, '1046', '0', '[ [ ] ]', '-1', null, '53');
INSERT INTO `vehicles` VALUES ('99', '402', '1837.113136', '-1666.952806', '13.578125', '0.000000', '0.000000', '79.627380', '1837.147461', '-1666.904297', '13.111028', '0.477905', '359.994507', '76.915283', '100', '0', '1', '1', '0', '0', '998.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'DZ0 4762', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:11', '2026-10-02 22:53:56', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('100', '402', '1837.014248', '-1665.634432', '13.578125', '0.000000', '0.000000', '63.911194', '1837.812500', '-1664.755859', '13.108318', '0.472412', '0.000000', '79.107056', '100', '0', '1', '1', '0', '0', '996.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'AI2 8036', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:11', '2026-10-02 22:54:11', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('101', '402', '1840.127508', '-1666.182240', '13.578125', '0.000000', '0.000000', '85.669952', '1844.813477', '-1658.444336', '13.464452', '194.166870', '0.000000', '216.694336', '100', '0', '1', '1', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XK5 5007', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:11', '2026-10-02 22:54:24', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('102', '402', '1833.521385', '-1665.342538', '13.578125', '0.000000', '0.000000', '109.999512', '1832.892578', '-1665.233398', '13.113650', '0.170288', '0.538330', '117.883301', '100', '0', '1', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'PP1 4377', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:12', '2026-10-02 22:54:56', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('103', '402', '1834.142150', '-1670.114590', '13.578125', '0.000000', '0.000000', '79.220856', '1834.647461', '-1670.439453', '13.116946', '359.154053', '2.246704', '79.442139', '100', '0', '1', '1', '0', '0', '994.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OV7 9534', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:12', '2026-10-02 22:55:07', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('104', '402', '1834.142150', '-1670.114590', '13.578125', '0.000000', '0.000000', '79.220856', '1833.305664', '-1668.697266', '13.549631', '358.643188', '45.615234', '93.317871', '100', '0', '1', '1', '0', '0', '996', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QN8 8426', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:12', '2026-10-02 22:55:10', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('105', '402', '1837.040334', '-1673.778643', '13.578125', '0.000000', '0.000000', '91.306030', '1837.048828', '-1673.778320', '13.145597', '0.554810', '359.994507', '91.301880', '100', '0', '1', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QK8 9845', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:12', '2026-10-02 22:55:21', '2', null, '1', '1', '1', null, '1054', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('106', '401', '1455.735153', '-2597.342849', '13.546875', '0.000000', '0.000000', '267.243774', '1455.735153', '-2597.342849', '13.546875', '0.000000', '0.000000', '267.243774', '100', '0', '1', '0', '0', '0', '970', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'KJ7 2748', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:09:36', '2026-10-02 23:09:36', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('107', '445', '1441.385712', '-2601.672141', '13.546875', '0.000000', '0.000000', '272.462341', '1441.385712', '-2601.672141', '13.546875', '0.000000', '0.000000', '272.462341', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OI8 8395', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:24:29', '2026-10-02 23:24:29', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('108', '529', '1824.320749', '-2494.588466', '13.554688', '0.000000', '0.000000', '86.680725', '1824.346680', '-2494.517578', '13.347295', '0.010986', '359.972534', '83.287354', '100', '0', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'IC6 8263', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:31:27', '2026-10-02 23:29:11', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('109', '445', '1823.667558', '-2490.555222', '13.554688', '0.000000', '0.000000', '30.122223', '1823.667558', '-2490.555222', '13.554688', '0.000000', '0.000000', '30.122223', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'TJ9 6863', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:29:21', '2026-10-02 23:29:21', '2', null, '1', '1', '1', null, '1058', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('110', '445', '1428.363978', '-2496.747564', '13.554688', '0.000000', '0.000000', '262.612946', '1428.363978', '-2496.747564', '13.554688', '0.000000', '0.000000', '262.612946', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'ET5 9423', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:31:37', '2026-10-02 23:31:37', '2', null, '1', '1', '1', null, '1058', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('111', '545', '1432.025245', '-2598.011705', '13.546875', '0.000000', '0.000000', '269.864044', '1432.025245', '-2598.011705', '13.546875', '0.000000', '0.000000', '269.864044', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FN9 6033', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:34:26', '2026-10-02 23:34:26', '2', null, '1', '1', '1', null, '1039', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('112', '589', '1433.878470', '-2600.102846', '13.546875', '0.000000', '0.000000', '277.988556', '1433.878470', '-2600.102846', '13.546875', '0.000000', '0.000000', '277.988556', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LB7 2011', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:34:51', '2026-10-02 23:34:51', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('113', '403', '1498.391347', '-2498.806061', '13.554688', '0.000000', '0.000000', '271.429626', '1519.132813', '-2508.628906', '13.752294', '0.016479', '359.890137', '259.513550', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'ZK8 7827', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:41:13', '2026-10-02 23:39:52', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('114', '414', '1553.114784', '-2598.620999', '13.546875', '0.000000', '0.000000', '270.352936', '1553.114784', '-2598.620999', '13.546875', '0.000000', '0.000000', '270.352936', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'MX0 9633', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:46:18', '2026-10-02 23:46:18', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('115', '435', '1894.919519', '-2579.384684', '13.546875', '0.000000', '0.000000', '102.984650', '1894.919519', '-2579.384684', '13.546875', '0.000000', '0.000000', '102.984650', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'EC8 1477', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:52:27', '2026-10-02 23:52:27', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('116', '450', '1494.949325', '-691.953413', '94.750000', '0.000000', '0.000000', '63.142120', '1494.949325', '-691.953413', '94.750000', '0.000000', '0.000000', '63.142120', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LP0 1339', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-02 23:58:30', '2026-10-02 23:58:30', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('117', '506', '1488.646047', '-699.054892', '94.750000', '0.000000', '0.000000', '265.222260', '1488.646047', '-699.054892', '94.750000', '0.000000', '0.000000', '265.222260', '100', '0', '1', '0', '0', '0', '999', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'PJ0 1485', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:00:16', '2026-10-03 00:00:16', '2', null, '1', '1', '1', null, '1043', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('118', '422', '1488.646047', '-699.054892', '94.750000', '0.000000', '0.000000', '265.222260', '1488.646047', '-699.054892', '94.750000', '0.000000', '0.000000', '265.222260', '100', '0', '1', '0', '0', '0', '999.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'YI3 9256', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:00:25', '2026-10-03 00:00:25', '2', null, '1', '1', '1', null, '1021', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('119', '470', '1492.168034', '-705.497027', '94.743881', '0.000000', '0.000000', '208.817581', '1492.168034', '-705.497027', '94.743881', '0.000000', '0.000000', '208.817581', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'ZA1 4122', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:00:34', '2026-10-03 00:00:34', '2', null, '1', '1', '1', null, '1022', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('120', '605', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '100', '0', '1', '0', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'DU8 8631', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 2 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:02:19', '2026-10-03 00:02:19', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('121', '554', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '100', '0', '1', '0', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LK2 6958', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:02:31', '2026-10-03 00:02:31', '2', null, '1', '1', '1', null, '1025', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('122', '587', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '1492.517927', '-716.770103', '94.752541', '0.000000', '0.000000', '217.524368', '100', '0', '1', '0', '0', '0', '300', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VH3 7768', '-1', '2', '-1', '0', '0', '0', '0', '0', '1', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 2, 2, 2, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:02:42', '2026-10-03 00:02:42', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('123', '400', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '100', '0', '1', '0', '0', '0', '997', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'ZA2 7130', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:02:58', '2026-10-03 00:02:58', '2', null, '1', '1', '1', null, '1056', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('124', '404', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '100', '0', '1', '0', '0', '0', '466.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VE9 7105', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 2, 2, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:04', '2026-10-03 00:03:04', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('125', '405', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '1479.843753', '-726.600000', '93.368973', '0.000000', '0.000000', '180.060425', '100', '0', '1', '0', '0', '0', '994.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'GE3 1882', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:13', '2026-10-03 00:03:13', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('126', '421', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '100', '0', '1', '0', '0', '0', '984.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OY3 9044', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 2, 0, 2, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:25', '2026-10-03 00:03:25', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('127', '445', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '100', '0', '1', '0', '0', '0', '999.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LB3 8257', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:35', '2026-10-03 00:03:35', '2', null, '1', '1', '1', null, '1058', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('128', '542', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '100', '0', '1', '0', '0', '0', '994', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'TP3 5088', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 2, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:45', '2026-10-03 00:03:45', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('129', '602', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '100', '0', '1', '0', '0', '0', '989', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LJ5 1445', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:03:53', '2026-10-03 00:03:53', '2', null, '1', '1', '1', null, '1036', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('130', '566', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '1461.372160', '-736.813616', '94.332603', '0.000000', '0.000000', '116.404694', '100', '0', '1', '0', '0', '0', '995', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VT0 2466', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:04:02', '2026-10-03 00:04:02', '2', null, '1', '1', '1', null, '1044', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('131', '420', '1397.464663', '-737.579960', '96.923958', '0.000000', '0.000000', '75.963379', '1397.464663', '-737.579960', '96.923958', '0.000000', '0.000000', '75.963379', '100', '0', '1', '0', '0', '0', '997', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WB8 9728', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:04:25', '2026-10-03 00:04:25', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('132', '588', '1401.055176', '-741.199157', '96.891571', '0.000000', '0.000000', '358.612946', '1401.055176', '-741.199157', '96.891571', '0.000000', '0.000000', '358.612946', '100', '0', '1', '0', '0', '0', '999.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WJ3 8440', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:05:04', '2026-10-03 00:05:04', '2', null, '1', '1', '1', null, '1042', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('133', '524', '1401.055176', '-741.199157', '96.891571', '0.000000', '0.000000', '358.612946', '1401.055176', '-741.199157', '96.891571', '0.000000', '0.000000', '358.612946', '100', '0', '1', '0', '0', '0', '876.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OX6 1023', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 3, 2, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:05:18', '2026-10-03 00:05:18', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('134', '524', '1394.491126', '-744.877199', '96.930313', '0.000000', '0.000000', '261.926300', '1394.491126', '-744.877199', '96.930313', '0.000000', '0.000000', '261.926300', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'KS1 4000', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:05:35', '2026-10-03 00:05:35', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('135', '524', '1400.883281', '-745.473286', '96.411606', '0.000000', '0.000000', '62.911438', '1400.883281', '-745.473286', '96.411606', '0.000000', '0.000000', '62.911438', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'RJ6 9366', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:06:16', '2026-10-03 00:06:16', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('136', '555', '1391.398888', '-747.668591', '96.448387', '0.000000', '0.000000', '93.129761', '1391.398888', '-747.668591', '96.448387', '0.000000', '0.000000', '93.129761', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'HP0 9225', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:07:04', '2026-10-03 00:07:04', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('137', '555', '1386.318673', '-751.700388', '97.339996', '0.000000', '0.000000', '264.590515', '1386.318673', '-751.700388', '97.339996', '0.000000', '0.000000', '264.590515', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VK4 1211', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:07:35', '2026-10-03 00:07:35', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('138', '506', '1378.149792', '-740.187953', '98.329529', '0.000000', '0.000000', '76.452271', '1378.149792', '-740.187953', '98.329529', '0.000000', '0.000000', '76.452271', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CF0 3054', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:08:37', '2026-10-03 00:08:37', '2', null, '1', '1', '1', null, '1043', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('139', '543', '1378.149792', '-740.187953', '98.329529', '0.000000', '0.000000', '76.452271', '1378.149792', '-740.187953', '98.329529', '0.000000', '0.000000', '76.452271', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VY6 2087', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:08:46', '2026-10-03 00:08:46', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('140', '483', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'LO4 5727', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:11:18', '2026-10-03 00:11:18', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('141', '485', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'GP7 5784', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 4, 4, 4 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:11:23', '2026-10-03 00:11:23', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('142', '489', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '1967.314910', '-793.687924', '129.724380', '0.000000', '0.000000', '262.102081', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XZ2 9814', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:11:28', '2026-10-03 00:11:28', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('143', '507', '1283.562170', '-721.954665', '93.491402', '0.000000', '0.000000', '17.251526', '1283.562170', '-721.954665', '93.491402', '0.000000', '0.000000', '17.251526', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VR7 2860', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:12:28', '2026-10-03 00:12:28', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('144', '479', '1283.562170', '-721.954665', '93.491402', '0.000000', '0.000000', '17.251526', '1283.562170', '-721.954665', '93.491402', '0.000000', '0.000000', '17.251526', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QJ6 6588', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:12:36', '2026-10-03 00:12:36', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('145', '516', '1292.395108', '-731.961785', '93.260956', '0.000000', '0.000000', '275.082611', '1292.395108', '-731.961785', '93.260956', '0.000000', '0.000000', '275.082611', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'HY8 7042', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:13:33', '2026-10-03 00:13:33', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('146', '596', '1283.329490', '-733.064745', '94.764420', '0.000000', '0.000000', '106.038879', '1283.329490', '-733.064745', '94.764420', '0.000000', '0.000000', '106.038879', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'UD5 2471', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:14:55', '2026-10-03 00:14:55', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('147', '596', '1280.099039', '-735.158598', '93.758904', '0.000000', '0.000000', '332.937531', '1280.099039', '-735.158598', '93.758904', '0.000000', '0.000000', '332.937531', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'NM9 7278', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:17:27', '2026-10-03 00:17:27', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('148', '597', '1302.141399', '-708.068881', '92.823914', '0.000000', '0.000000', '178.483887', '1302.141399', '-708.068881', '92.823914', '0.000000', '0.000000', '178.483887', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'DU6 8183', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:20:32', '2026-10-03 00:20:32', '2', null, '1', '1', '1', null, '1032', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('149', '598', '1302.141399', '-708.068881', '92.823914', '0.000000', '0.000000', '178.483887', '1302.141399', '-708.068881', '92.823914', '0.000000', '0.000000', '178.483887', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XY3 9678', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:20:35', '2026-10-03 00:20:35', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('150', '599', '1304.957236', '-705.666247', '92.875328', '0.000000', '0.000000', '89.449310', '1304.957236', '-705.666247', '92.875328', '0.000000', '0.000000', '89.449310', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OU3 7434', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:20:42', '2026-10-03 00:20:42', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('151', '523', '1311.884169', '-695.926580', '92.649429', '0.000000', '0.000000', '113.866791', '1311.884169', '-695.926580', '92.649429', '0.000000', '0.000000', '113.866791', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'AA1 9119', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:20:52', '2026-10-03 00:20:52', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('152', '497', '1314.934641', '-708.187406', '92.577515', '0.000000', '0.000000', '237.871368', '1314.934641', '-708.187406', '92.577515', '0.000000', '0.000000', '237.871368', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XF0 1566', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:20:59', '2026-10-03 00:20:59', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('153', '427', '1314.934641', '-708.187406', '92.577515', '0.000000', '0.000000', '237.871368', '1314.934641', '-708.187406', '92.577515', '0.000000', '0.000000', '237.871368', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FL6 9456', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:21:07', '2026-10-03 00:21:07', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('154', '601', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XB3 1773', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '3', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:21:16', '2026-10-03 00:21:16', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('155', '490', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'HP3 4798', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:21:25', '2026-10-03 00:21:25', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('156', '528', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '1323.053483', '-705.975650', '92.512939', '0.000000', '0.000000', '311.997253', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FO9 9686', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:21:36', '2026-10-03 00:21:36', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('157', '428', '1320.669873', '-705.586477', '92.448326', '0.000000', '0.000000', '256.075989', '1320.669873', '-705.586477', '92.448326', '0.000000', '0.000000', '256.075989', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QU6 1647', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:21:50', '2026-10-03 00:21:50', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('158', '416', '1315.705338', '-693.831571', '92.576157', '0.000000', '0.000000', '98.963623', '1315.705338', '-693.831571', '92.576157', '0.000000', '0.000000', '98.963623', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OE6 9900', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:22:06', '2026-10-03 00:22:06', '2', null, '1', '1', '1', null, '1027', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('159', '416', '1326.336496', '-704.099593', '92.289345', '0.000000', '0.000000', '247.462585', '1326.336496', '-704.099593', '92.289345', '0.000000', '0.000000', '247.462585', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'DU6 8183', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:24:53', '2026-10-03 00:24:53', '2', null, '1', '1', '1', null, '1027', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('160', '416', '1335.445272', '-700.411777', '92.157135', '0.000000', '0.000000', '307.487305', '1335.445272', '-700.411777', '92.157135', '0.000000', '0.000000', '307.487305', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XY3 9678', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:25:08', '2026-10-03 00:25:08', '2', null, '1', '1', '1', null, '1027', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('161', '525', '1323.550455', '-694.054812', '92.295776', '0.000000', '0.000000', '241.419983', '1323.550455', '-694.054812', '92.295776', '0.000000', '0.000000', '241.419983', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'OU3 7434', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:25:56', '2026-10-03 00:25:56', '2', null, '1', '1', '1', null, '1029', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('162', '525', '1333.535170', '-691.768046', '91.921532', '0.000000', '0.000000', '248.830383', '1333.535170', '-691.768046', '91.921532', '0.000000', '0.000000', '248.830383', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'SO3 7017', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:29:13', '2026-10-03 00:29:13', '2', null, '1', '1', '1', null, '1029', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('163', '455', '1333.535170', '-691.768046', '91.921532', '0.000000', '0.000000', '248.830383', '1333.535170', '-691.768046', '91.921532', '0.000000', '0.000000', '248.830383', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QC7 1172', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:29:49', '2026-10-03 00:29:49', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('164', '455', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'MM0 2020', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:29:55', '2026-10-03 00:29:55', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('165', '552', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'MX7 7398', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:30:02', '2026-10-03 00:30:02', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('166', '531', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '1343.549084', '-685.130988', '91.498604', '0.000000', '0.000000', '105.412659', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'TN2 1946', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 4, 4, 4 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:30:10', '2026-10-03 00:30:10', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('167', '499', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VY6 5972', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:30:26', '2026-10-03 00:30:26', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('168', '414', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CN9 5079', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:30:32', '2026-10-03 00:30:32', '2', null, '1', '1', '1', null, '1062', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('169', '456', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '1610.227430', '-718.177631', '61.829769', '0.000000', '0.000000', '209.998627', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'WG9 6530', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:30:37', '2026-10-03 00:30:37', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('170', '455', '1562.123910', '-756.323256', '70.091553', '0.000000', '0.000000', '245.045547', '1562.123910', '-756.323256', '70.091553', '0.000000', '0.000000', '245.045547', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'FS8 9718', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:25', '2026-10-03 00:31:25', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('171', '456', '1565.161840', '-759.457376', '69.255371', '0.000000', '0.000000', '218.458237', '1565.161840', '-759.457376', '69.255371', '0.000000', '0.000000', '218.458237', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'KX3 1190', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:30', '2026-10-03 00:31:30', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('172', '457', '1565.161840', '-759.457376', '69.255371', '0.000000', '0.000000', '218.458237', '1565.161840', '-759.457376', '69.255371', '0.000000', '0.000000', '218.458237', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'UE3 7153', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 4, 4, 4 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '4', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:32', '2026-10-03 00:31:32', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('173', '457', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'XZ6 6830', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 4, 4, 4 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '2', '5', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:37', '2026-10-03 00:31:37', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('174', '459', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'RV5 7083', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '0', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:41', '2026-10-03 00:31:41', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('175', '460', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '1573.367890', '-752.099708', '68.879448', '0.000000', '0.000000', '286.541565', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'MF1 8035', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:44', '2026-10-03 00:31:44', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('176', '407', '1577.516022', '-749.463144', '68.315857', '0.000000', '0.000000', '288.958557', '1577.516022', '-749.463144', '68.315857', '0.000000', '0.000000', '288.958557', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'EM8 8547', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '1', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:31:58', '2026-10-03 00:31:58', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('177', '544', '1577.516022', '-749.463144', '68.315857', '0.000000', '0.000000', '288.958557', '1577.516022', '-749.463144', '68.315857', '0.000000', '0.000000', '288.958557', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CO4 4050', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:32:05', '2026-10-03 00:32:05', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('178', '578', '1985.358925', '-806.476542', '131.639526', '0.000000', '0.000000', '189.453888', '1985.358925', '-806.476542', '131.639526', '0.000000', '0.000000', '189.453888', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'VY6 5972', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:36:02', '2026-10-03 00:36:02', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('179', '578', '1998.107526', '-793.690007', '133.543823', '0.000000', '0.000000', '320.226135', '1998.107526', '-793.690007', '133.543823', '0.000000', '0.000000', '320.226135', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'CN9 5079', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 00:36:08', '2026-10-03 00:36:08', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('180', '490', '1589.634818', '-1382.586111', '28.578348', '0.000000', '0.000000', '287.118347', '1589.634818', '-1382.586111', '28.578348', '0.000000', '0.000000', '287.118347', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'SS2 1849', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:39:07', '2026-10-03 01:39:07', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('181', '528', '1586.610039', '-1415.229928', '28.558655', '0.000000', '0.000000', '180.933853', '1570.768555', '-1586.549805', '28.554827', '0.483398', '0.038452', '27.136230', '100', '1', '0', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'PM2 1996', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '1', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:40:04', '2026-10-03 01:39:28', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('182', '579', '1594.085403', '-1510.288439', '37.743149', '0.000000', '0.000000', '341.325714', '1594.085403', '-1510.288439', '37.743149', '0.000000', '0.000000', '341.325714', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'HD1 2336', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:40:10', '2026-10-03 01:40:10', '2', null, '1', '1', '1', null, '1040', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('183', '400', '1595.238593', '-1500.569904', '37.808029', '0.000000', '0.000000', '126.600128', '1595.238593', '-1500.569904', '37.808029', '0.000000', '0.000000', '126.600128', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'UB0 7949', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:40:23', '2026-10-03 01:40:23', '2', null, '1', '1', '1', null, '1056', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('184', '489', '1600.562888', '-1506.632684', '37.540154', '0.000000', '0.000000', '275.901123', '1600.562888', '-1506.632684', '37.540154', '0.000000', '0.000000', '275.901123', '100', '0', '1', '0', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'GY6 6150', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:40:34', '2026-10-03 01:40:34', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('185', '441', '1608.494835', '-1509.789856', '37.295830', '0.000000', '0.000000', '302.735657', '1608.482422', '-1509.770508', '27.737059', '359.307861', '358.516846', '303.898315', '100', '0', '1', '1', '0', '0', '1000', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'YQ3 3028', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 4, 4, 4 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:41:02', '2026-10-03 01:40:51', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('186', '599', '1582.239867', '-1499.593434', '37.740067', '0.000000', '0.000000', '127.253815', '1582.239867', '-1499.593434', '37.740067', '0.000000', '0.000000', '127.253815', '100', '0', '1', '0', '0', '0', '968.5', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'QP3 8722', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 1 ] ]', '[ [ 0, 2, 0, 2, 0, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:41:49', '2026-10-03 01:41:49', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');
INSERT INTO `vehicles` VALUES ('187', '490', '1533.868364', '-1359.127050', '329.459900', '0.000000', '0.000000', '231.592590', '1547.809570', '-1436.040039', '14.673474', '12.947388', '325.656738', '214.348755', '100', '1', '0', '1', '0', '0', '645', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', '[[255,255,255]]', 'JF8 2450', '-1', '2', '-1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', null, null, null, null, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 0, 0, 2, 0 ] ]', '0', '[ [ [ 255, 255, 255 ] ] ]', '255', '255', '', '', '', '', '', null, null, '1', '0', '0', '2026-10-03 01:42:34', '2026-10-03 01:42:16', '2', null, '1', '1', '1', null, '0', '0', '[ [ ] ]', '-1', null, '100');

-- ----------------------------
-- Table structure for vehicles_custom
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_custom`;
CREATE TABLE `vehicles_custom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` mediumtext COLLATE utf8mb4_unicode_ci,
  `model` mediumtext COLLATE utf8mb4_unicode_ci,
  `year` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `handling` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `doortype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicles_custom
-- ----------------------------
INSERT INTO `vehicles_custom` VALUES ('2', 'Land Rover', 'Range Rover Evoque', '2013', null, '[ [ 2000, 6000, 2.4000000953674316, [ 0, 0, -0.20000000298023224 ], 80, 0.62000000476837158, 0.88999998569488525, 0.5, 5, 153, 8, 25, \"awd\", \"petrol\", 5, 0.60000002384185791, false, 35, 1, 0.05000000074505806, 0, 0.44999998807907104, -0.20000000298023224, 0.40000000596046448, 0.30000001192092896, 0.43999999761581421, 0.34999999403953552, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '38279', '60', '2026-07-10 07:27:01', '1', '0000-00-00 00:00:00', '0', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('3', 'Land Rover', 'Defender 110', '2014', null, null, '0', '0', '2026-07-10 17:52:09', '1', '0000-00-00 00:00:00', '0', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('5', 'Chrysler', '300 Touring', '2014', null, '[ { \"1\": 1000, \"2\": 3000, \"3\": 1, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 2, \"7\": 0.800000011920929, \"8\": 0.4000000059604645, \"9\": 4, \"10\": 430, \"11\": 12, \"12\": 5, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 35, \"19\": 2, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1000000014901161, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', '0', '50', '2026-07-10 18:21:24', '1', '2026-07-10 18:28:29', '1', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('6', 'Ford', 'Expedition XLT', '2014', null, '[ [ 3500, 11156.200195, 2.200000, [ 0, 0, -0.200000 ], 80, 0.800000, 0.800000, 0.520000, 5, 140, 10, 5, \"awd\", \"petrol\", 8.500000, 0.500000, false, 30, 0.700000, 0.150000, 0, 0.340000, -0.200000, 0.500000, 0.500000, 0.440000, 0.300000, 40000, 16416, 5242880, \"long\", \"small\", 0 ] ]', '61635', '60', '2026-07-10 13:14:45', '1', '0000-00-00 00:00:00', '0', 'FBI Rancher', '0');
INSERT INTO `vehicles_custom` VALUES ('7', 'Ferrari', 'LaFerrari', '2015', null, '[ [ 1400, 3000, 2, [ 0, -0.300000011920929, -0.2000000029802322 ], 70, 0.75, 0.8500000238418579, 0.449999988079071, 5, 430, 12, 5, \"rwd\", \"petrol\", 11, 0.5, false, 30, 1.200000047683716, 0.1299999952316284, 0, 0.1500000059604645, -0.2000000029802322, 0.5, 0.4000000059604645, 0.1700000017881393, 0.7200000286102295, 95000, 1073750020, 12616705, \"small\", \"small\", 1 ] ]', '0', '50', '2026-07-10 18:31:16', '1', '2026-07-10 20:43:33', '1', '\n', '2');
INSERT INTO `vehicles_custom` VALUES ('9', 'Ferrari', 'LaFerrari', '2015', null, '[ [ 1600, 3000, 1.5, [ 0, -0.2000000029802322, -0.4000000059604645 ], 70, 2, 0.8500000238418579, 0.5, 5, 500, 60, 20, \"awd\", \"petrol\", 50, 0.5, false, 35, 2, 0.2000000029802322, 0, 0.1500000059604645, -0.1500000059604645, 0.5, 0.4000000059604645, 0.1700000017881393, 0.7200000286102295, 95000, 1073750020, 12616705, \"small\", \"small\", 1 ] ]', '0', '0', '2026-09-29 04:12:28', '7', '2026-09-29 09:32:05', '7', '\n', '2');
INSERT INTO `vehicles_custom` VALUES ('10', 'بوجاتي', 'اتلانتيك', '2014', null, '[ [ 2000, 2800, 1.5, [ 0, -0.2000000029802322, -0.239999994635582 ], 70, 1.75, 0.8600000143051147, 0.5, 5, 400, 200, 30, \"awd\", \"petrol\", 50, 0.5, false, 30, 1, 0.2000000029802322, 0, 0.25, -0.1000000014901161, 0.5, 0.300000011920929, 0.4000000059604645, 0.5400000214576721, 105000, 1073750020, 2129920, \"long\", \"long\", 1 ] ]', '0', '0', '2026-09-29 00:50:05', '5', '2026-10-01 19:35:34', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('11', 'Bullet', '', '0', null, '[ [ 1200, 2500, 1.799999952316284, [ 0, -0.1500000059604645, -0.2000000029802322 ], 70, 0.8500000238418579, 0.8999999761581421, 0.5, 5, 500, 30, 20, \"rwd\", \"petrol\", 8, 0.6000000238418579, false, 45, 1, 0.1299999952316284, 5, 0.25, -0.1000000014901161, 0.4000000059604645, 0.300000011920929, 0.1500000059604645, 0.5400000214576721, 105000, 3221233668.0, 2113536, \"long\", \"long\", 1 ] ]', '0', '0', '2026-09-30 13:18:11', '10', '2026-09-30 13:22:06', '10', '\n', '2');
INSERT INTO `vehicles_custom` VALUES ('12', 'شوفرليه ', 'كمارو', '2015', null, '[ [ 3000, 3000, 1, [ 0, -0.4000000059604645, -0.300000011920929 ], 70, 1.299999952316284, 0.8500000238418579, 0.4099999964237213, 5, 400, 50, 30, \"rwd\", \"petrol\", 8, 0.5, false, 40, 1.299999952316284, 0.2000000029802322, 0, 0.1500000059604645, -0.1500000059604645, 0.5, 0.4000000059604645, 0.1700000017881393, 0.7200000286102295, 95000, 1073750020, 12616705, \"small\", \"small\", 1 ] ]', '0', '0', '2026-09-29 02:52:24', '7', '2026-10-01 19:35:58', '5', '\n', '1');
INSERT INTO `vehicles_custom` VALUES ('14', 'Yamaha', 'YZF-R6', '2013', null, '[ [ 400, 200, 4, [ 0, 0.07999999821186066, -0.09000000357627869 ], 103, 2.200000047683716, 0.8999999761581421, 0.3499999940395355, 5, 500, 100, 30, \"rwd\", \"petrol\", 50, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 2, \"small\", \"small\", 4 ] ]', '0', '0', '2026-09-29 03:04:01', '5', '2026-09-30 04:05:33', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('16', 'فراري', '1', '0', null, '[ [ 2000, 2500, 1.799999952316284, [ 0, -0.1500000059604645, -0.2000000029802322 ], 70, 1, 0.8999999761581421, 0.4799999892711639, 5, 500, 25, 1, \"awd\", \"petrol\", 8, 0.6000000238418579, false, 30, 1, 0.1299999952316284, 5, 0.25, -0.2000000029802322, 0.4000000059604645, 0.300000011920929, 0.1500000059604645, 0.5400000214576721, 105000, 3221233668.0, 2113536, \"long\", \"long\", 1 ] ]', '0', '0', '2026-10-01 10:01:41', '5', '2026-10-01 19:36:23', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('17', 'Ford', 'Bronco', '1996', null, '[ [ 1800, 7604.2001953125, 3, [ 0, -0.05000000074505806, -0.5 ], 80, 0.8999999761581421, 0.8500000238418579, 0.4000000059604645, 5, 500, 50, 30, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 1.200000047683716, 0.07999999821186066, 0, 0.449999988079071, -0.1500000059604645, 0.5, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 16416, 1048580, \"long\", \"small\", 0 ] ]', '17500', '55', '2026-09-29 07:34:49', '5', '2026-09-30 03:56:24', '5', 'Rancher', '0');
INSERT INTO `vehicles_custom` VALUES ('18', 'Shop', 'Market', '2026', null, '[ { \"1\": 4200, \"2\": 23489.599609375, \"3\": 2.5, \"4\": [ 0, 0, -0.2000000029802322 ], \"5\": 80, \"6\": 0.8199999928474426, \"7\": 0.699999988079071, \"8\": 0.4799999892711639, \"9\": 5, \"10\": 170, \"11\": 8, \"12\": 18, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 8, \"16\": 0.5199999809265137, \"17\": false, \"18\": 26, \"19\": 0.8500000238418579, \"20\": 0.1599999964237213, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.1800000071525574, \"24\": 0.449999988079071, \"25\": 0.6000000238418579, \"26\": 0.3600000143051147, \"27\": 0.4000000059604645, \"28\": 22000, \"29\": 1073741833, \"30\": 513, \"31\": \"long\", \"33\": 13 } ]', '1', '1', '2026-10-01 14:23:43', '5', '0000-00-00 00:00:00', '0', 'Hotdog', '0');
INSERT INTO `vehicles_custom` VALUES ('19', 'Glendale Damaged', '', '0', null, '[ [ 1600, 4000, 2.5, [ 0, 0, 0.05000000074505806 ], 75, 0.6000000238418579, 0.8399999737739563, 0.5199999809265137, 5, 275, 75, 30, \"awd\", \"petrol\", 6.199999809265137, 0.6000000238418579, false, 30, 0.800000011920929, 0.07000000029802322, 0, 0.3499999940395355, -0.2199999988079071, 0.5, 0.5, 0.2300000041723251, 0.4000000059604645, 20000, 0, 276824066, \"small\", \"small\", 0 ] ]', '0', '0', '2026-09-29 10:01:09', '5', '2026-09-29 10:02:11', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('20', 'Shop', 'Market', '2026', null, '[ { \"1\": 4200, \"2\": 23489.599609375, \"3\": 2.5, \"4\": [ 0, 0, -0.2000000029802322 ], \"5\": 80, \"6\": 0.8199999928474426, \"7\": 0.699999988079071, \"8\": 0.4799999892711639, \"9\": 5, \"10\": 170, \"11\": 8, \"12\": 18, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 8, \"16\": 0.5199999809265137, \"17\": false, \"18\": 26, \"19\": 0.8500000238418579, \"20\": 0.1599999964237213, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.1800000071525574, \"24\": 0.449999988079071, \"25\": 0.6000000238418579, \"26\": 0.3600000143051147, \"27\": 0.4000000059604645, \"28\": 22000, \"29\": 1073741833, \"30\": 513, \"31\": \"long\", \"33\": 13 } ]', '1', '1', '2026-10-01 14:29:34', '5', '0000-00-00 00:00:00', '0', 'Hotdog', '0');
INSERT INTO `vehicles_custom` VALUES ('21', 'Audi', 'Q7 TDI', '2007', null, '[ [ 2500, 6000, 2.5, [ 0, 0, -0.2000000029802322 ], 80, 0.6200000047683716, 0.8899999856948853, 0.5, 5, 500, 100, 25, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 1, 0.05000000074505806, 0, 0.449999988079071, -0.2099999934434891, 0.4000000059604645, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '35578', '35', '2026-09-29 07:37:15', '5', '2026-10-01 02:41:38', '5', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('22', 'رولز رويز', 'Classic Muscle Coupe', '2025', null, '[ { \"1\": 1550, \"2\": 4350, \"3\": 1.899999976158142, \"4\": [ 0, 0, -0.25 ], \"5\": 70, \"6\": 0.8799999952316284, \"7\": 0.8799999952316284, \"8\": 0.5, \"9\": 5, \"10\": 220, \"11\": 13, \"12\": 7, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 10, \"16\": 0.5199999809265137, \"17\": false, \"18\": 32, \"19\": 1.100000023841858, \"20\": 0.1599999964237213, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.119999997317791, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', '1', '1', '2026-10-01 14:50:34', '13', '0000-00-00 00:00:00', '0', 'Esperanto', '0');
INSERT INTO `vehicles_custom` VALUES ('23', 'Toyota', 'Toyota Hilux', '2016', null, '[ [ 1900, 3800, 2.200000047683716, [ 0, 0.5, -0.1800000071525574 ], 75, 0.8999999761581421, 0.699999988079071, 0.5199999809265137, 5, 230, 12, 18, \"awd\", \"diesel\", 10, 0.5199999809265137, false, 32, 1.149999976158142, 0.1400000005960464, 2, 0.25, -0.119999997317791, 0.449999988079071, 0.4000000059604645, 0.2599999904632568, 0.2000000029802322, 26000, 1075839040, 1064964, \"long\", \"small\", 0 ] ]', '1', '1', '2026-09-30 02:13:14', '18', '0000-00-00 00:00:00', '0', 'Picador', '0');
INSERT INTO `vehicles_custom` VALUES ('24', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-01 15:00:22', '5', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('25', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-01 15:02:09', '5', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('26', 'Audi', 'Q7 TDI', '2007', null, '[ [ 2500, 6000, 2.7000000476837158, [ 0, 0, -0.20000000298023224 ], 80, 0.74000000953674316, 0.88999998569488525, 0.47999998927116394, 5, 160, 13, 25, \"awd\", \"petrol\", 7, 0.40000000596046448, false, 35, 1, 0.05000000074505806, 0, 0.44999998807907104, -0.20000000298023224, 0.40000000596046448, 0.30000001192092896, 0.43999999761581421, 0.34999999403953552, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '35578', '35', '2026-09-29 08:10:49', '7', '0000-00-00 00:00:00', '0', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('27', 'Audi', 'Q7 TDI', '2007', null, '[ [ 2500, 6000, 2.7000000476837158, [ 0, 0, -0.20000000298023224 ], 80, 0.74000000953674316, 0.88999998569488525, 0.47999998927116394, 5, 160, 13, 25, \"awd\", \"petrol\", 7, 0.40000000596046448, false, 35, 1, 0.05000000074505806, 0, 0.44999998807907104, -0.20000000298023224, 0.40000000596046448, 0.30000001192092896, 0.43999999761581421, 0.34999999403953552, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '35578', '35', '2026-09-29 08:10:49', '7', '0000-00-00 00:00:00', '0', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('29', 'رولز رويز', 'Classic Muscle Coupe', '2025', null, '[ { \"1\": 1550, \"2\": 4350, \"3\": 1.899999976158142, \"4\": [ 0, 0, -0.25 ], \"5\": 70, \"6\": 0.8799999952316284, \"7\": 0.8799999952316284, \"8\": 0.5, \"9\": 5, \"10\": 220, \"11\": 13, \"12\": 7, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 10, \"16\": 0.5199999809265137, \"17\": false, \"18\": 32, \"19\": 1.100000023841858, \"20\": 0.1599999964237213, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.119999997317791, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', '1', '1', '2026-10-01 19:58:21', '5', '0000-00-00 00:00:00', '0', 'Esperanto', '0');
INSERT INTO `vehicles_custom` VALUES ('30', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-01 15:20:59', '21', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('31', 'Landstalker', '', '0', null, '[ [ 1700, 5008.299805, 2.500000, [ 0, 0, -0.300000 ], 85, 0.750000, 0.850000, 0.500000, 5, 160, 10, 25, \"awd\", \"diesel\", 6.200000, 0.600000, false, 35, 2.400000, 0.080000, 0, 0.280000, -0.100000, 0.500000, 0.250000, 0.270000, 0.230000, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', '23500', '55', '2026-09-29 08:26:42', '7', '2026-09-29 08:33:29', '7', 'Landstalker\n', null);
INSERT INTO `vehicles_custom` VALUES ('32', 'BMW', 'X3 3.0i', '2004', null, '[ [ 1700, 5008.299805, 2.500000, [ 0, 0, -0.300000 ], 85, 0.750000, 0.850000, 0.500000, 5, 160, 10, 25, \"awd\", \"diesel\", 6.200000, 0.600000, false, 35, 2.400000, 0.080000, 0, 0.280000, -0.100000, 0.500000, 0.250000, 0.270000, 0.230000, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', '23500', '55', '2026-09-29 08:26:42', '7', '0000-00-00 00:00:00', '0', 'Landstalker', '0');
INSERT INTO `vehicles_custom` VALUES ('33', 'Toyota', 'Toyota Hilux', '2016', null, '[ [ 1900, 3800, 2.200000047683716, [ 0, 0.5, -0.1800000071525574 ], 75, 0.8999999761581421, 0.699999988079071, 0.5199999809265137, 5, 230, 12, 18, \"awd\", \"diesel\", 10, 0.5199999809265137, false, 32, 1.149999976158142, 0.1400000005960464, 2, 0.25, -0.119999997317791, 0.449999988079071, 0.4000000059604645, 0.2599999904632568, 0.2000000029802322, 26000, 1075839040, 1064964, \"long\", \"small\", 0 ] ]', '1', '1', '2026-09-30 19:48:31', '6', '0000-00-00 00:00:00', '0', 'Picador', '0');
INSERT INTO `vehicles_custom` VALUES ('34', 'NRG-500', '', '0', null, '[ [ 400, 200, 4, [ 0, 0.07999999821186066, -0.09000000357627869 ], 103, 2.400000095367432, 0.8999999761581421, 0.4799999892711639, 5, 400, 100, 30, \"rwd\", \"petrol\", 100, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 2, \"small\", \"small\", 4 ] ]', '0', '0', '2026-10-01 03:48:47', '5', '2026-10-01 03:50:37', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('35', 'لمورجيني', 'F4', '2002', null, '[ [ 1450, 2725.300048828125, 1.100000023841858, [ 0, 0.05000000074505806, -0.3799999952316284 ], 70, 1.5, 0.800000011920929, 0.4000000059604645, 5, 400, 40, 7, \"awd\", \"petrol\", 15, 0.6000000238418579, false, 27, 1.350000023841858, 0.2000000029802322, 0, 0.25, -0.119999997317791, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', '0', '0', '2026-10-01 19:34:32', '5', '2026-10-02 14:22:27', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('37', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-01 16:35:39', '23', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('38', 'BMW', 'X3 3.0i', '2004', null, '[ [ 1700, 5008.299805, 2.500000, [ 0, 0, -0.300000 ], 85, 0.750000, 0.850000, 0.500000, 5, 160, 10, 25, \"awd\", \"diesel\", 6.200000, 0.600000, false, 35, 2.400000, 0.080000, 0, 0.280000, -0.100000, 0.500000, 0.250000, 0.270000, 0.230000, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', '23500', '55', '2026-09-29 08:34:07', '6', '0000-00-00 00:00:00', '0', 'Landstalker', '0');
INSERT INTO `vehicles_custom` VALUES ('39', 'BMW', 'E39 530i', '2003', null, '[ [ 1903, 4000, 2.2000000476837158, [ 0, 0, -0.20000000298023224 ], 75, 0.64999997615814209, 0.75, 0.5, 5, 150, 11, 10, \"rwd\", \"petrol\", 10, 0.5, false, 35, 1, 0.079999998211860657, 0, 0.30000001192092896, -0.20000000298023224, 0.5, 0.30000001192092896, 0.20000000298023224, 0.56000000238418579, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', '23500', '20', '2026-09-29 08:34:22', '6', '0000-00-00 00:00:00', '0', 'Sentinel', '0');
INSERT INTO `vehicles_custom` VALUES ('40', 'Wayfarer', '', '0', null, '', '0', '0', '2026-10-01 16:41:43', '23', '2026-10-01 16:54:07', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('43', 'Audi', 'Q7 TDI', '2007', null, '[ [ 2500, 6000, 2.7000000476837158, [ 0, 0, -0.20000000298023224 ], 80, 0.74000000953674316, 0.88999998569488525, 0.47999998927116394, 5, 160, 13, 25, \"awd\", \"petrol\", 7, 0.40000000596046448, false, 35, 1, 0.05000000074505806, 0, 0.44999998807907104, -0.20000000298023224, 0.40000000596046448, 0.30000001192092896, 0.43999999761581421, 0.34999999403953552, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '35578', '35', '2026-09-29 08:34:49', '6', '0000-00-00 00:00:00', '0', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('45', 'Audi', 'Q7 TDI', '2007', null, '[ [ 2500, 6000, 2.7000000476837158, [ 0, 0, -0.20000000298023224 ], 80, 0.74000000953674316, 0.88999998569488525, 0.47999998927116394, 5, 160, 13, 25, \"awd\", \"petrol\", 7, 0.40000000596046448, false, 35, 1, 0.05000000074505806, 0, 0.44999998807907104, -0.20000000298023224, 0.40000000596046448, 0.30000001192092896, 0.43999999761581421, 0.34999999403953552, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '35578', '35', '2026-09-29 08:35:26', '16', '0000-00-00 00:00:00', '0', 'Huntley', '0');
INSERT INTO `vehicles_custom` VALUES ('46', 'BMW', 'E66 760Li', '2007', null, '[ [ 1600, 5000, 0.800000011920929, [ 0, 0, -0.1000000014901161 ], 75, 0.449999988079071, 0.800000011920929, 0.5, 5, 300, 35, 3, \"rwd\", \"petrol\", 6, 0.5, false, 50, 0.800000011920929, 0.05000000074505806, 0, 0.3499999940395355, -0.1500000059604645, 0.5, 0.300000011920929, 0.2000000029802322, 0.300000011920929, 35000, 1073741824, 272629760, \"long\", \"small\", 0 ] ]', '40000', '55', '2026-09-29 08:35:33', '7', '2026-09-30 03:02:28', '7', 'Elegant', '0');
INSERT INTO `vehicles_custom` VALUES ('48', 'BMW', 'X3 3.0i', '2004', null, '[ [ 1700, 5008.299805, 2.500000, [ 0, 0, -0.300000 ], 85, 0.750000, 0.850000, 0.500000, 5, 160, 10, 25, \"awd\", \"diesel\", 6.200000, 0.600000, false, 35, 2.400000, 0.080000, 0, 0.280000, -0.100000, 0.500000, 0.250000, 0.270000, 0.230000, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', '23500', '55', '2026-09-29 08:40:02', '7', '0000-00-00 00:00:00', '0', 'Landstalker', '0');
INSERT INTO `vehicles_custom` VALUES ('49', 'Dodge', 'Challenger SRT©', '2014', null, '[ [ 1500, 4000, 1.7000000476837158, [ 0, 0, -0.10000000149011612 ], 85, 0.69999998807907104, 0.89999997615814209, 0.5, 5, 185, 13, 5, \"rwd\", \"petrol\", 11, 0.40000000596046448, false, 30, 1.1000000238418579, 0.11999999731779099, 0, 0.2800000011920929, -0.20000000298023224, 0.5, 0.40000000596046448, 0.25, 0.5, 35000, 10240, 270532608, \"small\", \"small\", 0 ] ]', '30250', '75', '2026-09-29 09:16:38', '8', '0000-00-00 00:00:00', '0', 'Buffalo', '0');
INSERT INTO `vehicles_custom` VALUES ('50', 'بي إم دبليو', 'إم 4', '2000', null, null, '0', '0', '2026-10-01 17:10:39', '23', '0000-00-00 00:00:00', '0', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('52', 'بي إم دبليو', 'إم 4', '2000', null, '[ [ 1400, 2141.699951171875, 1, [ 0, 0, -0.449999988079071 ], 50, 1.799999952316284, 0.8500000238418579, 0.5, 5, 500, 35, 5, \"awd\", \"petrol\", 20, 0.550000011920929, false, 38, 1.200000047683716, 0.2000000029802322, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0, 0.25, 0.5, 35000, 3221225472.0, 12582912, \"small\", \"small\", 0 ] ]', '0', '0', '2026-10-01 20:27:21', '10', '2026-10-01 23:34:40', '10', 'بي إم دبليو إم 4', '0');
INSERT INTO `vehicles_custom` VALUES ('57', 'شيفروليه', 'كورفيت C8 ستينجراي', '2020', null, null, '0', '0', '2026-10-01 19:33:53', '5', '0000-00-00 00:00:00', '0', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('58', 'بي إم دبليو', 'إم 4', '2000', null, '[ [ 1650, 2141.699951171875, 1.700000047683716, [ 0, 0, -0.3199999928474426 ], 50, 1.5, 0.8500000238418579, 0.5, 5, 500, 200, 30, \"awd\", \"petrol\", 100, 0.1000000014901161, false, 29, 1.200000047683716, 0.2000000029802322, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0, 0.25, 0.5, 35000, 3221225472.0, 12582912, \"small\", \"small\", 0 ] ]', '0', '0', '2026-10-01 19:33:30', '5', '2026-10-01 23:04:43', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('63', 'رولز رويز', 'كلاسيك', '2025', null, null, '0', '0', '2026-10-01 17:22:27', '5', '2026-10-01 17:22:39', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('67', 'فيراري', 'سبورت', '2026', null, null, '0', '0', '2026-10-01 17:21:41', '5', '2026-10-01 17:22:08', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('70', 'نيسان', 'جي تي ار', '2025', null, '[ [ 1740, 3267.800048828125, 1.700000047683716, [ 0, 0, -0.3799999952316284 ], 75, 2.5, 0.800000011920929, 0.300000011920929, 5, 500, 200, 30, \"awd\", \"petrol\", 100, 1, false, 28, 1.25, 0.2000000029802322, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 4194304, 272629760, \"long\", \"small\", 0 ] ]', '0', '0', '2026-10-01 14:22:47', '5', '2026-10-02 09:59:30', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('73', 'Bentley (Likely)', 'Luxury Coupe (Possibly Continental GT)', '2016', null, '[ [ 1800, 4000, 1.899999976158142, [ 0, -0.1000000014901161, -0.3499999940395355 ], 75, 0.949999988079071, 0.8500000238418579, 0.5, 5, 260, 13, 9, \"rwd\", \"petrol\", 10, 0.5199999809265137, false, 29, 1.149999976158142, 0.2000000029802322, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 0, 302055424, \"small\", \"small\", 0 ] ]', '0', '0', '2026-10-01 20:29:55', '10', '0000-00-00 00:00:00', '0', 'Bentley (Likely) Luxury Coupe (Possibly Continental GT)', '0');
INSERT INTO `vehicles_custom` VALUES ('77', 'بينتلي', 'جي تي', '2016', null, null, '0', '0', '2026-10-01 13:30:58', '5', '2026-10-01 14:22:00', '5', '\n', null);
INSERT INTO `vehicles_custom` VALUES ('82', 'مركبة حصرية', 'Infernus', '2026', null, '', '0', '0', '2026-10-01 20:55:00', '10', '0000-00-00 00:00:00', '0', 'مركبة حصرية Infernus', '0');
INSERT INTO `vehicles_custom` VALUES ('83', 'بي إم دبليو', 'إم 4', '2000', null, '[ [ 1650, 2141.699951171875, 1.700000047683716, [ 0, 0, -0.3199999928474426 ], 50, 1, 0.8500000238418579, 0.5, 5, 300, 15, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 29, 1.200000047683716, 0.2000000029802322, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0, 0.25, 0.5, 35000, 3221225472.0, 12582912, \"small\", \"small\", 0 ] ]', '0', '0', '2026-10-01 21:15:23', '20', '0000-00-00 00:00:00', '0', 'بي إم دبليو إم 4', '0');
INSERT INTO `vehicles_custom` VALUES ('84', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-01 21:52:11', '10', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('86', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-02 09:05:23', '26', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('87', 'بي إم دبليو', 'إم 4', '2000', null, '[ [ 1650, 2141.699951171875, 1.700000047683716, [ 0, 0, -0.3199999928474426 ], 50, 1, 0.8500000238418579, 0.5, 5, 500, 160, 29, \"rwd\", \"petrol\", 12, 0.5, false, 29, 5, 0.1000000014901161, 0, 0.2800000011920929, -0.1000000014901161, 0.4000000059604645, 0, 0.25, 0.5, 35000, 3221225472.0, 12582912, \"small\", \"small\", 0 ] ]', '0', '0', '2026-10-02 09:14:53', '25', '2026-10-02 10:06:38', '25', 'بي إم دبليو إم 4', '0');
INSERT INTO `vehicles_custom` VALUES ('88', 'GMC Sierr', 'Yosemite', '1988', null, '[ [ 1900, 4000, 2.200000047683716, [ 0, 0.05000000074505806, -0.25 ], 75, 0.8199999928474426, 0.8500000238418579, 0.5299999713897705, 5, 200, 11, 18, \"awd\", \"diesel\", 9.5, 0.5, false, 32, 1.25, 0.1599999964237213, 5, 0.3499999940395355, -0.1599999964237213, 0.4000000059604645, 0, 0.2599999904632568, 0.2000000029802322, 26000, 64, 1064964, \"long\", \"small\", 0 ] ]', '100000', '1', '2026-10-02 09:31:22', '2', '0000-00-00 00:00:00', '0', 'Bobcat', '0');
INSERT INTO `vehicles_custom` VALUES ('89', 'Shop', 'Market', '2026', null, '[ { \"1\": 4200, \"2\": 23489.599609375, \"3\": 2.5, \"4\": [ 0, 0, -0.2000000029802322 ], \"5\": 80, \"6\": 0.8199999928474426, \"7\": 0.699999988079071, \"8\": 0.4799999892711639, \"9\": 5, \"10\": 170, \"11\": 8, \"12\": 18, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 8, \"16\": 0.5199999809265137, \"17\": false, \"18\": 26, \"19\": 0.8500000238418579, \"20\": 0.1599999964237213, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.1800000071525574, \"24\": 0.449999988079071, \"25\": 0.6000000238418579, \"26\": 0.3600000143051147, \"27\": 0.4000000059604645, \"28\": 22000, \"29\": 1073741833, \"30\": 513, \"31\": \"long\", \"33\": 13 } ]', '1', '1', '2026-10-02 09:31:33', '2', '0000-00-00 00:00:00', '0', 'Hotdog', '0');
INSERT INTO `vehicles_custom` VALUES ('90', 'GMC Sierr', 'Yosemite', '1988', null, '[ [ 1900, 4000, 2.200000047683716, [ 0, 0.05000000074505806, -0.25 ], 75, 0.8199999928474426, 0.8500000238418579, 0.5299999713897705, 5, 200, 11, 18, \"awd\", \"diesel\", 9.5, 0.5, false, 32, 1.25, 0.1599999964237213, 5, 0.3499999940395355, -0.1599999964237213, 0.4000000059604645, 0, 0.2599999904632568, 0.2000000029802322, 26000, 64, 1064964, \"long\", \"small\", 0 ] ]', '250000', '1', '2026-10-02 09:34:52', '2', '0000-00-00 00:00:00', '0', 'Bobcat', '0');
INSERT INTO `vehicles_custom` VALUES ('91', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-02 09:51:50', '25', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('92', 'مركبة حصرية', 'Infernus', '2026', null, '', '0', '0', '2026-10-02 14:01:22', '5', '0000-00-00 00:00:00', '0', 'مركبة حصرية Infernus', '0');
INSERT INTO `vehicles_custom` VALUES ('93', 'Bullet', 'Sport GT', '2024', null, null, '500000', '0', '2026-10-02 20:27:51', '27', '0000-00-00 00:00:00', '0', 'باقة هدايا اللاعبين الجدد', '0');
INSERT INTO `vehicles_custom` VALUES ('94', 'سسشيسش', 'Toyota Hilux', '2016', null, '[ [ 1900, 3800, 2.200000047683716, [ 0, 0.5, -0.1800000071525574 ], 75, 0.8999999761581421, 0.699999988079071, 0.5199999809265137, 5, 230, 12, 18, \"awd\", \"diesel\", 10, 0.5199999809265137, false, 32, 1.149999976158142, 0.1400000005960464, 2, 0.25, -0.119999997317791, 0.449999988079071, 0.4000000059604645, 0.2599999904632568, 0.2000000029802322, 26000, 1075839040, 1064964, \"long\", \"small\", 0 ] ]', '1', '1', '2026-10-02 20:43:06', '27', '0000-00-00 00:00:00', '0', 'Picador', '0');
INSERT INTO `vehicles_custom` VALUES ('98', 'Nissan', 'GT-R (R35)', '2025', null, '[ [ 1740, 3267.800048828125, 1.700000047683716, [ 0, 0, -0.3799999952316284 ], 75, 1.080000042915344, 0.800000011920929, 0.5, 5, 500, 35, 5, \"awd\", \"petrol\", 13, 0.5, false, 28, 1.25, 0.2000000029802322, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 4194304, 272629760, \"long\", \"small\", 0 ] ]', '0', '0', '2026-10-02 21:17:23', '10', '2026-10-02 21:18:10', '10', '\n', '2');

-- ----------------------------
-- Table structure for vehicles_shop
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_shop`;
CREATE TABLE `vehicles_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehmtamodel` int(11) DEFAULT '0',
  `vehbrand` mediumtext COLLATE utf8mb4_unicode_ci,
  `vehmodel` mediumtext COLLATE utf8mb4_unicode_ci,
  `vehyear` int(11) DEFAULT '2014',
  `vehprice` int(11) DEFAULT '0',
  `vehtax` int(11) DEFAULT '0',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `handling` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '1000',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `spawnto` tinyint(4) NOT NULL DEFAULT '0',
  `doortype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1076 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicles_shop
-- ----------------------------
INSERT INTO `vehicles_shop` VALUES ('1021', '422', 'GMC Sierr', 'Yosemite', '1988', '250000', '1', '2026-09-29 12:13:00', '5', '2026-10-02 22:38:07', '2', '\n', '[ [ 1900, 4000, 2.200000047683716, [ 0, 0.05000000074505806, -0.25 ], 75, 0.8199999928474426, 0.8500000238418579, 0.5299999713897705, 5, 250, 11, 18, \"awd\", \"diesel\", 9.5, 0.5, false, 32, 1.25, 0.2000000029802322, 5, 0.3499999940395355, -0.1599999964237213, 0.4000000059604645, 0, 0.2599999904632568, 0.2000000029802322, 26000, 64, 1064964, \"long\", \"small\", 0 ] ]', '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1022', '470', 'Toyota', 'Hilux', '2018', '1', '0', '2026-09-29 12:16:53', '5', '2026-10-01 08:55:44', '6', '\n', '[ [ 2300, 7968.7001953125, 1.799999952316284, [ 0, 0, -0.2800000011920929 ], 80, 1.049999952316284, 0.8500000238418579, 0.5, 5, 180, 16, 12, \"awd\", \"petrol\", 12, 0.550000011920929, false, 34, 1.25, 0.2000000029802322, 4, 0.3499999940395355, -0.07999999821186066, 0.4799999892711639, 0, 0.2800000011920929, 0.25, 40000, 8, 3145728, \"long\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1023', '478', 'GMC', 'GMC Sierra', '1998', '1', '1', '2026-09-29 12:19:08', '5', '2026-10-01 09:03:14', '6', '\n', '[ [ 2300, 3534, 1.799999952316284, [ 0, 0.5, -0.300000011920929 ], 75, 1.200000047683716, 0.699999988079071, 0.5, 4, 170, 8.5, 14, \"awd\", \"diesel\", 10, 0.5, false, 30, 1.200000047683716, 0.2000000029802322, 0, 0.3499999940395355, -0.1000000014901161, 0.5, 0, 0.2599999904632568, 0.1899999976158142, 26000, 64, 268435462, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1025', '554', 'GMC Sierra', 'Sie', '1998', '1', '1', '2026-09-29 12:24:10', '5', '2026-10-01 09:11:31', '6', '\n', '[ [ 2400, 6000, 2.200000047683716, [ 0, 0.5, -0.2000000029802322 ], 80, 0.8999999761581421, 0.800000011920929, 0.5, 5, 180, 12, 20, \"awd\", \"petrol\", 10, 0.5, false, 30, 1.299999952316284, 0.1599999964237213, 0, 0.239999994635582, -0.1599999964237213, 0.5, 0.5, 0.4399999976158142, 0.300000011920929, 40000, 538968096, 5260288, \"long\", \"small\", 0 ] ]', '1000', '0', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1026', '600', 'هايلوكس', 'Toyota', '2016', '1', '1', '2026-09-29 12:26:26', '5', '2026-10-02 21:48:34', '2', '\n', '[ [ 1900, 3800, 2.200000047683716, [ 0, 0.5, -0.1800000071525574 ], 75, 0.8999999761581421, 0.699999988079071, 0.5199999809265137, 5, 230, 12, 18, \"awd\", \"diesel\", 10, 0.5199999809265137, false, 32, 1.149999976158142, 0.1400000005960464, 2, 0.25, -0.119999997317791, 0.449999988079071, 0.4000000059604645, 0.2599999904632568, 0.2000000029802322, 26000, 1075839040, 1064964, \"long\", \"small\", 0 ] ]', '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1027', '416', 'Ambulance', 'Hospital', '1990', '1', '1', '2026-09-29 12:30:47', '5', '2026-09-30 01:32:12', '6', '\n', '[ [ 2600, 10202.7998046875, 2.5, [ 0, 0, -0.300000011920929 ], 90, 0.8500000238418579, 0.800000011920929, 0.5, 5, 190, 11, 13, \"awd\", \"diesel\", 10, 0.5199999809265137, false, 29, 1.200000047683716, 0.1500000059604645, 0, 0.4000000059604645, -0.1599999964237213, 0.5, 0, 0.5799999833106995, 0.3300000131130219, 10000, 16385, 4, \"long\", \"small\", 13 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1029', '525', 'Ford', 'Ford F-800', '2004', '1', '1', '2026-09-29 12:36:29', '5', '2026-09-30 05:34:31', '6', '\n', '[ { \"1\": 3500, \"2\": 12000, \"3\": 2.5, \"4\": [ 0, 0.300000011920929, -0.3499999940395355 ], \"5\": 80, \"6\": 0.8500000238418579, \"7\": 0.699999988079071, \"8\": 0.4799999892711639, \"9\": 5, \"10\": 190, \"11\": 13, \"12\": 18, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 9, \"16\": 0.6499999761581421, \"17\": false, \"18\": 38, \"19\": 1.600000023841858, \"20\": 0.119999997317791, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.1500000059604645, \"24\": 0.3499999940395355, \"25\": 0, \"26\": 0.2000000029802322, \"27\": 0.5, \"28\": 20000, \"29\": 2359297, \"30\": 18121216, \"31\": \"long\", \"33\": 13 } ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1032', '597', 'Ford', 'SUV', '1994', '1', '1', '2026-09-30 00:44:30', '6', '2026-09-30 05:43:50', '6', '\n', '[ [ 1900, 4500, 1.799999952316284, [ 0, 0.1500000059604645, -0.25 ], 75, 0.8500000238418579, 0.8500000238418579, 0.5199999809265137, 5, 240, 14, 10, \"rwd\", \"petrol\", 12, 0.550000011920929, false, 38, 1.200000047683716, 0.1500000059604645, 0, 0.2800000011920929, -0.1700000017881393, 0.5, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', '1000', '0', '6', null);
INSERT INTO `vehicles_shop` VALUES ('1036', '602', 'Nissan', 'Skyline GT?R R34', '2002', '1', '1', '2026-09-30 05:07:15', '6', '2026-09-30 06:00:06', '6', '\n', '[ [ 1550, 3400, 1.399999976158142, [ 0, 0, -0.300000011920929 ], 85, 1.049999952316284, 0.800000011920929, 0.5, 5, 270, 19, 10, \"awd\", \"petrol\", 12, 0.5, false, 40, 1.299999952316284, 0.119999997317791, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 1073752064, 2097152, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1038', '411', 'Pegassi', 'Infernus', '2002', '1', '1', '2026-09-30 06:20:14', '5', '2026-10-01 08:40:43', '6', '\n', '[ [ 1450, 2725.300048828125, 1.100000023841858, [ 0, 0.05000000074505806, -0.3799999952316284 ], 70, 1.049999952316284, 0.800000011920929, 0.5, 5, 320, 18, 7, \"awd\", \"petrol\", 15, 0.6499999761581421, false, 27, 1.350000023841858, 0.2000000029802322, 0, 0.25, -0.119999997317791, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1039', '545', ' MINI', 'Cooper S', '2002', '11', '1', '2026-09-30 06:21:27', '5', '2026-10-01 09:28:42', '6', '\n', '[ [ 1450, 4000, 1.799999952316284, [ 0, 0, -0.2199999988079071 ], 75, 1.149999976158142, 0.75, 0.5, 5, 220, 11, 9, \"fwd\", \"petrol\", 10, 0.550000011920929, false, 28, 0.8999999761581421, 0.2000000029802322, 0, 0.1000000014901161, -0.1000000014901161, 0.5, 0.5, 0.1800000071525574, 0.449999988079071, 20000, 0, 8388608, \"big\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1040', '579', 'جي إم سي', 'يوكون دينالي', '2000', '1', '1', '2026-09-30 12:54:07', '5', '2026-10-01 14:29:14', '6', '\n', '[ [ 2400, 6000, 2.200000047683716, [ 0, 0, -0.449999988079071 ], 80, 0.949999988079071, 0.8899999856948853, 0.5, 5, 230, 11, 12, \"awd\", \"petrol\", 10.5, 0.5199999809265137, false, 26, 1.049999952316284, 0.2000000029802322, 0, 0.449999988079071, -0.119999997317791, 0.5, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1041', '411', 'Lamborghini', 'Urus', '2001', '1', '1', '2026-10-01 06:31:38', '5', '2026-10-01 13:04:23', '6', '\n', '[ [ 1900, 2725.300048828125, 1.799999952316284, [ 0, 0, -0.4000000059604645 ], 70, 1, 0.800000011920929, 0.5, 5, 250, 13, 14, \"awd\", \"petrol\", 11, 0.550000011920929, false, 27, 1.100000023841858, 0.2000000029802322, 0, 0.25, -0.119999997317791, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1042', '588', 'متجر', 'متنقل', '2026', '1', '1', '2026-10-01 08:46:07', '6', '2026-10-02 09:34:19', '2', '\n', '[ { \"1\": 4200, \"2\": 23489.599609375, \"3\": 2.5, \"4\": [ 0, 0, -0.2000000029802322 ], \"5\": 80, \"6\": 0.8199999928474426, \"7\": 0.699999988079071, \"8\": 0.4799999892711639, \"9\": 5, \"10\": 170, \"11\": 8, \"12\": 18, \"13\": \"rwd\", \"14\": \"diesel\", \"15\": 8, \"16\": 0.5199999809265137, \"17\": false, \"18\": 26, \"19\": 0.8500000238418579, \"20\": 0.1599999964237213, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.1800000071525574, \"24\": 0.449999988079071, \"25\": 0.6000000238418579, \"26\": 0.3600000143051147, \"27\": 0.4000000059604645, \"28\": 22000, \"29\": 1073741833, \"30\": 513, \"31\": \"long\", \"33\": 13 } ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1043', '506', 'Custom Mod', 'GT', '2015', '1', '1', '2026-10-01 13:13:28', '6', '2026-10-01 13:17:30', '6', '\n', '[ [ 1400, 2800, 1.600000023841858, [ 0, -0.2000000029802322, -0.3499999940395355 ], 70, 1.049999952316284, 0.8600000143051147, 0.5, 5, 300, 15, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 27, 1.25, 0.2000000029802322, 0, 0.25, -0.1000000014901161, 0.5, 0.300000011920929, 0.4000000059604645, 0.5400000214576721, 105000, 1073750020, 2129920, \"long\", \"long\", 1 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1044', '566', 'Bentley (Likely)', 'Luxury Coupe (Possibly Continental GT)', '2016', '1', '1', '2026-10-01 13:19:17', '6', '2026-10-01 13:23:51', '6', '\n', '[ [ 1800, 4000, 1.899999976158142, [ 0, -0.1000000014901161, -0.3499999940395355 ], 75, 0.949999988079071, 0.8500000238418579, 0.5, 5, 260, 13, 9, \"rwd\", \"petrol\", 10, 0.5199999809265137, false, 29, 1.149999976158142, 0.2000000029802322, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 0, 302055424, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1045', '541', 'Bugatti (Likely)', 'Chiron (Possibly)', '2020', '1', '1', '2026-10-01 13:26:31', '6', '2026-10-01 15:40:16', '6', '\n', '[ [ 2150, 2500, 1.5, [ 0, 0, -0.6000000238418579 ], 70, 1.149999976158142, 0.8999999761581421, 0.3799999952316284, 5, 310, 11.5, 10, \"awd\", \"petrol\", 11, 0.550000011920929, false, 20, 1.200000047683716, 0.2000000029802322, 5, 0.25, -0.1800000071525574, 0.5, 0.300000011920929, 0.1500000059604645, 0.5400000214576721, 105000, 3221233668.0, 2113536, \"long\", \"long\", 1 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1046', '517', 'Nissan', 'GT-R (R35)', '2025', '1', '1', '2026-10-01 13:31:32', '6', '2026-10-01 13:33:03', '6', '\n', '[ [ 1740, 3267.800048828125, 1.700000047683716, [ 0, 0, -0.3799999952316284 ], 75, 1.080000042915344, 0.800000011920929, 0.5, 5, 320, 16, 9, \"awd\", \"petrol\", 13, 0.5199999809265137, false, 28, 1.25, 0.2000000029802322, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 4194304, 272629760, \"long\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1047', '503', 'Mercedes-Benz', 'AMG GT 4-Door Coupe', '2020', '1', '1', '2026-10-01 13:36:27', '6', '2026-10-02 22:17:08', '5', '\n', '[ [ 1950, 4500, 1.700000047683716, [ 0, 0, -0.3499999940395355 ], 70, 1.049999952316284, 0.800000011920929, 0.5, 5, 290, 14, 9, \"awd\", \"petrol\", 12, 0.5, false, 28, 1.200000047683716, 0.2000000029802322, 10, 0.2899999916553497, -0.1000000014901161, 0.5, 0.4000000059604645, 0.2000000029802322, 0.5600000023841858, 45000, 1073750020, 12582912, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1048', '502', 'frari', 'Exotic Sports Car', '2026', '1', '1', '2026-10-01 13:40:27', '6', '2026-10-01 13:42:06', '6', '\n', '[ [ 1500, 4500, 1.700000047683716, [ 0, 0, -0.3799999952316284 ], 70, 1, 0.800000011920929, 0.5, 5, 300, 15, 9, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 27, 1.25, 0.2000000029802322, 10, 0.2899999916553497, -0.119999997317791, 0.5, 0.4000000059604645, 0.2000000029802322, 0.5600000023841858, 45000, 1073750020, 12582912, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1049', '494', 'lambrjene', 'Hypercar', '2015', '1', '1', '2026-10-01 13:46:02', '6', '2026-10-01 13:47:30', '6', '\n', '[ [ 1450, 4500, 1.799999952316284, [ 0, 0, -0.300000011920929 ], 70, 0.949999988079071, 0.800000011920929, 0.5, 5, 330, 18, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 32, 1.149999976158142, 0.1800000071525574, 10, 0.2899999916553497, -0.119999997317791, 0.5, 0.4000000059604645, 0.2000000029802322, 0.5600000023841858, 45000, 1073750020, 12582912, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1050', '419', 'رولز رويز', 'Classic Muscle Coupe', '2025', '1', '1', '2026-10-01 13:52:16', '6', '2026-10-02 09:34:09', '2', '\n', '[ { \"1\": 1550, \"2\": 4350, \"3\": 1.899999976158142, \"4\": [ 0, 0, -0.25 ], \"5\": 70, \"6\": 0.8799999952316284, \"7\": 0.8799999952316284, \"8\": 0.5, \"9\": 5, \"10\": 220, \"11\": 13, \"12\": 7, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 10, \"16\": 0.5199999809265137, \"17\": false, \"18\": 32, \"19\": 1.100000023841858, \"20\": 0.1599999964237213, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.119999997317791, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1051', '411', 'لامبورجيني', 'اخر اصدار', '2025', '1', '1', '2026-10-01 13:56:43', '6', '2026-10-01 13:58:53', '6', '\n', '[ [ 1400, 2725.300048828125, 1.700000047683716, [ 0, 0, -0.3499999940395355 ], 70, 0.949999988079071, 0.800000011920929, 0.5, 5, 310, 17, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 34, 1.200000047683716, 0.1800000071525574, 0, 0.25, -0.1500000059604645, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1052', '496', 'بي إم دبليو', 'إم 4', '2000', '1', '1', '2026-10-01 14:01:42', '6', '2026-10-01 14:14:38', '6', '\n', '[ [ 1650, 2141.699951171875, 1.700000047683716, [ 0, 0, -0.3199999928474426 ], 50, 1, 0.8500000238418579, 0.5, 5, 300, 15, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 29, 1.200000047683716, 0.2000000029802322, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0, 0.25, 0.5, 35000, 3221225472.0, 12582912, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1053', '602', 'فورد', 'موستانج GT', '1234', '1', '1', '2026-10-01 14:08:57', '6', '2026-10-01 14:10:59', '6', '\n', '[ [ 1700, 3400, 1.799999952316284, [ 0, 0, -0.3199999928474426 ], 85, 1.019999980926514, 0.800000011920929, 0.5, 5, 280, 15, 9, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 29, 1.149999976158142, 0.2000000029802322, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 1073752064, 2097152, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1054', '402', 'شيفروليه', 'كورفيت C8 ستينجراي', '2020', '1', '1', '2026-10-01 14:16:31', '6', '2026-10-02 23:09:10', '2', '\n', '[ [ 1530, 4000, 1.5, [ 0, 0, -0.25 ], 85, 1, 0.8999999761581421, 0.5, 5, 240, 14, 25, \"rwd\", \"petrol\", 8, 0.5, false, 32, 1, 0.2000000029802322, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 10240, 270532608, \"small\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1055', '467', 'بي إم دبليو', 'إم 4 F82', '2024', '1', '1', '2026-10-01 14:20:28', '6', '2026-10-01 14:22:16', '6', '\n', '[ [ 1570, 4529.89990234375, 1.799999952316284, [ 0, 0, -0.3199999928474426 ], 75, 1.019999980926514, 0.75, 0.5, 5, 300, 15, 8, \"rwd\", \"petrol\", 12, 0.5199999809265137, false, 29, 1.200000047683716, 0.2000000029802322, 0, 0.3499999940395355, -0.1000000014901161, 0.5, 0.5, 0.2300000041723251, 0.449999988079071, 20000, 0, 276824064, \"big\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1056', '400', 'لكزس', 'LX 570', '2021', '1', '1', '2026-10-01 14:36:31', '6', '2026-10-01 14:38:06', '6', '\n', '[ [ 2550, 4200, 2.299999952316284, [ 0, 0, -0.449999988079071 ], 85, 0.9800000190734863, 0.8199999928474426, 0.5, 5, 230, 11.5, 12, \"awd\", \"diesel\", 11, 0.5299999713897705, false, 26, 1.049999952316284, 0.2000000029802322, 0.07999999821186066, 0.2800000011920929, -0.1400000005960464, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1057', '401', 'فيات', 'ميني', '1234', '40000', '5', '2026-10-02 23:10:25', '2', '2026-10-02 23:24:14', '2', '\n', '[ [ 1450, 2200, 2, [ 0, 0, -0.3499999940395355 ], 70, 1, 0.800000011920929, 0.5, 5, 130, 6, 8, \"fwd\", \"petrol\", 7, 0.5199999809265137, false, 22, 1, 0.2000000029802322, 0, 0.3100000023841858, -0.1800000071525574, 0.5, 0, 0.2599999904632568, 0.5, 9000, 1, 1, \"long\", \"long\", 0 ] ]', '1000', '1', '2', null);
INSERT INTO `vehicles_shop` VALUES ('1058', '445', 'هاتشباك', 'رياضية', '2000', '100000', '5', '2026-10-02 23:25:01', '2', '2026-10-02 23:28:50', '2', '\n', '[ [ 1650, 3851.39990234375, 1.700000047683716, [ 0, 0, -0.1500000059604645 ], 75, 0.8500000238418579, 0.8999999761581421, 0.5, 5, 130, 6, 10, \"fwd\", \"petrol\", 8, 0.550000011920929, false, 24, 1.100000023841858, 0.2000000029802322, 0, 0.2700000107288361, -0.119999997317791, 0.5, 0.550000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1059', '529', 'سوزوكي', 'رياضيه', '1234', '250000', '1', '2026-10-02 23:32:22', '2', '2026-10-02 23:34:08', '2', '\n', '[ [ 1650, 4350, 1.700000047683716, [ 0, 0, -0.25 ], 70, 0.8999999761581421, 0.800000011920929, 0.5, 4, 180, 8, 10, \"fwd\", \"petrol\", 8, 0.550000011920929, false, 24, 1.100000023841858, 0.2000000029802322, 0, 0.3199999928474426, -0.119999997317791, 0.5, 0, 0.2599999904632568, 0.5400000214576721, 19000, 1073741824, 0, \"long\", 0 ] ]', '1000', '1', '2', null);
INSERT INTO `vehicles_shop` VALUES ('1060', '589', 'ميني', 'كوبر', '2000', '240000', '1', '2026-10-02 23:35:50', '2', '2026-10-02 23:39:25', '2', '\n', '[ [ 1550, 3000, 1.799999952316284, [ 0, 0, -0.25 ], 80, 0.8999999761581421, 0.8999999761581421, 0.5, 5, 160, 8, 10, \"fwd\", \"petrol\", 8, 0.550000011920929, false, 22, 1.100000023841858, 0.2000000029802322, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0, 0.25, 0.5, 35000, 8192, 12582912, \"small\", \"small\", 0 ] ]', '1000', '1', '2', null);
INSERT INTO `vehicles_shop` VALUES ('1061', '403', 'شاحنه', 'مدرعة ثقيلة', '1990', '1000000', '1', '2026-10-02 23:41:58', '2', '2026-10-02 23:45:55', '2', '\n', '[ [ 2600, 19953.19921875, 2.5, [ 0, 0, -0.5 ], 90, 0.8199999928474426, 0.6499999761581421, 0.5, 5, 140, 5.5, 16, \"fwd\", \"diesel\", 9, 0.550000011920929, false, 16, 1.5, 0.2000000029802322, 0, 0.4000000059604645, -0.03999999910593033, 0.5, 0, 0.6499999761581421, 0.25, 35000, 24576, 512, \"long\", \"small\", 2 ] ]', '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1062', '414', 'Iveco', 'Eurocargo', '2026', '2000000', '1', '2026-10-02 23:46:51', '2', '2026-10-02 23:55:23', '2', '\n', '[ [ 3500, 14000, 3, [ 0, 0, -0.2000000029802322 ], 80, 0.75, 0.8500000238418579, 0.5, 5, 140, 6, 14, \"fwd\", \"diesel\", 7, 0.550000011920929, false, 22, 1.5, 0.1500000059604645, 5, 0.300000011920929, -0.1000000014901161, 0.5, 0, 0.4600000083446503, 0.5299999713897705, 22000, 16520, 0, \"long\", 0 ] ]', '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1063', '435', 'SL-400e', 'مقطورة مغلقة', '2026', '2500000', '1', '2026-10-02 23:54:02', '2', '2026-10-02 23:55:31', '2', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1064', '440', 'GMC', 'Vandura', '1990', '1000000', '1', '2026-10-02 23:56:28', '2', '2026-10-02 23:58:06', '2', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1065', '450', 'Dump Trailer', 'مقطورة نقل ثقيل', '2000', '2000000', '1', '2026-10-02 23:59:53', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1066', '470', 'SUV', 'دفع رباعي', '2005', '500000', '1', '2026-10-03 00:02:08', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1067', '420', 'تاكسي', 'اجره', '2026', '750000', '1', '2026-10-03 00:04:56', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '3', null);
INSERT INTO `vehicles_shop` VALUES ('1068', '524', 'Iveco', 'Stralis', '2019', '5000000', '1', '2026-10-03 00:06:50', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1069', '555', 'Chevrolet', 'Chevrolet Kodiak', '2002', '750000', '1', '2026-10-03 00:08:07', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '2', null);
INSERT INTO `vehicles_shop` VALUES ('1070', '543', 'CMG', 'Square Body', '1990', '100000', '1', '2026-10-03 00:10:38', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '1', null);
INSERT INTO `vehicles_shop` VALUES ('1071', '479', 'مرسيدس', 'هاي كلاس', '2025', '150000000', '1', '2026-10-03 00:13:17', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '0', '0', null);
INSERT INTO `vehicles_shop` VALUES ('1072', '596', 'شرطه', 'متدربين', '1990', '500000', '1', '2026-10-03 00:17:54', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '3', null);
INSERT INTO `vehicles_shop` VALUES ('1073', '416', 'اسعاف', 'انقاظ سريع', '2000', '750000', '1', '2026-10-03 00:25:34', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '3', null);
INSERT INTO `vehicles_shop` VALUES ('1074', '525', 'Towtruck', 'سحب السيارات', '2000', '500000', '1', '2026-10-03 00:29:43', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '3', null);
INSERT INTO `vehicles_shop` VALUES ('1075', '578', 'DFT-30', 'سحب ميكانيكي', '1990', '750000', '1', '2026-10-03 00:36:52', '2', '0000-00-00 00:00:00', '0', '\n', null, '1000', '1', '3', null);

-- ----------------------------
-- Table structure for web_shop
-- ----------------------------
DROP TABLE IF EXISTS `web_shop`;
CREATE TABLE `web_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of web_shop
-- ----------------------------

-- ----------------------------
-- Table structure for wiretransfers
-- ----------------------------
DROP TABLE IF EXISTS `wiretransfers`;
CREATE TABLE `wiretransfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) DEFAULT '0',
  `to` int(11) DEFAULT '0',
  `amount` int(11) NOT NULL,
  `reason` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  `from_card` varchar(45) DEFAULT NULL,
  `to_card` varchar(45) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=651 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wiretransfers
-- ----------------------------
INSERT INTO `wiretransfers` VALUES ('464', '-57', '7', '874', 'BANKINTEREST', '2026-09-27 10:36:41', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('465', '-57', '8', '874', 'BANKINTEREST', '2026-09-27 10:36:41', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('466', '-57', '6', '874', 'BANKINTEREST', '2026-09-27 10:36:42', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('467', '-57', '7', '880', 'BANKINTEREST', '2026-09-27 20:24:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('468', '-57', '7', '885', 'BANKINTEREST', '2026-09-28 00:29:50', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('469', '-57', '8', '880', 'BANKINTEREST', '2026-09-28 00:29:50', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('470', '-57', '7', '891', 'BANKINTEREST', '2026-09-28 03:56:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('471', '-57', '8', '885', 'BANKINTEREST', '2026-09-28 07:56:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('472', '-57', '7', '896', 'BANKINTEREST', '2026-09-28 07:56:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('473', '-57', '7', '902', 'BANKINTEREST', '2026-09-28 08:56:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('474', '-57', '8', '891', 'BANKINTEREST', '2026-09-28 08:56:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('475', '-57', '7', '907', 'BANKINTEREST', '2026-09-28 10:25:28', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('476', '-57', '8', '896', 'BANKINTEREST', '2026-09-28 10:25:28', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('477', '-57', '7', '913', 'BANKINTEREST', '2026-09-29 01:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('478', '-57', '8', '902', 'BANKINTEREST', '2026-09-29 01:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('479', '-57', '7', '918', 'BANKINTEREST', '2026-09-29 02:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('480', '-57', '16', '874', 'BANKINTEREST', '2026-09-29 02:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('481', '-57', '7', '924', 'BANKINTEREST', '2026-09-29 03:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('482', '-57', '16', '880', 'BANKINTEREST', '2026-09-29 03:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('483', '-57', '8', '907', 'BANKINTEREST', '2026-09-29 03:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('484', '8', '-3', '35', 'VEHICLETAX', '2026-09-29 03:14:56', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('485', '-57', '7', '929', 'BANKINTEREST', '2026-09-29 04:39:01', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('486', '-57', '8', '912', 'BANKINTEREST', '2026-09-29 04:39:01', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('487', '-57', '7', '934', 'BANKINTEREST', '2026-09-29 05:39:01', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('488', '-57', '9', '874', 'BANKINTEREST', '2026-09-29 05:39:02', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('489', '-57', '8', '918', 'BANKINTEREST', '2026-09-29 05:39:02', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('490', '8', '-3', '35', 'VEHICLETAX', '2026-09-29 05:39:02', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('491', '-57', '7', '940', 'BANKINTEREST', '2026-09-29 06:59:48', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('492', '7', '-3', '50', 'VEHICLETAX', '2026-09-29 06:59:48', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('493', '-57', '7', '945', 'BANKINTEREST', '2026-09-29 07:59:48', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('494', '7', '-3', '75', 'VEHICLETAX', '2026-09-29 07:59:48', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('495', '-57', '7', '950', 'BANKINTEREST', '2026-09-29 09:37:45', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('496', '7', '-3', '25', 'VEHICLETAX', '2026-09-29 09:37:45', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('497', '-57', '10', '874', 'BANKINTEREST', '2026-09-29 09:37:45', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('498', '-57', '7', '955', 'BANKINTEREST', '2026-09-29 10:37:45', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('499', '-57', '10', '880', 'BANKINTEREST', '2026-09-29 10:37:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('500', '-57', '7', '961', 'BANKINTEREST', '2026-09-29 11:37:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('501', '-57', '16', '885', 'BANKINTEREST', '2026-09-29 11:37:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('502', '-57', '16', '891', 'BANKINTEREST', '2026-09-29 12:37:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('503', '-57', '7', '966', 'BANKINTEREST', '2026-09-29 12:37:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('504', '-57', '1', '5000', 'BANKINTEREST', '2026-09-29 14:52:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('505', '-57', '1', '5000', 'BANKINTEREST', '2026-09-29 16:52:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('506', '-57', '7', '972', 'BANKINTEREST', '2026-09-29 21:50:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('507', '-57', '8', '923', 'BANKINTEREST', '2026-09-30 01:17:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('508', '-57', '7', '977', 'BANKINTEREST', '2026-09-30 03:04:25', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('509', '-57', '9', '880', 'BANKINTEREST', '2026-09-30 03:04:25', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('510', '9', '-3', '55', 'VEHICLETAX', '2026-09-30 03:04:25', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('511', '-57', '19', '874', 'BANKINTEREST', '2026-09-30 03:04:25', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('512', '-57', '16', '896', 'BANKINTEREST', '2026-09-30 03:04:26', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('513', '-57', '19', '880', 'BANKINTEREST', '2026-09-30 04:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('514', '-57', '16', '902', 'BANKINTEREST', '2026-09-30 04:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('515', '-57', '7', '983', 'BANKINTEREST', '2026-09-30 04:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('516', '7', '-3', '35', 'VEHICLETAX', '2026-09-30 04:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('517', '-57', '8', '929', 'BANKINTEREST', '2026-09-30 04:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('518', '8', '-3', '35', 'VEHICLETAX', '2026-09-30 04:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('519', '-57', '10', '885', 'BANKINTEREST', '2026-09-30 04:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('520', '-57', '7', '988', 'BANKINTEREST', '2026-09-30 05:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('521', '-57', '8', '934', 'BANKINTEREST', '2026-09-30 05:22:39', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('522', '-57', '10', '891', 'BANKINTEREST', '2026-09-30 05:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('523', '-57', '16', '907', 'BANKINTEREST', '2026-09-30 05:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('524', '-57', '7', '993', 'BANKINTEREST', '2026-09-30 06:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('525', '-57', '8', '939', 'BANKINTEREST', '2026-09-30 06:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('526', '-57', '16', '913', 'BANKINTEREST', '2026-09-30 06:22:40', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('527', '-57', '9', '885', 'BANKINTEREST', '2026-09-30 09:01:46', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('528', '-57', '7', '999', 'BANKINTEREST', '2026-09-30 10:43:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('529', '7', '-3', '25', 'VEHICLETAX', '2026-09-30 10:43:54', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('530', '-57', '10', '896', 'BANKINTEREST', '2026-09-30 13:02:31', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('531', '-57', '7', '1004', 'BANKINTEREST', '2026-09-30 13:02:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('532', '7', '-3', '25', 'VEHICLETAX', '2026-09-30 13:02:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('533', '-57', '7', '1009', 'BANKINTEREST', '2026-09-30 14:02:31', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('534', '-57', '10', '902', 'BANKINTEREST', '2026-09-30 14:02:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('535', '-57', '8', '945', 'BANKINTEREST', '2026-09-30 15:02:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('536', '-57', '10', '907', 'BANKINTEREST', '2026-09-30 15:02:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('537', '-57', '7', '1014', 'BANKINTEREST', '2026-09-30 17:27:36', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('538', '7', '-3', '61', 'VEHICLETAX', '2026-09-30 17:27:36', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('539', '-57', '7', '1020', 'BANKINTEREST', '2026-10-01 02:29:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('540', '-57', '7', '1025', 'BANKINTEREST', '2026-10-01 03:29:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('541', '7', '-3', '35', 'VEHICLETAX', '2026-10-01 03:29:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('542', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 04:29:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('543', '7', '-3', '25', 'VEHICLETAX', '2026-10-01 04:29:44', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('544', '-57', '7', '39', 'BANKINTEREST', '2026-10-01 06:09:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('545', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 06:09:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('546', '7', '-3', '25', 'VEHICLETAX', '2026-10-01 06:09:32', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('547', '-57', '7', '59', 'BANKINTEREST', '2026-10-01 08:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('548', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 08:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('549', '7', '-3', '1', 'VEHICLETAX', '2026-10-01 08:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('550', '-57', '8', '950', 'BANKINTEREST', '2026-10-01 08:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('551', '-57', '8', '956', 'BANKINTEREST', '2026-10-01 09:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('552', '8', '-3', '26', 'VEHICLETAX', '2026-10-01 09:30:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('553', '-57', '8', '961', 'BANKINTEREST', '2026-10-01 10:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('554', '8', '-3', '35', 'VEHICLETAX', '2026-10-01 10:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('555', '-57', '7', '76', 'BANKINTEREST', '2026-10-01 10:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('556', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 10:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('557', '7', '-3', '1', 'VEHICLETAX', '2026-10-01 10:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('558', '-57', '8', '966', 'BANKINTEREST', '2026-10-01 11:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('559', '-57', '7', '91', 'BANKINTEREST', '2026-10-01 11:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('560', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 11:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('561', '-57', '10', '913', 'BANKINTEREST', '2026-10-01 11:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('562', '-57', '8', '972', 'BANKINTEREST', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('563', '8', '-3', '25', 'VEHICLETAX', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('564', '-57', '7', '104', 'BANKINTEREST', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('565', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('566', '7', '-3', '25', 'VEHICLETAX', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('567', '-57', '10', '918', 'BANKINTEREST', '2026-10-01 12:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('568', '-57', '8', '977', 'BANKINTEREST', '2026-10-01 13:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('569', '8', '-3', '29', 'VEHICLETAX', '2026-10-01 13:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('570', '-57', '7', '115', 'BANKINTEREST', '2026-10-01 13:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('571', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 13:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('572', '-57', '8', '982', 'BANKINTEREST', '2026-10-01 14:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('573', '8', '-3', '110', 'VEHICLETAX', '2026-10-01 14:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('574', '-57', '7', '127', 'BANKINTEREST', '2026-10-01 14:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('575', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 14:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('576', '-57', '10', '924', 'BANKINTEREST', '2026-10-01 14:35:07', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('577', '-57', '7', '138', 'BANKINTEREST', '2026-10-01 16:07:22', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('578', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 16:07:22', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('579', '-57', '7', '149', 'BANKINTEREST', '2026-10-01 17:07:23', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('580', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 17:07:23', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('581', '-57', '8', '987', 'BANKINTEREST', '2026-10-01 18:07:22', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('582', '-57', '7', '159', 'BANKINTEREST', '2026-10-01 18:07:23', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('583', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 18:07:23', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('584', '7', '-3', '1', 'VEHICLETAX', '2026-10-01 18:07:23', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('585', '-57', '7', '169', 'BANKINTEREST', '2026-10-01 20:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('586', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 20:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('587', '7', '-3', '1', 'VEHICLETAX', '2026-10-01 20:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('588', '-57', '7', '178', 'BANKINTEREST', '2026-10-01 21:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('589', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 21:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('590', '-57', '15', '874', 'BANKINTEREST', '2026-10-01 21:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('591', '-57', '12', '874', 'BANKINTEREST', '2026-10-01 21:14:11', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('592', '-57', '7', '189', 'BANKINTEREST', '2026-10-01 23:32:24', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('593', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 23:32:24', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('594', '-57', '12', '880', 'BANKINTEREST', '2026-10-01 23:32:24', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('595', '-57', '7', '200', 'BANKINTEREST', '2026-10-01 23:22:37', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('596', '-3', '7', '200', 'STATEBENEFITS', '2026-10-01 23:22:37', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('597', '-57', '7', '210', 'BANKINTEREST', '2026-10-02 08:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('598', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 08:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('599', '-57', '7', '220', 'BANKINTEREST', '2026-10-02 09:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('600', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 09:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('601', '-57', '25', '874', 'BANKINTEREST', '2026-10-02 10:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('602', '-57', '7', '230', 'BANKINTEREST', '2026-10-02 12:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('603', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 12:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('604', '-57', '7', '240', 'BANKINTEREST', '2026-10-02 14:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('605', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 14:51:53', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('606', '-57', '2', '992', 'BANKINTEREST', '2026-10-02 19:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('607', '-57', '15', '880', 'BANKINTEREST', '2026-10-02 19:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('608', '-57', '7', '249', 'BANKINTEREST', '2026-10-02 19:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('609', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 19:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('610', '-57', '7', '259', 'BANKINTEREST', '2026-10-02 21:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('611', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 21:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('612', '-57', '16', '918', 'BANKINTEREST', '2026-10-02 21:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('613', '-57', '2', '998', 'BANKINTEREST', '2026-10-02 21:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('614', '-57', '12', '885', 'BANKINTEREST', '2026-10-02 21:11:09', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('615', '7', '0', '8000', 'Interior Purchase', '2026-10-02 22:39:58', '5', null, null, 'Garage (ID: 4)');
INSERT INTO `wiretransfers` VALUES ('616', '-57', '7', '268', 'BANKINTEREST', '2026-10-02 22:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('617', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 22:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('618', '-57', '2', '1003', 'BANKINTEREST', '2026-10-02 22:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('619', '7', '0', '8000', 'Interior Purchase', '2026-10-02 23:10:36', '5', null, null, 'Garage (ID: 5)');
INSERT INTO `wiretransfers` VALUES ('620', '7', '0', '8000', 'Interior Purchase', '2026-10-02 23:34:44', '5', null, null, 'Garage (ID: 6)');
INSERT INTO `wiretransfers` VALUES ('621', '7', '0', '0', 'Interior Purchase', '2026-10-02 23:41:03', '5', null, null, '\'\' \'\'\'\' (ID: 8)');
INSERT INTO `wiretransfers` VALUES ('622', '7', '0', '0', 'Interior Purchase', '2026-10-02 23:49:44', '5', null, null, '??? ???????? (ID: 9)');
INSERT INTO `wiretransfers` VALUES ('623', '-57', '7', '277', 'BANKINTEREST', '2026-10-02 23:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('624', '-3', '7', '200', 'STATEBENEFITS', '2026-10-02 23:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('625', '-57', '2', '1009', 'BANKINTEREST', '2026-10-02 23:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('626', '2', '-3', '50', 'VEHICLETAX', '2026-10-02 23:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('627', '-57', '12', '891', 'BANKINTEREST', '2026-10-02 23:51:27', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('628', '7', '0', '0', 'Interior Purchase', '2026-10-03 00:00:13', '5', null, null, '??? ???????? (ID: 10)');
INSERT INTO `wiretransfers` VALUES ('629', '-57', '7', '286', 'BANKINTEREST', '2026-10-03 01:37:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('630', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 01:37:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('631', '-57', '2', '1014', 'BANKINTEREST', '2026-10-03 01:37:18', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('632', '-57', '7', '294', 'BANKINTEREST', '2026-10-03 02:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('633', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 02:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('634', '-57', '7', '303', 'BANKINTEREST', '2026-10-03 03:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('635', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 03:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('636', '-57', '2', '1019', 'BANKINTEREST', '2026-10-03 03:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('637', '-57', '7', '311', 'BANKINTEREST', '2026-10-03 04:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('638', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 04:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('639', '-57', '2', '1025', 'BANKINTEREST', '2026-10-03 04:37:20', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('640', '-57', '7', '320', 'BANKINTEREST', '2026-10-03 05:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('641', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 05:37:19', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('642', '-57', '2', '1030', 'BANKINTEREST', '2026-10-03 05:37:20', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('643', '-57', '2', '1035', 'BANKINTEREST', '2026-10-03 07:35:16', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('644', '-57', '7', '328', 'BANKINTEREST', '2026-10-03 07:35:16', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('645', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 07:35:16', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('646', '-57', '7', '336', 'BANKINTEREST', '2026-10-03 08:35:17', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('647', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 08:35:17', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('648', '-57', '2', '1041', 'BANKINTEREST', '2026-10-03 09:35:17', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('649', '-57', '7', '344', 'BANKINTEREST', '2026-10-03 09:35:17', '6', null, null, null);
INSERT INTO `wiretransfers` VALUES ('650', '-3', '7', '200', 'STATEBENEFITS', '2026-10-03 09:35:17', '6', null, null, null);

-- ----------------------------
-- Table structure for worlditems
-- ----------------------------
DROP TABLE IF EXISTS `worlditems`;
CREATE TABLE `worlditems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) DEFAULT '0',
  `itemvalue` text,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `creationdate` datetime DEFAULT NULL,
  `rx` float DEFAULT '0',
  `ry` float DEFAULT '0',
  `rz` float DEFAULT '0',
  `creator` int(10) unsigned DEFAULT '0',
  `protected` int(11) NOT NULL DEFAULT '0',
  `perm_use` int(11) NOT NULL DEFAULT '1',
  `perm_move` int(11) NOT NULL DEFAULT '1',
  `perm_pickup` int(11) NOT NULL DEFAULT '1',
  `perm_use_data` text,
  `perm_move_data` text,
  `perm_pickup_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of worlditems
-- ----------------------------

-- ----------------------------
-- Table structure for worlditems_data
-- ----------------------------
DROP TABLE IF EXISTS `worlditems_data`;
CREATE TABLE `worlditems_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of worlditems_data
-- ----------------------------


-- =========================================================
-- VALORIA STORE <-> MTA database integration
-- Target database: play
-- Run AFTER importing play.sql
-- =========================================================

USE `play`;

CREATE TABLE IF NOT EXISTS `valoria_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `delivery_type` varchar(32) NOT NULL DEFAULT 'manual',
  `delivery_value` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_valoria_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `valoria_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` varchar(64) NOT NULL,
  `account_id` int NOT NULL,
  `character_id` int DEFAULT 0,
  `account_name` varchar(100) NOT NULL,
  `character_name` varchar(255) DEFAULT '',
  `website_email` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `items_json` longtext NOT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `status` enum('PENDING','APPROVED','REJECTED','DELIVERED','DELIVERY_FAILED') NOT NULL DEFAULT 'PENDING',
  `admin_note` text,
  `approved_by` varchar(255) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `delivery_result` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_valoria_order_id` (`order_id`),
  KEY `idx_valoria_account` (`account_id`),
  KEY `idx_valoria_status` (`status`),
  KEY `idx_valoria_tx` (`transaction_id`),
  CONSTRAINT `fk_valoria_order_account`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Optional audit log for every approval/rejection/delivery.
CREATE TABLE IF NOT EXISTS `valoria_order_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` varchar(64) NOT NULL,
  `action` varchar(50) NOT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_valoria_log_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Seed/update the 72 products from the website catalog.
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-001','تصفير السالبات + تغيير اسم الحساب','خدمات',5,'USD','manual',NULL,'') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-002','بورش 911','مركبات',20,'USD','vehicle',NULL,'assets/products/item-002.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-003','بي إم دبليو جديدة','مركبات',30,'USD','vehicle',NULL,'assets/products/item-003.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-004','لامبورجيني 2024','مركبات',30,'USD','vehicle',NULL,'assets/products/item-004.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-005','روز جديد','مركبات',30,'USD','vehicle',NULL,'assets/products/item-005.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-006','برابوس G900','مركبات',25,'USD','vehicle',NULL,'assets/products/item-006.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-007','موتوسيكل G1','مركبات',7,'USD','vehicle',NULL,'assets/products/item-007.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-008','رنج روفر 2024','مركبات',25,'USD','vehicle',NULL,'assets/products/item-008.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-009','نيسان ددسن 2014','مركبات',18,'USD','vehicle',NULL,'assets/products/item-009.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-010','تويوتا لاند كروزر','مركبات',18,'USD','vehicle',NULL,'assets/products/item-010.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-011','سيارة مميزة جديدة','مركبات',20,'USD','vehicle',NULL,'assets/products/item-011.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-012','نيسان بيك أب','مركبات',15,'USD','vehicle',NULL,'assets/products/item-012.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-013','كونيجسيج','مركبات',10,'USD','vehicle',NULL,'assets/products/item-013.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-014','رنج روفر','مركبات',15,'USD','vehicle',NULL,'assets/products/item-014.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-015','بنتلي','مركبات',15,'USD','vehicle',NULL,'assets/products/item-015.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-016','مرسيدس G-Class 6x6','مركبات',30,'USD','vehicle',NULL,'assets/products/item-016.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-017','مرسيدس بيك أب','مركبات',10,'USD','vehicle',NULL,'assets/products/item-017.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-018','مرسيدس بونتو','مركبات',25,'USD','vehicle',NULL,'assets/products/item-018.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-019','دودج فايبر','مركبات',15,'USD','vehicle',NULL,'assets/products/item-019.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-020','بوغاتي أتلانتيك','مركبات',26,'USD','vehicle',NULL,'assets/products/item-020.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-021','طائرة خاصة','مركبات',15,'USD','vehicle',NULL,'assets/products/item-021.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-022','فورد موديل T (دراجة)','مركبات',10,'USD','vehicle',NULL,'assets/products/item-022.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-023','بي إم دبليو M4','مركبات',15,'USD','vehicle',NULL,'assets/products/item-023.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-024','فرازي أف كلاس','مركبات',12,'USD','vehicle',NULL,'assets/products/item-024.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-025','هونداي جينيسيس','مركبات',15,'USD','vehicle',NULL,'assets/products/item-025.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-026','رصيد موقع 10','رصيد',10,'USD','credit','10','assets/products/item-031.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-027','رصيد موقع 25','رصيد',25,'USD','credit','25','assets/products/item-032.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-028','رصيد موقع 50','رصيد',50,'USD','credit','50','assets/products/item-033.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-029','رصيد موقع 75','رصيد',75,'USD','credit','75','assets/products/item-034.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-030','رصيد موقع 100','رصيد',100,'USD','credit','100','assets/products/item-035.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-031','بطاقة توثيق العائلة','خدمات',15,'USD','manual',NULL,'assets/products/item-042.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-032','رادار الرينج','مركبات',25,'USD','vehicle',NULL,'assets/products/item-032.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-033','رأس مقطورة مرسيدس','مركبات',20,'USD','vehicle',NULL,'assets/products/item-033.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-034','برابوس','مركبات',25,'USD','vehicle',NULL,'assets/products/item-034.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-035','باقة مميزة','عضويات',10,'USD','manual',NULL,'assets/products/item-035.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-036','بريميوم كلاس','عضويات',15,'USD','manual',NULL,'assets/products/item-036.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-037','بطاقة البيدج','خدمات',20,'USD','manual',NULL,'assets/products/item-037.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-038','دودج شارجر 2023','مركبات',15,'USD','vehicle',NULL,'assets/products/item-038.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-039','رولز رويس كولينان 2023','مركبات',20,'USD','vehicle',NULL,'assets/products/item-039.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-040','بي إم دبليو 2025','مركبات',20,'USD','vehicle',NULL,'assets/products/item-040.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-041','تويوتا سوبرا 2023','مركبات',20,'USD','vehicle',NULL,'assets/products/item-041.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-042','راعي بيزي','عضويات',5,'USD','manual',NULL,'assets/products/item-042.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-043','BMW E30 Drift','مركبات',20,'USD','vehicle',NULL,'assets/products/item-043.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-044','شاحنة سطحة هوريون','مركبات',15,'USD','vehicle',NULL,'assets/products/item-044.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-045','راعي فضي','عضويات',10,'USD','manual',NULL,'assets/products/item-045.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-046','راعي ذهبي','عضويات',15,'USD','manual',NULL,'assets/products/item-046.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-047','راعي استراتيجي','عضويات',20,'USD','manual',NULL,'assets/products/item-047.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-048','راعي أساسي','عضويات',25,'USD','manual',NULL,'assets/products/item-048.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-049','Jeep Wrangler','مركبات',15,'USD','vehicle',NULL,'assets/products/item-049.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-050','Tesla Roadster 2026','مركبات',25,'USD','vehicle',NULL,'assets/products/item-050.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-051','أيدي تاني','خدمات',25,'USD','manual',NULL,'assets/products/item-051.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-052','كارت تعديل سيارة فل','خدمات',5,'USD','manual',NULL,'assets/products/item-052.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-053','فورد موديل T (دراجة)','مركبات',10,'USD','vehicle',NULL,'assets/products/item-053.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-054','سكن خاص','خدمات',5,'USD','manual',NULL,'assets/products/item-054.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-055','Ford Mustang (Police)','مركبات',12,'USD','vehicle',NULL,'assets/products/item-055.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-056','AMG ONE','مركبات',35,'USD','vehicle',NULL,'assets/products/item-056.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-057','تفعيل حساب دائم','خدمات',50,'USD','manual',NULL,'assets/products/item-057.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-058','تفعيل حساب أول ديسكورد','خدمات',10,'USD','manual',NULL,'assets/products/item-058.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-059','حظر دائم','خدمات',25,'USD','manual',NULL,'assets/products/item-059.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-060','حظر مؤقت','خدمات',5,'USD','manual',NULL,'assets/products/item-060.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-061','إلغاء تفعيل حساب دائم','خدمات',30,'USD','manual',NULL,'assets/products/item-061.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-062','إلغاء تفعيل حساب مؤقت','خدمات',15,'USD','manual',NULL,'assets/products/item-062.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-063','بلاغ ليست مايك','خدمات',5,'USD','manual',NULL,'assets/products/item-063.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-064','إلغاء منع توظيف مؤقت','خدمات',10,'USD','manual',NULL,'assets/products/item-064.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-065','إلغاء منع توظيف دائم','خدمات',30,'USD','manual',NULL,'assets/products/item-065.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-066','إلغاء الحظر الدائم','خدمات',15,'USD','manual',NULL,'assets/products/item-066.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-067','غرامة فك منع حظر السلاح','خدمات',5,'USD','manual',NULL,'assets/products/item-067.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-068','إيدي تاني','خدمات',15,'USD','manual',NULL,'assets/products/item-068.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-069','كتاب الحركات دائم','خدمات',15,'USD','manual',NULL,'assets/products/item-069.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-070','غرامة فك منع توظيف دائم','خدمات',30,'USD','manual',NULL,'assets/products/item-070.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-071','إيدي تاني','خدمات',15,'USD','manual',NULL,'assets/products/item-071.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;
INSERT INTO `valoria_products` (`product_id`,`name`,`category`,`price`,`currency`,`delivery_type`,`delivery_value`,`image`) VALUES ('ulg-072','كتاب الحركات دائم','خدمات',15,'USD','manual',NULL,'assets/products/item-072.jpg') ON DUPLICATE KEY UPDATE `name`=VALUES(`name`),`category`=VALUES(`category`),`price`=VALUES(`price`),`currency`=VALUES(`currency`),`delivery_type`=VALUES(`delivery_type`),`delivery_value`=VALUES(`delivery_value`),`image`=VALUES(`image`),`enabled`=1;

-- Helpful index for matching a game account by its real game email.
CREATE INDEX `idx_accounts_email_username` ON `accounts` (`email`, `username`(100));

-- NOTE:
-- Vehicle/service delivery values are intentionally not guessed here.
-- For a vehicle, set valoria_products.delivery_value to the correct
-- vehicles_shop.id after confirming the exact custom vehicle.
-- For a service, the MTA resource receives a manual-delivery hook.



-- VALORIA website admin credentials (password is stored as SHA-256, not plaintext)
CREATE TABLE IF NOT EXISTS `valoria_admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password_sha256` char(64) NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'admin',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_valoria_admin_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `valoria_admins` (`email`,`password_sha256`,`role`,`enabled`)
VALUES ('Alone@admin.com','e25ee2d5fc6961de2f33835e0ab46cc52f4faea2cb17b2aeb5ad1463a1b171ce','admin',1)
ON DUPLICATE KEY UPDATE
  `password_sha256`=VALUES(`password_sha256`),
  `role`='admin',
  `enabled`=1;
