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

 Date: 10/12/2016 14:16:44 PM
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
INSERT INTO `act_ge_property` VALUES ('next.dbid', '142501', '58'), ('schema.history', 'create(5.21.0.0)', '1'), ('schema.version', '5.21.0.0', '1');
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
INSERT INTO `act_re_deployment` VALUES ('1', 'SpringAutoDeployment', null, '', '2016-08-29 14:09:53.238'), ('100001', 'SpringAutoDeployment', null, '', '2016-09-05 10:09:23.255'), ('102501', 'SpringAutoDeployment', null, '', '2016-09-25 17:15:32.683'), ('105001', 'SpringAutoDeployment', null, '', '2016-09-25 21:42:01.683'), ('107501', 'SpringAutoDeployment', null, '', '2016-09-25 22:00:08.437'), ('110001', 'SpringAutoDeployment', null, '', '2016-09-25 22:30:31.384'), ('112501', 'SpringAutoDeployment', null, '', '2016-09-26 00:40:13.628'), ('115001', 'SpringAutoDeployment', null, '', '2016-09-26 01:45:19.581'), ('117501', 'SpringAutoDeployment', null, '', '2016-10-01 08:50:07.035'), ('120001', 'SpringAutoDeployment', null, '', '2016-10-05 07:57:31.725'), ('122501', 'SpringAutoDeployment', null, '', '2016-10-05 08:52:10.454'), ('125001', 'SpringAutoDeployment', null, '', '2016-10-05 09:21:44.943'), ('127501', 'SpringAutoDeployment', null, '', '2016-10-05 14:45:58.227'), ('130001', 'SpringAutoDeployment', null, '', '2016-10-05 16:10:00.197'), ('132501', 'SpringAutoDeployment', null, '', '2016-10-05 16:29:51.241'), ('135001', 'SpringAutoDeployment', null, '', '2016-10-07 23:03:02.684'), ('137501', 'SpringAutoDeployment', null, '', '2016-10-08 01:10:38.472'), ('140001', 'SpringAutoDeployment', null, '', '2016-10-08 06:58:15.635'), ('17501', 'SpringAutoDeployment', null, '', '2016-09-02 13:34:52.869'), ('27501', 'SpringAutoDeployment', null, '', '2016-09-02 16:09:50.503'), ('30001', 'SpringAutoDeployment', null, '', '2016-09-03 08:21:32.878'), ('32501', 'SpringAutoDeployment', null, '', '2016-09-03 08:24:43.193'), ('35001', 'SpringAutoDeployment', null, '', '2016-09-03 10:05:27.775'), ('37501', 'SpringAutoDeployment', null, '', '2016-09-03 11:03:12.374'), ('40001', 'SpringAutoDeployment', null, '', '2016-09-04 17:41:14.406'), ('42501', 'SpringAutoDeployment', null, '', '2016-09-04 17:57:28.310'), ('45001', 'SpringAutoDeployment', null, '', '2016-09-05 01:46:08.599'), ('47501', 'SpringAutoDeployment', null, '', '2016-09-05 01:49:01.469'), ('50001', 'SpringAutoDeployment', null, '', '2016-09-05 02:16:38.754'), ('52501', 'SpringAutoDeployment', null, '', '2016-09-05 04:59:16.573'), ('55001', 'SpringAutoDeployment', null, '', '2016-09-05 06:28:15.350'), ('57501', 'SpringAutoDeployment', null, '', '2016-09-05 06:44:52.200'), ('62501', 'SpringAutoDeployment', null, '', '2016-09-05 06:48:41.202'), ('65001', 'SpringAutoDeployment', null, '', '2016-09-05 06:51:16.455'), ('67501', 'SpringAutoDeployment', null, '', '2016-09-05 06:52:49.113'), ('70001', 'SpringAutoDeployment', null, '', '2016-09-05 06:53:59.900'), ('72501', 'SpringAutoDeployment', null, '', '2016-09-05 06:54:55.307'), ('75001', 'SpringAutoDeployment', null, '', '2016-09-05 06:56:13.204'), ('80001', 'SpringAutoDeployment', null, '', '2016-09-05 06:58:36.620'), ('95001', 'SpringAutoDeployment', null, '', '2016-09-05 07:47:48.571');
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
INSERT INTO `act_re_procdef` VALUES ('hireProcess:10:100009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:11:102508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:12:105009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:13:107508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:14:110009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:15:112508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:16:115009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:17:117511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:18:120009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:19:122511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:1:57510', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:20:125009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:21:127511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:22:130009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:23:132511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:24:135009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:25:137511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:26:140009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:2:62511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:3:65011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:4:67511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:5:70011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:6:72511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:7:75007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:8:80009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcess:9:95011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:10:100011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:11:102507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:12:105011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:13:107507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:14:110011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:15:112507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:16:115011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:17:117509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:18:120007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:19:122509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:1:57508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:20:125007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:21:127509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:22:130007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:23:132509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:24:135007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:25:137509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:26:140011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:2:62509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:3:65009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:4:67509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:5:70009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:6:72509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:7:75006', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:8:80007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('hireProcessWithJpa:9:95009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', ''), ('leavesayhello:10:110012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '10', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:11:115012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '11', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:12:117510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '12', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:13:122510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '13', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:14:127510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '14', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:15:132510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '15', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:16:137510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '16', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:17:140012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '17', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:1:57509', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:2:62510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:3:65010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:4:67510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:5:70010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:6:72510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:7:95010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:8:100012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('leavesayhello:9:105012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '9', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', ''), ('simplejc:10:105010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '10', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:11:107509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '11', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:12:110010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '12', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:13:112509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '13', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:14:115010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '14', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:15:117512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '15', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:16:120008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '16', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:17:122512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '17', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:18:125008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '18', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:19:127512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '19', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:1:62512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '1', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:20:130008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '20', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:21:132512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '21', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:22:135008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '22', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:23:137512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '23', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:24:140010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '24', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:2:65012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '2', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:3:67512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '3', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:4:70012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '4', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:5:72512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '5', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:6:80008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '6', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:7:95012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:8:100010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', ''), ('simplejc:9:102509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '9', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
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
  `F_DELETED` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_m_doc_allinone`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_allinone` VALUES ('1', '1', '1', '99', '文档中心资源库', null, null, null, null, b'1', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', b'0'), ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', b'1', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', b'0'), ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', b'1', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', b'0'), ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', b'1', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, b'0'), ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', b'1', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '', b'0'), ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', b'1', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null, b'0'), ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', b'1', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '', b'0'), ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', b'1', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '', b'0'), ('9', '1', '1.005', '1', '测试文档目录层1', null, null, '0', '999', b'1', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null, b'0'), ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '', b'0'), ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '', b'0'), ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '', b'0'), ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', b'0', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '', b'0'), ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '', b'0'), ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_0033', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '', b'0'), ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5test', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '', b'0'), ('99', '1', '0', '99', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null, b'0');
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
--  Records of `jc_m_doc_file`
-- ----------------------------
BEGIN;
INSERT INTO `jc_m_doc_file` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, b'1', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', ''), ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', b'1', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', ''), ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', b'1', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', ''), ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', b'1', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null), ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', b'1', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', ''), ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', b'1', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null), ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', b'1', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', ''), ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', b'1', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', ''), ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', b'1', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null), ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', ''), ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', ''), ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', ''), ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', b'0', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', ''), ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', ''), ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', ''), ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', b'0', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', ''), ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);
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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`PJNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_pj_info`
-- ----------------------------
BEGIN;
INSERT INTO `jc_pj_info` VALUES ('4', '河南肿瘤医院GCP稽查', null, '6', '13920888888', '100000', '60', '2016-09-05 04:40:03', null, '2016-09-05 04:40:03', null, null, null, null), ('11', 'ffff', null, '6', null, '111111', '0', '2016-09-05 05:34:46', '6', '2016-09-05 05:34:46', '6', null, null, null), ('12', '测试流程1', null, null, null, '0', '0', null, null, null, null, null, null, null), ('14', '测试流程2016-09-05T06:35:30.442', null, null, null, '0', '0', null, null, null, null, null, null, null), ('15', '测试流程2016-09-05T06:36:45.832', null, null, null, '0', '0', null, null, null, null, null, null, null), ('16', '测试流程2016-09-05T06:38:55.215', null, null, null, '0', '0', null, null, null, null, null, null, null), ('17', '测试流程2016-09-05T06:41:11.733', null, null, null, '0', '0', null, null, null, null, null, null, null), ('18', '测试流程2016-09-05T06:56:54.755', null, null, null, '0', '0', null, null, null, null, null, null, null), ('19', '测试流程2016-09-05T06:58:41.692', null, null, null, '0', '0', null, null, null, null, null, null, null), ('20', '测试流程2016-09-05T07:00:11.758', null, null, null, '0', '0', null, null, null, null, null, null, null), ('21', '测试流程2016-09-05T07:01:18.900', null, null, null, '0', '0', null, null, null, null, null, null, null), ('22', '测试流程2016-09-05T07:26:09.259', null, null, null, '0', '0', null, null, null, null, null, null, null), ('23', '测试流程2016-09-05T07:27:43.354', null, null, null, '0', '0', null, null, null, null, null, null, null), ('24', '测试流程2016-09-05T07:29:38.442', null, null, null, '0', '0', null, null, null, null, null, null, null), ('25', '流程测试项目1', null, '6', null, '1', '0', '2016-09-05 07:48:33', '6', '2016-09-05 07:48:33', '6', null, null, null), ('26', '工作流测试——1', null, '6', null, '1111', '0', '2016-09-05 09:55:51', '6', '2016-09-05 09:55:51', '6', null, null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_menu` VALUES ('1', '2', '1', '99', '菜单鼻祖', '#', null, null, null, null, b'1', b'1', b'1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', b'0'), ('2', '2', '1.001', '1', '综合看板', '#', null, 'fa fa-lg fa-fw fa-home', '', '1000', b'1', b'1', b'1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', b'0'), ('3', '2', '1.002', '1', '我的工作台', '#', null, 'fa fa-lg fa-fw fa-inbox', '<em>3</em>', '2000', b'1', b'1', b'1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', b'0'), ('4', '2', '1.003', '1', '项目管理', '#', null, 'fa fa-lg fa-fw fa-file-powerpoint-o', null, '3000', b'1', b'1', b'1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, b'0'), ('99', '1', '0', '99', '占位符', null, null, '0', null, '0', null, b'1', b'0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null, b'0'), ('100', '2', '1.001.001', '2', '业务仪表盘', 'dashboard/dashboard.html', null, '0', null, '1000', null, b'1', b'0', '1', null, '2016-09-25 17:33:25', '0', '2016-09-25 17:33:31', '0', null, b'0'), ('101', '2', '1.001.002', '2', '统计分析仪表盘', 'dashboard/flot', null, '0', null, '2000', null, b'1', b'0', '1', null, '2016-09-25 17:33:29', '0', '2016-09-25 17:33:33', '0', null, b'0'), ('102', '2', '1.004', '1', '文档管理中心', '#', null, 'fa fa-lg fa-fw fa-folder-o', null, '4000', null, b'1', b'0', '1', null, '2016-09-25 20:15:17', '0', '2016-09-25 20:15:19', '0', null, b'0'), ('103', '2', '1.004.001', '102', '文档分类管理', 'doccenter/manager.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:16:18', '0', '2016-09-25 20:16:18', '0', null, b'0'), ('104', '2', '1.004.002', '102', '文档维护', 'doccenter/m2.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:22:15', '0', '2016-09-25 20:22:15', '0', null, b'0'), ('105', '2', '1.005', '1', '稽查标准数据库管理', null, null, 'fa fa-lg fa-fw fa-database', null, '5000', null, b'1', b'0', '1', null, '2016-09-25 20:26:52', '0', '2016-09-25 20:26:52', '0', null, b'0'), ('106', '2', '1.006', '1', '工作流管理', null, null, 'fa fa-lg fa-fw fa-long-arrow-right', null, '6000', null, b'1', b'0', '1', null, '2016-09-25 20:27:03', '0', '2016-09-25 20:27:03', '0', null, b'0'), ('107', '2', '1.007', '1', '系统管理', null, null, 'fa fa-lg fa-fw fa-gear', null, '9000', null, b'1', b'0', '1', null, '2016-09-25 20:28:10', '0', '2016-09-25 20:28:10', '0', null, b'0'), ('108', '2', '1.007.001', '107', '机构管理', 'system/org/page.html', null, '0', null, '1000', null, b'1', b'0', '1', null, '2016-09-25 20:28:45', '0', '2016-09-25 20:28:45', '0', null, b'0'), ('109', '2', '1.007.002', '107', '用户管理', 'system/user/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:30:17', '0', '2016-09-25 20:30:17', '0', null, b'0'), ('110', '2', '1.007.003', '107', '角色管理', 'system/role/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-25 20:31:08', '0', '2016-09-25 20:31:08', '0', null, b'0'), ('111', '2', '1.006.001', '106', '流程列表', 'wf/def/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-26 15:59:00', '0', '2016-09-26 15:59:00', '0', null, b'0'), ('112', '2', '1.006.002', '106', '我的工作', 'wf/task/page.html', null, '0', null, '0', null, b'1', b'0', '1', null, '2016-09-26 16:00:20', '0', '2016-09-26 16:00:20', '0', null, b'0');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
--  Records of `jc_sys_org`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_org` VALUES ('1', '1', '0', b'0', '1', '占位符', null, '13920888888', 'realtest@google.com', '8', '', '0', null, b'1', b'0', '1', null, '2016-08-30 15:26:54', '1', '2016-08-30 15:26:54', '1', null, null), ('2', '3', '1', b'0', '1', 'ROOT', null, '13920888888', 'realtest@google.com', '8', '1', '1', null, b'1', b'1', '1', '1', '2016-08-30 15:33:36', '1', '2016-08-30 15:33:36', '1', '1', null), ('3', '2', '1.001', b'0', '2', '中国肿瘤临床试验稽查协作组', '测试1', '13920888888', 'realtest@google.com', '9', '0', '100', null, b'1', b'0', '1', null, '2016-08-30 15:34:44', '1', '2016-10-01 09:45:43', '6', null, null), ('4', '4', '1.002', b'0', '2', '中国测试协作组', 'aaaaa', '1392-088-8881', 'realtest@google.com', '9', '', '999', null, b'1', b'0', '1', null, '2016-09-03 11:21:07', '1', '2016-10-07 16:04:14', '6', null, null), ('5', '5', '1.003', b'0', '2', '药品一致性稽查协作组', null, '13920888888', 'realtest@google.com', '9', '', '200', null, b'1', b'0', '1', null, '2016-09-03 11:32:36', '1', '2016-09-03 11:32:36', '1', null, null), ('6', '6', '1.002.001', b'0', '4', '测试协作组——管理员组', null, '13920888888', 'realtest@google.com', '1', '', '0', null, b'1', b'0', '1', null, '2016-09-03 11:33:36', '1', '2016-09-03 11:33:36', '1', null, null), ('30', '2', '1.001.001', b'0', '3', '秘书处', '刘备南3', '1392-088-8888', 'realtest@google.com', '1', null, '200', b'0', b'1', b'0', '1', '', '2016-09-04 16:50:15', '6', '2016-10-07 22:19:52', '116', '', null), ('31', '2', '1.004', b'0', '2', '测试专用', '测试员1', '1382-088-8888', 'a@b.com', '0', null, null, b'0', b'1', b'0', '1', '', '2016-10-07 13:34:00', '6', '2016-10-09 04:40:26', '6', '', null), ('35', null, '1.004.001', b'0', '31', 'test1_2', 'test1_2', '1111-111-1111', 'a@b', '0', null, null, b'0', b'1', b'0', '1', '', '2016-10-07 15:58:49', '6', '2016-10-12 10:02:52', '6', '', null), ('36', null, '1.004.002', b'1', '31', 'test22', 'test22', '1111-111-1111', 'a@b', '0', null, null, b'0', b'1', b'0', '1', '', '2016-10-07 15:59:41', '6', '2016-10-09 05:24:00', '6', '', null), ('37', null, '1.004.003', b'1', '31', '33333', '3333', '3333-333-3333', '3@3', '0', null, null, null, b'1', null, '0', '', '2016-10-09 04:40:55', '6', '2016-10-09 04:54:56', '6', '', null), ('38', null, '1.004.004', b'1', '31', 'test22', 'test222', '2222-222-2222', 'a@a', '0', null, null, null, b'1', null, '0', '', '2016-10-09 05:34:11', '6', '2016-10-09 05:49:59', '6', '', null), ('39', null, '1.004.005', b'1', '31', '444444', '4444444444', '4444-444-4444', '44@4', '0', null, null, null, b'1', null, '0', '', '2016-10-09 05:50:24', '6', '2016-10-09 08:51:31', '6', '', null), ('40', null, '1.004.006', b'1', '31', 'test4444', 'test444', '1111-111-1111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-09 08:51:19', '6', '2016-10-09 08:51:19', '6', '', null), ('41', null, '1.004.007', b'1', '31', 'test5555', 'test5555', '2222-222-2222', 'test5555@a', '0', null, null, null, b'1', null, '0', '', '2016-10-09 08:59:23', '6', '2016-10-09 08:59:52', '6', '', null), ('42', null, '1.004.008', b'0', '31', 'test5_a1234', '测试5_a1234', '1111-111-1111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:03:34', '6', '2016-10-12 11:10:50', '6', '', null), ('44', null, '1.004.010', b'1', '31', 'test5_c2', 'test5_c2', '1234-567-8999', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:19:52', '6', '2016-10-12 10:20:12', '6', '', null), ('45', null, '1.004.010', b'0', '31', 'test2_a_哈哈2', '测试人1', '1111-111-1111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:37:03', '6', '2016-10-12 10:37:12', '6', '', null), ('46', null, '1.001.001.001', b'0', '30', '秘书一处', '测试2', '1111-111-1111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:38:08', '116', '2016-10-12 10:38:39', '116', '', null), ('47', null, '1.001.001.002', b'1', '30', 'aaa a', '123123', '1111-111-1111', 'a@B', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:39:10', '116', '2016-10-12 10:39:10', '116', '', null), ('48', null, '1.004.008.001', b'0', '42', 'test5_c3', 'test5_c3', '1111-111-1111', 'a@b', '0', null, null, null, b'1', null, '0', '', '2016-10-12 10:49:39', '6', '2016-10-12 10:51:40', '6', '', null);
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
  `F_DELETED` bit(1) DEFAULT b'0',
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL,
  `STATUS` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
--  Records of `jc_sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_role` VALUES ('1', '测试角色1', '1', '1', '2,100,106', 'test,test2', '2016-10-10 15:50:17', null, null, null, '3', b'0', null, '1'), ('2', '测试角色2', '1', '1', null, null, '2016-10-10 15:50:17', null, null, null, '3', b'0', null, '1'), ('3', '测试角色3', '1', '1', null, null, '2016-10-10 15:50:18', null, null, null, '3', b'0', null, '1'), ('4', '测试角色4', '1', '1', null, null, '2016-10-10 15:50:19', null, null, null, '3', b'0', null, '1'), ('5', '测试角色5c', '1', '1', null, null, '2016-10-10 15:50:19', null, '2016-10-09 06:24:48', '6', '31', b'0', null, '1'), ('6', '超级管理员', '1', '1', null, 'Org-r,Org-c', '2016-10-10 15:50:20', null, null, null, '3', b'0', null, '1'), ('7', '秘书处处长', '1', '1', '2,100,102,103,104,107,108,110', 'Org-r,Org-c', '2016-10-10 15:50:20', null, null, null, '30', b'0', null, '1'), ('8', 'aaa', null, null, null, null, '2016-10-10 15:50:21', '6', '2016-10-09 06:25:23', '6', null, b'0', '', '1'), ('9', 'aaaa', null, null, null, null, '2016-10-10 15:50:21', '6', '2016-10-09 07:02:53', '6', null, b'0', '', '1'), ('10', 'test1', null, null, null, null, '2016-10-10 15:50:22', '6', '2016-10-09 08:45:42', '6', '31', b'0', '', '1'), ('11', 'test2', null, null, null, null, '2016-10-10 15:50:22', '6', '2016-10-09 08:47:08', '6', '31', b'0', '', '1'), ('12', 'test3', null, null, null, null, '2016-10-10 15:50:23', '6', '2016-10-09 08:48:22', '6', '31', b'0', '', '1'), ('13', 'test4', null, null, null, null, '2016-10-10 15:50:23', '6', '2016-10-09 09:00:20', '6', '31', null, '', '1'), ('14', 'test555', null, null, null, null, '2016-10-10 15:50:25', '6', '2016-10-09 09:23:52', '6', '31', b'0', '', '1');
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
  `ORGID` varchar(64) DEFAULT NULL COMMENT '所属主部门流水号',
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
  `ORGCASID` varchar(255) DEFAULT NULL COMMENT '所属部门节点语义ID',
  `F_DELETED` bit(1) DEFAULT b'0' COMMENT '逻辑删除标识',
  `USERSALT` varchar(255) DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATERID` bigint(64) DEFAULT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user` VALUES ('1', null, null, 'test_1', '$2a$10$i07EXDvszCW1dDRhwjcOA.fq35YMd11R2Ymm.OpEYH0uKauv/dMdu', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('2', null, null, 'test_2', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('3', null, null, 'test_3', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('4', null, null, 'test_4', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('6', '3', '2', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, null, null, null, '2016-01-01 08:08:08', null, null), ('7', null, null, 'test_5', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('8', null, null, 'test_6', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('9', null, null, 'test_7', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('10', null, null, 'test_8', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('11', null, null, 'test_9', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('12', null, null, 'test_10', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('13', null, null, 'test_11', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('14', null, null, 'test_12', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('15', null, null, 'test_13', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('16', null, null, 'test_14', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('17', null, null, 'test_15', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('18', null, null, 'test_16', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('19', null, null, 'test_17', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('20', null, null, 'test_18', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('21', null, null, 'test_19', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('22', null, null, 'test_20', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('23', null, null, 'test_21', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('24', null, null, 'test_22', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('25', null, null, 'test_23', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('26', null, null, 'test_24', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('27', null, null, 'test_25', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('28', null, null, 'test_26', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('29', null, null, 'test_27', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('30', null, null, 'test_28', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('31', null, null, 'test_29', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('32', null, null, 'test_30', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('33', null, null, 'test_31', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('34', null, null, 'test_32', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('35', null, null, 'test_33', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('36', null, null, 'test_34', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('37', null, null, 'test_35', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('38', null, null, 'test_36', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('39', null, null, 'test_37', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('40', null, null, 'test_38', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('41', null, null, 'test_39', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('42', null, null, 'test_40', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('43', null, null, 'test_41', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('44', null, null, 'test_42', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('45', null, null, 'test_43', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('46', null, null, 'test_44', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('47', null, null, 'test_45', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('48', null, null, 'test_46', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('49', null, null, 'test_47', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('50', null, null, 'test_48', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('51', null, null, 'test_49', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('52', null, null, 'test_50', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('53', null, null, 'test_51', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('54', null, null, 'test_52', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('55', null, null, 'test_53', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('56', null, null, 'test_54', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('57', null, null, 'test_55', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('58', null, null, 'test_56', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('59', null, null, 'test_57', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('60', null, null, 'test_58', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('61', null, null, 'test_59', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('62', null, null, 'test_60', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('63', null, null, 'test_61', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('64', null, null, 'test_62', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('65', null, null, 'test_63', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('66', null, null, 'test_64', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('67', null, null, 'test_65', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('68', null, null, 'test_66', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('69', null, null, 'test_67', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('70', null, null, 'test_68', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('71', null, null, 'test_69', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('72', null, null, 'test_70', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('73', null, null, 'test_71', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('74', null, null, 'test_72', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('75', null, null, 'test_73', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('76', null, null, 'test_74', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('77', null, null, 'test_75', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('78', null, null, 'test_76', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('79', null, null, 'test_77', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('80', null, null, 'test_78', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('81', null, null, 'test_79', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('82', null, null, 'test_80', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('83', null, null, 'test_81', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('84', null, null, 'test_82', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('85', null, null, 'test_83', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('86', null, null, 'test_84', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('87', null, null, 'test_85', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('88', null, null, 'test_86', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('89', null, null, 'test_87', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('90', null, null, 'test_88', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('91', null, null, 'test_89', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('92', null, null, 'test_90', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('93', null, null, 'test_91', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('94', null, null, 'test_92', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('95', null, null, 'test_93', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('96', null, null, 'test_94', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('97', null, null, 'test_95', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('98', null, null, 'test_96', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('99', null, null, 'test_97', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('100', null, null, 'test_98', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('101', null, null, 'test_99', '12345678', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, '', b'0', null, '2016-01-01 08:08:08', null, null), ('126', null, null, 'a2', 'aaa', '222', '1', '0', 'testonly@realaicy.com', null, '1', '1', '2016-08-27 18:23:33', '6', '', b'0', null, '2016-10-01 10:46:03', '6', null), ('127', null, null, 'a', '$2a$10$wWmrSNuHUY7eKI5lPhe7.eY6IdGc8TZ19P4FoT1rgj4jnYc4UlKim', 'aaaaa', '1', '0', '', null, '1', '1', '2016-08-27 18:34:21', '6', '', b'0', null, '2016-10-07 12:57:57', '6', null), ('130', null, null, 'b', '$2a$10$B96TColbQ7ic3xCLiwIJseQxO4dh2x5acCDrV8DVykQ1uitUuu7TK', 'bbb', '1', '0', 'testonly@realaicy.com', null, '1', '1', '2016-08-27 19:20:22', '6', '', b'0', null, null, null, null), ('131', null, null, 'c', '$2a$10$F.BmFJwNpWiIOEZOmmmV3u9w.GxLGzzygkvKVe0vi5Rz.CoJy22fi', 'c', '1', '0', '', null, '1', '1', '2016-08-27 20:08:06', '6', '', b'0', null, null, null, null), ('132', null, null, 'c2', '$2a$10$YoNMiTrmcKgWOvVuyjJpnOZDKMzxi/O6y6LClArGSseIuXNP1MkCy', 'c2', '1', '0', '', null, '1', '1', '2016-08-27 20:09:54', '6', '', b'0', null, null, null, null), ('133', null, null, 'c3', '$2a$10$R/d2gU7F/ZNgAWsc2x8KkeMdJYEU7qFUUCnv4YD4B5S4jgXl7I7Ay', 'c2', '1', '0', '', null, '1', '1', '2016-08-27 20:12:07', '6', '', b'0', null, null, null, null), ('134', null, null, 'c4', '$2a$10$oUkQMZNYSEYtP50AgPuh/u.kN3ilDnVWT6r5SUBU2gACeR4m92z1W', 'c5', '1', '0', '', null, '1', '1', '2016-08-27 20:12:17', '6', '', b'0', null, '2016-08-28 10:32:00', '6', null), ('136', null, null, 'a3', '$2a$10$swYLDj3sPRJsRleu6k3DO.H/2IrA4.Ca5.pK5Rkc862xh1HLElKM2', 'a333', '1', '0', '', null, '0', '0', '2016-08-28 10:18:56', '6', null, b'0', null, '2016-08-28 10:22:14', '6', null), ('137', null, null, 'e1', '$2a$10$uaQ4wGyOK1na8dLfXiIXsOpNE/qS35W5TSaDLmxTW0KiUkLzQvWji', 'e', '1', '0', '', null, '0', '0', '2016-08-28 21:21:25', '6', null, b'0', null, '2016-08-28 21:21:25', '6', null), ('138', null, null, 'e2', '$2a$10$d5wWZBMiE0RZLUst74bW..630uPcY6sqJPzt29sBPfxCa9lXg5fOO', 'e', '1', '0', '', null, '0', '0', '2016-08-28 21:23:28', '6', null, b'0', null, '2016-08-28 21:23:28', '6', null), ('140', null, null, 'e3', '$2a$10$T1gaLTkkpHtrf3J9tOYFq.ssyg.V0HouwoQPXkAPJAIfYo7kJC1v.', 'e', '1', '0', '', null, '0', '0', '2016-08-28 21:36:19', '6', null, b'0', null, '2016-08-28 21:36:19', '6', null), ('141', null, null, 'e4', '$2a$10$TCja1JRN4Dop/eYag2fi9uSP5eKkW1eTcyQDhoAnA9iANwi406Uxe', 'e', '1', '0', '', null, '0', '0', '2016-08-28 21:47:26', '6', null, b'0', null, '2016-08-28 21:47:26', '6', null), ('142', null, null, 'e5', '$2a$10$W90uvw8iDdV5i6IOY2H72uF6xVk5MtQ4BYwjj4NspT2eoKjlNwWEe', 'e', '1', '0', '', 'http://127.0.0.1:32002/tmp/upload/tmp/realfile_1472392147675', '0', '0', '2016-08-28 21:49:19', '6', null, b'0', null, '2016-08-28 21:49:19', '6', null), ('143', null, null, 'new1', '$2a$10$RKxRdpVukMQ3aAGIa978Xumfl961eYo/KT8StcG6Ym2JeaVi2bLZ.', 'new11', '1', '0', '', 'http://127.0.0.1:32002/tmp/upload/tmp/realfile_1472406598960', '0', '0', '2016-08-29 01:52:09', '6', null, b'0', null, '2016-08-29 02:01:01', '6', null), ('144', null, null, 'new2', '$2a$10$m9iC.PeDOkh1v6WNk51YXOTJfZ/qeZELL01KOcEx1w83XEKfEJFTK', 'new22', '1', '0', '', '', '0', '0', '2016-08-29 02:01:29', '6', null, b'0', null, '2016-08-29 02:01:45', '6', null), ('145', null, null, 'testz', '$2a$10$x1GBxYHBxkJzISFZFDYrx.MGwSGyzJjQEow.mzIxtiwP5qLOQ0E3S', 'testz', '1', '0', 'realaicy@1.com', '', '0', '0', '2016-09-04 19:44:51', '6', null, b'0', null, '2016-09-04 19:44:51', '6', null), ('146', '2', '30', 'wym', '$2a$10$FZV9Z7OAuzjM9nwzSe.cWOkddVwa2Niubp776/4jtSVJDpKUoPq5O', '测试秘书长', '2', '0', 'wym@126.com', '', '0', '0', '2016-09-25 22:06:41', '6', null, b'0', null, '2016-09-25 22:06:41', '6', null);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
--  Records of `jc_sys_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user_role` VALUES ('1', '4', '4', null, null, null, null), ('15', '5', '3', null, null, null, null), ('16', '5', '4', null, null, null, null), ('17', '5', '5', null, null, null, null), ('18', '5', '2', null, null, null, null), ('19', '6', '6', null, null, null, null), ('20', '116', '1', null, null, null, null), ('21', '116', '7', null, null, null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
--  Records of `jc_sys_user_sec`
-- ----------------------------
BEGIN;
INSERT INTO `jc_sys_user_sec` VALUES ('1', null, null, 'test_1', '$2a$10$i07EXDvszCW1dDRhwjcOA.fq35YMd11R2Ymm.OpEYH0uKauv/dMdu', '刘旭东', '1', '1', '1', '1', null, null, null, null, b'0', null, '1'), ('6', '3', '2', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', '1', '1', '1', null, null, null, null, b'0', null, '1'), ('102', null, null, 'b', '$2a$10$B96TColbQ7ic3xCLiwIJseQxO4dh2x5acCDrV8DVykQ1uitUuu7TK', 'bbb', '1', '1', '1', '1', '2016-08-27 19:20:22', '6', null, null, b'0', null, '1'), ('103', null, null, 'c', '$2a$10$F.BmFJwNpWiIOEZOmmmV3u9w.GxLGzzygkvKVe0vi5Rz.CoJy22fi', 'c', '1', '1', '1', '1', '2016-08-27 20:08:06', '6', null, null, b'0', null, '1'), ('104', null, null, 'c2', '$2a$10$YoNMiTrmcKgWOvVuyjJpnOZDKMzxi/O6y6LClArGSseIuXNP1MkCy', 'c2', '1', '1', '1', '1', '2016-08-27 20:09:54', '6', null, null, b'0', null, '1'), ('105', null, null, 'c3', '$2a$10$R/d2gU7F/ZNgAWsc2x8KkeMdJYEU7qFUUCnv4YD4B5S4jgXl7I7Ay', 'c2', '1', '1', '1', '1', '2016-08-27 20:12:07', '6', null, null, b'0', null, '1'), ('106', null, null, 'c4', '$2a$10$oUkQMZNYSEYtP50AgPuh/u.kN3ilDnVWT6r5SUBU2gACeR4m92z1W', 'c4', '1', '1', '1', '1', '2016-08-27 20:12:17', '6', null, null, b'0', null, '1'), ('107', null, null, 'a3', '$2a$10$swYLDj3sPRJsRleu6k3DO.H/2IrA4.Ca5.pK5Rkc862xh1HLElKM2', 'a3', '1', '1', '1', '1', '2016-08-28 10:18:56', '6', '2016-08-28 10:18:56', '6', b'0', null, '1'), ('108', null, null, 'e1', '$2a$10$uaQ4wGyOK1na8dLfXiIXsOpNE/qS35W5TSaDLmxTW0KiUkLzQvWji', 'e', '1', '1', '1', '1', '2016-08-28 21:21:25', '6', '2016-08-28 21:21:25', '6', b'0', null, '1'), ('109', null, null, 'e2', '$2a$10$d5wWZBMiE0RZLUst74bW..630uPcY6sqJPzt29sBPfxCa9lXg5fOO', 'e', '1', '1', '1', '1', '2016-08-28 21:23:28', '6', '2016-08-28 21:23:28', '6', b'0', null, '1'), ('110', null, null, 'e3', '$2a$10$T1gaLTkkpHtrf3J9tOYFq.ssyg.V0HouwoQPXkAPJAIfYo7kJC1v.', 'e', '1', '1', '1', '1', '2016-08-28 21:36:19', '6', '2016-08-28 21:36:19', '6', b'0', null, '1'), ('111', null, null, 'e4', '$2a$10$TCja1JRN4Dop/eYag2fi9uSP5eKkW1eTcyQDhoAnA9iANwi406Uxe', 'e', '1', '1', '1', '1', '2016-08-28 21:47:26', '6', '2016-08-28 21:47:26', '6', b'0', null, '1'), ('112', null, null, 'e5', '$2a$10$W90uvw8iDdV5i6IOY2H72uF6xVk5MtQ4BYwjj4NspT2eoKjlNwWEe', 'e', '1', '1', '1', '1', '2016-08-28 21:49:19', '6', '2016-08-28 21:49:19', '6', b'0', null, '1'), ('113', null, null, 'new1', '$2a$10$RKxRdpVukMQ3aAGIa978Xumfl961eYo/KT8StcG6Ym2JeaVi2bLZ.', 'new1', '1', '1', '1', '1', '2016-08-29 01:52:09', '6', '2016-08-29 01:52:09', '6', b'0', null, '1'), ('114', null, null, 'new2', '$2a$10$m9iC.PeDOkh1v6WNk51YXOTJfZ/qeZELL01KOcEx1w83XEKfEJFTK', 'new2', '1', '1', '1', '1', '2016-08-29 02:01:29', '6', '2016-08-29 02:01:29', '6', b'0', null, '1'), ('115', null, null, 'testz', '$2a$10$x1GBxYHBxkJzISFZFDYrx.MGwSGyzJjQEow.mzIxtiwP5qLOQ0E3S', 'testz', '1', '1', '1', '1', '2016-09-04 19:44:51', '6', '2016-09-04 19:44:51', '6', b'0', null, '1'), ('116', '2', '30', 'wym', '$2a$10$FZV9Z7OAuzjM9nwzSe.cWOkddVwa2Niubp776/4jtSVJDpKUoPq5O', '测试秘书长', '1', '1', '1', '1', '2016-09-25 22:06:41', '6', '2016-09-25 22:06:41', '6', b'0', null, '1');
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
