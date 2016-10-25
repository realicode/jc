/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : localhost
 Source Database       : jc

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : utf-8

 Date: 10/25/2016 10:20:36 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `act_evt_log`
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- ----------------------------
--  Table structure for `act_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_ge_property`
-- ----------------------------
BEGIN;
INSERT INTO `act_ge_property` VALUES ('next.dbid', '170001', '69'), ('schema.history', 'create(5.21.0.0)', '1'), ('schema.version', '5.21.0.0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `act_hi_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_hi_actinst`
-- ----------------------------
BEGIN;
INSERT INTO `act_hi_actinst` VALUES ('10002', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:48:37.543', '2016-09-01 14:48:37.571', '28', ''), ('10004', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:48:37.572', '2016-09-01 14:48:37.575', '3', ''), ('10005', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '10006', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:48:37.575', '2016-09-01 14:49:47.104', '69529', ''), ('10009', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:49:47.105', '2016-09-01 14:49:47.143', '38', ''), ('10012', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:49:47.147', '2016-09-01 14:50:28.843', '41696', ''), ('10013', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:49:47.147', '2016-09-01 14:49:47.150', '3', ''), ('10014', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:49:47.151', '2016-09-01 14:49:47.151', '0', ''), ('10017', 'hireProcessWithJpa:1:7', '10001', '10015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '10018', null, 'Tech interview', 'userTask', null, '2016-09-01 14:49:47.176', '2016-09-01 14:50:28.757', '41581', ''), ('10020', 'hireProcessWithJpa:1:7', '10001', '10016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '10021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:49:47.193', '2016-09-01 14:50:17.622', '30429', ''), ('10024', 'hireProcessWithJpa:1:7', '10001', '10016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:50:17.622', '2016-09-01 14:50:17.639', '17', ''), ('10026', 'hireProcessWithJpa:1:7', '10001', '10015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:50:28.757', '2016-09-01 14:50:28.773', '16', ''), ('10027', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:50:28.824', '2016-09-01 14:50:28.824', '0', ''), ('10028', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:50:28.858', '2016-09-01 14:50:28.859', '1', ''), ('10029', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:50:28.859', '2016-09-01 14:50:29.227', '368', ''), ('10030', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:50:29.227', '2016-09-01 14:50:29.228', '1', ''), ('12502', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:51:34.328', '2016-09-01 14:51:34.356', '28', ''), ('12504', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:51:34.357', '2016-09-01 14:51:34.360', '3', ''), ('12505', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '12506', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:51:34.360', '2016-09-01 14:51:38.095', '3735', ''), ('12509', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:51:38.095', '2016-09-01 14:51:38.100', '5', ''), ('12512', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.171', '69', ''), ('12513', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.102', '0', ''), ('12514', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.102', '0', ''), ('12517', 'hireProcessWithJpa:1:7', '12501', '12515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '12518', null, 'Tech interview', 'userTask', null, '2016-09-01 14:51:38.105', '2016-09-01 14:51:38.159', '54', ''), ('12520', 'hireProcessWithJpa:1:7', '12501', '12516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '12521', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:51:38.108', '2016-09-01 14:51:38.142', '34', ''), ('12524', 'hireProcessWithJpa:1:7', '12501', '12516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.142', '2016-09-01 14:51:38.143', '1', ''), ('12526', 'hireProcessWithJpa:1:7', '12501', '12515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.159', '2016-09-01 14:51:38.160', '1', ''), ('12527', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:51:38.168', '2016-09-01 14:51:38.168', '0', ''), ('12528', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:51:38.172', '2016-09-01 14:51:38.173', '1', ''), ('12529', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:51:38.173', '2016-09-01 14:51:38.250', '77', ''), ('12530', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:51:38.250', '2016-09-01 14:51:38.250', '0', ''), ('15002', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 20:47:13.183', '2016-09-01 20:47:13.230', '47', ''), ('15004', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 20:47:13.230', '2016-09-01 20:47:13.234', '4', ''), ('15005', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '15006', null, 'Telephone interview', 'userTask', null, '2016-09-01 20:47:13.234', '2016-09-01 20:47:13.350', '116', ''), ('15009', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 20:47:13.350', '2016-09-01 20:47:13.364', '14', ''), ('15012', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 20:47:13.366', '2016-09-01 20:47:13.495', '129', ''), ('15013', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 20:47:13.367', '2016-09-01 20:47:13.368', '1', ''), ('15014', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.368', '2016-09-01 20:47:13.368', '0', ''), ('15017', 'hireProcessWithJpa:1:7', '15001', '15015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '15018', null, 'Tech interview', 'userTask', null, '2016-09-01 20:47:13.375', '2016-09-01 20:47:13.480', '105', ''), ('15020', 'hireProcessWithJpa:1:7', '15001', '15016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '15021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 20:47:13.379', '2016-09-01 20:47:13.453', '74', ''), ('15024', 'hireProcessWithJpa:1:7', '15001', '15016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.453', '2016-09-01 20:47:13.456', '3', ''), ('15026', 'hireProcessWithJpa:1:7', '15001', '15015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.480', '2016-09-01 20:47:13.482', '2', ''), ('15027', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 20:47:13.491', '2016-09-01 20:47:13.491', '0', ''), ('15028', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 20:47:13.498', '2016-09-01 20:47:13.498', '0', ''), ('15029', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 20:47:13.498', '2016-09-01 20:47:13.613', '115', ''), ('15030', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 20:47:13.613', '2016-09-01 20:47:13.613', '0', ''), ('20002', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 13:38:35.543', '2016-09-02 13:38:35.569', '26', ''), ('20004', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 13:38:35.569', '2016-09-02 13:38:35.572', '3', ''), ('20005', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '20006', null, 'Telephone interview', 'userTask', null, '2016-09-02 13:38:35.572', '2016-09-02 13:38:35.675', '103', ''), ('20009', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 13:38:35.675', '2016-09-02 13:38:35.682', '7', ''), ('20012', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 13:38:35.683', '2016-09-02 13:38:35.768', '85', ''), ('20013', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 13:38:35.683', '2016-09-02 13:38:35.684', '1', ''), ('20014', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.684', '2016-09-02 13:38:35.684', '0', ''), ('20017', 'hireProcessWithJpa:2:17509', '20001', '20015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '20018', null, 'Tech interview', 'userTask', null, '2016-09-02 13:38:35.688', '2016-09-02 13:38:35.754', '66', ''), ('20020', 'hireProcessWithJpa:2:17509', '20001', '20016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '20021', null, 'Financial negotiation', 'userTask', null, '2016-09-02 13:38:35.692', '2016-09-02 13:38:35.732', '40', ''), ('20024', 'hireProcessWithJpa:2:17509', '20001', '20016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.732', '2016-09-02 13:38:35.735', '3', ''), ('20026', 'hireProcessWithJpa:2:17509', '20001', '20015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.754', '2016-09-02 13:38:35.756', '2', ''), ('20027', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 13:38:35.765', '2016-09-02 13:38:35.765', '0', ''), ('20028', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 13:38:35.770', '2016-09-02 13:38:35.770', '0', ''), ('20029', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 13:38:35.770', '2016-09-02 13:38:35.869', '99', ''), ('20030', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 13:38:35.869', '2016-09-02 13:38:35.869', '0', ''), ('22502', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 15:07:43.968', '2016-09-02 15:07:43.989', '21', ''), ('22504', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 15:07:43.990', '2016-09-02 15:07:43.993', '3', ''), ('22505', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '22506', null, 'Telephone interview', 'userTask', null, '2016-09-02 15:07:43.993', '2016-09-02 15:07:44.076', '83', ''), ('22509', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:07:44.076', '2016-09-02 15:07:44.080', '4', ''), ('22512', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.159', '77', ''), ('22513', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.082', '0', ''), ('22514', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.083', '1', ''), ('22517', 'hireProcessWithJpa:2:17509', '22501', '22515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '22518', null, 'Tech interview', 'userTask', null, '2016-09-02 15:07:44.086', '2016-09-02 15:07:44.147', '61', ''), ('22520', 'hireProcessWithJpa:2:17509', '22501', '22516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '22521', null, 'Financial negotiation', 'userTask', null, '2016-09-02 15:07:44.089', '2016-09-02 15:07:44.128', '39', ''), ('22524', 'hireProcessWithJpa:2:17509', '22501', '22516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.128', '2016-09-02 15:07:44.130', '2', ''), ('22526', 'hireProcessWithJpa:2:17509', '22501', '22515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.147', '2016-09-02 15:07:44.149', '2', ''), ('22527', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 15:07:44.156', '2016-09-02 15:07:44.156', '0', ''), ('22528', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:07:44.160', '2016-09-02 15:07:44.161', '1', ''), ('22529', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 15:07:44.161', '2016-09-02 15:07:44.244', '83', ''), ('22530', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 15:07:44.244', '2016-09-02 15:07:44.245', '1', ''), ('25002', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 15:08:31.255', '2016-09-02 15:08:31.278', '23', ''), ('25004', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 15:08:31.278', '2016-09-02 15:08:31.281', '3', ''), ('25005', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '25006', null, 'Telephone interview', 'userTask', null, '2016-09-02 15:08:31.281', '2016-09-02 15:08:31.366', '85', ''), ('25009', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:08:31.366', '2016-09-02 15:08:31.373', '7', ''), ('25012', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 15:08:31.375', '2016-09-02 15:08:31.465', '90', ''), ('25013', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 15:08:31.375', '2016-09-02 15:08:31.376', '1', ''), ('25014', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.376', '2016-09-02 15:08:31.376', '0', ''), ('25017', 'hireProcessWithJpa:2:17509', '25001', '25015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '25018', null, 'Tech interview', 'userTask', null, '2016-09-02 15:08:31.379', '2016-09-02 15:08:31.449', '70', ''), ('2502', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-08-29 14:21:25.702', '2016-08-29 14:21:25.728', '26', ''), ('25020', 'hireProcessWithJpa:2:17509', '25001', '25016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '25021', null, 'Financial negotiation', 'userTask', null, '2016-09-02 15:08:31.383', '2016-09-02 15:08:31.427', '44', ''), ('25024', 'hireProcessWithJpa:2:17509', '25001', '25016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.427', '2016-09-02 15:08:31.429', '2', ''), ('25026', 'hireProcessWithJpa:2:17509', '25001', '25015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.449', '2016-09-02 15:08:31.451', '2', ''), ('25027', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 15:08:31.460', '2016-09-02 15:08:31.460', '0', ''), ('25028', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:08:31.467', '2016-09-02 15:08:31.467', '0', ''), ('25029', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 15:08:31.467', '2016-09-02 15:08:31.572', '105', ''), ('25030', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 15:08:31.572', '2016-09-02 15:08:31.572', '0', ''), ('2504', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-08-29 14:21:25.728', '2016-08-29 14:21:25.732', '4', ''), ('2505', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '2506', null, 'Telephone interview', 'userTask', null, '2016-08-29 14:21:25.732', '2016-08-29 14:21:25.840', '108', ''), ('2509', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-08-29 14:21:25.840', '2016-08-29 14:21:25.847', '7', ''), ('2512', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-08-29 14:21:25.849', '2016-08-29 14:21:25.949', '100', ''), ('2513', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-08-29 14:21:25.849', '2016-08-29 14:21:25.850', '1', ''), ('2514', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.850', '2016-08-29 14:21:25.850', '0', ''), ('2517', 'hireProcessWithJpa:1:7', '2501', '2515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '2518', null, 'Tech interview', 'userTask', null, '2016-08-29 14:21:25.855', '2016-08-29 14:21:25.934', '79', ''), ('2520', 'hireProcessWithJpa:1:7', '2501', '2516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '2521', null, 'Financial negotiation', 'userTask', null, '2016-08-29 14:21:25.859', '2016-08-29 14:21:25.908', '49', ''), ('2524', 'hireProcessWithJpa:1:7', '2501', '2516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.908', '2016-08-29 14:21:25.911', '3', ''), ('2526', 'hireProcessWithJpa:1:7', '2501', '2515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.934', '2016-08-29 14:21:25.936', '2', ''), ('2527', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-08-29 14:21:25.946', '2016-08-29 14:21:25.946', '0', ''), ('2528', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-08-29 14:21:25.952', '2016-08-29 14:21:25.952', '0', ''), ('2529', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-08-29 14:21:25.952', '2016-08-29 14:21:26.047', '95', ''), ('2530', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-08-29 14:21:26.047', '2016-08-29 14:21:26.047', '0', ''), ('27512', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 16:09:55.603', '2016-09-02 16:09:55.629', '26', ''), ('27514', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 16:09:55.629', '2016-09-02 16:09:55.632', '3', ''), ('27515', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '27516', null, 'Telephone interview', 'userTask', null, '2016-09-02 16:09:55.632', '2016-09-02 16:09:55.711', '79', ''), ('27519', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 16:09:55.711', '2016-09-02 16:09:55.719', '8', ''), ('27522', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 16:09:55.720', '2016-09-02 16:09:55.805', '85', ''), ('27523', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 16:09:55.720', '2016-09-02 16:09:55.721', '1', ''), ('27524', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.721', '2016-09-02 16:09:55.722', '1', ''), ('27527', 'hireProcessWithJpa:1:27508', '27511', '27525', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '27528', null, 'Tech interview', 'userTask', null, '2016-09-02 16:09:55.726', '2016-09-02 16:09:55.792', '66', ''), ('27530', 'hireProcessWithJpa:1:27508', '27511', '27526', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '27531', null, 'Financial negotiation', 'userTask', null, '2016-09-02 16:09:55.729', '2016-09-02 16:09:55.768', '39', ''), ('27534', 'hireProcessWithJpa:1:27508', '27511', '27526', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.768', '2016-09-02 16:09:55.770', '2', ''), ('27536', 'hireProcessWithJpa:1:27508', '27511', '27525', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.792', '2016-09-02 16:09:55.794', '2', ''), ('27537', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 16:09:55.802', '2016-09-02 16:09:55.802', '0', ''), ('27538', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 16:09:55.807', '2016-09-02 16:09:55.808', '1', ''), ('27539', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 16:09:55.808', '2016-09-02 16:09:55.891', '83', ''), ('27540', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 16:09:55.891', '2016-09-02 16:09:55.891', '0', ''), ('5002', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:39:32.621', '2016-09-01 14:39:32.649', '28', ''), ('5004', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:39:32.649', '2016-09-01 14:39:32.652', '3', ''), ('5005', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '5006', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:39:32.652', '2016-09-01 14:39:32.771', '119', ''), ('5009', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:39:32.771', '2016-09-01 14:39:32.777', '6', ''), ('5012', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:39:32.778', '2016-09-01 14:39:32.875', '97', ''), ('5013', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:39:32.779', '2016-09-01 14:39:32.779', '0', ''), ('5014', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.779', '2016-09-01 14:39:32.780', '1', ''), ('5017', 'hireProcessWithJpa:1:7', '5001', '5015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '5018', null, 'Tech interview', 'userTask', null, '2016-09-01 14:39:32.784', '2016-09-01 14:39:32.860', '76', ''), ('5020', 'hireProcessWithJpa:1:7', '5001', '5016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '5021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:39:32.788', '2016-09-01 14:39:32.834', '46', ''), ('5024', 'hireProcessWithJpa:1:7', '5001', '5016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.834', '2016-09-01 14:39:32.837', '3', ''), ('5026', 'hireProcessWithJpa:1:7', '5001', '5015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.860', '2016-09-01 14:39:32.862', '2', ''), ('5027', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:39:32.871', '2016-09-01 14:39:32.871', '0', ''), ('5028', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:39:32.877', '2016-09-01 14:39:32.877', '0', ''), ('5029', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:39:32.877', '2016-09-01 14:39:32.988', '111', ''), ('5030', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:39:32.988', '2016-09-01 14:39:32.988', '0', ''), ('7502', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:48:11.605', '2016-09-01 14:48:11.626', '21', ''), ('7504', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:48:11.626', '2016-09-01 14:48:11.629', '3', ''), ('7505', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '7506', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:48:11.629', '2016-09-01 14:48:11.722', '93', ''), ('7509', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:48:11.722', '2016-09-01 14:48:11.727', '5', ''), ('7512', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:48:11.729', '2016-09-01 14:48:11.814', '85', ''), ('7513', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:48:11.729', '2016-09-01 14:48:11.730', '1', ''), ('7514', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.730', '2016-09-01 14:48:11.730', '0', ''), ('7517', 'hireProcessWithJpa:1:7', '7501', '7515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '7518', null, 'Tech interview', 'userTask', null, '2016-09-01 14:48:11.734', '2016-09-01 14:48:11.802', '68', ''), ('7520', 'hireProcessWithJpa:1:7', '7501', '7516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '7521', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:48:11.738', '2016-09-01 14:48:11.779', '41', ''), ('7524', 'hireProcessWithJpa:1:7', '7501', '7516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.779', '2016-09-01 14:48:11.782', '3', ''), ('7526', 'hireProcessWithJpa:1:7', '7501', '7515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.802', '2016-09-01 14:48:11.804', '2', ''), ('7527', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:48:11.811', '2016-09-01 14:48:11.811', '0', ''), ('7528', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:48:11.816', '2016-09-01 14:48:11.816', '0', ''), ('7529', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:48:11.816', '2016-09-01 14:48:11.899', '83', ''), ('7530', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:48:11.899', '2016-09-01 14:48:11.899', '0', ''), ('77502', 'simplejc:5:72512', '77501', '77501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 06:56:54.955', '2016-09-05 06:56:54.971', '16', ''), ('77504', 'simplejc:5:72512', '77501', '77501', 'comfirmDate', '77505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 06:56:54.971', null, null, ''), ('80011', 'simplejc:6:80008', '80010', '80010', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 06:58:41.756', '2016-09-05 06:58:41.766', '10', ''), ('80013', 'simplejc:6:80008', '80010', '80010', 'comfirmDate', '80014', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 06:58:41.766', null, null, ''), ('82502', 'simplejc:6:80008', '82501', '82501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:00:11.961', '2016-09-05 07:00:11.975', '14', ''), ('82504', 'simplejc:6:80008', '82501', '82501', 'comfirmDate', '82505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:00:11.975', null, null, ''), ('85002', 'simplejc:6:80008', '85001', '85001', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:01:19.089', '2016-09-05 07:01:19.101', '12', ''), ('85004', 'simplejc:6:80008', '85001', '85001', 'comfirmDate', '85005', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:01:19.101', null, null, ''), ('87502', 'simplejc:6:80008', '87501', '87501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:26:09.458', '2016-09-05 07:26:09.470', '12', ''), ('87504', 'simplejc:6:80008', '87501', '87501', 'comfirmDate', '87505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:26:09.471', '2016-09-05 07:26:09.553', '82', ''), ('87508', 'simplejc:6:80008', '87501', '87501', 'preAudit', '87509', null, '预稽查', 'userTask', null, '2016-09-05 07:26:09.553', null, null, ''), ('90002', 'simplejc:6:80008', '90001', '90001', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:27:43.553', '2016-09-05 07:27:43.567', '14', ''), ('90004', 'simplejc:6:80008', '90001', '90001', 'comfirmDate', '90005', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:27:43.568', '2016-09-05 07:27:43.669', '101', ''), ('90008', 'simplejc:6:80008', '90001', '90001', 'preAudit', '90009', null, '预稽查', 'userTask', null, '2016-09-05 07:27:43.669', null, null, ''), ('92502', 'simplejc:6:80008', '92501', '92501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:29:38.680', '2016-09-05 07:29:38.695', '15', ''), ('92504', 'simplejc:6:80008', '92501', '92501', 'comfirmDate', '92505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:29:38.695', '2016-09-05 07:29:38.790', '95', ''), ('92508', 'simplejc:6:80008', '92501', '92501', 'preAudit', '92509', null, '预稽查', 'userTask', null, '2016-09-05 07:29:38.790', '2016-09-05 07:29:38.828', '38', ''), ('92512', 'simplejc:6:80008', '92501', '92501', 'audit', '92513', null, '稽查', 'userTask', null, '2016-09-05 07:29:38.828', null, null, ''), ('95014', 'simplejc:7:95012', '95013', '95013', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:48:32.617', '2016-09-05 07:48:32.626', '9', ''), ('95016', 'simplejc:7:95012', '95013', '95013', 'comfirmDate', '95017', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:48:32.626', null, null, ''), ('97502', 'simplejc:7:95012', '97501', '97501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 09:55:51.072', '2016-09-05 09:55:51.081', '9', ''), ('97504', 'simplejc:7:95012', '97501', '97501', 'comfirmDate', '97505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 09:55:51.081', null, null, '');
COMMIT;

-- ----------------------------
--  Table structure for `act_hi_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_hi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_hi_detail`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_hi_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_hi_identitylink`
-- ----------------------------
BEGIN;
INSERT INTO `act_hi_identitylink` VALUES ('10007', 'dev-managers', 'candidate', null, '10006', null), ('10019', 'dev-management', 'candidate', null, '10018', null), ('10022', 'finance', 'candidate', null, '10021', null), ('12507', 'dev-managers', 'candidate', null, '12506', null), ('12519', 'dev-management', 'candidate', null, '12518', null), ('12522', 'finance', 'candidate', null, '12521', null), ('15007', 'dev-managers', 'candidate', null, '15006', null), ('15019', 'dev-management', 'candidate', null, '15018', null), ('15022', 'finance', 'candidate', null, '15021', null), ('20007', 'dev-managers', 'candidate', null, '20006', null), ('20019', 'dev-management', 'candidate', null, '20018', null), ('20022', 'finance', 'candidate', null, '20021', null), ('22507', 'dev-managers', 'candidate', null, '22506', null), ('22519', 'dev-management', 'candidate', null, '22518', null), ('22522', 'finance', 'candidate', null, '22521', null), ('25007', 'dev-managers', 'candidate', null, '25006', null), ('25019', 'dev-management', 'candidate', null, '25018', null), ('25022', 'finance', 'candidate', null, '25021', null), ('2507', 'dev-managers', 'candidate', null, '2506', null), ('2519', 'dev-management', 'candidate', null, '2518', null), ('2522', 'finance', 'candidate', null, '2521', null), ('27517', 'dev-managers', 'candidate', null, '27516', null), ('27529', 'dev-management', 'candidate', null, '27528', null), ('27532', 'finance', 'candidate', null, '27531', null), ('5007', 'dev-managers', 'candidate', null, '5006', null), ('5019', 'dev-management', 'candidate', null, '5018', null), ('5022', 'finance', 'candidate', null, '5021', null), ('7507', 'dev-managers', 'candidate', null, '7506', null), ('7519', 'dev-management', 'candidate', null, '7518', null), ('7522', 'finance', 'candidate', null, '7521', null), ('77506', 'org1_secretary', 'candidate', null, '77505', null), ('80015', 'org1_secretary', 'candidate', null, '80014', null), ('82506', 'org1_secretary', 'candidate', null, '82505', null), ('85006', 'org1_secretary', 'candidate', null, '85005', null), ('87506', 'org1_secretary', 'candidate', null, '87505', null), ('87510', 'org1_preaudit', 'candidate', null, '87509', null), ('90006', 'org1_secretary', 'candidate', null, '90005', null), ('90010', 'org1_preaudit', 'candidate', null, '90009', null), ('92506', 'org1_secretary', 'candidate', null, '92505', null), ('92510', 'org1_preaudit', 'candidate', null, '92509', null), ('92514', 'org1_audit', 'candidate', null, '92513', null), ('95018', 'org1_secretary', 'candidate', null, '95017', null), ('97506', 'org1_secretary', 'candidate', null, '97505', null);
COMMIT;

-- ----------------------------
--  Table structure for `act_hi_procinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_hi_procinst`
-- ----------------------------
BEGIN;
INSERT INTO `act_hi_procinst` VALUES ('10001', '10001', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:48:37.543', '2016-09-01 14:50:29.236', '111693', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('12501', '12501', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:51:34.328', '2016-09-01 14:51:38.251', '3923', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('15001', '15001', null, 'hireProcessWithJpa:1:7', '2016-09-01 20:47:13.182', '2016-09-01 20:47:13.616', '434', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('20001', '20001', null, 'hireProcessWithJpa:2:17509', '2016-09-02 13:38:35.543', '2016-09-02 13:38:35.871', '328', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('22501', '22501', null, 'hireProcessWithJpa:2:17509', '2016-09-02 15:07:43.968', '2016-09-02 15:07:44.246', '278', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('25001', '25001', null, 'hireProcessWithJpa:2:17509', '2016-09-02 15:08:31.255', '2016-09-02 15:08:31.574', '319', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('2501', '2501', null, 'hireProcessWithJpa:1:7', '2016-08-29 14:21:25.702', '2016-08-29 14:21:26.049', '347', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('27511', '27511', null, 'hireProcessWithJpa:1:27508', '2016-09-02 16:09:55.603', '2016-09-02 16:09:55.893', '290', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('5001', '5001', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:39:32.621', '2016-09-01 14:39:32.990', '369', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('7501', '7501', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:48:11.605', '2016-09-01 14:48:11.901', '296', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null), ('77501', '77501', '18', 'simplejc:5:72512', '2016-09-05 06:56:54.955', null, null, null, 'startevent1', null, null, null, '', null), ('80010', '80010', '19', 'simplejc:6:80008', '2016-09-05 06:58:41.756', null, null, null, 'startevent1', null, null, null, '', null), ('82501', '82501', '20', 'simplejc:6:80008', '2016-09-05 07:00:11.961', null, null, null, 'startevent1', null, null, null, '', null), ('85001', '85001', '21', 'simplejc:6:80008', '2016-09-05 07:01:19.089', null, null, null, 'startevent1', null, null, null, '', null), ('87501', '87501', '22', 'simplejc:6:80008', '2016-09-05 07:26:09.458', null, null, null, 'startevent1', null, null, null, '', null), ('90001', '90001', '23', 'simplejc:6:80008', '2016-09-05 07:27:43.553', null, null, null, 'startevent1', null, null, null, '', null), ('92501', '92501', '24', 'simplejc:6:80008', '2016-09-05 07:29:38.680', null, null, null, 'startevent1', null, null, null, '', null), ('95013', '95013', '25', 'simplejc:7:95012', '2016-09-05 07:48:32.617', null, null, null, 'startevent1', null, null, null, '', null), ('97501', '97501', '26', 'simplejc:7:95012', '2016-09-05 09:55:51.072', null, null, null, 'startevent1', null, null, null, '', null);
COMMIT;

-- ----------------------------
--  Table structure for `act_hi_taskinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_hi_taskinst`
-- ----------------------------
BEGIN;
INSERT INTO `act_hi_taskinst` VALUES ('10006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '10001', '10001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:48:37.576', null, '2016-09-01 14:49:47.068', '69492', 'completed', '50', null, null, null, ''), ('10018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '10001', '10015', 'Tech interview', null, null, null, null, '2016-09-01 14:49:47.179', null, '2016-09-01 14:50:28.732', '41553', 'completed', '50', null, null, null, ''), ('10021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '10001', '10016', 'Financial negotiation', null, null, null, null, '2016-09-01 14:49:47.196', null, '2016-09-01 14:50:17.595', '30399', 'completed', '50', null, null, null, ''), ('12506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '12501', '12501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:51:34.362', null, '2016-09-01 14:51:38.091', '3729', 'completed', '50', null, null, null, ''), ('12518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '12501', '12515', 'Tech interview', null, null, null, null, '2016-09-01 14:51:38.106', null, '2016-09-01 14:51:38.157', '51', 'completed', '50', null, null, null, ''), ('12521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '12501', '12516', 'Financial negotiation', null, null, null, null, '2016-09-01 14:51:38.109', null, '2016-09-01 14:51:38.140', '31', 'completed', '50', null, null, null, ''), ('15006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '15001', '15001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 20:47:13.236', null, '2016-09-01 20:47:13.346', '110', 'completed', '50', null, null, null, ''), ('15018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '15001', '15015', 'Tech interview', null, null, null, null, '2016-09-01 20:47:13.375', null, '2016-09-01 20:47:13.477', '102', 'completed', '50', null, null, null, ''), ('15021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '15001', '15016', 'Financial negotiation', null, null, null, null, '2016-09-01 20:47:13.381', null, '2016-09-01 20:47:13.446', '65', 'completed', '50', null, null, null, ''), ('20006', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '20001', '20001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 13:38:35.575', null, '2016-09-02 13:38:35.671', '96', 'completed', '50', null, null, null, ''), ('20018', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '20001', '20015', 'Tech interview', null, null, null, null, '2016-09-02 13:38:35.689', null, '2016-09-02 13:38:35.752', '63', 'completed', '50', null, null, null, ''), ('20021', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '20001', '20016', 'Financial negotiation', null, null, null, null, '2016-09-02 13:38:35.692', null, '2016-09-02 13:38:35.730', '38', 'completed', '50', null, null, null, ''), ('22506', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '22501', '22501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 15:07:43.994', null, '2016-09-02 15:07:44.072', '78', 'completed', '50', null, null, null, ''), ('22518', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '22501', '22515', 'Tech interview', null, null, null, null, '2016-09-02 15:07:44.086', null, '2016-09-02 15:07:44.145', '59', 'completed', '50', null, null, null, ''), ('22521', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '22501', '22516', 'Financial negotiation', null, null, null, null, '2016-09-02 15:07:44.089', null, '2016-09-02 15:07:44.126', '37', 'completed', '50', null, null, null, ''), ('25006', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '25001', '25001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 15:08:31.283', null, '2016-09-02 15:08:31.362', '79', 'completed', '50', null, null, null, ''), ('25018', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '25001', '25015', 'Tech interview', null, null, null, null, '2016-09-02 15:08:31.380', null, '2016-09-02 15:08:31.446', '66', 'completed', '50', null, null, null, ''), ('25021', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '25001', '25016', 'Financial negotiation', null, null, null, null, '2016-09-02 15:08:31.384', null, '2016-09-02 15:08:31.423', '39', 'completed', '50', null, null, null, ''), ('2506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '2501', '2501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-08-29 14:21:25.734', null, '2016-08-29 14:21:25.835', '101', 'completed', '50', null, null, null, ''), ('2518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '2501', '2515', 'Tech interview', null, null, null, null, '2016-08-29 14:21:25.855', null, '2016-08-29 14:21:25.931', '76', 'completed', '50', null, null, null, ''), ('2521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '2501', '2516', 'Financial negotiation', null, null, null, null, '2016-08-29 14:21:25.859', null, '2016-08-29 14:21:25.905', '46', 'completed', '50', null, null, null, ''), ('27516', 'hireProcessWithJpa:1:27508', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '27511', '27511', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 16:09:55.633', null, '2016-09-02 16:09:55.707', '74', 'completed', '50', null, null, null, ''), ('27528', 'hireProcessWithJpa:1:27508', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '27511', '27525', 'Tech interview', null, null, null, null, '2016-09-02 16:09:55.727', null, '2016-09-02 16:09:55.789', '62', 'completed', '50', null, null, null, ''), ('27531', 'hireProcessWithJpa:1:27508', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '27511', '27526', 'Financial negotiation', null, null, null, null, '2016-09-02 16:09:55.730', null, '2016-09-02 16:09:55.765', '35', 'completed', '50', null, null, null, ''), ('5006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '5001', '5001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:39:32.654', null, '2016-09-01 14:39:32.765', '111', 'completed', '50', null, null, null, ''), ('5018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '5001', '5015', 'Tech interview', null, null, null, null, '2016-09-01 14:39:32.784', null, '2016-09-01 14:39:32.857', '73', 'completed', '50', null, null, null, ''), ('5021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '5001', '5016', 'Financial negotiation', null, null, null, null, '2016-09-01 14:39:32.788', null, '2016-09-01 14:39:32.831', '43', 'completed', '50', null, null, null, ''), ('7506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '7501', '7501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:48:11.631', null, '2016-09-01 14:48:11.718', '87', 'completed', '50', null, null, null, ''), ('7518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '7501', '7515', 'Tech interview', null, null, null, null, '2016-09-01 14:48:11.734', null, '2016-09-01 14:48:11.800', '66', 'completed', '50', null, null, null, ''), ('7521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '7501', '7516', 'Financial negotiation', null, null, null, null, '2016-09-01 14:48:11.738', null, '2016-09-01 14:48:11.776', '38', 'completed', '50', null, null, null, ''), ('77505', 'simplejc:5:72512', 'comfirmDate', '77501', '77501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 06:56:54.973', null, null, null, null, '50', null, null, null, ''), ('80014', 'simplejc:6:80008', 'comfirmDate', '80010', '80010', '确定人员、时间、行程', null, null, null, null, '2016-09-05 06:58:41.767', null, null, null, null, '50', null, null, null, ''), ('82505', 'simplejc:6:80008', 'comfirmDate', '82501', '82501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:00:11.976', null, null, null, null, '50', null, null, null, ''), ('85005', 'simplejc:6:80008', 'comfirmDate', '85001', '85001', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:01:19.102', null, null, null, null, '50', null, null, null, ''), ('87505', 'simplejc:6:80008', 'comfirmDate', '87501', '87501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:26:09.472', null, '2016-09-05 07:26:09.550', '78', 'completed', '50', null, null, null, ''), ('87509', 'simplejc:6:80008', 'preAudit', '87501', '87501', '预稽查', null, null, null, null, '2016-09-05 07:26:09.553', null, null, null, null, '50', null, null, null, ''), ('90005', 'simplejc:6:80008', 'comfirmDate', '90001', '90001', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:27:43.569', null, '2016-09-05 07:27:43.666', '97', 'completed', '50', null, null, null, ''), ('90009', 'simplejc:6:80008', 'preAudit', '90001', '90001', '预稽查', null, null, null, null, '2016-09-05 07:27:43.669', null, null, null, null, '50', null, null, null, ''), ('92505', 'simplejc:6:80008', 'comfirmDate', '92501', '92501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:29:38.697', null, '2016-09-05 07:29:38.785', '88', 'completed', '50', null, null, null, ''), ('92509', 'simplejc:6:80008', 'preAudit', '92501', '92501', '预稽查', null, null, null, null, '2016-09-05 07:29:38.791', null, '2016-09-05 07:29:38.826', '35', 'completed', '50', null, null, null, ''), ('92513', 'simplejc:6:80008', 'audit', '92501', '92501', '稽查', null, null, null, null, '2016-09-05 07:29:38.828', null, null, null, null, '50', null, null, null, ''), ('95017', 'simplejc:7:95012', 'comfirmDate', '95013', '95013', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:48:32.627', null, null, null, null, '50', null, null, null, ''), ('97505', 'simplejc:7:95012', 'comfirmDate', '97501', '97501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 09:55:51.082', null, null, null, null, '50', null, null, null, '');
COMMIT;

-- ----------------------------
--  Table structure for `act_hi_varinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_hi_varinst`
-- ----------------------------
BEGIN;
INSERT INTO `act_hi_varinst` VALUES ('10003', '10001', '10001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '4', '2016-09-01 14:48:37.545', '2016-09-01 14:50:29.257'), ('10008', '10001', '10001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:49:47.041', '2016-09-01 14:50:29.257'), ('10023', '10001', '10001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:50:17.575', '2016-09-01 14:50:29.257'), ('10025', '10001', '10001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:50:28.712', '2016-09-01 14:50:29.258'), ('12503', '12501', '12501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '5', '2016-09-01 14:51:34.330', '2016-09-01 14:51:38.254'), ('12508', '12501', '12501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:51:38.087', '2016-09-01 14:51:38.254'), ('12523', '12501', '12501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:51:38.138', '2016-09-01 14:51:38.254'), ('12525', '12501', '12501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:51:38.155', '2016-09-01 14:51:38.254'), ('15003', '15001', '15001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '6', '2016-09-01 20:47:13.188', '2016-09-01 20:47:13.619'), ('15008', '15001', '15001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 20:47:13.340', '2016-09-01 20:47:13.619'), ('15023', '15001', '15001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 20:47:13.442', '2016-09-01 20:47:13.619'), ('15025', '15001', '15001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 20:47:13.475', '2016-09-01 20:47:13.619'), ('20003', '20001', '20001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '7', '2016-09-02 13:38:35.545', '2016-09-02 13:38:35.873'), ('20008', '20001', '20001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 13:38:35.666', '2016-09-02 13:38:35.873'), ('20023', '20001', '20001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 13:38:35.727', '2016-09-02 13:38:35.873'), ('20025', '20001', '20001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 13:38:35.750', '2016-09-02 13:38:35.873'), ('22503', '22501', '22501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '8', '2016-09-02 15:07:43.969', '2016-09-02 15:07:44.248'), ('22508', '22501', '22501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:07:44.068', '2016-09-02 15:07:44.248'), ('22523', '22501', '22501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:07:44.124', '2016-09-02 15:07:44.248'), ('22525', '22501', '22501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 15:07:44.143', '2016-09-02 15:07:44.248'), ('25003', '25001', '25001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '9', '2016-09-02 15:08:31.257', '2016-09-02 15:08:31.577'), ('25008', '25001', '25001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:08:31.358', '2016-09-02 15:08:31.577'), ('25023', '25001', '25001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:08:31.420', '2016-09-02 15:08:31.577'), ('25025', '25001', '25001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 15:08:31.444', '2016-09-02 15:08:31.577'), ('2503', '2501', '2501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '1', '2016-08-29 14:21:25.704', '2016-08-29 14:21:26.052'), ('2508', '2501', '2501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-08-29 14:21:25.830', '2016-08-29 14:21:26.052'), ('2523', '2501', '2501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-08-29 14:21:25.902', '2016-08-29 14:21:26.052'), ('2525', '2501', '2501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-08-29 14:21:25.928', '2016-08-29 14:21:26.052'), ('27513', '27511', '27511', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '16', '2016-09-02 16:09:55.605', '2016-09-02 16:09:55.895'), ('27518', '27511', '27511', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 16:09:55.702', '2016-09-02 16:09:55.895'), ('27533', '27511', '27511', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 16:09:55.763', '2016-09-02 16:09:55.895'), ('27535', '27511', '27511', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 16:09:55.787', '2016-09-02 16:09:55.895'), ('5003', '5001', '5001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '2', '2016-09-01 14:39:32.623', '2016-09-01 14:39:32.993'), ('5008', '5001', '5001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:39:32.760', '2016-09-01 14:39:32.993'), ('5023', '5001', '5001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:39:32.828', '2016-09-01 14:39:32.993'), ('5025', '5001', '5001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:39:32.853', '2016-09-01 14:39:32.993'), ('7503', '7501', '7501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '3', '2016-09-01 14:48:11.607', '2016-09-01 14:48:11.904'), ('7508', '7501', '7501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:48:11.714', '2016-09-01 14:48:11.904'), ('7523', '7501', '7501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:48:11.773', '2016-09-01 14:48:11.904'), ('7525', '7501', '7501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:48:11.797', '2016-09-01 14:48:11.904'), ('77503', '77501', '77501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '18', '2016-09-05 06:56:54.957', '2016-09-05 06:56:54.957'), ('80012', '80010', '80010', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '19', '2016-09-05 06:58:41.758', '2016-09-05 06:58:41.758'), ('82503', '82501', '82501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '20', '2016-09-05 07:00:11.963', '2016-09-05 07:00:11.963'), ('85003', '85001', '85001', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '21', '2016-09-05 07:01:19.091', '2016-09-05 07:01:19.091'), ('87503', '87501', '87501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '22', '2016-09-05 07:26:09.461', '2016-09-05 07:26:09.461'), ('87507', '87501', '87501', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:26:09.546', '2016-09-05 07:26:09.546'), ('90003', '90001', '90001', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '23', '2016-09-05 07:27:43.555', '2016-09-05 07:27:43.555'), ('90007', '90001', '90001', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:27:43.661', '2016-09-05 07:27:43.661'), ('92503', '92501', '92501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '24', '2016-09-05 07:29:38.682', '2016-09-05 07:29:38.682'), ('92507', '92501', '92501', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:29:38.780', '2016-09-05 07:29:38.780'), ('92511', '92501', '92501', null, 'techOk', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:29:38.824', '2016-09-05 07:29:38.824'), ('95015', '95013', '95013', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '25', '2016-09-05 07:48:32.619', '2016-09-05 07:48:32.619'), ('97503', '97501', '97501', null, 'projectName', 'string', '0', null, null, null, '工作流测试——1', null, '2016-09-05 09:55:51.072', '2016-09-05 09:55:51.072');
COMMIT;

-- ----------------------------
--  Table structure for `act_procdef_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_re_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_re_deployment`
-- ----------------------------
BEGIN;
INSERT INTO `act_re_deployment` VALUES ('1', 'SpringAutoDeployment', null, '', '2016-08-29 14:09:53.238'), ('100001', 'SpringAutoDeployment', null, '', '2016-09-05 10:09:23.255'), ('102501', 'SpringAutoDeployment', null, '', '2016-09-25 17:15:32.683'), ('105001', 'SpringAutoDeployment', null, '', '2016-09-25 21:42:01.683'), ('107501', 'SpringAutoDeployment', null, '', '2016-09-25 22:00:08.437'), ('110001', 'SpringAutoDeployment', null, '', '2016-09-25 22:30:31.384'), ('112501', 'SpringAutoDeployment', null, '', '2016-09-26 00:40:13.628'), ('115001', 'SpringAutoDeployment', null, '', '2016-09-26 01:45:19.581'), ('117501', 'SpringAutoDeployment', null, '', '2016-10-01 08:50:07.035'), ('120001', 'SpringAutoDeployment', null, '', '2016-10-05 07:57:31.725'), ('122501', 'SpringAutoDeployment', null, '', '2016-10-05 08:52:10.454'), ('125001', 'SpringAutoDeployment', null, '', '2016-10-05 09:21:44.943'), ('127501', 'SpringAutoDeployment', null, '', '2016-10-05 14:45:58.227'), ('130001', 'SpringAutoDeployment', null, '', '2016-10-05 16:10:00.197'), ('132501', 'SpringAutoDeployment', null, '', '2016-10-05 16:29:51.241'), ('135001', 'SpringAutoDeployment', null, '', '2016-10-07 23:03:02.684'), ('137501', 'SpringAutoDeployment', null, '', '2016-10-08 01:10:38.472'), ('140001', 'SpringAutoDeployment', null, '', '2016-10-08 06:58:15.635'), ('142501', 'SpringAutoDeployment', null, '', '2016-10-16 21:29:49.007'), ('145001', 'SpringAutoDeployment', null, '', '2016-10-16 21:40:53.523'), ('147501', 'SpringAutoDeployment', null, '', '2016-10-17 08:56:18.894'), ('150001', 'SpringAutoDeployment', null, '', '2016-10-17 15:47:19.344'), ('152501', 'SpringAutoDeployment', null, '', '2016-10-17 15:54:47.188'), ('155001', 'SpringAutoDeployment', null, '', '2016-10-22 12:25:21.969'), ('157501', 'SpringAutoDeployment', null, '', '2016-10-22 12:35:04.725'), ('160001', 'SpringAutoDeployment', null, '', '2016-10-24 00:13:29.838'), ('162501', 'SpringAutoDeployment', null, '', '2016-10-24 00:21:42.768'), ('165001', 'SpringAutoDeployment', null, '', '2016-10-24 00:22:19.714'), ('167501', 'SpringAutoDeployment', null, '', '2016-10-24 00:48:27.025'), ('17501', 'SpringAutoDeployment', null, '', '2016-09-02 13:34:52.869'), ('27501', 'SpringAutoDeployment', null, '', '2016-09-02 16:09:50.503'), ('30001', 'SpringAutoDeployment', null, '', '2016-09-03 08:21:32.878'), ('32501', 'SpringAutoDeployment', null, '', '2016-09-03 08:24:43.193'), ('35001', 'SpringAutoDeployment', null, '', '2016-09-03 10:05:27.775'), ('37501', 'SpringAutoDeployment', null, '', '2016-09-03 11:03:12.374'), ('40001', 'SpringAutoDeployment', null, '', '2016-09-04 17:41:14.406'), ('42501', 'SpringAutoDeployment', null, '', '2016-09-04 17:57:28.310'), ('45001', 'SpringAutoDeployment', null, '', '2016-09-05 01:46:08.599'), ('47501', 'SpringAutoDeployment', null, '', '2016-09-05 01:49:01.469'), ('50001', 'SpringAutoDeployment', null, '', '2016-09-05 02:16:38.754'), ('52501', 'SpringAutoDeployment', null, '', '2016-09-05 04:59:16.573'), ('55001', 'SpringAutoDeployment', null, '', '2016-09-05 06:28:15.350'), ('57501', 'SpringAutoDeployment', null, '', '2016-09-05 06:44:52.200'), ('62501', 'SpringAutoDeployment', null, '', '2016-09-05 06:48:41.202'), ('65001', 'SpringAutoDeployment', null, '', '2016-09-05 06:51:16.455'), ('67501', 'SpringAutoDeployment', null, '', '2016-09-05 06:52:49.113'), ('70001', 'SpringAutoDeployment', null, '', '2016-09-05 06:53:59.900'), ('72501', 'SpringAutoDeployment', null, '', '2016-09-05 06:54:55.307'), ('75001', 'SpringAutoDeployment', null, '', '2016-09-05 06:56:13.204'), ('80001', 'SpringAutoDeployment', null, '', '2016-09-05 06:58:36.620'), ('95001', 'SpringAutoDeployment', null, '', '2016-09-05 07:47:48.571');
COMMIT;

-- ----------------------------
--  Table structure for `act_re_model`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_re_procdef`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_re_procdef`
-- ----------------------------
BEGIN;
INSERT INTO `act_re_procdef` VALUES ('hireProcess:10:100009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:11:102508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:12:105009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:13:107508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:14:110009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:15:112508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:16:115009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:17:117511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:18:120009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:19:122511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:1:57510', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:20:125009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:21:127511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:22:130009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:23:132511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:24:135009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:25:137511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:26:140009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:27:142508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '27', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:28:145011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '28', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:29:147509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '29', '147501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:2:62511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:30:150008', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '30', '150001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:31:152509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '31', '152501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:32:155008', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '32', '155001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:33:157509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '33', '157501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:34:160008', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '34', '160001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:35:162509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '35', '162501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:36:165008', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '36', '165001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:37:167509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '37', '167501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:3:65011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:4:67511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:5:70011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:6:72511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:7:75007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:8:80009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:9:95011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:10:100011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:11:102507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:12:105011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:13:107507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:14:110011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:15:112507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:16:115011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:17:117509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:18:120007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:19:122509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:1:57508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:20:125007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:21:127509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:22:130007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:23:132509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:24:135007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:25:137509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:26:140011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:27:142507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '27', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:28:145009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '28', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:29:147511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '29', '147501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:2:62509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:30:150007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '30', '150001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:31:152511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '31', '152501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:32:155007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '32', '155001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:33:157511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '33', '157501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:34:160007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '34', '160001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:35:162511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '35', '162501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:36:165007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '36', '165001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:37:167511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '37', '167501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:3:65009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:4:67509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:5:70009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:6:72509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:7:75006', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:8:80007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:9:95009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('leavesayhello:10:110012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '10', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:11:115012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '11', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:12:117510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '12', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:13:122510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '13', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:14:127510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '14', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:15:132510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '15', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:16:137510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '16', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:17:140012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '17', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:18:145010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '18', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:19:147512', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '19', '147501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:1:57509', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:20:152512', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '20', '152501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:21:157512', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '21', '157501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:22:162512', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '22', '162501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:23:167512', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '23', '167501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:2:62510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:3:65010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:4:67510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:5:70010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:6:72510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:7:95010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:8:100012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:9:105012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '9', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('simplejc:10:105010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '10', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:11:107509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '11', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:12:110010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '12', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:13:112509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '13', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:14:115010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '14', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:15:117512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '15', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:16:120008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '16', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:17:122512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '17', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:18:125008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '18', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:19:127512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '19', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:1:62512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '1', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:20:130008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '20', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:21:132512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '21', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:22:135008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '22', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:23:137512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '23', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:24:140010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '24', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:25:142509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '25', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:26:145012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '26', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:27:147510', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '27', '147501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:28:150009', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '28', '150001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:29:152510', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '29', '152501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:2:65012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '2', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:30:155009', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '30', '155001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:31:157510', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '31', '157501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:32:160009', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '32', '160001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:33:162510', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '33', '162501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:34:165009', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '34', '165001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:35:167510', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '35', '167501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:3:67512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '3', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:4:70012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '4', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:5:72512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '5', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:6:80008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '6', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:7:95012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:8:100010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:9:102509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '9', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
COMMIT;

-- ----------------------------
--  Table structure for `act_ru_event_subscr`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_ru_execution`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_ru_execution`
-- ----------------------------
BEGIN;
INSERT INTO `act_ru_execution` VALUES ('77501', '1', '77501', '18', null, 'simplejc:5:72512', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null), ('80010', '1', '80010', '19', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null), ('82501', '1', '82501', '20', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null), ('85001', '1', '85001', '21', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null), ('87501', '2', '87501', '22', null, 'simplejc:6:80008', null, 'preAudit', '1', '0', '1', '0', '1', '2', '', null, null), ('90001', '2', '90001', '23', null, 'simplejc:6:80008', null, 'preAudit', '1', '0', '1', '0', '1', '2', '', null, null), ('92501', '3', '92501', '24', null, 'simplejc:6:80008', null, 'audit', '1', '0', '1', '0', '1', '2', '', null, null), ('95013', '1', '95013', '25', null, 'simplejc:7:95012', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null), ('97501', '1', '97501', '26', null, 'simplejc:7:95012', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `act_ru_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_ru_identitylink`
-- ----------------------------
BEGIN;
INSERT INTO `act_ru_identitylink` VALUES ('77506', '1', 'org1_secretary', 'candidate', null, '77505', null, null), ('80015', '1', 'org1_secretary', 'candidate', null, '80014', null, null), ('82506', '1', 'org1_secretary', 'candidate', null, '82505', null, null), ('85006', '1', 'org1_secretary', 'candidate', null, '85005', null, null), ('87510', '1', 'org1_preaudit', 'candidate', null, '87509', null, null), ('90010', '1', 'org1_preaudit', 'candidate', null, '90009', null, null), ('92514', '1', 'org1_audit', 'candidate', null, '92513', null, null), ('95018', '1', 'org1_secretary', 'candidate', null, '95017', null, null), ('97506', '1', 'org1_secretary', 'candidate', null, '97505', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `act_ru_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `act_ru_task`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_ru_task`
-- ----------------------------
BEGIN;
INSERT INTO `act_ru_task` VALUES ('77505', '1', '77501', '77501', 'simplejc:5:72512', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 06:56:54.971', null, null, '1', '', null), ('80014', '1', '80010', '80010', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 06:58:41.767', null, null, '1', '', null), ('82505', '1', '82501', '82501', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:00:11.975', null, null, '1', '', null), ('85005', '1', '85001', '85001', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:01:19.101', null, null, '1', '', null), ('87509', '1', '87501', '87501', 'simplejc:6:80008', '预稽查', null, null, 'preAudit', null, null, null, '50', '2016-09-05 07:26:09.553', null, null, '1', '', null), ('90009', '1', '90001', '90001', 'simplejc:6:80008', '预稽查', null, null, 'preAudit', null, null, null, '50', '2016-09-05 07:27:43.669', null, null, '1', '', null), ('92513', '1', '92501', '92501', 'simplejc:6:80008', '稽查', null, null, 'audit', null, null, null, '50', '2016-09-05 07:29:38.828', null, null, '1', '', null), ('95017', '1', '95013', '95013', 'simplejc:7:95012', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:48:32.627', null, null, '1', '', null), ('97505', '1', '97501', '97501', 'simplejc:7:95012', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 09:55:51.081', null, null, '1', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `act_ru_variable`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `act_ru_variable`
-- ----------------------------
BEGIN;
INSERT INTO `act_ru_variable` VALUES ('77503', '1', 'jpa-entity', 'projectInfo', '77501', '77501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '18'), ('80012', '1', 'jpa-entity', 'projectInfo', '80010', '80010', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '19'), ('82503', '1', 'jpa-entity', 'projectInfo', '82501', '82501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '20'), ('85003', '1', 'jpa-entity', 'projectInfo', '85001', '85001', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '21'), ('87503', '1', 'jpa-entity', 'projectInfo', '87501', '87501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '22'), ('87507', '1', 'boolean', 'telephoneInterviewOutcome', '87501', '87501', null, null, null, '1', null, null), ('90003', '1', 'jpa-entity', 'projectInfo', '90001', '90001', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '23'), ('90007', '1', 'boolean', 'telephoneInterviewOutcome', '90001', '90001', null, null, null, '1', null, null), ('92503', '1', 'jpa-entity', 'projectInfo', '92501', '92501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '24'), ('92507', '1', 'boolean', 'telephoneInterviewOutcome', '92501', '92501', null, null, null, '1', null, null), ('92511', '1', 'boolean', 'techOk', '92501', '92501', null, null, null, '1', null, null), ('95015', '1', 'jpa-entity', 'projectInfo', '95013', '95013', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '25'), ('97503', '1', 'string', 'projectName', '97501', '97501', null, null, null, null, '工作流测试——1', null);
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_catalog`;
CREATE TABLE `aos_sys_catalog` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `cascade_id_` varchar(255) NOT NULL COMMENT '节点语义ID',
  `root_key_` varchar(255) NOT NULL COMMENT '科目标识键',
  `root_name_` varchar(255) NOT NULL COMMENT '科目名称',
  `name_` varchar(255) NOT NULL COMMENT '分类名称',
  `hotkey_` varchar(255) DEFAULT NULL COMMENT '热键',
  `parent_id_` varchar(64) NOT NULL COMMENT '父节点流水号',
  `is_leaf_` varchar(255) NOT NULL DEFAULT '1' COMMENT '是否叶子节点',
  `is_auto_expand_` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否自动展开',
  `icon_name_` varchar(255) DEFAULT NULL COMMENT '图标文件名称',
  `sort_no_` int(10) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_catalog_ukey` (`cascade_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Records of `aos_sys_catalog`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_catalog` VALUES ('21d03054afdf43d69972cf6f7db6cfa3', '0.002', 'DIC_TYPE', '词典分类科目', '数据字典分类', null, '0', '0', '0', 'book.png', '2'), ('38368661c53c40b6824869a0ccffad05', '0.002.001.001', 'DIC_TYPE', '词典分类科目', '工作流', null, '4018a2217b0542059a26ecf3f605d60f', '1', '0', 'folder6.png', '1'), ('4018a2217b0542059a26ecf3f605d60f', '0.002.001', 'DIC_TYPE', '词典分类科目', '系统管理', null, '21d03054afdf43d69972cf6f7db6cfa3', '0', '1', 'folder22.png', '2'), ('4018f65de18043c899b5e21ce7328df7', '0.001.002', 'PARAM_TYPE', '参数分类科目', '系统参数', null, 'cd14928a239b448b867c2e45246cd038', '0', '1', 'folder22.png', '1'), ('6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', 'PARAM_TYPE', '参数分类科目', '验证码', null, '4018f65de18043c899b5e21ce7328df7', '1', '0', 'ok3.png', '2'), ('8d6c9869e8b2427cb16cf3f4777bf236', '0.002.007', 'DIC_TYPE', '词典分类科目', '范例', '', '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder11.png', '10'), ('aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', 'DIC_TYPE', '词典分类科目', '全局通用', null, '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder24.png', '3'), ('c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', 'DIC_TYPE', '词典分类科目', '平台配置', null, '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder2.png', '1'), ('cd14928a239b448b867c2e45246cd038', '0.001', 'PARAM_TYPE', '参数分类科目', '参数分类', null, '0', '0', '0', 'book.png', '1');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_dic`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_dic`;
CREATE TABLE `aos_sys_dic` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `code_` varchar(255) NOT NULL COMMENT '字典对照码',
  `desc_` varchar(255) NOT NULL COMMENT '字典对照值',
  `hotkey_` varchar(255) DEFAULT NULL COMMENT ' 热键',
  `status_` varchar(255) NOT NULL DEFAULT '1' COMMENT '当前状态',
  `dic_index_id_` varchar(64) NOT NULL COMMENT '所属字典流水号',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典明细表';

-- ----------------------------
--  Records of `aos_sys_dic`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_dic` VALUES ('040e1d4d8a914145884553f170e1bcfd', '1', '缺省', null, '1', 'cfcbc48fd8ad42678a52334bac8aa299', null), ('040fbde5cca746e7a90a9f888c033897', '4', '只读', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('045e7dce267b4ef3b098ca00030220bf', '2', '金卡', null, '1', '2724924f1cdd48d1aa1a84cb7dd9b3ee', null), ('074c63e541174ed0b7c71588936ae453', '1', '平铺', null, '1', 'ffc94f2b7ad14c78b14c46f8fab17543', null), ('075a268cd7e14a728ca841e769b9d5a6', '1', '缺省', null, '1', '79004d064e954e55b832a8a9a4332576', null), ('0801986eec2b49e6904db73bb016b8bc', '5', '已确认', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null), ('0825b66058c14bc5bfacdba1fd055af4', '2', '浮动菜单', null, '1', 'a9fd5aa3b7654326902a94e70bccedd8', '欢迎页显示的Mac风格的浮动菜单'), ('0ccc4a6e3df246d8bbd3ccb1d29eb4c4', '0', '停用', null, '1', '10a113b1dd6d492dad27c8b0a0fb7efc', null), ('0ee3e8b931374725b213150b021507cc', 'catalog', 'aos', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库名/实例名'), ('15f728ef5143444f9bfafa1c5c8a6a3b', '3', '隐藏', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('1722aa532c4044ac8087579feac85f7f', 'neptune', 'neptune.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null), ('17b249a462e7409baa99f36057fa79e7', '1', '是', null, '1', '91bc8a695b744b27ba66a94561fd6dbc', ''), ('1915d507f36d4ae688267ebca838d39f', 'blue', '#3399FF', null, '1', '61fd319a23b04bd1bdbce7037002976a', null), ('1bb70ce5d6e649fd9179f3a3d35367f9', 'blue', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null), ('1c2ebffd1b48420999ff57e2ec325270', '3', '未知', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', ''), ('1deee1b367ae4ccb81226a86eb7d9675', '1', '普卡', null, '1', '2724924f1cdd48d1aa1a84cb7dd9b3ee', null), ('1fb134407f364baf8b857235c7828059', '2', '停用', null, '1', '0744eedeaaa143afa499254866aa75c9', null), ('226489afb7ab4cf69107a78c60ed2267', 'PENDING', '代理中', null, '1', 'c66f06c069224241a4785e77d1406f9c', null), ('23910ad1f9684644b214ff99209e94d4', '3', '关联页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '主页面上跳转出去的页面'), ('23a410439cf7459799c286745b123293', '1', '激活', null, '1', '2c90ab6212f44b08a1d8ed527c72795f', null), ('24bca6d79bb14b5f97fbddbe5219705b', '1', '按钮|菜单下拉项', null, '1', '7d048854ccdc4eab996dcb703722065b', null), ('27689b76c3cf4168a7efb737806e9ed7', '2', '已结束', null, '1', 'a06eb2af650444db903c945030334b12', null), ('29462076b88f4facb86f7647c04119d0', '2', '子页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '在主页面上的子导航打开的页面(内嵌式的)'), ('2a5d03f79fd64c2090c9847d1b1484f0', '3', '待签收', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null), ('2bd5fc7756d74fe59f5b9372fd83d03c', '4', '分割符', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '子页面生成的二级导航菜单的分割符标识'), ('2ce972620b1d484e880ae17113f4cf05', 'tight', '组合按钮', null, '1', 'a19ac2af964c4a6e8af9c6f1c0d2673f', null), ('2e2ef7ebcd5449a1a1b593f63ddb17ba', '3', '管理员封锁', null, '1', '0744eedeaaa143afa499254866aa75c9', null), ('2ea2449b3cea4517a40e88bab1a3b67b', '1', '已领取', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null), ('2ef4d36610334dc6bc9bd153be594da2', '3', 'DBSequence', null, '1', '2a9ac1749d224bef924cd258bf35254a', null), ('2f9994a32b3e4afd96420c180155065a', '3', '矢量图标', null, '1', '21136c3dc660464d92fccd66408e149b', null), ('3058d4cd6c514d23a27eee77b140a349', 'aos', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null), ('338541a1b2094ea5a0e51ce81f9012de', 'port', '3306', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库主机端口'), ('37a243f7cb96413386c3ea781051244e', '3', '工作组', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null), ('37d2d28ac8104f6481997b640c5d4fd0', '4', '其它', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null), ('3a4466b864744a0da3b93eec3f24dfff', 'blue', '天蓝', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null), ('3c56f07c48b746698591068c308064a7', 'gray', '银灰', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null), ('3f1b50a0f5be46a69597fca95c1e82d7', '2', '大图标[64X64]', null, '1', '21136c3dc660464d92fccd66408e149b', null), ('4113d10127a34b4fa88b2d6b118accf0', '0', '否', null, '1', '91bc8a695b744b27ba66a94561fd6dbc', null), ('413055f896744285a401cc238323785d', '0', '普通', null, '1', '852946ac593e4f3fa21df7db7d21e085', '默认级别'), ('462d4322dd6c408c8d2dfa1241c209f6', '2', '挂起', null, '1', '2c90ab6212f44b08a1d8ed527c72795f', null), ('4ae7b6f7d54a4236ba9b18a9e05d7fb4', '4', '容器组件(窗口|面板|树|表格|工具栏等)', null, '1', '7d048854ccdc4eab996dcb703722065b', null), ('4af1d58e374149f38c5ae9f76674a79f', 'aos', '#FAFAFA', null, '1', '61fd319a23b04bd1bdbce7037002976a', null), ('4c5816e8db1c4f0995fbeb7a1b840685', '1', '主页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '点击主导航菜单打开的页面'), ('569b3bab75734c628a9bb0b3fbcd8922', '2', '显示', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('58195ff7a3084df2a2dd5b401aa29a77', '0', '系统导航', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null), ('58fc07abcfdc46478ad14fb9d95214f6', 'dataBaseType', 'mysql', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '可选值：mysql、oracle、microsoft sql server、postgresql。'), ('5a53887315f7450e96816c1a46dc5b5e', '2', '项目组', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null), ('5c4196e15f47466ea19137666e455504', 'neptune', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null), ('5dd1c5a1610544b490af86cc826e3663', '2', '表格列', null, '1', '7d048854ccdc4eab996dcb703722065b', null), ('5de14be720b546ebb9676db86cdc5f6c', '2', '女', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', null), ('5dfc1a71df524cd68311a95e7176cab7', 'gray', '#BCB0B0', null, '1', '1ec5d3c945de40469595c85955196e76', null), ('6a05b8c8ce244c3f9b4872f812c689ec', '1', '经办权限', null, '1', 'dd9f74d16be14db5b0f6d79720c8f177', null), ('6c575847953847ceb7d4675e94d78547', 'aos', '#99bce8', null, '1', '1ec5d3c945de40469595c85955196e76', null), ('6e018ced3ae046de93d74630a97361a1', 'aos', '#006699', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null), ('735edf2e8a1242078141405d344d3c84', '1', '未授权', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('786d09295c904608868807b9e08238ee', 'neptune', '#c0c0c0', null, '1', '1ec5d3c945de40469595c85955196e76', null), ('7ab2cba5964a4457ae250919ae120cc4', '3', '自查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null), ('7b6226ba4b6b404bab3cc520d5c1e6b5', 'neptune', '海王星(水蓝)', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null), ('84552cfdf36f4fee92d81a49340495ca', 'blue', '#DFE8F6', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null), ('84ee7e35ab134ec1acd2cfd28d3915f6', 'standalone', '独立按钮', null, '1', 'a19ac2af964c4a6e8af9c6f1c0d2673f', null), ('85f5017c1860434eacfceb519b8ad8cd', 'blue', 'blue.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null), ('867c0aacba654feea60c22c5e4be9368', 'aos', 'red', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null), ('871d7ac8ec704614a15d29f540b8b439', 'true', '显示', null, '1', '33a73af4b729448b91c13acf4d0a31e1', null), ('87923302cb424da9aa55b6a9ce77090b', '7', '激活', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('89f8ab9369a64de09a8207829f520297', 'gray', 'gray.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null), ('8b536d0c9a2e4e80b1edf91190b98253', '5', '编辑', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('8da661446e6d4e9cb49d2eb5ab225cd0', '2', '树状', null, '1', 'ffc94f2b7ad14c78b14c46f8fab17543', null), ('8e42e7df7bd044b89c7a5d5b59b44b18', '1', '男', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', null), ('92dfd82860a0474da735575e9b91f6de', 'classic', '经典主题', null, '1', 'a44dd9bbf55041368882e88821309355', '上Banner-左导航-中经办。'), ('958235d21e2f4d44babd8ae7da7dd7f8', '99', '撤消授权', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('99419e3ea3d64507aa507854fd210a75', '3', '表单元素(输入框|下拉框|选择框等)', null, '1', '7d048854ccdc4eab996dcb703722065b', null), ('9d1c5da19d0b4ad9b97b570ed4481bf2', 'false', '隐藏', null, '1', '33a73af4b729448b91c13acf4d0a31e1', null), ('9df1bbd8b0d44b4c994ed7a792d6f055', '3', '进行中', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null), ('9eb462a5fd0547b9898540b6e5a4ca98', 'gray', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null), ('9f291605aa824f489ee51528e80a7227', '0', '未完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', ''), ('a603159d47b94145a32b51f659b47c09', '4', '系统封锁', null, '1', '0744eedeaaa143afa499254866aa75c9', null), ('a63ab46c45b048b1a0d727c5f0d69f58', '3', '导入离线文件', null, '1', '483fb2ff35e84a42974e914851fae01a', null), ('a871329cbeb343bea48a467e05e066f5', '2', '在线克隆', null, '1', '483fb2ff35e84a42974e914851fae01a', null), ('a97934b734a94d70a71353bc78e572df', 'neptune', '#FAFAFA', null, '1', '61fd319a23b04bd1bdbce7037002976a', null), ('a9bef6122ad7444999ce17b4ad5a0628', '2', '发现', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null), ('ac8049fc0ded42b09a3654ef547ac772', '1', '小图标[16X16]', null, '1', '21136c3dc660464d92fccd66408e149b', null), ('b18435d1752a4a8c96628402298c0493', 'gray', '#555555', null, '1', '61fd319a23b04bd1bdbce7037002976a', null), ('b1d95ea28e084b64b0f6a473e65fe2fd', 'aos', 'AOS', null, '0', '3ba3a682c2ac4d52982411dd045fae32', ''), ('b5bdcaeeccd44ad9aceae1968fbe0851', 'userName', 'realdemos', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库用户名'), ('b85f79702d094f348e1c9e79e67d95b7', '1', '待办', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null), ('ba5b0493f0544278a980e0f268baf83c', '1', '快捷菜单', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null), ('bbef93ea807847029e98ed7023b47c6a', '1', '正常', null, '1', '0744eedeaaa143afa499254866aa75c9', null), ('bc17f4f03f0d415c97a026e8ec5a999d', 'blue', '#6699CC', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null), ('c172686bc21e40efacca63c5b7e1c9d3', 'blue', '#99bce8', null, '1', '1ec5d3c945de40469595c85955196e76', null), ('c1c92ade06b94969b2b066184845781c', '6', '禁用', null, '1', '2794338c8b4946b99c361dae80da71b1', null), ('c20e301598954f0ab33445680ca1db27', 'gray', '#F0F0F0', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null), ('c38ebb4d102440babfde6f6f8fbf5d00', '2', '办结', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null), ('c3e008a5ba864e21b5a66230e389926c', '1', '行政部门', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null), ('cab329d4831642a3a42148c691cab443', '1', '例行检查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null), ('cc53b6f6235f413db559f4a7e7ba88e6', '1', '运行中', null, '1', 'a06eb2af650444db903c945030334b12', null), ('cc8d6e844c3c46e0bfc973ef51dcb4a3', 'neptune', '#D0DDF2', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null), ('cd08dff488454293bc8aa8224eb719cb', 'password', 'realtest6', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库用户密码'), ('cde729266d09465ca624939dc05e6b4d', '2', 'UUID', null, '1', '2a9ac1749d224bef924cd258bf35254a', null), ('ce49529f302f446d8e6e4576578ad459', '3', '注册用户', null, '1', '0475e71c145f49acbe781b2e7310ab64', null), ('d93b044fec9941cd87ec8260fab2c9b9', 'gray', '#888888', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null), ('dbb1b8afd73948aea5df13876b1f4c29', '2', '已完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null), ('e81beb66246441228ba1bb17190db222', '2', '管理权限', null, '1', 'dd9f74d16be14db5b0f6d79720c8f177', null), ('ebe726f2cfa2434dbb7f943f6f42c3ad', '2', '超级用户', null, '1', '0475e71c145f49acbe781b2e7310ab64', null), ('f08565c1fd7444bcb24645e52335a1e1', '1', '快捷菜单', null, '1', 'a9fd5aa3b7654326902a94e70bccedd8', null), ('f1f754ae30d54e2895c32050ff4c1d3d', 'aos', 'aos.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null), ('f3b582592cb24df5b64301b5edc0a4ef', '2', '抽查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null), ('f4108659f1f8461db381c2808b82e038', '1', '启用', null, '1', '10a113b1dd6d492dad27c8b0a0fb7efc', null), ('f5d18126770d42a4a6b922c3b67ed161', '1', '在线设计', null, '1', '483fb2ff35e84a42974e914851fae01a', null), ('f624177f00ba4f15a60a8188856b5425', '1', 'APPID', null, '1', '2a9ac1749d224bef924cd258bf35254a', null), ('f7b6f63fc5de469aaf90986188037516', 'neptune', '#006699', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null), ('f97e6ea7f6fe4f6e8b7fde75f0074e2c', '1', '缺省', null, '1', '0475e71c145f49acbe781b2e7310ab64', null), ('fac86f6625cb47fc8c1a4bab41dc1af4', 'ip', '127.0.0.1', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库主机IP'), ('fdd10e4dcc284a6d99fe88ce8556a2b8', '4', '已完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null), ('fedcb0e622734060a19a3d9b98e96f71', '4', '导入离线文本', null, '1', '483fb2ff35e84a42974e914851fae01a', null);
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_dic_index`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_dic_index`;
CREATE TABLE `aos_sys_dic_index` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `key_` varchar(255) NOT NULL COMMENT '字典标识',
  `name_` varchar(255) NOT NULL COMMENT '字典名称',
  `hotkey_` varchar(255) DEFAULT NULL COMMENT '热键',
  `catalog_id_` varchar(64) NOT NULL COMMENT '所属分类流水号',
  `catalog_cascade_id_` varchar(255) NOT NULL COMMENT '所属分类流节点语义ID',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_dic_index_ukey` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典索引表';

-- ----------------------------
--  Records of `aos_sys_dic_index`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_dic_index` VALUES ('0475e71c145f49acbe781b2e7310ab64', 'user_type_', '用户类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('0744eedeaaa143afa499254866aa75c9', 'user_status_', '用户状态', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('10a113b1dd6d492dad27c8b0a0fb7efc', 'enabled_', '使能状态', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', ''), ('1ec5d3c945de40469595c85955196e76', 'cmp_border_color_', '组件边框颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('21136c3dc660464d92fccd66408e149b', 'icon_type_', '图标类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('2724924f1cdd48d1aa1a84cb7dd9b3ee', 'card_type_', '信用卡类型', null, '8d6c9869e8b2427cb16cf3f4777bf236', '0.002.007', null), ('2794338c8b4946b99c361dae80da71b1', 'cmp_grant_type_', '界面元素授权类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', ''), ('2a9ac1749d224bef924cd258bf35254a', 'sequence_type_', 'ID类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', ''), ('2c90ab6212f44b08a1d8ed527c72795f', 'procdef_suspension_state_', '流程定义活动状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', ''), ('2d977e97aacf4781836bac9f5e88ad2b', 'webide_jdbc', 'WebIDE模块使用的JDBC连接', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', 'WebIDE模块使用的JDBC连接。'), ('3146aefcb39344cebe6e0a9baa7a4a48', 'south_back_color_', '主页面south区域背景颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('33a73af4b729448b91c13acf4d0a31e1', 'is_show_top_nav_', '是否显示顶部导航条', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '是否显示水平导航条。(只有在导航模式为1的情况，此设置才有效,导航模式为2，则水平导航条不会消失)。可选值：true| false。'), ('38841cd4f85f4ffb8c07c74650a130dc', 'page_type_', '页面类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('3ba3a682c2ac4d52982411dd045fae32', 'skin_', '界面皮肤', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', ''), ('3f77e94615ba4b93a4e5ca5ecf3c8f14', 'realss_checkjob_status', '检查任务状态', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null), ('48062fd856f14794b03ceba2a1d6b60e', 'proctask_status_', '任务状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', null), ('483fb2ff35e84a42974e914851fae01a', 'create_type_', '流程模型创建方式', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', '业务流程模型创建方式'), ('4c2a12d3890a449fa91521a29a3c2436', 'nav_tab_index_', '导航缺省活动页', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('54e48c66b3ef4d99823ca8217a2abf43', 'main_text_color_', '边界区域字体主颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('58b28eade8604dffa7c531b7b42af2fa', 'org_type_', '组织类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('61fd319a23b04bd1bdbce7037002976a', 'nav_text_color_', '导航文字颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('79004d064e954e55b832a8a9a4332576', 'post_type_', '岗位类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('7d048854ccdc4eab996dcb703722065b', 'page_el_type_', '页面元素类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('852946ac593e4f3fa21df7db7d21e085', 'job_type_', '检查任务类型', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null), ('91bc8a695b744b27ba66a94561fd6dbc', 'bool_', '是否布尔值字典', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', ''), ('a06eb2af650444db903c945030334b12', 'procinst_status_', '流程实例状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', null), ('a19ac2af964c4a6e8af9c6f1c0d2673f', 'navbar_btn_style_', '顶部导航条按钮风格', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('a44dd9bbf55041368882e88821309355', 'theme_', '系统主题', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', ''), ('a9fd5aa3b7654326902a94e70bccedd8', 'module_user_nav_type', '导航菜单类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', ''), ('c66f06c069224241a4785e77d1406f9c', 'delegation_', '委派状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', '流程任务的委派代理状态'), ('cfcbc48fd8ad42678a52334bac8aa299', 'role_type_', '角色类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('dd9f74d16be14db5b0f6d79720c8f177', 'grant_type_', '权限类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null), ('e9e9cfc195514b05890a2249b81dfe73', 'north_back_img_', '主页面north区域背景图片', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('f59d8693d8cf4f10850914e09ae9b93c', 'sex_', '性别', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null), ('fa8097dd670643f9a03722c4074ecba5', 'left_logo_', 'Banner左边logo图标', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null), ('ffc94f2b7ad14c78b14c46f8fab17543', 'nav_quick_layout_', '快捷菜单布局风格', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '快捷菜单布局风格。');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_module`;
CREATE TABLE `aos_sys_module` (
  `id_` varchar(64) NOT NULL COMMENT '功能模块流水号',
  `cascade_id_` varchar(255) NOT NULL COMMENT '节点语义ID',
  `name_` varchar(255) NOT NULL COMMENT '功能模块名称',
  `url_` varchar(255) DEFAULT NULL COMMENT '主页面URL',
  `hotkey_` varchar(255) DEFAULT NULL COMMENT '热键',
  `parent_id_` varchar(64) NOT NULL COMMENT '父节点流水号',
  `is_leaf_` varchar(255) NOT NULL DEFAULT '1' COMMENT '是否叶子节点',
  `is_auto_expand_` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否自动展开',
  `icon_name_` varchar(255) DEFAULT NULL COMMENT '节点图标文件名称',
  `status_` varchar(255) NOT NULL DEFAULT '1' COMMENT '当前状态',
  `parent_name_` varchar(255) NOT NULL COMMENT '父节点名称',
  `vector_` varchar(255) DEFAULT NULL COMMENT '矢量图标',
  `sort_no_` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='功能模块表';

-- ----------------------------
--  Records of `aos_sys_module`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_module` VALUES ('078df89c7b5b478cb38fd607805c6155', '0.004.002.001.007', '常用表单元素API', 'demo/initFormApi.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '20'), ('09b24aac059f4ba58bfb30652636b543', '0.004.003.001', '综合实例①', 'demo/misc/initMisc1.jhtml', '', '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', '', '1', '综合实例', '', '10'), ('0b99e9d118b54ee084d9e74bd72cdd1c', '0.001.002', '资源管理', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder14.png', '1', '系统管理', null, '20'), ('1886bf699ec74f79959bdc8ca8e5371a', '0.001.006.004', '会话监控', 'system/sessionLog/init.jhtml', null, '5b9a439743f141729f46a07e8e222a47', '1', '0', 'c_key.png', '1', '监控与审计', null, '10'), ('1906d5a892654e2bb882851e0ea7322f', '0.001.008.001', '图标', 'system/icon/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'page_picture.png', '1', '开发工具箱', null, '60'), ('1a34ea36b51447a1a16a3ddf7f2e84fc', '0.008.001', '用户', 'ss/temp/user/init.jhtml', '', 'a59d840e88594f7b87b3f96d227d6707', '1', '0', '', '1', '临时测试', '', '1'), ('1cf1947152174cacaf226fa54ca51351', '0.004.002.001.009', '表单校验', 'demo/initFormValidate.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '8'), ('25406890354f4514909e2ad1c0fd678d', '0.004.002.003.001', '表格①', 'demo/grid/initGrid1.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '10'), ('266bbec9e0af4612afa5139aade0a511', '0.004.002.001.006', '组合选择框', 'demo/initFormComboBox.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '30'), ('2790bf6cc0b54c36b56c90429c112ab2', '0.001.008.005', 'WebIDE', 'system/coder/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'icon15.png', '1', '开发工具箱', null, '5'), ('29873ca569fb46c3bbd951a8a1df2472', '0.002', '项目导航', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder2.png', '1', '智慧药监管理平台', 'fa-github-alt', '10002'), ('2a4c060f44d944ea926fe44522ce7b39', '0', '智慧药监管理平台', '', '', 'p', '0', '1', 'home.png', '1', 'root', '', '1'), ('2dd9dac74b064ea98f063265b642526d', '0.005.005.001', '新建核查任务', 'ss/checkjob/checktem/initCheckTem.jhtml', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '100'), ('327677ef8d2a4e5caf3c4cbc9b72d0b0', '0.004.002.003.004', '客户端分页表格', 'demo/grid/initGrid3.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '40'), ('33baf8c9948b47cfa54cd8d7a5e1753d', '0.004.003', '综合实例', '', '', '6e10c86d1885434e80e6dfa0953e307d', '0', '1', '', '1', '范例', '', '20'), ('38e28fce49414c4c9e95d032559d5bee', '0.004.002.002', '按钮', 'demo/initButton.jhtml', null, '6cab8b013c314b37aec7c4567d859fc8', '1', '0', null, '1', 'AOS UI组件库', null, '10'), ('3b41af04060b414d85a05655b76801a3', '0.011.001', '核查任务统计分析', 'ss/report/initJobReport.jhtml', '', 'a4b0e8936806432181f60d53fc18e0a1', '1', '0', '', '1', '统计分析', '', '1'), ('3bb16fa3935c41bebe4d3fcf3c4ebd5c', '0.004.004', '杂项', '', '', '6e10c86d1885434e80e6dfa0953e307d', '0', '0', '', '1', '范例', '', '15'), ('3dddb80dc030499c936c2ede4eaa3ab4', '0.009', '我的待办工作', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'task.png', '1', '智慧药监管理平台', '', '1000'), ('4d3cfce7b9b146d2bc8482ec477517aa', '0.002.001', '首选项', 'system/preference/init.jhtml', null, '29873ca569fb46c3bbd951a8a1df2472', '1', '0', 'config1.png', '1', '项目导航', null, '10'), ('50d7cd80f5854637a576aa95839488e9', '0.007.002', '原辅料管理', 'ss/jxq/manager.jhtml', '', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '0', '', '1', '原辅料管理', '', '1'), ('524e5f5c3e5b4cdb90611cd8b15ca684', '0.001.008', '开发工具箱', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder9.png', '1', '系统管理', 'fa-bug', '70'), ('52bfff4fb4fd41488d5f7c09991e997f', '0.005', '检查工作管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'search.png', '1', '智慧药监管理平台', '', '4000'), ('56fcae7c948043e3a6ba6f9ab56aaccd', '0.005.003', '模板管理', 'ss/checkjob/checktem/initCheckTem.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '300'), ('591f2ffa62a1461887c1d6f02c60a1ff', '0.004.004.002', '消息通知窗口', 'demo/initNotification.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '2'), ('5ae41d35d16247febabf631a81a0d70d', '0.004.002.001.008', '表单数据交互', 'demo/initFormData.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '40'), ('5b9a439743f141729f46a07e8e222a47', '0.001.006', '监控与审计', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder27.png', '1', '系统管理', null, '60'), ('5fb994e71cb14a77891670990d7f554d', '0.001.001', '基础数据', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder2.png', '1', '系统管理', null, '10'), ('619cb338b278406f8368471034d5946f', '0.001.004.006', '任务节点', 'workflow/procTask/init.jhtml', '', 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'task_list.png', '1', '业务流程管理', '', '40'), ('645419cf0e1c4ea6b3b8945e5338ad58', '0.007', '原辅料管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'text_list.png', '1', '智慧药监管理平台', '', '3000'), ('647ebc4423a2409dbc3d1c91d43cdcda', '0.006.003', '企业基本信息', 'ss/company/init4ent.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1'), ('65320b914c18453f9ca0a84d3f8a0a7b', '0.001.003.001', '组织架构', 'system/org/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon56.png', '1', '组织与权限', null, '1'), ('68822bfa39914373afe70dc343c84e94', '0.004.002.001.005', '常用表单元素', 'demo/initFormElements.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '10'), ('6b500915e65949639acbe8dd9b54adbc', '0.007.001', '原辅料查看', 'ss/jxq/init.jhtml', '', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '1', '', '1', '原辅料管理', '', '1'), ('6cab8b013c314b37aec7c4567d859fc8', '0.004.002', 'AOS UI组件库', null, null, '6e10c86d1885434e80e6dfa0953e307d', '0', '1', null, '1', '范例', null, '10'), ('6e10c86d1885434e80e6dfa0953e307d', '0.004', '范例', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder27.png', '1', '智慧药监管理平台', 'fa-coffee', '10001'), ('6f9e2b465ad54dc4ab18ebc5896951b4', '0.006.002', '企业信息查询', 'ss/company/initreport.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1'), ('704d4e51ffcf473fa95ab9e680177d46', '0.004.002.003.002', '表格②', 'demo/grid/initGrid2.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '20'), ('715f6cf8d2ce4fa694baf2259327f6b1', '0.001.003.002', '岗位与授权', 'system/post/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon137.png', '1', '组织与权限', null, '3'), ('73b69ca49e2240ba8717fc13acb884c2', '0.004.002.001.001', '表单布局①', 'demo/initForm1.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '1'), ('75df10afbf5249f6939a4507e055f055', '0.006.001', '企业基本信息管理', 'ss/company/init.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1'), ('7a6d3674e5204937951d01544e18e3aa', '0.001', '系统管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder22.png', '1', '智慧药监管理平台', 'fa-cogs', '9999'), ('7e6951e668be44b39fb9f9fd20b21315', '0.004.003.002', '综合实例②', 'demo/misc/initMisc2.jhtml', '', '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', '', '1', '综合实例', '', '20'), ('81fc0e05049e467d976ec523182421f2', '0.001.002.004', '序列号', 'system/idMgr/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'id.png', '1', '资源管理', null, '30'), ('82b07f82b98046028538e925f66794d1', '0.005.002', '模版创建', 'ss/checkjob/checkitem2/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '200'), ('8472acca5a9e47348b7ab3d6ebf261b5', '0.005.005.003', '未完成任务列表', 'ss/checkjob/job/initunfinishedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '300'), ('870c482cdb2e4c8aa373dcf447964284', '0.004.002.003.003', '可编辑表格', 'demo/grid/initEditGrid.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '30'), ('88bc371429ce4243a49c5893ae036f6a', '0.004.002.004', '报表', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '40'), ('8b33d532b9184f39871a861ea6f8a318', '0.008.002', '企业', 'ss/temp/ent/init.jhtml', null, 'a59d840e88594f7b87b3f96d227d6707', '1', '0', null, '1', '临时测试', null, '1'), ('920fe6ba911148cd810ceca31ad9d54f', '0.010', '综合看板', 'ss/dashboard/init.jhtml', '', '2a4c060f44d944ea926fe44522ce7b39', '1', '0', 'bullet_group4.gif', '1', '智慧药监管理平台', '', '1500'), ('921b5164722d43698abf970a92c628d1', '0.005.001', '检查项元数据管理', 'ss/checkjob/checkitem/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '100'), ('97c8a95d0aa84d7cba2a8b536ba5326a', '0.004.002.001.002', '表单布局②', 'demo/initForm2.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '2'), ('98d7e720b8524600844728bcb4f8d518', '0.005.005.004', '已创建的任务列表', 'ss/checkjob/job/initmycreatedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '200'), ('9a68cc97425344cda05e551ae5ae66cb', '0.005.005', '任务管理', '', '', '52bfff4fb4fd41488d5f7c09991e997f', '0', '0', '', '1', '检查工作管理', '', '500'), ('9a8e5cedcd514af2b37cf5828f509f94', '0.001.001.003', '分类科目', 'system/catalog/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon146.png', '1', '基础数据', null, '20'), ('9e4cf77815dd49fbac4158c62af3197a', '0.001.001.001', '键值参数', 'system/param/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon79.png', '1', '基础数据', null, '1'), ('a21b52d911bb44c2978e52bbc523de51', '0.001.004.002', '流程部署', 'workflow/procDeploy/init.jhtml', null, 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'modules_wizard.gif', '1', '业务流程管理', null, '10'), ('a27532c1cc8948e5b9bd7d8ac2e30a42', '0.004.002.006.001', '布局①', '', '', 'f84a495bca10403ebe8351d4737dfc72', '1', '0', '', '1', '容器布局', '', '1'), ('a3791f2557354144b58bdcbbfa400e7e', '0.005.005.002', '已完成任务列表', 'ss/checkjob/job/initfinishedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '400'), ('a4b0e8936806432181f60d53fc18e0a1', '0.011', '统计分析', null, null, '2a4c060f44d944ea926fe44522ce7b39', '0', '0', null, '1', '智慧药监管理平台', null, '5000'), ('a4d2ef333e35476680786df9a89e200b', '0.004.002.004.001', '报表①', 'demo/report/initReport1.jhtml', null, '88bc371429ce4243a49c5893ae036f6a', '1', '0', null, '1', '报表', null, '1'), ('a59d840e88594f7b87b3f96d227d6707', '0.008', '临时测试', null, null, '2a4c060f44d944ea926fe44522ce7b39', '0', '0', null, '1', '智慧药监管理平台', null, '1'), ('b4485f8151ae4a7db09ee6cd70c5e24f', '0.004.003.003', '综合实例③', 'demo/misc/initMisc3.jhtml', null, '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', null, '1', '综合实例', null, '30'), ('b656d6afbbe844d0a6626d0eb590643f', '0.001.003', '组织与权限', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder23.png', '1', '系统管理', null, '30'), ('ba90369eb83540bab4d9492bc17f0937', '0.001.004.005', '流程实例', 'workflow/procInst/init.jhtml', null, 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'icon5.png', '1', '业务流程管理', null, '30'), ('bc3c9877c598404da7e31355a4deebad', '0.001.008.002', 'WebSQL', 'system/webSql/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'sql.png', '1', '开发工具箱', null, '10'), ('bd0a4ba6764d4d86883cfa7aa513315d', '0.006', '企业管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'vcard.png', '1', '智慧药监管理平台', '', '2000'), ('bf530e26480d43b08dd20e31e31274af', '0.001.003.006', '角色与授权', 'system/role/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon134.png', '1', '组织与权限', null, '5'), ('c416f519d2b74cb39e0c4ace13e168d6', '0.008.004', '时间轴22', 'ss/temp/timeline/company.jhtml', null, 'a59d840e88594f7b87b3f96d227d6707', '1', '0', null, '1', '临时测试', null, '1'), ('cfc4e4bd367047a29e0d72e688f860a2', '0.001.004', '业务流程管理', '', '', '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder24.png', '1', '系统管理', '', '40'), ('d452524058ff42cfb9e5146dacd0cd79', '0.001.006.002', '操作日志', null, null, '5b9a439743f141729f46a07e8e222a47', '1', '0', 'user20.png', '1', '监控与审计', null, '20'), ('dbf75990cf784e79920caf7eb47856f6', '0.004.002.003', '表格', null, null, '6cab8b013c314b37aec7c4567d859fc8', '0', '1', null, '1', 'AOS UI组件库', null, '30'), ('dc404d3ef1334c5ca18dd217e4f7e2f1', '0.005.006', '检查统计', 'ss/checkjob/result/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '999'), ('dd2882255a2047c99e911ccd53d47bc5', '0.008.003', '时间轴', 'ss/temp/timeline/init.jhtml', '', 'a59d840e88594f7b87b3f96d227d6707', '1', '0', '', '1', '临时测试', '', '1'), ('e3e403f7b94247c7827d8f280f06b64d', '0.004.002.001.003', '表单布局③', 'demo/initForm3.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '3'), ('e7bb35f24a634a759cef64d28411901f', '0.004.004.001', '存储过程调用', 'demo/procedure/init.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '10'), ('e9de0eacf61a4aa6b1ed0c210fc209fe', '0.004.004.003', '页面组件复用', 'demo/initShare.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '20'), ('f107450058a2438eb6ad9bf6a4d7e967', '0.001.001.002', '字典参数', 'system/dictionary/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon154.png', '1', '基础数据', null, '10'), ('f405a849f27d4ddebf7f8a2dfbf30bea', '0.001.002.001', '功能模块', 'system/module/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'icon75.png', '1', '资源管理', null, '10'), ('f4768a44bc6a491bbac10d6f9710b8c6', '0.009.001', '检查工作待办事项', 'ss/checkjob/job/initunfinishedjob.jhtml?', '', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '0', 'folder4.png', '1', '我的待办工作', '', '100'), ('f73a952eefa2406c9327da6252c4ca79', '0.004.002.001', '表单', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '20'), ('f81608054a714b60adb0b1ed574c6b6c', '0.001.003.003', '用户与授权', 'system/user/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'user6.png', '1', '组织与权限', null, '4'), ('f84a495bca10403ebe8351d4737dfc72', '0.004.002.006', '容器布局', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '35'), ('fd88d0de59024e4db81ead8510b6bd98', '0.001.002.003', '页面组件', 'system/page/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'icon59.png', '1', '资源管理', null, '20');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_module_role`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_module_role`;
CREATE TABLE `aos_sys_module_role` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `role_id_` varchar(64) NOT NULL COMMENT ' 角色流水号',
  `module_id_` varchar(64) NOT NULL COMMENT '功能模块流水号',
  `grant_type_` varchar(255) NOT NULL COMMENT '权限类型',
  `operate_time_` varchar(255) NOT NULL COMMENT '授权时间',
  `operator_id_` varchar(64) NOT NULL COMMENT '授权人流水号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_module_role_ukey` (`role_id_`,`module_id_`,`grant_type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='功能模块-角色关联表';

-- ----------------------------
--  Records of `aos_sys_module_role`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_module_role` VALUES ('0188b1648ab74fbbae624dd477fa8fb0', 'db0517b284ae4ecebe4358cb9e9d6295', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('050d588d27f840b88ab0f66abab19ee1', 'cb9dea34a86043be875e1729bd87df32', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('0d7757a39c0e465b80afc1130bdbf29f', '84f923b5e334498494eda38d8e86ef80', 'd452524058ff42cfb9e5146dacd0cd79', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('0f96a976ce2f4e52bb3631e3ce9a475c', '84f923b5e334498494eda38d8e86ef80', '9a8e5cedcd514af2b37cf5828f509f94', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('1bbb15f6d8284bd9a7bc64956dd06e58', 'db0517b284ae4ecebe4358cb9e9d6295', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('1bcfe11693e3405fad8774dd223a5707', '9fc327f9d0a54c928d490dc38ce8fa49', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('1ce4ef624de4486989153a02b970bc3a', 'cb9dea34a86043be875e1729bd87df32', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('220ebf3cb98e4aa5ae94c9bff1714916', 'db0517b284ae4ecebe4358cb9e9d6295', '715f6cf8d2ce4fa694baf2259327f6b1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('2486d09ed38e4ebba88cf16bae2bc65f', '84f923b5e334498494eda38d8e86ef80', '9e4cf77815dd49fbac4158c62af3197a', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('24f35d9f5c944a2cbe5152df6aeb5963', 'db0517b284ae4ecebe4358cb9e9d6295', '920fe6ba911148cd810ceca31ad9d54f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('271703d9917e4fa6b6d5999021bc37b1', '84f923b5e334498494eda38d8e86ef80', '2790bf6cc0b54c36b56c90429c112ab2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('2bf58bcd60b34807aba13371669cb665', '84f923b5e334498494eda38d8e86ef80', 'ba90369eb83540bab4d9492bc17f0937', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('2ce2ac4ab1b8425f83e6ce7ed047ef33', 'cb9dea34a86043be875e1729bd87df32', '75df10afbf5249f6939a4507e055f055', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('2d546a5234ac4daf912504aa557487a0', '84f923b5e334498494eda38d8e86ef80', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('2dda088ca3a045f69b42b25e342abf63', '9fc327f9d0a54c928d490dc38ce8fa49', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('335e5f0f821e4293b42270b7c7d7ddb0', '9fc327f9d0a54c928d490dc38ce8fa49', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('34a2b8a342284d0c8e81e2b26cec1dda', 'db0517b284ae4ecebe4358cb9e9d6295', '921b5164722d43698abf970a92c628d1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('390e1d2b66ac4b5f9ba42e51e1415006', '84f923b5e334498494eda38d8e86ef80', 'f405a849f27d4ddebf7f8a2dfbf30bea', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('3a79eb5cfe2d4e79a4c77af692555305', '84f923b5e334498494eda38d8e86ef80', 'a21b52d911bb44c2978e52bbc523de51', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('3e570a726a554571983f8e70cfe4c511', 'db0517b284ae4ecebe4358cb9e9d6295', '6b500915e65949639acbe8dd9b54adbc', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('3e799489aae5437d98f997e1ef978f18', 'db0517b284ae4ecebe4358cb9e9d6295', 'a4b0e8936806432181f60d53fc18e0a1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('42f9477b1b2342729d27853e280ed5fa', 'db0517b284ae4ecebe4358cb9e9d6295', 'dc404d3ef1334c5ca18dd217e4f7e2f1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('43ca9c6089ef44428c1e103fe3f45456', 'db0517b284ae4ecebe4358cb9e9d6295', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('51214705b3a749f99b6b55ca2e9593dc', 'db0517b284ae4ecebe4358cb9e9d6295', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('51bf0f517fde4a98b31b989aea132087', '3eee65836a4e4d5a95b4935e04a9bf6c', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('5839a2d3d321433098a54e3cca04c4d6', '84f923b5e334498494eda38d8e86ef80', '1906d5a892654e2bb882851e0ea7322f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('5bb27b3e203c43e28a088e0f2d6cf33e', 'db0517b284ae4ecebe4358cb9e9d6295', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('60234d270be64501bad723d4bdbc4f9d', 'db0517b284ae4ecebe4358cb9e9d6295', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('6909b8bf39ee4100a4c4958e976985e8', 'db0517b284ae4ecebe4358cb9e9d6295', '65320b914c18453f9ca0a84d3f8a0a7b', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('693c037fab3848fb84372822c9dff565', 'cb9dea34a86043be875e1729bd87df32', '6b500915e65949639acbe8dd9b54adbc', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('69e6336219be4d809e243039ab4523aa', '9fc327f9d0a54c928d490dc38ce8fa49', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('6c27a9d6735146ad9b154116efd757b8', '84f923b5e334498494eda38d8e86ef80', 'f107450058a2438eb6ad9bf6a4d7e967', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('71c43c3068ca4fc28c9ebc8cd79a4a43', 'db0517b284ae4ecebe4358cb9e9d6295', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('73232240556d42abab86f1a63304354e', 'cb9dea34a86043be875e1729bd87df32', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('7484d55043524284bb8dd8d5984c9081', 'db0517b284ae4ecebe4358cb9e9d6295', '75df10afbf5249f6939a4507e055f055', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('75bf2c9a3e904515b9067aeb58fb4fdd', '84f923b5e334498494eda38d8e86ef80', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('77bd0a1ccd614116b13cc2320fe30cda', '84f923b5e334498494eda38d8e86ef80', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('77d8a94836b24119aebcdd6fc70324da', '9fc327f9d0a54c928d490dc38ce8fa49', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('784c692cc819474bbbec26ac5cba54e6', '84f923b5e334498494eda38d8e86ef80', '619cb338b278406f8368471034d5946f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('7c2b2130d71e44c1828df1461fc9903e', 'cb9dea34a86043be875e1729bd87df32', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('7e262d9ecd424de28d2dc7796bb29bad', 'cb9dea34a86043be875e1729bd87df32', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('80488d5c34ca4803b46280d1218a73b0', '3eee65836a4e4d5a95b4935e04a9bf6c', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('873ea12392844e519cbae489f4db8744', 'cb9dea34a86043be875e1729bd87df32', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('88fd14c9fefb488daf28be9080c94d73', '84f923b5e334498494eda38d8e86ef80', '5b9a439743f141729f46a07e8e222a47', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('8c63d15784bc4cdcab64c4e67596568b', 'db0517b284ae4ecebe4358cb9e9d6295', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('945d429916a24f0bbfb6f9f55cb0e776', '9fc327f9d0a54c928d490dc38ce8fa49', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('950d91e5479b40b3baafbb4cdb36de04', 'db0517b284ae4ecebe4358cb9e9d6295', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('9e7d876cd465486a94c8df7e5855a226', '84f923b5e334498494eda38d8e86ef80', '65320b914c18453f9ca0a84d3f8a0a7b', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('9eefec427e864a52baaebde5dfe87402', '9fc327f9d0a54c928d490dc38ce8fa49', '647ebc4423a2409dbc3d1c91d43cdcda', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a03c228b2cf741c88a68d4d5974e26d1', '9fc327f9d0a54c928d490dc38ce8fa49', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a6d628138692486eab05c5e0cb76bf7f', 'cb9dea34a86043be875e1729bd87df32', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a86a62045bcd422882ea00c2895016fe', 'cb9dea34a86043be875e1729bd87df32', 'a4b0e8936806432181f60d53fc18e0a1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a8804d424d4640ce88ac439fd31f0eb4', 'db0517b284ae4ecebe4358cb9e9d6295', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a8ee27e30e4741cea60adff17e8f2df4', '9fc327f9d0a54c928d490dc38ce8fa49', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a9bfdc9f68b8480e83304b68e728aab2', '84f923b5e334498494eda38d8e86ef80', 'fd88d0de59024e4db81ead8510b6bd98', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a9cc960d203c4dedb735b77c6c2e98ef', 'db0517b284ae4ecebe4358cb9e9d6295', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('a9fc257206c243e29ac58a2d35e8c13f', '84f923b5e334498494eda38d8e86ef80', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('aeaa0615d8cd4feeacdaf9ab9b0a6fd4', 'cb9dea34a86043be875e1729bd87df32', '920fe6ba911148cd810ceca31ad9d54f', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('b25a6d3f659443f290a107556d75cc5f', 'cb9dea34a86043be875e1729bd87df32', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('b43b4b15f2374cd8bfe882b141e94d8b', '84f923b5e334498494eda38d8e86ef80', '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('bd2126707c7b4c00908a994704c741e0', 'cb9dea34a86043be875e1729bd87df32', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('c102c61185e0432bb551745ea22d9700', '84f923b5e334498494eda38d8e86ef80', '81fc0e05049e467d976ec523182421f2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('c28d9a85f2934a0ca7c04d16e20a031c', 'db0517b284ae4ecebe4358cb9e9d6295', '3b41af04060b414d85a05655b76801a3', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('c5c2913652994b1dacf9ad6c2b2a1c81', '9fc327f9d0a54c928d490dc38ce8fa49', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('c774c855900c41cbb8e431aa6e78c863', 'cb9dea34a86043be875e1729bd87df32', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('cf9396d2874941c2be039661637fb3d3', '9fc327f9d0a54c928d490dc38ce8fa49', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d1a975c7b7d54f9cae96eda45b3770e1', 'cb9dea34a86043be875e1729bd87df32', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d560c034735d497f8796d3a04fe2c409', '9fc327f9d0a54c928d490dc38ce8fa49', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d779a0d3cd01421c8e7dadeb7ed8999a', '9fc327f9d0a54c928d490dc38ce8fa49', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d847f8e4b85e4c7493d90f3315215e4f', '9fc327f9d0a54c928d490dc38ce8fa49', '50d7cd80f5854637a576aa95839488e9', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d8986d30483d4fccbc9ca73a2d02ecd1', 'db0517b284ae4ecebe4358cb9e9d6295', '1886bf699ec74f79959bdc8ca8e5371a', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('d963ae8247cf4642a0be0fed1f29e01f', 'db0517b284ae4ecebe4358cb9e9d6295', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('dbba3e637e2a40788f9879049dbf6f7e', 'db0517b284ae4ecebe4358cb9e9d6295', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('e2f388c27bd4484aa3e1ba31e2015694', 'db0517b284ae4ecebe4358cb9e9d6295', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('e7119468622c4b22b672060e26653a93', '84f923b5e334498494eda38d8e86ef80', '715f6cf8d2ce4fa694baf2259327f6b1', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('e92eb76ccd2b4f47978be188b68c2081', '9fc327f9d0a54c928d490dc38ce8fa49', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ea2594b1b19a45698ac2ff9b5aa59f48', 'cb9dea34a86043be875e1729bd87df32', '3b41af04060b414d85a05655b76801a3', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ec5392e974ea4da48a745a61b099a1eb', '84f923b5e334498494eda38d8e86ef80', '1886bf699ec74f79959bdc8ca8e5371a', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ecc9b853a25c41cda37b637b2849d779', 'cb9dea34a86043be875e1729bd87df32', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ed19957898e1403a86df1c4d63ec98ba', '3eee65836a4e4d5a95b4935e04a9bf6c', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ee6d97b75dd54231b7fae8dc04b0d896', '9fc327f9d0a54c928d490dc38ce8fa49', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ef2ca3c3fcb04fa0a4883636f32abb55', '9fc327f9d0a54c928d490dc38ce8fa49', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f04151346df64002bdb5a5af542540b1', '84f923b5e334498494eda38d8e86ef80', '5fb994e71cb14a77891670990d7f554d', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f1559c0cce8344d2b63b87bb9ac4c342', 'db0517b284ae4ecebe4358cb9e9d6295', '5b9a439743f141729f46a07e8e222a47', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f1a76db90f7e4881b848dc9bbe4b9864', '84f923b5e334498494eda38d8e86ef80', 'cfc4e4bd367047a29e0d72e688f860a2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f2841eaa505d442bb608f79184429bd4', 'cb9dea34a86043be875e1729bd87df32', 'dc404d3ef1334c5ca18dd217e4f7e2f1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f3ac8869c46c4ecb9a59f5375f777f55', '9fc327f9d0a54c928d490dc38ce8fa49', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f3c0946492b44acbb328987f382aad29', '84f923b5e334498494eda38d8e86ef80', '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f4ab0bb38c6d497ca676093146144473', '84f923b5e334498494eda38d8e86ef80', 'bc3c9877c598404da7e31355a4deebad', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f636f65c00b5463bb75b043f1dc6ee4f', '84f923b5e334498494eda38d8e86ef80', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f7c1380d52504ed58b8f6d19d60736d6', 'db0517b284ae4ecebe4358cb9e9d6295', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ff7ecca1769e4c09b42371e998ea7023', 'db0517b284ae4ecebe4358cb9e9d6295', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_module_user`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_module_user`;
CREATE TABLE `aos_sys_module_user` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `user_id_` varchar(64) NOT NULL COMMENT ' 用户流水号',
  `module_id_` varchar(64) NOT NULL COMMENT '功能模块流水号',
  `grant_type_` varchar(255) NOT NULL COMMENT '权限类型',
  `operate_time_` varchar(255) NOT NULL COMMENT '授权时间',
  `operator_id_` varchar(64) NOT NULL COMMENT '授权人',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_module_user_ukey` (`user_id_`,`module_id_`,`grant_type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='功能模块-用户关联表';

-- ----------------------------
--  Records of `aos_sys_module_user`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_module_user` VALUES ('c0d40a9f899b463c986a822b4969c7d2', 'c321c891521446bdac49ae2bb29d7a00', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('ce73653a710344c69da7b387b149a198', 'c321c891521446bdac49ae2bb29d7a00', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6'), ('f3b97bd4ae7d457da59c50f8462e21b9', 'c321c891521446bdac49ae2bb29d7a00', '75df10afbf5249f6939a4507e055f055', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_module_user_nav`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_module_user_nav`;
CREATE TABLE `aos_sys_module_user_nav` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `module_id_` varchar(64) NOT NULL COMMENT '功能模块流水号',
  `user_id_` varchar(64) NOT NULL COMMENT '人员流水号',
  `nav_icon_` varchar(255) DEFAULT NULL COMMENT '浮动导航图标文件',
  `type_` varchar(255) NOT NULL COMMENT '导航类型',
  `sort_no_` int(10) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_module_user_nav_ukey` (`module_id_`,`user_id_`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='功能模块-用户关联表(浮动导航|快捷导航)';

-- ----------------------------
--  Records of `aos_sys_module_user_nav`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_module_user_nav` VALUES ('069b1267b4fe4b9889a949769cb984d8', '98d7e720b8524600844728bcb4f8d518', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('0a6bb4844863456ebe7d15df14fc719c', 'dc404d3ef1334c5ca18dd217e4f7e2f1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('0dff8bc99dbf4092ab3d9332768bc116', '921b5164722d43698abf970a92c628d1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('0f37be2ab99f4f05b6d683a1cef4df44', '82b07f82b98046028538e925f66794d1', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('0f8eab3a36ae43beb97a0b39d49830a1', 'bd0a4ba6764d4d86883cfa7aa513315d', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('0f9873c57552450692a4d3ba8f0dd78c', '8472acca5a9e47348b7ab3d6ebf261b5', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('13848d731dbf4fe081c70e36a78f61ce', 'a3791f2557354144b58bdcbbfa400e7e', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('217a3a8e9db14937bc669c9c0987a953', '82b07f82b98046028538e925f66794d1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('246e98a5e8db4fd49b08b6f8cf64bb19', 'bd0a4ba6764d4d86883cfa7aa513315d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('28bf9f66ef914ccaa550b447164ff6de', '52bfff4fb4fd41488d5f7c09991e997f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('363037cd4bd44ae39331085fd6f731eb', '7e6951e668be44b39fb9f9fd20b21315', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('371b4b1cb69649cd980753cbdcf89a0e', 'f4768a44bc6a491bbac10d6f9710b8c6', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('3c90885b19ae4787bf2b0bcd7e5df400', '645419cf0e1c4ea6b3b8945e5338ad58', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('3e02a05e55e4453f8ebdfc77c9ae9d7d', 'a59d840e88594f7b87b3f96d227d6707', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('528d6e76b8334fcc901cf4849c690b87', '6b500915e65949639acbe8dd9b54adbc', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('53b89a5dc9ba4e57ac286a988261ec3d', '9a68cc97425344cda05e551ae5ae66cb', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('5ac9d58ebbec491aab0e05d053fabb21', '2a4c060f44d944ea926fe44522ce7b39', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('664086bde26547a291d92888c51e14bd', '52bfff4fb4fd41488d5f7c09991e997f', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('70d1d88d8db1470dadc092515f7e694a', 'c416f519d2b74cb39e0c4ace13e168d6', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('7269da5e43014b98bb268ac0ae0d3b7f', '647ebc4423a2409dbc3d1c91d43cdcda', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('7532d48a4ae34b578a5eec24ef15e5a3', '920fe6ba911148cd810ceca31ad9d54f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('7b1de12af9a54da49904ce0e01f7e2ba', '647ebc4423a2409dbc3d1c91d43cdcda', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('7b621fd8a57f43dcadfb70dd8bfd2551', '98d7e720b8524600844728bcb4f8d518', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('7c71fc53be2142f2958d56317b67bc11', 'dc404d3ef1334c5ca18dd217e4f7e2f1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('7ea0e1eb288f48f5a3faba7e8871e8e0', '82b07f82b98046028538e925f66794d1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('8012b2caa81941a1813b89cb654633ce', 'bf530e26480d43b08dd20e31e31274af', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('80f45368327c4c03ae00461416bb0778', '75df10afbf5249f6939a4507e055f055', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('83d730c404884959b78e72f3e44d0d7a', '2a4c060f44d944ea926fe44522ce7b39', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('89483e66a8e04855af7ef7b4d12f1727', '6e10c86d1885434e80e6dfa0953e307d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('8af365d1ea364a209fbca7a76999e739', '56fcae7c948043e3a6ba6f9ab56aaccd', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('8d8a9ef7b00d4d2fb118b72fac02b2bc', '50d7cd80f5854637a576aa95839488e9', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('9fe8f9751dee41f98c9e05ddf163de8a', 'a3791f2557354144b58bdcbbfa400e7e', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('a751f19211e14def9004dd4ab677809f', '50d7cd80f5854637a576aa95839488e9', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('aa5097d864e048d5b048164664a10974', '2dd9dac74b064ea98f063265b642526d', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('aa62bb86d729433aa8e46e6e0d99826d', 'b656d6afbbe844d0a6626d0eb590643f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('b4087f644bcb4d1899871967ce8aaefa', '3dddb80dc030499c936c2ede4eaa3ab4', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('b8e9c7e041d547168031186209197988', '52bfff4fb4fd41488d5f7c09991e997f', 'e470153e65ff4acf84ef6bba89290519', null, '1', null), ('baafea8c21f948059b950b9740e1af99', '52bfff4fb4fd41488d5f7c09991e997f', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('c0b448cb672c4c0caa7829f6f184d46f', '33baf8c9948b47cfa54cd8d7a5e1753d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('c6dd25d7244b49ceb13297e3b0b20e06', '7a6d3674e5204937951d01544e18e3aa', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('c81c3c41339a4d3399911763ee9fa159', '2a4c060f44d944ea926fe44522ce7b39', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('ce0b78a3f86a4a498ed01846c82f5b6f', '75df10afbf5249f6939a4507e055f055', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('d64cc506351a4851b7b9244df3d68bfe', 'a4b0e8936806432181f60d53fc18e0a1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('d84744efa4134ae4a3842d0363ee217b', '9a68cc97425344cda05e551ae5ae66cb', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('d91d8a7c77af40df8082b0fb1c4e9f59', '2a4c060f44d944ea926fe44522ce7b39', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('e073c08dc14f4bc19d253b6b67671180', 'dd2882255a2047c99e911ccd53d47bc5', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('e539a5ff42b545d6b4ca28766acccc71', '3b41af04060b414d85a05655b76801a3', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('e6a87cab16e1411891d6fdd57abc3cb0', '8472acca5a9e47348b7ab3d6ebf261b5', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('e8f49a48882847be946c3d94959364ad', '645419cf0e1c4ea6b3b8945e5338ad58', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('f1edd73234e44eada4400e2330cc797a', 'bd0a4ba6764d4d86883cfa7aa513315d', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('f5ef82d9920b4636950af8b2d04da3f8', '0b99e9d118b54ee084d9e74bd72cdd1c', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('f6424fa67d454ff6b53671d58834842c', '921b5164722d43698abf970a92c628d1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('f948ea0c8b414f1a81015c8a68914949', '645419cf0e1c4ea6b3b8945e5338ad58', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null), ('fa6d10cad0a54669be0add2df5c791bf', '7a6d3674e5204937951d01544e18e3aa', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('fb181460ba7e488a8ad3a92fa54d2518', '2dd9dac74b064ea98f063265b642526d', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('fb60d51c305144089ba35d7c168fde91', 'f405a849f27d4ddebf7f8a2dfbf30bea', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null), ('fceaed23db6a429591f51abb7d215355', '65320b914c18453f9ca0a84d3f8a0a7b', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null), ('fd6de83e1e2b4b4f911da9dd0fe1f023', '6b500915e65949639acbe8dd9b54adbc', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_page`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_page`;
CREATE TABLE `aos_sys_page` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `module_id_` varchar(64) NOT NULL COMMENT '功能模块ID',
  `name_` varchar(255) DEFAULT NULL COMMENT '名称',
  `url_` varchar(255) DEFAULT NULL COMMENT '页面URL',
  `type_` varchar(255) NOT NULL COMMENT '类型',
  `enabled_` varchar(255) NOT NULL COMMENT '使能状态',
  `is_default_` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否缺省子页面',
  `icon_` varchar(255) DEFAULT NULL COMMENT '小图标',
  `icon_big_` varchar(255) DEFAULT NULL COMMENT '大图标',
  `vector_` varchar(255) DEFAULT NULL COMMENT '矢量图标',
  `sort_no_` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='模块页面表';

-- ----------------------------
--  Records of `aos_sys_page`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_page` VALUES ('19041a2cb7264838b48288ce9b0b8e80', '1906d5a892654e2bb882851e0ea7322f', '大图标[64X64]', 'initIconList.jhtml?type_=2', '2', '1', '0', 'picture.png', null, null, '2'), ('9e30077a6bb043cc8db8c8d4b5fa5c91', '1906d5a892654e2bb882851e0ea7322f', '小图标[16X16]', 'initIconList.jhtml?type_=1', '2', '1', '1', 'pictures.png', null, null, '1'), ('bcb82c68976d4527a8f1c8bdbb8b4a04', '1906d5a892654e2bb882851e0ea7322f', '矢量图标', 'initIconList.jhtml?type_=3', '2', '1', '0', 'vector.png', null, null, '4'), ('c47935773e9443dd9a6ceecb69982ac2', '4d3cfce7b9b146d2bc8482ec477517aa', '我的快捷菜单', 'initMyNav.jhtml', '2', '1', '0', 'org.png', '', '', '4'), ('c8548f73784d42989363712729a320e0', '1906d5a892654e2bb882851e0ea7322f', '分隔符', null, '4', '1', '0', null, null, null, '3'), ('cacc4fcdc5454f1ebab63b00e4bf56cc', '4d3cfce7b9b146d2bc8482ec477517aa', '我的个人设置', 'initMyInfo.jhtml', '2', '1', '1', 'icon_19.png', '', '', '1'), ('d45aefac856942d484441481cd142212', '4d3cfce7b9b146d2bc8482ec477517aa', '我的操作日志', '', '2', '1', '0', 'icon75.png', '', '', '6'), ('dd3d77605b824ca18357222128aebc5b', '4d3cfce7b9b146d2bc8482ec477517aa', '分割符', null, '4', '1', '0', null, null, null, '5');
COMMIT;

-- ----------------------------
--  Table structure for `aos_sys_param`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_param`;
CREATE TABLE `aos_sys_param` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `key_` varchar(255) NOT NULL COMMENT '参数键',
  `value_` varchar(255) DEFAULT NULL COMMENT '参数值',
  `catalog_id_` varchar(64) NOT NULL COMMENT '所属分类流水号',
  `catalog_cascade_id_` varchar(255) NOT NULL COMMENT '所属分类节点语义ID',
  `name_` varchar(255) NOT NULL COMMENT '参数名称',
  `is_overwrite_` varchar(255) NOT NULL COMMENT '是否可覆盖',
  `overwrite_field_` varchar(255) DEFAULT NULL COMMENT '覆盖来源字段',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_param_ukey` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='参数表';

-- ----------------------------
--  Records of `aos_sys_param`
-- ----------------------------
BEGIN;
INSERT INTO `aos_sys_param` VALUES ('0dabca413781404b9cbfaae3881fc5a6', 'app_ico', '/static/icon/ico/aos2.ico', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '应用系统小图标', '0', null, '浏览器标题栏左上角显示'), ('19ad8d57d72b4ecf98ad133ebb6492bd', 'page_load_gif_', 'wheel.gif', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '页面刷新动画文件', '0', '', '页面刷新动画文件。可选的预设动画文件：run.gif、wheel.gif。动画path：/static/image/gif/pageload。'), ('1bd1c0a5849d4a30b3f1eb2761b2865d', 'show_login_win_head_', 'true', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '是否显示登录窗口标题栏', '0', '', '是否显示登录窗口标题栏(Ext登录风格)。缺省值：false。可选值：true|false。'), ('1cc1a1bee27f44389e7e64a89d9ccc76', 'msgtarget_', 'qtip', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '表单校验消息提示方式', '0', null, '可选值必须是下列值之一 (1)、qtip 当用户鼠标悬停在该域之上时显示包含了消息的迅速提示。(2)、title 显示消息以浏览器默认的title属性弹出。 (3)、under 在域下方添加一块包含了错误消息的div。(4)、side 添加一个错误图标在域的右边，鼠标悬停上面时弹出显示消息。'), ('1f2adf3aa726447e9728a3f67b718b41', 'vercode_show_', '0', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码开关', '0', '', '是否在登录页面显示验证码及后台验证码验证。可选值：0(否) | 1(是)。'), ('2e45751d623f48389e12bfb7c3891597', 'treenode_cursor_', 'pointer', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '树节点鼠标光标样式', '0', '', '缺省值：pointer。可选值：任何符合Css的cursor属性定义的值。default | pointer | auto等。'), ('376a372433634af4b6d2d558f1959f5b', 'role_grant_mode_', '1', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '角色授权模式', '0', null, '角色授权模式(角色可见度)。可选值：1|2。1：可见当前管理员创建的角色和当前管理员所属组织的其他管理员创建的角色。2：可见当前管理员创建的角色和当前管理员所属组织及其下级子孙组织的其他管理员创建的角色。'), ('3ff54d336e57461d8cd708a8bad8bc36', 'combobox_emptytext', '请选择...', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '下拉选择框的缺省提示信息', '0', null, null), ('43fb125bed224cbbaf2390df1041c3b0', 'dev_account_', 'root', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '开发者登录帐号', '0', '', '登录页面开发者按钮登录帐号。可以配置为任何一个存在的帐号。'), ('47bd798e93314882af7244ba1ae9fbc8', 'vercode_characters_', 'abcdetx2345678', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码待选字符集', '0', '', '验证码待选字符集。'), ('53267cbf8e9f4fc490798054fbe85c7e', 'copyright_', '2016 Realaicy', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '版权信息', '0', '', '版权信息'), ('58099059c3004213ae0977d4ed5551f5', 'prevent_rightclick_', 'false', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '全局右键', '0', null, '阻止浏览器缺省鼠标右键事件。可选值：true|false。缺省值：true。'), ('6032c7e953994a718f6072c956906538', 'app_title_', '智慧药监管理平台', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '首页浏览器标题内容', '0', '', '首页浏览器标题内容'), ('714d370fa7f54b01ae9a006806c60135', 'is_show_top_nav_', 'true', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '水平导航条', '1', 'is_show_top_nav_', '是否显示水平导航条。(只有在导航模式为1的情况，此设置才有效,导航模式为2，则水平导航条不会消失)。可选值：true| false。'), ('7290d8299cba41dc9e23323a0db22a95', 'json_format', '1', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'JSON输出模式', '0', '', ' json输出模式。0：格式化输出模式；1：压缩模式。'), ('74d65234606c4f448eb06d6a07a6c138', 'user_head_catalog_id_', '613', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '用户头像流文件分类ID', '0', null, '用户头像流文件分类ID，分类科目中的用户头像分类ID。用户上传文件时使用。'), ('757f555c0d734539baa70e8a1788cc62', 'is_show_statusbar_', 'true', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '是否显示主界面状态栏', '0', '', '是否显示主界面状态栏。可选值：true|false。'), ('7882ac5560ef4a04993279dfc24b6f23', 'user_obj_del_mode_', 'update', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '用户对象删除模式', '0', null, '物理删除：delete；逻辑删除：update。'), ('7bc3899d2fc24e4b804e6f763c3d6b36', 'dev_account_login_', '1', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '开发者登录帐号开关', '0', null, '是否启用开发者登录帐号功能,如启用则在登录界面会出现[开发者]按钮。可选值：1 | 0。提示：系统若在生产模式下运行，则此配置忽略，自动关闭开发者登录功能。'), ('7e4d320f454843739f40476dcbcdc91a', 'run_mode_', '0', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '运行模式', '0', '', '0：开发模式；1：生产模式；2：在线体验模式'), ('873c2cb1dde54b308211e8a2bc6edbb5', 'theme_', 'classic', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '系统主题风格', '1', 'theme_', '可选值：classic。缺省值：classic。'), ('9cb03933f61e4c68a58e50873ac38fbd', 'page_load_msg_', '正在拼命加载页面, 请稍等...', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '页面加载等待提示信息', '0', null, null), ('a19b559ab8804f5887867df4151ad631', 'page_size_', '50', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '分页大小', '0', null, '缺省的分页大小。JSP页面的属性设置会覆盖这个配置。'), ('a1ad9c90f524467180bceecd1f02b8b8', 'nav_mode_', '1', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航模式', '1', 'nav_mode_', '可选值，1：水平导航按钮和垂直导航的卡片属于统一层级；2：水平导航按钮和垂直导航的卡片有上下级级联导航关系。(当前模式2未实现)'), ('a843396066db4e77a7b9ed7ae4cdda37', 'login_page_', 'login.ext.jsp', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '登录页面', '0', '', 'Ext原生风格的登录界面'), ('ad9cb685144c4e36b19b31e53190221a', 'skin_', 'blue', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '系统缺省皮肤', '1', 'skin_', '可选值：blue|gray|neptune|aos。缺省值：blue。'), ('b07b8e2cc1284d14b9e680a5cac0722a', 'app_name_', '智慧药监管理平台', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '应用系统名称', '0', '', '应用系统名称'), ('be82f58309a24ee397d3a24631e48405', 'vercode_length_', '4', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码长度', '0', '', '验证码长度'), ('bf26e19236654718a6aa369f3e4b4bf7', 'coder_project_rootpath_', '0', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '代码生成器使用的工程根目录', '0', '', '代码生成器的工程跟目录。如果为0则自动获取。'), ('c744b99660c74302b7a3ae5834a7b6eb', 'grid_column_algin_', 'left', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '表格列内容对齐方式', '0', '', '表格列对齐模式。有效值：left|center|right。'), ('d2a8d045aa7e44ef93f0735a4c486bc6', 'nav_tab_index_', '0', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航缺省活动页', '1', 'nav_tab_index_', '左侧布局的导航卡片缺省激活的卡片索引号，索引下标从0开始。'), ('d3b33d5dee5b46738f9525b8977d7673', 'login_back_img_', '-1', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '登录页面的背景图片', '0', '', '登录页面的背景图片。可选的预设背景图片为：0.jpg、1.jpg、2.jpg。如果需要随机出现背景，则将其设置为-1。'), ('eeb66260a2c141b2a0bb06bb41d7803b', 'navbar_btn_style_', 'tight', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航条按钮风格', '1', 'navbar_btn_style_', '顶部水平导航条的按钮样式风格。tight：组合按钮；standalone：独立按钮。'), ('f18649a182a946a693b36f817374cb1c', 'welcome_page_title_', '欢迎', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '欢迎页标题', '0', null, '系统登录后第一个缺省打开的Tab页面的标题。缺省：\"欢迎\"。'), ('fcf73fa9129649a08ebb41e1ec8b5340', 'layout_', 'tab', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'Center区域布局风格', '1', 'layout_', '系统业务经办区域(center)布局风格。可选值：tab|page。缺省值：tab。tab：支持同时打开多个功能模块界面；page：当前只能打开1个功能界面。'), ('fdd95913b7e54e3ca6be9557484159f5', 'tab_focus_color_', '#0099FF', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'Tab高亮颜色', '1', 'tab_focus_color_', '缺省的当前Tab卡片高亮提示颜色');
COMMIT;

-- ----------------------------
--  Table structure for `jc_common_tree`
-- ----------------------------
DROP TABLE IF EXISTS `jc_common_tree`;
CREATE TABLE `jc_common_tree` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_common_tree`
-- ----------------------------
BEGIN;
INSERT INTO `jc_common_tree` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, b'1', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', ''), ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', b'1', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', ''), ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', b'1', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', ''), ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', b'1', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null), ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', b'1', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', ''), ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', b'1', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null), ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', b'1', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', ''), ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', b'1', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', ''), ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', b'1', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null), ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', ''), ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', ''), ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', ''), ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', b'0', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', ''), ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', ''), ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', ''), ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', ''), ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_m_checkdb_all`
-- ----------------------------
DROP TABLE IF EXISTS `jc_m_checkdb_all`;
CREATE TABLE `jc_m_checkdb_all` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned DEFAULT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime DEFAULT NULL,
  `UPDATERID` bigint(64) unsigned DEFAULT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `F_DELETED` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_checkdb_all`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_checkdb_all` VALUES ('1', '1', '1', '1', '', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('2', '1', '1', '1', '稽查标准数据库', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('3', '1', '1.001', '2', 'GCP国家标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('4', '1', '1.002', '2', 'CDISC标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('5', '1', '1.003', '2', 'XX医院标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('6', '1', '1.004', '2', '参考经验', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, b'0'), ('7', '1', '1.001.0000001', '3', 'GCP具体检查项1', null, null, '0', '0', null, '0', '0', '1', null, null, null, null, null, null, b'0'), ('8', '1', '1.001.0000002', '3', 'GCP具体检查项2', null, null, '0', '0', null, '0', '0', '1', null, null, null, null, null, null, b'0');
COMMIT;

-- ----------------------------
--  Table structure for `jc_m_doc_all`
-- ----------------------------
DROP TABLE IF EXISTS `jc_m_doc_all`;
CREATE TABLE `jc_m_doc_all` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `cascade_id` varchar(255) DEFAULT NULL COMMENT '节点语义ID',
  `name` varchar(255) DEFAULT NULL COMMENT '节点名称',
  `hotkey` varchar(255) DEFAULT NULL COMMENT '热键',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父节点流水号',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '父节点名称',
  `is_leaf` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `is_auto_expand` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `icon_name` varchar(255) DEFAULT NULL COMMENT '节点图标文件名称',
  `status` varchar(255) DEFAULT '1' COMMENT '当前状态',
  `type` varchar(255) DEFAULT NULL COMMENT '组织类型',
  `biz_code` varchar(255) DEFAULT NULL COMMENT '业务对照码',
  `custom_code` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `creater_id` varchar(64) DEFAULT NULL COMMENT '创建人ID',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序号',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源uri',
  `visit_count` int(11) DEFAULT NULL COMMENT '资源访问统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_doc_all`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_all` VALUES ('1', '0', '文档中心资源库', null, '1', null, '0', '0', null, '1', null, null, null, null, null, null, null, null), ('2', '0.001', 'SOP文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null), ('3', '0.002', '制度文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null), ('4', '0.003', '培训文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null), ('5', '0.004', '稽查文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_m_doc_allinone`
-- ----------------------------
DROP TABLE IF EXISTS `jc_m_doc_allinone`;
CREATE TABLE `jc_m_doc_allinone` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `ORGID` bigint(64) DEFAULT NULL,
  `F_ORGROOT` bit(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` bit(1) DEFAULT b'1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` bit(1) DEFAULT b'0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `F_DELETED` bit(1) DEFAULT b'0',
  `RES_ICON_EXT` varchar(255) DEFAULT NULL,
  `F_LAZY` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `PID` (`PID`),
  CONSTRAINT `jc_m_doc_allinone_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `jc_m_doc_allinone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_doc_allinone`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_allinone` VALUES ('1', '1', '0', '1', '1', b'1', '占位符', null, null, null, null, b'1', b'1', b'0', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', b'1', null, b'1'), ('2', '1', '1', '1', '2', b'1', 'ROOT', null, null, null, '1000', b'1', b'1', b'0', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', b'0', null, b'1'), ('3', '1', '1.001', '2', '3', b'1', '中国肿瘤临床试验稽查协作组', null, null, null, '3000', b'1', b'1', b'0', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', b'0', null, b'1'), ('4', '1', '1.002', '2', '31', b'0', '测试专用', null, null, '0', '2000', b'1', b'1', b'0', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, b'0', null, b'1'), ('5', '1', '1.001.001', '3', '2', b'0', '稽查文档', '', '', '0', '4000', b'1', b'1', b'0', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '', b'0', null, b'1'), ('100', '1', '1.001.002', '3', '2', b'0', 'SOP文档', null, null, '0', '0', null, b'1', b'0', '1', null, '2016-10-22 17:24:47', '0', '2016-10-22 17:24:50', '0', null, b'0', null, b'1'), ('101', '1', '1.001.003', '3', '30', b'1', '秘书处文档', null, null, '0', '0', null, b'1', b'0', '1', null, '2016-10-22 17:26:32', '0', '2016-10-22 17:26:32', '0', null, b'0', null, b'1'), ('102', '0', '1.002.001', '4', '31', b'0', '测试1', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 07:43:51', '6', '2016-10-23 07:43:51', '6', '', b'0', null, b'1'), ('103', '0', '1.002.002', '4', '31', b'0', '测试1修改22', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 07:44:09', '6', '2016-10-23 10:13:21', '6', '', b'1', null, b'1'), ('104', '0', '1.002.001.001', '102', null, null, 'test2', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 08:48:22', '6', '2016-10-23 08:48:22', '6', '', b'1', null, b'1'), ('105', '0', '1.002.004', '4', null, null, '测试2', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 10:13:03', '6', '2016-10-23 10:13:03', '6', '', b'0', null, b'1'), ('106', '0', '1.002.001.002', '102', null, null, 'aaab', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 10:18:39', '6', '2016-10-23 10:18:44', '6', '', b'1', null, b'1'), ('107', '0', '1.002.001.003', '102', null, null, 'bbb', null, null, null, null, null, b'1', b'0', '0', '', '2016-10-23 10:19:05', '6', '2016-10-23 10:19:05', '6', '', b'1', null, b'1'), ('108', '0', '1.002.001.002', '102', null, null, '文档1.txt', 'a.txt', null, '0', '0', null, b'0', b'0', '1', null, '2016-10-23 14:55:42', '0', '2016-10-23 14:55:42', '0', null, b'0', null, b'0'), ('109', '1', '1.001.003.001', '101', null, null, '文档1.txt', 'a.txt', null, '0', '0', null, b'0', b'0', '1', null, '2016-10-23 17:00:39', '0', '2016-10-23 17:00:39', '0', null, b'0', null, b'0'), ('110', '0', '1.002.008', '4', null, null, '3333', null, null, null, null, null, b'1', null, '0', '', '2016-10-24 16:48:25', '6', '2016-10-24 16:48:25', '6', '', b'0', null, b'1');
COMMIT;

-- ----------------------------
--  Table structure for `jc_m_doc_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `jc_m_doc_catalog`;
CREATE TABLE `jc_m_doc_catalog` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_doc_catalog`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_catalog` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, b'1', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', ''), ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', b'1', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', ''), ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', b'1', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', ''), ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', b'1', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null), ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', b'1', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', ''), ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', b'1', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null), ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', b'1', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', ''), ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', b'1', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', ''), ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', b'1', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null), ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', ''), ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', ''), ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', ''), ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', b'0', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', ''), ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', ''), ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', ''), ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', ''), ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_m_doc_file`
-- ----------------------------
DROP TABLE IF EXISTS `jc_m_doc_file`;
CREATE TABLE `jc_m_doc_file` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CAT_CASCADE_ID` varchar(255) DEFAULT NULL COMMENT '节点语义ID（即祖先路径）',
  `CATALOGID` bigint(64) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` bit(1) DEFAULT b'0' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` bit(1) DEFAULT b'0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `F_DELETED` bit(1) DEFAULT b'0',
  `RES_ICON_EXT` varchar(255) DEFAULT NULL,
  `MODULE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_doc_file`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_file` VALUES ('110', '1', '1.001.003', '101', '文档1.txt', 'a.txt', null, '0', '0', null, b'0', b'0', '1', null, '2016-10-23 17:00:39', '0', '2016-10-23 17:00:39', '0', null, b'0', null, null), ('111', '1', '', '4', '测试文件a1', 'a.pdf', null, '0', '0', null, b'0', b'0', '1', null, '2016-10-24 06:46:35', '0', '2016-10-24 06:46:35', '0', null, b'0', null, null), ('113', '0', null, '4', '测试哈哈', 'realfile_1477298146827.pdf', null, '0', '0', null, b'0', b'0', '0', '', '2016-10-24 16:36:07', '6', '2016-10-24 16:36:07', '6', '', b'0', null, 'doccenter'), ('114', '0', null, '4', '测试1', 'realfile_1477298557880.pdf', null, '0', '0', null, b'0', b'0', '0', '', '2016-10-24 16:43:03', '6', '2016-10-24 16:43:03', '6', '', b'0', null, 'doccenter'), ('115', '0', null, '4', 'bbb', 'realfile_1477298880781.pdf', null, '0', '0', null, b'0', b'0', '0', '', '2016-10-24 16:48:03', '6', '2016-10-24 16:48:03', '6', '', b'1', null, 'doccenter');
COMMIT;

-- ----------------------------
--  Table structure for `jc_pj_application`
-- ----------------------------
DROP TABLE IF EXISTS `jc_pj_application`;
CREATE TABLE `jc_pj_application` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `SUBJECT` varchar(64) DEFAULT NULL COMMENT '用户登录帐号',
  `CLITYPE` char(2) DEFAULT NULL COMMENT '密码',
  `COMPNAME` varchar(64) DEFAULT NULL COMMENT '用户姓名',
  `CONTACTS` varchar(10) DEFAULT NULL COMMENT '性别',
  `COMPTEL` varchar(20) DEFAULT NULL,
  `CONTACTTEL` varchar(20) DEFAULT NULL,
  `PRICING` varchar(64) DEFAULT NULL COMMENT '用户头像',
  `STATUS` tinyint(255) DEFAULT NULL COMMENT '用户状态',
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT ' 经办时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '经办人流水号',
  `UPDATETIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `F_DELETED` bit(1) DEFAULT b'0' COMMENT '逻辑删除标识',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`SUBJECT`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_pj_application`
-- ----------------------------
BEGIN;
INSERT INTO `jc_pj_application` VALUES ('1', '河南肿瘤医院GCP稽查申请', '1', 'XXX药厂', '刘柯南', '022-24567890', '13920888888', '100000', '1', '2016-09-04 17:35:12', null, '2016-09-04 17:35:12', null, null), ('2', '测试', '1', '测试', '测试', null, null, null, '30', '2016-09-04 19:38:16', '6', '2016-09-04 23:43:17', '6', null), ('3', '1', '1', '1', '1', null, null, null, '0', '2016-09-04 19:39:36', '6', '2016-09-04 19:39:36', '6', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_pj_info`
-- ----------------------------
DROP TABLE IF EXISTS `jc_pj_info`;
CREATE TABLE `jc_pj_info` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `PJNAME` varchar(64) DEFAULT NULL COMMENT '用户登录帐号',
  `PJCONTRACTURI` varchar(255) DEFAULT NULL COMMENT '密码',
  `MANAGERID` bigint(64) DEFAULT NULL,
  `PJManagerTEL` varchar(20) DEFAULT NULL,
  `BUDGET` varchar(10) DEFAULT NULL COMMENT '性别',
  `STATUS` tinyint(255) DEFAULT NULL COMMENT '用户状态',
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT ' 经办时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '经办人流水号',
  `UPDATETIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `F_DELETED` bit(1) DEFAULT b'0' COMMENT '逻辑删除标识',
  `PJSTARTDATE` datetime DEFAULT NULL,
  `PJDEADLINEDATE` datetime DEFAULT NULL,
  `CUSTOM_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`PJNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_pj_info`
-- ----------------------------
BEGIN;
INSERT INTO `jc_pj_info` VALUES ('4', '河南肿瘤医院GCP稽查', null, '6', '13920888888', '100000', '60', '2016-09-05 04:40:03', null, '2016-09-05 04:40:03', null, null, null, null, null), ('11', 'ffff', null, '6', null, '111111', '0', '2016-09-05 05:34:46', '6', '2016-09-05 05:34:46', '6', null, null, null, null), ('12', '测试流程1', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('14', '测试流程2016-09-05T06:35:30.442', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('15', '测试流程2016-09-05T06:36:45.832', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('16', '测试流程2016-09-05T06:38:55.215', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('17', '测试流程2016-09-05T06:41:11.733', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('18', '测试流程2016-09-05T06:56:54.755', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('19', '测试流程2016-09-05T06:58:41.692', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('20', '测试流程2016-09-05T07:00:11.758', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('21', '测试流程2016-09-05T07:01:18.900', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('22', '测试流程2016-09-05T07:26:09.259', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('23', '测试流程2016-09-05T07:27:43.354', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('24', '测试流程2016-09-05T07:29:38.442', null, null, null, '0', '0', null, null, null, null, null, null, null, null), ('25', '流程测试项目1', null, '6', null, '1', '0', '2016-09-05 07:48:33', '6', '2016-09-05 07:48:33', '6', null, null, null, null), ('26', '工作流测试——1', null, '6', null, '1111', '0', '2016-09-05 09:55:51', '6', '2016-09-05 09:55:51', '6', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_group`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_group`;
CREATE TABLE `jc_sys_group` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `CASCADE_ID` varchar(255) DEFAULT '' COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `DESCRIBE` varchar(255) DEFAULT NULL,
  `RES_ICON` varchar(255) DEFAULT '' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL DEFAULT '1' COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL DEFAULT '1',
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `ORGID` bigint(64) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `REV` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_group`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_group` VALUES ('1', '0', '1', 'ROOT', '占位符', '', '0', null, '1', '0', '1', null, '2016-08-30 15:47:15', '1', '2016-08-30 15:47:15', '1', '', null, null, null), ('2', '1', '1', 'Parent', '组祖先', '', '0', null, '1', '0', '1', null, '2016-08-30 16:03:14', '1', '2016-08-30 16:03:14', '1', '', null, null, null), ('3', '1.001', '2', 'org1', 'ORG1的组祖先', '', '0', null, '1', '0', '1', null, '2016-08-30 16:03:57', '1', '2016-08-30 16:03:57', '1', '', null, null, null), ('4', '1.001.001', '3', 'org1_admin', 'ORG1的管理员组', '', '0', null, '1', '0', '1', null, '2016-08-30 16:06:23', '1', '2016-08-30 16:06:23', '1', 'wf', null, null, null), ('5', '1.001.002', '3', 'org1_secretary', 'ORG1的秘书处', '', '0', null, '1', '0', '1', null, '2016-09-05 05:54:33', '1', '2016-09-05 05:54:33', '1', 'wf', null, null, null), ('6', '1.001.003', null, 'org1_preaudit', 'ORG1的预稽查人员组', '', '0', null, '1', '0', '1', null, '2016-09-05 05:56:32', '1', '2016-09-05 05:56:32', '1', 'wf', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_menu`;
CREATE TABLE `jc_sys_menu` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `RES_TYPE` smallint(255) unsigned NOT NULL DEFAULT '1' COMMENT '树形实体类型',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '' COMMENT '节点图标文件名称',
  `RES_ICON_EXT` varchar(255) DEFAULT '',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT b'1',
  `IS_FOLDER` bit(1) DEFAULT b'1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` bit(1) DEFAULT b'0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `F_DELETED` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_menu` VALUES ('1', '2', '1', '99', '菜单鼻祖', '#', null, null, null, null, b'1', b'1', b'1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', b'0'), ('2', '2', '1.001', '1', '综合看板', '#', null, 'fa fa-lg fa-fw fa-home', '', '1000', b'1', b'1', b'1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', b'0'), ('3', '2', '1.002', '1', '我的工作台', '#', null, 'fa fa-lg fa-fw fa-inbox', '<em>3</em>', '2000', b'1', b'1', b'1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', b'0'), ('4', '2', '1.003', '1', '项目管理', '#', null, 'fa fa-lg fa-fw fa-file-powerpoint-o', null, '3000', b'1', b'1', b'1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, b'0'), ('99', '1', '0', '99', '占位符', null, null, '0', null, '0', null, b'1', b'0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null, b'0'), ('100', '2', '1.001.001', '2', '业务仪表盘', 'dashboard/dashboard.html', null, '0', null, '1000', null, b'1', b'0', '1', null, '2016-09-25 17:33:25', '0', '2016-09-25 17:33:31', '0', null, b'0'), ('101', '2', '1.001.002', '2', '统计分析仪表盘', 'dashboard/flot', null, '0', null, '2000', null, b'1', b'0', '1', null, '2016-09-25 17:33:29', '0', '2016-09-25 17:33:33', '0', null, b'0'), ('102', '2', '1.004', '1', '文档管理中心', '#', null, 'fa fa-lg fa-fw fa-folder-o', null, '4000', null, b'1', b'0', '1', null, '2016-09-25 20:15:17', '0', '2016-09-25 20:15:19', '0', null, b'0'), ('103', '2', '1.004.001', '102', '文档分类管理', 'doccenter/catalog/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:16:18', '0', '2016-09-25 20:16:18', '0', null, b'0'), ('104', '2', '1.004.002', '102', '文档维护', 'doccenter/file/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:22:15', '0', '2016-09-25 20:22:15', '0', null, b'0'), ('105', '2', '1.005', '1', '稽查标准数据库管理', null, null, 'fa fa-lg fa-fw fa-database', null, '5000', null, b'1', b'0', '1', null, '2016-09-25 20:26:52', '0', '2016-09-25 20:26:52', '0', null, b'0'), ('106', '2', '1.006', '1', '工作流管理', null, null, 'fa fa-lg fa-fw fa-long-arrow-right', null, '6000', null, b'1', b'0', '1', null, '2016-09-25 20:27:03', '0', '2016-09-25 20:27:03', '0', null, b'0'), ('107', '2', '1.007', '1', '系统管理', null, null, 'fa fa-lg fa-fw fa-gear', null, '9000', null, b'1', b'0', '1', null, '2016-09-25 20:28:10', '0', '2016-09-25 20:28:10', '0', null, b'0'), ('108', '2', '1.007.001', '107', '机构管理', 'system/org/page.html', null, '0', null, '1000', null, b'1', b'0', '1', null, '2016-09-25 20:28:45', '0', '2016-09-25 20:28:45', '0', null, b'0'), ('109', '2', '1.007.002', '107', '用户管理', 'system/user/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:30:17', '0', '2016-09-25 20:30:17', '0', null, b'0'), ('110', '2', '1.007.003', '107', '角色管理', 'system/role/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:31:08', '0', '2016-09-25 20:31:08', '0', null, b'0'), ('111', '2', '1.006.001', '106', '流程列表', 'wf/def/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-26 15:59:00', '0', '2016-09-26 15:59:00', '0', null, b'0'), ('112', '2', '1.006.002', '106', '我的工作', 'wf/task/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-26 16:00:20', '0', '2016-09-26 16:00:20', '0', null, b'0'), ('113', '1', '1.007', '1', '医学工具箱', '#', null, 'fa fa-lg fa-fw fa-medkit', '', '7000', b'1', b'1', b'0', '1', null, '2016-10-17 05:25:16', '1', '2016-10-17 05:25:16', '1', null, b'0'), ('114', '1', '1.007.001', '113', 'MedDRA数据库查询', null, null, 'fa fa-lg fa-fw fa-cubes', '', '1000', b'1', b'1', b'0', '1', null, '2016-10-17 05:27:29', '1', '2016-10-17 05:27:29', '1', null, b'0'), ('115', '1', '1.001.003', '2', '项目区域分布图', 'dashboard/map.html', null, 'fa fa-lg fa-fw fa-map-marker', '', '3000', b'1', b'1', b'0', '1', null, '2016-10-17 05:40:32', '1', '2016-10-17 05:40:32', '1', null, b'0');
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_org`;
CREATE TABLE `jc_sys_org` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `TENANTID` bigint(64) unsigned DEFAULT NULL COMMENT '多租户ID',
  `CASCADE_ID` varchar(255) NOT NULL DEFAULT '' COMMENT '节点语义ID（即祖先路径）',
  `F_DELETED` bit(1) DEFAULT b'0',
  `PID` bigint(64) unsigned NOT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `CONTACT_NAME` varchar(20) DEFAULT NULL,
  `CONTACT_TEL` varchar(20) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(64) DEFAULT NULL,
  `RES_TYPE` int(1) unsigned DEFAULT NULL,
  `RES_ICON` varchar(255) DEFAULT '' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT b'1',
  `IS_FOLDER` bit(1) DEFAULT b'1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` bit(1) DEFAULT b'0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL DEFAULT '1' COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL DEFAULT '1',
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `RES_ICON_EXT` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_org`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_org` VALUES ('1', '1', '0', b'0', '1', '占位符', null, '13920888888', 'realtest@google.com', '8', '', '0', null, b'1', b'0', '1', null, '2016-08-30 15:26:54', '1', '2016-08-30 15:26:54', '1', null, null), ('2', '3', '1', b'0', '1', 'ROOT', null, '13920888888', 'realtest@google.com', '8', '1', '1', null, b'1', b'1', '1', '1', '2016-08-30 15:33:36', '1', '2016-08-30 15:33:36', '1', '1', null), ('3', '2', '1.001', b'0', '2', '中国肿瘤临床试验稽查协作组', '测试1', '13920888888', 'realtest@google.com', '9', '0', '100', null, b'1', b'0', '1', null, '2016-08-30 15:34:44', '1', '2016-10-01 09:45:43', '6', null, null), ('4', '4', '1.002', b'0', '2', '中国测试协作组', 'aaaaa', '1392-088-8881', 'realtest@google.com', '9', '', '999', null, b'1', b'0', '1', null, '2016-09-03 11:21:07', '1', '2016-10-07 16:04:14', '6', null, null), ('5', '5', '1.003', b'0', '2', '药品一致性稽查协作组', null, '13920888888', 'realtest@google.com', '9', '', '200', null, b'1', b'0', '1', null, '2016-09-03 11:32:36', '1', '2016-09-03 11:32:36', '1', null, null), ('6', '6', '1.002.001', b'0', '4', '测试协作组——管理员组', null, '13920888888', 'realtest@google.com', '1', '', '0', null, b'1', b'0', '1', null, '2016-09-03 11:33:36', '1', '2016-09-03 11:33:36', '1', null, null), ('30', '2', '1.001.001', b'0', '3', '秘书处', '刘备南3', '1392-088-8888', 'realtest@google.com', '1', null, '200', b'0', b'1', b'0', '1', '', '2016-09-04 16:50:15', '6', '2016-10-07 22:19:52', '116', '', null), ('31', '2', '1.004', b'0', '2', '测试专用', '测试员1', '1382-088-8888', 'a@b.com', '0', null, null, b'0', b'1', b'0', '1', '', '2016-10-07 13:34:00', '6', '2016-10-09 04:40:26', '6', '', null), ('58', null, '1.001.002', b'0', '3', '专家组', '测试', '13920234616', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-17 06:17:11', '6', '2016-10-17 06:17:11', '6', '', null), ('59', null, '1.001.003', b'0', '3', '稽查组', '测试', '13920234616', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-17 06:17:30', '6', '2016-10-17 06:17:30', '6', '', null), ('60', null, '1.001.004', b'0', '3', '预稽查组', '测试', '13920234616', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-17 06:17:36', '6', '2016-10-17 06:17:36', '6', '', null), ('61', null, '1.004.001', b'0', '31', 'test20161018', 'aaa', '13911111111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 14:21:16', '6', '2016-10-18 14:21:16', '6', '', null), ('62', null, '1.004.001.001', b'1', '61', '11aabccddee', '333', '13920234616', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 14:25:38', '6', '2016-10-18 22:32:30', '6', '', null), ('63', null, '1.004.001.002', b'0', '61', '222', '111', '13911111111', 'ab@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:30:44', '6', '2016-10-18 16:30:44', '6', '', null), ('64', null, '1.004.001.003', b'0', '61', '333_3', '3333444', '13911111111', 'ab@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:31:01', '6', '2016-10-18 16:48:23', '6', '', null), ('65', null, '1.004.001.004', b'0', '61', '4444', '4444', '13911111111', 'ab@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:31:15', '6', '2016-10-18 16:31:15', '6', '', null), ('66', null, '1.004.001.005', b'0', '61', '555', '55', '13911111111', '5@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:33:02', '6', '2016-10-18 16:33:02', '6', '', null), ('67', null, '1.004.001.006', b'0', '61', '2222', '11', '13091111111', 'A@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:33:53', '6', '2016-10-18 16:33:53', '6', '', null), ('68', null, '1.004.001.007', b'0', '61', '22222', '22', '13011111111', '2@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:35:01', '6', '2016-10-18 16:35:01', '6', '', null), ('69', null, '1.004.001.008', b'0', '61', 'a22', '2222', '13911111111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:39:10', '6', '2016-10-18 22:28:09', '6', '', null), ('70', null, '1.004.001.001.001', b'1', '62', 'aaa', 'aa', '13011111111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-18 16:41:26', '6', '2016-10-18 16:41:26', '6', '', null), ('71', null, '1.004.001.010', b'0', '61', '2222222', '111', '13000000000', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-19 09:25:11', '6', '2016-10-19 09:25:11', '6', '', null), ('72', null, '1.004.012', b'1', '31', 'test20161020', '测试负责人', '13000000000', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-20 13:32:51', '6', '2016-10-20 13:32:51', '6', '', null), ('73', null, '1.004.012.001', b'0', '72', 'test1', 'test1', '13011111111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-20 14:13:42', '6', '2016-10-20 14:13:42', '6', '', null), ('74', null, '1.004.012.002', b'1', '72', 'test02', 'test02a', '13011111111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-20 14:25:58', '6', '2016-10-20 14:29:31', '6', '', null), ('75', null, '1.004.012.003', b'0', '72', 'test03', 'test03a', '13000000003', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-20 14:27:59', '6', '2016-10-20 14:32:52', '6', '', null), ('76', null, '1.004.016', b'0', '31', 'test20161021', 'test', '13000000000', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-21 16:24:14', '6', '2016-10-21 16:24:14', '6', '', null), ('77', null, '1.004.017', b'0', '31', 'test20161022', '测试负责人', '13000000001', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-22 12:36:54', '6', '2016-10-22 12:37:41', '6', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_org2`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_org2`;
CREATE TABLE `jc_sys_org2` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `CASCADE_ID` varchar(255) NOT NULL COMMENT '节点语义ID（即祖先路径）',
  `PID` bigint(64) unsigned DEFAULT NULL COMMENT '父节点流水号',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `URI` varchar(512) DEFAULT NULL COMMENT '资源URLmo',
  `HOTKEY` varchar(255) DEFAULT NULL COMMENT '热键（标签）',
  `RES_ICON` varchar(255) DEFAULT '0' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `IS_FOLDER` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_org2`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_org2` VALUES ('1', '1', '99', '文档中心资源库', null, null, null, null, b'1', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', ''), ('2', '1.001', '1', 'SOP文档', null, null, null, '1000', b'1', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', ''), ('3', '1.002', '1', '制度文档', null, null, null, '3000', b'1', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', ''), ('4', '1.003', '1', '培训文档', null, null, '0', '2000', b'1', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null), ('5', '1.004', '1', '稽查文档', '', '', '0', '4000', b'1', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', ''), ('6', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', b'1', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null), ('7', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', b'1', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', ''), ('8', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', b'1', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', ''), ('9', '1.005', '1', '测试文档目录层1', null, null, '0', '999', b'1', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null), ('10', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', ''), ('11', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', ''), ('12', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', ''), ('13', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', b'0', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', ''), ('14', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', ''), ('15', '1.005.001.001.001.0000001', '10', '测试文档目录层3_0033', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', ''), ('16', '1.005.001.001.001.0000001', '12', '测试文档目录层5test', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', ''), ('99', '0', '99', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_role`;
CREATE TABLE `jc_sys_role` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT ' 流水号',
  `F_DELETED` bit(1) DEFAULT b'0',
  `ROLENAME` varchar(255) NOT NULL COMMENT '角色名称',
  `ROLESTATUS` tinyint(255) DEFAULT '1' COMMENT '当前状态',
  `ROLETYPE` tinyint(255) DEFAULT NULL COMMENT '角色类型',
  `MENUS` varchar(2000) DEFAULT NULL,
  `REALAUTHORITIES` varchar(2000) DEFAULT NULL,
  `CREATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime DEFAULT NULL,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `ORGID` bigint(64) DEFAULT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL,
  `STATUS` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
--  Records of `jc_sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_role` VALUES ('1', b'0', '测试角色1', '1', '1', '2,100,106', 'test,test2', '2016-10-10 15:50:17', null, null, null, '3', null, '1'), ('2', b'0', '测试角色2', '1', '1', null, null, '2016-10-10 15:50:17', null, null, null, '3', null, '1'), ('3', b'0', '测试角色3', '1', '1', null, null, '2016-10-10 15:50:18', null, null, null, '3', null, '1'), ('4', b'0', '测试角色4', '1', '1', null, null, '2016-10-10 15:50:19', null, null, null, '3', null, '1'), ('5', b'0', '测试角色5cd', '1', '1', null, null, '2016-10-10 15:50:19', null, '2016-10-18 06:15:40', '6', '31', null, '1'), ('6', b'0', '超级管理员', '1', '1', null, 'Org-r,Org-c,Org-r,Org-d,Role-a,User-a,DocRes-a,DocFileRes-a', '2016-10-23 14:56:47', null, null, null, '3', null, '1'), ('7', b'0', '秘书处处长', '1', '1', '2,100,102,103,104,107,108,109,110,106,115', 'Org-r,Org-c,Role-a,User-a,DocRes-a,DocFileRes-a', '2016-10-23 17:01:47', null, null, null, '30', null, '1'), ('37', b'0', '专家组长', null, null, null, null, '2016-10-17 06:24:54', '6', '2016-10-17 06:24:54', '6', '58', '', '0'), ('38', b'1', '稽查组长', null, null, null, null, '2016-10-17 06:25:00', '6', '2016-10-17 06:25:00', '6', '58', '', '0'), ('39', b'0', '稽查组长', null, null, null, null, '2016-10-17 06:25:53', '6', '2016-10-17 06:25:53', '6', '59', '', '0'), ('40', b'0', '预稽查组长', null, null, null, null, '2016-10-17 06:26:09', '6', '2016-10-17 06:26:09', '6', '60', '', '0'), ('41', b'0', '专家组成员', null, null, null, null, '2016-10-17 06:28:39', '6', '2016-10-17 06:28:39', '6', '58', '', '0'), ('42', b'0', '稽查组成员', null, null, null, null, '2016-10-17 06:31:19', '6', '2016-10-17 06:31:19', '6', '59', '', '0'), ('43', b'0', '预稽查组成员', null, null, null, null, '2016-10-17 06:38:24', '6', '2016-10-17 06:38:24', '6', '60', '', '0'), ('44', b'0', '秘书成员', null, null, null, null, '2016-10-17 06:39:02', '6', '2016-10-17 06:39:02', '6', '30', '', '0'), ('45', b'0', 'rrr', null, null, null, null, '2016-10-19 00:56:10', '6', '2016-10-19 17:17:32', '6', '31', '', '0'), ('46', b'1', 'aaa2', null, null, null, null, '2016-10-19 00:56:43', '6', '2016-10-19 00:57:41', '6', '61', '', '0'), ('47', b'0', 'aaaaa', null, null, null, null, '2016-10-19 00:57:21', '6', '2016-10-19 17:20:45', '6', '61', '', '0'), ('48', b'0', 'bbb23', null, null, null, null, '2016-10-19 00:58:26', '6', '2016-10-20 12:31:30', '6', '61', '', '0'), ('49', b'0', 'ccc2', null, null, null, null, '2016-10-19 00:59:45', '6', '2016-10-19 17:15:55', '6', '61', '', '0'), ('50', b'0', 'ddd', null, null, null, null, '2016-10-19 09:42:35', '6', '2016-10-19 09:42:35', '6', '61', '', '0'), ('51', b'1', 'eee333', null, null, null, null, '2016-10-19 09:48:14', '6', '2016-10-19 17:15:23', '6', '61', '', '0'), ('52', b'1', 'ffff22', null, null, null, null, '2016-10-19 09:48:29', '6', '2016-10-19 10:07:45', '6', '61', '', '0'), ('53', b'0', 'ggg', null, null, null, null, '2016-10-19 10:01:09', '6', '2016-10-19 10:01:09', '6', '61', '', '0'), ('54', b'1', '哈哈哈22', null, null, null, null, '2016-10-19 10:05:23', '6', '2016-10-19 10:05:39', '6', '61', '', '0'), ('55', b'0', 'a11', null, null, null, null, '2016-10-20 13:31:39', '6', '2016-10-20 13:31:39', '6', '31', '', '0'), ('56', b'0', 'a111', null, null, null, null, '2016-10-20 13:31:43', '6', '2016-10-20 13:31:43', '6', '31', '', '0'), ('57', b'0', 'a111111', null, null, null, null, '2016-10-20 13:31:51', '6', '2016-10-20 13:31:51', '6', '31', '', '0'), ('58', b'0', '中文测试', null, null, null, null, '2016-10-20 13:33:12', '6', '2016-10-20 13:33:12', '6', '72', '', '0'), ('59', b'1', 'a111', null, null, null, null, '2016-10-20 13:33:21', '6', '2016-10-20 13:40:22', '6', '72', '', '0'), ('60', b'1', 'a112', null, null, null, null, '2016-10-20 13:33:28', '6', '2016-10-20 13:33:28', '6', '72', '', '0'), ('61', b'0', 'a111', null, null, null, null, '2016-10-20 13:43:16', '6', '2016-10-20 13:56:33', '6', '72', '', '0'), ('62', b'1', 'a222', null, null, null, null, '2016-10-20 13:56:17', '6', '2016-10-20 13:56:22', '6', '72', '', '0'), ('63', b'0', 'test测试test4', null, null, null, null, '2016-10-21 16:24:33', '6', '2016-10-21 16:27:21', '6', '76', '', '0'), ('64', b'1', 'test2', null, null, null, null, '2016-10-22 12:39:14', '6', '2016-10-22 12:39:26', '6', '77', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_tenant`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_tenant`;
CREATE TABLE `jc_sys_tenant` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `NAME` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `CONTACT_NAME` varchar(20) DEFAULT NULL,
  `CONTACT_TEL` varchar(20) DEFAULT NULL,
  `RES_ICON` varchar(255) DEFAULT '' COMMENT '节点图标文件名称',
  `RES_WEIGHT` int(10) unsigned DEFAULT '0' COMMENT '排序号',
  `IS_SHOW` bit(1) DEFAULT NULL,
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL DEFAULT '1' COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) unsigned NOT NULL DEFAULT '1',
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `F_DELETED` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_tenant`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_tenant` VALUES ('1', 'ROOT', null, null, '', '0', null, '1', null, '2016-08-30 15:26:54', '1', '2016-08-30 15:26:54', '1', null, null), ('2', '中国肿瘤临床试验稽查协作组', '闫昭', '13988888888', '1', '1', b'1', '1', '1', '2016-08-30 15:33:36', '1', '2016-08-30 15:33:36', '1', '1', null), ('3', 'realadmin', 'XudongLiu', '13920234616', '1', '1', b'1', '1', null, '2016-10-05 09:16:57', '1', '2016-10-05 09:16:57', '1', '1', b'0');
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user`;
CREATE TABLE `jc_sys_user` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `TENANTID` bigint(64) unsigned DEFAULT NULL COMMENT '所属租户',
  `ORGID` bigint(64) DEFAULT NULL COMMENT '所属主部门流水号',
  `ORGCASID` varchar(255) DEFAULT NULL COMMENT '所属部门节点语义ID',
  `USERNAME` varchar(64) NOT NULL COMMENT '用户登录帐号',
  `PASSWORD` varchar(255) NOT NULL COMMENT '密码',
  `NICKNAME` varchar(64) NOT NULL COMMENT '用户姓名',
  `SEX` char(1) DEFAULT NULL COMMENT '性别',
  `AGE` tinyint(11) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `R_TOUXIANG` char(64) DEFAULT NULL COMMENT '用户头像',
  `STATUS` tinyint(255) DEFAULT NULL COMMENT '用户状态',
  `USERTYPE` tinyint(255) DEFAULT NULL COMMENT '用户类型',
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT ' 经办时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '经办人流水号',
  `F_DELETED` bit(1) DEFAULT b'0' COMMENT '逻辑删除标识',
  `USERSALT` varchar(255) DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL,
  `ROLENAMES` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user` VALUES ('6', '3', '2', '1', 'realaicy', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, b'0', null, '2016-01-01 08:08:08', null, null, '超级管理员'), ('116', '2', '30', '1.001.001', 'wym', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', '王雨萌', '2', '0', 'wym@126.com', '', '0', '0', '2016-09-25 22:06:41', '6', b'0', null, '2016-09-25 22:06:41', '6', null, '秘书处处长'), ('156', null, '31', '1.004', 'testpass', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', 'testpass啊啊啊啊', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 10:07:23', '6', b'1', null, '2016-10-17 14:14:48', '6', '', null), ('157', null, '59', '1.001.003', '贾建国', '$2a$10$U.Bon.Yew8MfpR3KF2x34u.PEccr4/x2fG0aMhkKAGkuNuMQeYDg.', 'a', '1', '0', 'a@b', '', '0', '0', '2016-10-17 13:32:51', '6', b'0', null, '2016-10-17 13:32:51', '6', '', null), ('158', null, '3', '1.001', '管理员', '$2a$10$OCig4jNdn1AiTSt9Tz7Yo.uNp5erxVv2neWq3llTSlt8pozVQNhR2', '管理员', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:12:01', '6', b'0', null, '2016-10-17 14:12:01', '6', '', null), ('159', null, '3', '1.001', '业务管理员', '$2a$10$xLq1H47lJ6P/2B8ha6Kfg.ojwGCOrnYpNfoUzlIZ/6NxPztY/FW7O', '业务管理员', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:14:16', '6', b'0', null, '2016-10-17 14:14:16', '6', '', null), ('160', null, '31', '1.004', 'aaa', '$2a$10$Ga/PXPVQXDVtOfGA/g1UfOluGsehVOJauiB.ILm.FZVZ5OVByB5Yu', 'ccc', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:15:59', '6', b'1', null, '2016-10-19 17:16:19', '6', '', null), ('161', null, '3', '1.001', 'aa', '$2a$10$LYHbkS3/c13Iccu/KC0nzeqXB9fZ0yGd3GnJT4lyedDN1JKYAUQ8e', '22266672', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:16:27', '6', b'0', null, '2016-10-19 17:20:17', '6', '', null), ('162', null, '31', '1.004', 'bb', '$2a$10$9mNfnvpw2rhzacziOpTTGOi35/n3E82G8a8okadjxNquMCSRa/BTS', 'bbbb', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:19:43', '6', b'0', null, '2016-10-17 14:20:10', '6', '', null), ('163', null, '31', '1.004', 'cc', '$2a$10$Or4BchGVu9HeydOTIwhHeuicS4x99FbsqflwyrrtwzNrvigFbBZ3i', 'cc', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:21:07', '6', b'0', null, '2016-10-17 14:21:07', '6', '', null), ('164', null, '31', '1.004', 'ddd', '$2a$10$V2SbeWpaJXGcA/Y.DR3fre9rcsMRjGgdHxys4BT4C01mCtkdZOB9C', 'ddd22', '\0', '0', 'a@b', '', '0', '0', '2016-10-17 14:27:27', '6', b'0', null, '2016-10-17 14:27:36', '6', '', null), ('165', null, '31', '1.004', 'eee', '$2a$10$kjWthVtp8RDmPPDrcRT1hOIS5IMJ52xmMYCHTSKNil.sEyBphH0Dm', 'eee', '\0', '0', 'a@b', '', '0', '0', '2016-10-19 17:14:06', '6', b'0', null, '2016-10-19 17:14:06', '6', '', null), ('166', null, '31', '1.004', 'fff', '$2a$10$kJw25NHCMw7NlDMSaB7wuOYNnlc9nK8h2vkAbQHGTrvQdjjzNfPD.', 'fff2', '\0', '0', 'a@b', '', '0', '0', '2016-10-19 17:14:37', '6', b'0', null, '2016-10-19 17:14:48', '6', '', null), ('167', null, '31', '1.004', 'aa1', '$2a$10$m/mw20kFUD6/FI4Hu39Z7u02Bi.OtEwW5IpLiFVkiz.RaBw5rFs6O', 'aa222', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 10:34:23', '6', b'0', null, '2016-10-20 13:34:31', '6', '', null), ('168', null, '31', '1.004', 'aa2', '$2a$10$zDSoaFbahZkqlzC.CmLcY.SmNXSpBUZehTyV0kTQPWkOOFWBImc9m', 'aa2', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 10:59:55', '6', b'1', null, '2016-10-20 10:59:55', '6', '', null), ('169', null, '31', '1.004', 'aa3', '$2a$10$EgbxvFBfw/DoOda/sGjXAeJUfG6PpeVfpJw65U5LXHA3YAMlt96mW', 'aa3', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 11:05:08', '6', b'1', null, '2016-10-20 11:30:31', '6', '', null), ('170', null, '31', '1.004', 'aa4', '$2a$10$itooNZwatVn7ijssTxAu0eZZdfVUYPh9LmNHkeYZTPXkK23aC59jO', 'aa4', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 11:05:41', '6', b'1', null, '2016-10-20 11:05:41', '6', '', null), ('171', null, '31', '1.004', 'aa5', '$2a$10$Ky2FdZxegAZTlv/fqVW09.0aW.qXeZExtORjAVdzG9EtFaQBr3dM.', 'aa5', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 11:29:46', '6', b'0', null, '2016-10-20 11:30:08', '6', '', null), ('172', null, '31', '1.004', 'aa6', '$2a$10$xNt69bVkajf7qR5e63JNkubJUeya9WBA8UU8GHCblPlwuQb4Avirq', 'aa6', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 12:24:10', '6', b'0', null, '2016-10-20 12:24:10', '6', '', null), ('173', null, '30', '1.001.001', 'test1', '$2a$10$D2a4.be959OKPSUUdKfYvuBxzmJKCRfE2YWxpFYpyQ0KLPQCpEXl6', 'test12234', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 12:35:49', '116', b'0', null, '2016-10-20 12:37:04', '116', '', null), ('174', null, '72', '1.004.012', 'aaaa', '$2a$10$FSvyP7T1u.m8iy0vXmvF1OxImFXDq4J4oumZlpRwdkJwh47ErTOka', 'aaaaa', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 13:56:54', '6', b'0', null, '2016-10-20 13:58:36', '6', '', 'a111'), ('175', null, '72', '1.004.012', '1020b', '$2a$10$vgCrRapFLIptxrWBVyUMKuyJ4fC4HBFuicwvSthAnlAIc6wnjRpT6', '1020c', '\0', '0', 'a@b', '', '0', '0', '2016-10-20 13:58:06', '6', b'1', null, '2016-10-20 13:58:20', '6', '', null), ('176', null, '77', '1.004.017', 'a', '$2a$10$Pvk1SPBc.dlGAy.qsLMeN.Lqzu3TpkmFks1vaErYDaU0aX.AcYFVC', 'aaaa', '\0', '0', 'a@b', '', '0', '0', '2016-10-22 12:39:51', '6', b'0', null, '2016-10-22 12:40:14', '6', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user_group`;
CREATE TABLE `jc_sys_user_group` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `USERID` bigint(64) NOT NULL COMMENT '用户流水号',
  `GROUPID` bigint(64) NOT NULL COMMENT '角色流水号',
  `CREATERID` bigint(64) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `OPERATETIME` datetime DEFAULT NULL,
  `OPERATERID` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `aos_sys_user_role_ukey` (`USERID`,`GROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
--  Table structure for `jc_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user_role`;
CREATE TABLE `jc_sys_user_role` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `USERID` bigint(64) NOT NULL COMMENT '用户流水号',
  `ROLEID` bigint(64) NOT NULL COMMENT '角色流水号',
  `CREATERID` bigint(64) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `OPERATETIME` datetime DEFAULT NULL,
  `OPERATERID` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `aos_sys_user_role_ukey` (`USERID`,`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
--  Records of `jc_sys_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user_role` VALUES ('1', '4', '4', null, null, null, null), ('15', '5', '3', null, null, null, null), ('16', '5', '4', null, null, null, null), ('17', '5', '5', null, null, null, null), ('18', '5', '2', null, null, null, null), ('19', '6', '6', null, null, null, null), ('37', '116', '7', null, null, null, null), ('38', '174', '61', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_user_role_copy`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user_role_copy`;
CREATE TABLE `jc_sys_user_role_copy` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `USERID` bigint(64) NOT NULL COMMENT '用户流水号',
  `ROLEID` bigint(64) NOT NULL COMMENT '角色流水号',
  `CREATERID` bigint(64) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `OPERATETIME` datetime DEFAULT NULL,
  `OPERATERID` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `aos_sys_user_role_ukey` (`USERID`,`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
--  Table structure for `jc_sys_user_sec`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user_sec`;
CREATE TABLE `jc_sys_user_sec` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `TENANTID` bigint(64) unsigned DEFAULT NULL COMMENT '所属租户',
  `ORGID` bigint(64) unsigned DEFAULT NULL,
  `ORGCASID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(64) DEFAULT NULL COMMENT '用户登录帐号',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `NICKNAME` varchar(64) DEFAULT NULL,
  `ACCOUNTNONEXPIRED` char(1) DEFAULT NULL COMMENT '用户姓名',
  `ACCOUNTNONLOCKED` char(1) DEFAULT NULL COMMENT '性别',
  `CREDENTIALSNONEXPIRED` char(1) DEFAULT NULL COMMENT '所属主部门流水号',
  `ENABLED` char(1) DEFAULT NULL COMMENT '用户状态',
  `CREATETIME` timestamp NULL DEFAULT NULL,
  `CREATERID` bigint(64) DEFAULT NULL,
  `UPDATETIME` timestamp NULL DEFAULT NULL,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `F_DELETED` bit(1) DEFAULT b'0',
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL,
  `STATUS` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_sys_user_sec`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user_sec` VALUES ('6', '3', '2', '1', 'realaicy', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', '刘旭东', '1', '1', '1', '1', null, null, null, null, b'0', null, '1'), ('116', '2', '30', '1.001.001', 'wym', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', '测试秘书长', '1', '1', '1', '1', '2016-09-25 22:06:41', '6', '2016-09-25 22:06:41', '6', b'0', null, '1'), ('123', null, '31', null, 'testpass', '$2a$10$S0VNeCzoga/wUkHUjCND4OYZY/2HnWI8TGB2wAo5AaL6L0Xdl.U5u', 'testpass', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('124', null, '59', null, '贾建国', '$2a$10$U.Bon.Yew8MfpR3KF2x34u.PEccr4/x2fG0aMhkKAGkuNuMQeYDg.', 'a', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('125', null, '3', null, '管理员', '$2a$10$OCig4jNdn1AiTSt9Tz7Yo.uNp5erxVv2neWq3llTSlt8pozVQNhR2', '管理员', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('126', null, '3', null, '业务管理员', '$2a$10$xLq1H47lJ6P/2B8ha6Kfg.ojwGCOrnYpNfoUzlIZ/6NxPztY/FW7O', '业务管理员', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('127', null, '31', null, 'aaa', '$2a$10$Ga/PXPVQXDVtOfGA/g1UfOluGsehVOJauiB.ILm.FZVZ5OVByB5Yu', 'aaa', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('128', null, '3', null, 'aa', '$2a$10$LYHbkS3/c13Iccu/KC0nzeqXB9fZ0yGd3GnJT4lyedDN1JKYAUQ8e', '111', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('129', null, '31', null, 'bb', '$2a$10$9mNfnvpw2rhzacziOpTTGOi35/n3E82G8a8okadjxNquMCSRa/BTS', 'bb', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('130', null, '31', null, 'cc', '$2a$10$Or4BchGVu9HeydOTIwhHeuicS4x99FbsqflwyrrtwzNrvigFbBZ3i', 'cc', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('131', null, '31', null, 'ddd', '$2a$10$V2SbeWpaJXGcA/Y.DR3fre9rcsMRjGgdHxys4BT4C01mCtkdZOB9C', 'ddd', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('132', null, '31', null, 'eee', '$2a$10$kjWthVtp8RDmPPDrcRT1hOIS5IMJ52xmMYCHTSKNil.sEyBphH0Dm', 'eee', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('133', null, '31', null, 'fff', '$2a$10$kJw25NHCMw7NlDMSaB7wuOYNnlc9nK8h2vkAbQHGTrvQdjjzNfPD.', 'fff', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('134', null, '31', null, 'aa1', '$2a$10$m/mw20kFUD6/FI4Hu39Z7u02Bi.OtEwW5IpLiFVkiz.RaBw5rFs6O', 'aa1', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('135', null, '31', null, 'aa2', '$2a$10$zDSoaFbahZkqlzC.CmLcY.SmNXSpBUZehTyV0kTQPWkOOFWBImc9m', 'aa2', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('136', null, '31', null, 'aa3', '$2a$10$EgbxvFBfw/DoOda/sGjXAeJUfG6PpeVfpJw65U5LXHA3YAMlt96mW', 'aa3', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('137', null, '31', null, 'aa4', '$2a$10$itooNZwatVn7ijssTxAu0eZZdfVUYPh9LmNHkeYZTPXkK23aC59jO', 'aa4', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('138', null, '31', null, 'aa5', '$2a$10$Ky2FdZxegAZTlv/fqVW09.0aW.qXeZExtORjAVdzG9EtFaQBr3dM.', 'aa4', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('139', null, '31', null, 'aa6', '$2a$10$xNt69bVkajf7qR5e63JNkubJUeya9WBA8UU8GHCblPlwuQb4Avirq', 'aa6', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('140', null, '30', null, 'test1', '$2a$10$D2a4.be959OKPSUUdKfYvuBxzmJKCRfE2YWxpFYpyQ0KLPQCpEXl6', 'test1', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('141', null, '72', null, 'aaaa', '$2a$10$FSvyP7T1u.m8iy0vXmvF1OxImFXDq4J4oumZlpRwdkJwh47ErTOka', 'aaa', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('142', null, '72', null, '1020b', '$2a$10$vgCrRapFLIptxrWBVyUMKuyJ4fC4HBFuicwvSthAnlAIc6wnjRpT6', '1020b', '1', '1', '1', '1', null, null, null, null, b'0', '', '0'), ('143', null, '77', null, 'a', '$2a$10$Pvk1SPBc.dlGAy.qsLMeN.Lqzu3TpkmFks1vaErYDaU0aX.AcYFVC', 'aaa', '1', '1', '1', '1', null, null, null, null, b'0', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `jc_sys_user_security`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user_security`;
CREATE TABLE `jc_sys_user_security` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户登录帐号',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `ACCOUNTNONEXPIRED` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `NONLOCKED` char(1) DEFAULT NULL COMMENT '性别',
  `CREDENTIALNONEXPIRED` varchar(64) DEFAULT NULL COMMENT '所属主部门流水号',
  `ENABLED` tinyint(255) DEFAULT NULL COMMENT '用户状态',
  `USERTYPE` tinyint(255) DEFAULT NULL COMMENT '用户类型',
  `CREATETIME` timestamp NULL DEFAULT NULL COMMENT ' 经办时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '经办人流水号',
  `ORGCASID` varchar(255) DEFAULT NULL COMMENT '所属部门节点语义ID',
  `F_DELETE` varchar(255) DEFAULT NULL COMMENT '逻辑删除标识',
  `USERSALT` varchar(255) DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `UPDATERID` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_sys_user_security`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user_security` VALUES ('1', 'test_1', '$2a$10$i07EXDvszCW1dDRhwjcOA.fq35YMd11R2Ymm.OpEYH0uKauv/dMdu', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('2', 'test_2', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('3', 'test_3', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('4', 'test_4', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('5', 'test_5', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('6', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', null, '1', '1', null, null, null, null, null, null, null), ('7', 'test_5', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('8', 'test_6', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('9', 'test_7', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('10', 'test_8', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('11', 'test_9', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('12', 'test_10', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('13', 'test_11', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('14', 'test_12', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('15', 'test_13', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('16', 'test_14', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('17', 'test_15', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('18', 'test_16', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('19', 'test_17', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('20', 'test_18', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('21', 'test_19', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('22', 'test_20', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('23', 'test_21', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('24', 'test_22', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('25', 'test_23', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('26', 'test_24', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('27', 'test_25', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('28', 'test_26', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('29', 'test_27', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('30', 'test_28', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('31', 'test_29', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('32', 'test_30', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('33', 'test_31', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('34', 'test_32', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('35', 'test_33', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('36', 'test_34', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('37', 'test_35', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('38', 'test_36', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('39', 'test_37', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('40', 'test_38', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('41', 'test_39', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('42', 'test_40', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('43', 'test_41', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('44', 'test_42', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('45', 'test_43', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('46', 'test_44', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('47', 'test_45', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('48', 'test_46', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('49', 'test_47', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('50', 'test_48', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('51', 'test_49', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('52', 'test_50', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('53', 'test_51', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('54', 'test_52', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('55', 'test_53', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('56', 'test_54', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('57', 'test_55', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('58', 'test_56', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('59', 'test_57', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('60', 'test_58', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('61', 'test_59', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('62', 'test_60', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('63', 'test_61', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('64', 'test_62', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('65', 'test_63', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('66', 'test_64', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('67', 'test_65', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('68', 'test_66', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('69', 'test_67', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('70', 'test_68', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('71', 'test_69', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('72', 'test_70', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('73', 'test_71', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('74', 'test_72', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('75', 'test_73', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('76', 'test_74', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('77', 'test_75', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('78', 'test_76', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('79', 'test_77', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('80', 'test_78', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('81', 'test_79', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('82', 'test_80', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('83', 'test_81', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('84', 'test_82', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('85', 'test_83', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('86', 'test_84', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('87', 'test_85', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('88', 'test_86', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('89', 'test_87', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('90', 'test_88', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('91', 'test_89', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('92', 'test_90', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('93', 'test_91', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('94', 'test_92', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('95', 'test_93', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('96', 'test_94', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('97', 'test_95', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('98', 'test_96', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('99', 'test_97', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('100', 'test_98', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null), ('101', 'test_99', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `jc_tmp_actuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `jc_tmp_actuserinfo`;
CREATE TABLE `jc_tmp_actuserinfo` (
  `ID_` varchar(64) NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) DEFAULT NULL,
  `TYPE_` varchar(64) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jc_tmp_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `jc_tmp_applicant`;
CREATE TABLE `jc_tmp_applicant` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `jc_tmp_applicant`
-- ----------------------------
BEGIN;
INSERT INTO `jc_tmp_applicant` VALUES ('1', 'John Doe', 'john@activiti.org', '12344'), ('2', 'John Doe', 'john@activiti.org', '12344'), ('3', 'John Doe', 'john@activiti.org', '12344'), ('4', 'John Doe', 'john@activiti.org', '12344'), ('5', 'John Doe', 'john@activiti.org', '12344'), ('6', 'John Doe', 'john@activiti.org', '12344'), ('7', 'John Doe', 'john@activiti.org', '12344'), ('8', 'John Doe', 'john@activiti.org', '12344'), ('9', 'John Doe', 'john@activiti.org', '12344'), ('10', 'John Doe', 'john@activiti.org', '12344'), ('11', 'John Doe', 'john@activiti.org', '12344'), ('12', 'John Doe', 'john@activiti.org', '12344'), ('13', 'John Doe', 'john@activiti.org', '12344'), ('14', 'John Doe', 'john@activiti.org', '12344'), ('15', 'John Doe', 'john@activiti.org', '12344'), ('16', 'John Doe', 'john@activiti.org', '12344'), ('17', 'John Doe', 'john@activiti.org', '12344');
COMMIT;

-- ----------------------------
--  Table structure for `ss_checkjob_job`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_job`;
CREATE TABLE `ss_checkjob_job` (
  `id_` varchar(64) NOT NULL COMMENT '任务ID流水号',
  `name_` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `tem_id_` varchar(255) DEFAULT NULL COMMENT '模版ID',
  `status_` varchar(255) DEFAULT '0' COMMENT '任务状态',
  `ent_id_` varchar(64) DEFAULT NULL COMMENT '任务关联企业ID',
  `createuser_id_` varchar(64) DEFAULT '' COMMENT '创建人ID',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `runuser_id_` varchar(64) DEFAULT NULL COMMENT '执行人ID',
  `plan_fdate` datetime DEFAULT NULL COMMENT '计划完成时间',
  `comment` varchar(255) DEFAULT NULL COMMENT '说明 备注',
  `result_score` int(11) DEFAULT '-1' COMMENT '任务得分',
  `act_fdate` datetime DEFAULT NULL COMMENT '实际完成时间',
  `type_` varchar(255) DEFAULT NULL COMMENT '任务类别',
  `runner_org_id_` varchar(64) DEFAULT NULL,
  `createuser_org_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Records of `ss_checkjob_job`
-- ----------------------------
BEGIN;
INSERT INTO `ss_checkjob_job` VALUES ('13fa658fe77a4452aeba067aa69f910a', '金耀测试检查任务', '1f5e09c2e1ed4b0f8eb193580fc60f2d', '2', '40a954d5f1de4acc8454ee1d5bc2b523', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:58:14', 'c321c891521446bdac49ae2bb29d7a00', '2099-12-31 00:00:00', '哈哈哈', '3', '2016-05-20 09:58:58', '2', 'be8d6dacb14a42c7bb31893f3dcb922b', 'be8d6dacb14a42c7bb31893f3dcb922b'), ('22663e41b31a4ca68051173b24105ce3', '天津局自执行检查测试1', 'e20dddafbd8043db8fc6f44c46b602bb', '0', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:15:57', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', '天津局自执行检查测试1', '-1', '2016-05-16 02:56:28', '1', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df'), ('2a94cff1da254f37a4b907a8fd6b1c4d', 'bhtest2', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:52:48', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', null, '10', '2016-05-17 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128'), ('33d4e7e7c47b4b3b9fb749ea9ef60041', 'jxtest1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:56:00', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', 'jxtest1', '7', '2016-05-18 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128'), ('72f59330be7748fc99e6968bb6400c5e', '蓟县分局自身测试1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:35:38', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', '蓟县分局自身测试1', '4', '2016-05-11 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128'), ('7a476a7f9da54b1cabb1158445f65926', '测试1', '3bf1c8399c7a4eeaaf4197211318887d', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:30:05', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', null, '10', '2016-05-20 09:32:43', '2', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df'), ('86c72188723e4e738d61f62531f73d26', 'aaa', 'e20dddafbd8043db8fc6f44c46b602bb', '0', '03aa6e8bddce4f1599c9f7fb396fb12f', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 03:28:19', null, '2099-12-31 00:00:00', 'aaa', '-1', '2016-05-12 02:56:28', null, 'be8d6dacb14a42c7bb31893f3dcb922b', 'be742f86c9914e7b83bfb531c2e693df'), ('8f1099da100b4794930c0257ef0b6eb1', '短测试2', 'e20dddafbd8043db8fc6f44c46b602bb', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:28:29', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', null, '6', '2016-05-13 02:56:28', '3', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df'), ('9169fa8fd0c04136a8144e5763102a26', 'a企业自查任务测试1', 'cc65b6abe5444eae8b2adfd516b2240e', '2', '00a6355517874ab9ac9c89184d438124', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-20 02:58:20', '5f6b500ffdf642349a1b46203c147ee0', '2099-12-31 00:00:00', 'a企业自查任务测试1', '5', '2016-05-20 03:01:06', '3', '00a6355517874ab9ac9c89184d438124', '00a6355517874ab9ac9c89184d438124'), ('e12c736dbf9d44f08e02c53a3e1d49cb', '天津局分配给蓟县分局任务测试1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 01:28:52', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', '天津局分配给蓟县分局任务测试1', '10', '2016-05-19 03:01:06', '2', 'd12df3a736c742c58da176dbbd52d128', 'be742f86c9914e7b83bfb531c2e693df'), ('e4af019f7a544cbb99d84092b11d57d5', '滨海自身测试1', '761081eb53d84e24973aae34425066cf', '2', '02dba066a2894ac08fafe0dc599caba2', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 02:38:12', 'c321c891521446bdac49ae2bb29d7a00', '2099-12-31 00:00:00', '滨海自身测试1', '8', '2016-05-19 03:01:06', '2', 'be8d6dacb14a42c7bb31893f3dcb922b', 'be8d6dacb14a42c7bb31893f3dcb922b');
COMMIT;

-- ----------------------------
--  Table structure for `ss_checkjob_job_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_job_detail`;
CREATE TABLE `ss_checkjob_job_detail` (
  `id_` varchar(64) NOT NULL COMMENT '检查任务条目ID',
  `job_id_` varchar(64) DEFAULT NULL COMMENT '任务ID',
  `item_id_` varchar(64) DEFAULT '' COMMENT '检查项ID',
  `operate_time_` datetime DEFAULT NULL COMMENT '操作时间',
  `operator_id_` varchar(64) DEFAULT NULL COMMENT '操作人ID',
  `score_` int(255) DEFAULT '-1' COMMENT '得分',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Records of `ss_checkjob_job_detail`
-- ----------------------------
BEGIN;
INSERT INTO `ss_checkjob_job_detail` VALUES ('0cc252c9712e444f89f08ce6f9661689', '72f59330be7748fc99e6968bb6400c5e', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1'), ('0cd518393d7c4408baf622832a3130fc', '7a476a7f9da54b1cabb1158445f65926', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '2'), ('0d44bc27104a4f3b86d5945903a78b1e', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:34:10', 'e470153e65ff4acf84ef6bba89290519', '3'), ('0f86863cf10e4a118fd2e00749702611', 'e4af019f7a544cbb99d84092b11d57d5', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '3'), ('143f0192a2ed45e99cadb5cb8d58efe0', '2a94cff1da254f37a4b907a8fd6b1c4d', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '3'), ('22a39f31e7da46bd973aa1cd497fbb41', '22663e41b31a4ca68051173b24105ce3', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:16:56', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('29353c502a714b48943a115a4a150175', '7a476a7f9da54b1cabb1158445f65926', 'd398275d3c8c475489e754fc8e66642f', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('514c4d7672d54a3e86c90a182879b5f8', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:34:01', 'e470153e65ff4acf84ef6bba89290519', '2'), ('5689fc26bd4e4dd39d8292884c7b17fc', '7a476a7f9da54b1cabb1158445f65926', '54baa8900f3d4fe8860ea3012f0c1be4', '2016-05-20 09:32:43', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('56c9f47b078c44df9595eeb726bf6116', '22663e41b31a4ca68051173b24105ce3', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:20:55', 'c4db76be7dd94f95b5213b885f919cba', '2'), ('5faa67fc8dc84499801e8ea0cd2a84f3', '86c72188723e4e738d61f62531f73d26', '5fc58867e9994545b77cb63e3e25daae', null, null, '-1'), ('65667662c43b4d4b97aa925b60ebe8c1', 'e12c736dbf9d44f08e02c53a3e1d49cb', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:34:01', 'e470153e65ff4acf84ef6bba89290519', '2'), ('693ea554f3da4384ab5897104a50319d', '9169fa8fd0c04136a8144e5763102a26', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1'), ('6e7ff7cdb02848aba78163ad50bd5210', '33d4e7e7c47b4b3b9fb749ea9ef60041', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2'), ('756e2051e6594ec792fbb3764dadb685', '9169fa8fd0c04136a8144e5763102a26', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1'), ('793e94113a4b492a8b3d67b05eabcde0', '9169fa8fd0c04136a8144e5763102a26', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 03:01:06', '5f6b500ffdf642349a1b46203c147ee0', '2'), ('7c4a40e21e3f4d598a2facc10a391f14', '2a94cff1da254f37a4b907a8fd6b1c4d', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '2'), ('80d88aa094eb4a2da33ea598625c370d', '86c72188723e4e738d61f62531f73d26', '0bb7ce792fbc4cff809c71af3c70a8e1', null, null, '-1'), ('8242280848ba40a5b4878a68716156e3', '72f59330be7748fc99e6968bb6400c5e', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1'), ('82c61771ad8a43edba11e739605c4bc4', '9169fa8fd0c04136a8144e5763102a26', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1'), ('84f7e804325342cf8f7ca44144eb40b6', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:34:10', 'e470153e65ff4acf84ef6bba89290519', '3'), ('868b79cbe1404417880e28350ee93e1c', '8f1099da100b4794930c0257ef0b6eb1', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:45:04', 'c4db76be7dd94f95b5213b885f919cba', '3'), ('911ae8fca47345a3bf8fc32bc91e4c4d', '22663e41b31a4ca68051173b24105ce3', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:16:56', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('9435a591923f47eea7bbd01dd9bc8824', 'e4af019f7a544cbb99d84092b11d57d5', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '2'), ('954d2db794564eada9893fa030e35cfe', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:56:28', 'e470153e65ff4acf84ef6bba89290519', '1'), ('99c0b65ca63243b3941fd8ff3fa53aec', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2'), ('a05275d226e544a7b3408cf47086cc8b', '7a476a7f9da54b1cabb1158445f65926', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('a190cb3ecfcb4d729bc6c75ae1062208', 'e4af019f7a544cbb99d84092b11d57d5', '06254582303d4460a97b92d2b2113146', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '1'), ('a41e7a274ff34e48ae27781fba519409', '13fa658fe77a4452aeba067aa69f910a', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 09:58:58', 'c321c891521446bdac49ae2bb29d7a00', '2'), ('b5261d801ae144608a764c3d96e1dfa9', '13fa658fe77a4452aeba067aa69f910a', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:58:58', 'c321c891521446bdac49ae2bb29d7a00', '1'), ('b67e6885af4e418fbd1c715914de4674', '7a476a7f9da54b1cabb1158445f65926', 'd1a99b7da3ad4bbba46cb7ca595e1650', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '3'), ('c8f3db3bcf804fd08f62926681766812', '8f1099da100b4794930c0257ef0b6eb1', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:36:02', 'c4db76be7dd94f95b5213b885f919cba', '1'), ('d06e2bddbb2a400a965cc4e0f4d0ebc8', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2'), ('d69e065c8e0748a4ba981da54d8e0c4f', '2a94cff1da254f37a4b907a8fd6b1c4d', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '3'), ('e39e7157b2bb46e8bda44bc7ffa31a65', '7a476a7f9da54b1cabb1158445f65926', '106a89d7353b439cb5eb000da7e6d881', '2016-05-20 09:32:43', 'c4db76be7dd94f95b5213b885f919cba', '2'), ('e407dc61322d4ece944c0844d0811236', 'e4af019f7a544cbb99d84092b11d57d5', '5ba89728daeb4a6999238a2939748145', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '2'), ('ee44e951d1c04bf19fd9e89997cc69ee', '72f59330be7748fc99e6968bb6400c5e', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1'), ('ef8e2e1b840f48db9638a514ed4694c5', '2a94cff1da254f37a4b907a8fd6b1c4d', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '2'), ('f2a7188f49594127aaf40a614a443f61', '86c72188723e4e738d61f62531f73d26', '96ad0cac8d0649aa9505185dcf805491', null, null, '-1'), ('f40f954de6684f539a8e2e605102dd60', '72f59330be7748fc99e6968bb6400c5e', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1'), ('f491b10f573b4c4da0e8342334a70606', '8f1099da100b4794930c0257ef0b6eb1', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:45:19', 'c4db76be7dd94f95b5213b885f919cba', '2');
COMMIT;

-- ----------------------------
--  Table structure for `ss_checkjob_job_result`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_job_result`;
CREATE TABLE `ss_checkjob_job_result` (
  `id_` varchar(64) NOT NULL COMMENT '任务ID流水号',
  `name_` varchar(255) NOT NULL COMMENT '任务名称',
  `job_id_` varchar(255) NOT NULL COMMENT '模版ID',
  `result` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `ent_id_` varchar(64) NOT NULL COMMENT '任务关联企业ID',
  `createuser_id_` varchar(64) NOT NULL DEFAULT '1' COMMENT '是否叶子节点',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Table structure for `ss_checkjob_job_tem`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_job_tem`;
CREATE TABLE `ss_checkjob_job_tem` (
  `id_` varchar(64) NOT NULL COMMENT '模版ID流水号',
  `name_` varchar(255) DEFAULT NULL COMMENT '模版名称',
  `createuser_id_` varchar(64) DEFAULT NULL COMMENT '创建人ID',
  `createdate` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `comment` varchar(255) DEFAULT NULL COMMENT '说明 备注',
  `items` longtext COMMENT '模版包含的检查项目',
  `org_id_` varchar(64) DEFAULT NULL COMMENT '所属组织ID',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Records of `ss_checkjob_job_tem`
-- ----------------------------
BEGIN;
INSERT INTO `ss_checkjob_job_tem` VALUES ('0794ae8b15804c1784ef18b4cad18565', 'aa', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-19 08:47:58', null, '5ba89728daeb4a6999238a2939748145,06254582303d4460a97b92d2b2113146,f74b2a58630d447188c0a205145a54aa,85c01be5af524b589733f0d0743d26d5,', '00a6355517874ab9ac9c89184d438124'), ('1f5e09c2e1ed4b0f8eb193580fc60f2d', 'test2222', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:56:20', null, '6fcab2ec600d492bb17d3c8eb142a92d,ba4a6153b64b4dcfb6943000b2a0f82f,', 'be8d6dacb14a42c7bb31893f3dcb922b'), ('3bf1c8399c7a4eeaaf4197211318887d', '测试2', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:28:47', null, '54baa8900f3d4fe8860ea3012f0c1be4,106a89d7353b439cb5eb000da7e6d881,d398275d3c8c475489e754fc8e66642f,d1a99b7da3ad4bbba46cb7ca595e1650,be60792440cc4dfca846b3e673ebf2a4,5fc58867e9994545b77cb63e3e25daae,', 'be742f86c9914e7b83bfb531c2e693df'), ('4919954eab334b8c9a70b7eaeb2b7981', '长模版', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-18 14:34:49', null, '1cb4228a85e44a6e9e0ae3b9b94d09cc,fb1bb00ed17f49aab5bca7a92c5f0ec7,29b81c1d4802456ea8025a56636bc79b,6d3e449431944c129371ed6be8be3d11,fa4712fd6d51444bae7449f3618f32f4,7c73335b484b46c0a30fda7799e568e1,9c496ad57e4e4d1e96e6f4ac501802b0,a3f95fe0ff4a4df7991130fbaaf91543,f640466a21cb452d831f57624b826b31,bc008f2cc84b49709b64465f576ec160,e4c018fea67f43f9aab0758f7592b5ab,21c400482d5f49088bba1d33c3a64134,755295eff8744e5f93e9360e91bc12ec,16c8e1581a32447191b6c12ae78d7703,2dbff7d7c0d6469993a4f137e37b2f0c,45129b544a3148caa7ed11a69db06f64,cb7fcf162bb34ded9d0694afa2cce127,98caa5d1bcf145218d9910687db6ef8f,c80fc1052a1d491ea9843099b18faf89,e3a77addc673422fb2bd3cf87f2bd2f5,6252b1c89ef247179d46db0a08b6e5b6,3776ae04982348a2a14469ed3e57abcb,472a032b4f534675acac3602e946ef69,e1947e4d73c6450bbebe724595a2276d,bb797c8b886b4cad86b05bc65b94c807,72d65040039f4c3f8ca72e22495797fc,d8407a4a393b44d3a059bdc7bed184ef,02eec96dfbf0440fa16a2caaf168c812,cc1351b04e924637bb7c8d6e62719ac2,eef8fe8c67824d23bb21c1ea9ab82449,b91cb851cf7142d3be3864826aa8f9db,f9914cf61c0343efb2d327f7f95042c2,de35744dc9914d018de7e9585b31b782,fcf9376948104da1b8d7cb43f71f4f78,77ef62f7f6644cbba6c3011cac207b68,37e65c6b652348b984e34f41fef3f614,228fb3a3a54649f8b3d84d759f916e1c,0ddff71c42164db3b755ab0198bbfdcc,b16a7a2f9d804a749fa583e41a5581c7,37e72140320d4cdfb52acf286a70f4e2,8daa22e6661643b3b60316c0f6c62ead,2d7af66ddec7413c842c294dc599bb4a,d398275d3c8c475489e754fc8e66642f,6eea078283214dbaa3612819b59346b0,8a39cc8902694c4b93a415154d8ae805,8339f698c8944a55a1e13af47485aa06,bd274ea7d3a84536b47e2f9aa14f5005,cce580d1e61d41e1b2fb71e20f9f2f20,b20e7020c78248c7afc6c818bce61446,dee27c258ed34630b60ed833a4b7fa3c,2365f90d42f14ace8f4298f236643a7f,87d922c87449409e94af94446eb3bd68,59f9422d36414718b72fc604ee5acf2a,79b417931ffb4e1fa7a49af433d8becd,33292f2c24384e7197742f40b8018e71,29999d34870b41f9ad4e791b5feec11e,c2729b7b0a1e47408cfbe378b7a90a51,f74b2a58630d447188c0a205145a54aa,5fc58867e9994545b77cb63e3e25daae,08f43a3729da415bb1b56dcd7a2e68ab,96ad0cac8d0649aa9505185dcf805491,', '00a6355517874ab9ac9c89184d438124'), ('54c9392998734269b0075c7adc40c104', 'test11111', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:55:40', null, '06254582303d4460a97b92d2b2113146,a09d87ce110240adbc5a959f9b46b4ed,be60792440cc4dfca846b3e673ebf2a4,', 'be8d6dacb14a42c7bb31893f3dcb922b'), ('5cbd9b0e26ea491da62259580f244a86', 'testnew1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:14:08', null, '12ef81ff422441eab5924c18443e1807,6fcab2ec600d492bb17d3c8eb142a92d,f74b2a58630d447188c0a205145a54aa,a09d87ce110240adbc5a959f9b46b4ed,', 'be742f86c9914e7b83bfb531c2e693df'), ('761081eb53d84e24973aae34425066cf', '滨海模版1', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-19 13:52:16', null, '5ba89728daeb4a6999238a2939748145,6fcab2ec600d492bb17d3c8eb142a92d,06254582303d4460a97b92d2b2113146,f74b2a58630d447188c0a205145a54aa,', 'be8d6dacb14a42c7bb31893f3dcb922b'), ('900fcf39cf11462ebc5fb7fa940aa727', '蓟县分局模版1', 'e470153e65ff4acf84ef6bba89290519', '2016-05-18 16:46:34', null, 'ba4a6153b64b4dcfb6943000b2a0f82f,f74b2a58630d447188c0a205145a54aa,a09d87ce110240adbc5a959f9b46b4ed,85c01be5af524b589733f0d0743d26d5,', 'd12df3a736c742c58da176dbbd52d128'), ('c3f4273431c94d9bbc4ec5daca923bc8', '天津局测试模版1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-18 15:35:07', null, '73842ea9aff84bbaa90898cc64be3ab6,85b3c3f90f374d0697203446b464e44c,3e73743f2e024d12bce72c4aed8a4c40,f255f88cc7f54fe5a5397e8bed014124,7f5defb0bc974d36ba1f5d1ee77aa087,fe2fbf44f2d94750b49e286aabd3ad07,f56d0d92eaab45329453f9bccbb36fe3,853ecdd98d3048c3a0bf3d4773bcdfda,1a66f7071b784ab9bd647652c3d93429,1809e810e0994707bcf6ae104b160710,5d9ec80c4df7478dbc58cac6ca36fe0c,6d0fe6e941444a19813694dc2fd7f45c,00a0aeba317840509f2f15d94fd6a1b3,c2729b7b0a1e47408cfbe378b7a90a51,29999d34870b41f9ad4e791b5feec11e,97e296dae88242d6a170220c39bcc95f,', 'be742f86c9914e7b83bfb531c2e693df'), ('cc65b6abe5444eae8b2adfd516b2240e', '企业自创建模版测试1', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-17 09:21:39', null, 'a09d87ce110240adbc5a959f9b46b4ed,85c01be5af524b589733f0d0743d26d5,08f43a3729da415bb1b56dcd7a2e68ab,96ad0cac8d0649aa9505185dcf805491,', '00a6355517874ab9ac9c89184d438124'), ('e20dddafbd8043db8fc6f44c46b602bb', '天津局测试短模版1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:14:47', null, '0bb7ce792fbc4cff809c71af3c70a8e1,5fc58867e9994545b77cb63e3e25daae,96ad0cac8d0649aa9505185dcf805491,', 'be742f86c9914e7b83bfb531c2e693df');
COMMIT;

-- ----------------------------
--  Table structure for `ss_checkjob_job_tem_item`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_job_tem_item`;
CREATE TABLE `ss_checkjob_job_tem_item` (
  `id_` varchar(64) NOT NULL COMMENT '模版项目ID',
  `tem_id_` varchar(64) DEFAULT NULL COMMENT '模版ID',
  `item_id_` varchar(64) DEFAULT '' COMMENT '检查项ID',
  `operate_time_` datetime DEFAULT NULL COMMENT '操作时间',
  `operator_id_` varchar(64) DEFAULT NULL COMMENT '操作人ID',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
--  Records of `ss_checkjob_job_tem_item`
-- ----------------------------
BEGIN;
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('01268134af8d452a982b00d5ec6fac46', '3bf1c8399c7a4eeaaf4197211318887d', 'd398275d3c8c475489e754fc8e66642f', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('018470c1eecd41cbb59d5e079726ac05', '900fcf39cf11462ebc5fb7fa940aa727', '85c01be5af524b589733f0d0743d26d5', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519'), ('04af182f0a4947f581c13ddfd891a08a', '4919954eab334b8c9a70b7eaeb2b7981', 'eef8fe8c67824d23bb21c1ea9ab82449', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('08cf24561d1148fda728aa95e4234679', '4919954eab334b8c9a70b7eaeb2b7981', '228fb3a3a54649f8b3d84d759f916e1c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('09227dc707c0453a887c070a3f157d10', '4919954eab334b8c9a70b7eaeb2b7981', '29999d34870b41f9ad4e791b5feec11e', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('0bf29b4948a145769fa85311dde05f29', '4919954eab334b8c9a70b7eaeb2b7981', 'e1947e4d73c6450bbebe724595a2276d', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('0f075fe3c08d4f4582b2ea42f4fdcea7', '4919954eab334b8c9a70b7eaeb2b7981', '2d7af66ddec7413c842c294dc599bb4a', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('0f898146ce304435a7e0b6527144389d', '0794ae8b15804c1784ef18b4cad18565', 'f74b2a58630d447188c0a205145a54aa', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0'), ('109194e8e1d845d099d8bdbde5881899', '4919954eab334b8c9a70b7eaeb2b7981', 'd398275d3c8c475489e754fc8e66642f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('10b2555fd24943fbb5b8377113ac28ac', 'e20dddafbd8043db8fc6f44c46b602bb', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba'), ('14cd64b4b2b646acac332859e95a77b2', 'c3f4273431c94d9bbc4ec5daca923bc8', '5d9ec80c4df7478dbc58cac6ca36fe0c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('1ec3453ef4cc4cada1dc7dd3679e5d24', '4919954eab334b8c9a70b7eaeb2b7981', 'd8407a4a393b44d3a059bdc7bed184ef', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('217269d9ed3f4189bb6141ee3f469591', '54c9392998734269b0075c7adc40c104', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00'), ('223f363f450348cda777c02df6e784ed', '4919954eab334b8c9a70b7eaeb2b7981', 'b20e7020c78248c7afc6c818bce61446', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('27c7e19572c9446985cbb22d8c8e695d', '4919954eab334b8c9a70b7eaeb2b7981', '98caa5d1bcf145218d9910687db6ef8f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('2f44da835c2a44218a7087a0c73fc045', '4919954eab334b8c9a70b7eaeb2b7981', 'b16a7a2f9d804a749fa583e41a5581c7', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('2fc68b3eaccf4b4588a9fa05543a11b9', '4919954eab334b8c9a70b7eaeb2b7981', '9c496ad57e4e4d1e96e6f4ac501802b0', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('31714be685ea41d1985255d724f5b75c', 'c3f4273431c94d9bbc4ec5daca923bc8', '1a66f7071b784ab9bd647652c3d93429', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('36af504f64e44ba1bda89cf82bffcc91', '4919954eab334b8c9a70b7eaeb2b7981', 'f74b2a58630d447188c0a205145a54aa', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('36e1a55e9d894b149b783219e08d12fd', '0794ae8b15804c1784ef18b4cad18565', '06254582303d4460a97b92d2b2113146', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0'), ('371d129ead0a40a0a63b44ca8eb26eac', '4919954eab334b8c9a70b7eaeb2b7981', 'f9914cf61c0343efb2d327f7f95042c2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('37635173c5124a9ba1e62fb556c78eb0', 'cc65b6abe5444eae8b2adfd516b2240e', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0'), ('37f3327d016148d589c95d08567aaead', '4919954eab334b8c9a70b7eaeb2b7981', '7c73335b484b46c0a30fda7799e568e1', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('411448bcb3b04fccbde996b700dead4b', '900fcf39cf11462ebc5fb7fa940aa727', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519'), ('421249e781244be8b1ccc4b97b1c6bd8', '4919954eab334b8c9a70b7eaeb2b7981', '472a032b4f534675acac3602e946ef69', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('4871cb9c3f194ce7bfaa14a34fa6d600', 'e20dddafbd8043db8fc6f44c46b602bb', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba'), ('4a430fece4fb4849a7839063561c1ba2', '54c9392998734269b0075c7adc40c104', '06254582303d4460a97b92d2b2113146', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00'), ('4cc1c2f3cfb4417699a1101ab3c687de', '54c9392998734269b0075c7adc40c104', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00'), ('4ef2648f02684ea08b5d89e50b7f1075', 'c3f4273431c94d9bbc4ec5daca923bc8', 'f56d0d92eaab45329453f9bccbb36fe3', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('52ea27f0ba3748819cecdf7493cb0f44', '3bf1c8399c7a4eeaaf4197211318887d', '106a89d7353b439cb5eb000da7e6d881', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('565e851e993e40069045bc71e37d8e92', '4919954eab334b8c9a70b7eaeb2b7981', '8a39cc8902694c4b93a415154d8ae805', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('584dca20613c4ca49133c4760309f1ec', '4919954eab334b8c9a70b7eaeb2b7981', '72d65040039f4c3f8ca72e22495797fc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('58aa13ac06b24d7ab8a47ce2ccd0ac15', '1f5e09c2e1ed4b0f8eb193580fc60f2d', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 09:56:20', 'c321c891521446bdac49ae2bb29d7a00'), ('58cc537681734ae6946cdec400c05f63', '4919954eab334b8c9a70b7eaeb2b7981', '2365f90d42f14ace8f4298f236643a7f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('5b519455f06240b89a1e1c1c90505243', 'c3f4273431c94d9bbc4ec5daca923bc8', '7f5defb0bc974d36ba1f5d1ee77aa087', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('5dc71b8b53db4bf6bbaa40f40ac7ae0c', '4919954eab334b8c9a70b7eaeb2b7981', '6d3e449431944c129371ed6be8be3d11', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('609b2c4a167b4e6ca2674f35198905d2', '0794ae8b15804c1784ef18b4cad18565', '5ba89728daeb4a6999238a2939748145', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0'), ('68e5e29a44fe436c89181364745d7ad4', '4919954eab334b8c9a70b7eaeb2b7981', '37e72140320d4cdfb52acf286a70f4e2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('6bd3a53b8cb14816a5f1bcd46260ac1f', '4919954eab334b8c9a70b7eaeb2b7981', '1cb4228a85e44a6e9e0ae3b9b94d09cc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('6be1fbe464fe4bccaf85c214a559fa23', 'cc65b6abe5444eae8b2adfd516b2240e', '96ad0cac8d0649aa9505185dcf805491', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0'), ('730ca39d54564acc94e1f65193954e91', 'c3f4273431c94d9bbc4ec5daca923bc8', 'fe2fbf44f2d94750b49e286aabd3ad07', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('741f84e334a54c868d673b8761ba1af8', '5cbd9b0e26ea491da62259580f244a86', '12ef81ff422441eab5924c18443e1807', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba'), ('750f1e6fe35c45ae8a0b1282e566336d', '4919954eab334b8c9a70b7eaeb2b7981', '77ef62f7f6644cbba6c3011cac207b68', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('75b657812e9a4f5495a6b8430b88867c', '4919954eab334b8c9a70b7eaeb2b7981', 'c2729b7b0a1e47408cfbe378b7a90a51', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('7791fc39d69c447b826164c4d1db8d92', '5cbd9b0e26ea491da62259580f244a86', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba'), ('7a21645078e34732a322a04075326a79', '4919954eab334b8c9a70b7eaeb2b7981', 'cb7fcf162bb34ded9d0694afa2cce127', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('7ba6df27346248f18bc276ae40797154', 'c3f4273431c94d9bbc4ec5daca923bc8', 'f255f88cc7f54fe5a5397e8bed014124', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('7be4d8107e7d4f9e8ba6f866050605d5', '761081eb53d84e24973aae34425066cf', 'f74b2a58630d447188c0a205145a54aa', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00'), ('7fc699a975384c57a23b043d4518372c', 'c3f4273431c94d9bbc4ec5daca923bc8', '3e73743f2e024d12bce72c4aed8a4c40', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('82da82d689e34a688c01e044b28a8b14', '4919954eab334b8c9a70b7eaeb2b7981', '6eea078283214dbaa3612819b59346b0', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('831be866ace54d01817ea1d595f7f39f', 'cc65b6abe5444eae8b2adfd516b2240e', '85c01be5af524b589733f0d0743d26d5', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0'), ('84b7c481ea2345adac4989537389d4f9', '4919954eab334b8c9a70b7eaeb2b7981', 'cce580d1e61d41e1b2fb71e20f9f2f20', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('85cd8fed86af4ee292916d7d6e81fbd0', '4919954eab334b8c9a70b7eaeb2b7981', '755295eff8744e5f93e9360e91bc12ec', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('8b3494fa749544248ebdd74fb17792a4', 'c3f4273431c94d9bbc4ec5daca923bc8', '6d0fe6e941444a19813694dc2fd7f45c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('8bad30040e194b7091e112209e571384', '5cbd9b0e26ea491da62259580f244a86', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba'), ('8c5531f25f8b4df38f9e33744778e339', '4919954eab334b8c9a70b7eaeb2b7981', '6252b1c89ef247179d46db0a08b6e5b6', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('8f5a43316c134c768640ee0633de1b55', '4919954eab334b8c9a70b7eaeb2b7981', '0ddff71c42164db3b755ab0198bbfdcc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('90bb95d2810b4d81a362c8f341b75bb0', '4919954eab334b8c9a70b7eaeb2b7981', '16c8e1581a32447191b6c12ae78d7703', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('91a372c5c44741c6a1b940429a79b55e', '900fcf39cf11462ebc5fb7fa940aa727', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519'), ('92525604d25948409b83331d6d176939', '4919954eab334b8c9a70b7eaeb2b7981', 'fcf9376948104da1b8d7cb43f71f4f78', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('96fd17f158e545368bfa4d81615df1b7', '4919954eab334b8c9a70b7eaeb2b7981', '2dbff7d7c0d6469993a4f137e37b2f0c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('9883613cfbbc43b8a3907816c0581a8b', '4919954eab334b8c9a70b7eaeb2b7981', 'bd274ea7d3a84536b47e2f9aa14f5005', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('9b122b7ed1e148dfa3c7d8824bb4995c', '900fcf39cf11462ebc5fb7fa940aa727', 'f74b2a58630d447188c0a205145a54aa', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519'), ('9d335e22b6714128a7a8ed0941533b9f', 'c3f4273431c94d9bbc4ec5daca923bc8', 'c2729b7b0a1e47408cfbe378b7a90a51', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('9d867109e00b49178cf93222b95e475d', '3bf1c8399c7a4eeaaf4197211318887d', 'd1a99b7da3ad4bbba46cb7ca595e1650', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('9e92a440111f4cf882272169e536a822', '3bf1c8399c7a4eeaaf4197211318887d', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('9ecd0a53251048dcacc45171b70967c5', 'c3f4273431c94d9bbc4ec5daca923bc8', '00a0aeba317840509f2f15d94fd6a1b3', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('a011c191e3b4447baadcba93e48c5225', '4919954eab334b8c9a70b7eaeb2b7981', 'f640466a21cb452d831f57624b826b31', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('a24813ec0a6948df98188639ca29c4dd', '4919954eab334b8c9a70b7eaeb2b7981', '8339f698c8944a55a1e13af47485aa06', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('a360b9df1e1c44868381248d023881d2', '4919954eab334b8c9a70b7eaeb2b7981', 'de35744dc9914d018de7e9585b31b782', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('a368ed1406e24cbd868ad7c21abb5884', '4919954eab334b8c9a70b7eaeb2b7981', '8daa22e6661643b3b60316c0f6c62ead', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('a637e0e6c9064ebe92bc971ca9289ae9', '3bf1c8399c7a4eeaaf4197211318887d', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('a77a4fc9c74e4121a0415a456ea91fed', '4919954eab334b8c9a70b7eaeb2b7981', '02eec96dfbf0440fa16a2caaf168c812', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('aeda24e0bb204f55ba38a3dfc0aaf67e', '4919954eab334b8c9a70b7eaeb2b7981', '5fc58867e9994545b77cb63e3e25daae', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('aefcc84f872a486287fe239427a0766b', '761081eb53d84e24973aae34425066cf', '06254582303d4460a97b92d2b2113146', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00'), ('afd01c53ab854f28923e29e39204d455', '4919954eab334b8c9a70b7eaeb2b7981', '3776ae04982348a2a14469ed3e57abcb', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('b003ef3be50a4e48a8e61f552296e34b', '4919954eab334b8c9a70b7eaeb2b7981', '21c400482d5f49088bba1d33c3a64134', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('b3b00a54206d495d8af757c5bd9e0460', '4919954eab334b8c9a70b7eaeb2b7981', '29b81c1d4802456ea8025a56636bc79b', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('b471a448c7d247a183db539a9138033f', 'c3f4273431c94d9bbc4ec5daca923bc8', '1809e810e0994707bcf6ae104b160710', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('b798bbeed6dd426b971f253ca2b7bfcd', 'e20dddafbd8043db8fc6f44c46b602bb', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba'), ('c14d154b628b4fc38430640f32914a60', '0794ae8b15804c1784ef18b4cad18565', '85c01be5af524b589733f0d0743d26d5', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0'), ('c2a4aed1c9ae4f60a0e22eb58a03ab60', '4919954eab334b8c9a70b7eaeb2b7981', 'cc1351b04e924637bb7c8d6e62719ac2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('c543064be23d4307aaebd1ee445d7725', 'c3f4273431c94d9bbc4ec5daca923bc8', '85b3c3f90f374d0697203446b464e44c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('c86949653ba24cb29f0fb6c2cc90157e', 'c3f4273431c94d9bbc4ec5daca923bc8', '853ecdd98d3048c3a0bf3d4773bcdfda', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('ca2ef3eb2c464bf9a459660134859a4b', '4919954eab334b8c9a70b7eaeb2b7981', 'bc008f2cc84b49709b64465f576ec160', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('d1f1b492487048839d30768b24065e81', '4919954eab334b8c9a70b7eaeb2b7981', '79b417931ffb4e1fa7a49af433d8becd', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('d3189699f6f142b8b65e3321d31a9660', '1f5e09c2e1ed4b0f8eb193580fc60f2d', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:56:20', 'c321c891521446bdac49ae2bb29d7a00'), ('d543f4ba54104fdeb607257e20f37167', '761081eb53d84e24973aae34425066cf', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00'), ('d7e3b48b541c4a26937d0c20cf9f6c7a', 'c3f4273431c94d9bbc4ec5daca923bc8', '73842ea9aff84bbaa90898cc64be3ab6', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('d7ecbd77dad940f1920dd89fa165f000', '4919954eab334b8c9a70b7eaeb2b7981', 'e4c018fea67f43f9aab0758f7592b5ab', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('da90b014c94946e3b09bbad631d15687', '4919954eab334b8c9a70b7eaeb2b7981', '59f9422d36414718b72fc604ee5acf2a', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('dacc300521b3464097fb31e7c77080aa', '4919954eab334b8c9a70b7eaeb2b7981', 'b91cb851cf7142d3be3864826aa8f9db', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('de451c49636348b0a9e7668313b1dfac', '4919954eab334b8c9a70b7eaeb2b7981', 'bb797c8b886b4cad86b05bc65b94c807', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e03f637b491346b89d1daab02d0c2539', '4919954eab334b8c9a70b7eaeb2b7981', '37e65c6b652348b984e34f41fef3f614', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e3d37a9d051c4448868ef1dabe730529', 'c3f4273431c94d9bbc4ec5daca923bc8', '97e296dae88242d6a170220c39bcc95f', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('e6ea798b04034afa9e09d436db3c61ae', '4919954eab334b8c9a70b7eaeb2b7981', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e73351d62cf24cf3b473c8f9d61be85c', '4919954eab334b8c9a70b7eaeb2b7981', '45129b544a3148caa7ed11a69db06f64', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e7654b7825f948489eeb7777fdf1ee6f', '4919954eab334b8c9a70b7eaeb2b7981', 'c80fc1052a1d491ea9843099b18faf89', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e7cb14ea2135498f9c799549fdbd583c', '4919954eab334b8c9a70b7eaeb2b7981', 'a3f95fe0ff4a4df7991130fbaaf91543', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('e80739ffacac4a218b5c5f94e0660aa8', '4919954eab334b8c9a70b7eaeb2b7981', '33292f2c24384e7197742f40b8018e71', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('eaf34660ada5412fa835a2487991b73b', '5cbd9b0e26ea491da62259580f244a86', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba'), ('ec779c4db15b4c54bb79d2d4f02860eb', '761081eb53d84e24973aae34425066cf', '5ba89728daeb4a6999238a2939748145', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00'), ('ed690ba028ec451594dd21218d0f86ab', '4919954eab334b8c9a70b7eaeb2b7981', '87d922c87449409e94af94446eb3bd68', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('ed7383c667454956babdc7c4223c830e', '4919954eab334b8c9a70b7eaeb2b7981', 'dee27c258ed34630b60ed833a4b7fa3c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('eddca003844b48008128aa4940c125e4', '3bf1c8399c7a4eeaaf4197211318887d', '54baa8900f3d4fe8860ea3012f0c1be4', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba'), ('f3434fcb824848409346bf633fb20b0e', '4919954eab334b8c9a70b7eaeb2b7981', '96ad0cac8d0649aa9505185dcf805491', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('f5a2fe916f0b4744ae4f51fd2f5cd756', '4919954eab334b8c9a70b7eaeb2b7981', 'e3a77addc673422fb2bd3cf87f2bd2f5', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('fa838c56c54e49e6aec4626fa409828f', '4919954eab334b8c9a70b7eaeb2b7981', 'fa4712fd6d51444bae7449f3618f32f4', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('fb7f6e4dc42c4b4ba89dc4aabddafe83', '4919954eab334b8c9a70b7eaeb2b7981', 'fb1bb00ed17f49aab5bca7a92c5f0ec7', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0'), ('fcfe70eeb895496095f354010696d03c', 'c3f4273431c94d9bbc4ec5daca923bc8', '29999d34870b41f9ad4e791b5feec11e', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba'), ('fe27d8d3d7974561ae7d6f8c75051575', 'cc65b6abe5444eae8b2adfd516b2240e', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0');
COMMIT;

-- ----------------------------
--  View structure for `act_id_group`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_group` AS select `t1`.`id` AS `ID_`,`t1`.`REV` AS `REV_`,`t1`.`NAME` AS `NAME_`,`t1`.`TYPE` AS `TYPE_` from `jc_sys_group` `t1` where (`t1`.`CUSTOM_CODE` = 'wf');

-- ----------------------------
--  View structure for `act_id_info`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_info` AS select `t1`.`ID_` AS `ID_`,`t1`.`REV_` AS `REV_`,`t1`.`USER_ID_` AS `USER_ID_`,`t1`.`TYPE_` AS `TYPE_`,`t1`.`KEY_` AS `KEY_`,`t1`.`VALUE_` AS `VALUE_`,`t1`.`PASSWORD_` AS `PASSWORD_`,`t1`.`PARENT_ID_` AS `PARENT_ID_` from `jc_tmp_actuserinfo` `t1`;

-- ----------------------------
--  View structure for `act_id_membership`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_membership`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_membership` AS select `jc_sys_user_group`.`USERID` AS `USER_ID_`,`jc_sys_user_group`.`GROUPID` AS `GROUP_ID_` from `jc_sys_user_group`;

-- ----------------------------
--  View structure for `act_id_user`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_user` AS select `t1`.`USERNAME` AS `ID_`,(1 + 1) AS `REV_`,'testfirst' AS `FIRST_`,'testlast' AS `LAST`,'0' AS `PICTURE_ID_`,`t1`.`EMAIL` AS `EMAIL_`,`t1`.`PASSWORD` AS `PWD_` from `jc_sys_user` `t1`;

-- ----------------------------
--  Procedure structure for `checkitemprocess`
-- ----------------------------
DROP PROCEDURE IF EXISTS `checkitemprocess`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkitemprocess`(in realtempin int,
out realtempout int,
inout realnum int )
BEGIN

DECLARE Done INT DEFAULT 0;
      
       DECLARE rs_num INT;
      
       DECLARE realcasid VARCHAR(100);
       /* 声明游标 */
       DECLARE rs CURSOR FOR SELECT cascade_id_ FROM ss_checkjob_checkitem;
       /* 异常处理 */
	/*DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET Done = 1;*/

	DECLARE  CONTINUE HANDLER FOR NOT FOUND  SET  Done = 1; /*when "not found" occur,just continue,这个是个条件处理,针对NOT FOUND的条件*/
	SET rs_num = 0;
   
    /* 打开游标 */	
    OPEN rs;  
   
    /* 逐个取出当前记录LingQi字段的值，需要进行最大值的判断 */
    FETCH NEXT FROM rs INTO realcasid;     
    /* 遍历数据表 */
    REPEAT
          IF NOT Done THEN
		SET rs_num = rs_num + 1;
		SET realnum = realnum+1;
          END IF;
         
    FETCH NEXT FROM rs INTO realcasid;

    UNTIL Done END REPEAT;
   
    /* 关闭游标 */
     CLOSE rs;
	
	SELECT rs_num INTO realtempout;

END
 ;;
delimiter ;

-- ----------------------------
--  Function structure for `getCheckItemChildLst`
-- ----------------------------
DROP FUNCTION IF EXISTS `getCheckItemChildLst`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getCheckItemChildLst`(rootId varchar(255)) RETURNS varchar(1000) CHARSET utf8
BEGIN  
       DECLARE sTemp VARCHAR(1000);  
       DECLARE sTempChd VARCHAR(1000);  
      
       SET sTemp = '$';  
       SET sTempChd =rootId;  
      
       WHILE sTempChd is not null DO  
         SET sTemp = concat(sTemp,',',sTempChd);  
         SELECT group_concat(id_) INTO sTempChd FROM ss_checkjob_checkitem where parent_id_<>id_ and FIND_IN_SET(parent_id_,sTempChd)>0;  
       END WHILE;  
       RETURN sTemp;  
     END
 ;;
delimiter ;

-- ----------------------------
--  Function structure for `getChildLst`
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildLst`(rootId varchar(255)) RETURNS varchar(1000) CHARSET utf8
BEGIN  
       DECLARE sTemp VARCHAR(1000);  
       DECLARE sTempChd VARCHAR(1000);  
      
       SET sTemp = '$';  
       SET sTempChd =rootId;  
      
       WHILE sTempChd is not null DO  
         SET sTemp = concat(sTemp,',',sTempChd);  
         SELECT group_concat(id_) INTO sTempChd FROM aos_sys_org where parent_id_<>id_ and type_='1' and FIND_IN_SET(parent_id_,sTempChd)>0;  
       END WHILE;  
       RETURN sTemp;  
     END
 ;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
