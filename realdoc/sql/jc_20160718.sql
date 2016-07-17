/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : jc

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-07-18 06:55:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `abs_chk_item`
-- ----------------------------
DROP TABLE IF EXISTS `abs_chk_item`;
CREATE TABLE `abs_chk_item` (
  `ID` bigint(20) NOT NULL,
  `PID` bigint(20) DEFAULT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT '1',
  `ICON` smallint(255) DEFAULT NULL,
  `WEIGHT` smallint(6) DEFAULT NULL,
  `IS_SHOW` tinyint(255) DEFAULT '1',
  `is_leaf_` varchar(255) DEFAULT NULL,
  `is_auto_expand_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of abs_chk_item
-- ----------------------------
INSERT INTO `abs_chk_item` VALUES ('1', '0', '药品生产质量管理规范', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11', '1', '总则', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12', '1', '质量管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13', '1', '机构与人员', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14', '1', '厂房与设施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15', '1', '设备', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16', '1', '物料与产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17', '1', '确认与验证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18', '1', '文件管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19', '1', '生产管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110', '1', '质量控制与质量保证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111', '1', '委托生产与委托检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112', '1', '产品发运与召回', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('113', '1', '自检', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('114', '11', '企业应当严格执行本规范，坚持诚实守信，禁止任何虚假、欺骗行为', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('125', '12', '企业应当建立符合药品质量管理要求的质量目标', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('126', '12', '企业高层管理人员应当确保实现既定的质量目标，不同层次的人员以及供应商、经销商应当共同参与并承担各自的责任', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('127', '12', '企业应当配备足够的、符合要求的人员、厂房、设施和设备，为实现质量目标提供必要的条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('128', '12', '质量保证是质量管理体系的一部分', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('129', '12', '质量保证系统应当确保：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1121', '112', '该体系应当涵盖影响药品质量的所有因素，包括确保药品质量符合预定用途的有组织、有计划的全部活动', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1131', '113', '旨在最大限度地降低药品生产过程中污染、交叉污染以及混淆、差错等风险，确保持续稳定地生产出符合预定用途和注册要求的药品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1210', '12', '药品生产质量管理的基本要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1211', '12', '质量控制包括相应的组织机构、文件系统以及取样、检验等，确保物料或产品在放行前完成必要的检验，确认其质量符合要求;', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1212', '12', '质量控制的基本要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1213', '12', '质量风险管理是在整个产品生命周期中采用前瞻或回顾的方式，对质量风险进行评估、控制、沟通、审核的系统过程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1214', '12', '应当根据科学知识及经验对质量风险进行评估，以保证产品质量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1215', '12', '质量风险管理过程所采用的方法、措施、形式及形成的文件应当与存在风险的级别相适应', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1251', '125', '将药品注册的有关安全、有效和质量可控的所有要求，系统地贯彻到药品生产、控制及产品放行、贮存、发运的全过程中', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1252', '125', '确保所生产的药品符合预定用途和注册要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1281', '128', '企业必须建立质量保证系统，同时建立完整的文件体系，以保证系统有效运行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1291', '129', '药品的设计与研发体现本规范的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1292', '129', '生产管理和质量控制活动符合本规范的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1293', '129', '管理职责明确', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1294', '129', '采购和使用的原辅料和包装材料正确无误', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1295', '129', '中间产品得到有效控制', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1296', '129', '确认、验证的实施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1297', '129', '严格按照规程进行生产、检查、检验和复核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1298', '129', '每批产品经质量受权人批准后方可放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1299', '129', '在贮存、发运和随后的各种操作过程中有保证药品质量的适当措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1316', '13', '企业应当建立与药品生产相适应的管理机构，并有组织机构图;', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1317', '13', '质量管理部门应当参与所有与质量有关的活动，负责审核所有与本规范有关的文件；0.3.17.1质量管理部门人员不得将职责委托给其他部门的人员', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1318', '13', '企业应当配备足够数量并具有适当资质（含学历、培训和实践经验）的管理和操作人员，应当明确规定每个部门和每个岗位的职责', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1319', '13', '职责通常不得委托给他人；确需委托的，其职责可委托给具有相当资质的指定人员', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1320', '13', '关键人员应当为企业的全职人员，至少应当包括企业负责人、生产管理负责人、质量管理负责人和质量受权人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1321', '13', '企业负责人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1322', '13', '生产管理负责人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323', '13', '质量管理负责人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1324', '13', '生产管理负责人和质量管理负责人通常有下列共同的职责：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1325', '13', '质量受权人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1326', '13', '企业应当指定部门或专人负责培训管理工作，应当有经生产管理负责人或质量管理负责人审核或批准的培训方案或计划，培训记录应当予以保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1327', '13', '与药品生产、质量有关的所有人员都应当经过培训，培训的内容应当与岗位的要求相适应', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1328', '13', '高风险操作区（如：高活性、高毒性、传染性、高致敏性物料的生产区）的工作人员应当接受专门的培训', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1329', '13', '所有人员都应当接受卫生要求的培训，企业应当建立人员卫生操作规程，最大限度地降低人员对药品生产造成污染的风险', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1330', '13', '人员卫生操作规程应当包括与健康、卫生习惯及人员着装相关的内容', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1331', '13', '企业应当对人员健康进行管理，并建立健康档案', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1332', '13', '企业应当采取适当措施，避免体表有伤口、患有传染病或其他可能污染药品疾病的人员从事直接接触药品的生产', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1333', '13', '参观人员和未经培训的人员不得进入生产区和质量控制区，特殊情况确需进入的，应当事先对个人卫生、更衣等事项进行指导', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1334', '13', '任何进入生产区的人员均应当按照规定更衣', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1335', '13', '进入洁净生产区的人员不得化妆和佩带饰物', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1336', '13', '生产区、仓储区应当禁止吸烟和饮食，禁止存放食品、饮料、香烟和个人用药品等非生产用物品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1337', '13', '操作人员应当避免裸手直接接触药品、与药品直接接触的包装材料和设备表面', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1438', '14', '厂房的选址、设计、布局、建造、改造和维护必须符合药品生产要求，应当能够最大限度地避免污染、交叉污染、混淆和差错，便于清洁、操作和维护', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1439', '14', '应当根据厂房及生产防护措施综合考虑选址，厂房所处的环境应当能够最大限度地降低物料或产品遭受污染的风险', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1440', '14', '企业应当有整洁的生产环境；厂区的地面、路面及运输等不应当对药品的生产造成污染；生产、行政、生活和辅助区的总体布局应当合理，不得互相妨碍；厂区和厂房内的人、物流走向应当合理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1441', '14', '应当对厂房进行适当维护，并确保维修活动不影响药品的质量；应当按照详细的书面操作规程对厂房进行清洁或必要的消毒', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1442', '14', '厂房应当有适当的照明、温度、湿度和通风，确保生产和贮存的产品质量以及相关设备性能不会直接或间接地受到影响', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1443', '14', '厂房、设施的设计和安装应当能够有效防止昆虫或其它动物进入；应当采取必要的措施，避免所使用的灭鼠药、杀虫剂、烟熏剂等对设备、物料、产品造成污染', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1444', '14', '应当采取适当措施，防止未经批准人员的进入；生产、贮存和质量控制区不应当作为非本区工作人员的直接通道', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1445', '14', '应当保存厂房、公用设施、固定管道建造或改造后的竣工图纸', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1446', '14', '为降低污染和交叉污染的风险，厂房、生产设施和设备应当根据所生产药品的特性、工艺流程及相应洁净度级别要求合理设计、布局和使用，并符合下列要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1447', '14', '生产区和贮存区应当有足够的空间，确保有序地存放设备、物料、中间产品、待包装产品和成品，避免不同产品或物料的混淆、交叉污染，避免生产或质量控制操作发生遗漏或差错', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1448', '14', '应当根据药品品种、生产操作要求及外部环境状况等配置空调净化系统，使生产区有效通风，并有温度、湿度控制和空气净化过滤，保证药品的生产环境符合要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1449', '14', '洁净区的内表面（墙壁、地面、天棚）应当平整光滑、无裂缝、接口严密、无颗粒物脱落，避免积尘，便于有效清洁，必要时应当进行消毒', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1450', '14', '各种管道、照明设施、风口和其他公用设施的设计和安装应当避免出现不易清洁的部位，应当尽可能在生产区外部对其进行维护', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1451', '14', '排水设施应当大小适宜，并安装防止倒灌的装置；应当尽可能避免明沟排水；不可避免时，明沟宜浅，以方便清洁和消毒', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1452', '14', '制剂的原辅料称量通常应当在专门设计的称量室内进行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1453', '14', '产尘操作间（如干燥物料或产品的取样、称量、混合、包装等操作间）应当保持相对负压或采取专门的措施，防止粉尘扩散、避免交叉污染并便于清洁', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1454', '14', '用于药品包装的厂房或区域应当合理设计和布局，以避免混淆或交叉污染；如同一区域内有数条包装线，应当有隔离措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1455', '14', '生产区应当有适度的照明，目视操作区域的照明应当满足操作要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1456', '14', '生产区内可设中间控制区域，但中间控制操作不得给药品带来质量风险', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1457', '14', '仓储区应当有足够的空间，确保有序存放待验、合格、不合格、退货或召回的原辅料、包装材料、中间产品、待包装产品和成品等各类物料和产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1458', '14', '仓储区的设计和建造应当确保良好的仓储条件，并有通风和照明设施；仓储区应当能够满足物料或产品的贮存条件（如温湿度、避光）和安全贮存的要求，并进行检查和监控', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1459', '14', '高活性的物料或产品以及印刷包装材料应当贮存于安全的区域', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1460', '14', '接收、发放和发运区域应当能够保护物料、产品免受外界天气（如雨、雪）的影响；接收区的布局和设施应当能够确保到货物料在进入仓储区前可对外包装进行必要的清洁', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1461', '14', '如采用单独的隔离区域贮存待验物料，待验区应当有醒目的标识，且只限于经批准的人员出入', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1462', '14', '通常应当有单独的物料取样区；取样区的空气洁净度级别应当与生产要求一致；如在其他区域或采用其他方式取样，应当能够防止污染或交叉污染', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1463', '14', '质量控制实验室通常应当与生产区分开；生物检定、微生物和放射性同位素的实验室还应当彼此分开', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1464', '14', '实验室的设计应当确保其适用于预定的用途，并能够避免混淆和交叉污染，应当有足够的区域用于样品处置、留样和稳定性考察样品的存放以及记录的保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1465', '14', '必要时，应当设置专门的仪器室，使灵敏度高的仪器免受静电、震动、潮湿或其他外界因素的干扰', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1466', '14', '处理生物样品或放射性样品等特殊物品的实验室应当符合国家的有关要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1467', '14', '实验动物房应当与其他区域严格分开，其设计、建造应当符合国家有关规定，并设有独立的空气处理设施以及动物的专用通道', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1468', '14', '休息室的设置不应当对生产区、仓储区和质量控制区造成不良影响', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1469', '14', '更衣室和盥洗室应当方便人员进出，并与使用人数相适应；盥洗室不得与生产区和仓储区直接相通', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1470', '14', '维修间应当尽可能远离生产区；存放在洁净区内的维修用备件和工具，应当放置在专门的房间或工具柜中', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1571', '15', '设备的设计、选型、安装、改造和维护必须符合预定用途，应当尽可能降低产生污染、交叉污染、混淆和差错的风险，便于操作、清洁、维护，以及必要时进行的消毒或灭菌', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1572', '15', '应当建立设备使用、清洁、维护和维修的操作规程，并保存相应的操作记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1573', '15', '应当建立并保存设备采购、安装、确认的文件和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1574', '15', '生产设备不得对药品质量产生任何不利影响；与药品直接接触的生产设备表面应当平整、光洁、易清洗或消毒、耐腐蚀，不得与药品发生化学反应、吸附药品或向药品中释放物质', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1575', '15', '应当配备有适当量程和精度的衡器、量具、仪器和仪表', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1576', '15', '应当选择适当的清洗、清洁设备，并防止这类设备成为污染源', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1577', '15', '设备所用的润滑剂、冷却剂等不得对药品或容器造成污染，应当尽可能使用食用级或级别相当的润滑剂', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1578', '15', '生产用模具的采购、验收、保管、维护、发放及报废应当制定相应操作规程，设专人专柜保管，并有相应记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1579', '15', '设备的维护和维修不得影响产品质量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1580', '15', '应当制定设备的预防性维护计划和操作规程，设备的维护和维修应当有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1581', '15', '经改造或重大维修的设备应当进行再确认，符合要求后方可用于生产', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1582', '15', '主要生产和检验设备都应当有明确的操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1583', '15', '生产设备应当在确认的参数范围内使用', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1584', '15', '应当按照详细规定的操作规程清洁生产设备', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1585', '15', '已清洁的生产设备应当在清洁、干燥的条件下存放', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1586', '15', '用于药品生产或检验的设备和仪器，应当有使用日志，记录内容包括使用、清洁、维护和维修情况以及日期、时间、所生产及检验的药品名称、规格和批号等', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1587', '15', '生产设备应当有明显的状态标识，标明设备编号和内容物（如名称、规格、批号）；没有内容物的应当标明清洁状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1588', '15', '不合格的设备如有可能应当搬出生产和质量控制区，未搬出前，应当有醒目的状态标识', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1589', '15', '主要固定管道应当标明内容物名称和流向', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1590', '15', '应当按照操作规程和校准计划定期对生产和检验用衡器、量具、仪表、记录和控制设备以及仪器进行校准和检查，并保存相关记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1591', '15', '应当确保生产和检验使用的关键衡器、量具、仪表、记录和控制设备以及仪器经过校准，所得出的数据准确、可靠', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1592', '15', '应当使用计量标准器具进行校准，且所用计量标准器具应当符合国家有关规定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1593', '15', '衡器、量具、仪表、用于记录和控制的设备以及仪器应当有明显的标识，标明其校准有效期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1594', '15', '不得使用未经校准、超过校准有效期、失准的衡器、量具、仪表以及用于记录和控制的设备、仪器', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1595', '15', '在生产、包装、仓储过程中使用自动或电子设备的，应当按照操作规程定期进行校准和检查，确保其操作功能正常', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1596', '15', '制药用水应当适合其用途，并符合《中华人民共和国药典》的质量标准及相关要求；制药用水至少应当采用饮用水', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1597', '15', '水处理设备及其输送系统的设计、安装、运行和维护应当确保制药用水达到设定的质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1598', '15', '纯化水、注射用水储罐和输送管道所用材料应当无毒、耐腐蚀', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1599', '15', '纯化水、注射用水的制备、贮存和分配应当能够防止微生物的滋生；纯化水可采用循环，注射用水可采用70℃以上保温循环', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12101', '1210', '制定生产工艺，系统地回顾并证明其可持续稳定地生产出符合要求的产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12102', '1210', '生产工艺及其重大变更均经过验证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12103', '1210', '配备所需的资源，至少包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12104', '1210', '应当使用准确、易懂的语言制定操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12105', '1210', '操作人员经过培训，能够按照操作规程正确操作', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12106', '1210', '生产全过程应当有记录，偏差均经过调查并记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12107', '1210', '批记录和发运记录应当能够追溯批产品的完整历史，并妥善保存、便于查阅', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12108', '1210', '降低药品发运过程中的质量风险', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12109', '1210', '建立药品召回系统，确保能够召回任何一批已发运销售的产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12121', '1212', '应当配备适当的设施、设备、仪器和经过培训的人员，有效、可靠地完成所有质量控制的相关活动', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12122', '1212', '应当有批准的操作规程，用于原辅料、包装材料、中间产品、待包装产品和成品的取样、检查、检验以及产品的稳定性考察，必要时进行环境监测，以确保符合本规范的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12123', '1212', '由经授权的人员按照规定的方法对原辅料、包装材料、中间产品、待包装产品和成品取样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12124', '1212', '检验方法应当经过验证或确认', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12125', '1212', '取样、检查、检验应当有记录，偏差应当经过调查并记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12126', '1212', '物料、中间产品、待包装产品和成品必须按照质量标准进行检查和检验，并有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12127', '1212', '物料和最终包装的成品应当有足够的留样，以备必要的检查或检验；除最终包装容器过大的成品外，成品的留样包装应当与最终包装相同', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('12910', '129', '按照自检操作规程，定期检查评估质量保证系统的有效性和适用性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13161', '1316', '企业应当设立独立的质量管理部门，履行质量保证和质量控制的职责;', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13162', '1316', '质量管理部门可以分别设立质量保证部门和质量控制部门', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13181', '1318', '岗位职责不得遗漏，交叉的职责应当有明确规定；每个人所承担的职责不应当过多', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13182', '1318', '所有人员应当明确并理解自己的职责，熟悉与其职责相关的要求，并接受必要的培训，包括上岗前培训和继续培训', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13201', '1320', '质量管理负责人和生产管理负责人不得互相兼任', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13202', '1320', '质量管理负责人和质量受权人可以兼任', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13203', '1320', '应当制定操作规程确保质量受权人独立履行职责，不受企业负责人和其他人员的干扰', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13211', '1321', '企业负责人是药品质量的主要责任人，全面负责企业日常管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13212', '1321', '为确保企业实现质量目标并按照本规范要求生产药品，企业负责人应当负责提供必要的资源，合理计划、组织和协调，保证质量管理部门独立履行其职责', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13221', '1322', '资质：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13222', '1322', '生产管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少三年从事药品生产和质量管理的实践经验，其中至少有一年的药品生产管理经验，接受过与所生产产品相关的专业知识培训', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13223', '1322', '主要职责：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13231', '1323', '资质：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13232', '1323', '主要职责：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13241', '1324', '审核和批准产品的工艺规程、操作规程等文件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13242', '1324', '监督厂区卫生状况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13243', '1324', '确保关键设备经过确认', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13244', '1324', '确保完成生产工艺验证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13245', '1324', '确保企业所有相关人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13246', '1324', '批准并监督委托生产', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13247', '1324', '确定和监控物料和产品的贮存条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13248', '1324', '保存记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13249', '1324', '监督本规范执行状况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13251', '1325', '资质：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13252', '1325', '主要职责：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13271', '1327', '除进行本规范理论和实践的培训外，还应当有相关法规、相应岗位的职责、技能的培训，并定期评估培训的实际效果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13301', '1330', '生产区和质量控制区的人员应当正确理解相关的人员卫生操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13302', '1330', '企业应当采取措施确保人员卫生操作规程的执行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13311', '1331', '直接接触药品的生产人员上岗前应当接受健康检查，以后每年至少进行一次健康检查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('13341', '1334', '工作服的选材、式样及穿戴方式应当与所从事的工作和空气洁净度级别要求相适应', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14461', '1446', '应当综合考虑药品的特性、工艺和预定用途等因素，确定厂房、生产设施和设备多产品共用的可行性，并有相应评估报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14462', '1446', '生产特殊性质的药品，如高致敏性药品（如青霉素类）或生物制品（如卡介苗或其他用活性微生物制备而成的药品），必须采用专用和独立的厂房、生产设施和设备；青霉素类药品产尘量大的操作区域应当保持相对负压，排至室外的废气应当经过净化处理并符合要求，排风口应当远离其他空气净化系统的进风口', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14463', '1446', '生产β-内酰胺结构类药品、性激素类避孕药品必须使用专用设施（如独立的空气净化系统）和设备，并与其他药品生产区严格分开', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14464', '1446', '生产某些激素类、细胞毒性类、高活性化学药品应当使用专用设施（如独立的空气净化系统）和设备；特殊情况下，如采取特别防护措施并经过必要的验证，上述药品制剂则可通过阶段性生产方式共用同一生产设施和设备', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14465', '1446', '用于上述第（二）、（三）、（四）项的空气净化系统，其排风应当经过净化处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14466', '1446', '药品生产厂房不得用于生产对药品质量有不利影响的非药用产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14481', '1448', '洁净区与非洁净区之间、不同级别洁净区之间的压差应当不低于10帕斯卡；必要时，相同洁净度级别的不同功能区域（操作间）之间也应当保持适当的压差梯度', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14482', '1448', '口服液体和固体制剂、腔道用药（含直肠用药）、表皮外用药品等非无菌制剂生产的暴露工序区域及其直接接触药品的包装材料最终处理的暴露工序区域，应当参照“无菌药品”附录中D级洁净区的要求设置，企业可根据产品的标准和特性对该区域采取适当的微生物监控措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14611', '1461', '不合格、退货或召回的物料或产品应当隔离存放', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('14612', '1461', '如果采用其他方法替代物理隔离，则该方法应当具有同等的安全性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15100', '15', '应当对制药用水及原水的水质进行定期监测，并有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15101', '15', '应当按照操作规程对纯化水、注射用水管道进行清洗消毒，并有相关记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15841', '1584', '生产设备清洁的操作规程应当规定具体而完整的清洁方法、清洁用设备或工具、清洁剂的名称和配制方法、去除前一批次标识的方法、保护已清洁设备在使用前免受污染的方法、已清洁设备最长的保存时限、使用前检查设备清洁状况的方法，使操作者能以可重现的、有效的方式对各类设备进行清洁', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15842', '1584', '如需拆装设备，还应当规定设备拆装的顺序和方法；如需对设备消毒或灭菌，还应当规定消毒或灭菌的具体方法、消毒剂的名称和配制方法；必要时，还应当规定设备生产结束至清洁前所允许的最长间隔时限', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15891', '1589', '校准的量程范围应当涵盖实际生产和检验的使用范围', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15921', '1592', '校准记录应当标明所用计量标准器具的名称、编号、校准有效期和计量合格证明编号，确保记录的可追溯性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15951', '1595', '校准和检查应当有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15971', '1597', '水处理设备的运行不得超出其设计能力', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15981', '1598', '储罐的通气口应当安装不脱落纤维的疏水性除菌滤器', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('15982', '1598', '管道的设计和安装应当避免死角、盲管', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16102', '16', '药品生产所用的原辅料、与药品直接接触的包装材料应当符合相应的质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16103', '16', '应当建立物料和产品的操作规程，确保物料和产品的正确接收、贮存、发放、使用和发运，防止污染、交叉污染、混淆和差错', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16104', '16', '物料供应商的确定及变更应当进行质量评估，并经质量管理部门批准后方可采购', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16105', '16', '物料和产品的运输应当能够满足其保证质量的要求，对运输有特殊要求的，其运输条件应当予以确认', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16106', '16', '原辅料、与药品直接接触的包装材料和印刷包装材料的接收应当有操作规程，所有到货物料均应当检查，以确保与订单一致，并确认供应商已经质量管理部门批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16107', '16', '物料接收和成品生产后应当及时按照待验管理，直至放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16108', '16', '物料和产品应当根据其性质有序分批贮存和周转，发放及发运应当符合先进先出和近效期先出的原则', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16109', '16', '使用计算机化仓储管理的，应当有相应的操作规程，防止因系统故障、停机等特殊情况而造成物料和产品的混淆和差错', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16110', '16', '应当制定相应的操作规程，采取核对或检验等适当措施，确认每一包装内的原辅料正确无误', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16111', '16', '次接收数个批次的物料，应当按批取样、检验、放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16112', '16', '仓储区内的原辅料应当有适当的标识，并至少标明下述内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16113', '16', '只有经质量管理部门批准放行并在有效期或复验期内的原辅料方可使用', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16114', '16', '原辅料应当按照有效期或复验期贮存；贮存期内，如发现对质量有不良影响的特殊情况，应当进行复验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16115', '16', '应当由指定人员按照操作规程进行配料，核对物料后，精确称量或计量，并作好标识', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16116', '16', '配制的每一物料及其重量或体积应当由他人独立进行复核，并有复核记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16117', '16', '用于同一批药品生产的所有配料应当集中存放，并作好标识', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16118', '16', '中间产品和待包装产品应当在适当的条件下贮存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16119', '16', '中间产品和待包装产品应当有明确的标识，并至少标明下述内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16120', '16', '与药品直接接触的包装材料和印刷包装材料的管理和控制要求与原辅料相同', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16121', '16', '包装材料应当由专人按照操作规程发放，并采取措施避免混淆和差错，确保用于药品生产的包装材料正确无误', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16122', '16', '应当建立印刷包装材料设计、审核、批准的操作规程，确保印刷包装材料印制的内容与药品监督管理部门核准的一致，并建立专门的文档，保存经签名批准的印刷包装材料原版实样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16123', '16', '印刷包装材料的版本变更时，应当采取措施，确保产品所用印刷包装材料的版本正确无误；宜收回作废的旧版印刷模版并予以销毁', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16124', '16', '印刷包装材料应当设置专门区域妥善存放，未经批准人员不得进入；切割式标签或其他散装印刷包装材料应当分别置于密闭容器内储运，以防混淆', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16125', '16', '印刷包装材料应当由专人保管，并按照操作规程和需求量发放', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16126', '16', '每批或每次发放的与药品直接接触的包装材料或印刷包装材料，均应当有识别标志，标明所用产品的名称和批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16127', '16', '过期或废弃的印刷包装材料应当予以销毁并记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16128', '16', '成品放行前应当待验贮存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16129', '16', '成品的贮存条件应当符合药品注册批准的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16130', '16', '麻醉药品、精神药品、医疗用毒性药品（包括药材）、放射性药品、药品类易制毒化学品及易燃、易爆和其他危险品的验收、贮存、管理应当执行国家有关的规定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16131', '16', '不合格的物料、中间产品、待包装产品和成品的每个包装容器上均应当有清晰醒目的标志，并在隔离区内妥善保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16132', '16', '不合格的物料、中间产品、待包装产品和成品的处理应当经质量管理负责人批准，并有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16133', '16', '产品回收需经预先批准，并对相关的质量风险进行充分评估，根据评估结论决定是否回收；回收应当按照预定的操作规程进行，并有相应记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16134', '16', '制剂产品不得进行重新加工；不合格的制剂中间产品、待包装产品和成品一般不得进行返工', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16135', '16', '对返工或重新加工或回收合并后生产的成品，质量管理部门应当考虑需要进行额外相关项目的检验和稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16136', '16', '企业应当建立药品退货的操作规程，并有相应的记录，内容至少应当包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('16137', '16', '只有经检查、检验和调查，有证据证明退货质量未受影响，且经质量管理部门根据操作规程评价后，方可考虑将退货重新包装、重新发运销售', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17138', '17', '企业应当确定需要进行的确认或验证工作，以证明有关操作的关键要素能够得到有效控制；确认或验证的范围和程度应当经过风险评估来确定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17139', '17', '企业的厂房、设施、设备和检验仪器应当经过确认，应当采用经过验证的生产工艺、操作规程和检验方法进行生产、操作和检验，并保持持续的验证状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17140', '17', '应当建立确认与验证的文件和记录，并能以文件和记录证明达到以下预定的目标：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17141', '17', '采用新的生产处方或生产工艺前，应当验证其常规生产的适用性；生产工艺在使用规定的原辅料和设备条件下，应当能够始终生产出符合预定用途和注册要求的产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17142', '17', '当影响产品质量的主要因素，如原辅料、与药品直接接触的包装材料、生产设备、生产环境（或厂房）、生产工艺、检验方法等发生变更时，应当进行确认或验证；必要时，还应当经药品监督管理部门批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17143', '17', '清洁方法应当经过验证，证实其清洁的效果，以有效防止污染和交叉污染；清洁验证应当综合考虑设备使用情况、所使用的清洁剂和消毒剂、取样方法和位置以及相应的取样回收率、残留物的性质和限度、残留物检验方法的灵敏度等因素', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17144', '17', '确认和验证不是一次性的行为；首次确认或验证后，应当根据产品质量回顾分析情况进行再确认或再验证；关键的生产工艺和操作规程应当定期进行再验证，确保其能够达到预期结果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17145', '17', '企业应当制定验证总计划，以文件形式说明确认与验证工作的关键信息', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17146', '17', '验证总计划或其他相关文件中应当作出规定，确保厂房、设施、设备、检验仪器、生产工艺、操作规程和检验方法等能够保持持续稳定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17147', '17', '应当根据确认或验证的对象制定确认或验证方案，并经审核、批准；确认或验证方案应当明确职责', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17148', '17', '确认或验证应当按照预先确定和批准的方案实施，并有记录；确认或验证工作完成后，应当写出报告，并经审核、批准；确认或验证的结果和结论（包括评价和建议）应当有记录并存档', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('17149', '17', '应当根据验证的结果确认工艺规程和操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18150', '18', '文件是质量保证系统的基本要素；企业必须有内容正确的书面质量标准、生产处方和工艺规程、操作规程以及记录等文件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18151', '18', '企业应当建立文件管理的操作规程，系统地设计、制定、审核、批准和发放文件；与本规范有关的文件应当经质量管理部门的审核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18152', '18', '文件的内容应当与药品生产许可、药品注册等相关要求一致，并有助于追溯每批产品的历史情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18153', '18', '文件的起草、修订、审核、批准、替换或撤销、复制、保管和销毁等应当按照操作规程管理，并有相应的文件分发、撤销、复制、销毁记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18154', '18', '文件的起草、修订、审核、批准均应当由适当的人员签名并注明日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18155', '18', '文件应当标明题目、种类、目的以及文件编号和版本号；文字应当确切、清晰、易懂，不能模棱两可', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18156', '18', '文件应当分类存放、条理分明，便于查阅', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18157', '18', '原版文件复制时，不得产生任何差错；复制的文件应当清晰可辨', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18158', '18', '文件应当定期审核、修订；文件修订后，应当按照规定管理，防止旧版文件的误用；分发、使用的文件应当为批准的现行文本，已撤销的或旧版文件除留档备查外，不得在工作现场出现', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18159', '18', '与本规范有关的每项活动均应当有记录，以保证产品生产、质量控制和质量保证等活动可以追溯；记录应当留有填写数据的足够空格；记录应当及时填写，内容真实，字迹清晰、易读，不易擦除', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18160', '18', '应当尽可能采用生产和检验设备自动打印的记录、图谱和曲线图等，并标明产品或样品的名称、批号和记录设备的信息，操作人应当签注姓名和日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18161', '18', '记录应当保持清洁，不得撕毁和任意涂改；记录填写的任何更改都应当签注姓名和日期，并使原有信息仍清晰可辨，必要时，应当说明更改的理由；记录如需重新誊写，则原有记录不得销毁，应当作为重新誊写记录的附件保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18162', '18', '每批药品应当有批记录，包括批生产记录、批包装记录、批检验记录和药品放行审核记录等与本批产品有关的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18163', '18', '如使用电子数据处理系统、照相技术或其他可靠方式记录数据资料，应当有所用系统的操作规程；记录的准确性应当经过核对', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18164', '18', '物料和成品应当有经批准的现行质量标准；必要时，中间产品或待包装产品也应当有质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18165', '18', '物料的质量标准一般应当包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18166', '18', '外购或外销的中间产品和待包装产品应当有质量标准；如果中间产品的检验结果用于成品的质量评价，则应当制定与成品质量标准相对应的中间产品质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18167', '18', '成品的质量标准应当包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18168', '18', '每种药品的每个生产批量均应当有经企业批准的工艺规程，不同药品规格的每种包装形式均应当有各自的包装操作要求；工艺规程的制定应当以注册批准的工艺为依据', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18169', '18', '工艺规程不得任意更改；如需更改，应当按照相关的操作规程修订、审核、批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18170', '18', '制剂的工艺规程的内容至少应当包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18171', '18', '每批产品均应当有相应的批生产记录，可追溯该批产品的生产历史以及与质量有关的情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18172', '18', '批生产记录应当依据现行批准的工艺规程的相关内容制定；记录的设计应当避免填写差错；批生产记录的每一页应当标注产品的名称、规格和批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18173', '18', '原版空白的批生产记录应当经生产管理负责人和质量管理负责人审核和批准；批生产记录的复制和发放均应当按照操作规程进行控制并有记录，每批产品的生产只能发放一份原版空白批生产记录的复制件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18174', '18', '在生产过程中，进行每项操作时应当及时记录，操作结束后，应当由生产操作人员确认并签注姓名和日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18175', '18', '批生产记录的内容应当包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18176', '18', '每批产品或每批中部分产品的包装，都应当有批包装记录，以便追溯该批产品包装操作以及与质量有关的情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18177', '18', '批包装记录应当依据工艺规程中与包装相关的内容制定；记录的设计应当注意避免填写差错；批包装记录的每一页均应当标注所包装产品的名称、规格、包装形式和批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18178', '18', '批包装记录应当有待包装产品的批号、数量以及成品的批号和计划数量；原版空白的批包装记录的审核、批准、复制和发放的要求与原版空白的批生产记录相同', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18179', '18', '在包装过程中，进行每项操作时应当及时记录，操作结束后，应当由包装操作人员确认并签注姓名和日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18180', '18', '批包装记录的内容包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18181', '18', '操作规程的内容应当包括：题目、编号、版本号、颁发部门、生效日期、分发部门以及制定人、审核人、批准人的签名并注明日期，标题、正文及变更历史', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18182', '18', '厂房、设备、物料、文件和记录应当有编号（或代码），并制定编制编号（或代码）的操作规程，确保编号（或代码）的唯一性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18183', '18', '下述活动也应当有相应的操作规程，其过程和结果应当有记录：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('18203', '18', '包装开始前应当进行检查，确保工作场所、包装生产线、印刷机及其他设备已处于清洁或待用状态，无上批遗留的产品、文件或与本批产品包装无关的物料；检查结果应当有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19184', '19', '所有药品的生产和包装均应当按照批准的工艺规程和操作规程进行操作并有相关记录，以确保药品达到规定的质量标准，并符合药品生产许可和注册批准的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19185', '19', '应当建立划分产品生产批次的操作规程，生产批次的划分应当能够确保同一批次产品质量和特性的均一性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19186', '19', '应当建立编制药品批号和确定生产日期的操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19187', '19', '每批产品应当检查产量和物料平衡，确保物料平衡符合设定的限度；如有差异，必须查明原因，确认无潜在质量风险后，方可按照正常产品处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19188', '19', '不得在同一生产操作间同时进行不同品种和规格药品的生产操作，除非没有发生混淆或交叉污染的可能', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19189', '19', '在生产的每一阶段，应当保护产品和物料免受微生物和其他污染', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19190', '19', '在干燥物料或产品，尤其是高活性、高毒性或高致敏性物料或产品的生产过程中，应当采取特殊措施，防止粉尘的产生和扩散', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19191', '19', '生产期间使用的所有物料、中间产品或待包装产品的容器及主要设备、必要的操作室应当贴签标识或以其他方式标明生产中的产品或物料名称、规格和批号，如有必要，还应当标明生产工序', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19192', '19', '容器、设备或设施所用标识应当清晰明了，标识的格式应当经企业相关部门批准；除在标识上使用文字说明外，还可采用不同的颜色区分被标识物的状态（如待验、合格、不合格或已清洁等）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19193', '19', '应当检查产品从一个区域输送至另一个区域的管道和其他设备连接，确保连接正确无误', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19194', '19', '每次生产结束后应当进行清场，确保设备和工作场所没有遗留与本次生产有关的物料、产品和文件；下次生产开始前，应当对前次清场情况进行确认', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19195', '19', '应当尽可能避免出现任何偏离工艺规程或操作规程的偏差；一旦出现偏差，应当按照偏差处理操作规程执行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19196', '19', '生产厂房应当仅限于经批准的人员出入', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19197', '19', '生产过程中应当尽可能采取措施，防止污染和交叉污染，如：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19198', '19', '应当定期检查防止污染和交叉污染的措施并评估其适用性和有效性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19199', '19', '生产开始前应当进行检查，确保设备和工作场所没有上批遗留的产品、文件或与本批产品生产无关的物料，设备处于已清洁及待用状态；检查结果应当有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19200', '19', '应当进行中间控制和必要的环境监测，并予以记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19201', '19', '每批药品的每一生产阶段完成后必须由生产操作人员清场，并填写清场记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19202', '19', '包装操作规程应当规定降低污染和交叉污染、混淆或差错风险的措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19204', '19', '包装操作前，还应当检查所领用的包装材料正确无误，核对待包装产品和所用包装材料的名称、规格、数量、质量状态，且与工艺规程相符', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19205', '19', '每一包装操作场所或包装生产线，应当有标识标明包装中的产品名称、规格、批号和批量的生产状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19206', '19', '有数条包装线同时进行包装时，应当采取隔离或其他有效防止污染、交叉污染或混淆的措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19207', '19', '待用分装容器在分装前应当保持清洁，避免容器中有玻璃碎屑、金属颗粒等污染物', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19208', '19', '产品分装、封口后应当及时贴签；未能及时贴签时，应当按照相关的操作规程操作，避免发生混淆或贴错标签等差错', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19209', '19', '单独打印或包装过程中在线打印的信息（如产品批号或有效期）均应当进行检查，确保其正确无误，并予以记录；如手工打印，应当增加检查频次', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19210', '19', '使用切割式标签或在包装线以外单独打印标签，应当采取专门措施，防止混淆', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19211', '19', '应当对电子读码机、标签计数器或其他类似装置的功能进行检查，确保其准确运行；检查应当有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19212', '19', '包装材料上印刷或模压的内容应当清晰，不易褪色和擦除', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19213', '19', '包装期间，产品的中间控制检查应当至少包括下述内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19214', '19', '因包装过程产生异常情况而需要重新包装产品的，必须经专门检查、调查并由指定人员批准；重新包装应当有详细记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19215', '19', '在物料平衡检查中，发现待包装产品、印刷包装材料以及成品数量有显著差异时，应当进行调查，未得出结论前，成品不得放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('19216', '19', '包装结束时，已打印批号的剩余包装材料应当由专人负责全部计数销毁，并有记录；如将未打印批号的印刷包装材料退库，应当按照操作规程执行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110217', '110', '质量控制实验室的人员、设施、设备应当与产品性质和生产规模相适应；企业通常不得进行委托检验，确需委托检验的，应当按照第十一章中委托检验部分的规定，委托外部实验室进行检验，但应当在检验报告中予以说明', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110218', '110', '质量控制负责人应当具有足够的管理实验室的资质和经验，可以管理同一企业的一个或多个实验室', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110219', '110', '质量控制实验室的检验人员至少应当具有相关专业中专或高中以上学历，并经过与所从事的检验操作相关的实践培训且通过考核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110220', '110', '质量控制实验室应当配备药典、标准图谱等必要的工具书，以及标准品或对照品等相关的标准物质', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110221', '110', '质量控制实验室的文件应当符合第八章的原则，并符合下列要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110222', '110', '取样应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110223', '110', '物料和不同生产阶段产品的检验应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110224', '110', '质量控制实验室应当建立检验结果超标调查的操作规程；任何检验结果超标都必须按照操作规程进行完整的调查，并有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225', '110', '企业按规定保存的、用于药品质量追溯或调查的物料、产品样品为留样；用于产品稳定性考察的样品不属于留样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110226', '110', '试剂、试液、培养基和检定菌的管理应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110227', '110', '标准品或对照品的管理应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110228', '110', '应当分别建立物料和产品批准放行的操作规程，明确批准放行的标准、职责，并有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110229', '110', '物料的放行应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110230', '110', '产品的放行应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110231', '110', '持续稳定性考察的目的是在有效期内监控已上市药品的质量，以发现药品与生产相关的稳定性问题（如杂质含量或溶出度特性的变化），并确定药品能够在标示的贮存条件下，符合质量标准的各项要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110232', '110', '持续稳定性考察主要针对市售包装药品，但也需兼顾待包装产品；例如，当待包装产品在完成包装前，或从生产厂运输到包装厂，还需要长期贮存时，应当在相应的环境条件下，评估其对包装后产品稳定性的影响；此外，还应当考虑对贮存时间较长的中间产品进行考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110233', '110', '持续稳定性考察应当有考察方案，结果应当有报告；用于持续稳定性考察的设备（尤其是稳定性试验设备或设施）应当按照第七章和第五章的要求进行确认和维护', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110234', '110', '持续稳定性考察的时间应当涵盖药品有效期，考察方案应当至少包括以下内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110235', '110', '考察批次数和检验频次应当能够获得足够的数据，以供趋势分析；通常情况下，每种规格、每种内包装形式的药品，至少每年应当考察一个批次，除非当年没有生产', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110236', '110', '某些情况下，持续稳定性考察中应当额外增加批次数，如重大变更或生产和包装有重大偏差的药品应当列入稳定性考察；此外，重新加工、返工或回收的批次，也应当考虑列入考察，除非已经过验证和稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110237', '110', '关键人员，尤其是质量受权人，应当了解持续稳定性考察的结果；当持续稳定性考察不在待包装产品和成品的生产企业进行时，则相关各方之间应当有书面协议，且均应当保存持续稳定性考察的结果以供药品监督管理部门审查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110238', '110', '应当对不符合质量标准的结果或重要的异常趋势进行调查；对任何已确认的不符合质量标准的结果或重大不良趋势，企业都应当考虑是否可能对已上市药品造成影响，必要时应当实施召回，调查结果以及采取的措施应当报告当地药品监督管理部门', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110239', '110', '应当根据所获得的全部数据资料，包括考察的阶段性结论，撰写总结报告并保存；应当定期审核总结报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110240', '110', '企业应当建立变更控制系统，对所有影响产品质量的变更进行评估和管理；需要经药品监督管理部门批准的变更应当在得到批准后方可实施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110241', '110', '应当建立操作规程，规定原辅料、包装材料、质量标准、检验方法、操作规程、厂房、设施、设备、仪器、生产工艺和计算机软件变更的申请、评估、审核、批准和实施；质量管理部门应当指定专人负责变更控制', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110242', '110', '变更都应当评估其对产品质量的潜在影响；企业可以根据变更的性质、范围、对产品质量潜在影响的程度将变更分类（如主要、次要变更）；判断变更所需的验证、额外的检验以及稳定性考察应当有科学依据', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110243', '110', '与产品质量有关的变更由申请部门提出后，应当经评估、制定实施计划并明确实施职责，最终由质量管理部门审核批准；变更实施应当有相应的完整记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110244', '110', '改变原辅料、与药品直接接触的包装材料、生产工艺、主要生产设备以及其他影响药品质量的主要因素时，还应当对变更实施后最初至少三个批次的药品质量进行评估；如果变更可能影响药品的有效期，则质量评估还应当包括对变更实施后生产的药品进行稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110245', '110', '变更实施时，应当确保与变更相关的文件均已修订', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110246', '110', '质量管理部门应当保存所有变更的文件和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110247', '110', '各部门负责人应当确保所有人员正确执行生产工艺、质量标准、检验方法和操作规程，防止偏差的产生', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110248', '110', '企业应当建立偏差处理的操作规程，规定偏差的报告、记录、调查、处理以及所采取的纠正措施，并有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110249', '110', '任何偏差都应当评估其对产品质量的潜在影响；企业可以根据偏差的性质、范围、对产品质量潜在影响的程度将偏差分类（如重大、次要偏差），对重大偏差的评估还应当考虑是否需要对产品进行额外的检验以及对产品有效期的影响，必要时，应当对涉及重大偏差的产品进行稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110250', '110', '任何偏离生产工艺、物料平衡限度、质量标准、检验方法、操作规程等的情况均应当有记录，并立即报告主管人员及质量管理部门，应当有清楚的说明，重大偏差应当由质量管理部门会同其他部门进行彻底调查，并有调查报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110251', '110', '质量管理部门应当负责偏差的分类，保存偏差调查、处理的文件和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110252', '110', '企业应当建立纠正措施和预防措施系统，对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势等进行调查并采取纠正和预防措施；调查的深度和形式应当与风险的级别相适应；纠正措施和预防措施系统应当能够增进对产品和工艺的理解，改进产品和工艺', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110253', '110', '企业应当建立实施纠正和预防措施的操作规程，内容至少包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110254', '110', '实施纠正和预防措施应当有文件记录，并由质量管理部门保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110255', '110', '质量管理部门应当对所有生产用物料的供应商进行质量评估，会同有关部门对主要物料供应商（尤其是生产商）的质量体系进行现场质量审计，并对质量评估不符合要求的供应商行使否决权', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110256', '110', '应当建立物料供应商评估和批准的操作规程，明确供应商的资质、选择的原则、质量评估方式、评估标准、物料供应商批准的程序', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110257', '110', '质量管理部门应当指定专人负责物料供应商质量评估和现场质量审计，分发经批准的合格供应商名单；被指定的人员应当具有相关的法规和专业知识，具有足够的质量评估和现场质量审计的实践经验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110258', '110', '现场质量审计应当核实供应商资质证明文件和检验报告的真实性，核实是否具备检验条件；应当对其人员机构、厂房设施和设备、物料管理、生产工艺流程和生产管理、质量控制实验室的设备、仪器、文件管理等进行检查，以全面评估其质量保证系统；现场质量审计应当有报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110259', '110', '必要时，应当对主要物料供应商提供的样品进行小批量试生产，并对试生产的药品进行稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110260', '110', '质量管理部门对物料供应商的评估至少应当包括：供应商的资质证明文件、质量标准、检验报告、企业对物料样品的检验数据和报告；如进行现场质量审计和样品小批量试生产的，还应当包括现场质量审计报告，以及小试产品的质量检验报告和稳定性考察报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110261', '110', '改变物料供应商，应当对新的供应商进行质量评估；改变主要物料供应商的，还需要对产品进行相关的验证及稳定性考察', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110262', '110', '质量管理部门应当向物料管理部门分发经批准的合格供应商名单，该名单内容至少包括物料名称、规格、质量标准、生产商名称和地址、经销商（如有）名称等，并及时更新', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110263', '110', '质量管理部门应当与主要物料供应商签订质量协议，在协议中应当明确双方所承担的质量责任', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110264', '110', '质量管理部门应当定期对物料供应商进行评估或现场质量审计，回顾分析物料质量检验结果、质量投诉和不合格处理记录；如物料出现质量问题或生产条件、工艺、质量标准和检验方法等可能影响质量的关键因素发生重大改变时，还应当尽快进行相关的现场质量审计', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110265', '110', '企业应当对每家物料供应商建立质量档案，档案内容应当包括供应商的资质证明文件、质量协议、质量标准、样品检验数据和报告、供应商的检验报告、现场质量审计报告、产品稳定性考察报告、定期的质量回顾分析报告等', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110266', '110', '应当按照操作规程，每年对所有生产的药品按品种进行产品质量回顾分析，以确认工艺稳定可靠，以及原辅料、成品现行质量标准的适用性，及时发现不良趋势，确定产品及工艺改进的方向；应当考虑以往回顾分析的历史数据，还应当对产品质量回顾分析的有效性进行自检', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110267', '110', '应当对回顾分析的结果进行评估，提出是否需要采取纠正和预防措施或进行再确认或再验证的评估意见及理由，并及时、有效地完成整改', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110268', '110', '药品委托生产时，委托方和受托方之间应当有书面的技术协议，规定产品质量回顾分析中各方的责任，确保产品质量回顾分析按时进行并符合要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110269', '110', '应当建立药品不良反应报告和监测管理制度，设立专门机构并配备专职人员负责管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110270', '110', '应当主动收集药品不良反应，对不良反应应当详细记录、评价、调查和处理，及时采取措施控制可能存在的风险，并按照要求向药品监督管理部门报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110271', '110', '应当建立操作规程，规定投诉登记、评价、调查和处理的程序，并规定因可能的产品缺陷发生投诉时所采取的措施，包括考虑是否有必要从市场召回药品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110272', '110', '应当有专人及足够的辅助人员负责进行质量投诉的调查和处理，所有投诉、调查的信息应当向质量受权人通报', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110273', '110', '所有投诉都应当登记与审核，与产品质量缺陷有关的投诉，应当详细记录投诉的各个细节，并进行调查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110274', '110', '发现或怀疑某批药品存在缺陷，应当考虑检查其他批次的药品，查明其是否受到影响', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110275', '110', '投诉调查和处理应当有记录，并注明所查相关批次产品的信息', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110276', '110', '应当定期回顾分析投诉记录，以便发现需要警觉、重复出现以及可能需要从市场召回药品的问题，并采取相应措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110277', '110', '企业出现生产失误、药品变质或其他重大质量问题，应当及时采取相应措施，必要时还应当向当地药品监督管理部门报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111278', '111', '为确保委托生产产品的质量和委托检验的准确性和可靠性，委托方和受托方必须签订书面合同，明确规定各方责任、委托生产或委托检验的内容及相关的技术事项', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111279', '111', '委托生产或委托检验的所有活动，包括在技术或其他方面拟采取的任何变更，均应当符合药品生产许可和注册的有关要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111280', '111', '委托方应当对受托方进行评估，对受托方的条件、技术水平、质量管理情况进行现场考核，确认其具有完成受托工作的能力，并能保证符合本规范的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111281', '111', '委托方应当向受托方提供所有必要的资料，以使受托方能够按照药品注册和其他法定要求正确实施所委托的操作', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111282', '111', '委托方应当对受托生产或检验的全过程进行监督', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111283', '111', '委托方应当确保物料和产品符合相应的质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111284', '111', '受托方必须具备足够的厂房、设备、知识和经验以及人员，满足委托方所委托的生产或检验工作的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111285', '111', '受托方应当确保所收到委托方提供的物料、中间产品和待包装产品适用于预定用途', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111286', '111', '受托方不得从事对委托生产或检验的产品质量有不利影响的活动', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111287', '111', '委托方与受托方之间签订的合同应当详细规定各自的产品生产和控制职责，其中的技术性条款应当由具有制药技术、检验专业知识和熟悉本规范的主管人员拟订', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111288', '111', '合同应当详细规定质量受权人批准放行每批药品的程序，确保每批产品都已按照药品注册的要求完成生产和检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111289', '111', '合同应当规定何方负责物料的采购、检验、放行、生产和质量控制（包括中间控制），还应当规定何方负责取样和检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111290', '111', '合同应当规定由受托方保存的生产、检验和发运记录及样品，委托方应当能够随时调阅或检查；出现投诉、怀疑产品有质量缺陷或召回时，委托方应当能够方便地查阅所有与评价产品质量相关的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111291', '111', '合同应当明确规定委托方可以对受托方进行检查或现场质量审计', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('111292', '111', '委托检验合同应当明确受托方有义务接受药品监督管理部门检查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112293', '112', '企业应当建立产品召回系统，必要时可迅速、有效地从市场召回任何一批存在安全隐患的产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112294', '112', '因质量原因退货和召回的产品，均应当按照规定监督销毁，有证据证明退货产品质量未受影响的除外', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112295', '112', '每批产品均应当有发运记录；根据发运记录，应当能够追查每批产品的销售情况，必要时应当能够及时全部追回，发运记录内容应当包括：产品名称、规格、批号、数量、收货单位和地址、联系方式、发货日期、运输方式等', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112296', '112', '药品发运的零头包装只限两个批号为一个合箱，合箱外应当标明全部批号，并建立合箱记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112297', '112', '发运记录应当至少保存至药品有效期后一年', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112298', '112', '应当制定召回操作规程，确保召回工作的有效性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112299', '112', '应当指定专人负责组织协调召回工作，并配备足够数量的人员；产品召回负责人应当独立于销售和市场部门；如产品召回负责人不是质量受权人，则应当向质量受权人通报召回处理情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112300', '112', '召回应当能够随时启动，并迅速实施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112301', '112', '因产品存在安全隐患决定从市场召回的，应当立即向当地药品监督管理部门报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112302', '112', '产品召回负责人应当能够迅速查阅到药品发运记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112303', '112', '已召回的产品应当有标识，并单独、妥善贮存，等待最终处理决定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112304', '112', '召回的进展过程应当有记录，并有最终报告；产品发运数量、已召回数量以及数量平衡情况应当在报告中予以说明', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('112305', '112', '应当定期对产品召回系统的有效性进行评估', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('113306', '113', '质量管理部门应当定期组织对企业进行自检，监控本规范的实施情况，评估企业是否符合本规范要求，并提出必要的纠正和预防措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('113307', '113', '自检应当有计划，对机构与人员、厂房与设施、设备、物料与产品、确认与验证、文件管理、生产管理、质量控制与质量保证、委托生产与委托检验、产品发运与召回等项目定期进行检查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('113308', '113', '应当由企业指定人员进行独立、系统、全面的自检，也可由外部人员或专家进行独立的质量审计', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('113309', '113', '自检应当有记录；自检完成后应当有自检报告，内容至少包括自检过程中观察到的所有情况、评价的结论以及提出纠正和预防措施的建议；自检情况应当报告企业高层管理人员', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121010', '1210', '调查导致药品投诉和质量缺陷的原因，并采取措施，防止类似质量缺陷再次发生;', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121031', '12103', '具有适当的资质并经培训合格的人员', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121032', '12103', '足够的厂房和空间', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121033', '12103', '适用的设备和维修保障', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121034', '12103', '正确的原辅料、包装材料和标签', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121035', '12103', '经批准的工艺规程和操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('121036', '12103', '适当的贮运条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132231', '13223', '确保药品按照批准的工艺规程生产、贮存，以保证药品质量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132232', '13223', '确保严格执行与生产操作相关的各种操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132233', '13223', '确保批生产记录和批包装记录经过指定人员审核并送交质量管理部门', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132234', '13223', '确保厂房和设备的维护保养，以保持其良好的运行状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132235', '13223', '确保完成各种必要的验证工作', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132236', '13223', '确保生产相关人员经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132311', '13231', '质量管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，其中至少一年的药品质量管理经验，接受过与所生产产品相关的专业知识培训', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132321', '13232', '确保原辅料、包装材料、中间产品、待包装产品和成品符合经注册批准的要求和质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132322', '13232', '确保在产品放行前完成对批记录的审核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132323', '13232', '确保完成所有必要的检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132324', '13232', '批准质量标准、取样方法、检验方法和其他质量管理的操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132325', '13232', '审核和批准所有与质量有关的变更', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132326', '13232', '确保所有重大偏差和检验结果超标已经过调查并得到及时处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132327', '13232', '批准并监督委托检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132328', '13232', '监督厂房和设备的维护，以保持其良好的运行状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132329', '13232', '确保完成各种必要的确认或验证工作，审核和批准确认或验证方案和报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132410', '1324', '监控影响产品质量的因素', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132511', '13251', '质量受权人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，从事过药品生产过程控制和质量检验工作', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132512', '13251', '质量受权人应当具有必要的专业理论知识，并经过与产品放行有关的培训，方能独立履行其职责', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132521', '13252', '参与企业质量体系建立、内部自检、外部质量审计、验证以及药品不良反应报告、产品召回等质量管理活动', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132522', '13252', '承担产品放行的职责，确保每批已放行产品的生产、检验均符合相关法规、药品注册要求和质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('132523', '13252', '在产品放行前，质量受权人必须按照上述第2项的要求出具产品放行审核记录，并纳入批记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('151011', '15101', '发现制药用水微生物污染达到警戒限度、纠偏限度时应当按照操作规程处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161021', '16102', '药品上直接印字所用油墨应当符合食用标准要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161022', '16102', '进口原辅料应当符合国家相关的进口管理规定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161031', '16103', '物料和产品的处理应当按照操作规程或工艺规程执行，并有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161061', '16106', '物料的外包装应当有标签，并注明规定的信息；必要时，还应当进行清洁，发现外包装损坏或其他可能影响物料质量的问题，应当向质量管理部门报告并进行调查和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161062', '16106', '每次接收均应当有记录，内容包括：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161091', '16109', '使用完全计算机化仓储管理系统进行识别的，物料、产品等相关信息可不必以书面可读的方式标出', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161121', '16112', '指定的物料名称和企业内部的物料代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161122', '16112', '企业接收时设定的批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161123', '16112', '物料质量状态（如待验、合格、不合格、已取样）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161124', '16112', '有效期或复验期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161191', '16119', '产品名称和企业内部的产品代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161192', '16119', '产品批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161193', '16119', '数量或重量（如毛重、净重等）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161194', '16119', '生产工序（必要时）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161195', '16119', '产品质量状态（必要时，如待验、合格、不合格、已取样）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161331', '16133', '回收处理后的产品应当按照回收处理中最早批次产品的生产日期确定有效期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161341', '16134', '只有不影响产品质量、符合相应质量标准，且根据预定、经批准的操作规程以及对相关风险充分评估后，才允许返工处理；返工应当有相应记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161361', '16136', '产品名称、批号、规格、数量、退货单位及地址、退货原因及日期、最终处理意见；同一产品同一批号不同渠道的退货应当分别记录、存放和处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161371', '16137', '评价考虑的因素至少应当包括药品的性质、所需的贮存条件、药品的现状、历史，以及发运与退货之间的间隔时间等因素；不符合贮存和运输要求的退货，应当在质量管理部门监督下予以销毁', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161372', '16137', '对退货质量存有怀疑时，不得重新发运', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161373', '16137', '对退货进行回收处理的，回收后的产品应当符合预定的质量标准和0.6.133的要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('161374', '16137', '退货处理的过程和结果应当有相应记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('171401', '17140', '设计确认应当证明厂房、设施、设备的设计符合预定用途和本规范要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('171402', '17140', '安装确认应当证明厂房、设施、设备的建造和安装符合设计标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('171403', '17140', '运行确认应当证明厂房、设施、设备的运行符合设计标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('171404', '17140', '性能确认应当证明厂房、设施、设备在正常操作方法和工艺条件下能够持续符合标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('171405', '17140', '工艺验证应当证明一个生产工艺按照规定的工艺参数能够持续生产出符合预定用途和注册要求的产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181621', '18162', '批记录应当由质量管理部门负责管理，至少保存至药品有效期后一年', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181622', '18162', '质量标准、工艺规程、操作规程、稳定性考察、确认、验证、变更等其他重要文件应当长期保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181631', '18163', '使用电子数据处理系统的，只有经授权的人员方可输入或更改数据，更改和删除情况应当有记录；应当使用密码或其他方式来控制系统的登录；关键数据输入后，应当由他人独立进行复核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181632', '18163', '用电子方法保存的批记录，应当采用磁带、缩微胶卷、纸质副本或其他方法进行备份，以确保记录的安全，且数据资料在保存期内便于查阅', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181651', '18165', '物料的基本信息：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181652', '18165', '取样、检验方法或相关操作规程编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181653', '18165', '定性和定量的限度要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181654', '18165', '贮存条件和注意事项', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181655', '18165', '有效期或复验期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181671', '18167', '产品名称以及产品代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181672', '18167', '对应的产品处方编号（如有）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181673', '18167', '产品规格和包装形式', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181674', '18167', '取样、检验方法或相关操作规程编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181675', '18167', '定性和定量的限度要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181676', '18167', '贮存条件和注意事项', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181677', '18167', '有效期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181701', '18170', '生产处方：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181702', '18170', '生产操作要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181703', '18170', '包装操作要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181751', '18175', '产品名称、规格、批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181752', '18175', '生产以及中间工序开始、结束的日期和时间', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181753', '18175', '每一生产工序的负责人签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181754', '18175', '生产步骤操作人员的签名；必要时，还应当有操作（如称量）复核人员的签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181755', '18175', '每一原辅料的批号以及实际称量的数量（包括投入的回收或返工处理产品的批号及数量）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181756', '18175', '相关生产操作或活动、工艺参数及控制范围，以及所用主要生产设备的编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181757', '18175', '中间控制结果的记录以及操作人员的签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181758', '18175', '不同生产工序所得产量及必要时的物料平衡计算', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181759', '18175', '对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181801', '18180', '产品名称、规格、包装形式、批号、生产日期和有效期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181802', '18180', '包装操作日期和时间', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181803', '18180', '包装操作负责人签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181804', '18180', '包装工序的操作人员签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181805', '18180', '每一包装材料的名称、批号和实际使用的数量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181806', '18180', '根据工艺规程所进行的检查记录，包括中间控制结果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181807', '18180', '包装操作的详细情况，包括所用设备及包装生产线的编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181808', '18180', '所用印刷包装材料的实样，并印有批号、有效期及其他打印内容；不易随批包装记录归档的印刷包装材料可采用印有上述内容的复制品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181809', '18180', '对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181831', '18183', '确认和验证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181832', '18183', '设备的装配和校准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181833', '18183', '厂房和设备的维护、清洁和消毒', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181834', '18183', '培训、更衣及卫生等与人员相关的事宜', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181835', '18183', '环境监测', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181836', '18183', '虫害控制', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181837', '18183', '变更控制', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181838', '18183', '偏差处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('181839', '18183', '投诉', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191861', '19186', '每批药品均应当编制唯一的批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191862', '19186', '除另有法定要求外，生产日期不得迟于产品成型或灌装（封）前经最后混合的操作开始日期，不得以产品包装日期作为生产日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191971', '19197', '在分隔的区域内生产不同品种的药品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191972', '19197', '采用阶段性生产方式', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191973', '19197', '设置必要的气锁间和排风；空气洁净度级别不同的区域应当有压差控制', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191974', '19197', '应当降低未经处理或未经充分处理的空气再次进入生产区导致污染的风险', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191975', '19197', '在易产生交叉污染的生产区内，操作人员应当穿戴该区域专用的防护服', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191976', '19197', '采用经过验证或已知有效的清洁和去污染操作规程进行设备清洁；必要时，应当对与物料直接接触的设备表面的残留物进行检测', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191977', '19197', '采用密闭系统生产', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191978', '19197', '干燥设备的进风应当有空气过滤器，排风应当有防止空气倒流装置', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('191979', '19197', '生产和清洁过程中应当避免使用易碎、易脱屑、易发霉器具；使用筛网时，应当有防止因筛网断裂而造成污染的措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192011', '19201', '清场记录内容包括：操作间编号、产品名称、批号、生产工序、清场日期、检查项目及结果、清场负责人及复核人签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192012', '19201', '清场记录应当纳入批生产记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192131', '19213', '包装外观', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192132', '19213', '包装是否完整', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192133', '19213', '产品和包装材料是否正确', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192134', '19213', '打印信息是否正确', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192135', '19213', '在线监控装置的功能是否正常', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('192136', '19213', '样品从包装生产线取走后不应当再返还，以防止产品混淆或污染', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102211', '110221', '质量控制实验室应当至少有下列详细文件：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102212', '110221', '每批药品的检验记录应当包括中间产品、待包装产品和成品的质量检验记录，可追溯该批药品所有相关的质量检验情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102213', '110221', '宜采用便于趋势分析的方法保存某些数据（如检验数据、环境监测数据、制药用水的微生物监测数据）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102214', '110221', '除与批记录相关的资料信息外，还应当保存其他原始资料或记录，以方便查阅', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102221', '110222', '质量管理部门的人员有权进入生产区和仓储区进行取样及调查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102222', '110222', '应当按照经批准的操作规程取样，操作规程应当详细规定：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102223', '110222', '取样方法应当科学、合理，以保证样品的代表性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102224', '110222', '留样应当能够代表被取样批次的产品或物料，也可抽取其他样品来监控生产过程中最重要的环节（如生产的开始或结束）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102225', '110222', '样品的容器应当贴有标签，注明样品名称、批号、取样日期、取自哪一包装容器、取样人等信息', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102226', '110222', '样品应当按照规定的贮存要求保存', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102231', '110223', '企业应当确保药品按照注册批准的方法进行全项检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102232', '110223', '符合下列情形之一的，应当对检验方法进行验证：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102233', '110223', '对不需要进行验证的检验方法，企业应当对检验方法进行确认，以确保检验数据准确、可靠', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102234', '110223', '检验应当有书面操作规程，规定所用方法、仪器和设备，检验操作规程的内容应当与经确认或验证的检验方法一致', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102235', '110223', '检验应当有可追溯的记录并应当复核，确保结果与记录一致；所有计算均应当严格核对', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102236', '110223', '检验记录应当至少包括以下内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102237', '110223', '所有中间控制（包括生产人员所进行的中间控制），均应当按照经质量管理部门批准的方法进行，检验应当有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102238', '110223', '应当对实验室容量分析用玻璃仪器、试剂、试液、对照品以及培养基进行质量检查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102239', '110223', '必要时应当将检验用实验动物在使用前进行检验或隔离检疫；饲养和管理应当符合相关的实验动物管理规定；动物应当有标识，并应当保存使用的历史记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102251', '110225', '留样应当至少符合以下要求：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102261', '110226', '试剂和培养基应当从可靠的供应商处采购，必要时应当对供应商进行评估', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102262', '110226', '应当有接收试剂、试液、培养基的记录，必要时，应当在试剂、试液、培养基的容器上标注接收日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102263', '110226', '应当按照相关规定或使用说明配制、贮存和使用试剂、试液和培养基；特殊情况下，在接收或使用前，还应当对试剂进行鉴别或其他检验', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102264', '110226', '试液和已配制的培养基应当标注配制批号、配制日期和配制人员姓名，并有配制（包括灭菌）记录；不稳定的试剂、试液和培养基应当标注有效期及特殊贮存条件；标准液、滴定液还应当标注最后一次标化的日期和校正因子，并有标化记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102265', '110226', '配制的培养基应当进行适用性检查，并有相关记录；应当有培养基使用记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102266', '110226', '应当有检验所需的各种检定菌，并建立检定菌保存、传代、使用、销毁的操作规程和相应记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102267', '110226', '检定菌应当有适当的标识，内容至少包括菌种名称、编号、代次、传代日期、传代操作人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102268', '110226', '检定菌应当按照规定的条件贮存，贮存的方式和时间不应当对检定菌的生长特性有不利影响', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102271', '110227', '标准品或对照品应当按照规定贮存和使用', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102272', '110227', '标准品或对照品应当有适当的标识，内容至少包括名称、批号、制备日期（如有）、有效期（如有）、首次开启日期、含量或效价、贮存条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102273', '110227', '企业如需自制工作标准品或对照品，应当建立工作标准品或对照品的质量标准以及制备、鉴别、检验、批准和贮存的操作规程，每批工作标准品或对照品应当用法定标准品或对照品进行标化，并确定有效期，还应当通过定期标化证明工作标准品或对照品的效价或含量在有效期内保持稳定；标化的过程和结果应当有相应的记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102291', '110229', '物料的质量评价内容应当至少包括生产商的检验报告、物料包装完整性和密封性的检查情况和检验结果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102292', '110229', '物料的质量评价应当有明确的结论，如批准放行、不合格或其他决定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102293', '110229', '物料应当由指定人员签名批准放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102301', '110230', '在批准放行前，应当对每批药品进行质量评价，保证药品及其生产应当符合注册和本规范要求，并确认以下各项内容：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102302', '110230', '药品的质量评价应当有明确的结论，如批准放行、不合格或其他决定', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102303', '110230', '每批药品均应当由质量受权人签名批准放行', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102304', '110230', '疫苗类制品、血液制品、用于血源筛查的体外诊断试剂以及国家食品药品监督管理局规定的其他生物制品放行前还应当取得批签发合格证明', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102341', '110234', '每种规格、每个生产批量药品的考察批次数', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102342', '110234', '相关的物理、化学、微生物和生物学检验方法，可考虑采用稳定性考察专属的检验方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102343', '110234', '检验方法依据', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102344', '110234', '合格标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102345', '110234', '容器密封系统的描述', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102346', '110234', '试验间隔时间（测试时间点）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102347', '110234', '贮存条件（应当采用与药品标示贮存条件相对应的《中华人民共和国药典》规定的长期稳定性试验标准条件）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102348', '110234', '检验项目，如检验项目少于成品质量标准所包含的项目，应当说明理由', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102501', '110250', '偏差调查报告应当由质量管理部门的指定人员审核并签字', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102502', '110250', '企业还应当采取预防措施有效防止类似偏差的再次发生', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102531', '110253', '对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势以及其他来源的质量数据进行分析，确定已有和潜在的质量问题；必要时，应当采用适当的统计学方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102532', '110253', '调查与产品、工艺和质量保证系统有关的原因', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102533', '110253', '确定所需采取的纠正和预防措施，防止问题的再次发生', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102534', '110253', '评估纠正和预防措施的合理性、有效性和充分性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102535', '110253', '对实施纠正和预防措施过程中所有发生的变更应当予以记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102536', '110253', '确保相关信息已传递到质量受权人和预防问题再次发生的直接负责人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102537', '110253', '确保相关信息及其纠正和预防措施已通过高层管理人员的评审', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102551', '110255', '主要物料的确定应当综合考虑企业所生产的药品质量风险、物料用量以及物料对药品质量的影响程度等因素', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102552', '110255', '企业法定代表人、企业负责人及其他部门的人员不得干扰或妨碍质量管理部门对物料供应商独立作出质量评估', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102561', '110256', '如质量评估需采用现场质量审计方式的，还应当明确审计内容、周期、审计人员的组成及资质；需采用样品小批量试生产的，还应当明确生产批量、生产工艺、产品质量标准、稳定性考察方案', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102661', '110266', '当有合理的科学依据时，可按照产品的剂型分类进行质量回顾，如固体制剂、液体制剂和无菌制剂等', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1102662', '110266', '回顾分析应当有报告；企业至少应当对下列情形进行回顾分析：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1112811', '111281', '委托方应当使受托方充分了解与产品或操作相关的各种问题，包括产品或操作对受托方的环境、厂房、设备、人员及其他物料或产品可能造成的危害', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1112871', '111287', '委托生产及检验的各项工作必须符合药品生产许可和药品注册的有关要求并经双方同意', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1112891', '111289', '在委托检验的情况下，合同应当规定受托方是否在委托方的厂房内取样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323210', '13232', '确保完成自检', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323211', '13232', '评估和批准物料供应商', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323212', '13232', '确保所有与产品质量有关的投诉已经过调查，并得到及时、正确的处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323213', '13232', '确保完成产品质量回顾分析', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1323214', '13232', '确保质量控制和质量保证人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610621', '161062', '交货单和包装容器上所注物料的名称', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610622', '161062', '企业内部所用物料名称和（或）代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610623', '161062', '接收日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610624', '161062', '供应商和生产商（如不同）的名称', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610625', '161062', '供应商和生产商（如不同）标识的批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610626', '161062', '接收总量和包装容器数量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610627', '161062', '接收后企业指定的批号或流水号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1610628', '161062', '有关说明（如包装状况）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1816511', '181651', '企业统一指定的物料名称和内部使用的物料代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1816512', '181651', '质量标准的依据', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1816513', '181651', '经批准的供应商', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1816514', '181651', '印刷包装材料的实样或样稿', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817011', '181701', '产品名称和产品代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817012', '181701', '产品剂型、规格和批量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817013', '181701', '所用原辅料清单（包括生产过程中使用，但不在成品中出现的物料），阐明每一物料的指定名称、代码和用量；如原辅料的用量需要折算时，还应当说明计算方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817021', '181702', '对生产场所和所用设备的说明（如操作间的位置和编号、洁净度级别、必要的温湿度要求、设备型号和编号等）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817022', '181702', '关键设备的准备（如清洗、组装、校准、灭菌等）所采用的方法或相应操作规程编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817023', '181702', '详细的生产步骤和工艺参数说明（如物料的核对、预处理、加入物料的顺序、混合时间、温度等）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817024', '181702', '所有中间控制方法及标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817025', '181702', '预期的最终产量限度，必要时，还应当说明中间产品的产量限度，以及物料平衡的计算方法和限度', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817026', '181702', '待包装产品的贮存要求，包括容器、标签及特殊贮存条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817027', '181702', '需要说明的注意事项', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817031', '181703', '以最终包装容器中产品的数量、重量或体积表示的包装形式', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817032', '181703', '所需全部包装材料的完整清单，包括包装材料的名称、数量、规格、类型以及与质量标准有关的每一包装材料的代码', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817033', '181703', '印刷包装材料的实样或复制品，并标明产品批号、有效期打印位置', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817034', '181703', '需要说明的注意事项，包括对生产区和设备进行的检查，在包装操作开始前，确认包装生产线的清场已经完成等', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817035', '181703', '包装操作步骤的说明，包括重要的辅助性操作和所用设备的注意事项、包装材料使用前的核对', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817036', '181703', '中间控制的详细操作，包括取样方法及标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1817037', '181703', '待包装产品、印刷包装材料的物料平衡计算方法和限度', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1818010', '18180', '所有印刷包装材料和待包装产品的名称、代码，以及发放、使用、销毁或退库的数量、实际产量以及物料平衡检查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1818310', '18183', '药品召回', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1818311', '18183', '退货', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1919710', '19197', '液体制剂的配制、过滤、灌封、灭菌等工序应当在规定时间内完成', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1919711', '19197', '软膏剂、乳膏剂、凝胶剂等半固体制剂以及栓剂的中间产品应当规定贮存期和贮存条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('1919791', '191979', '生产操作前，还应当核对物料或中间产品的名称、代码、批号和标识，确保生产所用物料或中间产品正确且符合要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022111', '1102211', '质量标准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022112', '1102211', '取样操作规程和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022113', '1102211', '检验操作规程和记录（包括检验记录或实验室工作记事簿）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022114', '1102211', '检验报告或证书', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022115', '1102211', '必要的环境监测操作规程、记录和报告', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022116', '1102211', '必要的检验方法验证报告和记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022117', '1102211', '仪器校准和设备使用、清洁、维护的操作规程及记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022221', '1102222', '经授权的取样人', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022222', '1102222', '取样方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022223', '1102222', '所用器具', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022224', '1102222', '样品量', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022225', '1102222', '分样的方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022226', '1102222', '存放样品容器的类型和状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022227', '1102222', '取样后剩余部分及样品的处置和标识', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022228', '1102222', '取样注意事项，包括为降低取样过程产生的各种风险所采取的预防措施，尤其是无菌或有害物料的取样以及防止取样过程中污染和交叉污染的注意事项', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022229', '1102222', '贮存条件', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022321', '1102232', '采用新的检验方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022322', '1102232', '检验方法需变更的', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022323', '1102232', '采用《中华人民共和国药典》及其他法定标准未收载的检验方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022324', '1102232', '法规规定的其他需要验证的检验方法', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022361', '1102236', '产品或物料的名称、剂型、规格、批号或供货批号，必要时注明供应商和生产商（如不同）的名称或来源', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022362', '1102236', '依据的质量标准和检验操作规程', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022363', '1102236', '检验所用的仪器或设备的型号和编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022364', '1102236', '检验所用的试液和培养基的配制批号、对照品或标准品的来源和批号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022365', '1102236', '检验所用动物的相关信息', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022366', '1102236', '检验过程，包括对照品溶液的配制、各项具体的检验操作、必要的环境温湿度', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022367', '1102236', '检验结果，包括观察情况、计算和图谱或曲线图，以及依据的检验报告编号', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022368', '1102236', '检验日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022369', '1102236', '检验人员的签名和日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022511', '1102251', '应当按照操作规程对留样进行管理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022512', '1102251', '留样应当能够代表被取样批次的物料或产品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022513', '1102251', '成品的留样：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11022514', '1102251', '物料的留样：', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023011', '1102301', '主要生产工艺和检验方法经过验证', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023012', '1102301', '已完成所有必需的检查、检验，并综合考虑实际生产条件和生产记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023013', '1102301', '所有必需的生产和质量控制均已完成并经相关主管人员签名', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023014', '1102301', '变更已按照相关规程处理完毕，需要经药品监督管理部门批准的变更已得到批准', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023015', '1102301', '对变更或偏差已完成所有必要的取样、检查、检验和审核', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11023016', '1102301', '所有与该批产品有关的偏差均已有明确的解释或说明，或者已经过彻底调查和适当处理；如偏差还涉及其他批次产品，应当一并处理', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026621', '1102662', '产品所用原辅料的所有变更，尤其是来自新供应商的原辅料', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026622', '1102662', '关键中间控制点及成品的检验结果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026623', '1102662', '所有不符合质量标准的批次及其调查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026624', '1102662', '所有重大偏差及相关的调查、所采取的整改措施和预防措施的有效性', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026625', '1102662', '生产工艺或检验方法等的所有变更', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026626', '1102662', '已批准或备案的药品注册所有变更', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026627', '1102662', '稳定性考察的结果及任何不良趋势', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026628', '1102662', '所有因质量原因造成的退货、投诉、召回及调查', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('11026629', '1102662', '与产品工艺或设备相关的纠正措施的执行情况和效果', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110222210', '1102222', '取样器具的清洁方法和贮存要求', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110223610', '1102236', '检验、计算复核人员的签名和日期', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225131', '11022513', '每批药品均应当有留样；如果一批药品分成数次进行包装，则每次包装至少应当保留一件最小市售包装的成品', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225132', '11022513', '留样的包装形式应当与药品市售包装形式相同，原料药的留样如无法采用市售包装形式的，可采用模拟包装', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225133', '11022513', '每批药品的留样数量一般至少应当能够确保按照注册批准的质量标准完成两次全检（无菌检查和热原检查等除外）', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225134', '11022513', '如果不影响留样的包装完整性，保存期间内至少应当每年对留样进行一次目检观察，如有异常，应当进行彻底调查并采取相应的处理措施', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225135', '11022513', '留样观察应当有记录', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225136', '11022513', '留样应当按照注册批准的贮存条件至少保存至药品有效期后一年', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225137', '11022513', '如企业终止药品生产或关闭的，应当将留样转交受权单位保存，并告知当地药品监督管理部门，以便在必要时可随时取得留样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225141', '11022514', '制剂生产用每批原辅料和与药品直接接触的包装材料均应当有留样；与药品直接接触的包装材料（如输液瓶），如成品已有留样，可不必单独留样', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225142', '11022514', '物料的留样量应当至少满足鉴别的需要', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225143', '11022514', '除稳定性较差的原辅料外，用于制剂生产的原辅料（不包括生产过程中使用的溶剂、气体或制药用水）和与药品直接接触的包装材料的留样应当至少保存至产品放行后二年；如果物料的有效期较短，则留样时间可相应缩短', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110225144', '11022514', '物料的留样应当按照规定的条件贮存，必要时还应当适当包装密封', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110266210', '1102662', '新获批准和有变更的药品，按照注册要求上市后应当完成的工作情况', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110266211', '1102662', '相关设备和设施，如空调净化系统、水系统、压缩空气等的确认状态', '1', null, null, '1', null, null);
INSERT INTO `abs_chk_item` VALUES ('110266212', '1102662', '委托生产或检验的技术合同履行情况', '1', null, null, '1', null, null);

-- ----------------------------
-- Table structure for `aos_log_session`
-- ----------------------------
DROP TABLE IF EXISTS `aos_log_session`;
CREATE TABLE `aos_log_session` (
  `id_` varchar(64) NOT NULL COMMENT '会话ID',
  `user_id_` varchar(64) NOT NULL COMMENT '用户ID',
  `account_` varchar(255) NOT NULL COMMENT '登录账户',
  `user_name_` varchar(255) NOT NULL COMMENT '用户姓名',
  `ip_address_` varchar(255) DEFAULT NULL COMMENT '客户端IP地址',
  `client_type_` varchar(255) DEFAULT NULL COMMENT '客户端类型',
  `owner_` varchar(255) DEFAULT NULL COMMENT '宿主',
  `create_time_` datetime NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会话日志信息表';

-- ----------------------------
-- Records of aos_log_session
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_catalog`
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
-- Records of aos_sys_catalog
-- ----------------------------
INSERT INTO `aos_sys_catalog` VALUES ('21d03054afdf43d69972cf6f7db6cfa3', '0.002', 'DIC_TYPE', '词典分类科目', '数据字典分类', null, '0', '0', '0', 'book.png', '2');
INSERT INTO `aos_sys_catalog` VALUES ('38368661c53c40b6824869a0ccffad05', '0.002.001.001', 'DIC_TYPE', '词典分类科目', '工作流', null, '4018a2217b0542059a26ecf3f605d60f', '1', '0', 'folder6.png', '1');
INSERT INTO `aos_sys_catalog` VALUES ('4018a2217b0542059a26ecf3f605d60f', '0.002.001', 'DIC_TYPE', '词典分类科目', '系统管理', null, '21d03054afdf43d69972cf6f7db6cfa3', '0', '1', 'folder22.png', '2');
INSERT INTO `aos_sys_catalog` VALUES ('4018f65de18043c899b5e21ce7328df7', '0.001.002', 'PARAM_TYPE', '参数分类科目', '系统参数', null, 'cd14928a239b448b867c2e45246cd038', '0', '1', 'folder22.png', '1');
INSERT INTO `aos_sys_catalog` VALUES ('6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', 'PARAM_TYPE', '参数分类科目', '验证码', null, '4018f65de18043c899b5e21ce7328df7', '1', '0', 'ok3.png', '2');
INSERT INTO `aos_sys_catalog` VALUES ('8d6c9869e8b2427cb16cf3f4777bf236', '0.002.007', 'DIC_TYPE', '词典分类科目', '范例', '', '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder11.png', '10');
INSERT INTO `aos_sys_catalog` VALUES ('aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', 'DIC_TYPE', '词典分类科目', '全局通用', null, '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder24.png', '3');
INSERT INTO `aos_sys_catalog` VALUES ('c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', 'DIC_TYPE', '词典分类科目', '平台配置', null, '21d03054afdf43d69972cf6f7db6cfa3', '1', '0', 'folder2.png', '1');
INSERT INTO `aos_sys_catalog` VALUES ('cd14928a239b448b867c2e45246cd038', '0.001', 'PARAM_TYPE', '参数分类科目', '参数分类', null, '0', '0', '0', 'book.png', '1');

-- ----------------------------
-- Table structure for `aos_sys_dic`
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
-- Records of aos_sys_dic
-- ----------------------------
INSERT INTO `aos_sys_dic` VALUES ('040e1d4d8a914145884553f170e1bcfd', '1', '缺省', null, '1', 'cfcbc48fd8ad42678a52334bac8aa299', null);
INSERT INTO `aos_sys_dic` VALUES ('040fbde5cca746e7a90a9f888c033897', '4', '只读', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('045e7dce267b4ef3b098ca00030220bf', '2', '金卡', null, '1', '2724924f1cdd48d1aa1a84cb7dd9b3ee', null);
INSERT INTO `aos_sys_dic` VALUES ('074c63e541174ed0b7c71588936ae453', '1', '平铺', null, '1', 'ffc94f2b7ad14c78b14c46f8fab17543', null);
INSERT INTO `aos_sys_dic` VALUES ('075a268cd7e14a728ca841e769b9d5a6', '1', '缺省', null, '1', '79004d064e954e55b832a8a9a4332576', null);
INSERT INTO `aos_sys_dic` VALUES ('0801986eec2b49e6904db73bb016b8bc', '5', '已确认', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null);
INSERT INTO `aos_sys_dic` VALUES ('0825b66058c14bc5bfacdba1fd055af4', '2', '浮动菜单', null, '1', 'a9fd5aa3b7654326902a94e70bccedd8', '欢迎页显示的Mac风格的浮动菜单');
INSERT INTO `aos_sys_dic` VALUES ('0ccc4a6e3df246d8bbd3ccb1d29eb4c4', '0', '停用', null, '1', '10a113b1dd6d492dad27c8b0a0fb7efc', null);
INSERT INTO `aos_sys_dic` VALUES ('0ee3e8b931374725b213150b021507cc', 'catalog', 'aos', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库名/实例名');
INSERT INTO `aos_sys_dic` VALUES ('15f728ef5143444f9bfafa1c5c8a6a3b', '3', '隐藏', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('1722aa532c4044ac8087579feac85f7f', 'neptune', 'neptune.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null);
INSERT INTO `aos_sys_dic` VALUES ('17b249a462e7409baa99f36057fa79e7', '1', '是', null, '1', '91bc8a695b744b27ba66a94561fd6dbc', '');
INSERT INTO `aos_sys_dic` VALUES ('1915d507f36d4ae688267ebca838d39f', 'blue', '#3399FF', null, '1', '61fd319a23b04bd1bdbce7037002976a', null);
INSERT INTO `aos_sys_dic` VALUES ('1bb70ce5d6e649fd9179f3a3d35367f9', 'blue', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null);
INSERT INTO `aos_sys_dic` VALUES ('1c2ebffd1b48420999ff57e2ec325270', '3', '未知', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', '');
INSERT INTO `aos_sys_dic` VALUES ('1deee1b367ae4ccb81226a86eb7d9675', '1', '普卡', null, '1', '2724924f1cdd48d1aa1a84cb7dd9b3ee', null);
INSERT INTO `aos_sys_dic` VALUES ('1fb134407f364baf8b857235c7828059', '2', '停用', null, '1', '0744eedeaaa143afa499254866aa75c9', null);
INSERT INTO `aos_sys_dic` VALUES ('226489afb7ab4cf69107a78c60ed2267', 'PENDING', '代理中', null, '1', 'c66f06c069224241a4785e77d1406f9c', null);
INSERT INTO `aos_sys_dic` VALUES ('23910ad1f9684644b214ff99209e94d4', '3', '关联页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '主页面上跳转出去的页面');
INSERT INTO `aos_sys_dic` VALUES ('23a410439cf7459799c286745b123293', '1', '激活', null, '1', '2c90ab6212f44b08a1d8ed527c72795f', null);
INSERT INTO `aos_sys_dic` VALUES ('24bca6d79bb14b5f97fbddbe5219705b', '1', '按钮|菜单下拉项', null, '1', '7d048854ccdc4eab996dcb703722065b', null);
INSERT INTO `aos_sys_dic` VALUES ('27689b76c3cf4168a7efb737806e9ed7', '2', '已结束', null, '1', 'a06eb2af650444db903c945030334b12', null);
INSERT INTO `aos_sys_dic` VALUES ('29462076b88f4facb86f7647c04119d0', '2', '子页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '在主页面上的子导航打开的页面(内嵌式的)');
INSERT INTO `aos_sys_dic` VALUES ('2a5d03f79fd64c2090c9847d1b1484f0', '3', '待签收', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null);
INSERT INTO `aos_sys_dic` VALUES ('2bd5fc7756d74fe59f5b9372fd83d03c', '4', '分割符', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '子页面生成的二级导航菜单的分割符标识');
INSERT INTO `aos_sys_dic` VALUES ('2ce972620b1d484e880ae17113f4cf05', 'tight', '组合按钮', null, '1', 'a19ac2af964c4a6e8af9c6f1c0d2673f', null);
INSERT INTO `aos_sys_dic` VALUES ('2e2ef7ebcd5449a1a1b593f63ddb17ba', '3', '管理员封锁', null, '1', '0744eedeaaa143afa499254866aa75c9', null);
INSERT INTO `aos_sys_dic` VALUES ('2ea2449b3cea4517a40e88bab1a3b67b', '1', '已领取', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null);
INSERT INTO `aos_sys_dic` VALUES ('2ef4d36610334dc6bc9bd153be594da2', '3', 'DBSequence', null, '1', '2a9ac1749d224bef924cd258bf35254a', null);
INSERT INTO `aos_sys_dic` VALUES ('2f9994a32b3e4afd96420c180155065a', '3', '矢量图标', null, '1', '21136c3dc660464d92fccd66408e149b', null);
INSERT INTO `aos_sys_dic` VALUES ('3058d4cd6c514d23a27eee77b140a349', 'aos', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null);
INSERT INTO `aos_sys_dic` VALUES ('338541a1b2094ea5a0e51ce81f9012de', 'port', '3306', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库主机端口');
INSERT INTO `aos_sys_dic` VALUES ('37a243f7cb96413386c3ea781051244e', '3', '工作组', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null);
INSERT INTO `aos_sys_dic` VALUES ('37d2d28ac8104f6481997b640c5d4fd0', '4', '其它', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null);
INSERT INTO `aos_sys_dic` VALUES ('3a4466b864744a0da3b93eec3f24dfff', 'blue', '天蓝', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null);
INSERT INTO `aos_sys_dic` VALUES ('3c56f07c48b746698591068c308064a7', 'gray', '银灰', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null);
INSERT INTO `aos_sys_dic` VALUES ('3f1b50a0f5be46a69597fca95c1e82d7', '2', '大图标[64X64]', null, '1', '21136c3dc660464d92fccd66408e149b', null);
INSERT INTO `aos_sys_dic` VALUES ('4113d10127a34b4fa88b2d6b118accf0', '0', '否', null, '1', '91bc8a695b744b27ba66a94561fd6dbc', null);
INSERT INTO `aos_sys_dic` VALUES ('413055f896744285a401cc238323785d', '0', '普通', null, '1', '852946ac593e4f3fa21df7db7d21e085', '默认级别');
INSERT INTO `aos_sys_dic` VALUES ('462d4322dd6c408c8d2dfa1241c209f6', '2', '挂起', null, '1', '2c90ab6212f44b08a1d8ed527c72795f', null);
INSERT INTO `aos_sys_dic` VALUES ('4ae7b6f7d54a4236ba9b18a9e05d7fb4', '4', '容器组件(窗口|面板|树|表格|工具栏等)', null, '1', '7d048854ccdc4eab996dcb703722065b', null);
INSERT INTO `aos_sys_dic` VALUES ('4af1d58e374149f38c5ae9f76674a79f', 'aos', '#FAFAFA', null, '1', '61fd319a23b04bd1bdbce7037002976a', null);
INSERT INTO `aos_sys_dic` VALUES ('4c5816e8db1c4f0995fbeb7a1b840685', '1', '主页面', null, '1', '38841cd4f85f4ffb8c07c74650a130dc', '点击主导航菜单打开的页面');
INSERT INTO `aos_sys_dic` VALUES ('569b3bab75734c628a9bb0b3fbcd8922', '2', '显示', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('58195ff7a3084df2a2dd5b401aa29a77', '0', '系统导航', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null);
INSERT INTO `aos_sys_dic` VALUES ('58fc07abcfdc46478ad14fb9d95214f6', 'dataBaseType', 'mysql', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '可选值：mysql、oracle、microsoft sql server、postgresql。');
INSERT INTO `aos_sys_dic` VALUES ('5a53887315f7450e96816c1a46dc5b5e', '2', '项目组', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null);
INSERT INTO `aos_sys_dic` VALUES ('5c4196e15f47466ea19137666e455504', 'neptune', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null);
INSERT INTO `aos_sys_dic` VALUES ('5dd1c5a1610544b490af86cc826e3663', '2', '表格列', null, '1', '7d048854ccdc4eab996dcb703722065b', null);
INSERT INTO `aos_sys_dic` VALUES ('5de14be720b546ebb9676db86cdc5f6c', '2', '女', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', null);
INSERT INTO `aos_sys_dic` VALUES ('5dfc1a71df524cd68311a95e7176cab7', 'gray', '#BCB0B0', null, '1', '1ec5d3c945de40469595c85955196e76', null);
INSERT INTO `aos_sys_dic` VALUES ('6a05b8c8ce244c3f9b4872f812c689ec', '1', '经办权限', null, '1', 'dd9f74d16be14db5b0f6d79720c8f177', null);
INSERT INTO `aos_sys_dic` VALUES ('6c575847953847ceb7d4675e94d78547', 'aos', '#99bce8', null, '1', '1ec5d3c945de40469595c85955196e76', null);
INSERT INTO `aos_sys_dic` VALUES ('6e018ced3ae046de93d74630a97361a1', 'aos', '#006699', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null);
INSERT INTO `aos_sys_dic` VALUES ('735edf2e8a1242078141405d344d3c84', '1', '未授权', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('786d09295c904608868807b9e08238ee', 'neptune', '#c0c0c0', null, '1', '1ec5d3c945de40469595c85955196e76', null);
INSERT INTO `aos_sys_dic` VALUES ('7ab2cba5964a4457ae250919ae120cc4', '3', '自查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null);
INSERT INTO `aos_sys_dic` VALUES ('7b6226ba4b6b404bab3cc520d5c1e6b5', 'neptune', '海王星(水蓝)', null, '1', '3ba3a682c2ac4d52982411dd045fae32', null);
INSERT INTO `aos_sys_dic` VALUES ('84552cfdf36f4fee92d81a49340495ca', 'blue', '#DFE8F6', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null);
INSERT INTO `aos_sys_dic` VALUES ('84ee7e35ab134ec1acd2cfd28d3915f6', 'standalone', '独立按钮', null, '1', 'a19ac2af964c4a6e8af9c6f1c0d2673f', null);
INSERT INTO `aos_sys_dic` VALUES ('85f5017c1860434eacfceb519b8ad8cd', 'blue', 'blue.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null);
INSERT INTO `aos_sys_dic` VALUES ('867c0aacba654feea60c22c5e4be9368', 'aos', 'red', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null);
INSERT INTO `aos_sys_dic` VALUES ('871d7ac8ec704614a15d29f540b8b439', 'true', '显示', null, '1', '33a73af4b729448b91c13acf4d0a31e1', null);
INSERT INTO `aos_sys_dic` VALUES ('87923302cb424da9aa55b6a9ce77090b', '7', '激活', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('89f8ab9369a64de09a8207829f520297', 'gray', 'gray.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null);
INSERT INTO `aos_sys_dic` VALUES ('8b536d0c9a2e4e80b1edf91190b98253', '5', '编辑', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('8da661446e6d4e9cb49d2eb5ab225cd0', '2', '树状', null, '1', 'ffc94f2b7ad14c78b14c46f8fab17543', null);
INSERT INTO `aos_sys_dic` VALUES ('8e42e7df7bd044b89c7a5d5b59b44b18', '1', '男', null, '1', 'f59d8693d8cf4f10850914e09ae9b93c', null);
INSERT INTO `aos_sys_dic` VALUES ('92dfd82860a0474da735575e9b91f6de', 'classic', '经典主题', null, '1', 'a44dd9bbf55041368882e88821309355', '上Banner-左导航-中经办。');
INSERT INTO `aos_sys_dic` VALUES ('958235d21e2f4d44babd8ae7da7dd7f8', '99', '撤消授权', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('99419e3ea3d64507aa507854fd210a75', '3', '表单元素(输入框|下拉框|选择框等)', null, '1', '7d048854ccdc4eab996dcb703722065b', null);
INSERT INTO `aos_sys_dic` VALUES ('9d1c5da19d0b4ad9b97b570ed4481bf2', 'false', '隐藏', null, '1', '33a73af4b729448b91c13acf4d0a31e1', null);
INSERT INTO `aos_sys_dic` VALUES ('9df1bbd8b0d44b4c994ed7a792d6f055', '3', '进行中', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null);
INSERT INTO `aos_sys_dic` VALUES ('9eb462a5fd0547b9898540b6e5a4ca98', 'gray', 'left-logo.png', null, '1', 'fa8097dd670643f9a03722c4074ecba5', null);
INSERT INTO `aos_sys_dic` VALUES ('9f291605aa824f489ee51528e80a7227', '0', '未完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', '');
INSERT INTO `aos_sys_dic` VALUES ('a603159d47b94145a32b51f659b47c09', '4', '系统封锁', null, '1', '0744eedeaaa143afa499254866aa75c9', null);
INSERT INTO `aos_sys_dic` VALUES ('a63ab46c45b048b1a0d727c5f0d69f58', '3', '导入离线文件', null, '1', '483fb2ff35e84a42974e914851fae01a', null);
INSERT INTO `aos_sys_dic` VALUES ('a871329cbeb343bea48a467e05e066f5', '2', '在线克隆', null, '1', '483fb2ff35e84a42974e914851fae01a', null);
INSERT INTO `aos_sys_dic` VALUES ('a97934b734a94d70a71353bc78e572df', 'neptune', '#FAFAFA', null, '1', '61fd319a23b04bd1bdbce7037002976a', null);
INSERT INTO `aos_sys_dic` VALUES ('a9bef6122ad7444999ce17b4ad5a0628', '2', '发现', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null);
INSERT INTO `aos_sys_dic` VALUES ('ac8049fc0ded42b09a3654ef547ac772', '1', '小图标[16X16]', null, '1', '21136c3dc660464d92fccd66408e149b', null);
INSERT INTO `aos_sys_dic` VALUES ('b18435d1752a4a8c96628402298c0493', 'gray', '#555555', null, '1', '61fd319a23b04bd1bdbce7037002976a', null);
INSERT INTO `aos_sys_dic` VALUES ('b1d95ea28e084b64b0f6a473e65fe2fd', 'aos', 'AOS', null, '0', '3ba3a682c2ac4d52982411dd045fae32', '');
INSERT INTO `aos_sys_dic` VALUES ('b5bdcaeeccd44ad9aceae1968fbe0851', 'userName', 'realdemos', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库用户名');
INSERT INTO `aos_sys_dic` VALUES ('b85f79702d094f348e1c9e79e67d95b7', '1', '待办', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null);
INSERT INTO `aos_sys_dic` VALUES ('ba5b0493f0544278a980e0f268baf83c', '1', '快捷菜单', null, '1', '4c2a12d3890a449fa91521a29a3c2436', null);
INSERT INTO `aos_sys_dic` VALUES ('bbef93ea807847029e98ed7023b47c6a', '1', '正常', null, '1', '0744eedeaaa143afa499254866aa75c9', null);
INSERT INTO `aos_sys_dic` VALUES ('bc17f4f03f0d415c97a026e8ec5a999d', 'blue', '#6699CC', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null);
INSERT INTO `aos_sys_dic` VALUES ('c172686bc21e40efacca63c5b7e1c9d3', 'blue', '#99bce8', null, '1', '1ec5d3c945de40469595c85955196e76', null);
INSERT INTO `aos_sys_dic` VALUES ('c1c92ade06b94969b2b066184845781c', '6', '禁用', null, '1', '2794338c8b4946b99c361dae80da71b1', null);
INSERT INTO `aos_sys_dic` VALUES ('c20e301598954f0ab33445680ca1db27', 'gray', '#F0F0F0', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null);
INSERT INTO `aos_sys_dic` VALUES ('c38ebb4d102440babfde6f6f8fbf5d00', '2', '办结', null, '1', '48062fd856f14794b03ceba2a1d6b60e', null);
INSERT INTO `aos_sys_dic` VALUES ('c3e008a5ba864e21b5a66230e389926c', '1', '行政部门', null, '1', '58b28eade8604dffa7c531b7b42af2fa', null);
INSERT INTO `aos_sys_dic` VALUES ('cab329d4831642a3a42148c691cab443', '1', '例行检查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null);
INSERT INTO `aos_sys_dic` VALUES ('cc53b6f6235f413db559f4a7e7ba88e6', '1', '运行中', null, '1', 'a06eb2af650444db903c945030334b12', null);
INSERT INTO `aos_sys_dic` VALUES ('cc8d6e844c3c46e0bfc973ef51dcb4a3', 'neptune', '#D0DDF2', null, '1', '3146aefcb39344cebe6e0a9baa7a4a48', null);
INSERT INTO `aos_sys_dic` VALUES ('cd08dff488454293bc8aa8224eb719cb', 'password', 'realtest6', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库用户密码');
INSERT INTO `aos_sys_dic` VALUES ('cde729266d09465ca624939dc05e6b4d', '2', 'UUID', null, '1', '2a9ac1749d224bef924cd258bf35254a', null);
INSERT INTO `aos_sys_dic` VALUES ('ce49529f302f446d8e6e4576578ad459', '3', '注册用户', null, '1', '0475e71c145f49acbe781b2e7310ab64', null);
INSERT INTO `aos_sys_dic` VALUES ('d93b044fec9941cd87ec8260fab2c9b9', 'gray', '#888888', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null);
INSERT INTO `aos_sys_dic` VALUES ('dbb1b8afd73948aea5df13876b1f4c29', '2', '已完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null);
INSERT INTO `aos_sys_dic` VALUES ('e81beb66246441228ba1bb17190db222', '2', '管理权限', null, '1', 'dd9f74d16be14db5b0f6d79720c8f177', null);
INSERT INTO `aos_sys_dic` VALUES ('ebe726f2cfa2434dbb7f943f6f42c3ad', '2', '超级用户', null, '1', '0475e71c145f49acbe781b2e7310ab64', null);
INSERT INTO `aos_sys_dic` VALUES ('f08565c1fd7444bcb24645e52335a1e1', '1', '快捷菜单', null, '1', 'a9fd5aa3b7654326902a94e70bccedd8', null);
INSERT INTO `aos_sys_dic` VALUES ('f1f754ae30d54e2895c32050ff4c1d3d', 'aos', 'aos.png', null, '1', 'e9e9cfc195514b05890a2249b81dfe73', null);
INSERT INTO `aos_sys_dic` VALUES ('f3b582592cb24df5b64301b5edc0a4ef', '2', '抽查', null, '1', '852946ac593e4f3fa21df7db7d21e085', null);
INSERT INTO `aos_sys_dic` VALUES ('f4108659f1f8461db381c2808b82e038', '1', '启用', null, '1', '10a113b1dd6d492dad27c8b0a0fb7efc', null);
INSERT INTO `aos_sys_dic` VALUES ('f5d18126770d42a4a6b922c3b67ed161', '1', '在线设计', null, '1', '483fb2ff35e84a42974e914851fae01a', null);
INSERT INTO `aos_sys_dic` VALUES ('f624177f00ba4f15a60a8188856b5425', '1', 'APPID', null, '1', '2a9ac1749d224bef924cd258bf35254a', null);
INSERT INTO `aos_sys_dic` VALUES ('f7b6f63fc5de469aaf90986188037516', 'neptune', '#006699', null, '1', '54e48c66b3ef4d99823ca8217a2abf43', null);
INSERT INTO `aos_sys_dic` VALUES ('f97e6ea7f6fe4f6e8b7fde75f0074e2c', '1', '缺省', null, '1', '0475e71c145f49acbe781b2e7310ab64', null);
INSERT INTO `aos_sys_dic` VALUES ('fac86f6625cb47fc8c1a4bab41dc1af4', 'ip', '127.0.0.1', null, '1', '2d977e97aacf4781836bac9f5e88ad2b', '数据库主机IP');
INSERT INTO `aos_sys_dic` VALUES ('fdd10e4dcc284a6d99fe88ce8556a2b8', '4', '已完成', null, '1', '3f77e94615ba4b93a4e5ca5ecf3c8f14', null);
INSERT INTO `aos_sys_dic` VALUES ('fedcb0e622734060a19a3d9b98e96f71', '4', '导入离线文本', null, '1', '483fb2ff35e84a42974e914851fae01a', null);

-- ----------------------------
-- Table structure for `aos_sys_dic_index`
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
-- Records of aos_sys_dic_index
-- ----------------------------
INSERT INTO `aos_sys_dic_index` VALUES ('0475e71c145f49acbe781b2e7310ab64', 'user_type_', '用户类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('0744eedeaaa143afa499254866aa75c9', 'user_status_', '用户状态', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('10a113b1dd6d492dad27c8b0a0fb7efc', 'enabled_', '使能状态', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', '');
INSERT INTO `aos_sys_dic_index` VALUES ('1ec5d3c945de40469595c85955196e76', 'cmp_border_color_', '组件边框颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('21136c3dc660464d92fccd66408e149b', 'icon_type_', '图标类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('2724924f1cdd48d1aa1a84cb7dd9b3ee', 'card_type_', '信用卡类型', null, '8d6c9869e8b2427cb16cf3f4777bf236', '0.002.007', null);
INSERT INTO `aos_sys_dic_index` VALUES ('2794338c8b4946b99c361dae80da71b1', 'cmp_grant_type_', '界面元素授权类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', '');
INSERT INTO `aos_sys_dic_index` VALUES ('2a9ac1749d224bef924cd258bf35254a', 'sequence_type_', 'ID类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', '');
INSERT INTO `aos_sys_dic_index` VALUES ('2c90ab6212f44b08a1d8ed527c72795f', 'procdef_suspension_state_', '流程定义活动状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', '');
INSERT INTO `aos_sys_dic_index` VALUES ('2d977e97aacf4781836bac9f5e88ad2b', 'webide_jdbc', 'WebIDE模块使用的JDBC连接', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', 'WebIDE模块使用的JDBC连接。');
INSERT INTO `aos_sys_dic_index` VALUES ('3146aefcb39344cebe6e0a9baa7a4a48', 'south_back_color_', '主页面south区域背景颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('33a73af4b729448b91c13acf4d0a31e1', 'is_show_top_nav_', '是否显示顶部导航条', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '是否显示水平导航条。(只有在导航模式为1的情况，此设置才有效,导航模式为2，则水平导航条不会消失)。可选值：true| false。');
INSERT INTO `aos_sys_dic_index` VALUES ('38841cd4f85f4ffb8c07c74650a130dc', 'page_type_', '页面类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('3ba3a682c2ac4d52982411dd045fae32', 'skin_', '界面皮肤', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '');
INSERT INTO `aos_sys_dic_index` VALUES ('3f77e94615ba4b93a4e5ca5ecf3c8f14', 'realss_checkjob_status', '检查任务状态', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null);
INSERT INTO `aos_sys_dic_index` VALUES ('48062fd856f14794b03ceba2a1d6b60e', 'proctask_status_', '任务状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('483fb2ff35e84a42974e914851fae01a', 'create_type_', '流程模型创建方式', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', '业务流程模型创建方式');
INSERT INTO `aos_sys_dic_index` VALUES ('4c2a12d3890a449fa91521a29a3c2436', 'nav_tab_index_', '导航缺省活动页', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('54e48c66b3ef4d99823ca8217a2abf43', 'main_text_color_', '边界区域字体主颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('58b28eade8604dffa7c531b7b42af2fa', 'org_type_', '组织类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('61fd319a23b04bd1bdbce7037002976a', 'nav_text_color_', '导航文字颜色', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('79004d064e954e55b832a8a9a4332576', 'post_type_', '岗位类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('7d048854ccdc4eab996dcb703722065b', 'page_el_type_', '页面元素类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('852946ac593e4f3fa21df7db7d21e085', 'job_type_', '检查任务类型', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null);
INSERT INTO `aos_sys_dic_index` VALUES ('91bc8a695b744b27ba66a94561fd6dbc', 'bool_', '是否布尔值字典', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', '');
INSERT INTO `aos_sys_dic_index` VALUES ('a06eb2af650444db903c945030334b12', 'procinst_status_', '流程实例状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('a19ac2af964c4a6e8af9c6f1c0d2673f', 'navbar_btn_style_', '顶部导航条按钮风格', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('a44dd9bbf55041368882e88821309355', 'theme_', '系统主题', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '');
INSERT INTO `aos_sys_dic_index` VALUES ('a9fd5aa3b7654326902a94e70bccedd8', 'module_user_nav_type', '导航菜单类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', '');
INSERT INTO `aos_sys_dic_index` VALUES ('c66f06c069224241a4785e77d1406f9c', 'delegation_', '委派状态', null, '38368661c53c40b6824869a0ccffad05', '0.002.001.001', '流程任务的委派代理状态');
INSERT INTO `aos_sys_dic_index` VALUES ('cfcbc48fd8ad42678a52334bac8aa299', 'role_type_', '角色类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('dd9f74d16be14db5b0f6d79720c8f177', 'grant_type_', '权限类型', null, '4018a2217b0542059a26ecf3f605d60f', '0.002.001', null);
INSERT INTO `aos_sys_dic_index` VALUES ('e9e9cfc195514b05890a2249b81dfe73', 'north_back_img_', '主页面north区域背景图片', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('f59d8693d8cf4f10850914e09ae9b93c', 'sex_', '性别', null, 'aa3082ab67e24d8b884bc4504d3d9945', '0.002.002', null);
INSERT INTO `aos_sys_dic_index` VALUES ('fa8097dd670643f9a03722c4074ecba5', 'left_logo_', 'Banner左边logo图标', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', null);
INSERT INTO `aos_sys_dic_index` VALUES ('ffc94f2b7ad14c78b14c46f8fab17543', 'nav_quick_layout_', '快捷菜单布局风格', null, 'c0c43dea5ab6419dad37e459213d7bb5', '0.002.006', '快捷菜单布局风格。');

-- ----------------------------
-- Table structure for `aos_sys_icon`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_icon`;
CREATE TABLE `aos_sys_icon` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `name_` varchar(255) NOT NULL COMMENT '名称',
  `type_` varchar(255) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_icon_ukey` (`name_`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='图标大全';

-- ----------------------------
-- Records of aos_sys_icon
-- ----------------------------
INSERT INTO `aos_sys_icon` VALUES ('2904', '10.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2905', '11.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2906', '13.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2907', '14.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2908', '15.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2909', '17.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2910', '19.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2911', '2.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2912', '21.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2913', '22.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2914', '23.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2915', '24.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2916', '25.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2917', '26.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2918', '28.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2919', '3.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2920', '30.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2921', '32.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2922', '34.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2923', '35.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2924', '36.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2925', '37.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2926', '38.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2927', '39.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2928', '4.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2929', '40.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2930', '41.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2931', '42.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2932', '43.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2933', '44.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2934', '45.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2935', '46.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2936', '47.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2937', '48.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2938', '49.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2939', '5.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2940', '51.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2941', '52.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2942', '53.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2943', '54.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2944', '55.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2945', '56.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2946', '6.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2947', '7.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2948', '8.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('2949', '9.png', '2');
INSERT INTO `aos_sys_icon` VALUES ('10047', 'add.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10048', 'add2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10049', 'against.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10050', 'agree.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10051', 'app_columns.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10052', 'app_list.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10053', 'bars.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10054', 'basket.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10055', 'book.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10056', 'book_user.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10057', 'bug.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10058', 'bullet_black.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10059', 'bullet_blue.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10060', 'bullet_green.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10061', 'bullet_group.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10062', 'bullet_group2.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10063', 'bullet_group3.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10064', 'bullet_group4.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10065', 'bullet_purple.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10066', 'bullet_red.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10067', 'bullet_yellow.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10068', 'chart_curve.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10069', 'chart_flipped.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10070', 'chart_line.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10071', 'chart_pie.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10072', 'close.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10073', 'close2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10074', 'config.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10075', 'config1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10076', 'config3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10077', 'connect.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10078', 'copy.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10079', 'cut.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10080', 'cv.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10081', 'c_key.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10082', 'database.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10083', 'database_add.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10084', 'del.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10085', 'del1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10086', 'del2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10087', 'del_folder.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10088', 'del_page.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10089', 'detail.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10090', 'disconnect.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10091', 'doc_ok.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10092', 'down.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10093', 'down_left.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10094', 'down_right.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10095', 'edit.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10096', 'edit2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10097', 'email.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10098', 'email2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10099', 'email3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10100', 'email_go.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10101', 'email_open.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('827', 'fa-adjust', '3');
INSERT INTO `aos_sys_icon` VALUES ('1096', 'fa-adn', '3');
INSERT INTO `aos_sys_icon` VALUES ('817', 'fa-align-center', '3');
INSERT INTO `aos_sys_icon` VALUES ('819', 'fa-align-justify', '3');
INSERT INTO `aos_sys_icon` VALUES ('816', 'fa-align-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('818', 'fa-align-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('987', 'fa-ambulance', '3');
INSERT INTO `aos_sys_icon` VALUES ('1049', 'fa-anchor', '3');
INSERT INTO `aos_sys_icon` VALUES ('1107', 'fa-android', '3');
INSERT INTO `aos_sys_icon` VALUES ('1240', 'fa-angellist', '3');
INSERT INTO `aos_sys_icon` VALUES ('996', 'fa-angle-double-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('993', 'fa-angle-double-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('994', 'fa-angle-double-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('995', 'fa-angle-double-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1000', 'fa-angle-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('997', 'fa-angle-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('998', 'fa-angle-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('999', 'fa-angle-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1105', 'fa-apple', '3');
INSERT INTO `aos_sys_icon` VALUES ('1118', 'fa-archive', '3');
INSERT INTO `aos_sys_icon` VALUES ('1230', 'fa-area-chart', '3');
INSERT INTO `aos_sys_icon` VALUES ('926', 'fa-arrow-circle-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('923', 'fa-arrow-circle-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('790', 'fa-arrow-circle-o-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('1126', 'fa-arrow-circle-o-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('1125', 'fa-arrow-circle-o-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('791', 'fa-arrow-circle-o-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('924', 'fa-arrow-circle-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('925', 'fa-arrow-circle-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('858', 'fa-arrow-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('855', 'fa-arrow-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('856', 'fa-arrow-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('857', 'fa-arrow-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('832', 'fa-arrows', '3');
INSERT INTO `aos_sys_icon` VALUES ('932', 'fa-arrows-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('884', 'fa-arrows-h', '3');
INSERT INTO `aos_sys_icon` VALUES ('883', 'fa-arrows-v', '3');
INSERT INTO `aos_sys_icon` VALUES ('864', 'fa-asterisk', '3');
INSERT INTO `aos_sys_icon` VALUES ('1226', 'fa-at', '3');
INSERT INTO `aos_sys_icon` VALUES ('835', 'fa-backward', '3');
INSERT INTO `aos_sys_icon` VALUES ('854', 'fa-ban', '3');
INSERT INTO `aos_sys_icon` VALUES ('885', 'fa-bar-chart', '3');
INSERT INTO `aos_sys_icon` VALUES ('804', 'fa-barcode', '3');
INSERT INTO `aos_sys_icon` VALUES ('942', 'fa-bars', '3');
INSERT INTO `aos_sys_icon` VALUES ('990', 'fa-beer', '3');
INSERT INTO `aos_sys_icon` VALUES ('1160', 'fa-behance', '3');
INSERT INTO `aos_sys_icon` VALUES ('1161', 'fa-behance-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('917', 'fa-bell', '3');
INSERT INTO `aos_sys_icon` VALUES ('981', 'fa-bell-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1222', 'fa-bell-slash', '3');
INSERT INTO `aos_sys_icon` VALUES ('1223', 'fa-bell-slash-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1237', 'fa-bicycle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1206', 'fa-binoculars', '3');
INSERT INTO `aos_sys_icon` VALUES ('1229', 'fa-birthday-cake', '3');
INSERT INTO `aos_sys_icon` VALUES ('1097', 'fa-bitbucket', '3');
INSERT INTO `aos_sys_icon` VALUES ('1098', 'fa-bitbucket-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('812', 'fa-bold', '3');
INSERT INTO `aos_sys_icon` VALUES ('970', 'fa-bolt', '3');
INSERT INTO `aos_sys_icon` VALUES ('1203', 'fa-bomb', '3');
INSERT INTO `aos_sys_icon` VALUES ('807', 'fa-book', '3');
INSERT INTO `aos_sys_icon` VALUES ('808', 'fa-bookmark', '3');
INSERT INTO `aos_sys_icon` VALUES ('907', 'fa-bookmark-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('931', 'fa-briefcase', '3');
INSERT INTO `aos_sys_icon` VALUES ('1076', 'fa-btc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1119', 'fa-bug', '3');
INSERT INTO `aos_sys_icon` VALUES ('1154', 'fa-building', '3');
INSERT INTO `aos_sys_icon` VALUES ('985', 'fa-building-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('916', 'fa-bullhorn', '3');
INSERT INTO `aos_sys_icon` VALUES ('1051', 'fa-bullseye', '3');
INSERT INTO `aos_sys_icon` VALUES ('1238', 'fa-bus', '3');
INSERT INTO `aos_sys_icon` VALUES ('1213', 'fa-calculator', '3');
INSERT INTO `aos_sys_icon` VALUES ('873', 'fa-calendar', '3');
INSERT INTO `aos_sys_icon` VALUES ('1039', 'fa-calendar-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('810', 'fa-camera', '3');
INSERT INTO `aos_sys_icon` VALUES ('888', 'fa-camera-retro', '3');
INSERT INTO `aos_sys_icon` VALUES ('1165', 'fa-car', '3');
INSERT INTO `aos_sys_icon` VALUES ('955', 'fa-caret-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('957', 'fa-caret-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('958', 'fa-caret-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('1066', 'fa-caret-square-o-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('1127', 'fa-caret-square-o-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('1068', 'fa-caret-square-o-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('1067', 'fa-caret-square-o-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('956', 'fa-caret-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1241', 'fa-cc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1219', 'fa-cc-amex', '3');
INSERT INTO `aos_sys_icon` VALUES ('1218', 'fa-cc-discover', '3');
INSERT INTO `aos_sys_icon` VALUES ('1217', 'fa-cc-mastercard', '3');
INSERT INTO `aos_sys_icon` VALUES ('1220', 'fa-cc-paypal', '3');
INSERT INTO `aos_sys_icon` VALUES ('1221', 'fa-cc-stripe', '3');
INSERT INTO `aos_sys_icon` VALUES ('1216', 'fa-cc-visa', '3');
INSERT INTO `aos_sys_icon` VALUES ('918', 'fa-certificate', '3');
INSERT INTO `aos_sys_icon` VALUES ('1028', 'fa-chain-broken', '3');
INSERT INTO `aos_sys_icon` VALUES ('777', 'fa-check', '3');
INSERT INTO `aos_sys_icon` VALUES ('848', 'fa-check-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('853', 'fa-check-circle-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1061', 'fa-check-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('831', 'fa-check-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1046', 'fa-chevron-circle-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('1043', 'fa-chevron-circle-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('1044', 'fa-chevron-circle-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('1045', 'fa-chevron-circle-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('878', 'fa-chevron-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('843', 'fa-chevron-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('844', 'fa-chevron-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('877', 'fa-chevron-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1155', 'fa-child', '3');
INSERT INTO `aos_sys_icon` VALUES ('1009', 'fa-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1005', 'fa-circle-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1185', 'fa-circle-o-notch', '3');
INSERT INTO `aos_sys_icon` VALUES ('1197', 'fa-circle-thin', '3');
INSERT INTO `aos_sys_icon` VALUES ('973', 'fa-clipboard', '3');
INSERT INTO `aos_sys_icon` VALUES ('787', 'fa-clock-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('935', 'fa-cloud', '3');
INSERT INTO `aos_sys_icon` VALUES ('976', 'fa-cloud-download', '3');
INSERT INTO `aos_sys_icon` VALUES ('977', 'fa-cloud-upload', '3');
INSERT INTO `aos_sys_icon` VALUES ('1022', 'fa-code', '3');
INSERT INTO `aos_sys_icon` VALUES ('1027', 'fa-code-fork', '3');
INSERT INTO `aos_sys_icon` VALUES ('1182', 'fa-codepen', '3');
INSERT INTO `aos_sys_icon` VALUES ('982', 'fa-coffee', '3');
INSERT INTO `aos_sys_icon` VALUES ('783', 'fa-cog', '3');
INSERT INTO `aos_sys_icon` VALUES ('890', 'fa-cogs', '3');
INSERT INTO `aos_sys_icon` VALUES ('959', 'fa-columns', '3');
INSERT INTO `aos_sys_icon` VALUES ('875', 'fa-comment', '3');
INSERT INTO `aos_sys_icon` VALUES ('968', 'fa-comment-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('891', 'fa-comments', '3');
INSERT INTO `aos_sys_icon` VALUES ('969', 'fa-comments-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1065', 'fa-compass', '3');
INSERT INTO `aos_sys_icon` VALUES ('861', 'fa-compress', '3');
INSERT INTO `aos_sys_icon` VALUES ('1225', 'fa-copyright', '3');
INSERT INTO `aos_sys_icon` VALUES ('913', 'fa-credit-card', '3');
INSERT INTO `aos_sys_icon` VALUES ('1026', 'fa-crop', '3');
INSERT INTO `aos_sys_icon` VALUES ('851', 'fa-crosshairs', '3');
INSERT INTO `aos_sys_icon` VALUES ('1048', 'fa-css3', '3');
INSERT INTO `aos_sys_icon` VALUES ('1158', 'fa-cube', '3');
INSERT INTO `aos_sys_icon` VALUES ('1159', 'fa-cubes', '3');
INSERT INTO `aos_sys_icon` VALUES ('983', 'fa-cutlery', '3');
INSERT INTO `aos_sys_icon` VALUES ('1171', 'fa-database', '3');
INSERT INTO `aos_sys_icon` VALUES ('1146', 'fa-delicious', '3');
INSERT INTO `aos_sys_icon` VALUES ('1001', 'fa-desktop', '3');
INSERT INTO `aos_sys_icon` VALUES ('1169', 'fa-deviantart', '3');
INSERT INTO `aos_sys_icon` VALUES ('1147', 'fa-digg', '3');
INSERT INTO `aos_sys_icon` VALUES ('1128', 'fa-dot-circle-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('789', 'fa-download', '3');
INSERT INTO `aos_sys_icon` VALUES ('1109', 'fa-dribbble', '3');
INSERT INTO `aos_sys_icon` VALUES ('1092', 'fa-dropbox', '3');
INSERT INTO `aos_sys_icon` VALUES ('1150', 'fa-drupal', '3');
INSERT INTO `aos_sys_icon` VALUES ('842', 'fa-eject', '3');
INSERT INTO `aos_sys_icon` VALUES ('1052', 'fa-ellipsis-h', '3');
INSERT INTO `aos_sys_icon` VALUES ('1053', 'fa-ellipsis-v', '3');
INSERT INTO `aos_sys_icon` VALUES ('1187', 'fa-empire', '3');
INSERT INTO `aos_sys_icon` VALUES ('963', 'fa-envelope', '3');
INSERT INTO `aos_sys_icon` VALUES ('768', 'fa-envelope-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1135', 'fa-envelope-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1034', 'fa-eraser', '3');
INSERT INTO `aos_sys_icon` VALUES ('1069', 'fa-eur', '3');
INSERT INTO `aos_sys_icon` VALUES ('975', 'fa-exchange', '3');
INSERT INTO `aos_sys_icon` VALUES ('1031', 'fa-exclamation', '3');
INSERT INTO `aos_sys_icon` VALUES ('865', 'fa-exclamation-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('871', 'fa-exclamation-triangle', '3');
INSERT INTO `aos_sys_icon` VALUES ('860', 'fa-expand', '3');
INSERT INTO `aos_sys_icon` VALUES ('899', 'fa-external-link', '3');
INSERT INTO `aos_sys_icon` VALUES ('1063', 'fa-external-link-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('869', 'fa-eye', '3');
INSERT INTO `aos_sys_icon` VALUES ('870', 'fa-eye-slash', '3');
INSERT INTO `aos_sys_icon` VALUES ('1227', 'fa-eyedropper', '3');
INSERT INTO `aos_sys_icon` VALUES ('910', 'fa-facebook', '3');
INSERT INTO `aos_sys_icon` VALUES ('887', 'fa-facebook-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('834', 'fa-fast-backward', '3');
INSERT INTO `aos_sys_icon` VALUES ('840', 'fa-fast-forward', '3');
INSERT INTO `aos_sys_icon` VALUES ('1153', 'fa-fax', '3');
INSERT INTO `aos_sys_icon` VALUES ('1113', 'fa-female', '3');
INSERT INTO `aos_sys_icon` VALUES ('989', 'fa-fighter-jet', '3');
INSERT INTO `aos_sys_icon` VALUES ('1077', 'fa-file', '3');
INSERT INTO `aos_sys_icon` VALUES ('1177', 'fa-file-archive-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1178', 'fa-file-audio-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1180', 'fa-file-code-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1174', 'fa-file-excel-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1176', 'fa-file-image-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('786', 'fa-file-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1172', 'fa-file-pdf-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1175', 'fa-file-powerpoint-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1078', 'fa-file-text', '3');
INSERT INTO `aos_sys_icon` VALUES ('984', 'fa-file-text-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1179', 'fa-file-video-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1173', 'fa-file-word-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('938', 'fa-files-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('773', 'fa-film', '3');
INSERT INTO `aos_sys_icon` VALUES ('930', 'fa-filter', '3');
INSERT INTO `aos_sys_icon` VALUES ('868', 'fa-fire', '3');
INSERT INTO `aos_sys_icon` VALUES ('1040', 'fa-fire-extinguisher', '3');
INSERT INTO `aos_sys_icon` VALUES ('798', 'fa-flag', '3');
INSERT INTO `aos_sys_icon` VALUES ('1020', 'fa-flag-checkered', '3');
INSERT INTO `aos_sys_icon` VALUES ('1019', 'fa-flag-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('936', 'fa-flask', '3');
INSERT INTO `aos_sys_icon` VALUES ('1095', 'fa-flickr', '3');
INSERT INTO `aos_sys_icon` VALUES ('940', 'fa-floppy-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('881', 'fa-folder', '3');
INSERT INTO `aos_sys_icon` VALUES ('1012', 'fa-folder-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('882', 'fa-folder-open', '3');
INSERT INTO `aos_sys_icon` VALUES ('1013', 'fa-folder-open-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('811', 'fa-font', '3');
INSERT INTO `aos_sys_icon` VALUES ('839', 'fa-forward', '3');
INSERT INTO `aos_sys_icon` VALUES ('1111', 'fa-foursquare', '3');
INSERT INTO `aos_sys_icon` VALUES ('1015', 'fa-frown-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1204', 'fa-futbol-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1017', 'fa-gamepad', '3');
INSERT INTO `aos_sys_icon` VALUES ('966', 'fa-gavel', '3');
INSERT INTO `aos_sys_icon` VALUES ('1070', 'fa-gbp', '3');
INSERT INTO `aos_sys_icon` VALUES ('866', 'fa-gift', '3');
INSERT INTO `aos_sys_icon` VALUES ('1189', 'fa-git', '3');
INSERT INTO `aos_sys_icon` VALUES ('1188', 'fa-git-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('911', 'fa-github', '3');
INSERT INTO `aos_sys_icon` VALUES ('1011', 'fa-github-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('902', 'fa-github-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1115', 'fa-gittip', '3');
INSERT INTO `aos_sys_icon` VALUES ('765', 'fa-glass', '3');
INSERT INTO `aos_sys_icon` VALUES ('927', 'fa-globe', '3');
INSERT INTO `aos_sys_icon` VALUES ('1141', 'fa-google', '3');
INSERT INTO `aos_sys_icon` VALUES ('953', 'fa-google-plus', '3');
INSERT INTO `aos_sys_icon` VALUES ('952', 'fa-google-plus-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1215', 'fa-google-wallet', '3');
INSERT INTO `aos_sys_icon` VALUES ('1139', 'fa-graduation-cap', '3');
INSERT INTO `aos_sys_icon` VALUES ('991', 'fa-h-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1190', 'fa-hacker-news', '3');
INSERT INTO `aos_sys_icon` VALUES ('922', 'fa-hand-o-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('920', 'fa-hand-o-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('919', 'fa-hand-o-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('921', 'fa-hand-o-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('915', 'fa-hdd-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1198', 'fa-header', '3');
INSERT INTO `aos_sys_icon` VALUES ('799', 'fa-headphones', '3');
INSERT INTO `aos_sys_icon` VALUES ('769', 'fa-heart', '3');
INSERT INTO `aos_sys_icon` VALUES ('895', 'fa-heart-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1196', 'fa-history', '3');
INSERT INTO `aos_sys_icon` VALUES ('785', 'fa-home', '3');
INSERT INTO `aos_sys_icon` VALUES ('986', 'fa-hospital-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1047', 'fa-html5', '3');
INSERT INTO `aos_sys_icon` VALUES ('1242', 'fa-ils', '3');
INSERT INTO `aos_sys_icon` VALUES ('792', 'fa-inbox', '3');
INSERT INTO `aos_sys_icon` VALUES ('822', 'fa-indent', '3');
INSERT INTO `aos_sys_icon` VALUES ('1030', 'fa-info', '3');
INSERT INTO `aos_sys_icon` VALUES ('850', 'fa-info-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1072', 'fa-inr', '3');
INSERT INTO `aos_sys_icon` VALUES ('1094', 'fa-instagram', '3');
INSERT INTO `aos_sys_icon` VALUES ('1239', 'fa-ioxhost', '3');
INSERT INTO `aos_sys_icon` VALUES ('813', 'fa-italic', '3');
INSERT INTO `aos_sys_icon` VALUES ('1151', 'fa-joomla', '3');
INSERT INTO `aos_sys_icon` VALUES ('1073', 'fa-jpy', '3');
INSERT INTO `aos_sys_icon` VALUES ('1183', 'fa-jsfiddle', '3');
INSERT INTO `aos_sys_icon` VALUES ('889', 'fa-key', '3');
INSERT INTO `aos_sys_icon` VALUES ('1018', 'fa-keyboard-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1075', 'fa-krw', '3');
INSERT INTO `aos_sys_icon` VALUES ('1152', 'fa-language', '3');
INSERT INTO `aos_sys_icon` VALUES ('1002', 'fa-laptop', '3');
INSERT INTO `aos_sys_icon` VALUES ('1233', 'fa-lastfm', '3');
INSERT INTO `aos_sys_icon` VALUES ('1234', 'fa-lastfm-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('867', 'fa-leaf', '3');
INSERT INTO `aos_sys_icon` VALUES ('904', 'fa-lemon-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1060', 'fa-level-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('1059', 'fa-level-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1184', 'fa-life-ring', '3');
INSERT INTO `aos_sys_icon` VALUES ('974', 'fa-lightbulb-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1232', 'fa-line-chart', '3');
INSERT INTO `aos_sys_icon` VALUES ('934', 'fa-link', '3');
INSERT INTO `aos_sys_icon` VALUES ('964', 'fa-linkedin', '3');
INSERT INTO `aos_sys_icon` VALUES ('897', 'fa-linkedin-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1108', 'fa-linux', '3');
INSERT INTO `aos_sys_icon` VALUES ('820', 'fa-list', '3');
INSERT INTO `aos_sys_icon` VALUES ('796', 'fa-list-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('944', 'fa-list-ol', '3');
INSERT INTO `aos_sys_icon` VALUES ('943', 'fa-list-ul', '3');
INSERT INTO `aos_sys_icon` VALUES ('1025', 'fa-location-arrow', '3');
INSERT INTO `aos_sys_icon` VALUES ('797', 'fa-lock', '3');
INSERT INTO `aos_sys_icon` VALUES ('1101', 'fa-long-arrow-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('1103', 'fa-long-arrow-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('1104', 'fa-long-arrow-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('1102', 'fa-long-arrow-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('948', 'fa-magic', '3');
INSERT INTO `aos_sys_icon` VALUES ('876', 'fa-magnet', '3');
INSERT INTO `aos_sys_icon` VALUES ('1114', 'fa-male', '3');
INSERT INTO `aos_sys_icon` VALUES ('826', 'fa-map-marker', '3');
INSERT INTO `aos_sys_icon` VALUES ('1042', 'fa-maxcdn', '3');
INSERT INTO `aos_sys_icon` VALUES ('1243', 'fa-meanpath', '3');
INSERT INTO `aos_sys_icon` VALUES ('988', 'fa-medkit', '3');
INSERT INTO `aos_sys_icon` VALUES ('1016', 'fa-meh-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1036', 'fa-microphone', '3');
INSERT INTO `aos_sys_icon` VALUES ('1037', 'fa-microphone-slash', '3');
INSERT INTO `aos_sys_icon` VALUES ('863', 'fa-minus', '3');
INSERT INTO `aos_sys_icon` VALUES ('846', 'fa-minus-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1057', 'fa-minus-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1058', 'fa-minus-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1004', 'fa-mobile', '3');
INSERT INTO `aos_sys_icon` VALUES ('954', 'fa-money', '3');
INSERT INTO `aos_sys_icon` VALUES ('1117', 'fa-moon-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('766', 'fa-music', '3');
INSERT INTO `aos_sys_icon` VALUES ('1211', 'fa-newspaper-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1137', 'fa-openid', '3');
INSERT INTO `aos_sys_icon` VALUES ('821', 'fa-outdent', '3');
INSERT INTO `aos_sys_icon` VALUES ('1123', 'fa-pagelines', '3');
INSERT INTO `aos_sys_icon` VALUES ('1228', 'fa-paint-brush', '3');
INSERT INTO `aos_sys_icon` VALUES ('1194', 'fa-paper-plane', '3');
INSERT INTO `aos_sys_icon` VALUES ('1195', 'fa-paper-plane-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('939', 'fa-paperclip', '3');
INSERT INTO `aos_sys_icon` VALUES ('1199', 'fa-paragraph', '3');
INSERT INTO `aos_sys_icon` VALUES ('837', 'fa-pause', '3');
INSERT INTO `aos_sys_icon` VALUES ('1156', 'fa-paw', '3');
INSERT INTO `aos_sys_icon` VALUES ('1214', 'fa-paypal', '3');
INSERT INTO `aos_sys_icon` VALUES ('825', 'fa-pencil', '3');
INSERT INTO `aos_sys_icon` VALUES ('1062', 'fa-pencil-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('829', 'fa-pencil-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('905', 'fa-phone', '3');
INSERT INTO `aos_sys_icon` VALUES ('908', 'fa-phone-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('824', 'fa-picture-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1231', 'fa-pie-chart', '3');
INSERT INTO `aos_sys_icon` VALUES ('1148', 'fa-pied-piper', '3');
INSERT INTO `aos_sys_icon` VALUES ('1149', 'fa-pied-piper-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('950', 'fa-pinterest', '3');
INSERT INTO `aos_sys_icon` VALUES ('951', 'fa-pinterest-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('872', 'fa-plane', '3');
INSERT INTO `aos_sys_icon` VALUES ('836', 'fa-play', '3');
INSERT INTO `aos_sys_icon` VALUES ('1055', 'fa-play-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('793', 'fa-play-circle-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1207', 'fa-plug', '3');
INSERT INTO `aos_sys_icon` VALUES ('862', 'fa-plus', '3');
INSERT INTO `aos_sys_icon` VALUES ('845', 'fa-plus-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('992', 'fa-plus-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1132', 'fa-plus-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('781', 'fa-power-off', '3');
INSERT INTO `aos_sys_icon` VALUES ('809', 'fa-print', '3');
INSERT INTO `aos_sys_icon` VALUES ('1035', 'fa-puzzle-piece', '3');
INSERT INTO `aos_sys_icon` VALUES ('1192', 'fa-qq', '3');
INSERT INTO `aos_sys_icon` VALUES ('803', 'fa-qrcode', '3');
INSERT INTO `aos_sys_icon` VALUES ('1029', 'fa-question', '3');
INSERT INTO `aos_sys_icon` VALUES ('849', 'fa-question-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1006', 'fa-quote-left', '3');
INSERT INTO `aos_sys_icon` VALUES ('1007', 'fa-quote-right', '3');
INSERT INTO `aos_sys_icon` VALUES ('874', 'fa-random', '3');
INSERT INTO `aos_sys_icon` VALUES ('1186', 'fa-rebel', '3');
INSERT INTO `aos_sys_icon` VALUES ('1164', 'fa-recycle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1142', 'fa-reddit', '3');
INSERT INTO `aos_sys_icon` VALUES ('1143', 'fa-reddit-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('795', 'fa-refresh', '3');
INSERT INTO `aos_sys_icon` VALUES ('1122', 'fa-renren', '3');
INSERT INTO `aos_sys_icon` VALUES ('794', 'fa-repeat', '3');
INSERT INTO `aos_sys_icon` VALUES ('1010', 'fa-reply', '3');
INSERT INTO `aos_sys_icon` VALUES ('1023', 'fa-reply-all', '3');
INSERT INTO `aos_sys_icon` VALUES ('879', 'fa-retweet', '3');
INSERT INTO `aos_sys_icon` VALUES ('788', 'fa-road', '3');
INSERT INTO `aos_sys_icon` VALUES ('1041', 'fa-rocket', '3');
INSERT INTO `aos_sys_icon` VALUES ('914', 'fa-rss', '3');
INSERT INTO `aos_sys_icon` VALUES ('1054', 'fa-rss-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1074', 'fa-rub', '3');
INSERT INTO `aos_sys_icon` VALUES ('937', 'fa-scissors', '3');
INSERT INTO `aos_sys_icon` VALUES ('767', 'fa-search', '3');
INSERT INTO `aos_sys_icon` VALUES ('780', 'fa-search-minus', '3');
INSERT INTO `aos_sys_icon` VALUES ('779', 'fa-search-plus', '3');
INSERT INTO `aos_sys_icon` VALUES ('859', 'fa-share', '3');
INSERT INTO `aos_sys_icon` VALUES ('1201', 'fa-share-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('1202', 'fa-share-alt-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1064', 'fa-share-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('830', 'fa-share-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1038', 'fa-shield', '3');
INSERT INTO `aos_sys_icon` VALUES ('880', 'fa-shopping-cart', '3');
INSERT INTO `aos_sys_icon` VALUES ('900', 'fa-sign-in', '3');
INSERT INTO `aos_sys_icon` VALUES ('896', 'fa-sign-out', '3');
INSERT INTO `aos_sys_icon` VALUES ('782', 'fa-signal', '3');
INSERT INTO `aos_sys_icon` VALUES ('971', 'fa-sitemap', '3');
INSERT INTO `aos_sys_icon` VALUES ('1110', 'fa-skype', '3');
INSERT INTO `aos_sys_icon` VALUES ('1134', 'fa-slack', '3');
INSERT INTO `aos_sys_icon` VALUES ('1200', 'fa-sliders', '3');
INSERT INTO `aos_sys_icon` VALUES ('1208', 'fa-slideshare', '3');
INSERT INTO `aos_sys_icon` VALUES ('1014', 'fa-smile-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('960', 'fa-sort', '3');
INSERT INTO `aos_sys_icon` VALUES ('1079', 'fa-sort-alpha-asc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1080', 'fa-sort-alpha-desc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1081', 'fa-sort-amount-asc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1082', 'fa-sort-amount-desc', '3');
INSERT INTO `aos_sys_icon` VALUES ('962', 'fa-sort-asc', '3');
INSERT INTO `aos_sys_icon` VALUES ('961', 'fa-sort-desc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1083', 'fa-sort-numeric-asc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1084', 'fa-sort-numeric-desc', '3');
INSERT INTO `aos_sys_icon` VALUES ('1170', 'fa-soundcloud', '3');
INSERT INTO `aos_sys_icon` VALUES ('1133', 'fa-space-shuttle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1008', 'fa-spinner', '3');
INSERT INTO `aos_sys_icon` VALUES ('1157', 'fa-spoon', '3');
INSERT INTO `aos_sys_icon` VALUES ('1168', 'fa-spotify', '3');
INSERT INTO `aos_sys_icon` VALUES ('941', 'fa-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('906', 'fa-square-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1124', 'fa-stack-exchange', '3');
INSERT INTO `aos_sys_icon` VALUES ('1093', 'fa-stack-overflow', '3');
INSERT INTO `aos_sys_icon` VALUES ('770', 'fa-star', '3');
INSERT INTO `aos_sys_icon` VALUES ('894', 'fa-star-half', '3');
INSERT INTO `aos_sys_icon` VALUES ('1024', 'fa-star-half-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('771', 'fa-star-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1162', 'fa-steam', '3');
INSERT INTO `aos_sys_icon` VALUES ('1163', 'fa-steam-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('833', 'fa-step-backward', '3');
INSERT INTO `aos_sys_icon` VALUES ('841', 'fa-step-forward', '3');
INSERT INTO `aos_sys_icon` VALUES ('979', 'fa-stethoscope', '3');
INSERT INTO `aos_sys_icon` VALUES ('838', 'fa-stop', '3');
INSERT INTO `aos_sys_icon` VALUES ('945', 'fa-strikethrough', '3');
INSERT INTO `aos_sys_icon` VALUES ('1145', 'fa-stumbleupon', '3');
INSERT INTO `aos_sys_icon` VALUES ('1144', 'fa-stumbleupon-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('1033', 'fa-subscript', '3');
INSERT INTO `aos_sys_icon` VALUES ('980', 'fa-suitcase', '3');
INSERT INTO `aos_sys_icon` VALUES ('1116', 'fa-sun-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1032', 'fa-superscript', '3');
INSERT INTO `aos_sys_icon` VALUES ('947', 'fa-table', '3');
INSERT INTO `aos_sys_icon` VALUES ('1003', 'fa-tablet', '3');
INSERT INTO `aos_sys_icon` VALUES ('967', 'fa-tachometer', '3');
INSERT INTO `aos_sys_icon` VALUES ('805', 'fa-tag', '3');
INSERT INTO `aos_sys_icon` VALUES ('806', 'fa-tags', '3');
INSERT INTO `aos_sys_icon` VALUES ('929', 'fa-tasks', '3');
INSERT INTO `aos_sys_icon` VALUES ('1166', 'fa-taxi', '3');
INSERT INTO `aos_sys_icon` VALUES ('1191', 'fa-tencent-weibo', '3');
INSERT INTO `aos_sys_icon` VALUES ('1021', 'fa-terminal', '3');
INSERT INTO `aos_sys_icon` VALUES ('814', 'fa-text-height', '3');
INSERT INTO `aos_sys_icon` VALUES ('815', 'fa-text-width', '3');
INSERT INTO `aos_sys_icon` VALUES ('775', 'fa-th', '3');
INSERT INTO `aos_sys_icon` VALUES ('774', 'fa-th-large', '3');
INSERT INTO `aos_sys_icon` VALUES ('776', 'fa-th-list', '3');
INSERT INTO `aos_sys_icon` VALUES ('898', 'fa-thumb-tack', '3');
INSERT INTO `aos_sys_icon` VALUES ('1086', 'fa-thumbs-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('893', 'fa-thumbs-o-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('892', 'fa-thumbs-o-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1085', 'fa-thumbs-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1056', 'fa-ticket', '3');
INSERT INTO `aos_sys_icon` VALUES ('778', 'fa-times', '3');
INSERT INTO `aos_sys_icon` VALUES ('847', 'fa-times-circle', '3');
INSERT INTO `aos_sys_icon` VALUES ('852', 'fa-times-circle-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('828', 'fa-tint', '3');
INSERT INTO `aos_sys_icon` VALUES ('1235', 'fa-toggle-off', '3');
INSERT INTO `aos_sys_icon` VALUES ('1236', 'fa-toggle-on', '3');
INSERT INTO `aos_sys_icon` VALUES ('1224', 'fa-trash', '3');
INSERT INTO `aos_sys_icon` VALUES ('784', 'fa-trash-o', '3');
INSERT INTO `aos_sys_icon` VALUES ('1167', 'fa-tree', '3');
INSERT INTO `aos_sys_icon` VALUES ('1112', 'fa-trello', '3');
INSERT INTO `aos_sys_icon` VALUES ('901', 'fa-trophy', '3');
INSERT INTO `aos_sys_icon` VALUES ('949', 'fa-truck', '3');
INSERT INTO `aos_sys_icon` VALUES ('1131', 'fa-try', '3');
INSERT INTO `aos_sys_icon` VALUES ('1205', 'fa-tty', '3');
INSERT INTO `aos_sys_icon` VALUES ('1099', 'fa-tumblr', '3');
INSERT INTO `aos_sys_icon` VALUES ('1100', 'fa-tumblr-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1209', 'fa-twitch', '3');
INSERT INTO `aos_sys_icon` VALUES ('909', 'fa-twitter', '3');
INSERT INTO `aos_sys_icon` VALUES ('886', 'fa-twitter-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('972', 'fa-umbrella', '3');
INSERT INTO `aos_sys_icon` VALUES ('946', 'fa-underline', '3');
INSERT INTO `aos_sys_icon` VALUES ('965', 'fa-undo', '3');
INSERT INTO `aos_sys_icon` VALUES ('1138', 'fa-university', '3');
INSERT INTO `aos_sys_icon` VALUES ('912', 'fa-unlock', '3');
INSERT INTO `aos_sys_icon` VALUES ('1050', 'fa-unlock-alt', '3');
INSERT INTO `aos_sys_icon` VALUES ('903', 'fa-upload', '3');
INSERT INTO `aos_sys_icon` VALUES ('1071', 'fa-usd', '3');
INSERT INTO `aos_sys_icon` VALUES ('772', 'fa-user', '3');
INSERT INTO `aos_sys_icon` VALUES ('978', 'fa-user-md', '3');
INSERT INTO `aos_sys_icon` VALUES ('933', 'fa-users', '3');
INSERT INTO `aos_sys_icon` VALUES ('823', 'fa-video-camera', '3');
INSERT INTO `aos_sys_icon` VALUES ('1130', 'fa-vimeo-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1181', 'fa-vine', '3');
INSERT INTO `aos_sys_icon` VALUES ('1120', 'fa-vk', '3');
INSERT INTO `aos_sys_icon` VALUES ('801', 'fa-volume-down', '3');
INSERT INTO `aos_sys_icon` VALUES ('800', 'fa-volume-off', '3');
INSERT INTO `aos_sys_icon` VALUES ('802', 'fa-volume-up', '3');
INSERT INTO `aos_sys_icon` VALUES ('1121', 'fa-weibo', '3');
INSERT INTO `aos_sys_icon` VALUES ('1193', 'fa-weixin', '3');
INSERT INTO `aos_sys_icon` VALUES ('1129', 'fa-wheelchair', '3');
INSERT INTO `aos_sys_icon` VALUES ('1212', 'fa-wifi', '3');
INSERT INTO `aos_sys_icon` VALUES ('1106', 'fa-windows', '3');
INSERT INTO `aos_sys_icon` VALUES ('1136', 'fa-wordpress', '3');
INSERT INTO `aos_sys_icon` VALUES ('928', 'fa-wrench', '3');
INSERT INTO `aos_sys_icon` VALUES ('1089', 'fa-xing', '3');
INSERT INTO `aos_sys_icon` VALUES ('1090', 'fa-xing-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('1140', 'fa-yahoo', '3');
INSERT INTO `aos_sys_icon` VALUES ('1210', 'fa-yelp', '3');
INSERT INTO `aos_sys_icon` VALUES ('1088', 'fa-youtube', '3');
INSERT INTO `aos_sys_icon` VALUES ('1091', 'fa-youtube-play', '3');
INSERT INTO `aos_sys_icon` VALUES ('1087', 'fa-youtube-square', '3');
INSERT INTO `aos_sys_icon` VALUES ('10102', 'filter.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10103', 'folder1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10104', 'folder10.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10105', 'folder11.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10106', 'folder12.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10107', 'folder13.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10108', 'folder14.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10109', 'folder15.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10110', 'folder16.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10111', 'folder17.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10112', 'folder18.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10113', 'folder19.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10114', 'folder2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10115', 'folder20.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10116', 'folder21.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10117', 'folder22.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10118', 'folder23.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10119', 'folder24.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10120', 'folder25.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10121', 'folder26.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10122', 'folder27.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10123', 'folder28.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10124', 'folder4.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10125', 'folder5.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10126', 'folder6.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10127', 'folder7.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10128', 'folder8.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10129', 'folder9.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10130', 'forward.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10131', 'freelance.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10132', 'go.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10133', 'go.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10134', 'go1.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10135', 'go1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10136', 'help.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10137', 'home.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10138', 'home.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10139', 'icon134.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10140', 'icon137.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10141', 'icon140.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10142', 'icon141.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10143', 'icon146.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10144', 'icon15.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10145', 'icon150.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10146', 'icon152.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10147', 'icon153.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10148', 'icon154.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10149', 'icon17.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10150', 'icon25.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10151', 'icon26.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10152', 'icon31.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10153', 'icon32.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10154', 'icon34.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10155', 'icon35.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10156', 'icon36.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10157', 'icon37.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10158', 'icon38.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10159', 'icon39.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10160', 'icon41.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10161', 'icon42.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10162', 'icon5.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10163', 'icon56.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10164', 'icon59.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10165', 'icon63.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10166', 'icon65.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10167', 'icon66.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10168', 'icon67.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10169', 'icon68.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10170', 'icon7.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10171', 'icon70.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10172', 'icon71.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10173', 'icon72.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10174', 'icon75.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10175', 'icon76.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10176', 'icon77.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10177', 'icon78.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10178', 'icon79.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10179', 'icon8.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10180', 'icon80.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10181', 'icon82.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10182', 'icon85.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10183', 'icon86.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10184', 'icon88.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10185', 'icon9.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10186', 'icon96.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10187', 'icon_19.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10188', 'icq.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10189', 'id.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10190', 'ins.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10191', 'jar.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10192', 'key.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10193', 'layout.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10194', 'layout2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10195', 'left.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10196', 'lightbulb.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10197', 'lock.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10198', 'lock3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10199', 'modules_wizard.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10200', 'monitor.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10201', 'node.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10202', 'ok.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10203', 'ok1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10204', 'ok3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10205', 'ok4.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10206', 'ok5.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10207', 'org.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10208', 'org2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10209', 'outs.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10210', 'own.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10211', 'page.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10212', 'page2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10213', 'page3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10214', 'page_code.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10215', 'page_font.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10216', 'page_next.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10217', 'page_office.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10218', 'page_paint.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10219', 'page_picture.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10220', 'page_vector.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10221', 'paint2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10222', 'paste.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10223', 'picture.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10224', 'pictures.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10225', 'picture_empty.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10226', 'plugin.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10227', 'plugin2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10228', 'printer.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10229', 'query.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10230', 'redo.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10231', 'refresh.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10232', 'refresh2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10233', 'right.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10234', 'save.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10235', 'save_all.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10236', 'search.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10237', 'security.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10238', 'send_receive.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10239', 'shape_align_bottom.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10240', 'shape_align_center.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10241', 'shape_align_middle.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10242', 'shape_group.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10243', 'shape_handles.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10244', 'shape_move_back.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10245', 'share.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10246', 'sitemap.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10247', 'sql.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10248', 'sql2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10249', 'sql3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10250', 'stop.gif', '1');
INSERT INTO `aos_sys_icon` VALUES ('10251', 'stop2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10252', 'stop3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10253', 'system.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10254', 'table.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10255', 'table2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10256', 'tables.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10257', 'tables_relation.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10258', 'table_edit.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10259', 'tag.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10260', 'task.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10261', 'task1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10262', 'task_finish.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10263', 'task_list.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10264', 'terminal.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10265', 'textfield.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10266', 'text_cap.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10267', 'text_col.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10268', 'text_list.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10269', 'text_upper.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10270', 'theme.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10271', 'time.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10272', 'timeline.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10273', 'undo.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10274', 'up.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10275', 'up2.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10276', 'up_left.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10277', 'up_right.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10278', 'user1.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10279', 'user20.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10280', 'user3.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10281', 'user6.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10282', 'user8.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10283', 'vcard.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10284', 'vector.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10285', 'wand.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10286', 'webcam.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10287', 'zoom_in.png', '1');
INSERT INTO `aos_sys_icon` VALUES ('10288', 'zoom_out.png', '1');

-- ----------------------------
-- Table structure for `aos_sys_module`
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
-- Records of aos_sys_module
-- ----------------------------
INSERT INTO `aos_sys_module` VALUES ('078df89c7b5b478cb38fd607805c6155', '0.004.002.001.007', '常用表单元素API', 'demo/initFormApi.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '20');
INSERT INTO `aos_sys_module` VALUES ('09b24aac059f4ba58bfb30652636b543', '0.004.003.001', '综合实例①', 'demo/misc/initMisc1.jhtml', '', '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', '', '1', '综合实例', '', '10');
INSERT INTO `aos_sys_module` VALUES ('0b99e9d118b54ee084d9e74bd72cdd1c', '0.001.002', '资源管理', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder14.png', '1', '系统管理', null, '20');
INSERT INTO `aos_sys_module` VALUES ('1886bf699ec74f79959bdc8ca8e5371a', '0.001.006.004', '会话监控', 'system/sessionLog/init.jhtml', null, '5b9a439743f141729f46a07e8e222a47', '1', '0', 'c_key.png', '1', '监控与审计', null, '10');
INSERT INTO `aos_sys_module` VALUES ('1906d5a892654e2bb882851e0ea7322f', '0.001.008.001', '图标', 'system/icon/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'page_picture.png', '1', '开发工具箱', null, '60');
INSERT INTO `aos_sys_module` VALUES ('1a34ea36b51447a1a16a3ddf7f2e84fc', '0.008.001', '用户', 'ss/temp/user/init.jhtml', '', 'a59d840e88594f7b87b3f96d227d6707', '1', '0', '', '1', '临时测试', '', '1');
INSERT INTO `aos_sys_module` VALUES ('1cf1947152174cacaf226fa54ca51351', '0.004.002.001.009', '表单校验', 'demo/initFormValidate.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '8');
INSERT INTO `aos_sys_module` VALUES ('25406890354f4514909e2ad1c0fd678d', '0.004.002.003.001', '表格①', 'demo/grid/initGrid1.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '10');
INSERT INTO `aos_sys_module` VALUES ('266bbec9e0af4612afa5139aade0a511', '0.004.002.001.006', '组合选择框', 'demo/initFormComboBox.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '30');
INSERT INTO `aos_sys_module` VALUES ('2790bf6cc0b54c36b56c90429c112ab2', '0.001.008.005', 'WebIDE', 'system/coder/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'icon15.png', '1', '开发工具箱', null, '5');
INSERT INTO `aos_sys_module` VALUES ('29873ca569fb46c3bbd951a8a1df2472', '0.002', '项目导航', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder2.png', '1', '智慧药监管理平台', 'fa-github-alt', '10002');
INSERT INTO `aos_sys_module` VALUES ('2a4c060f44d944ea926fe44522ce7b39', '0', '智慧药监管理平台', '', '', 'p', '0', '1', 'home.png', '1', 'root', '', '1');
INSERT INTO `aos_sys_module` VALUES ('2dd9dac74b064ea98f063265b642526d', '0.005.005.001', '新建核查任务', 'ss/checkjob/checktem/initCheckTem.jhtml', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '100');
INSERT INTO `aos_sys_module` VALUES ('327677ef8d2a4e5caf3c4cbc9b72d0b0', '0.004.002.003.004', '客户端分页表格', 'demo/grid/initGrid3.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '40');
INSERT INTO `aos_sys_module` VALUES ('33baf8c9948b47cfa54cd8d7a5e1753d', '0.004.003', '综合实例', '', '', '6e10c86d1885434e80e6dfa0953e307d', '0', '1', '', '1', '范例', '', '20');
INSERT INTO `aos_sys_module` VALUES ('38e28fce49414c4c9e95d032559d5bee', '0.004.002.002', '按钮', 'demo/initButton.jhtml', null, '6cab8b013c314b37aec7c4567d859fc8', '1', '0', null, '1', 'AOS UI组件库', null, '10');
INSERT INTO `aos_sys_module` VALUES ('3b41af04060b414d85a05655b76801a3', '0.011.001', '核查任务统计分析', 'ss/report/initJobReport.jhtml', '', 'a4b0e8936806432181f60d53fc18e0a1', '1', '0', '', '1', '统计分析', '', '1');
INSERT INTO `aos_sys_module` VALUES ('3bb16fa3935c41bebe4d3fcf3c4ebd5c', '0.004.004', '杂项', '', '', '6e10c86d1885434e80e6dfa0953e307d', '0', '0', '', '1', '范例', '', '15');
INSERT INTO `aos_sys_module` VALUES ('3dddb80dc030499c936c2ede4eaa3ab4', '0.009', '我的待办工作', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'task.png', '1', '智慧药监管理平台', '', '1000');
INSERT INTO `aos_sys_module` VALUES ('4d3cfce7b9b146d2bc8482ec477517aa', '0.002.001', '首选项', 'system/preference/init.jhtml', null, '29873ca569fb46c3bbd951a8a1df2472', '1', '0', 'config1.png', '1', '项目导航', null, '10');
INSERT INTO `aos_sys_module` VALUES ('50d7cd80f5854637a576aa95839488e9', '0.007.002', '原辅料管理', 'ss/jxq/manager.jhtml', '', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '0', '', '1', '原辅料管理', '', '1');
INSERT INTO `aos_sys_module` VALUES ('524e5f5c3e5b4cdb90611cd8b15ca684', '0.001.008', '开发工具箱', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder9.png', '1', '系统管理', 'fa-bug', '70');
INSERT INTO `aos_sys_module` VALUES ('52bfff4fb4fd41488d5f7c09991e997f', '0.005', '检查工作管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'search.png', '1', '智慧药监管理平台', '', '4000');
INSERT INTO `aos_sys_module` VALUES ('56fcae7c948043e3a6ba6f9ab56aaccd', '0.005.003', '模板管理', 'ss/checkjob/checktem/initCheckTem.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '300');
INSERT INTO `aos_sys_module` VALUES ('591f2ffa62a1461887c1d6f02c60a1ff', '0.004.004.002', '消息通知窗口', 'demo/initNotification.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '2');
INSERT INTO `aos_sys_module` VALUES ('5ae41d35d16247febabf631a81a0d70d', '0.004.002.001.008', '表单数据交互', 'demo/initFormData.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '40');
INSERT INTO `aos_sys_module` VALUES ('5b9a439743f141729f46a07e8e222a47', '0.001.006', '监控与审计', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder27.png', '1', '系统管理', null, '60');
INSERT INTO `aos_sys_module` VALUES ('5fb994e71cb14a77891670990d7f554d', '0.001.001', '基础数据', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder2.png', '1', '系统管理', null, '10');
INSERT INTO `aos_sys_module` VALUES ('619cb338b278406f8368471034d5946f', '0.001.004.006', '任务节点', 'workflow/procTask/init.jhtml', '', 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'task_list.png', '1', '业务流程管理', '', '40');
INSERT INTO `aos_sys_module` VALUES ('645419cf0e1c4ea6b3b8945e5338ad58', '0.007', '原辅料管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'text_list.png', '1', '智慧药监管理平台', '', '3000');
INSERT INTO `aos_sys_module` VALUES ('647ebc4423a2409dbc3d1c91d43cdcda', '0.006.003', '企业基本信息', 'ss/company/init4ent.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1');
INSERT INTO `aos_sys_module` VALUES ('65320b914c18453f9ca0a84d3f8a0a7b', '0.001.003.001', '组织架构', 'system/org/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon56.png', '1', '组织与权限', null, '1');
INSERT INTO `aos_sys_module` VALUES ('68822bfa39914373afe70dc343c84e94', '0.004.002.001.005', '常用表单元素', 'demo/initFormElements.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '10');
INSERT INTO `aos_sys_module` VALUES ('6b500915e65949639acbe8dd9b54adbc', '0.007.001', '原辅料查看', 'ss/jxq/init.jhtml', '', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '1', '', '1', '原辅料管理', '', '1');
INSERT INTO `aos_sys_module` VALUES ('6cab8b013c314b37aec7c4567d859fc8', '0.004.002', 'AOS UI组件库', null, null, '6e10c86d1885434e80e6dfa0953e307d', '0', '1', null, '1', '范例', null, '10');
INSERT INTO `aos_sys_module` VALUES ('6e10c86d1885434e80e6dfa0953e307d', '0.004', '范例', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder27.png', '1', '智慧药监管理平台', 'fa-coffee', '10001');
INSERT INTO `aos_sys_module` VALUES ('6f9e2b465ad54dc4ab18ebc5896951b4', '0.006.002', '企业信息查询', 'ss/company/initreport.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1');
INSERT INTO `aos_sys_module` VALUES ('704d4e51ffcf473fa95ab9e680177d46', '0.004.002.003.002', '表格②', 'demo/grid/initGrid2.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '20');
INSERT INTO `aos_sys_module` VALUES ('715f6cf8d2ce4fa694baf2259327f6b1', '0.001.003.002', '岗位与授权', 'system/post/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon137.png', '1', '组织与权限', null, '3');
INSERT INTO `aos_sys_module` VALUES ('73b69ca49e2240ba8717fc13acb884c2', '0.004.002.001.001', '表单布局①', 'demo/initForm1.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '1');
INSERT INTO `aos_sys_module` VALUES ('75df10afbf5249f6939a4507e055f055', '0.006.001', '企业基本信息管理', 'ss/company/init.jhtml', '', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '0', '', '1', '企业管理', '', '1');
INSERT INTO `aos_sys_module` VALUES ('7a6d3674e5204937951d01544e18e3aa', '0.001', '系统管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '1', 'folder22.png', '1', '智慧药监管理平台', 'fa-cogs', '9999');
INSERT INTO `aos_sys_module` VALUES ('7e6951e668be44b39fb9f9fd20b21315', '0.004.003.002', '综合实例②', 'demo/misc/initMisc2.jhtml', '', '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', '', '1', '综合实例', '', '20');
INSERT INTO `aos_sys_module` VALUES ('81fc0e05049e467d976ec523182421f2', '0.001.002.004', '序列号', 'system/idMgr/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'id.png', '1', '资源管理', null, '30');
INSERT INTO `aos_sys_module` VALUES ('82b07f82b98046028538e925f66794d1', '0.005.002', '模版创建', 'ss/checkjob/checkitem2/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '200');
INSERT INTO `aos_sys_module` VALUES ('8472acca5a9e47348b7ab3d6ebf261b5', '0.005.005.003', '未完成任务列表', 'ss/checkjob/job/initunfinishedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '300');
INSERT INTO `aos_sys_module` VALUES ('870c482cdb2e4c8aa373dcf447964284', '0.004.002.003.003', '可编辑表格', 'demo/grid/initEditGrid.jhtml', null, 'dbf75990cf784e79920caf7eb47856f6', '1', '0', null, '1', '表格', null, '30');
INSERT INTO `aos_sys_module` VALUES ('88bc371429ce4243a49c5893ae036f6a', '0.004.002.004', '报表', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '40');
INSERT INTO `aos_sys_module` VALUES ('8b33d532b9184f39871a861ea6f8a318', '0.008.002', '企业', 'ss/temp/ent/init.jhtml', null, 'a59d840e88594f7b87b3f96d227d6707', '1', '0', null, '1', '临时测试', null, '1');
INSERT INTO `aos_sys_module` VALUES ('920fe6ba911148cd810ceca31ad9d54f', '0.010', '综合看板', 'ss/dashboard/init.jhtml', '', '2a4c060f44d944ea926fe44522ce7b39', '1', '0', 'bullet_group4.gif', '1', '智慧药监管理平台', '', '1500');
INSERT INTO `aos_sys_module` VALUES ('921b5164722d43698abf970a92c628d1', '0.005.001', '检查项元数据管理', 'ss/checkjob/checkitem/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '100');
INSERT INTO `aos_sys_module` VALUES ('97c8a95d0aa84d7cba2a8b536ba5326a', '0.004.002.001.002', '表单布局②', 'demo/initForm2.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '2');
INSERT INTO `aos_sys_module` VALUES ('98d7e720b8524600844728bcb4f8d518', '0.005.005.004', '已创建的任务列表', 'ss/checkjob/job/initmycreatedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '200');
INSERT INTO `aos_sys_module` VALUES ('9a68cc97425344cda05e551ae5ae66cb', '0.005.005', '任务管理', '', '', '52bfff4fb4fd41488d5f7c09991e997f', '0', '0', '', '1', '检查工作管理', '', '500');
INSERT INTO `aos_sys_module` VALUES ('9a8e5cedcd514af2b37cf5828f509f94', '0.001.001.003', '分类科目', 'system/catalog/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon146.png', '1', '基础数据', null, '20');
INSERT INTO `aos_sys_module` VALUES ('9e4cf77815dd49fbac4158c62af3197a', '0.001.001.001', '键值参数', 'system/param/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon79.png', '1', '基础数据', null, '1');
INSERT INTO `aos_sys_module` VALUES ('a21b52d911bb44c2978e52bbc523de51', '0.001.004.002', '流程部署', 'workflow/procDeploy/init.jhtml', null, 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'modules_wizard.gif', '1', '业务流程管理', null, '10');
INSERT INTO `aos_sys_module` VALUES ('a27532c1cc8948e5b9bd7d8ac2e30a42', '0.004.002.006.001', '布局①', '', '', 'f84a495bca10403ebe8351d4737dfc72', '1', '0', '', '1', '容器布局', '', '1');
INSERT INTO `aos_sys_module` VALUES ('a3791f2557354144b58bdcbbfa400e7e', '0.005.005.002', '已完成任务列表', 'ss/checkjob/job/initfinishedjob.jhtml?', '', '9a68cc97425344cda05e551ae5ae66cb', '1', '0', '', '1', '任务管理', '', '400');
INSERT INTO `aos_sys_module` VALUES ('a4b0e8936806432181f60d53fc18e0a1', '0.011', '统计分析', null, null, '2a4c060f44d944ea926fe44522ce7b39', '0', '0', null, '1', '智慧药监管理平台', null, '5000');
INSERT INTO `aos_sys_module` VALUES ('a4d2ef333e35476680786df9a89e200b', '0.004.002.004.001', '报表①', 'demo/report/initReport1.jhtml', null, '88bc371429ce4243a49c5893ae036f6a', '1', '0', null, '1', '报表', null, '1');
INSERT INTO `aos_sys_module` VALUES ('a59d840e88594f7b87b3f96d227d6707', '0.008', '临时测试', null, null, '2a4c060f44d944ea926fe44522ce7b39', '0', '0', null, '1', '智慧药监管理平台', null, '1');
INSERT INTO `aos_sys_module` VALUES ('b4485f8151ae4a7db09ee6cd70c5e24f', '0.004.003.003', '综合实例③', 'demo/misc/initMisc3.jhtml', null, '33baf8c9948b47cfa54cd8d7a5e1753d', '1', '0', null, '1', '综合实例', null, '30');
INSERT INTO `aos_sys_module` VALUES ('b656d6afbbe844d0a6626d0eb590643f', '0.001.003', '组织与权限', null, null, '7a6d3674e5204937951d01544e18e3aa', '0', '1', 'folder23.png', '1', '系统管理', null, '30');
INSERT INTO `aos_sys_module` VALUES ('ba90369eb83540bab4d9492bc17f0937', '0.001.004.005', '流程实例', 'workflow/procInst/init.jhtml', null, 'cfc4e4bd367047a29e0d72e688f860a2', '1', '0', 'icon5.png', '1', '业务流程管理', null, '30');
INSERT INTO `aos_sys_module` VALUES ('bc3c9877c598404da7e31355a4deebad', '0.001.008.002', 'WebSQL', 'system/webSql/init.jhtml', null, '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '0', 'sql.png', '1', '开发工具箱', null, '10');
INSERT INTO `aos_sys_module` VALUES ('bd0a4ba6764d4d86883cfa7aa513315d', '0.006', '企业管理', '', '', '2a4c060f44d944ea926fe44522ce7b39', '0', '0', 'vcard.png', '1', '智慧药监管理平台', '', '2000');
INSERT INTO `aos_sys_module` VALUES ('bf530e26480d43b08dd20e31e31274af', '0.001.003.006', '角色与授权', 'system/role/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'icon134.png', '1', '组织与权限', null, '5');
INSERT INTO `aos_sys_module` VALUES ('c416f519d2b74cb39e0c4ace13e168d6', '0.008.004', '时间轴22', 'ss/temp/timeline/company.jhtml', null, 'a59d840e88594f7b87b3f96d227d6707', '1', '0', null, '1', '临时测试', null, '1');
INSERT INTO `aos_sys_module` VALUES ('cfc4e4bd367047a29e0d72e688f860a2', '0.001.004', '业务流程管理', '', '', '7a6d3674e5204937951d01544e18e3aa', '0', '0', 'folder24.png', '1', '系统管理', '', '40');
INSERT INTO `aos_sys_module` VALUES ('d452524058ff42cfb9e5146dacd0cd79', '0.001.006.002', '操作日志', null, null, '5b9a439743f141729f46a07e8e222a47', '1', '0', 'user20.png', '1', '监控与审计', null, '20');
INSERT INTO `aos_sys_module` VALUES ('dbf75990cf784e79920caf7eb47856f6', '0.004.002.003', '表格', null, null, '6cab8b013c314b37aec7c4567d859fc8', '0', '1', null, '1', 'AOS UI组件库', null, '30');
INSERT INTO `aos_sys_module` VALUES ('dc404d3ef1334c5ca18dd217e4f7e2f1', '0.005.006', '检查统计', 'ss/checkjob/result/init.jhtml', '', '52bfff4fb4fd41488d5f7c09991e997f', '1', '0', '', '1', '检查工作管理', '', '999');
INSERT INTO `aos_sys_module` VALUES ('dd2882255a2047c99e911ccd53d47bc5', '0.008.003', '时间轴', 'ss/temp/timeline/init.jhtml', '', 'a59d840e88594f7b87b3f96d227d6707', '1', '0', '', '1', '临时测试', '', '1');
INSERT INTO `aos_sys_module` VALUES ('e3e403f7b94247c7827d8f280f06b64d', '0.004.002.001.003', '表单布局③', 'demo/initForm3.jhtml', null, 'f73a952eefa2406c9327da6252c4ca79', '1', '0', null, '1', '表单', null, '3');
INSERT INTO `aos_sys_module` VALUES ('e7bb35f24a634a759cef64d28411901f', '0.004.004.001', '存储过程调用', 'demo/procedure/init.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '10');
INSERT INTO `aos_sys_module` VALUES ('e9de0eacf61a4aa6b1ed0c210fc209fe', '0.004.004.003', '页面组件复用', 'demo/initShare.jhtml', null, '3bb16fa3935c41bebe4d3fcf3c4ebd5c', '1', '0', null, '1', '杂项', null, '20');
INSERT INTO `aos_sys_module` VALUES ('f107450058a2438eb6ad9bf6a4d7e967', '0.001.001.002', '字典参数', 'system/dictionary/init.jhtml', null, '5fb994e71cb14a77891670990d7f554d', '1', '0', 'icon154.png', '1', '基础数据', null, '10');
INSERT INTO `aos_sys_module` VALUES ('f405a849f27d4ddebf7f8a2dfbf30bea', '0.001.002.001', '功能模块', 'system/module/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'icon75.png', '1', '资源管理', null, '10');
INSERT INTO `aos_sys_module` VALUES ('f4768a44bc6a491bbac10d6f9710b8c6', '0.009.001', '检查工作待办事项', 'ss/checkjob/job/initunfinishedjob.jhtml?', '', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '0', 'folder4.png', '1', '我的待办工作', '', '100');
INSERT INTO `aos_sys_module` VALUES ('f73a952eefa2406c9327da6252c4ca79', '0.004.002.001', '表单', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '20');
INSERT INTO `aos_sys_module` VALUES ('f81608054a714b60adb0b1ed574c6b6c', '0.001.003.003', '用户与授权', 'system/user/init.jhtml', null, 'b656d6afbbe844d0a6626d0eb590643f', '1', '0', 'user6.png', '1', '组织与权限', null, '4');
INSERT INTO `aos_sys_module` VALUES ('f84a495bca10403ebe8351d4737dfc72', '0.004.002.006', '容器布局', '', '', '6cab8b013c314b37aec7c4567d859fc8', '0', '0', '', '1', 'AOS UI组件库', '', '35');
INSERT INTO `aos_sys_module` VALUES ('fd88d0de59024e4db81ead8510b6bd98', '0.001.002.003', '页面组件', 'system/page/init.jhtml', null, '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '0', 'icon59.png', '1', '资源管理', null, '20');

-- ----------------------------
-- Table structure for `aos_sys_module_post`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_module_post`;
CREATE TABLE `aos_sys_module_post` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `post_id_` varchar(64) NOT NULL COMMENT '岗位流水号',
  `module_id_` varchar(64) NOT NULL COMMENT '功能模块流水号',
  `grant_type_` varchar(255) NOT NULL COMMENT '权限类型(岗位仅提供经办权限)',
  `operate_time_` varchar(255) NOT NULL COMMENT '授权时间',
  `operator_id_` varchar(64) NOT NULL COMMENT '授权人流水号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_module_post_ukey` (`post_id_`,`module_id_`,`grant_type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='功能模块-岗位关联表';

-- ----------------------------
-- Records of aos_sys_module_post
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_module_role`
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
-- Records of aos_sys_module_role
-- ----------------------------
INSERT INTO `aos_sys_module_role` VALUES ('0188b1648ab74fbbae624dd477fa8fb0', 'db0517b284ae4ecebe4358cb9e9d6295', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('050d588d27f840b88ab0f66abab19ee1', 'cb9dea34a86043be875e1729bd87df32', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('0d7757a39c0e465b80afc1130bdbf29f', '84f923b5e334498494eda38d8e86ef80', 'd452524058ff42cfb9e5146dacd0cd79', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('0f96a976ce2f4e52bb3631e3ce9a475c', '84f923b5e334498494eda38d8e86ef80', '9a8e5cedcd514af2b37cf5828f509f94', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('1bbb15f6d8284bd9a7bc64956dd06e58', 'db0517b284ae4ecebe4358cb9e9d6295', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('1bcfe11693e3405fad8774dd223a5707', '9fc327f9d0a54c928d490dc38ce8fa49', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('1ce4ef624de4486989153a02b970bc3a', 'cb9dea34a86043be875e1729bd87df32', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('220ebf3cb98e4aa5ae94c9bff1714916', 'db0517b284ae4ecebe4358cb9e9d6295', '715f6cf8d2ce4fa694baf2259327f6b1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('2486d09ed38e4ebba88cf16bae2bc65f', '84f923b5e334498494eda38d8e86ef80', '9e4cf77815dd49fbac4158c62af3197a', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('24f35d9f5c944a2cbe5152df6aeb5963', 'db0517b284ae4ecebe4358cb9e9d6295', '920fe6ba911148cd810ceca31ad9d54f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('271703d9917e4fa6b6d5999021bc37b1', '84f923b5e334498494eda38d8e86ef80', '2790bf6cc0b54c36b56c90429c112ab2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('2bf58bcd60b34807aba13371669cb665', '84f923b5e334498494eda38d8e86ef80', 'ba90369eb83540bab4d9492bc17f0937', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('2ce2ac4ab1b8425f83e6ce7ed047ef33', 'cb9dea34a86043be875e1729bd87df32', '75df10afbf5249f6939a4507e055f055', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('2d546a5234ac4daf912504aa557487a0', '84f923b5e334498494eda38d8e86ef80', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('2dda088ca3a045f69b42b25e342abf63', '9fc327f9d0a54c928d490dc38ce8fa49', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('335e5f0f821e4293b42270b7c7d7ddb0', '9fc327f9d0a54c928d490dc38ce8fa49', '2dd9dac74b064ea98f063265b642526d', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('34a2b8a342284d0c8e81e2b26cec1dda', 'db0517b284ae4ecebe4358cb9e9d6295', '921b5164722d43698abf970a92c628d1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('390e1d2b66ac4b5f9ba42e51e1415006', '84f923b5e334498494eda38d8e86ef80', 'f405a849f27d4ddebf7f8a2dfbf30bea', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('3a79eb5cfe2d4e79a4c77af692555305', '84f923b5e334498494eda38d8e86ef80', 'a21b52d911bb44c2978e52bbc523de51', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('3e570a726a554571983f8e70cfe4c511', 'db0517b284ae4ecebe4358cb9e9d6295', '6b500915e65949639acbe8dd9b54adbc', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('3e799489aae5437d98f997e1ef978f18', 'db0517b284ae4ecebe4358cb9e9d6295', 'a4b0e8936806432181f60d53fc18e0a1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('42f9477b1b2342729d27853e280ed5fa', 'db0517b284ae4ecebe4358cb9e9d6295', 'dc404d3ef1334c5ca18dd217e4f7e2f1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('43ca9c6089ef44428c1e103fe3f45456', 'db0517b284ae4ecebe4358cb9e9d6295', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('51214705b3a749f99b6b55ca2e9593dc', 'db0517b284ae4ecebe4358cb9e9d6295', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('51bf0f517fde4a98b31b989aea132087', '3eee65836a4e4d5a95b4935e04a9bf6c', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('5839a2d3d321433098a54e3cca04c4d6', '84f923b5e334498494eda38d8e86ef80', '1906d5a892654e2bb882851e0ea7322f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('5bb27b3e203c43e28a088e0f2d6cf33e', 'db0517b284ae4ecebe4358cb9e9d6295', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('60234d270be64501bad723d4bdbc4f9d', 'db0517b284ae4ecebe4358cb9e9d6295', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:21', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('6909b8bf39ee4100a4c4958e976985e8', 'db0517b284ae4ecebe4358cb9e9d6295', '65320b914c18453f9ca0a84d3f8a0a7b', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('693c037fab3848fb84372822c9dff565', 'cb9dea34a86043be875e1729bd87df32', '6b500915e65949639acbe8dd9b54adbc', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('69e6336219be4d809e243039ab4523aa', '9fc327f9d0a54c928d490dc38ce8fa49', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('6c27a9d6735146ad9b154116efd757b8', '84f923b5e334498494eda38d8e86ef80', 'f107450058a2438eb6ad9bf6a4d7e967', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('71c43c3068ca4fc28c9ebc8cd79a4a43', 'db0517b284ae4ecebe4358cb9e9d6295', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('73232240556d42abab86f1a63304354e', 'cb9dea34a86043be875e1729bd87df32', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('7484d55043524284bb8dd8d5984c9081', 'db0517b284ae4ecebe4358cb9e9d6295', '75df10afbf5249f6939a4507e055f055', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('75bf2c9a3e904515b9067aeb58fb4fdd', '84f923b5e334498494eda38d8e86ef80', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('77bd0a1ccd614116b13cc2320fe30cda', '84f923b5e334498494eda38d8e86ef80', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('77d8a94836b24119aebcdd6fc70324da', '9fc327f9d0a54c928d490dc38ce8fa49', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('784c692cc819474bbbec26ac5cba54e6', '84f923b5e334498494eda38d8e86ef80', '619cb338b278406f8368471034d5946f', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('7c2b2130d71e44c1828df1461fc9903e', 'cb9dea34a86043be875e1729bd87df32', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('7e262d9ecd424de28d2dc7796bb29bad', 'cb9dea34a86043be875e1729bd87df32', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('80488d5c34ca4803b46280d1218a73b0', '3eee65836a4e4d5a95b4935e04a9bf6c', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('873ea12392844e519cbae489f4db8744', 'cb9dea34a86043be875e1729bd87df32', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('88fd14c9fefb488daf28be9080c94d73', '84f923b5e334498494eda38d8e86ef80', '5b9a439743f141729f46a07e8e222a47', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('8c63d15784bc4cdcab64c4e67596568b', 'db0517b284ae4ecebe4358cb9e9d6295', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('945d429916a24f0bbfb6f9f55cb0e776', '9fc327f9d0a54c928d490dc38ce8fa49', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('950d91e5479b40b3baafbb4cdb36de04', 'db0517b284ae4ecebe4358cb9e9d6295', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('9e7d876cd465486a94c8df7e5855a226', '84f923b5e334498494eda38d8e86ef80', '65320b914c18453f9ca0a84d3f8a0a7b', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('9eefec427e864a52baaebde5dfe87402', '9fc327f9d0a54c928d490dc38ce8fa49', '647ebc4423a2409dbc3d1c91d43cdcda', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a03c228b2cf741c88a68d4d5974e26d1', '9fc327f9d0a54c928d490dc38ce8fa49', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a6d628138692486eab05c5e0cb76bf7f', 'cb9dea34a86043be875e1729bd87df32', '82b07f82b98046028538e925f66794d1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a86a62045bcd422882ea00c2895016fe', 'cb9dea34a86043be875e1729bd87df32', 'a4b0e8936806432181f60d53fc18e0a1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a8804d424d4640ce88ac439fd31f0eb4', 'db0517b284ae4ecebe4358cb9e9d6295', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a8ee27e30e4741cea60adff17e8f2df4', '9fc327f9d0a54c928d490dc38ce8fa49', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a9bfdc9f68b8480e83304b68e728aab2', '84f923b5e334498494eda38d8e86ef80', 'fd88d0de59024e4db81ead8510b6bd98', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a9cc960d203c4dedb735b77c6c2e98ef', 'db0517b284ae4ecebe4358cb9e9d6295', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('a9fc257206c243e29ac58a2d35e8c13f', '84f923b5e334498494eda38d8e86ef80', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('aeaa0615d8cd4feeacdaf9ab9b0a6fd4', 'cb9dea34a86043be875e1729bd87df32', '920fe6ba911148cd810ceca31ad9d54f', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('b25a6d3f659443f290a107556d75cc5f', 'cb9dea34a86043be875e1729bd87df32', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('b43b4b15f2374cd8bfe882b141e94d8b', '84f923b5e334498494eda38d8e86ef80', '0b99e9d118b54ee084d9e74bd72cdd1c', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('bd2126707c7b4c00908a994704c741e0', 'cb9dea34a86043be875e1729bd87df32', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('c102c61185e0432bb551745ea22d9700', '84f923b5e334498494eda38d8e86ef80', '81fc0e05049e467d976ec523182421f2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('c28d9a85f2934a0ca7c04d16e20a031c', 'db0517b284ae4ecebe4358cb9e9d6295', '3b41af04060b414d85a05655b76801a3', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('c5c2913652994b1dacf9ad6c2b2a1c81', '9fc327f9d0a54c928d490dc38ce8fa49', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('c774c855900c41cbb8e431aa6e78c863', 'cb9dea34a86043be875e1729bd87df32', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('cf9396d2874941c2be039661637fb3d3', '9fc327f9d0a54c928d490dc38ce8fa49', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d1a975c7b7d54f9cae96eda45b3770e1', 'cb9dea34a86043be875e1729bd87df32', '52bfff4fb4fd41488d5f7c09991e997f', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d560c034735d497f8796d3a04fe2c409', '9fc327f9d0a54c928d490dc38ce8fa49', 'b656d6afbbe844d0a6626d0eb590643f', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d779a0d3cd01421c8e7dadeb7ed8999a', '9fc327f9d0a54c928d490dc38ce8fa49', '645419cf0e1c4ea6b3b8945e5338ad58', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d847f8e4b85e4c7493d90f3315215e4f', '9fc327f9d0a54c928d490dc38ce8fa49', '50d7cd80f5854637a576aa95839488e9', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d8986d30483d4fccbc9ca73a2d02ecd1', 'db0517b284ae4ecebe4358cb9e9d6295', '1886bf699ec74f79959bdc8ca8e5371a', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('d963ae8247cf4642a0be0fed1f29e01f', 'db0517b284ae4ecebe4358cb9e9d6295', '9a68cc97425344cda05e551ae5ae66cb', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('dbba3e637e2a40788f9879049dbf6f7e', 'db0517b284ae4ecebe4358cb9e9d6295', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('e2f388c27bd4484aa3e1ba31e2015694', 'db0517b284ae4ecebe4358cb9e9d6295', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('e7119468622c4b22b672060e26653a93', '84f923b5e334498494eda38d8e86ef80', '715f6cf8d2ce4fa694baf2259327f6b1', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('e92eb76ccd2b4f47978be188b68c2081', '9fc327f9d0a54c928d490dc38ce8fa49', 'a3791f2557354144b58bdcbbfa400e7e', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ea2594b1b19a45698ac2ff9b5aa59f48', 'cb9dea34a86043be875e1729bd87df32', '3b41af04060b414d85a05655b76801a3', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ec5392e974ea4da48a745a61b099a1eb', '84f923b5e334498494eda38d8e86ef80', '1886bf699ec74f79959bdc8ca8e5371a', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ecc9b853a25c41cda37b637b2849d779', 'cb9dea34a86043be875e1729bd87df32', '8472acca5a9e47348b7ab3d6ebf261b5', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ed19957898e1403a86df1c4d63ec98ba', '3eee65836a4e4d5a95b4935e04a9bf6c', '3dddb80dc030499c936c2ede4eaa3ab4', '1', '2016-05-19 08:53:25', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ee6d97b75dd54231b7fae8dc04b0d896', '9fc327f9d0a54c928d490dc38ce8fa49', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ef2ca3c3fcb04fa0a4883636f32abb55', '9fc327f9d0a54c928d490dc38ce8fa49', 'bf530e26480d43b08dd20e31e31274af', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f04151346df64002bdb5a5af542540b1', '84f923b5e334498494eda38d8e86ef80', '5fb994e71cb14a77891670990d7f554d', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f1559c0cce8344d2b63b87bb9ac4c342', 'db0517b284ae4ecebe4358cb9e9d6295', '5b9a439743f141729f46a07e8e222a47', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f1a76db90f7e4881b848dc9bbe4b9864', '84f923b5e334498494eda38d8e86ef80', 'cfc4e4bd367047a29e0d72e688f860a2', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f2841eaa505d442bb608f79184429bd4', 'cb9dea34a86043be875e1729bd87df32', 'dc404d3ef1334c5ca18dd217e4f7e2f1', '1', '2016-05-19 14:27:32', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f3ac8869c46c4ecb9a59f5375f777f55', '9fc327f9d0a54c928d490dc38ce8fa49', 'f4768a44bc6a491bbac10d6f9710b8c6', '1', '2016-05-19 14:27:42', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f3c0946492b44acbb328987f382aad29', '84f923b5e334498494eda38d8e86ef80', '524e5f5c3e5b4cdb90611cd8b15ca684', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f4ab0bb38c6d497ca676093146144473', '84f923b5e334498494eda38d8e86ef80', 'bc3c9877c598404da7e31355a4deebad', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f636f65c00b5463bb75b043f1dc6ee4f', '84f923b5e334498494eda38d8e86ef80', 'f81608054a714b60adb0b1ed574c6b6c', '1', '2016-03-23 02:32:47', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('f7c1380d52504ed58b8f6d19d60736d6', 'db0517b284ae4ecebe4358cb9e9d6295', '98d7e720b8524600844728bcb4f8d518', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_role` VALUES ('ff7ecca1769e4c09b42371e998ea7023', 'db0517b284ae4ecebe4358cb9e9d6295', '7a6d3674e5204937951d01544e18e3aa', '1', '2016-05-19 14:27:22', 'fa04db9dd2f54d61b0c8202a25de2dc6');

-- ----------------------------
-- Table structure for `aos_sys_module_user`
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
-- Records of aos_sys_module_user
-- ----------------------------
INSERT INTO `aos_sys_module_user` VALUES ('c0d40a9f899b463c986a822b4969c7d2', 'c321c891521446bdac49ae2bb29d7a00', '2a4c060f44d944ea926fe44522ce7b39', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_user` VALUES ('ce73653a710344c69da7b387b149a198', 'c321c891521446bdac49ae2bb29d7a00', 'bd0a4ba6764d4d86883cfa7aa513315d', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_module_user` VALUES ('f3b97bd4ae7d457da59c50f8462e21b9', 'c321c891521446bdac49ae2bb29d7a00', '75df10afbf5249f6939a4507e055f055', '1', '2016-03-23 16:14:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');

-- ----------------------------
-- Table structure for `aos_sys_module_user_nav`
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
-- Records of aos_sys_module_user_nav
-- ----------------------------
INSERT INTO `aos_sys_module_user_nav` VALUES ('069b1267b4fe4b9889a949769cb984d8', '98d7e720b8524600844728bcb4f8d518', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('0a6bb4844863456ebe7d15df14fc719c', 'dc404d3ef1334c5ca18dd217e4f7e2f1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('0dff8bc99dbf4092ab3d9332768bc116', '921b5164722d43698abf970a92c628d1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('0f37be2ab99f4f05b6d683a1cef4df44', '82b07f82b98046028538e925f66794d1', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('0f8eab3a36ae43beb97a0b39d49830a1', 'bd0a4ba6764d4d86883cfa7aa513315d', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('0f9873c57552450692a4d3ba8f0dd78c', '8472acca5a9e47348b7ab3d6ebf261b5', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('13848d731dbf4fe081c70e36a78f61ce', 'a3791f2557354144b58bdcbbfa400e7e', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('217a3a8e9db14937bc669c9c0987a953', '82b07f82b98046028538e925f66794d1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('246e98a5e8db4fd49b08b6f8cf64bb19', 'bd0a4ba6764d4d86883cfa7aa513315d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('28bf9f66ef914ccaa550b447164ff6de', '52bfff4fb4fd41488d5f7c09991e997f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('363037cd4bd44ae39331085fd6f731eb', '7e6951e668be44b39fb9f9fd20b21315', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('371b4b1cb69649cd980753cbdcf89a0e', 'f4768a44bc6a491bbac10d6f9710b8c6', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('3c90885b19ae4787bf2b0bcd7e5df400', '645419cf0e1c4ea6b3b8945e5338ad58', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('3e02a05e55e4453f8ebdfc77c9ae9d7d', 'a59d840e88594f7b87b3f96d227d6707', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('528d6e76b8334fcc901cf4849c690b87', '6b500915e65949639acbe8dd9b54adbc', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('53b89a5dc9ba4e57ac286a988261ec3d', '9a68cc97425344cda05e551ae5ae66cb', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('5ac9d58ebbec491aab0e05d053fabb21', '2a4c060f44d944ea926fe44522ce7b39', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('664086bde26547a291d92888c51e14bd', '52bfff4fb4fd41488d5f7c09991e997f', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('70d1d88d8db1470dadc092515f7e694a', 'c416f519d2b74cb39e0c4ace13e168d6', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7269da5e43014b98bb268ac0ae0d3b7f', '647ebc4423a2409dbc3d1c91d43cdcda', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7532d48a4ae34b578a5eec24ef15e5a3', '920fe6ba911148cd810ceca31ad9d54f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7b1de12af9a54da49904ce0e01f7e2ba', '647ebc4423a2409dbc3d1c91d43cdcda', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7b621fd8a57f43dcadfb70dd8bfd2551', '98d7e720b8524600844728bcb4f8d518', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7c71fc53be2142f2958d56317b67bc11', 'dc404d3ef1334c5ca18dd217e4f7e2f1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('7ea0e1eb288f48f5a3faba7e8871e8e0', '82b07f82b98046028538e925f66794d1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('8012b2caa81941a1813b89cb654633ce', 'bf530e26480d43b08dd20e31e31274af', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('80f45368327c4c03ae00461416bb0778', '75df10afbf5249f6939a4507e055f055', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('83d730c404884959b78e72f3e44d0d7a', '2a4c060f44d944ea926fe44522ce7b39', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('89483e66a8e04855af7ef7b4d12f1727', '6e10c86d1885434e80e6dfa0953e307d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('8af365d1ea364a209fbca7a76999e739', '56fcae7c948043e3a6ba6f9ab56aaccd', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('8d8a9ef7b00d4d2fb118b72fac02b2bc', '50d7cd80f5854637a576aa95839488e9', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('9fe8f9751dee41f98c9e05ddf163de8a', 'a3791f2557354144b58bdcbbfa400e7e', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('a751f19211e14def9004dd4ab677809f', '50d7cd80f5854637a576aa95839488e9', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('aa5097d864e048d5b048164664a10974', '2dd9dac74b064ea98f063265b642526d', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('aa62bb86d729433aa8e46e6e0d99826d', 'b656d6afbbe844d0a6626d0eb590643f', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('b4087f644bcb4d1899871967ce8aaefa', '3dddb80dc030499c936c2ede4eaa3ab4', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('b8e9c7e041d547168031186209197988', '52bfff4fb4fd41488d5f7c09991e997f', 'e470153e65ff4acf84ef6bba89290519', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('baafea8c21f948059b950b9740e1af99', '52bfff4fb4fd41488d5f7c09991e997f', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('c0b448cb672c4c0caa7829f6f184d46f', '33baf8c9948b47cfa54cd8d7a5e1753d', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('c6dd25d7244b49ceb13297e3b0b20e06', '7a6d3674e5204937951d01544e18e3aa', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('c81c3c41339a4d3399911763ee9fa159', '2a4c060f44d944ea926fe44522ce7b39', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('ce0b78a3f86a4a498ed01846c82f5b6f', '75df10afbf5249f6939a4507e055f055', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('d64cc506351a4851b7b9244df3d68bfe', 'a4b0e8936806432181f60d53fc18e0a1', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('d84744efa4134ae4a3842d0363ee217b', '9a68cc97425344cda05e551ae5ae66cb', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('d91d8a7c77af40df8082b0fb1c4e9f59', '2a4c060f44d944ea926fe44522ce7b39', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('e073c08dc14f4bc19d253b6b67671180', 'dd2882255a2047c99e911ccd53d47bc5', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('e539a5ff42b545d6b4ca28766acccc71', '3b41af04060b414d85a05655b76801a3', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('e6a87cab16e1411891d6fdd57abc3cb0', '8472acca5a9e47348b7ab3d6ebf261b5', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('e8f49a48882847be946c3d94959364ad', '645419cf0e1c4ea6b3b8945e5338ad58', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('f1edd73234e44eada4400e2330cc797a', 'bd0a4ba6764d4d86883cfa7aa513315d', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('f5ef82d9920b4636950af8b2d04da3f8', '0b99e9d118b54ee084d9e74bd72cdd1c', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('f6424fa67d454ff6b53671d58834842c', '921b5164722d43698abf970a92c628d1', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('f948ea0c8b414f1a81015c8a68914949', '645419cf0e1c4ea6b3b8945e5338ad58', '5f6b500ffdf642349a1b46203c147ee0', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('fa6d10cad0a54669be0add2df5c791bf', '7a6d3674e5204937951d01544e18e3aa', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('fb181460ba7e488a8ad3a92fa54d2518', '2dd9dac74b064ea98f063265b642526d', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('fb60d51c305144089ba35d7c168fde91', 'f405a849f27d4ddebf7f8a2dfbf30bea', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('fceaed23db6a429591f51abb7d215355', '65320b914c18453f9ca0a84d3f8a0a7b', 'c4db76be7dd94f95b5213b885f919cba', null, '1', null);
INSERT INTO `aos_sys_module_user_nav` VALUES ('fd6de83e1e2b4b4f911da9dd0fe1f023', '6b500915e65949639acbe8dd9b54adbc', 'fa04db9dd2f54d61b0c8202a25de2dc6', null, '1', null);

-- ----------------------------
-- Table structure for `aos_sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_org`;
CREATE TABLE `aos_sys_org` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `cascade_id_` varchar(255) DEFAULT NULL COMMENT '节点语义ID',
  `name_` varchar(255) DEFAULT NULL COMMENT '组织名称',
  `hotkey_` varchar(255) DEFAULT NULL COMMENT '热键',
  `parent_id_` varchar(64) DEFAULT NULL COMMENT '父节点流水号',
  `pareant_name_` varchar(255) DEFAULT NULL COMMENT '父节点名称',
  `is_leaf_` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `is_auto_expand_` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `icon_name_` varchar(255) DEFAULT NULL COMMENT '节点图标文件名称',
  `status_` varchar(255) DEFAULT '1' COMMENT '当前状态',
  `type_` varchar(255) DEFAULT NULL COMMENT '组织类型',
  `biz_code_` varchar(255) DEFAULT NULL COMMENT '业务对照码',
  `custom_code_` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  `create_time_` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `creater_id_` varchar(64) DEFAULT NULL COMMENT '创建人ID',
  `sort_no_` int(10) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
-- Records of aos_sys_org
-- ----------------------------
INSERT INTO `aos_sys_org` VALUES ('0037e1a97e554373a681969531f0382b', '0.007.001.002', '天津市——南开分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:49:54', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1040');
INSERT INTO `aos_sys_org` VALUES ('00a6355517874ab9ac9c89184d438124', '0.008.001', '天津市亨利工贸有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('02dba066a2894ac08fafe0dc599caba2', '0.008.002', '天津格斯宝药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('03aa6e8bddce4f1599c9f7fb396fb12f', '0.008.003', '天津新丰制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('044f8f34dbdd40b493a628fd793fd326', '0.008.004', '天津创新药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('0899cc0f92be4db4ab73404490c12227', '0.008.005', '天津天药药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('090c7dbb01024860aed348fe6fa5d6aa', '0.008.006', '天津康乐产业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('0943139299784dfa951b4af898a1958e', '0.008.007', '天津中天制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('10605b3006ce4a8fb39d5b228b3a71c8', '0.008.008', '天津太平洋制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('111d1124937e4fc78b975ce58298e09c', '0.008.009', '天津尖峰弗兰德医药科技发展有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1514950998944c82a8baad6189155f3d', '0.008.010', '天津敬一堂制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('179d186fcfd2406cb0efc33d8b6497ef', '0.008.011', '天津天安药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1877c6ec0a7946f384db9bebf1a206db', '0.008.012', '天津红日药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('196149c5be994f3eb8485de1917e4aa1', '0.008.013', '天津市津津药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1a0691dc703740d28cfc0281edfa7441', '0.008.014', '天津太平洋化学制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1c0ee3a2c89f4b7fa66a8ffa747e3872', '0.008.015', '天津和治药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1d56017d8c894ce0b6e38f52508392fd', '0.008.016', '灵北制药（天津）有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('1e1f50d2f5b54c3bbbb5d9e6db736fdb', '0.008.017', '天津中新药业集团股份有限公司新新制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('21dec403140649c8904f500b1a588d53', '0.008.018', '天津市康瑞药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('22777a74d8304254a4d526ae1ec14a58', '0.008.019', '天津世纪药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('22cddd255c164a308f57562190a60d6b', '0.008.020', '天津洪福药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('2595b4dacab9480aa62071e5194e44bb', '0.008.021', '天津市协和医药科技集团有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('28cb96b18c1743789e5ce4120780be18', '0.008.022', '天津泰阳制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('2b3d92580e004e3da14cea095ae938e7', '0.008.023', '天津泰达药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('2b76c04a14454c62b1765733ac2b2a67', '0.008.024', '天津市港源生物制品有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('2cd6447d5585414898b483c4bca25250', '0.008.025', '天津中盛海天制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('2f1c5f28806a4e6fa24999d66106bf04', '0.008.026', '天津博科林药品包装技术有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('303a3d3a8fad4086a0df892247a4a676', '0.008.027', '津润（天津）药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('322e9ee7be714145b27d13344ae02f2f', '0.008.028', '天津市协和医药科技集团有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('332b4cd9c8374de7862fe0a12e98e98d', '0.008.029', '天津市中宝制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('36ec55f6073f47358b80645a1342912f', '0.008.030', '天津市新冠制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('387cc86d2c78460cb2d1b51b16aaf90a', '0.008.031', '天津梅花生物医药科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3a09560d4a3643d4a5caa25adc335ff2', '0.008.032', '天津世纪天龙药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3a7f09d4a9fd4826882dba4f2f21cd0f', '0.008.033', '天津市医疗器材厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3c15e693da9b48b3bf17563243914a6b', '0.008.034', '天津市天骄制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3c43e0ee718a4b26b9f977228cae2af4', '0.008.035', '天津同仁堂集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3cd8b1608a93474ebf2db664c48cd333', '0.008.036', '天津炜捷制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('3fb7d3743d5a45068034614e6d4fb929', '0.008.037', '天津市安氏蜂业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('40a954d5f1de4acc8454ee1d5bc2b523', '0.008.038', '天津金耀药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('415e0bcb711d41f18d2b37b8cfe6d5ca', '0.008.039', '石药信汇（天津）医药科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('421fedb458334b138c8586269e10232a', '0.007.001.003', '天津市——河西分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:50:11', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1020');
INSERT INTO `aos_sys_org` VALUES ('437f41e064694af58fec49f04fab915a', '0.008.040', '天津柏海药业有限责任公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('44284adb0da14a269fb0c907d0f1ceaf', '0.007.001.009', '天津市——北辰分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:24:07', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1090');
INSERT INTO `aos_sys_org` VALUES ('4527f990b51549b98838565c743e06ef', '0.008.041', '天津华立达生物工程有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('452eeab4295f4cd89e45900e7eab5921', '0.008.042', '天津医药集团津康制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('45de521566d34201b156a18e0ad647bc', '0.008.043', '天津金耀氨基酸有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('469a888aa7c44f209571e3c4bc8b7a63', '0.008.044', '天津天士力圣特制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('47934d1bb423473da35efb622a453d51', '0.008.045', '天津中盛海天制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('47ac54966cef44e88dc5ef5d96776089', '0.008.046', '施维雅(天津)制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('47b7b8ab8faa4b429a3ba3a9a1a96508', '0.008.047', '天士力制药集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4b826ed9439d4876a407a2033e7ff6d9', '0.008.048', '天津市日康医用氧气科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4b8f95d8c48f47268abd499187b8f4bc', '0.008.049', '天津中新药业集团股份有限公司乐仁堂制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4d186134eaff40479b8d0d92d2da3962', '0.008.050', '天津药物研究院药业有限责任公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4d78ceada72c41c080aa9d4d5a0685b0', '0.008.051', '天津海光药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4f17781531d649fb8dd6ce07fc5898c1', '0.008.052', '天津隆顺榕发展制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('4f277ce667e24774998ee76f7d0c430a', '0.007.001.004', '天津市——红桥分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:50:22', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1050');
INSERT INTO `aos_sys_org` VALUES ('51775000e7004d8fa022f0623216608c', '0.008.053', '天津市兴达药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('5698058a23384a1cb3da5336f64b35fe', '0.008.054', '天津中新药业集团股份有限公司达仁堂制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('585fd783154c4544b982bb73f88b0013', '0.008.055', '天津巨能药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('59fb43251638496395c81dbd8600e87f', '0.008.056', '天津天药药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('5d835a6b4db7495fb563a87a06af0236', '0.007.001.010', '天津市——津南分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-05-03 03:24:21', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1110');
INSERT INTO `aos_sys_org` VALUES ('5fefa24592364417bb3c401592d30be2', '0.008.057', '天津中新药业集团股份有限公司达仁堂制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('606152be6b1d4b8a9c4f9318776ba477', '0.008.058', '天津市红山石油化工有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('620e08cb60794bdaaaf3a77d1a3da473', '0.008.059', '天津市宏发双盛凡士林有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('63cf387a243d4d9799367d773b853346', '0', '项目组', '', 'p', 'root', '0', '1', 'home.png', '1', '1', '', '', '2012-01-01 12:12:12', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0');
INSERT INTO `aos_sys_org` VALUES ('654d5208c27d49bba8ad0e3990bb3037', '0.008.060', '天津宏仁堂药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('65c786fcf63d4c7a844c0c9281dd537c', '0.008.061', '天津市儿童药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('66696e33e4ac46c6a968521494839e0a', '0.008.062', '天津中安药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6671b5b9de764d67bb573fa9069ff15f', '0.008.063', '天津天威制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('682f07acd8dc4639812f116a9956a933', '0.008.064', '天津市思露森医药材料科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6936c7d9f44842a0906e50a0aa99b983', '0.008.065', '天津市普善医药器械股份合作公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('69a9dad62c1b4635acf50301b4291681', '0.008.066', '天津民祥药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6b404bc5ded741f1a9ba05310535400e', '0.008.067', '天津中新药业集团股份有限公司乐仁堂制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6c9621c541f549e6b2dd9053a50d6211', '0.008.068', '葛兰素史克（天津）有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6d06fd5e187a4b3b8138cd6a86bdac73', '0.008.069', '天津开发区渤海东大药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6d5cba75684c41c791ca004718a4352d', '0.008.070', '天津生物化学制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6eb5b4e63b594f418f62c4299c27300b', '0.008.071', '天津中瑞药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6f883873f3b7473ba9291e463ed714e9', '0.008.072', '凯莱英生命科学技术（天津）有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6ff079022e1f47ccab73419fb44d3660', '0.008.073', '天津同仁堂集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('6ff4a6b3cf0548958cb1b4f212f28c64', '0.007.001.011', '天津市——西青分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-05-03 03:24:34', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1120');
INSERT INTO `aos_sys_org` VALUES ('7226f8f4d9724a58b35111fc06b3c09d', '0.008.074', '诺和诺德(中国)制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('73682106f6804a1e912c1c577f93272a', '0.008.075', '生源（天津）生物工程有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('7411f13dbb064ba1bfb71e29718531f0', '0.008.076', '天津药业研究院有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('748eb98151024abca76084ce3d42c413', '0.008.077', '天津市石天药业有限责任公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('74bfa9e3fc734cc49449eaac9ac9af13', '0.008.078', '天健生物制药（天津）有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('78e0f656f36d4716a073ca9038de3a0b', '0.008.079', '天津君安生物制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('79324819c46f4659b79c77b126ace315', '0.008.080', '天津市健生制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('79576cab2e9a47989b99147fd9f25bf0', '0.008.081', '天津怀仁制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('7aaa499eb741464e9022d851764bf209', '0.008.082', '天津金虹胜利药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('7adac28920cd44f0bba3256be50b0fcb', '0.008.083', '天津九鼎医学生物工程有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('7bde630c0dea4fd19a534d7b49655d35', '0.008.084', '盛实百草药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('7e9481bc53ab4cad946f0ffa649b8a89', '0.008.085', '天津中新药业集团股份有限公司第六中药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('80d94fd7a7894890ab66cfcaf5688a60', '0.008.086', '天津市津津药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('822e8a620a464d368eb5168ab2a0342c', '0.008.087', '天津中新药业集团股份有限公司达仁堂制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('83950eda8ba64ce1a6fbd44c63426518', '0.008.088', '天津市永康制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('84da4e496a1841789c4f8951afc51229', '0.008.089', '天津天狮药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('85a6ebd54286460b8e66acfb2c7e35b4', '0.008.090', '天津汉瑞药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('85d923b0f58b4e5ca9bee9ed52123fca', '0.007.001.005', '天津市——河北分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:51:11', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1030');
INSERT INTO `aos_sys_org` VALUES ('85f8bae5ce21443fb707c3267ccd0306', '0.008.091', '天津天士力之骄药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('87987bf10dcb4009a127e8022b895a90', '0.008.092', '天津市麦格尔医药材料科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('88b69384d9004b8ab1e41033f56973da', '0.008.093', '天津武田药品有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('898e587010a142abb6b6dc76e2ed8120', '0.008.094', '天津百特医疗用品有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('8a3473d16ff54ac3b83e27a8dc40030d', '0.008.095', '中国大冢制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('8b44baa959084be2b2c2a4c695031802', '0.008.096', '天津市博爱生物药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('8c2f54689f8141f5866a01b59c488bd1', '0.008.097', '天津田边制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('8cf9577378bf488791750714bb29018d', '0.008.098', '天士力制药集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('8e4066d59cd14c51a040941eb34cf578', '0.008.099', '天津双维生物药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('908d39f497674492ac0dd53977118a29', '0.008.100', '天津市中药饮片厂有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('9275da03ce43473b9ed176514ca1481b', '0.008.101', '天津中新药业集团股份有限公司中新制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('94e4b7b528f84238affc0de7621db9ef', '0.007', '药监部门', '', '63cf387a243d4d9799367d773b853346', '项目组', '0', '0', '', '1', '1', '', '', '2016-03-23 05:48:32', 'fa04db9dd2f54d61b0c8202a25de2dc6', '10');
INSERT INTO `aos_sys_org` VALUES ('9571616ff17e4d88bf0a7d7f7f97e84c', '0.007.001.013', '天津市——静海分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:26:27', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1140');
INSERT INTO `aos_sys_org` VALUES ('95fce5c9ea59455ea703561446381a66', '0.008.102', '天津华津制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('963fa3cd6249476e8c3902bba808e08d', '0.008.103', '天津新内田制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('9a30c0a58ed7420cbee55f8167e30e08', '0.008.104', '天津达仁堂京万红药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('9c91eb4651a343d7a776bb89635f816a', '0.008.105', '天津市海王精细化工有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('9f81c6a2d8ed42bc961700788b18a2b5', '0.008.106', '天津金世制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('a20cfd4ce5a7442e906e120b93f391a6', '0.008.107', '和心（天津）外用制剂科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('a3c4a39e4ff74c8a98753c84c951d0f0', '0.008.108', '天津赛诺制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('a47adcd64bc948389aa81d0369b7e9a6', '0.008.109', '天津天士力现代中药资源有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('a6abe2a8292b44fd9db361ee29e6c626', '0.008.110', '天津天大领先制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('a6b3c13ad33b4b4186166cdede999b43', '0.008.111', '天津南大凯泰药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('aa74785b3c844fa0b7f4e23e1f6b183c', '0.008.112', '天津民祥生物医药科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ac80322d731b436aaf011b3eea189e36', '0.008.113', '凯莱英医药集团（天津）股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('add739525d9c4d999e1d4157259822fa', '0.008.114', '天津红日药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('aef819fdcf0d4671a99bbed6365955e3', '0.007.001.012', '天津市——宝坻分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:26:15', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1130');
INSERT INTO `aos_sys_org` VALUES ('af1cefceb6aa47d6be12c7bd2861d518', '0.008.115', '天津亚宝药业科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('afe38067bfdb4914a4368206f5264e65', '0.008.116', '天津凯威永利联合化学有限责任公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('b02f650f1ced4ffeaed0070aa2af8450', '0.008.117', '中逸安科生物技术股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('b079d36fbb564ec0815474cfc1197858', '0.008.118', '天津天钢气体有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('b6f11846ae8c4bd0ae83900a90cde2af', '0.008.119', '天津力生制药股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('b6fd1d048471442898c00042335397a6', '0.008.120', '诺维信（中国）生物医药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('b85bdb335588411bbfedbed2bdf8f243', '0.008.121', '天津市东方广诚医药化工有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ba1e7ef075ab4dd9b9e5285c8123ca56', '0.008.122', '液化空气（天津）有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('bb614f129b6d441f8f490076c44a4a23', '0.008.123', '天津同仁堂集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('bcfe545bd749435d9680a551a5d86bbb', '0.008.124', '天津市津钢氧气厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('be1e163cf1f04e5fb9e5e2b1ac56e702', '0.008.125', '天津信汇制药股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('be3204960cc542cf96a7d5ea841f60b5', '0.008.126', '天津精华石化有限公司群力分公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('be742f86c9914e7b83bfb531c2e693df', '0.007.001', '天津市食品药品监督管理局', '', '94e4b7b528f84238affc0de7621db9ef', '药监部门', '0', '0', '', '1', '1', '', '', '2016-03-23 05:48:59', 'fa04db9dd2f54d61b0c8202a25de2dc6', '101');
INSERT INTO `aos_sys_org` VALUES ('be8d6dacb14a42c7bb31893f3dcb922b', '0.007.001.001', '天津市——滨海新区分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:49:34', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1070');
INSERT INTO `aos_sys_org` VALUES ('bf19b91c97c24f8998b74fcc771eaa29', '0.008.127', '天津宏仁堂药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('c1ea5e7966934946a3a3c393b66fb6de', '0.008.128', '液化空气天津滨海有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('c4430572c86f4f3cbe7d3d8fc5cba42f', '0.008.129', '天津市普乐新药用辅料有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('c4daeb6c235947feb6fd59268eeb5b28', '0.007.001.007', '天津市——河东分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-05-03 03:21:46', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1060');
INSERT INTO `aos_sys_org` VALUES ('c5737718a0b64cee8fb7506afdb762d9', '0.008.130', '中美天津史克制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('c934af290b7f4ff4a024f4d05876b820', '0.008.131', '天津乐敦中药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ca91c9a3b4424843970aef81e15318e3', '0.008.132', '权健自然医学科技发展有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ce9d8cbe65ed493fa1346acc7cec1299', '0.008.133', '天津市津兰药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d042b232f1e24ddda30987eefa608416', '0.008.134', '天津儿童药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d085e3934b614abe800de2e7f1e75f1d', '0.008.135', '天津顶硕药业科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d12df3a736c742c58da176dbbd52d128', '0.007.001.015', '天津市——蓟县分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:26:51', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1160');
INSERT INTO `aos_sys_org` VALUES ('d1442b4d0d6b4c8ea7a22c2a1a957fb6', '0.008.136', '天津瑞德药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d3b63f95d02547008ed4168a12186ffc', '0.008.137', '天津汉德威药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d4873f66c50d4158a363f7dbb464b157', '0.007.001.008', '天津市——东丽分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:23:42', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1080');
INSERT INTO `aos_sys_org` VALUES ('d51bb845f4d740f59f7ba747961d4b34', '0.008.138', '天津嘉汇捷瑞医药科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d80bdb12fe894f2bbe5da186f98d0988', '0.008.139', '天津太河制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('d8c3eec62b1d4316af61f095e9560f47', '0.008.140', '博福-益普生（天津）制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('dc9f8cd981fa40288d5a8da36d7a6758', '0.008.141', '天津中一制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('dd5414417719488e945290aa6bd054ee', '0.008.142', '天津药物研究院药业有限责任公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('dd915170a36a45d7ad1b07d012d61362', '0.008.143', '天津中维药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('df7a483b2b3f45158b9e1a30e65854fe', '0.007.001.006', '天津市——和平分局', '', 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', '', '1', '1', '', '', '2016-03-23 05:52:44', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1010');
INSERT INTO `aos_sys_org` VALUES ('e0e0fb4c96ea4a128bd83c0366e433c6', '0.008.144', '天津天成制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('e205f7f1f87d48cd87841460fc339b37', '0.008.145', '天津康宝天然药物有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('e35067b71b8f4ae09caa74a0280048e3', '0.008.146', '天津中津药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('e3defaee311b4c769ec97ab1e74d79f1', '0.008.147', '天津凯镛药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('e5cb141aa2bc4c6dbbc35703a38931e0', '0.008.148', '天津市中央药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ea9a6a68f5ef4a54b9510295905257cb', '0.008.149', '天津爱勒易医药材料有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('eb33095dc9fc41d68928324cc99a8179', '0.008.150', '天津市山佳医药科技有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('ebe97416b0d54e6dacd413fca9f86b3c', '0.007.001.014', '天津市——武清分局', null, 'be742f86c9914e7b83bfb531c2e693df', '天津市食品药品监督管理局', '1', '0', null, '1', '1', null, null, '2016-05-03 03:26:40', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1150');
INSERT INTO `aos_sys_org` VALUES ('ef108916c27840d7812f7ba76a33e5a5', '0.008.151', '天津市博发药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f26e49622dfd43fda221e1203d694b78', '0.008.152', '天津中威和治药业有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f2c2a46d599a4daf8aad352094e9290b', '0.008.153', '天津巨能生物技术有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f3ec2844e5c948a5944795b6e3be943e', '0.008.154', '中国医药保健品有限公司塘沽加工厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f409fc3f4f404ed6a0ec7a61bf3bf5d1', '0.008.155', '天津美伦医药集团有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f41d49901dc94b51aad36d29d876e8e4', '0.008.156', '天津和治友德制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f4cf0408308a4c9492f8dbf7f557ece4', '0.008.157', '天津君安生物制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f5360406b8254cbc8d05ab390fc4f5a4', '0.008.158', '天津市武清区福康化工厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f6cd5a200d994d13b91065b43e774ace', '0.008.159', '天津中新药业集团股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f70a3d3b37024341bf57e100c0d592c3', '0.008.160', '天泽恩源（天津）制药有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('f8137a322da24a778140d4506f9c366b', '0.008', '企业', null, '63cf387a243d4d9799367d773b853346', '项目组', '0', '0', null, '1', '1', null, null, '2016-03-23 05:48:44', 'fa04db9dd2f54d61b0c8202a25de2dc6', '1');
INSERT INTO `aos_sys_org` VALUES ('f8b5d8dbff3c4f2f95750f7d4cc9e757', '0.008.161', '天津市华鑫工业气体有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('fbad53cb55d84ce59ee99d27e8b8720e', '0.008.162', '天津金汇药业集团有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('fc2db97e83954c3f979a2e46c829fca6', '0.008.163', '天津中新药业集团股份有限公司隆顺榕制药厂', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `aos_sys_org` VALUES ('fcc2886366914942b00ac6cc7d8d81e7', '0.008.164', '天津天药药业股份有限公司', null, 'f8137a322da24a778140d4506f9c366b', '企业', '1', '0', null, '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `aos_sys_page`
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
-- Records of aos_sys_page
-- ----------------------------
INSERT INTO `aos_sys_page` VALUES ('19041a2cb7264838b48288ce9b0b8e80', '1906d5a892654e2bb882851e0ea7322f', '大图标[64X64]', 'initIconList.jhtml?type_=2', '2', '1', '0', 'picture.png', null, null, '2');
INSERT INTO `aos_sys_page` VALUES ('9e30077a6bb043cc8db8c8d4b5fa5c91', '1906d5a892654e2bb882851e0ea7322f', '小图标[16X16]', 'initIconList.jhtml?type_=1', '2', '1', '1', 'pictures.png', null, null, '1');
INSERT INTO `aos_sys_page` VALUES ('bcb82c68976d4527a8f1c8bdbb8b4a04', '1906d5a892654e2bb882851e0ea7322f', '矢量图标', 'initIconList.jhtml?type_=3', '2', '1', '0', 'vector.png', null, null, '4');
INSERT INTO `aos_sys_page` VALUES ('c47935773e9443dd9a6ceecb69982ac2', '4d3cfce7b9b146d2bc8482ec477517aa', '我的快捷菜单', 'initMyNav.jhtml', '2', '1', '0', 'org.png', '', '', '4');
INSERT INTO `aos_sys_page` VALUES ('c8548f73784d42989363712729a320e0', '1906d5a892654e2bb882851e0ea7322f', '分隔符', null, '4', '1', '0', null, null, null, '3');
INSERT INTO `aos_sys_page` VALUES ('cacc4fcdc5454f1ebab63b00e4bf56cc', '4d3cfce7b9b146d2bc8482ec477517aa', '我的个人设置', 'initMyInfo.jhtml', '2', '1', '1', 'icon_19.png', '', '', '1');
INSERT INTO `aos_sys_page` VALUES ('d45aefac856942d484441481cd142212', '4d3cfce7b9b146d2bc8482ec477517aa', '我的操作日志', '', '2', '1', '0', 'icon75.png', '', '', '6');
INSERT INTO `aos_sys_page` VALUES ('dd3d77605b824ca18357222128aebc5b', '4d3cfce7b9b146d2bc8482ec477517aa', '分割符', null, '4', '1', '0', null, null, null, '5');

-- ----------------------------
-- Table structure for `aos_sys_page_el`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_page_el`;
CREATE TABLE `aos_sys_page_el` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `dom_id_` varchar(255) NOT NULL COMMENT 'DOM ID',
  `name_` varchar(255) NOT NULL COMMENT '名称',
  `type_` varchar(255) NOT NULL COMMENT '类型',
  `module_id_` varchar(64) NOT NULL COMMENT '所属功能模块流水号',
  `page_id_` varchar(64) NOT NULL COMMENT '页面ID',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_page_el_ukey` (`dom_id_`,`module_id_`,`page_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='页面元素表';

-- ----------------------------
-- Records of aos_sys_page_el
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_page_el_grant`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_page_el_grant`;
CREATE TABLE `aos_sys_page_el_grant` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `el_id_` varchar(64) NOT NULL COMMENT '页面元素流水号',
  `user_id_` varchar(64) DEFAULT NULL COMMENT '用户流水号',
  `role_id_` varchar(64) DEFAULT NULL COMMENT '角色流水号',
  `post_id_` varchar(64) DEFAULT NULL COMMENT '岗位流水号',
  `grant_type_` varchar(255) NOT NULL COMMENT '权限类型',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='页面元素授权表';

-- ----------------------------
-- Records of aos_sys_page_el_grant
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_param`
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
-- Records of aos_sys_param
-- ----------------------------
INSERT INTO `aos_sys_param` VALUES ('0dabca413781404b9cbfaae3881fc5a6', 'app_ico', '/static/icon/ico/aos2.ico', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '应用系统小图标', '0', null, '浏览器标题栏左上角显示');
INSERT INTO `aos_sys_param` VALUES ('19ad8d57d72b4ecf98ad133ebb6492bd', 'page_load_gif_', 'wheel.gif', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '页面刷新动画文件', '0', '', '页面刷新动画文件。可选的预设动画文件：run.gif、wheel.gif。动画path：/static/image/gif/pageload。');
INSERT INTO `aos_sys_param` VALUES ('1bd1c0a5849d4a30b3f1eb2761b2865d', 'show_login_win_head_', 'true', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '是否显示登录窗口标题栏', '0', '', '是否显示登录窗口标题栏(Ext登录风格)。缺省值：false。可选值：true|false。');
INSERT INTO `aos_sys_param` VALUES ('1cc1a1bee27f44389e7e64a89d9ccc76', 'msgtarget_', 'qtip', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '表单校验消息提示方式', '0', null, '可选值必须是下列值之一 (1)、qtip 当用户鼠标悬停在该域之上时显示包含了消息的迅速提示。(2)、title 显示消息以浏览器默认的title属性弹出。 (3)、under 在域下方添加一块包含了错误消息的div。(4)、side 添加一个错误图标在域的右边，鼠标悬停上面时弹出显示消息。');
INSERT INTO `aos_sys_param` VALUES ('1f2adf3aa726447e9728a3f67b718b41', 'vercode_show_', '0', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码开关', '0', '', '是否在登录页面显示验证码及后台验证码验证。可选值：0(否) | 1(是)。');
INSERT INTO `aos_sys_param` VALUES ('2e45751d623f48389e12bfb7c3891597', 'treenode_cursor_', 'pointer', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '树节点鼠标光标样式', '0', '', '缺省值：pointer。可选值：任何符合Css的cursor属性定义的值。default | pointer | auto等。');
INSERT INTO `aos_sys_param` VALUES ('376a372433634af4b6d2d558f1959f5b', 'role_grant_mode_', '1', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '角色授权模式', '0', null, '角色授权模式(角色可见度)。可选值：1|2。1：可见当前管理员创建的角色和当前管理员所属组织的其他管理员创建的角色。2：可见当前管理员创建的角色和当前管理员所属组织及其下级子孙组织的其他管理员创建的角色。');
INSERT INTO `aos_sys_param` VALUES ('3ff54d336e57461d8cd708a8bad8bc36', 'combobox_emptytext', '请选择...', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '下拉选择框的缺省提示信息', '0', null, null);
INSERT INTO `aos_sys_param` VALUES ('43fb125bed224cbbaf2390df1041c3b0', 'dev_account_', 'root', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '开发者登录帐号', '0', '', '登录页面开发者按钮登录帐号。可以配置为任何一个存在的帐号。');
INSERT INTO `aos_sys_param` VALUES ('47bd798e93314882af7244ba1ae9fbc8', 'vercode_characters_', 'abcdetx2345678', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码待选字符集', '0', '', '验证码待选字符集。');
INSERT INTO `aos_sys_param` VALUES ('53267cbf8e9f4fc490798054fbe85c7e', 'copyright_', '2016 Realaicy', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '版权信息', '0', '', '版权信息');
INSERT INTO `aos_sys_param` VALUES ('58099059c3004213ae0977d4ed5551f5', 'prevent_rightclick_', 'false', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '全局右键', '0', null, '阻止浏览器缺省鼠标右键事件。可选值：true|false。缺省值：true。');
INSERT INTO `aos_sys_param` VALUES ('6032c7e953994a718f6072c956906538', 'app_title_', '智慧药监管理平台', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '首页浏览器标题内容', '0', '', '首页浏览器标题内容');
INSERT INTO `aos_sys_param` VALUES ('714d370fa7f54b01ae9a006806c60135', 'is_show_top_nav_', 'true', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '水平导航条', '1', 'is_show_top_nav_', '是否显示水平导航条。(只有在导航模式为1的情况，此设置才有效,导航模式为2，则水平导航条不会消失)。可选值：true| false。');
INSERT INTO `aos_sys_param` VALUES ('7290d8299cba41dc9e23323a0db22a95', 'json_format', '1', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'JSON输出模式', '0', '', ' json输出模式。0：格式化输出模式；1：压缩模式。');
INSERT INTO `aos_sys_param` VALUES ('74d65234606c4f448eb06d6a07a6c138', 'user_head_catalog_id_', '613', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '用户头像流文件分类ID', '0', null, '用户头像流文件分类ID，分类科目中的用户头像分类ID。用户上传文件时使用。');
INSERT INTO `aos_sys_param` VALUES ('757f555c0d734539baa70e8a1788cc62', 'is_show_statusbar_', 'true', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '是否显示主界面状态栏', '0', '', '是否显示主界面状态栏。可选值：true|false。');
INSERT INTO `aos_sys_param` VALUES ('7882ac5560ef4a04993279dfc24b6f23', 'user_obj_del_mode_', 'update', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '用户对象删除模式', '0', null, '物理删除：delete；逻辑删除：update。');
INSERT INTO `aos_sys_param` VALUES ('7bc3899d2fc24e4b804e6f763c3d6b36', 'dev_account_login_', '1', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '开发者登录帐号开关', '0', null, '是否启用开发者登录帐号功能,如启用则在登录界面会出现[开发者]按钮。可选值：1 | 0。提示：系统若在生产模式下运行，则此配置忽略，自动关闭开发者登录功能。');
INSERT INTO `aos_sys_param` VALUES ('7e4d320f454843739f40476dcbcdc91a', 'run_mode_', '0', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '运行模式', '0', '', '0：开发模式；1：生产模式；2：在线体验模式');
INSERT INTO `aos_sys_param` VALUES ('873c2cb1dde54b308211e8a2bc6edbb5', 'theme_', 'classic', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '系统主题风格', '1', 'theme_', '可选值：classic。缺省值：classic。');
INSERT INTO `aos_sys_param` VALUES ('9cb03933f61e4c68a58e50873ac38fbd', 'page_load_msg_', '正在拼命加载页面, 请稍等...', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '页面加载等待提示信息', '0', null, null);
INSERT INTO `aos_sys_param` VALUES ('a19b559ab8804f5887867df4151ad631', 'page_size_', '50', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '分页大小', '0', null, '缺省的分页大小。JSP页面的属性设置会覆盖这个配置。');
INSERT INTO `aos_sys_param` VALUES ('a1ad9c90f524467180bceecd1f02b8b8', 'nav_mode_', '1', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航模式', '1', 'nav_mode_', '可选值，1：水平导航按钮和垂直导航的卡片属于统一层级；2：水平导航按钮和垂直导航的卡片有上下级级联导航关系。(当前模式2未实现)');
INSERT INTO `aos_sys_param` VALUES ('a843396066db4e77a7b9ed7ae4cdda37', 'login_page_', 'login.ext.jsp', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '登录页面', '0', '', 'Ext原生风格的登录界面');
INSERT INTO `aos_sys_param` VALUES ('ad9cb685144c4e36b19b31e53190221a', 'skin_', 'blue', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '系统缺省皮肤', '1', 'skin_', '可选值：blue|gray|neptune|aos。缺省值：blue。');
INSERT INTO `aos_sys_param` VALUES ('b07b8e2cc1284d14b9e680a5cac0722a', 'app_name_', '智慧药监管理平台', '4018f65de18043c899b5e21ce7328df7', '0.001.002', '应用系统名称', '0', '', '应用系统名称');
INSERT INTO `aos_sys_param` VALUES ('be82f58309a24ee397d3a24631e48405', 'vercode_length_', '4', '6f94ef4ac17d4d098f91f0a4579f8591', '0.001.002.001', '验证码长度', '0', '', '验证码长度');
INSERT INTO `aos_sys_param` VALUES ('bf26e19236654718a6aa369f3e4b4bf7', 'coder_project_rootpath_', '0', '01afa7f4bb4d4189a4817ade7b5c1b8d', '0.001.002.003', '代码生成器使用的工程根目录', '0', '', '代码生成器的工程跟目录。如果为0则自动获取。');
INSERT INTO `aos_sys_param` VALUES ('c744b99660c74302b7a3ae5834a7b6eb', 'grid_column_algin_', 'left', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '表格列内容对齐方式', '0', '', '表格列对齐模式。有效值：left|center|right。');
INSERT INTO `aos_sys_param` VALUES ('d2a8d045aa7e44ef93f0735a4c486bc6', 'nav_tab_index_', '0', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航缺省活动页', '1', 'nav_tab_index_', '左侧布局的导航卡片缺省激活的卡片索引号，索引下标从0开始。');
INSERT INTO `aos_sys_param` VALUES ('d3b33d5dee5b46738f9525b8977d7673', 'login_back_img_', '-1', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '登录页面的背景图片', '0', '', '登录页面的背景图片。可选的预设背景图片为：0.jpg、1.jpg、2.jpg。如果需要随机出现背景，则将其设置为-1。');
INSERT INTO `aos_sys_param` VALUES ('eeb66260a2c141b2a0bb06bb41d7803b', 'navbar_btn_style_', 'tight', 'a072411787f545edb7e7c3c23fa6c0ff', '0.001.002.004', '导航条按钮风格', '1', 'navbar_btn_style_', '顶部水平导航条的按钮样式风格。tight：组合按钮；standalone：独立按钮。');
INSERT INTO `aos_sys_param` VALUES ('f18649a182a946a693b36f817374cb1c', 'welcome_page_title_', '欢迎', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', '欢迎页标题', '0', null, '系统登录后第一个缺省打开的Tab页面的标题。缺省：\"欢迎\"。');
INSERT INTO `aos_sys_param` VALUES ('fcf73fa9129649a08ebb41e1ec8b5340', 'layout_', 'tab', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'Center区域布局风格', '1', 'layout_', '系统业务经办区域(center)布局风格。可选值：tab|page。缺省值：tab。tab：支持同时打开多个功能模块界面；page：当前只能打开1个功能界面。');
INSERT INTO `aos_sys_param` VALUES ('fdd95913b7e54e3ca6be9557484159f5', 'tab_focus_color_', '#0099FF', 'f22f39171b484d81a604d3eb50b33584', '0.001.002.002', 'Tab高亮颜色', '1', 'tab_focus_color_', '缺省的当前Tab卡片高亮提示颜色');

-- ----------------------------
-- Table structure for `aos_sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_post`;
CREATE TABLE `aos_sys_post` (
  `id_` varchar(64) NOT NULL COMMENT ' 流水号',
  `name_` varchar(255) NOT NULL COMMENT '岗位名称',
  `status_` varchar(255) NOT NULL DEFAULT '1' COMMENT '当前状态',
  `type_` varchar(255) NOT NULL COMMENT '岗位类型',
  `org_id_` varchar(64) NOT NULL COMMENT '所属部门流水号',
  `create_time_` varchar(255) NOT NULL COMMENT '创建时间',
  `creater_id_` varchar(64) NOT NULL COMMENT '创建人ID',
  `org_cascade_id_` varchar(255) NOT NULL COMMENT '所属部门节点语义ID',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位表';

-- ----------------------------
-- Records of aos_sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_role`;
CREATE TABLE `aos_sys_role` (
  `id_` varchar(64) NOT NULL COMMENT ' 流水号',
  `name_` varchar(255) NOT NULL COMMENT '角色名称',
  `status_` varchar(255) NOT NULL DEFAULT '1' COMMENT '当前状态',
  `type_` varchar(255) NOT NULL COMMENT '角色类型',
  `create_time_` varchar(255) NOT NULL COMMENT '创建时间',
  `creater_id_` varchar(64) NOT NULL COMMENT '创建人ID',
  `creater_org_id_` varchar(64) NOT NULL COMMENT '创建人所属部门流水号',
  `creater_org_cascade_id_` varchar(255) NOT NULL COMMENT '创建人所属部门节点语义ID',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of aos_sys_role
-- ----------------------------
INSERT INTO `aos_sys_role` VALUES ('3eee65836a4e4d5a95b4935e04a9bf6c', '企业用户组', '1', '1', '2016-05-03 14:01:50', 'fa04db9dd2f54d61b0c8202a25de2dc6', '63cf387a243d4d9799367d773b853346', '0');
INSERT INTO `aos_sys_role` VALUES ('84f923b5e334498494eda38d8e86ef80', '研发角色', '1', '1', '2016-02-02 21:56:20', 'fa04db9dd2f54d61b0c8202a25de2dc6', '63cf387a243d4d9799367d773b853346', '0');
INSERT INTO `aos_sys_role` VALUES ('9fc327f9d0a54c928d490dc38ce8fa49', '企业管理员组', '1', '1', '2016-05-03 13:52:47', 'fa04db9dd2f54d61b0c8202a25de2dc6', '63cf387a243d4d9799367d773b853346', '0');
INSERT INTO `aos_sys_role` VALUES ('cb9dea34a86043be875e1729bd87df32', '区县局管理员', '1', '1', '2016-05-03 10:44:04', 'fa04db9dd2f54d61b0c8202a25de2dc6', '63cf387a243d4d9799367d773b853346', '0');
INSERT INTO `aos_sys_role` VALUES ('d1f4e7fe1b9e45f3b20452a76ab58e78', '天津局测试角色', '1', '1', '2016-05-12 10:14:30', 'c4db76be7dd94f95b5213b885f919cba', 'be742f86c9914e7b83bfb531c2e693df', '0.007.001');
INSERT INTO `aos_sys_role` VALUES ('db0517b284ae4ecebe4358cb9e9d6295', '天津局管理员组', '1', '1', '2016-03-23 09:37:19', 'fa04db9dd2f54d61b0c8202a25de2dc6', '63cf387a243d4d9799367d773b853346', '0');

-- ----------------------------
-- Table structure for `aos_sys_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_sequence`;
CREATE TABLE `aos_sys_sequence` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `name_` varchar(255) NOT NULL COMMENT '名称',
  `type_` varchar(255) DEFAULT NULL COMMENT '类型',
  `prefix_` varchar(255) DEFAULT NULL COMMENT '前缀',
  `start_` varchar(255) DEFAULT '1' COMMENT '起始值',
  `step_` varchar(255) DEFAULT '1' COMMENT '递增步长',
  `cur_value_` varchar(255) DEFAULT '0' COMMENT '当前值',
  `status_` varchar(255) NOT NULL DEFAULT '1' COMMENT '当前状态',
  `connector_` varchar(255) DEFAULT NULL COMMENT '连接符',
  `suffix_` varchar(255) DEFAULT NULL COMMENT '后缀',
  `db_seq_name_` varchar(255) DEFAULT NULL COMMENT 'DBSequence名称',
  `max_value_` varchar(255) DEFAULT '9223372036854775807' COMMENT '最大值',
  `is_circul_` varchar(255) DEFAULT '0' COMMENT '是否循环',
  `min_value_` varchar(255) DEFAULT '1' COMMENT '最小值',
  `is_leftpad_` varchar(255) DEFAULT '0' COMMENT '是否左补足',
  `format_value_` varchar(255) DEFAULT NULL COMMENT '当前格式化值',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_sequence_name_ukey` (`name_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ID配置表';

-- ----------------------------
-- Records of aos_sys_sequence
-- ----------------------------
INSERT INTO `aos_sys_sequence` VALUES ('2abfc360e8a74e21bcda37113269fca0', 'DEMOID', '1', null, '1', '1', '6637', '1', null, null, null, '9223372036854775807', '0', '1', '0', '6637', '演示模块相关功能使用的ID发生器');
INSERT INTO `aos_sys_sequence` VALUES ('40b37118cebf431283415862d355c72c', 'CARDID', '1', '', '1', '1', '10004005', '1', '', '', null, '99999999', '0', '10000000', '0', '10004005', '范例系统卡号');
INSERT INTO `aos_sys_sequence` VALUES ('7487db32b061465da1af721e84e9942a', 'GUUID', '2', null, '1', '1', 'a9f677c8581546168452da287d30791f', '1', null, null, null, '9223372036854775807', '0', '1', '0', 'a9f677c8581546168452da287d30791f', '通用UUID。');

-- ----------------------------
-- Table structure for `aos_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_user`;
CREATE TABLE `aos_sys_user` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `account_` varchar(255) NOT NULL COMMENT '用户登录帐号',
  `password_` varchar(255) NOT NULL COMMENT '密码',
  `name_` varchar(255) NOT NULL COMMENT '用户姓名',
  `sex_` varchar(255) NOT NULL DEFAULT '0' COMMENT '性别',
  `org_id_` varchar(64) NOT NULL COMMENT '所属主部门流水号',
  `status_` varchar(255) NOT NULL COMMENT '用户状态',
  `type_` varchar(255) NOT NULL COMMENT '用户类型',
  `biz_code_` varchar(255) DEFAULT NULL COMMENT '业务对照码',
  `create_time_` varchar(255) NOT NULL COMMENT ' 经办时间',
  `creater_id_` varchar(64) NOT NULL COMMENT '经办人流水号',
  `org_cascade_id_` varchar(255) NOT NULL COMMENT '所属部门节点语义ID',
  `delete_flag_` varchar(255) NOT NULL COMMENT '逻辑删除标识',
  `biz_type_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
-- Records of aos_sys_user
-- ----------------------------
INSERT INTO `aos_sys_user` VALUES ('2c275af5a5464404a11ba49b63b4b900', 'entuser1', 'EffPtixplPo=', 'A企业普通用户', '3', '00a6355517874ab9ac9c89184d438124', '1', '1', null, '2016-05-03 13:54:28', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.008.001', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('5f6b500ffdf642349a1b46203c147ee0', 'entadmin1', 'EffPtixplPo=', 'A企业管理员', '3', '00a6355517874ab9ac9c89184d438124', '1', '1', null, '2016-05-03 13:49:46', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.008.001', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('76288addaae04cfa972e2f1b3a55079a', 'test2', 'EffPtixplPo=', 'test2', '3', '00a6355517874ab9ac9c89184d438124', '1', '1', null, '2016-05-03 15:22:16', '5f6b500ffdf642349a1b46203c147ee0', '0.008.001', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('793ad1a8370b4f9e9180c975ef1bb1fa', 'companyatest1', 'EffPtixplPo=', 'companyatest1', '3', '00a6355517874ab9ac9c89184d438124', '1', '1', null, '2016-05-10 15:02:06', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.008.001', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('7a2ff6749f3d43a5976c46dd70fef7cd', 'bcadmin', 'EffPtixplPo=', '北辰分局管理员', '3', '44284adb0da14a269fb0c907d0f1ceaf', '1', '1', null, '2016-05-03 10:39:08', 'c321c891521446bdac49ae2bb29d7a00', '0.007.001.009', '0', 'jianguan');
INSERT INTO `aos_sys_user` VALUES ('899beb31a2e84369b5b0d1b8bfaefb38', 'entadmin2', 'EffPtixplPo=', 'B企业管理员', '3', '02dba066a2894ac08fafe0dc599caba2', '1', '1', null, '2016-05-03 13:53:37', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.008.002', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('a015b01b28a446629e9f08eda6594b20', 'entbuser1', 'EffPtixplPo=', 'B企业普通用户1', '3', '02dba066a2894ac08fafe0dc599caba2', '1', '1', null, '2016-05-03 13:55:42', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.008.002', '0', 'ent');
INSERT INTO `aos_sys_user` VALUES ('c321c891521446bdac49ae2bb29d7a00', 'bhadmin', 'EffPtixplPo=', '滨海新区分局管理员', '3', 'be8d6dacb14a42c7bb31893f3dcb922b', '1', '1', '', '2016-03-23 16:13:11', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.007.001.001', '0', 'jianguan');
INSERT INTO `aos_sys_user` VALUES ('c4db76be7dd94f95b5213b885f919cba', 'tjadmin', 'EffPtixplPo=', '天津局系统管理员', '3', 'be742f86c9914e7b83bfb531c2e693df', '1', '1', null, '2016-03-23 09:36:34', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.007.001', '0', 'jianguan');
INSERT INTO `aos_sys_user` VALUES ('c7d4173d7d1c4b6cb13a79b69bd8b726', 'jxadmin2', 'EffPtixplPo=', 'test', '3', 'd12df3a736c742c58da176dbbd52d128', '1', '1', null, '2016-05-10 15:01:13', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.007.001.015', '0', 'jianguan');
INSERT INTO `aos_sys_user` VALUES ('e470153e65ff4acf84ef6bba89290519', 'jxadmin', 'EffPtixplPo=', '蓟县分局管理员', '3', 'd12df3a736c742c58da176dbbd52d128', '1', '1', null, '2016-05-10 13:35:31', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.007.001.015', '0', 'jianguan');
INSERT INTO `aos_sys_user` VALUES ('fa04db9dd2f54d61b0c8202a25de2dc6', 'root', 'gnRD3IiRP6s=', '超级用户', '1', '63cf387a243d4d9799367d773b853346', '1', '2', '', '2014-09-27 22:12:56', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0', '0', 'super');
INSERT INTO `aos_sys_user` VALUES ('fe24c4ac34444902a2129ec1debf9ed4', 'caocao', 'gnRD3IiRP6s=', '曹操', '3', 'b2fa97f8bed34eee86201f01fa786ed4', '1', '1', null, '2016-02-02 21:55:57', 'fa04db9dd2f54d61b0c8202a25de2dc6', '0.001', '1', 'other');

-- ----------------------------
-- Table structure for `aos_sys_user_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_user_cfg`;
CREATE TABLE `aos_sys_user_cfg` (
  `id_` varchar(64) NOT NULL COMMENT '用户ID',
  `theme_` varchar(255) DEFAULT NULL COMMENT '用户界面主题',
  `skin_` varchar(255) DEFAULT NULL COMMENT '用户界面皮肤',
  `is_show_top_nav_` varchar(255) DEFAULT NULL COMMENT '是否显示水平导航条',
  `navbar_btn_style_` varchar(255) DEFAULT NULL COMMENT '导航条按钮风格',
  `tab_focus_color_` varchar(255) DEFAULT NULL COMMENT 'Tab高亮颜色',
  `nav_tab_index_` varchar(255) DEFAULT NULL COMMENT '导航缺省活动页',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户配置表';

-- ----------------------------
-- Records of aos_sys_user_cfg
-- ----------------------------
INSERT INTO `aos_sys_user_cfg` VALUES ('2c275af5a5464404a11ba49b63b4b900', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('5f6b500ffdf642349a1b46203c147ee0', 'classic', 'blue', 'true', 'tight', '#0099FF', '1');
INSERT INTO `aos_sys_user_cfg` VALUES ('76288addaae04cfa972e2f1b3a55079a', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('793ad1a8370b4f9e9180c975ef1bb1fa', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('7a2ff6749f3d43a5976c46dd70fef7cd', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('899beb31a2e84369b5b0d1b8bfaefb38', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('a015b01b28a446629e9f08eda6594b20', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('c321c891521446bdac49ae2bb29d7a00', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('c4db76be7dd94f95b5213b885f919cba', 'classic', 'blue', 'true', 'tight', '#0099FF', '1');
INSERT INTO `aos_sys_user_cfg` VALUES ('c7d4173d7d1c4b6cb13a79b69bd8b726', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');
INSERT INTO `aos_sys_user_cfg` VALUES ('e470153e65ff4acf84ef6bba89290519', 'classic', 'blue', 'true', 'tight', '#0099FF', '1');
INSERT INTO `aos_sys_user_cfg` VALUES ('fa04db9dd2f54d61b0c8202a25de2dc6', 'classic', 'blue', 'true', 'tight', '#0099FF', '1');
INSERT INTO `aos_sys_user_cfg` VALUES ('fe24c4ac34444902a2129ec1debf9ed4', 'classic', 'blue', 'true', 'tight', '#0099FF', '0');

-- ----------------------------
-- Table structure for `aos_sys_user_ext`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_user_ext`;
CREATE TABLE `aos_sys_user_ext` (
  `id_` varchar(64) NOT NULL COMMENT '用户ID',
  `email_` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `fixed_phone_` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `mobile_phone_` varchar(255) DEFAULT NULL COMMENT '移动电话',
  `address_` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_` varchar(255) DEFAULT NULL COMMENT '邮编',
  `birthday_` varchar(255) DEFAULT NULL COMMENT '生日',
  `idno_` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `qq_` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `dynamic_field_` varchar(4000) DEFAULT NULL COMMENT '动态扩展字段',
  `remark_` varchar(4000) DEFAULT NULL COMMENT '备注',
  `filed1_` varchar(255) DEFAULT NULL COMMENT '静态扩展字段1',
  `filed2_` varchar(255) DEFAULT NULL COMMENT '静态扩展字段2',
  `filed3_` varchar(255) DEFAULT NULL COMMENT '静态扩展字段3',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户扩展信息表';

-- ----------------------------
-- Records of aos_sys_user_ext
-- ----------------------------
INSERT INTO `aos_sys_user_ext` VALUES ('2c275af5a5464404a11ba49b63b4b900', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('5f6b500ffdf642349a1b46203c147ee0', '', '', '', '', '', '', '', '', null, '', null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('76288addaae04cfa972e2f1b3a55079a', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('793ad1a8370b4f9e9180c975ef1bb1fa', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('7a2ff6749f3d43a5976c46dd70fef7cd', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('899beb31a2e84369b5b0d1b8bfaefb38', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('a015b01b28a446629e9f08eda6594b20', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('c321c891521446bdac49ae2bb29d7a00', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `aos_sys_user_ext` VALUES ('c4db76be7dd94f95b5213b885f919cba', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('c7d4173d7d1c4b6cb13a79b69bd8b726', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('e470153e65ff4acf84ef6bba89290519', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `aos_sys_user_ext` VALUES ('fa04db9dd2f54d61b0c8202a25de2dc6', '307916217@qq.com', '', '186188188188', '', '', '', '', '307916217', '', '超级用户拥有系统最高权限。', '', '', null);
INSERT INTO `aos_sys_user_ext` VALUES ('fe24c4ac34444902a2129ec1debf9ed4', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `aos_sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_user_post`;
CREATE TABLE `aos_sys_user_post` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `user_id_` varchar(64) NOT NULL COMMENT '用户流水号',
  `post_id_` varchar(64) NOT NULL COMMENT '岗位流水号',
  `operate_time_` varchar(255) NOT NULL COMMENT '授权时间',
  `operator_id_` varchar(64) NOT NULL COMMENT '授权人流水号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_user_post_ukey` (`user_id_`,`post_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-岗位关联表';

-- ----------------------------
-- Records of aos_sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `aos_sys_user_role`;
CREATE TABLE `aos_sys_user_role` (
  `id_` varchar(64) NOT NULL COMMENT '流水号',
  `user_id_` varchar(64) NOT NULL COMMENT '用户流水号',
  `role_id_` varchar(64) NOT NULL COMMENT '角色流水号',
  `operate_time_` varchar(255) NOT NULL COMMENT '授权时间',
  `operator_id_` varchar(64) NOT NULL COMMENT '授权人流水号',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_sys_user_role_ukey` (`user_id_`,`role_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
-- Records of aos_sys_user_role
-- ----------------------------
INSERT INTO `aos_sys_user_role` VALUES ('1561a1062796470095c78f76b0056766', '7a2ff6749f3d43a5976c46dd70fef7cd', 'cb9dea34a86043be875e1729bd87df32', '2016-05-03 10:50:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('24e07f1246994f138e99f70bdc634715', '2c275af5a5464404a11ba49b63b4b900', '3eee65836a4e4d5a95b4935e04a9bf6c', '2016-05-03 14:03:12', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('3f0658974df1474ab8a6cbd7d1583475', '899beb31a2e84369b5b0d1b8bfaefb38', '9fc327f9d0a54c928d490dc38ce8fa49', '2016-05-03 14:01:23', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('4c1e5869f9b240879e187ab899af25ab', 'a015b01b28a446629e9f08eda6594b20', '3eee65836a4e4d5a95b4935e04a9bf6c', '2016-05-03 14:03:12', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('539d9dd51d5f44b4b1587546ba132569', '5f6b500ffdf642349a1b46203c147ee0', '9fc327f9d0a54c928d490dc38ce8fa49', '2016-05-03 14:01:23', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('ac8b39a24f4b42dfbb2c8f23ad048122', 'c321c891521446bdac49ae2bb29d7a00', 'cb9dea34a86043be875e1729bd87df32', '2016-05-03 10:50:04', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('b11e0662a185416a8a338b9cc65f3ab1', '5f6b500ffdf642349a1b46203c147ee0', '3eee65836a4e4d5a95b4935e04a9bf6c', '2016-05-03 14:03:45', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('b3fea94f5f0d4065b26c1b2e28fe3a75', 'fe24c4ac34444902a2129ec1debf9ed4', '84f923b5e334498494eda38d8e86ef80', '2016-02-02 21:56:35', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('c61263f16764451aab377e4325bd3e18', '899beb31a2e84369b5b0d1b8bfaefb38', '3eee65836a4e4d5a95b4935e04a9bf6c', '2016-05-03 14:03:45', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('c937961d841e4daebf988bdc1bf74084', 'e470153e65ff4acf84ef6bba89290519', 'cb9dea34a86043be875e1729bd87df32', '2016-05-10 13:35:40', 'fa04db9dd2f54d61b0c8202a25de2dc6');
INSERT INTO `aos_sys_user_role` VALUES ('d7010e06f59a400db5625b97c95f6939', 'c4db76be7dd94f95b5213b885f919cba', 'db0517b284ae4ecebe4358cb9e9d6295', '2016-03-23 09:40:35', 'fa04db9dd2f54d61b0c8202a25de2dc6');

-- ----------------------------
-- Table structure for `aos_wf_evt_log`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_evt_log`;
CREATE TABLE `aos_wf_evt_log` (
  `log_nr_` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `time_stamp_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_` longblob,
  `lock_owner_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lock_time_` timestamp NULL DEFAULT NULL,
  `is_processed_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`log_nr_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ge_bytearray`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ge_bytearray`;
CREATE TABLE `aos_wf_ge_bytearray` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deployment_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `bytes_` longblob,
  `generated_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_fk_bytearr_depl` (`deployment_id_`),
  CONSTRAINT `aos_fk_bytearr_depl` FOREIGN KEY (`deployment_id_`) REFERENCES `aos_wf_re_deployment` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ge_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ge_property`;
CREATE TABLE `aos_wf_ge_property` (
  `name_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `rev_` int(11) DEFAULT NULL,
  PRIMARY KEY (`name_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ge_property
-- ----------------------------
INSERT INTO `aos_wf_ge_property` VALUES ('next.dbid', '1', '1');
INSERT INTO `aos_wf_ge_property` VALUES ('schema.history', 'create(5.18.0.0)', '1');
INSERT INTO `aos_wf_ge_property` VALUES ('schema.version', '5.18.0.0', '1');

-- ----------------------------
-- Table structure for `aos_wf_hi_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_actinst`;
CREATE TABLE `aos_wf_hi_actinst` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `aos_id_` varchar(255) COLLATE utf8_bin NOT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `call_proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `aos_name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `aos_type_` varchar(255) COLLATE utf8_bin NOT NULL,
  `assignee_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_time_` datetime NOT NULL,
  `end_time_` datetime DEFAULT NULL,
  `duration_` bigint(20) DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  KEY `aos_idx_hi_act_inst_start` (`start_time_`),
  KEY `aos_idx_hi_act_inst_end` (`end_time_`),
  KEY `aos_idx_hi_act_inst_procinst` (`proc_inst_id_`,`aos_id_`),
  KEY `aos_idx_hi_act_inst_exec` (`execution_id_`,`aos_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_actinst
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_attachment`;
CREATE TABLE `aos_wf_hi_attachment` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `url_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `content_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_comment`;
CREATE TABLE `aos_wf_hi_comment` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time_` datetime NOT NULL,
  `user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `action_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `message_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `full_msg_` longblob,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_detail`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_detail`;
CREATE TABLE `aos_wf_hi_detail` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `type_` varchar(255) COLLATE utf8_bin NOT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `act_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin NOT NULL,
  `var_type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rev_` int(11) DEFAULT NULL,
  `time_` datetime NOT NULL,
  `bytearray_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `double_` double DEFAULT NULL,
  `long_` bigint(20) DEFAULT NULL,
  `text_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `text2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_hi_detail_proc_inst` (`proc_inst_id_`),
  KEY `aos_idx_hi_detail_act_inst` (`act_inst_id_`),
  KEY `aos_idx_hi_detail_time` (`time_`),
  KEY `aos_idx_hi_detail_name` (`name_`),
  KEY `aos_idx_hi_detail_task_id` (`task_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_identitylink`;
CREATE TABLE `aos_wf_hi_identitylink` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_hi_ident_lnk_user` (`user_id_`),
  KEY `aos_idx_hi_ident_lnk_task` (`task_id_`),
  KEY `aos_idx_hi_ident_lnk_procinst` (`proc_inst_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_procinst`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_procinst`;
CREATE TABLE `aos_wf_hi_procinst` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `business_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `start_time_` datetime NOT NULL,
  `end_time_` datetime DEFAULT NULL,
  `duration_` bigint(20) DEFAULT NULL,
  `start_user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_act_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `end_act_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `super_process_instance_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `delete_reason_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `proc_inst_id_` (`proc_inst_id_`),
  KEY `aos_idx_hi_pro_inst_end` (`end_time_`),
  KEY `aos_idx_hi_pro_i_buskey` (`business_key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_procinst
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_taskinst`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_taskinst`;
CREATE TABLE `aos_wf_hi_taskinst` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `task_def_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `owner_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `assignee_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_time_` datetime NOT NULL,
  `claim_time_` datetime DEFAULT NULL,
  `end_time_` datetime DEFAULT NULL,
  `duration_` bigint(20) DEFAULT NULL,
  `delete_reason_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `priority_` int(11) DEFAULT NULL,
  `due_date_` datetime DEFAULT NULL,
  `form_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  KEY `aos_idx_hi_task_inst_procinst` (`proc_inst_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_taskinst
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_hi_varinst`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_hi_varinst`;
CREATE TABLE `aos_wf_hi_varinst` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin NOT NULL,
  `var_type_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `rev_` int(11) DEFAULT NULL,
  `bytearray_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `double_` double DEFAULT NULL,
  `long_` bigint(20) DEFAULT NULL,
  `text_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `text2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `create_time_` datetime DEFAULT NULL,
  `last_updated_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_hi_procvar_proc_inst` (`proc_inst_id_`),
  KEY `aos_idx_hi_procvar_name_type` (`name_`,`var_type_`),
  KEY `aos_idx_hi_procvar_task_id` (`task_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_hi_varinst
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_id_group`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_id_group`;
CREATE TABLE `aos_wf_id_group` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_id_info`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_id_info`;
CREATE TABLE `aos_wf_id_info` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `user_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password_` longblob,
  `parent_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_id_membership`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_id_membership`;
CREATE TABLE `aos_wf_id_membership` (
  `user_id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id_`,`group_id_`),
  KEY `aos_fk_memb_group` (`group_id_`),
  CONSTRAINT `aos_fk_memb_group` FOREIGN KEY (`group_id_`) REFERENCES `aos_wf_id_group` (`id_`),
  CONSTRAINT `aos_fk_memb_user` FOREIGN KEY (`user_id_`) REFERENCES `aos_wf_id_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_id_user`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_id_user`;
CREATE TABLE `aos_wf_id_user` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `first_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pwd_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `picture_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_re_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_re_deployment`;
CREATE TABLE `aos_wf_re_deployment` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `deploy_time_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_re_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_re_model`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_re_model`;
CREATE TABLE `aos_wf_re_model` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time_` timestamp NULL DEFAULT NULL,
  `last_update_time_` timestamp NULL DEFAULT NULL,
  `version_` int(11) DEFAULT NULL,
  `meta_info_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `deployment_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `editor_source_value_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `editor_source_extra_value_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  KEY `aos_fk_model_source` (`editor_source_value_id_`),
  KEY `aos_fk_model_source_extra` (`editor_source_extra_value_id_`),
  KEY `aos_fk_model_deployment` (`deployment_id_`),
  CONSTRAINT `aos_fk_model_deployment` FOREIGN KEY (`deployment_id_`) REFERENCES `aos_wf_re_deployment` (`id_`),
  CONSTRAINT `aos_fk_model_source` FOREIGN KEY (`editor_source_value_id_`) REFERENCES `aos_wf_ge_bytearray` (`id_`),
  CONSTRAINT `aos_fk_model_source_extra` FOREIGN KEY (`editor_source_extra_value_id_`) REFERENCES `aos_wf_ge_bytearray` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_re_procdef`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_re_procdef`;
CREATE TABLE `aos_wf_re_procdef` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `category_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `key_` varchar(255) COLLATE utf8_bin NOT NULL,
  `version_` int(11) NOT NULL,
  `deployment_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `resource_name_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `dgrm_resource_name_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `description_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `has_start_form_key_` tinyint(4) DEFAULT NULL,
  `has_graphical_notation_` tinyint(4) DEFAULT NULL,
  `suspension_state_` int(11) DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  UNIQUE KEY `aos_uniq_procdef` (`key_`,`version_`,`tenant_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_re_procdef
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_event_subscr`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_event_subscr`;
CREATE TABLE `aos_wf_ru_event_subscr` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `event_type_` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `activity_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `configuration_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  KEY `aos_idx_event_subscr_config_` (`configuration_`),
  KEY `aos_fk_event_exec` (`execution_id_`),
  CONSTRAINT `aos_fk_event_exec` FOREIGN KEY (`execution_id_`) REFERENCES `aos_wf_ru_execution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_execution`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_execution`;
CREATE TABLE `aos_wf_ru_execution` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `business_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `super_exec_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `aos_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_active_` tinyint(4) DEFAULT NULL,
  `is_concurrent_` tinyint(4) DEFAULT NULL,
  `is_scope_` tinyint(4) DEFAULT NULL,
  `is_event_scope_` tinyint(4) DEFAULT NULL,
  `suspension_state_` int(11) DEFAULT NULL,
  `cached_ent_state_` int(11) DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lock_time_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_exec_buskey` (`business_key_`),
  KEY `aos_fk_exe_procinst` (`proc_inst_id_`),
  KEY `aos_fk_exe_parent` (`parent_id_`),
  KEY `aos_fk_exe_super` (`super_exec_`),
  KEY `aos_fk_exe_procdef` (`proc_def_id_`),
  CONSTRAINT `aos_fk_exe_parent` FOREIGN KEY (`parent_id_`) REFERENCES `aos_wf_ru_execution` (`id_`),
  CONSTRAINT `aos_fk_exe_procdef` FOREIGN KEY (`proc_def_id_`) REFERENCES `aos_wf_re_procdef` (`id_`),
  CONSTRAINT `aos_fk_exe_procinst` FOREIGN KEY (`proc_inst_id_`) REFERENCES `aos_wf_ru_execution` (`id_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aos_fk_exe_super` FOREIGN KEY (`super_exec_`) REFERENCES `aos_wf_ru_execution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_execution
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_identitylink`;
CREATE TABLE `aos_wf_ru_identitylink` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `group_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_ident_lnk_user` (`user_id_`),
  KEY `aos_idx_ident_lnk_group` (`group_id_`),
  KEY `aos_idx_athrz_procedef` (`proc_def_id_`),
  KEY `aos_fk_tskass_task` (`task_id_`),
  KEY `aos_fk_idl_procinst` (`proc_inst_id_`),
  CONSTRAINT `aos_fk_athrz_procedef` FOREIGN KEY (`proc_def_id_`) REFERENCES `aos_wf_re_procdef` (`id_`),
  CONSTRAINT `aos_fk_idl_procinst` FOREIGN KEY (`proc_inst_id_`) REFERENCES `aos_wf_ru_execution` (`id_`),
  CONSTRAINT `aos_fk_tskass_task` FOREIGN KEY (`task_id_`) REFERENCES `aos_wf_ru_task` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_job`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_job`;
CREATE TABLE `aos_wf_ru_job` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin NOT NULL,
  `lock_exp_time_` timestamp NULL DEFAULT NULL,
  `lock_owner_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `exclusive_` tinyint(1) DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `process_instance_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `retries_` int(11) DEFAULT NULL,
  `exception_stack_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `exception_msg_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `duedate_` timestamp NULL DEFAULT NULL,
  `repeat_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `handler_type_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `handler_cfg_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id_`),
  KEY `aos_fk_job_exception` (`exception_stack_id_`),
  CONSTRAINT `aos_fk_job_exception` FOREIGN KEY (`exception_stack_id_`) REFERENCES `aos_wf_ge_bytearray` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_task`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_task`;
CREATE TABLE `aos_wf_ru_task` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rev_` int(11) DEFAULT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_def_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `name_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `task_def_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `owner_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `assignee_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `delegation_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `priority_` int(11) DEFAULT NULL,
  `create_time_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `due_date_` datetime DEFAULT NULL,
  `category_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `suspension_state_` int(11) DEFAULT NULL,
  `tenant_id_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `form_key_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_task_create` (`create_time_`),
  KEY `aos_fk_task_exe` (`execution_id_`),
  KEY `aos_fk_task_procinst` (`proc_inst_id_`),
  KEY `aos_fk_task_procdef` (`proc_def_id_`),
  CONSTRAINT `aos_fk_task_exe` FOREIGN KEY (`execution_id_`) REFERENCES `aos_wf_ru_execution` (`id_`),
  CONSTRAINT `aos_fk_task_procdef` FOREIGN KEY (`proc_def_id_`) REFERENCES `aos_wf_re_procdef` (`id_`),
  CONSTRAINT `aos_fk_task_procinst` FOREIGN KEY (`proc_inst_id_`) REFERENCES `aos_wf_ru_execution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_task
-- ----------------------------

-- ----------------------------
-- Table structure for `aos_wf_ru_variable`
-- ----------------------------
DROP TABLE IF EXISTS `aos_wf_ru_variable`;
CREATE TABLE `aos_wf_ru_variable` (
  `id_` varchar(64) COLLATE utf8_bin NOT NULL,
  `rev_` int(11) DEFAULT NULL,
  `type_` varchar(255) COLLATE utf8_bin NOT NULL,
  `name_` varchar(255) COLLATE utf8_bin NOT NULL,
  `execution_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `proc_inst_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `task_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `bytearray_id_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `double_` double DEFAULT NULL,
  `long_` bigint(20) DEFAULT NULL,
  `text_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `text2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `aos_idx_variable_task_id` (`task_id_`),
  KEY `aos_fk_var_exe` (`execution_id_`),
  KEY `aos_fk_var_procinst` (`proc_inst_id_`),
  KEY `aos_fk_var_bytearray` (`bytearray_id_`),
  CONSTRAINT `aos_fk_var_bytearray` FOREIGN KEY (`bytearray_id_`) REFERENCES `aos_wf_ge_bytearray` (`id_`),
  CONSTRAINT `aos_fk_var_exe` FOREIGN KEY (`execution_id_`) REFERENCES `aos_wf_ru_execution` (`id_`),
  CONSTRAINT `aos_fk_var_procinst` FOREIGN KEY (`proc_inst_id_`) REFERENCES `aos_wf_ru_execution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aos_wf_ru_variable
-- ----------------------------

-- ----------------------------
-- Table structure for `jc_common_tree`
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
  `IS_LEAF` varchar(255) DEFAULT '1' COMMENT '是否叶子节点',
  `IS_AUTO_EXPAND` varchar(255) DEFAULT '0' COMMENT '是否自动展开',
  `STATUS` smallint(255) DEFAULT '1' COMMENT '当前状态',
  `IDENTITY` varchar(255) DEFAULT NULL COMMENT '资源表示符号',
  `CREATETIME` datetime NOT NULL COMMENT '创建时间',
  `CREATERID` bigint(64) unsigned NOT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime NOT NULL,
  `UPDATERID` bigint(64) unsigned NOT NULL,
  `CUSTOM_CODE` varchar(4000) DEFAULT NULL COMMENT '自定义扩展码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
-- Records of jc_common_tree
-- ----------------------------
INSERT INTO `jc_common_tree` VALUES ('1', '1', '', '1', '测试资源1', null, null, null, null, '', '0', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '');
INSERT INTO `jc_common_tree` VALUES ('2', '1', '', '1', '测试资源2', null, null, null, null, '', '0', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '');
INSERT INTO `jc_common_tree` VALUES ('3', '1', '', '1', '测试资源3', null, null, null, null, '', '0', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '');

-- ----------------------------
-- Table structure for `jc_m_doc_all`
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
-- Records of jc_m_doc_all
-- ----------------------------
INSERT INTO `jc_m_doc_all` VALUES ('1', '0', '文档中心资源库', null, '1', null, '0', '0', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `jc_m_doc_all` VALUES ('2', '0.001', 'SOP文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `jc_m_doc_all` VALUES ('3', '0.002', '制度文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `jc_m_doc_all` VALUES ('4', '0.003', '培训文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `jc_m_doc_all` VALUES ('5', '0.004', '稽查文档', null, '1', '文档中心资源库', '0', '0', null, '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_role`;
CREATE TABLE `jc_sys_role` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT ' 流水号',
  `ROLENAME` varchar(255) NOT NULL COMMENT '角色名称',
  `ROLESTATUS` tinyint(255) DEFAULT '1' COMMENT '当前状态',
  `ROLETYPE` tinyint(255) DEFAULT NULL COMMENT '角色类型',
  `CREATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATERID` bigint(64) DEFAULT NULL COMMENT '创建人ID',
  `UPDATETIME` datetime DEFAULT NULL,
  `UPDATERID` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of jc_sys_role
-- ----------------------------
INSERT INTO `jc_sys_role` VALUES ('1', '测试角色1', null, null, null, null, null, null);
INSERT INTO `jc_sys_role` VALUES ('2', '测试角色2', null, null, null, null, null, null);
INSERT INTO `jc_sys_role` VALUES ('3', '测试角色3', null, null, null, null, null, null);
INSERT INTO `jc_sys_role` VALUES ('4', '测试角色3', null, null, null, null, null, null);
INSERT INTO `jc_sys_role` VALUES ('5', '测试角色4', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `jc_sys_user`;
CREATE TABLE `jc_sys_user` (
  `ID` bigint(64) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户登录帐号',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `NICKNAME` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `SEX` char(1) DEFAULT NULL COMMENT '性别',
  `ORGID` varchar(64) DEFAULT NULL COMMENT '所属主部门流水号',
  `STATUS` tinyint(255) DEFAULT NULL COMMENT '用户状态',
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
-- Records of jc_sys_user
-- ----------------------------
INSERT INTO `jc_sys_user` VALUES ('1', 'test_1', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('2', 'test_2', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('3', 'test_3', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('4', 'test_3', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('5', 'test_4', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('6', 'realaicy', '123456', ' 刘旭东', '1', null, '1', '1', null, null, null, null, null, null, null);
INSERT INTO `jc_sys_user` VALUES ('7', 'test_5', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('8', 'test_6', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('9', 'test_7', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('10', 'test_8', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('11', 'test_9', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('12', 'test_10', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('13', 'test_11', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('14', 'test_12', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('15', 'test_13', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('16', 'test_14', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('17', 'test_15', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('18', 'test_16', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('19', 'test_17', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('20', 'test_18', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('21', 'test_19', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('22', 'test_20', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('23', 'test_21', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('24', 'test_22', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('25', 'test_23', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('26', 'test_24', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('27', 'test_25', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('28', 'test_26', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('29', 'test_27', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('30', 'test_28', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('31', 'test_29', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('32', 'test_30', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('33', 'test_31', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('34', 'test_32', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('35', 'test_33', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('36', 'test_34', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('37', 'test_35', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('38', 'test_36', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('39', 'test_37', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('40', 'test_38', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('41', 'test_39', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('42', 'test_40', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('43', 'test_41', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('44', 'test_42', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('45', 'test_43', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('46', 'test_44', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('47', 'test_45', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('48', 'test_46', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('49', 'test_47', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('50', 'test_48', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('51', 'test_49', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('52', 'test_50', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('53', 'test_51', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('54', 'test_52', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('55', 'test_53', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('56', 'test_54', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('57', 'test_55', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('58', 'test_56', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('59', 'test_57', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('60', 'test_58', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('61', 'test_59', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('62', 'test_60', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('63', 'test_61', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('64', 'test_62', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('65', 'test_63', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('66', 'test_64', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('67', 'test_65', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('68', 'test_66', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('69', 'test_67', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('70', 'test_68', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('71', 'test_69', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('72', 'test_70', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('73', 'test_71', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('74', 'test_72', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('75', 'test_73', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('76', 'test_74', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('77', 'test_75', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('78', 'test_76', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('79', 'test_77', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('80', 'test_78', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('81', 'test_79', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('82', 'test_80', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('83', 'test_81', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('84', 'test_82', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('85', 'test_83', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('86', 'test_84', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('87', 'test_85', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('88', 'test_86', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('89', 'test_87', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('90', 'test_88', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('91', 'test_89', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('92', 'test_90', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('93', 'test_91', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('94', 'test_92', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('95', 'test_93', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('96', 'test_94', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('97', 'test_95', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('98', 'test_96', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('99', 'test_97', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('100', 'test_98', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('101', 'test_99', '12345678', '刘旭东', '', null, '1', '1', null, null, '', '0', null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_user_role`
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
-- Records of jc_sys_user_role
-- ----------------------------
INSERT INTO `jc_sys_user_role` VALUES ('1', '4', '4', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('15', '5', '3', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('16', '5', '4', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('17', '5', '5', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('18', '5', '2', null, null, null, null);

-- ----------------------------
-- Table structure for `ss_checkjob_checkitem`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_checkitem`;
CREATE TABLE `ss_checkjob_checkitem` (
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
-- Records of ss_checkjob_checkitem
-- ----------------------------
INSERT INTO `ss_checkjob_checkitem` VALUES ('000ec3d1c48d45ca8d321be55f44e495', '0.003.010.255.001', 'ss_a', '药品生产管理规范', '10.255.1 主要物料的确定应当综合考虑企业所生产的药品质量风险、物料用量以及物料对药品质量的影响程度等因素', null, 'ceaa67ae87284c4db2d7845fa0ebe542', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0017ff2d13cb44168edaf1f2fe693555', '0.003.012.295', 'ss_a', '药品生产管理规范', '12.295 每批产品均应当有发运记录；根据发运记录，应当能够追查每批产品的销售情况，必要时应当能够及时全部追回，发运记录内容应当包括：产品名称、规格、批号、数量、收货单位和地址、联系方式、发货日期、运输方式等', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('00a0aeba317840509f2f15d94fd6a1b3', '0.003.003.021.002', 'ss_a', '药品生产管理规范', '3.21.2 为确保企业实现质量目标并按照本规范要求生产药品，企业负责人应当负责提供必要的资源，合理计划、组织和协调，保证质量管理部门独立履行其职责', null, 'e249c25610154493a294f7e52cc0a0d4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('01cafe8e25f740538f0e9b57bd64bba5', '0.003.003.030', 'ss_a', '药品生产管理规范', '3.30 人员卫生操作规程应当包括与健康、卫生习惯及人员着装相关的内容', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('020bd3e0b3154c69a94ec14f0f20e61a', '0.003.004.066', 'ss_a', '药品生产管理规范', '4.66 处理生物样品或放射性样品等特殊物品的实验室应当符合国家的有关要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('02ee8dd8e86348b4b840d70c08c1960c', '0.003.002.011', 'ss_a', '药品生产管理规范', '2.11 质量控制包括相应的组织机构、文件系统以及取样、检验等，确保物料或产品在放行前完成必要的检验，确认其质量符合要求;', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('02eec96dfbf0440fa16a2caaf168c812', '0.003.006.131', 'ss_a', '药品生产管理规范', '6.131 不合格的物料、中间产品、待包装产品和成品的每个包装容器上均应当有清晰醒目的标志，并在隔离区内妥善保存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('03a5a95d55764fe696ad10eaa375d0f6', '0.003.006.102.001', 'ss_a', '药品生产管理规范', '6.102.1 药品上直接印字所用油墨应当符合食用标准要求', null, '69eef02c1a474f44b73c6393c65833c2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('03d8a31ffcb94e4c849fcdbef516d417', '0.003.004.055', 'ss_a', '药品生产管理规范', '4.55 生产区应当有适度的照明，目视操作区域的照明应当满足操作要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0426d11562f44ce69aa1bf544923d4d6', '0.003.009.207', 'ss_a', '药品生产管理规范', '9.207 待用分装容器在分装前应当保持清洁，避免容器中有玻璃碎屑、金属颗粒等污染物', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0431a290fbf14ea2b6a6017d55dbdbfe', '0.003.004.057', 'ss_a', '药品生产管理规范', '4.57 仓储区应当有足够的空间，确保有序存放待验、合格、不合格、退货或召回的原辅料、包装材料、中间产品、待包装产品和成品等各类物料和产品', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('04d461e5ff1649a1aa831dc94c861d28', '0.003.001.002.001', 'ss_a', '药品生产管理规范', '1.2.1 该体系应当涵盖影响药品质量的所有因素，包括确保药品质量符合预定用途的有组织、有计划的全部活动', null, '8d459793fbda4ca0b094278e8d0910ca', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0516d9cff90846df8c939d3fb8bf572f', '0.003.008.177', 'ss_a', '药品生产管理规范', '8.177 批包装记录应当依据工艺规程中与包装相关的内容制定；记录的设计应当注意避免填写差错；批包装记录的每一页均应当标注所包装产品的名称、规格、包装形式和批号', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('05294b6b587b4d7fbd7c3dfbf0012523', '0.003.005.092.001', 'ss_a', '药品生产管理规范', '5.92.1 校准记录应当标明所用计量标准器具的名称、编号、校准有效期和计量合格证明编号，确保记录的可追溯性', null, '0901af27890d4112a55c0c4c18c2329e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0538644823af4ccaba7bdbbeff1e8054', '0.003.006.116', 'ss_a', '药品生产管理规范', '6.116 配制的每一物料及其重量或体积应当由他人独立进行复核，并有复核记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0591167e15e84f87b6b140ba1aea3ad3', '0.003.010.267', 'ss_a', '药品生产管理规范', '10.267 应当对回顾分析的结果进行评估，提出是否需要采取纠正和预防措施或进行再确认或再验证的评估意见及理由，并及时、有效地完成整改', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '510');
INSERT INTO `ss_checkjob_checkitem` VALUES ('061fed69d2314950b22ad2ff053e5aed', '0.003.010.223.006', 'ss_a', '药品生产管理规范', '10.223.6 检验记录应当至少包括以下内容：', null, '57de58f1774d4f90852961a935310aef', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('06254582303d4460a97b92d2b2113146', '0.003.002.009.002', 'ss_a', '药品生产管理规范', '2.9.2 生产管理和质量控制活动符合本规范的要求', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0663db5cff8e423781cf2d30d310bc7f', '0.003.008.183.007', 'ss_a', '药品生产管理规范', '8.183.7 变更控制', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0671fc0f30914564a17678976b9c6473', '0.003.004.052', 'ss_a', '药品生产管理规范', '4.52 制剂的原辅料称量通常应当在专门设计的称量室内进行', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('067235520e4e4a999f31ed36ec5d3b0c', '0.003.010.270', 'ss_a', '药品生产管理规范', '10.270 应当主动收集药品不良反应，对不良反应应当详细记录、评价、调查和处理，及时采取措施控制可能存在的风险，并按照要求向药品监督管理部门报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '540');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0677953827d24baaa15fa6479fd58e09', '0.003.010.266.001', 'ss_a', '药品生产管理规范', '10.266.1 当有合理的科学依据时，可按照产品的剂型分类进行质量回顾，如固体制剂、液体制剂和无菌制剂等', null, '10b7d5734a4a416084374d68e2b53279', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('070b59d343f4459b846d2ff649514f8b', '0.003.010.223.006.004', 'ss_a', '药品生产管理规范', '10.223.6.4 检验所用的试液和培养基的配制批号、对照品或标准品的来源和批号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('07a33a25344140beae53805663e04ef4', '0.003.006.119.005', 'ss_a', '药品生产管理规范', '6.119.5 产品质量状态（必要时，如待验、合格、不合格、已取样）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('07e0f065f3c9426499633d4c642a2de2', '0.003.010.226', 'ss_a', '药品生产管理规范', '10.226 试剂、试液、培养基和检定菌的管理应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('08121f0d805841b0a83de4a043947e44', '0.003.006.114', 'ss_a', '药品生产管理规范', '6.114 原辅料应当按照有效期或复验期贮存；贮存期内，如发现对质量有不良影响的特殊情况，应当进行复验', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('083992395c2647a9b0dfa3a57613ad79', '0.003.010.234.005', 'ss_a', '药品生产管理规范', '10.234.5 容器密封系统的描述', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('085a07757a0b463a9ebed34b5c601e08', '0.003.008.156', 'ss_a', '药品生产管理规范', '8.156 文件应当分类存放、条理分明，便于查阅', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0861a290f47c423b8bec6905ab9d30c8', '0.003.010.225.001.004.002', 'ss_a', '药品生产管理规范', '10.225.1.4.2 物料的留样量应当至少满足鉴别的需要', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0888bccfda33406f81e014a1b2d1872a', '0.003.010.265', 'ss_a', '药品生产管理规范', '10.265 企业应当对每家物料供应商建立质量档案，档案内容应当包括供应商的资质证明文件、质量协议、质量标准、样品检验数据和报告、供应商的检验报告、现场质量审计报告、产品稳定性考察报告、定期的质量回顾分析报告等', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '490');
INSERT INTO `ss_checkjob_checkitem` VALUES ('08f43a3729da415bb1b56dcd7a2e68ab', '0.003.001.004', 'ss_a', '药品生产管理规范', '1.4 企业应当严格执行本规范，坚持诚实守信，禁止任何虚假、欺骗行为', null, '2324d2d6fb9949c7abb19c4c45587207', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0901af27890d4112a55c0c4c18c2329e', '0.003.005.092', 'ss_a', '药品生产管理规范', '5.92 应当使用计量标准器具进行校准，且所用计量标准器具应当符合国家有关规定', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('097063939f1c422c9a1e9c7ac1347c27', '0.003.010.227', 'ss_a', '药品生产管理规范', '10.227 标准品或对照品的管理应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('098574fbf8ad4a60810ea832d970065b', '0.003.009.208', 'ss_a', '药品生产管理规范', '9.208 产品分装、封口后应当及时贴签；未能及时贴签时，应当按照相关的操作规程操作，避免发生混淆或贴错标签等差错', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('098d322868fe43e081be36346c99d8a7', '0.003.005.090.001', 'ss_a', '药品生产管理规范', '5.90.1 校准的量程范围应当涵盖实际生产和检验的使用范围', null, '108b25f28d2a41b7bfdd0f1f45b59413', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0a37f5cf89204c3ab7e6dbb9e94936de', '0.003.009.187', 'ss_a', '药品生产管理规范', '9.187 每批产品应当检查产量和物料平衡，确保物料平衡符合设定的限度；如有差异，必须查明原因，确认无潜在质量风险后，方可按照正常产品处理', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0a4b4fa5c6dc4a7a89a651191197925e', '0.003.010.242', 'ss_a', '药品生产管理规范', '10.242 变更都应当评估其对产品质量的潜在影响；企业可以根据变更的性质、范围、对产品质量潜在影响的程度将变更分类（如主要、次要变更）；判断变更所需的验证、额外的检验以及稳定性考察应当有科学依据', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0b1b988046f946079303815df8423e05', '0.003.009.194', 'ss_a', '药品生产管理规范', '9.194 每次生产结束后应当进行清场，确保设备和工作场所没有遗留与本次生产有关的物料、产品和文件；下次生产开始前，应当对前次清场情况进行确认', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0b589d6d34ab41e3b59539a071c96eec', '0.003.002.012.003', 'ss_a', '药品生产管理规范', '2.12.3 由经授权的人员按照规定的方法对原辅料、包装材料、中间产品、待包装产品和成品取样', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0bb7ce792fbc4cff809c71af3c70a8e1', '0.003.003.016.001', 'ss_a', '药品生产管理规范', '3.16.1 企业应当设立独立的质量管理部门，履行质量保证和质量控制的职责;', null, '3421864fd8e845f8950e5e162341b3a5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0be0eb053bb649b3bf62bc360c1345f3', '0.003.004.064', 'ss_a', '药品生产管理规范', '4.64 实验室的设计应当确保其适用于预定的用途，并能够避免混淆和交叉污染，应当有足够的区域用于样品处置、留样和稳定性考察样品的存放以及记录的保存', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0d5ace0abcb9403581bbf217f983d82b', '0.003.010.253.007', 'ss_a', '药品生产管理规范', '10.253.7 确保相关信息及其纠正和预防措施已通过高层管理人员的评审', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0d9eb278f1d4430280c453c92f550f6d', '0.003.010.230.004', 'ss_a', '药品生产管理规范', '10.230.4 疫苗类制品、血液制品、用于血源筛查的体外诊断试剂以及国家食品药品监督管理局规定的其他生物制品放行前还应当取得批签发合格证明', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0da85c2cd1a04979ae19198326e6b806', '0.001.001', 'PARAM_TYPE', '参数分类科目', '1 fsdafsa', null, 'cd14928a239b448b867c2e45246cd038', '1', '0', null, '0');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0dad3d00ff754bcba397de1831108029', '0.003.008.159', 'ss_a', '药品生产管理规范', '8.159 与本规范有关的每项活动均应当有记录，以保证产品生产、质量控制和质量保证等活动可以追溯；记录应当留有填写数据的足够空格；记录应当及时填写，内容真实，字迹清晰、易读，不易擦除', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0dcb5aeb23a747ea8ab367bda3f06989', '0.003.004.053', 'ss_a', '药品生产管理规范', '4.53 产尘操作间（如干燥物料或产品的取样、称量、混合、包装等操作间）应当保持相对负压或采取专门的措施，防止粉尘扩散、避免交叉污染并便于清洁', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0dda47b15fdb436abe4d7e84622f5879', '0.003.010.271', 'ss_a', '药品生产管理规范', '10.271 应当建立操作规程，规定投诉登记、评价、调查和处理的程序，并规定因可能的产品缺陷发生投诉时所采取的措施，包括考虑是否有必要从市场召回药品', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '550');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0ddff71c42164db3b755ab0198bbfdcc', '0.003.005.081', 'ss_a', '药品生产管理规范', '5.81 经改造或重大维修的设备应当进行再确认，符合要求后方可用于生产', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0f156e5386a2404cb559734cb4c723d4', '0.003.003.025', 'ss_a', '药品生产管理规范', '3.25 质量受权人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0f7658a54fd24e17a9dfc91dbb833722', '0.003.005.088', 'ss_a', '药品生产管理规范', '5.88 不合格的设备如有可能应当搬出生产和质量控制区，未搬出前，应当有醒目的状态标识', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0fa96b431b3c4d3096ea95c9945e369d', '0.003.009.213', 'ss_a', '药品生产管理规范', '9.213 包装期间，产品的中间控制检查应当至少包括下述内容：', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('0fcfc58cff9542d190d09d0ca43a03fb', '0.003.010.266.002.011', 'ss_a', '药品生产管理规范', '10.266.2.11 相关设备和设施，如空调净化系统、水系统、压缩空气等的确认状态', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('106a89d7353b439cb5eb000da7e6d881', '0.003.008.153', 'ss_a', '药品生产管理规范', '8.153 文件的起草、修订、审核、批准、替换或撤销、复制、保管和销毁等应当按照操作规程管理，并有相应的文件分发、撤销、复制、销毁记录', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('108b25f28d2a41b7bfdd0f1f45b59413', '0.003.005.090', 'ss_a', '药品生产管理规范', '5.90 应当按照操作规程和校准计划定期对生产和检验用衡器、量具、仪表、记录和控制设备以及仪器进行校准和检查，并保存相关记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1097397546504248994506aefdc75c43', '0.003.008.175.005', 'ss_a', '药品生产管理规范', '8.175.5 每一原辅料的批号以及实际称量的数量（包括投入的回收或返工处理产品的批号及数量）', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('10b7d5734a4a416084374d68e2b53279', '0.003.010.266', 'ss_a', '药品生产管理规范', '10.266 应当按照操作规程，每年对所有生产的药品按品种进行产品质量回顾分析，以确认工艺稳定可靠，以及原辅料、成品现行质量标准的适用性，及时发现不良趋势，确定产品及工艺改进的方向；应当考虑以往回顾分析的历史数据，还应当对产品质量回顾分析的有效性进行自检', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '500');
INSERT INTO `ss_checkjob_checkitem` VALUES ('10fcb1a6177343d4acbf291f347fce29', '0.003.010.226.007', 'ss_a', '药品生产管理规范', '10.226.7 检定菌应当有适当的标识，内容至少包括菌种名称、编号、代次、传代日期、传代操作人', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('11fb39ce43904480b5c741c23074d489', '0.003.003.025.002.002', 'ss_a', '药品生产管理规范', '3.25.2.2 承担产品放行的职责，确保每批已放行产品的生产、检验均符合相关法规、药品注册要求和质量标准', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('12ef81ff422441eab5924c18443e1807', '0.003.002.009.006', 'ss_a', '药品生产管理规范', '2.9.6 确认、验证的实施', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('139ab680b5e741229ab105768a774ac0', '0.003.005.077', 'ss_a', '药品生产管理规范', '5.77 设备所用的润滑剂、冷却剂等不得对药品或容器造成污染，应当尽可能使用食用级或级别相当的润滑剂', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('13c6fa8acea847aa8de37a674b2b2b3d', '0.003.003.023.002.010', 'ss_a', '药品生产管理规范', '3.23.2.10 确保完成自检', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1412d3f4a24a48a7b692cbc86340e1dc', '0.003.006.113', 'ss_a', '药品生产管理规范', '6.113 只有经质量管理部门批准放行并在有效期或复验期内的原辅料方可使用', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('141dde2f78d54ef9abb119cfbe5cfeac', '0.003.006.106.002.008', 'ss_a', '药品生产管理规范', '6.106.2.8 有关说明（如包装状况）', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('142aacdabb384b3e96d3f8bb748944fd', '0.003.008.178', 'ss_a', '药品生产管理规范', '8.178 批包装记录应当有待包装产品的批号、数量以及成品的批号和计划数量；原版空白的批包装记录的审核、批准、复制和发放的要求与原版空白的批生产记录相同', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('14a59f6a2f634affaa5adc8194b9432e', '0.003.003.023.002.006', 'ss_a', '药品生产管理规范', '3.23.2.6 确保所有重大偏差和检验结果超标已经过调查并得到及时处理', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('15b1e12e9064465bbe7160db10251351', '0.003.010.243', 'ss_a', '药品生产管理规范', '10.243 与产品质量有关的变更由申请部门提出后，应当经评估、制定实施计划并明确实施职责，最终由质量管理部门审核批准；变更实施应当有相应的完整记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('15e3c8bed84e420aae5dc3704d582e7c', '0.003.003.018.002', 'ss_a', '药品生产管理规范', '3.18.2 所有人员应当明确并理解自己的职责，熟悉与其职责相关的要求，并接受必要的培训，包括上岗前培训和继续培训', null, '513f0ba88fbd4ff0baa9fcfcd24b9bab', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('162c11c93b5545beb5f8255ba0c677e8', '0.003.010.232', 'ss_a', '药品生产管理规范', '10.232 持续稳定性考察主要针对市售包装药品，但也需兼顾待包装产品；例如，当待包装产品在完成包装前，或从生产厂运输到包装厂，还需要长期贮存时，应当在相应的环境条件下，评估其对包装后产品稳定性的影响；此外，还应当考虑对贮存时间较长的中间产品进行考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('16c8e1581a32447191b6c12ae78d7703', '0.003.009.197.003', 'ss_a', '药品生产管理规范', '9.197.3 设置必要的气锁间和排风；空气洁净度级别不同的区域应当有压差控制', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('16d934d24d4b450299d7d8c8fe62f559', '0.003.008.166', 'ss_a', '药品生产管理规范', '8.166 外购或外销的中间产品和待包装产品应当有质量标准；如果中间产品的检验结果用于成品的质量评价，则应当制定与成品质量标准相对应的中间产品质量标准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('170959a6056843f8ab8c128fea72afd6', '0.003.005.095.001', 'ss_a', '药品生产管理规范', '5.95.1 校准和检查应当有相应的记录', null, '9d9a9b61accf43169eee6c1366c04b34', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('17af630d2129411189b48cd6b733fb6e', '0.003.008.165.001.003', 'ss_a', '药品生产管理规范', '8.165.1.3 经批准的供应商', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1809e810e0994707bcf6ae104b160710', '0.003.002.010.009', 'ss_a', '药品生产管理规范', '2.10.9 建立药品召回系统，确保能够召回任何一批已发运销售的产品', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('18ab8dcf7740492ca667eb9fb0bdc864', '0.003.003', 'ss_a', '药品生产管理规范', '3 机构与人员', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('18eac196edb54f9da76541d0253e9e11', '0.003.002.015', 'ss_a', '药品生产管理规范', '2.15 质量风险管理过程所采用的方法、措施、形式及形成的文件应当与存在风险的级别相适应', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1909d8e7e3bc4422a2b824ba666b66ab', '0.003.009.202', 'ss_a', '药品生产管理规范', '9.202 包装操作规程应当规定降低污染和交叉污染、混淆或差错风险的措施', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1918cb9d3a24408da45b9fa2d9efec6c', '0.003.013.309', 'ss_a', '药品生产管理规范', '13.309 自检应当有记录；自检完成后应当有自检报告，内容至少包括自检过程中观察到的所有情况、评价的结论以及提出纠正和预防措施的建议；自检情况应当报告企业高层管理人员', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('198cf8524e434062ab5bb76f5d4f805e', '0.003.008.170.002.004', 'ss_a', '药品生产管理规范', '8.170.2.4 所有中间控制方法及标准', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('19e36afe02de439c8fdcf75e9f14a064', '0.003.002.012.006', 'ss_a', '药品生产管理规范', '2.12.6 物料、中间产品、待包装产品和成品必须按照质量标准进行检查和检验，并有记录', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1a66f7071b784ab9bd647652c3d93429', '0.003.002.010.008', 'ss_a', '药品生产管理规范', '2.10.8 降低药品发运过程中的质量风险', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1a82f7b4f96b4002b26eb706cfe1097e', '0.003.010.223.001', 'ss_a', '药品生产管理规范', '10.223.1 企业应当确保药品按照注册批准的方法进行全项检验', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1a99ce29abfd4f4c8589b6261eabae2f', '0.003.010.223.006.005', 'ss_a', '药品生产管理规范', '10.223.6.5 检验所用动物的相关信息', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1aef806987c64104b4db8300555dbc30', '0.003.009.197.001', 'ss_a', '药品生产管理规范', '9.197.1 在分隔的区域内生产不同品种的药品', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1b0cd1599760481ab800864cee84191a', '0.003.009.188', 'ss_a', '药品生产管理规范', '9.188 不得在同一生产操作间同时进行不同品种和规格药品的生产操作，除非没有发生混淆或交叉污染的可能', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1bd8c3dabd1a4f2aa5ef0c24e6e286d2', '0.003.004.046.002', 'ss_a', '药品生产管理规范', '4.46.2 生产特殊性质的药品，如高致敏性药品（如青霉素类）或生物制品（如卡介苗或其他用活性微生物制备而成的药品），必须采用专用和独立的厂房、生产设施和设备；青霉素类药品产尘量大的操作区域应当保持相对负压，排至室外的废气应当经过净化处理并符合要求，排风口应当远离其他空气净化系统的进风口', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1c7904b91249464aaf279624e3fc2a1a', '0.003.009.210', 'ss_a', '药品生产管理规范', '9.210 使用切割式标签或在包装线以外单独打印标签，应当采取专门措施，防止混淆', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1caf4534a0544bf986a7252e7f09695a', '0.003.002.010.003.002', 'ss_a', '药品生产管理规范', '2.10.3.2 足够的厂房和空间', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1cb4228a85e44a6e9e0ae3b9b94d09cc', '0.003.013.308', 'ss_a', '药品生产管理规范', '13.308 应当由企业指定人员进行独立、系统、全面的自检，也可由外部人员或专家进行独立的质量审计', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1d8251a2d2b04827b6bdab5bc201f4e6', '0.003.008.162.002', 'ss_a', '药品生产管理规范', '8.162.2 质量标准、工艺规程、操作规程、稳定性考察、确认、验证、变更等其他重要文件应当长期保存', null, 'c7a7a5dad6a84d1e8e8680867fa010e3', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1e62d063625f45fface416f617728890', '0.003.010.219', 'ss_a', '药品生产管理规范', '10.219 质量控制实验室的检验人员至少应当具有相关专业中专或高中以上学历，并经过与所从事的检验操作相关的实践培训且通过考核', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1e9b17346b0f436d9da9903df12c0449', '0.003.003.030.002', 'ss_a', '药品生产管理规范', '3.30.2 企业应当采取措施确保人员卫生操作规程的执行', null, '01cafe8e25f740538f0e9b57bd64bba5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1ef6c8cb8a77445a82fc085a1dbdfa30', '0.003.004.043', 'ss_a', '药品生产管理规范', '4.43 厂房、设施的设计和安装应当能够有效防止昆虫或其它动物进入；应当采取必要的措施，避免所使用的灭鼠药、杀虫剂、烟熏剂等对设备、物料、产品造成污染', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1f204699a48148e1a04e3d390baf4f4f', '0.003.009.186.002', 'ss_a', '药品生产管理规范', '9.186.2 除另有法定要求外，生产日期不得迟于产品成型或灌装（封）前经最后混合的操作开始日期，不得以产品包装日期作为生产日期', null, 'ffbdf6f1aef0405080547b2be2c6c170', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1f323abb6b2145cd86acf5ef0510a74d', '0.003.008.174', 'ss_a', '药品生产管理规范', '8.174 在生产过程中，进行每项操作时应当及时记录，操作结束后，应当由生产操作人员确认并签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1fa0f289694e4759af43b0f5d3a370d8', '0.003.011.287.001', 'ss_a', '药品生产管理规范', '11.287.1 委托生产及检验的各项工作必须符合药品生产许可和药品注册的有关要求并经双方同意', null, '68a13f5c418d4050b63e14ec5c5832e5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1fae2021c63d4bb8bda08e47df3cc175', '0.003.010.217', 'ss_a', '药品生产管理规范', '10.217 质量控制实验室的人员、设施、设备应当与产品性质和生产规模相适应；企业通常不得进行委托检验，确需委托检验的，应当按照第十一章中委托检验部分的规定，委托外部实验室进行检验，但应当在检验报告中予以说明', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('1fd51c62e7624d92a40d2a0c816be5df', '0.003.010.222.002.001', 'ss_a', '药品生产管理规范', '10.222.2.1 经授权的取样人', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('200aa421f6dd4781a2bc05f3649620cc', '0.003.010.250', 'ss_a', '药品生产管理规范', '10.250 任何偏离生产工艺、物料平衡限度、质量标准、检验方法、操作规程等的情况均应当有记录，并立即报告主管人员及质量管理部门，应当有清楚的说明，重大偏差应当由质量管理部门会同其他部门进行彻底调查，并有调查报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '340');
INSERT INTO `ss_checkjob_checkitem` VALUES ('21c400482d5f49088bba1d33c3a64134', '0.003.010.223.006.009', 'ss_a', '药品生产管理规范', '10.223.6.9 检验人员的签名和日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('21cc72d314b846d3a5db888285d06677', '0.003.008.167.002', 'ss_a', '药品生产管理规范', '8.167.2 对应的产品处方编号（如有）', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2204701c883443368b234c48f835e4e6', '0.003.004.070', 'ss_a', '药品生产管理规范', '4.70 维修间应当尽可能远离生产区；存放在洁净区内的维修用备件和工具，应当放置在专门的房间或工具柜中', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem` VALUES ('221a5cab5f99476882065e846a91baf7', '0.003.004.056', 'ss_a', '药品生产管理规范', '4.56 生产区内可设中间控制区域，但中间控制操作不得给药品带来质量风险', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('221ce568b3b244e3aaa12d4530dbf7bf', '0.003.010.221.001.007', 'ss_a', '药品生产管理规范', '10.221.1.7 仪器校准和设备使用、清洁、维护的操作规程及记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2268786550c04b3797de11510337b548', '0.003.010.218', 'ss_a', '药品生产管理规范', '10.218 质量控制负责人应当具有足够的管理实验室的资质和经验，可以管理同一企业的一个或多个实验室', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('228fb3a3a54649f8b3d84d759f916e1c', '0.003.005.082', 'ss_a', '药品生产管理规范', '5.82 主要生产和检验设备都应当有明确的操作规程', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('231f5b0f79c34b09b747a1720b7f40f3', '0.003.010.223.009', 'ss_a', '药品生产管理规范', '10.223.9 必要时应当将检验用实验动物在使用前进行检验或隔离检疫；饲养和管理应当符合相关的实验动物管理规定；动物应当有标识，并应当保存使用的历史记录', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2324d2d6fb9949c7abb19c4c45587207', '0.003.001', 'ss_a', '药品生产管理规范', '1 总则', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2365f90d42f14ace8f4298f236643a7f', '0.003.004.049', 'ss_a', '药品生产管理规范', '4.49 洁净区的内表面（墙壁、地面、天棚）应当平整光滑、无裂缝、接口严密、无颗粒物脱落，避免积尘，便于有效清洁，必要时应当进行消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('236734b822524e35b37fbd921b0d284c', '0.003.002.009.005', 'ss_a', '药品生产管理规范', '2.9.5 中间产品得到有效控制', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2478477038dd426aa6ffe1d4e83f432c', '0.003.010.222.003', 'ss_a', '药品生产管理规范', '10.222.3 取样方法应当科学、合理，以保证样品的代表性', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('25f8bbcdd4d643c4a90cad11a33a8dae', '0.003.004.065', 'ss_a', '药品生产管理规范', '4.65 必要时，应当设置专门的仪器室，使灵敏度高的仪器免受静电、震动、潮湿或其他外界因素的干扰', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('261f8edaa2bf4707a8b9f86c3168dcc3', '0.003.003.017', 'ss_a', '药品生产管理规范', '3.17 质量管理部门应当参与所有与质量有关的活动，负责审核所有与本规范有关的文件；0.3.17.1质量管理部门人员不得将职责委托给其他部门的人员', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('268f031aadf343e7bd29af61f8714983', '0.003.011.280', 'ss_a', '药品生产管理规范', '11.280 委托方应当对受托方进行评估，对受托方的条件、技术水平、质量管理情况进行现场考核，确认其具有完成受托工作的能力，并能保证符合本规范的要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('26cdef312da04bef8d496fca825f3215', '0.003.008.183.005', 'ss_a', '药品生产管理规范', '8.183.5 环境监测', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('27240e39a91e431587e74d73562ddb13', '0.003.008.180', 'ss_a', '药品生产管理规范', '8.180 批包装记录的内容包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('27a1d0d3e6364fdf9dfce3d552212e53', '0.003.010.226.002', 'ss_a', '药品生产管理规范', '10.226.2 应当有接收试剂、试液、培养基的记录，必要时，应当在试剂、试液、培养基的容器上标注接收日期', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('27ad1953d24e4a2b84116249e65d7bb8', '0.003.003.023.002.011', 'ss_a', '药品生产管理规范', '3.23.2.11 评估和批准物料供应商', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('27d99e9f3a5e4e9cbe6b254c05c23be9', '0.003.008.170.002', 'ss_a', '药品生产管理规范', '8.170.2 生产操作要求：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('28fd3e0831954ac6bfb1cf0038c79378', '0.003.006.119.002', 'ss_a', '药品生产管理规范', '6.119.2 产品批号', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('292b76e267f74e7c9039f5227f6ff75c', '0.003.010.230.003', 'ss_a', '药品生产管理规范', '10.230.3 每批药品均应当由质量受权人签名批准放行', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2944bf75723d4a51b9e15b3086ab3300', '0.003.010.246', 'ss_a', '药品生产管理规范', '10.246 质量管理部门应当保存所有变更的文件和记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('29999d34870b41f9ad4e791b5feec11e', '0.003.003.022.003.001', 'ss_a', '药品生产管理规范', '3.22.3.1 确保药品按照批准的工艺规程生产、贮存，以保证药品质量', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('29b81c1d4802456ea8025a56636bc79b', '0.003.011.290', 'ss_a', '药品生产管理规范', '11.290 合同应当规定由受托方保存的生产、检验和发运记录及样品，委托方应当能够随时调阅或检查；出现投诉、怀疑产品有质量缺陷或召回时，委托方应当能够方便地查阅所有与评价产品质量相关的记录', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2a0440e46db9427ab3364a8dbc289fee', '0.003.008.160', 'ss_a', '药品生产管理规范', '8.160 应当尽可能采用生产和检验设备自动打印的记录、图谱和曲线图等，并标明产品或样品的名称、批号和记录设备的信息，操作人应当签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2a641809f589405fa5bd4c5941a59b07', '0.003.008.167.005', 'ss_a', '药品生产管理规范', '8.167.5 定性和定量的限度要求', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2a940a23b6624f15aec95df96e711f34', '0.003.010.231', 'ss_a', '药品生产管理规范', '10.231 持续稳定性考察的目的是在有效期内监控已上市药品的质量，以发现药品与生产相关的稳定性问题（如杂质含量或溶出度特性的变化），并确定药品能够在标示的贮存条件下，符合质量标准的各项要求', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2add8a3960514dac9c16ae91c7304554', '0.003.006.119.003', 'ss_a', '药品生产管理规范', '6.119.3 数量或重量（如毛重、净重等）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2af3400e2e3f4b0a99c016dec8edeafd', '0.003.010.266.002.002', 'ss_a', '药品生产管理规范', '10.266.2.2 关键中间控制点及成品的检验结果', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2b53b3a1e8ca4b81874ad762bfe012d9', '0.003.010.230.001.001', 'ss_a', '药品生产管理规范', '10.230.1.1 主要生产工艺和检验方法经过验证', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2b966450eb08470ab505f78d4700cc33', '0.003.010.266.002.004', 'ss_a', '药品生产管理规范', '10.266.2.4 所有重大偏差及相关的调查、所采取的整改措施和预防措施的有效性', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2bcba1c8ab384b64991de1e4448f21bc', '0.003.009.192', 'ss_a', '药品生产管理规范', '9.192 容器、设备或设施所用标识应当清晰明了，标识的格式应当经企业相关部门批准；除在标识上使用文字说明外，还可采用不同的颜色区分被标识物的状态（如待验、合格、不合格或已清洁等）', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2c3d50ac1f0f4a029f3812af0e0336d4', '0.003.006.104', 'ss_a', '药品生产管理规范', '6.104 物料供应商的确定及变更应当进行质量评估，并经质量管理部门批准后方可采购', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2c5af3a659924fb18ca1e950726db41b', '0.003.010.226.008', 'ss_a', '药品生产管理规范', '10.226.8 检定菌应当按照规定的条件贮存，贮存的方式和时间不应当对检定菌的生长特性有不利影响', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2c6871dd8f354c74991aa3c6b631e527', '0.003.010.257', 'ss_a', '药品生产管理规范', '10.257 质量管理部门应当指定专人负责物料供应商质量评估和现场质量审计，分发经批准的合格供应商名单；被指定的人员应当具有相关的法规和专业知识，具有足够的质量评估和现场质量审计的实践经验', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '410');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2c89a99ff88d43e78fb7577e31c4e114', '0.003.010.221.002', 'ss_a', '药品生产管理规范', '10.221.2 每批药品的检验记录应当包括中间产品、待包装产品和成品的质量检验记录，可追溯该批药品所有相关的质量检验情况', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2d7af66ddec7413c842c294dc599bb4a', '0.003.005.076', 'ss_a', '药品生产管理规范', '5.76 应当选择适当的清洗、清洁设备，并防止这类设备成为污染源', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2dbff7d7c0d6469993a4f137e37b2f0c', '0.003.009.197.002', 'ss_a', '药品生产管理规范', '9.197.2 采用阶段性生产方式', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2e203302dd80429fa395539e7dd9da62', '0.003.010.275', 'ss_a', '药品生产管理规范', '10.275 投诉调查和处理应当有记录，并注明所查相关批次产品的信息', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '590');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2fc17e9b1af840768353246615c73970', '0.003.008.180.005', 'ss_a', '药品生产管理规范', '8.180.5 每一包装材料的名称、批号和实际使用的数量', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('2fcefb3533a3460c8fab9735ef79c5f3', '0.003.010.249', 'ss_a', '药品生产管理规范', '10.249 任何偏差都应当评估其对产品质量的潜在影响；企业可以根据偏差的性质、范围、对产品质量潜在影响的程度将偏差分类（如重大、次要偏差），对重大偏差的评估还应当考虑是否需要对产品进行额外的检验以及对产品有效期的影响，必要时，应当对涉及重大偏差的产品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem` VALUES ('30648364781d400e93765d17a9b50973', '0.003.006.118', 'ss_a', '药品生产管理规范', '6.118 中间产品和待包装产品应当在适当的条件下贮存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('30924526443c4764b22cb3ed094680d5', '0.003.010.222.002.007', 'ss_a', '药品生产管理规范', '10.222.2.7 取样后剩余部分及样品的处置和标识', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('30ff70c79797405abee2ef03471082f8', '0.003.003.024', 'ss_a', '药品生产管理规范', '3.24 生产管理负责人和质量管理负责人通常有下列共同的职责：', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('317d8aa200af4e3599b91dc6c034bd93', '0.003.010.223.006.001', 'ss_a', '药品生产管理规范', '10.223.6.1 产品或物料的名称、剂型、规格、批号或供货批号，必要时注明供应商和生产商（如不同）的名称或来源', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('31ce174bd01446659f7f82c74a7b145d', '0.003.010.229', 'ss_a', '药品生产管理规范', '10.229 物料的放行应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('31ea333d3e8f4f108ac4848c0200e3ba', '0.003.004.063', 'ss_a', '药品生产管理规范', '4.63 质量控制实验室通常应当与生产区分开；生物检定、微生物和放射性同位素的实验室还应当彼此分开', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('329ec9d4e6a0444e83e32c5906637641', '0.003.008.175.004', 'ss_a', '药品生产管理规范', '8.175.4 生产步骤操作人员的签名；必要时，还应当有操作（如称量）复核人员的签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('33292f2c24384e7197742f40b8018e71', '0.003.003.022.003.002', 'ss_a', '药品生产管理规范', '3.22.3.2 确保严格执行与生产操作相关的各种操作规程', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('332ad5dbdf014f60b27cba92780feee4', '0.003.010.222.002.002', 'ss_a', '药品生产管理规范', '10.222.2.2 取样方法', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('33e7911066554cd3a3d8227aa775f138', '0.003.010.221.001', 'ss_a', '药品生产管理规范', '10.221.1 质量控制实验室应当至少有下列详细文件：', null, 'e898bdbbc2324cd49340cef20a89c8f8', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3421864fd8e845f8950e5e162341b3a5', '0.003.003.016', 'ss_a', '药品生产管理规范', '3.16 企业应当建立与药品生产相适应的管理机构，并有组织机构图;', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('343389a3dc8749b69f46d05f742450f5', '0.003.008.163', 'ss_a', '药品生产管理规范', '8.163 如使用电子数据处理系统、照相技术或其他可靠方式记录数据资料，应当有所用系统的操作规程；记录的准确性应当经过核对', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3448d598192e4b69943aca1a1a443641', '0.003.004.046.005', 'ss_a', '药品生产管理规范', '4.46.5 用于上述第（二）、（三）、（四）项的空气净化系统，其排风应当经过净化处理', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('348fe09d7b5c46dc9c8f842886976d55', '0.003.004.048', 'ss_a', '药品生产管理规范', '4.48 应当根据药品品种、生产操作要求及外部环境状况等配置空调净化系统，使生产区有效通风，并有温度、湿度控制和空气净化过滤，保证药品的生产环境符合要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('34d1b554d06346e1b444b55958558665', '0.003.010.255.002', 'ss_a', '药品生产管理规范', '10.255.2 企业法定代表人、企业负责人及其他部门的人员不得干扰或妨碍质量管理部门对物料供应商独立作出质量评估', null, 'ceaa67ae87284c4db2d7845fa0ebe542', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('354054eabcef490eaf2162a3864a69ad', '0.003.010.230.001', 'ss_a', '药品生产管理规范', '10.230.1 在批准放行前，应当对每批药品进行质量评价，保证药品及其生产应当符合注册和本规范要求，并确认以下各项内容：', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('35cdfffd034845c3a37e785fb127889d', '0.003.003.023.002.012', 'ss_a', '药品生产管理规范', '3.23.2.12 确保所有与产品质量有关的投诉已经过调查，并得到及时、正确的处理', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3688d73258cf4144876f0af78325e782', '0.003.010.234.006', 'ss_a', '药品生产管理规范', '10.234.6 试验间隔时间（测试时间点）', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('36ff40d83d444180b13ea7a6ecd319bb', '0.003.002.010.002', 'ss_a', '药品生产管理规范', '2.10.2 生产工艺及其重大变更均经过验证', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3751b23776ec47afa0f7be7c396f98ef', '0.003.005.073', 'ss_a', '药品生产管理规范', '5.73 应当建立并保存设备采购、安装、确认的文件和记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3776ae04982348a2a14469ed3e57abcb', '0.003.008.164', 'ss_a', '药品生产管理规范', '8.164 物料和成品应当有经批准的现行质量标准；必要时，中间产品或待包装产品也应当有质量标准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('37e65c6b652348b984e34f41fef3f614', '0.003.005.083', 'ss_a', '药品生产管理规范', '5.83 生产设备应当在确认的参数范围内使用', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('37e72140320d4cdfb52acf286a70f4e2', '0.003.005.079', 'ss_a', '药品生产管理规范', '5.79 设备的维护和维修不得影响产品质量', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('37fe8ae58d1845d8a79b199e494ce26e', '0.003.010.266.002.012', 'ss_a', '药品生产管理规范', '10.266.2.12 委托生产或检验的技术合同履行情况', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('38f21e980951463a92fc572ba94226ba', '0.003.003.037', 'ss_a', '药品生产管理规范', '3.37 操作人员应当避免裸手直接接触药品、与药品直接接触的包装材料和设备表面', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('392bf14c61e64feeb568f5ef770abfb0', '0.003.006.137', 'ss_a', '药品生产管理规范', '6.137 只有经检查、检验和调查，有证据证明退货质量未受影响，且经质量管理部门根据操作规程评价后，方可考虑将退货重新包装、重新发运销售', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '360');
INSERT INTO `ss_checkjob_checkitem` VALUES ('39386d0173b74e7bad09b0c157ae2ed1', '0.003.008.150', 'ss_a', '药品生产管理规范', '8.150 文件是质量保证系统的基本要素；企业必须有内容正确的书面质量标准、生产处方和工艺规程、操作规程以及记录等文件', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3aab4f6b308045b9a3d7b229ec9103c9', '0.003.010.230.001.003', 'ss_a', '药品生产管理规范', '10.230.1.3 所有必需的生产和质量控制均已完成并经相关主管人员签名', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3b40e3543a0a4cda9397dd9d079d9164', '0.003.006.119.001', 'ss_a', '药品生产管理规范', '6.119.1 产品名称和企业内部的产品代码', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3b83a4447ff94f0cbd40d259b2845439', '0.003.003.031', 'ss_a', '药品生产管理规范', '3.31 企业应当对人员健康进行管理，并建立健康档案', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3b87e2a052ce41d4902ea4ad8a5be515', '0.003.010.225.001.003.002', 'ss_a', '药品生产管理规范', '10.225.1.3.2 留样的包装形式应当与药品市售包装形式相同，原料药的留样如无法采用市售包装形式的，可采用模拟包装', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3bcd9588f6274486a7a1b36e2a53b1fe', '0.003.010.238', 'ss_a', '药品生产管理规范', '10.238 应当对不符合质量标准的结果或重要的异常趋势进行调查；对任何已确认的不符合质量标准的结果或重大不良趋势，企业都应当考虑是否可能对已上市药品造成影响，必要时应当实施召回，调查结果以及采取的措施应当报告当地药品监督管理部门', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3c15d2ce9e0e409ab8dd8d6fb7eff56b', '0.003.005.100', 'ss_a', '药品生产管理规范', '5.100 应当对制药用水及原水的水质进行定期监测，并有相应的记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3c181e54f2e04c24a9e7c4fa2ead60e4', '0.003.006.112.003', 'ss_a', '药品生产管理规范', '6.112.3 物料质量状态（如待验、合格、不合格、已取样）', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3c7ce2395fdb410ca576e2c87b8400eb', '0.003.002.009.008', 'ss_a', '药品生产管理规范', '2.9.8 每批产品经质量受权人批准后方可放行', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3d15cb0826cf416084ee368d9afd23b9', '0.003.010.221.003', 'ss_a', '药品生产管理规范', '10.221.3 宜采用便于趋势分析的方法保存某些数据（如检验数据、环境监测数据、制药用水的微生物监测数据）', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3d9ec4f672dd42fa90dc9afe1aaa5931', '0.003.010.224', 'ss_a', '药品生产管理规范', '10.224 质量控制实验室应当建立检验结果超标调查的操作规程；任何检验结果超标都必须按照操作规程进行完整的调查，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3e5799025d264e4d8d5cba2f804e4b7e', '0.003.004.068', 'ss_a', '药品生产管理规范', '4.68 休息室的设置不应当对生产区、仓储区和质量控制区造成不良影响', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3e5e7f9b9dd340db99e110ece615db94', '0.003.008.167.004', 'ss_a', '药品生产管理规范', '8.167.4 取样、检验方法或相关操作规程编号', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3e73743f2e024d12bce72c4aed8a4c40', '0.003.010.244', 'ss_a', '药品生产管理规范', '10.244 改变原辅料、与药品直接接触的包装材料、生产工艺、主要生产设备以及其他影响药品质量的主要因素时，还应当对变更实施后最初至少三个批次的药品质量进行评估；如果变更可能影响药品的有效期，则质量评估还应当包括对变更实施后生产的药品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3ebf75057fe243608897da8288aff057', '0.003.002.010.007', 'ss_a', '药品生产管理规范', '2.10.7 批记录和发运记录应当能够追溯批产品的完整历史，并妥善保存、便于查阅', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3f3a4b007870411aad2410aad00b7678', '0.003.008.158', 'ss_a', '药品生产管理规范', '8.158 文件应当定期审核、修订；文件修订后，应当按照规定管理，防止旧版文件的误用；分发、使用的文件应当为批准的现行文本，已撤销的或旧版文件除留档备查外，不得在工作现场出现', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3f51b3302c4d4cca8fd4d24866351995', '0.003.008.180.001', 'ss_a', '药品生产管理规范', '8.180.1 产品名称、规格、包装形式、批号、生产日期和有效期', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3fcbf15d6b61485da3eb330041d5fd3a', '0.003.003.029', 'ss_a', '药品生产管理规范', '3.29 所有人员都应当接受卫生要求的培训，企业应当建立人员卫生操作规程，最大限度地降低人员对药品生产造成污染的风险', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('3fd98e1d6ec245899795c3a60303732c', '0.003.003.024.008', 'ss_a', '药品生产管理规范', '3.24.8 保存记录', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('406069fb556446249b282218929ba29a', '0.003.012.299', 'ss_a', '药品生产管理规范', '12.299 应当指定专人负责组织协调召回工作，并配备足够数量的人员；产品召回负责人应当独立于销售和市场部门；如产品召回负责人不是质量受权人，则应当向质量受权人通报召回处理情况', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('40a0aa96bdad44a88929f140700183ce', '0.003.002.010.003', 'ss_a', '药品生产管理规范', '2.10.3 配备所需的资源，至少包括：', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('40acf96b58f046de8fc4b9b3fcfb7d34', '0.003.010.229.002', 'ss_a', '药品生产管理规范', '10.229.2 物料的质量评价应当有明确的结论，如批准放行、不合格或其他决定', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('426ff20c14194a98b161c93e9e7770e5', '0.003.009.199.001', 'ss_a', '药品生产管理规范', '9.199.1 生产操作前，还应当核对物料或中间产品的名称、代码、批号和标识，确保生产所用物料或中间产品正确且符合要求', null, '8b2e4f49b81c467596c030b696e55ec6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('42b9b9791b714e39bae6dbf5690d16d8', '0.003.010.222.005', 'ss_a', '药品生产管理规范', '10.222.5 样品的容器应当贴有标签，注明样品名称、批号、取样日期、取自哪一包装容器、取样人等信息', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('42c30d52925d487dbd421b1b77276a5e', '0.003.010.266.002.001', 'ss_a', '药品生产管理规范', '10.266.2.1 产品所用原辅料的所有变更，尤其是来自新供应商的原辅料', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('42fa75f81a264971ac4b41af192e5042', '0.003.003.025.001', 'ss_a', '药品生产管理规范', '3.25.1 资质：', null, '0f156e5386a2404cb559734cb4c723d4', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('434ec4850990445086eb81a6f84f26db', '0.003.002.009.007', 'ss_a', '药品生产管理规范', '2.9.7 严格按照规程进行生产、检查、检验和复核', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('43b2d7e605d2496683ab290fdba63975', '0.003.010.222.002', 'ss_a', '药品生产管理规范', '10.222.2 应当按照经批准的操作规程取样，操作规程应当详细规定：', null, '4a30ae096a2d469086ef62b55c1f3d57', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('43c0b1197c444e2cba7c09efffa010d9', '0.003.010.253.005', 'ss_a', '药品生产管理规范', '10.253.5 对实施纠正和预防措施过程中所有发生的变更应当予以记录', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('44864aa8341d472285899f2bafeecd73', '0.003.002.010.003.001', 'ss_a', '药品生产管理规范', '2.10.3.1 具有适当的资质并经培训合格的人员', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('44d21f31957c46a293e81377bcdeaded', '0.003.005.096', 'ss_a', '药品生产管理规范', '5.96 制药用水应当适合其用途，并符合《中华人民共和国药典》的质量标准及相关要求；制药用水至少应当采用饮用水', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('45129b544a3148caa7ed11a69db06f64', '0.003.009.197.004', 'ss_a', '药品生产管理规范', '9.197.4 应当降低未经处理或未经充分处理的空气再次进入生产区导致污染的风险', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4530c9d3e70b4381be9f22153204d9d1', '0.003.012.303', 'ss_a', '药品生产管理规范', '12.303 已召回的产品应当有标识，并单独、妥善贮存，等待最终处理决定', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('467b88acf41447698539ddef4baf0f56', '0.003.009.197.008', 'ss_a', '药品生产管理规范', '9.197.8 干燥设备的进风应当有空气过滤器，排风应当有防止空气倒流装置', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('46aff64e9e264d5ea6c0118cbf949333', '0.003.008.163.002', 'ss_a', '药品生产管理规范', '8.163.2 用电子方法保存的批记录，应当采用磁带、缩微胶卷、纸质副本或其他方法进行备份，以确保记录的安全，且数据资料在保存期内便于查阅', null, '343389a3dc8749b69f46d05f742450f5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('46e8552b8e134b309b6399bb74389fe5', '0.003.010.221.001.003', 'ss_a', '药品生产管理规范', '10.221.1.3 检验操作规程和记录（包括检验记录或实验室工作记事簿）', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4719581c60aa4a36b985bf1c1361238d', '0.003.010.221.001.004', 'ss_a', '药品生产管理规范', '10.221.1.4 检验报告或证书', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('472a032b4f534675acac3602e946ef69', '0.003.007.146', 'ss_a', '药品生产管理规范', '7.146 验证总计划或其他相关文件中应当作出规定，确保厂房、设施、设备、检验仪器、生产工艺、操作规程和检验方法等能够保持持续稳定', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('47ff1faf6e8a4fd986eed87955820765', '0.003.003.022.003.005', 'ss_a', '药品生产管理规范', '3.22.3.5 确保完成各种必要的验证工作', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('482488e5a28e4be68672a69fe386299b', '0.003.006.120', 'ss_a', '药品生产管理规范', '6.120 与药品直接接触的包装材料和印刷包装材料的管理和控制要求与原辅料相同', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('483b74dacc094bb4bd6760ed61348b91', '0.003.003.022', 'ss_a', '药品生产管理规范', '3.22 生产管理负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('48cc5d1492f64cc6a8e36e80ca8f6657', '0.003.003.035', 'ss_a', '药品生产管理规范', '3.35 进入洁净生产区的人员不得化妆和佩带饰物', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('48ce1844048444e990a24e205fc29c90', '0.003.011.278', 'ss_a', '药品生产管理规范', '11.278 为确保委托生产产品的质量和委托检验的准确性和可靠性，委托方和受托方必须签订书面合同，明确规定各方责任、委托生产或委托检验的内容及相关的技术事项', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4a2c8705152448faac081d67a5ec00b5', '0.003.008.169', 'ss_a', '药品生产管理规范', '8.169 工艺规程不得任意更改；如需更改，应当按照相关的操作规程修订、审核、批准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4a30ae096a2d469086ef62b55c1f3d57', '0.003.010.222', 'ss_a', '药品生产管理规范', '10.222 取样应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4a4fc9834d9e4d8ebdd46b7a52360ad8', '0.003.010.223.004', 'ss_a', '药品生产管理规范', '10.223.4 检验应当有书面操作规程，规定所用方法、仪器和设备，检验操作规程的内容应当与经确认或验证的检验方法一致', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4b3ec78fb64b40119efa1c74c456fb76', '0.003.005.097', 'ss_a', '药品生产管理规范', '5.97 水处理设备及其输送系统的设计、安装、运行和维护应当确保制药用水达到设定的质量标准', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4bd98ec5389848a0953f38fa17f6b1e2', '0.003.010.223.002.004', 'ss_a', '药品生产管理规范', '10.223.2.4 法规规定的其他需要验证的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4becc7109c4a4eaaa3e02411fa5ea301', '0.003.002.012.001', 'ss_a', '药品生产管理规范', '2.12.1 应当配备适当的设施、设备、仪器和经过培训的人员，有效、可靠地完成所有质量控制的相关活动', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4c1bac841bf944a5aeb7139776c88f8f', '0.003.005.084.002', 'ss_a', '药品生产管理规范', '5.84.2 如需拆装设备，还应当规定设备拆装的顺序和方法；如需对设备消毒或灭菌，还应当规定消毒或灭菌的具体方法、消毒剂的名称和配制方法；必要时，还应当规定设备生产结束至清洁前所允许的最长间隔时限', null, 'd62f9bba23364f50b79aceb519765066', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4c308a1f75af40eb8270b60c9fc3778a', '0.003.008.182', 'ss_a', '药品生产管理规范', '8.182 厂房、设备、物料、文件和记录应当有编号（或代码），并制定编制编号（或代码）的操作规程，确保编号（或代码）的唯一性', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4c388f7b76f94608aa1e483303322475', '0.003.006.123', 'ss_a', '药品生产管理规范', '6.123 印刷包装材料的版本变更时，应当采取措施，确保产品所用印刷包装材料的版本正确无误；宜收回作废的旧版印刷模版并予以销毁', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4c894a0d200a48e785aa4feb95163aeb', '0.003.008.170.003.006', 'ss_a', '药品生产管理规范', '8.170.3.6 中间控制的详细操作，包括取样方法及标准', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4d3b9ab8adda4edbbb6be4ecbc2ce3a4', '0.003.003.028', 'ss_a', '药品生产管理规范', '3.28 高风险操作区（如：高活性、高毒性、传染性、高致敏性物料的生产区）的工作人员应当接受专门的培训', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4d5267631db44a94b845c70f4d338bb2', '0.003.008.170', 'ss_a', '药品生产管理规范', '8.170 制剂的工艺规程的内容至少应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4d5a72079b4c49f8b2f22ba10e02d6e9', '0.003.010.250.001', 'ss_a', '药品生产管理规范', '10.250.1 偏差调查报告应当由质量管理部门的指定人员审核并签字', null, '200aa421f6dd4781a2bc05f3649620cc', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4dd3ebc2ee5f431f83849faba4425cad', '0.003.002.012.007', 'ss_a', '药品生产管理规范', '2.12.7 物料和最终包装的成品应当有足够的留样，以备必要的检查或检验；除最终包装容器过大的成品外，成品的留样包装应当与最终包装相同', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4e2c4640dbcd45fd9937aea4c738e6e8', '0.003.008.170.002.001', 'ss_a', '药品生产管理规范', '8.170.2.1 对生产场所和所用设备的说明（如操作间的位置和编号、洁净度级别、必要的温湿度要求、设备型号和编号等）', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4ee4531b971d4840afd2505672c887f0', '0.003.008.183.011', 'ss_a', '药品生产管理规范', '8.183.11 退货', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('4f59d1ff7cb94d2bb33e36b51e5ba29b', '0.003.006.112.001', 'ss_a', '药品生产管理规范', '6.112.1 指定的物料名称和企业内部的物料代码', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('505a5ceada204646bb0c10c6db4a5b90', '0.003.008.170.003', 'ss_a', '药品生产管理规范', '8.170.3 包装操作要求：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('50846bcc9df44b8ca9a3cc30537e51f9', '0.003.009.214', 'ss_a', '药品生产管理规范', '9.214 因包装过程产生异常情况而需要重新包装产品的，必须经专门检查、调查并由指定人员批准；重新包装应当有详细记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('511d9a48a3164f07abf3afc8c83c43fd', '0.003.010.226.001', 'ss_a', '药品生产管理规范', '10.226.1 试剂和培养基应当从可靠的供应商处采购，必要时应当对供应商进行评估', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('513f0ba88fbd4ff0baa9fcfcd24b9bab', '0.003.003.018', 'ss_a', '药品生产管理规范', '3.18 企业应当配备足够数量并具有适当资质（含学历、培训和实践经验）的管理和操作人员，应当明确规定每个部门和每个岗位的职责', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('51e4493425074894a863dae4d80dcb0c', '0.003.003.023', 'ss_a', '药品生产管理规范', '3.23 质量管理负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('51f394d7b58c4a70a2a6f71080002e44', '0.003.008.180.003', 'ss_a', '药品生产管理规范', '8.180.3 包装操作负责人签名', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('523844c52a6d48b88327de4eaf675792', '0.003.010.266.002', 'ss_a', '药品生产管理规范', '10.266.2 回顾分析应当有报告；企业至少应当对下列情形进行回顾分析：', null, '10b7d5734a4a416084374d68e2b53279', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('525bdeba083d4de5ab363b37c4493ecc', '0.003.003.023.002.013', 'ss_a', '药品生产管理规范', '3.23.2.13 确保完成产品的持续稳定性考察计划，提供稳定性考察的数据', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5280f7744f2e43ad80bd7555a94356c1', '0.003.008.175.007', 'ss_a', '药品生产管理规范', '8.175.7 中间控制结果的记录以及操作人员的签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('52c74b6c898143e9a2d2bcdca8d95338', '0.003.009.189', 'ss_a', '药品生产管理规范', '9.189 在生产的每一阶段，应当保护产品和物料免受微生物和其他污染', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('53716187adcb473a87cf206e2d687135', '0.003.006.122', 'ss_a', '药品生产管理规范', '6.122 应当建立印刷包装材料设计、审核、批准的操作规程，确保印刷包装材料印制的内容与药品监督管理部门核准的一致，并建立专门的文档，保存经签名批准的印刷包装材料原版实样', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('53a91fd4e1794585a4d49942a84e4710', '0.003.009.197.011', 'ss_a', '药品生产管理规范', '9.197.11 软膏剂、乳膏剂、凝胶剂等半固体制剂以及栓剂的中间产品应当规定贮存期和贮存条件', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('53c327399b5e4334be831daa415a42b3', '0.003.006.106.002.007', 'ss_a', '药品生产管理规范', '6.106.2.7 接收后企业指定的批号或流水号', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('53e9ded7b4754c82964963e3850068a6', '0.003.003.022.001', 'ss_a', '药品生产管理规范', '3.22.1 资质：', null, '483b74dacc094bb4bd6760ed61348b91', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('54baa8900f3d4fe8860ea3012f0c1be4', '0.003.008.154', 'ss_a', '药品生产管理规范', '8.154 文件的起草、修订、审核、批准均应当由适当的人员签名并注明日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('54e0b8c9c34a4c268a601654216ab2c1', '0.003.006.106.002.004', 'ss_a', '药品生产管理规范', '6.106.2.4 供应商和生产商（如不同）的名称', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5576ec291f354c18aa86f21b1e39cf9f', '0.003.003.024.007', 'ss_a', '药品生产管理规范', '3.24.7 确定和监控物料和产品的贮存条件', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('558fd2dd3b0a45158d86a4ab8b0084b1', '0.003.008.183.004', 'ss_a', '药品生产管理规范', '8.183.4 培训、更衣及卫生等与人员相关的事宜', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('567d2749135e43c1a4ce3f1240bbb538', '0.003.002.009', 'ss_a', '药品生产管理规范', '2.9 质量保证系统应当确保：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('57de58f1774d4f90852961a935310aef', '0.003.010.223', 'ss_a', '药品生产管理规范', '10.223 物料和不同生产阶段产品的检验应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5804d3ba08a641399ab7ef4ac5d6735c', '0.003.003.022.003', 'ss_a', '药品生产管理规范', '3.22.3 主要职责：', null, '483b74dacc094bb4bd6760ed61348b91', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('588bc5c4c34340d09e92c1938acd5d67', '0.003.010.261', 'ss_a', '药品生产管理规范', '10.261 改变物料供应商，应当对新的供应商进行质量评估；改变主要物料供应商的，还需要对产品进行相关的验证及稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '450');
INSERT INTO `ss_checkjob_checkitem` VALUES ('58ea3ffc36f04e5f82084d1f6abfe433', '0.003.003.023.002.002', 'ss_a', '药品生产管理规范', '3.23.2.2 确保在产品放行前完成对批记录的审核', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('592e4ee14c654bf1a91b016cb3258f23', '0.003.006.112', 'ss_a', '药品生产管理规范', '6.112 仓储区内的原辅料应当有适当的标识，并至少标明下述内容：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('593401edf90d4085b53c4c5e139dc4c1', '0.003.010.223.003', 'ss_a', '药品生产管理规范', '10.223.3 对不需要进行验证的检验方法，企业应当对检验方法进行确认，以确保检验数据准确、可靠', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('59434ab6ed18472f8811bda7c914696b', '0.003.008.183.001', 'ss_a', '药品生产管理规范', '8.183.1 确认和验证', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('594c457f61d84316aa253de4a2df4dae', '0.003.008.165.004', 'ss_a', '药品生产管理规范', '8.165.4 贮存条件和注意事项', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('59f9422d36414718b72fc604ee5acf2a', '0.003.004.048.001', 'ss_a', '药品生产管理规范', '4.48.1 洁净区与非洁净区之间、不同级别洁净区之间的压差应当不低于10帕斯卡；必要时，相同洁净度级别的不同功能区域（操作间）之间也应当保持适当的压差梯度', null, '348fe09d7b5c46dc9c8f842886976d55', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5aedcd4543af4534a8f0dd42e52be167', '0.003.009.215', 'ss_a', '药品生产管理规范', '9.215 在物料平衡检查中，发现待包装产品、印刷包装材料以及成品数量有显著差异时，应当进行调查，未得出结论前，成品不得放行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5ba89728daeb4a6999238a2939748145', '0.003.002.009.004', 'ss_a', '药品生产管理规范', '2.9.4 采购和使用的原辅料和包装材料正确无误', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5c6f65656ae1483faf02ac96c70ad186', '0.003.008.180.010', 'ss_a', '药品生产管理规范', '8.180.10 所有印刷包装材料和待包装产品的名称、代码，以及发放、使用、销毁或退库的数量、实际产量以及物料平衡检查', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5c91d6116c3e4a19879ed20127246aae', '0.003.003.020.002', 'ss_a', '药品生产管理规范', '3.20.2 质量管理负责人和质量受权人可以兼任', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5cc8d6e586094a118b793575f24dda1e', '0.003.012.298', 'ss_a', '药品生产管理规范', '12.298 应当制定召回操作规程，确保召回工作的有效性', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5d35d1e62a13441a8f56378d8afaf094', '0.003.006.117', 'ss_a', '药品生产管理规范', '6.117 用于同一批药品生产的所有配料应当集中存放，并作好标识', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5d87ab9a03554792b5050b284218c00f', '0.003.010.276', 'ss_a', '药品生产管理规范', '10.276 应当定期回顾分析投诉记录，以便发现需要警觉、重复出现以及可能需要从市场召回药品的问题，并采取相应措施', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '600');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5d89ecc0558e46ebbf301ab4e933d435', '0.003.002.005', 'ss_a', '药品生产管理规范', '2.5 企业应当建立符合药品质量管理要求的质量目标', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5d9ec80c4df7478dbc58cac6ca36fe0c', '0.003.002.009.009', 'ss_a', '药品生产管理规范', '2.9.9 在贮存、发运和随后的各种操作过程中有保证药品质量的适当措施', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5e2d2fdbcc524c16952ea6d6cdd7b335', '0.003.010.223.006.008', 'ss_a', '药品生产管理规范', '10.223.6.8 检验日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5f01a9476a954dbaace9c044e9a70f9e', '0.003.004.061', 'ss_a', '药品生产管理规范', '4.61 如采用单独的隔离区域贮存待验物料，待验区应当有醒目的标识，且只限于经批准的人员出入', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5f901562a67545e1951de9c60852714a', '0.003.010.235', 'ss_a', '药品生产管理规范', '10.235 考察批次数和检验频次应当能够获得足够的数据，以供趋势分析；通常情况下，每种规格、每种内包装形式的药品，至少每年应当考察一个批次，除非当年没有生产', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5fb659e7bcff486aa3849194bba8fd14', '0.003.010.248', 'ss_a', '药品生产管理规范', '10.248 企业应当建立偏差处理的操作规程，规定偏差的报告、记录、调查、处理以及所采取的纠正措施，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem` VALUES ('5fc58867e9994545b77cb63e3e25daae', '0.003.002.005.001', 'ss_a', '药品生产管理规范', '2.5.1 将药品注册的有关安全、有效和质量可控的所有要求，系统地贯彻到药品生产、控制及产品放行、贮存、发运的全过程中', null, '5d89ecc0558e46ebbf301ab4e933d435', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('603fd8bf8b49404f97b94f9afe61a21f', '0.003.009.213.001', 'ss_a', '药品生产管理规范', '9.213.1 包装外观', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('60618eabcae547ad8bc1ac99874c2612', '0.003.010.221.001.002', 'ss_a', '药品生产管理规范', '10.221.1.2 取样操作规程和记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('60f547abbc4f4062a193f1a59e04d8b9', '0.003.008.170.003.003', 'ss_a', '药品生产管理规范', '8.170.3.3 印刷包装材料的实样或复制品，并标明产品批号、有效期打印位置', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('61a43f0b09f74a28b8488012c64f0416', '0.003.003.023.002.007', 'ss_a', '药品生产管理规范', '3.23.2.7 批准并监督委托检验', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('61ff959b3c2e4bfab3f5b7e3a347d338', '0.003.002.012.004', 'ss_a', '药品生产管理规范', '2.12.4 检验方法应当经过验证或确认', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6252b1c89ef247179d46db0a08b6e5b6', '0.003.008.165.001.001', 'ss_a', '药品生产管理规范', '8.165.1.1 企业统一指定的物料名称和内部使用的物料代码', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('63045d1450d24e27a9f9b7d682a0607e', '0.003.008.183.008', 'ss_a', '药品生产管理规范', '8.183.8 偏差处理', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('633fd99a1ed449d7bf4456538f6f3471', '0.003.004.046.006', 'ss_a', '药品生产管理规范', '4.46.6 药品生产厂房不得用于生产对药品质量有不利影响的非药用产品', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('63f398dac55e44d48e17c1b757d21e34', '0.003.003.025.001.002', 'ss_a', '药品生产管理规范', '3.25.1.2 质量受权人应当具有必要的专业理论知识，并经过与产品放行有关的培训，方能独立履行其职责', null, '42fa75f81a264971ac4b41af192e5042', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('645e2eb0be1540acb7f8364bb1de13d7', '0.003.003.016.002', 'ss_a', '药品生产管理规范', '3.16.2 质量管理部门可以分别设立质量保证部门和质量控制部门', null, '3421864fd8e845f8950e5e162341b3a5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('646cc50840244f55982cdddad599b133', '0.003.004.046', 'ss_a', '药品生产管理规范', '4.46 为降低污染和交叉污染的风险，厂房、生产设施和设备应当根据所生产药品的特性、工艺流程及相应洁净度级别要求合理设计、布局和使用，并符合下列要求：', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('66183a308515452485aad6510931e0d9', '0.003.005.071', 'ss_a', '药品生产管理规范', '5.71 设备的设计、选型、安装、改造和维护必须符合预定用途，应当尽可能降低产生污染、交叉污染、混淆和差错的风险，便于操作、清洁、维护，以及必要时进行的消毒或灭菌', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('668a0b6a33a34bd1b67efd2e3d486eed', '0.003.011.282', 'ss_a', '药品生产管理规范', '11.282 委托方应当对受托生产或检验的全过程进行监督', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('66c0459ec39242b8b623e10a7edbd770', '0.003.008.165.001.004', 'ss_a', '药品生产管理规范', '8.165.1.4 印刷包装材料的实样或样稿', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('67300088b3b340bb8e03f65f2c5e5752', '0.003.010.223.007', 'ss_a', '药品生产管理规范', '10.223.7 所有中间控制（包括生产人员所进行的中间控制），均应当按照经质量管理部门批准的方法进行，检验应当有记录', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('684db4b4286f44ad956dfaeea857dfdf', '0.003.004.047', 'ss_a', '药品生产管理规范', '4.47 生产区和贮存区应当有足够的空间，确保有序地存放设备、物料、中间产品、待包装产品和成品，避免不同产品或物料的混淆、交叉污染，避免生产或质量控制操作发生遗漏或差错', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('685b9f3f32dc49528c368645c5546ee5', '0.003.006.121', 'ss_a', '药品生产管理规范', '6.121 包装材料应当由专人按照操作规程发放，并采取措施避免混淆和差错，确保用于药品生产的包装材料正确无误', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6867cec2bba14071a1929a7b9e8f7932', '0.003.004.038', 'ss_a', '药品生产管理规范', '4.38 厂房的选址、设计、布局、建造、改造和维护必须符合药品生产要求，应当能够最大限度地避免污染、交叉污染、混淆和差错，便于清洁、操作和维护', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('686de8e2d0c64ababaf747434c0097d0', '0.003.006.137.002', 'ss_a', '药品生产管理规范', '6.137.2 对退货质量存有怀疑时，不得重新发运', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('68a13f5c418d4050b63e14ec5c5832e5', '0.003.011.287', 'ss_a', '药品生产管理规范', '11.287 委托方与受托方之间签订的合同应当详细规定各自的产品生产和控制职责，其中的技术性条款应当由具有制药技术、检验专业知识和熟悉本规范的主管人员拟订', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6924b76419e943d590f36fc398ee7220', '0.003.010.266.002.006', 'ss_a', '药品生产管理规范', '10.266.2.6 已批准或备案的药品注册所有变更', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('698a48b88ad94c89a8adc70bb5fdd63b', '0.003.011.291', 'ss_a', '药品生产管理规范', '11.291 合同应当明确规定委托方可以对受托方进行检查或现场质量审计', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('699879d259af49c09fb8a961b2bfa7f5', '0.003.009.201.002', 'ss_a', '药品生产管理规范', '9.201.2 清场记录应当纳入批生产记录', null, 'ab2aeacbef644038bedce9b7ce0d6a37', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('69a4e635dd054110a76bad3c8423c081', '0.003.008.167.003', 'ss_a', '药品生产管理规范', '8.167.3 产品规格和包装形式', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('69d560bd02ab46abb07adea545696d87', '0.003.007.140.003', 'ss_a', '药品生产管理规范', '7.140.3 运行确认应当证明厂房、设施、设备的运行符合设计标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('69eef02c1a474f44b73c6393c65833c2', '0.003.006.102', 'ss_a', '药品生产管理规范', '6.102 药品生产所用的原辅料、与药品直接接触的包装材料应当符合相应的质量标准', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6a49077e1d554c999a9cdd79e0fb397f', '0.003.008.180.007', 'ss_a', '药品生产管理规范', '8.180.7 包装操作的详细情况，包括所用设备及包装生产线的编号', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6ad724c3118c4d8b8026509f1a7a96b2', '0.003.010.274', 'ss_a', '药品生产管理规范', '10.274 发现或怀疑某批药品存在缺陷，应当考虑检查其他批次的药品，查明其是否受到影响', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '580');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6af809ac2123477997daf4982f532594', '0.003.002.010.003.006', 'ss_a', '药品生产管理规范', '2.10.3.6 适当的贮运条件', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6b82d7824d994bb3aee1fbf827135e77', '0.003.006.137.003', 'ss_a', '药品生产管理规范', '6.137.3 对退货进行回收处理的，回收后的产品应当符合预定的质量标准和0.6.133的要求', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6bb50b1902964648a6f9bf4db82a3306', '0.003.011.285', 'ss_a', '药品生产管理规范', '11.285 受托方应当确保所收到委托方提供的物料、中间产品和待包装产品适用于预定用途', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6c4d3d49309642d98088c759f703b270', '0.003.008.173', 'ss_a', '药品生产管理规范', '8.173 原版空白的批生产记录应当经生产管理负责人和质量管理负责人审核和批准；批生产记录的复制和发放均应当按照操作规程进行控制并有记录，每批产品的生产只能发放一份原版空白批生产记录的复制件', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6d0fe6e941444a19813694dc2fd7f45c', '0.003.003.021.001', 'ss_a', '药品生产管理规范', '3.21.1 企业负责人是药品质量的主要责任人，全面负责企业日常管理', null, 'e249c25610154493a294f7e52cc0a0d4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6d3e449431944c129371ed6be8be3d11', '0.003.012.305', 'ss_a', '药品生产管理规范', '12.305 应当定期对产品召回系统的有效性进行评估', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6e48d6cc50ba41cba4e6fede4d798c35', '0.003.013', 'ss_a', '药品生产管理规范', '13 自检', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6ec650cb3efe4cd785b4a6277985d255', '0.003.011.283', 'ss_a', '药品生产管理规范', '11.283 委托方应当确保物料和产品符合相应的质量标准', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6eea078283214dbaa3612819b59346b0', '0.003.004.061.001', 'ss_a', '药品生产管理规范', '4.61.1 不合格、退货或召回的物料或产品应当隔离存放', null, '5f01a9476a954dbaace9c044e9a70f9e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6f77e20a432448279b6c4d0cff8f2983', '0.003.004.067', 'ss_a', '药品生产管理规范', '4.67 实验动物房应当与其他区域严格分开，其设计、建造应当符合国家有关规定，并设有独立的空气处理设施以及动物的专用通道', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6f8a70a9ec2b407998cc3d81a1a5baa3', '0.003.009.198', 'ss_a', '药品生产管理规范', '9.198 应当定期检查防止污染和交叉污染的措施并评估其适用性和有效性', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('6fcab2ec600d492bb17d3c8eb142a92d', '0.003.002.009.003', 'ss_a', '药品生产管理规范', '2.9.3 管理职责明确', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('702ec11db90c491c95575f2eaee10f6e', '0.003.003.020', 'ss_a', '药品生产管理规范', '3.20 关键人员应当为企业的全职人员，至少应当包括企业负责人、生产管理负责人、质量管理负责人和质量受权人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('70756f7d8b7c4fb09d4c5de564c97f0d', '0.003.010.222.001', 'ss_a', '药品生产管理规范', '10.222.1 质量管理部门的人员有权进入生产区和仓储区进行取样及调查', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('711bb6672cf34ff2a106f0823dad25a6', '0.003.006.127', 'ss_a', '药品生产管理规范', '6.127 过期或废弃的印刷包装材料应当予以销毁并记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('712e2c9d68774c4e93ebcea3a9aa54f3', '0.003.004.042', 'ss_a', '药品生产管理规范', '4.42 厂房应当有适当的照明、温度、湿度和通风，确保生产和贮存的产品质量以及相关设备性能不会直接或间接地受到影响', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('715d4259be6545e586af8253fec04405', '0.003.010.223.006.006', 'ss_a', '药品生产管理规范', '10.223.6.6 检验过程，包括对照品溶液的配制、各项具体的检验操作、必要的环境温湿度', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('718e94d3273a46379cda2ed9718967f6', '0.003.010.230.001.002', 'ss_a', '药品生产管理规范', '10.230.1.2 已完成所有必需的检查、检验，并综合考虑实际生产条件和生产记录', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7273c287dcf044939e43ddcbb8dee899', '0.003.005.101.001', 'ss_a', '药品生产管理规范', '5.101.1 发现制药用水微生物污染达到警戒限度、纠偏限度时应当按照操作规程处理', null, '9ec94a0622314aa2943cde74ab6bb7df', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('72b8ed3b598a444883d59c159e73a7bf', '0.003.006.112.002', 'ss_a', '药品生产管理规范', '6.112.2 企业接收时设定的批号', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('72d65040039f4c3f8ca72e22495797fc', '0.003.007.149', 'ss_a', '药品生产管理规范', '7.149 应当根据验证的结果确认工艺规程和操作规程', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('73103a3f767e45fe925284f47e1dc0fe', '0.003.010.225.001.004.004', 'ss_a', '药品生产管理规范', '10.225.1.4.4 物料的留样应当按照规定的条件贮存，必要时还应当适当包装密封', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('73842ea9aff84bbaa90898cc64be3ab6', '0.003.012.297', 'ss_a', '药品生产管理规范', '12.297 发运记录应当至少保存至药品有效期后一年', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('73beb21c00454dba8b6ba5099dfef38e', '0.003.008.180.008', 'ss_a', '药品生产管理规范', '8.180.8 所用印刷包装材料的实样，并印有批号、有效期及其他打印内容；不易随批包装记录归档的印刷包装材料可采用印有上述内容的复制品', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('73bfa184258241efa0446b7a09feac3f', '0.003.010.253', 'ss_a', '药品生产管理规范', '10.253 企业应当建立实施纠正和预防措施的操作规程，内容至少包括：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '370');
INSERT INTO `ss_checkjob_checkitem` VALUES ('743c31262abb4b29a7f4326ab398be34', '0.003.010.253.002', 'ss_a', '药品生产管理规范', '10.253.2 调查与产品、工艺和质量保证系统有关的原因', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('74658df043774a82a7657e7f99d6d6ef', '0.003.010.225.001.003', 'ss_a', '药品生产管理规范', '10.225.1.3 成品的留样：', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('755295eff8744e5f93e9360e91bc12ec', '0.003.010.223.006.010', 'ss_a', '药品生产管理规范', '10.223.6.10 检验、计算复核人员的签名和日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('75860722e0484afa8a8ba95c6613b709', '0.003.009.197.005', 'ss_a', '药品生产管理规范', '9.197.5 在易产生交叉污染的生产区内，操作人员应当穿戴该区域专用的防护服', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('76189b338913443aa65b7d3dc83cb549', '0.003.011', 'ss_a', '药品生产管理规范', '11 委托生产与委托检验', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('766a824162a14b3fa7a6808078a8ac8a', '0.003.009.211', 'ss_a', '药品生产管理规范', '9.211 应当对电子读码机、标签计数器或其他类似装置的功能进行检查，确保其准确运行；检查应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('773310dd39964ba081b3db053a94e2ac', '0.003.010.222.002.008', 'ss_a', '药品生产管理规范', '10.222.2.8 取样注意事项，包括为降低取样过程产生的各种风险所采取的预防措施，尤其是无菌或有害物料的取样以及防止取样过程中污染和交叉污染的注意事项', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7747e2bf7aa645a6ac8d3f43d37e259b', '0.003.002.008', 'ss_a', '药品生产管理规范', '2.8 质量保证是质量管理体系的一部分', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('775a47f0a7544bbbaca9bec517cc6e1c', '0.003.012.293', 'ss_a', '药品生产管理规范', '12.293 企业应当建立产品召回系统，必要时可迅速、有效地从市场召回任何一批存在安全隐患的产品', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('77996256af164d4cb485847eaf9d121e', '0.003.005.089', 'ss_a', '药品生产管理规范', '5.89 主要固定管道应当标明内容物名称和流向', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('77ef62f7f6644cbba6c3011cac207b68', '0.003.005.084.001', 'ss_a', '药品生产管理规范', '5.84.1 生产设备清洁的操作规程应当规定具体而完整的清洁方法、清洁用设备或工具、清洁剂的名称和配制方法、去除前一批次标识的方法、保护已清洁设备在使用前免受污染的方法、已清洁设备最长的保存时限、使用前检查设备清洁状况的方法，使操作者能以可重现的、有效的方式对各类设备进行清洁', null, 'd62f9bba23364f50b79aceb519765066', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('78d1712bfe4546d1a23bfdd187cc475e', '0.003.010.230.001.006', 'ss_a', '药品生产管理规范', '10.230.1.6 所有与该批产品有关的偏差均已有明确的解释或说明，或者已经过彻底调查和适当处理；如偏差还涉及其他批次产品，应当一并处理', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('795dccc155734ff28c5ce144f986b246', '0.003.009.206', 'ss_a', '药品生产管理规范', '9.206 有数条包装线同时进行包装时，应当采取隔离或其他有效防止污染、交叉污染或混淆的措施', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('79b417931ffb4e1fa7a49af433d8becd', '0.003.003.023.002.003', 'ss_a', '药品生产管理规范', '3.23.2.3 确保完成所有必要的检验', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('79b801e9b2994040ab08da8b9e7431f7', '0.003.003.024.002', 'ss_a', '药品生产管理规范', '3.24.2 监督厂区卫生状况', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('79b8db09bf144b84b0115e87d0e2e8b6', '0.003.002.010.003.005', 'ss_a', '药品生产管理规范', '2.10.3.5 经批准的工艺规程和操作规程', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7ac17da1cf4d48bbab48a1e712e54585', '0.003.011.279', 'ss_a', '药品生产管理规范', '11.279 委托生产或委托检验的所有活动，包括在技术或其他方面拟采取的任何变更，均应当符合药品生产许可和注册的有关要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7b0727ca43f64232ae869d4ec7632899', '0.003.010.260', 'ss_a', '药品生产管理规范', '10.260 质量管理部门对物料供应商的评估至少应当包括：供应商的资质证明文件、质量标准、检验报告、企业对物料样品的检验数据和报告；如进行现场质量审计和样品小批量试生产的，还应当包括现场质量审计报告，以及小试产品的质量检验报告和稳定性考察报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '440');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7b8801a08e20422aacf6d5a5a55b8e05', '0.003.010.245', 'ss_a', '药品生产管理规范', '10.245 变更实施时，应当确保与变更相关的文件均已修订', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7c5c52dc7fe84faa86657506cbeb05c1', '0.003.004.058', 'ss_a', '药品生产管理规范', '4.58 仓储区的设计和建造应当确保良好的仓储条件，并有通风和照明设施；仓储区应当能够满足物料或产品的贮存条件（如温湿度、避光）和安全贮存的要求，并进行检查和监控', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7c73335b484b46c0a30fda7799e568e1', '0.003.010.264', 'ss_a', '药品生产管理规范', '10.264 质量管理部门应当定期对物料供应商进行评估或现场质量审计，回顾分析物料质量检验结果、质量投诉和不合格处理记录；如物料出现质量问题或生产条件、工艺、质量标准和检验方法等可能影响质量的关键因素发生重大改变时，还应当尽快进行相关的现场质量审计', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '480');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7ca840d004044b15907053a7ab5ef744', '0.003.008.155', 'ss_a', '药品生产管理规范', '8.155 文件应当标明题目、种类、目的以及文件编号和版本号；文字应当确切、清晰、易懂，不能模棱两可', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7cb2f53597894a938a2ecbd7e142e350', '0.003.009.203', 'ss_a', '药品生产管理规范', '9.203 包装开始前应当进行检查，确保工作场所、包装生产线、印刷机及其他设备已处于清洁或待用状态，无上批遗留的产品、文件或与本批产品包装无关的物料；检查结果应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7cba9759d04742b18f90fc4fa08721e7', '0.003.010.222.002.006', 'ss_a', '药品生产管理规范', '10.222.2.6 存放样品容器的类型和状态', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7dcee87f47794a91a29eb36e22070de6', '0.003.008.170.002.006', 'ss_a', '药品生产管理规范', '8.170.2.6 待包装产品的贮存要求，包括容器、标签及特殊贮存条件', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7eabb08027b04b3bad5e1a8fc07a0732', '0.003.010.225.001.001', 'ss_a', '药品生产管理规范', '10.225.1.1 应当按照操作规程对留样进行管理', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7ee8520a63ea40fbb5a44a72aedd8542', '0.003.004.040', 'ss_a', '药品生产管理规范', '4.40 企业应当有整洁的生产环境；厂区的地面、路面及运输等不应当对药品的生产造成污染；生产、行政、生活和辅助区的总体布局应当合理，不得互相妨碍；厂区和厂房内的人、物流走向应当合理', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7efd7f6c80b24c4b9206a42206265bbb', '0.003.003.033', 'ss_a', '药品生产管理规范', '3.33 参观人员和未经培训的人员不得进入生产区和质量控制区，特殊情况确需进入的，应当事先对个人卫生、更衣等事项进行指导', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7f4192caefb348eea56d711039d4c4b9', '0.003.008.170.003.002', 'ss_a', '药品生产管理规范', '8.170.3.2 所需全部包装材料的完整清单，包括包装材料的名称、数量、规格、类型以及与质量标准有关的每一包装材料的代码', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7f5defb0bc974d36ba1f5d1ee77aa087', '0.003.010.230.001.004', 'ss_a', '药品生产管理规范', '10.230.1.4 变更已按照相关规程处理完毕，需要经药品监督管理部门批准的变更已得到批准', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('7fc92604383e4b5eb13efb50c882ea05', '0.003.008.183.009', 'ss_a', '药品生产管理规范', '8.183.9 投诉', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('801d176730eb42ba9476f6d627605ca9', '0.003.008.170.002.002', 'ss_a', '药品生产管理规范', '8.170.2.2 关键设备的准备（如清洗、组装、校准、灭菌等）所采用的方法或相应操作规程编号', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('81418e427c9b439dba47d38b551c4aa6', '0.003.010.223.002.003', 'ss_a', '药品生产管理规范', '10.223.2.3 采用《中华人民共和国药典》及其他法定标准未收载的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('81ca0d1ef2244140bf1f381edc9fd1d7', '0.003.007.142', 'ss_a', '药品生产管理规范', '7.142 当影响产品质量的主要因素，如原辅料、与药品直接接触的包装材料、生产设备、生产环境（或厂房）、生产工艺、检验方法等发生变更时，应当进行确认或验证；必要时，还应当经药品监督管理部门批准', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('823ea6c2bb1146cb974a1f88627f97cc', '0.003.010.241', 'ss_a', '药品生产管理规范', '10.241 应当建立操作规程，规定原辅料、包装材料、质量标准、检验方法、操作规程、厂房、设施、设备、仪器、生产工艺和计算机软件变更的申请、评估、审核、批准和实施；质量管理部门应当指定专人负责变更控制', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('82b05bfdedc74b0390a2e56305cd37c1', '0.003.009.197.009', 'ss_a', '药品生产管理规范', '9.197.9 生产和清洁过程中应当避免使用易碎、易脱屑、易发霉器具；使用筛网时，应当有防止因筛网断裂而造成污染的措施', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8339f698c8944a55a1e13af47485aa06', '0.003.004.060', 'ss_a', '药品生产管理规范', '4.60 接收、发放和发运区域应当能够保护物料、产品免受外界天气（如雨、雪）的影响；接收区的布局和设施应当能够确保到货物料在进入仓储区前可对外包装进行必要的清洁', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('83fd054fd20e44359f898816c0297104', '0.003.006.133.001', 'ss_a', '药品生产管理规范', '6.133.1 回收处理后的产品应当按照回收处理中最早批次产品的生产日期确定有效期', null, 'd1cf71e1c8f84a42b3716e61d4c389c8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8472f241590d4d38984a1cf6520585ab', '0.003.003.024.005', 'ss_a', '药品生产管理规范', '3.24.5 确保企业所有相关人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('850dfc1b012e464a8e24efe8568dd8d6', '0.003.006.119', 'ss_a', '药品生产管理规范', '6.119 中间产品和待包装产品应当有明确的标识，并至少标明下述内容：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('853ecdd98d3048c3a0bf3d4773bcdfda', '0.003.002.010.010', 'ss_a', '药品生产管理规范', '2.10.10 调查导致药品投诉和质量缺陷的原因，并采取措施，防止类似质量缺陷再次发生;', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('85857e7ad00a489694c171545108b51d', '0.003.008.179', 'ss_a', '药品生产管理规范', '8.179 在包装过程中，进行每项操作时应当及时记录，操作结束后，应当由包装操作人员确认并签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem` VALUES ('85b3c3f90f374d0697203446b464e44c', '0.003.012.296', 'ss_a', '药品生产管理规范', '12.296 药品发运的零头包装只限两个批号为一个合箱，合箱外应当标明全部批号，并建立合箱记录', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('85c01be5af524b589733f0d0743d26d5', '0.003.002.006', 'ss_a', '药品生产管理规范', '2.6 企业高层管理人员应当确保实现既定的质量目标，不同层次的人员以及供应商、经销商应当共同参与并承担各自的责任', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8626fdaeefa64aa28ce1bcc41c8c8488', '0.003.010.234.008', 'ss_a', '药品生产管理规范', '10.234.8 检验项目，如检验项目少于成品质量标准所包含的项目，应当说明理由', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('865e28af48984acb97611fae7df91f88', '0.003.011.292', 'ss_a', '药品生产管理规范', '11.292 委托检验合同应当明确受托方有义务接受药品监督管理部门检查', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('86b52d935dfc4ab9a587cbcf5f7feae1', '0.003.009.184', 'ss_a', '药品生产管理规范', '9.184 所有药品的生产和包装均应当按照批准的工艺规程和操作规程进行操作并有相关记录，以确保药品达到规定的质量标准，并符合药品生产许可和注册批准的要求', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('87d922c87449409e94af94446eb3bd68', '0.003.004.048.002', 'ss_a', '药品生产管理规范', '4.48.2 口服液体和固体制剂、腔道用药（含直肠用药）、表皮外用药品等非无菌制剂生产的暴露工序区域及其直接接触药品的包装材料最终处理的暴露工序区域，应当参照“无菌药品”附录中D级洁净区的要求设置，企业可根据产品的标准和特性对该区域采取适当的微生物监控措施', null, '348fe09d7b5c46dc9c8f842886976d55', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('88cf543d33dc45cba71012c04bbd17ba', '0.003.009.196', 'ss_a', '药品生产管理规范', '9.196 生产厂房应当仅限于经批准的人员出入', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('89796decc44745c395faa70bfe41aa9b', '0.003.010.222.002.010', 'ss_a', '药品生产管理规范', '10.222.2.10 取样器具的清洁方法和贮存要求', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('89b48008f420404d92f6932db5f03239', '0.003.010.273', 'ss_a', '药品生产管理规范', '10.273 所有投诉都应当登记与审核，与产品质量缺陷有关的投诉，应当详细记录投诉的各个细节，并进行调查', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '570');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8a2ce512289e42aa9ee4b4f5cd5fd2fe', '0.003.010.266.002.007', 'ss_a', '药品生产管理规范', '10.266.2.7 稳定性考察的结果及任何不良趋势', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8a39cc8902694c4b93a415154d8ae805', '0.003.004.059', 'ss_a', '药品生产管理规范', '4.59 高活性的物料或产品以及印刷包装材料应当贮存于安全的区域', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8a4bf3be4c1641439ed85abcf5bfe759', '0.003.007.140.002', 'ss_a', '药品生产管理规范', '7.140.2 安装确认应当证明厂房、设施、设备的建造和安装符合设计标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8ae373a6baa942c89de22aedd06c065d', '0.003.003.023.002.001', 'ss_a', '药品生产管理规范', '3.23.2.1 确保原辅料、包装材料、中间产品、待包装产品和成品符合经注册批准的要求和质量标准', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8b24bde8caa146518a8778e8f61c04c9', '0.003.010.272', 'ss_a', '药品生产管理规范', '10.272 应当有专人及足够的辅助人员负责进行质量投诉的调查和处理，所有投诉、调查的信息应当向质量受权人通报', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '560');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8b2e4f49b81c467596c030b696e55ec6', '0.003.009.199', 'ss_a', '药品生产管理规范', '9.199 生产开始前应当进行检查，确保设备和工作场所没有上批遗留的产品、文件或与本批产品生产无关的物料，设备处于已清洁及待用状态；检查结果应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8bb06f3ad82545ffb0b387d723442bc3', '0.003.012.294', 'ss_a', '药品生产管理规范', '12.294 因质量原因退货和召回的产品，均应当按照规定监督销毁，有证据证明退货产品质量未受影响的除外', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8ca48b9e58384060a08aa39bfbc14b48', '0.003.004.046.004', 'ss_a', '药品生产管理规范', '4.46.4 生产某些激素类、细胞毒性类、高活性化学药品应当使用专用设施（如独立的空气净化系统）和设备；特殊情况下，如采取特别防护措施并经过必要的验证，上述药品制剂则可通过阶段性生产方式共用同一生产设施和设备', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8d459793fbda4ca0b094278e8d0910ca', '0.003.001.002', 'ss_a', '药品生产管理规范', '1.2 企业应当建立药品质量管理体系', null, '2324d2d6fb9949c7abb19c4c45587207', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8da5bf212a654ecaa2292411fe68a096', '0.003.006.106.002.005', 'ss_a', '药品生产管理规范', '6.106.2.5 供应商和生产商（如不同）标识的批号', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8daa22e6661643b3b60316c0f6c62ead', '0.003.005.078', 'ss_a', '药品生产管理规范', '5.78 生产用模具的采购、验收、保管、维护、发放及报废应当制定相应操作规程，设专人专柜保管，并有相应记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8e0a0c9ef3bf4348b5be414fa164dbcd', '0.003.007.140.004', 'ss_a', '药品生产管理规范', '7.140.4 性能确认应当证明厂房、设施、设备在正常操作方法和工艺条件下能够持续符合标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8f0412c3f50e4cdfb5da626e339f6fa7', '0.003.005.091', 'ss_a', '药品生产管理规范', '5.91 应当确保生产和检验使用的关键衡器、量具、仪表、记录和控制设备以及仪器经过校准，所得出的数据准确、可靠', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8f39f1cba9914e5ebbdd3486cb2c87f2', '0.003.006.102.002', 'ss_a', '药品生产管理规范', '6.102.2 进口原辅料应当符合国家相关的进口管理规定', null, '69eef02c1a474f44b73c6393c65833c2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('8f60e02df6e44f0d942d909f3f87f8f4', '0.003.008.170.003.001', 'ss_a', '药品生产管理规范', '8.170.3.1 以最终包装容器中产品的数量、重量或体积表示的包装形式', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('907a767787af48f49e172362926234f5', '0.003.005.072', 'ss_a', '药品生产管理规范', '5.72 应当建立设备使用、清洁、维护和维修的操作规程，并保存相应的操作记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('90a104a62cb4461ea874132ec252efa5', '0.003.002.010.004', 'ss_a', '药品生产管理规范', '2.10.4 应当使用准确、易懂的语言制定操作规程', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('91d42e23ae3140669da49cdde63bfc62', '0.003.008.180.002', 'ss_a', '药品生产管理规范', '8.180.2 包装操作日期和时间', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('91ed9701c2754788b98f88bbbc30a71d', '0.003.009.201.001', 'ss_a', '药品生产管理规范', '9.201.1 清场记录内容包括：操作间编号、产品名称、批号、生产工序、清场日期、检查项目及结果、清场负责人及复核人签名', null, 'ab2aeacbef644038bedce9b7ce0d6a37', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('91f0ee74b1854f16b13ac9a54ffe03dc', '0.003.003.023.002.005', 'ss_a', '药品生产管理规范', '3.23.2.5 审核和批准所有与质量有关的变更', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('92ea9dd5c24940348e94a059daacefac', '0.003.003.025.002.003', 'ss_a', '药品生产管理规范', '3.25.2.3 在产品放行前，质量受权人必须按照上述第2项的要求出具产品放行审核记录，并纳入批记录', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('937a4020df8a400d8d3deedec659798f', '0.003.008.162.001', 'ss_a', '药品生产管理规范', '8.162.1 批记录应当由质量管理部门负责管理，至少保存至药品有效期后一年', null, 'c7a7a5dad6a84d1e8e8680867fa010e3', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('93b6f9f8615f40e3beb042ac3d1924d3', '0.003.010.227.002', 'ss_a', '药品生产管理规范', '10.227.2 标准品或对照品应当有适当的标识，内容至少包括名称、批号、制备日期（如有）、有效期（如有）、首次开启日期、含量或效价、贮存条件', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9459c44eb06e4d698bc86d9e45b8995f', '0.003.007.140', 'ss_a', '药品生产管理规范', '7.140 应当建立确认与验证的文件和记录，并能以文件和记录证明达到以下预定的目标：', null, 'ff6eb52a08744320bc7255ec6ec142f5', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('94b585a47b8b426897b1320574a0cb7e', '0.003.003.034', 'ss_a', '药品生产管理规范', '3.34 任何进入生产区的人员均应当按照规定更衣', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('95dbb97291af4957b02ec791f3f234ca', '0.003.008.170.002.003', 'ss_a', '药品生产管理规范', '8.170.2.3 详细的生产步骤和工艺参数说明（如物料的核对、预处理、加入物料的顺序、混合时间、温度等）', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('95e71c576b434a3e93f22737abc20c88', '0.003.010.266.002.008', 'ss_a', '药品生产管理规范', '10.266.2.8 所有因质量原因造成的退货、投诉、召回及调查', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('96ad0cac8d0649aa9505185dcf805491', '0.003.001.001', 'ss_a', '药品生产管理规范', '1.1 为规范药品生产质量管理，根据《中华人民共和国药品管理法》、《中华人民共和国药品管理法实施条例》，制定本规范', null, '2324d2d6fb9949c7abb19c4c45587207', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('96d0c52d111148159b86f36e5c0cb7da', '0.003.003.025.002.001', 'ss_a', '药品生产管理规范', '3.25.2.1 参与企业质量体系建立、内部自检、外部质量审计、验证以及药品不良反应报告、产品召回等质量管理活动', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('96deb86dde1145f485b22644d510ada4', '0.003.010.266.002.009', 'ss_a', '药品生产管理规范', '10.266.2.9 与产品工艺或设备相关的纠正措施的执行情况和效果', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('96e872a7922842baad9a7f99712394ed', '0.003.010.230.001.005', 'ss_a', '药品生产管理规范', '10.230.1.5 对变更或偏差已完成所有必要的取样、检查、检验和审核', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('97003585193849b7a1661e1b8afe6f94', '0.003.003.022.003.006', 'ss_a', '药品生产管理规范', '3.22.3.6 确保生产相关人员经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('970fb6b3a4bb4a40b872c35ea797eee7', '0.003.006.106', 'ss_a', '药品生产管理规范', '6.106 原辅料、与药品直接接触的包装材料和印刷包装材料的接收应当有操作规程，所有到货物料均应当检查，以确保与订单一致，并确认供应商已经质量管理部门批准', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9749060c72574c9ea5f279bb45885a27', '0.003.012', 'ss_a', '药品生产管理规范', '12 产品发运与召回', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('974b43cd9b294fb78a053f570176d93b', '0.003.003.024.004', 'ss_a', '药品生产管理规范', '3.24.4 确保完成生产工艺验证', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('978a6dbef37c4232949a59565b3d5e58', '0.003.008.183.010', 'ss_a', '药品生产管理规范', '8.183.10 药品召回', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('97e296dae88242d6a170220c39bcc95f', '0.003.003.023.001.001', 'ss_a', '药品生产管理规范', '3.23.1.1 质量管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，其中至少一年的药品质量管理经验，接受过与所生产产品相关的专业知识培训', null, '9ff6516cbcd4467987ababfbcc1d7056', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9811013aa5084117b04fb78a6db48030', '0.003.009.197', 'ss_a', '药品生产管理规范', '9.197 生产过程中应当尽可能采取措施，防止污染和交叉污染，如：', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9822118068af43919cd245bf8d1f33e0', '0.003.010.247', 'ss_a', '药品生产管理规范', '10.247 各部门负责人应当确保所有人员正确执行生产工艺、质量标准、检验方法和操作规程，防止偏差的产生', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('98caa5d1bcf145218d9910687db6ef8f', '0.003.008.170.001.002', 'ss_a', '药品生产管理规范', '8.170.1.2 产品剂型、规格和批量', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('99c71a6a15ef496686012f9a8fdee8e9', '0.003.005.093', 'ss_a', '药品生产管理规范', '5.93 衡器、量具、仪表、用于记录和控制的设备以及仪器应当有明显的标识，标明其校准有效期', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('99d7edce55c545c093fdbe6d606760c0', '0.003.003.034.001', 'ss_a', '药品生产管理规范', '3.34.1 工作服的选材、式样及穿戴方式应当与所从事的工作和空气洁净度级别要求相适应', null, '94b585a47b8b426897b1320574a0cb7e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('99e1819ec61e4b539c244bcb95686e60', '0.003.006.106.002', 'ss_a', '药品生产管理规范', '6.106.2 每次接收均应当有记录，内容包括：', null, '970fb6b3a4bb4a40b872c35ea797eee7', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9a3d10ae835c467194e9f66d2869cb73', '0.003.008.168', 'ss_a', '药品生产管理规范', '8.168 每种药品的每个生产批量均应当有经企业批准的工艺规程，不同药品规格的每种包装形式均应当有各自的包装操作要求；工艺规程的制定应当以注册批准的工艺为依据', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9afe6292eed84760b4f8851bb11d3999', '0.003.010.262', 'ss_a', '药品生产管理规范', '10.262 质量管理部门应当向物料管理部门分发经批准的合格供应商名单，该名单内容至少包括物料名称、规格、质量标准、生产商名称和地址、经销商（如有）名称等，并及时更新', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '460');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9c02a0190c0449fd9b7b49ad2df649a5', '0.003.010.222.004', 'ss_a', '药品生产管理规范', '10.222.4 留样应当能够代表被取样批次的产品或物料，也可抽取其他样品来监控生产过程中最重要的环节（如生产的开始或结束）', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9c3ccbcf90bc494786f080d2b8f7fa4c', '0.003.003.020.001', 'ss_a', '药品生产管理规范', '3.20.1 质量管理负责人和生产管理负责人不得互相兼任', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9c496ad57e4e4d1e96e6f4ac501802b0', '0.003.010.263', 'ss_a', '药品生产管理规范', '10.263 质量管理部门应当与主要物料供应商签订质量协议，在协议中应当明确双方所承担的质量责任', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '470');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9c638ba5adcc4a29aabc78d90cc53d58', '0.003.003.020.003', 'ss_a', '药品生产管理规范', '3.20.3 应当制定操作规程确保质量受权人独立履行职责，不受企业负责人和其他人员的干扰', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9c952a7f1e1044a687f073a737fc8179', '0.003.010.223.005', 'ss_a', '药品生产管理规范', '10.223.5 检验应当有可追溯的记录并应当复核，确保结果与记录一致；所有计算均应当严格核对', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9cad5efef18a472184e69f752496b4b9', '0.003.003.023.002.014', 'ss_a', '药品生产管理规范', '3.23.2.14 确保质量控制和质量保证人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9d9a9b61accf43169eee6c1366c04b34', '0.003.005.095', 'ss_a', '药品生产管理规范', '5.95 在生产、包装、仓储过程中使用自动或电子设备的，应当按照操作规程定期进行校准和检查，确保其操作功能正常', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9da1787394a24c68a88bb317934bbb89', '0.003.006.134.001', 'ss_a', '药品生产管理规范', '6.134.1 只有不影响产品质量、符合相应质量标准，且根据预定、经批准的操作规程以及对相关风险充分评估后，才允许返工处理；返工应当有相应记录', null, 'a35147e95d464685a931e24bb067a7a7', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9dffab413bf7403188f8d8d7571a2f8c', '0.003.008.183.006', 'ss_a', '药品生产管理规范', '8.183.6 虫害控制', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9e5ea3ab16184876863a96f59cb37c29', '0.003.010.234', 'ss_a', '药品生产管理规范', '10.234 持续稳定性考察的时间应当涵盖药品有效期，考察方案应当至少包括以下内容：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9e75610a6e974237b97493af4524543b', '0.003.011.281.001', 'ss_a', '药品生产管理规范', '11.281.1 委托方应当使受托方充分了解与产品或操作相关的各种问题，包括产品或操作对受托方的环境、厂房、设备、人员及其他物料或产品可能造成的危害', null, 'd70605b58e88439fb3a00bcdbaeda7bf', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9eb7f6dae4834fd1916b413d7312de2b', '0.003.010.221.004', 'ss_a', '药品生产管理规范', '10.221.4 除与批记录相关的资料信息外，还应当保存其他原始资料或记录，以方便查阅', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9ec94a0622314aa2943cde74ab6bb7df', '0.003.005.101', 'ss_a', '药品生产管理规范', '5.101 应当按照操作规程对纯化水、注射用水管道进行清洗消毒，并有相关记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9f11b4b9d1ac438ebc7be137867c13e1', '0.003.008.170.003.007', 'ss_a', '药品生产管理规范', '8.170.3.7 待包装产品、印刷包装材料的物料平衡计算方法和限度', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9f8201fc2b084be29df0ec93feceeb8c', '0.003.002.010.003.003', 'ss_a', '药品生产管理规范', '2.10.3.3 适用的设备和维修保障', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9faed470a7874cd8b96fd24940e3ebf2', '0.003.012.304', 'ss_a', '药品生产管理规范', '12.304 召回的进展过程应当有记录，并有最终报告；产品发运数量、已召回数量以及数量平衡情况应当在报告中予以说明', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('9ff6516cbcd4467987ababfbcc1d7056', '0.003.003.023.001', 'ss_a', '药品生产管理规范', '3.23.1 资质：', null, '51e4493425074894a863dae4d80dcb0c', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a09d87ce110240adbc5a959f9b46b4ed', '0.003.002.007', 'ss_a', '药品生产管理规范', '2.7 企业应当配备足够的、符合要求的人员、厂房、设施和设备，为实现质量目标提供必要的条件', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a0cf430b1e0a4f1a8abce51fcb275599', '0.003.010.225.001.003.001', 'ss_a', '药品生产管理规范', '10.225.1.3.1 每批药品均应当有留样；如果一批药品分成数次进行包装，则每次包装至少应当保留一件最小市售包装的成品', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a146dd23950d475db819cc05033a5339', '0.003.003.032', 'ss_a', '药品生产管理规范', '3.32 企业应当采取适当措施，避免体表有伤口、患有传染病或其他可能污染药品疾病的人员从事直接接触药品的生产', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a28be3e190da4ced8b3cb8a30a59ac73', '0.003.009.193', 'ss_a', '药品生产管理规范', '9.193 应当检查产品从一个区域输送至另一个区域的管道和其他设备连接，确保连接正确无误', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a2a82a2044244055ad3f34b857b91dd0', '0.003.003.031.001', 'ss_a', '药品生产管理规范', '3.31.1 直接接触药品的生产人员上岗前应当接受健康检查，以后每年至少进行一次健康检查', null, '3b83a4447ff94f0cbd40d259b2845439', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a2b1565c3eb8487098e5910d4cd930a3', '0.003.010.253.006', 'ss_a', '药品生产管理规范', '10.253.6 确保相关信息已传递到质量受权人和预防问题再次发生的直接负责人', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a34f8687b96340369304d06c9a755119', '0.003.012.301', 'ss_a', '药品生产管理规范', '12.301 因产品存在安全隐患决定从市场召回的，应当立即向当地药品监督管理部门报告', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a35147e95d464685a931e24bb067a7a7', '0.003.006.134', 'ss_a', '药品生产管理规范', '6.134 制剂产品不得进行重新加工；不合格的制剂中间产品、待包装产品和成品一般不得进行返工', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '330');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a3641488ac1344d5a02315dc540393b6', '0.003.009.209', 'ss_a', '药品生产管理规范', '9.209 单独打印或包装过程中在线打印的信息（如产品批号或有效期）均应当进行检查，确保其正确无误，并予以记录；如手工打印，应当增加检查频次', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a3c1d3a5a4664a2aae928ec175b359d3', '0.003.010.221.001.005', 'ss_a', '药品生产管理规范', '10.221.1.5 必要的环境监测操作规程、记录和报告', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a3f95fe0ff4a4df7991130fbaaf91543', '0.003.010.234.003', 'ss_a', '药品生产管理规范', '10.234.3 检验方法依据', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a416287ac6dc439da09531bf6e88a9b6', '0.003.009.200', 'ss_a', '药品生产管理规范', '9.200 应当进行中间控制和必要的环境监测，并予以记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a429456c50714c4ca646146024656915', '0.003.006.125', 'ss_a', '药品生产管理规范', '6.125 印刷包装材料应当由专人保管，并按照操作规程和需求量发放', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a43f86668c3441c69c795e1188320eb5', '0.003.007.143', 'ss_a', '药品生产管理规范', '7.143 清洁方法应当经过验证，证实其清洁的效果，以有效防止污染和交叉污染；清洁验证应当综合考虑设备使用情况、所使用的清洁剂和消毒剂、取样方法和位置以及相应的取样回收率、残留物的性质和限度、残留物检验方法的灵敏度等因素', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a628a5ab3a344ac388172200a81d11ad', '0.003.003.024.010', 'ss_a', '药品生产管理规范', '3.24.10 监控影响产品质量的因素', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a629a587321449fe9b6ff98a51465e3c', '0.003.002.010.006', 'ss_a', '药品生产管理规范', '2.10.6 生产全过程应当有记录，偏差均经过调查并记录', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a67e6ea4b460461cbe0a8ace3f0a6b1a', '0.003.009.195', 'ss_a', '药品生产管理规范', '9.195 应当尽可能避免出现任何偏离工艺规程或操作规程的偏差；一旦出现偏差，应当按照偏差处理操作规程执行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a751fb25ea6143a789d4025bfc5cb466', '0.003.005.098', 'ss_a', '药品生产管理规范', '5.98 纯化水、注射用水储罐和输送管道所用材料应当无毒、耐腐蚀', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a8a2e50c07e14690858984b7052abe7b', '0.003.009.213.005', 'ss_a', '药品生产管理规范', '9.213.5 在线监控装置的功能是否正常', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a8e68a22bab4412098de7698b086f9fc', '0.003.008.171', 'ss_a', '药品生产管理规范', '8.171 每批产品均应当有相应的批生产记录，可追溯该批产品的生产历史以及与质量有关的情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('a9b72a3e00a74b2c9e5c8b054fa48587', '0.003.003.022.003.003', 'ss_a', '药品生产管理规范', '3.22.3.3 确保批生产记录和批包装记录经过指定人员审核并送交质量管理部门', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aa26b2b703234852b88fcb6efd023cc2', '0.003.004.046.001', 'ss_a', '药品生产管理规范', '4.46.1 应当综合考虑药品的特性、工艺和预定用途等因素，确定厂房、生产设施和设备多产品共用的可行性，并有相应评估报告', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aac09bcaaea04401aaa03624cc06e824', '0.003.009.205', 'ss_a', '药品生产管理规范', '9.205 每一包装操作场所或包装生产线，应当有标识标明包装中的产品名称、规格、批号和批量的生产状态', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aad3ac1a1a5b4da3b4e43d4102dbbed9', '0.003.006', 'ss_a', '药品生产管理规范', '6 物料与产品', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aae1caa47c1f49c497a18f6d7e6e1b9f', '0.003.003.027.001', 'ss_a', '药品生产管理规范', '3.27.1 除进行本规范理论和实践的培训外，还应当有相关法规、相应岗位的职责、技能的培训，并定期评估培训的实际效果', null, 'e6b95c4c50c7418cbbb0fe663b0c2087', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ab268b5261354918929a040cf2843203', '0.003.006.115', 'ss_a', '药品生产管理规范', '6.115 应当由指定人员按照操作规程进行配料，核对物料后，精确称量或计量，并作好标识', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ab2aeacbef644038bedce9b7ce0d6a37', '0.003.009.201', 'ss_a', '药品生产管理规范', '9.201 每批药品的每一生产阶段完成后必须由生产操作人员清场，并填写清场记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('acde633d9d754e64912b7340f7d11414', '0.003.005.087', 'ss_a', '药品生产管理规范', '5.87 生产设备应当有明显的状态标识，标明设备编号和内容物（如名称、规格、批号）；没有内容物的应当标明清洁状态', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('acdfb25d6fca4cdaab17f5d63aad7a0a', '0.003.010.221.001.006', 'ss_a', '药品生产管理规范', '10.221.1.6 必要的检验方法验证报告和记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('adebb43766d740fc9115509f71fdb89c', '0.003.010.222.002.003', 'ss_a', '药品生产管理规范', '10.222.2.3 所用器具', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ae051185bc3a498e85568b030b8b98ab', '0.003.008.151', 'ss_a', '药品生产管理规范', '8.151 企业应当建立文件管理的操作规程，系统地设计、制定、审核、批准和发放文件；与本规范有关的文件应当经质量管理部门的审核', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ae210b502a4f47a9a9faab5a82c7682c', '0.003.011.289', 'ss_a', '药品生产管理规范', '11.289 合同应当规定何方负责物料的采购、检验、放行、生产和质量控制（包括中间控制），还应当规定何方负责取样和检验', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ae287f2ffa7a44d087629e3ad486f3fe', '0.003.010.233', 'ss_a', '药品生产管理规范', '10.233 持续稳定性考察应当有考察方案，结果应当有报告；用于持续稳定性考察的设备（尤其是稳定性试验设备或设施）应当按照第七章和第五章的要求进行确认和维护', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ae2e67112eea40938d4e1dc45b6b5c15', '0.003.010.225', 'ss_a', '药品生产管理规范', '10.225 企业按规定保存的、用于药品质量追溯或调查的物料、产品样品为留样；用于产品稳定性考察的样品不属于留样', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ae7a64952068457ca60f6c5771a0b0cb', '0.003.008.170.003.005', 'ss_a', '药品生产管理规范', '8.170.3.5 包装操作步骤的说明，包括重要的辅助性操作和所用设备的注意事项、包装材料使用前的核对', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aea7395ba87f48a6880095042d10d74e', '0.003.008.175.003', 'ss_a', '药品生产管理规范', '8.175.3 每一生产工序的负责人签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('aeaa779e824d487281ef7b53ca086b67', '0.003.010.269', 'ss_a', '药品生产管理规范', '10.269 应当建立药品不良反应报告和监测管理制度，设立专门机构并配备专职人员负责管理', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '530');
INSERT INTO `ss_checkjob_checkitem` VALUES ('af06a3239a724678b089c2ad41fa58c7', '0.003.010.230.002', 'ss_a', '药品生产管理规范', '10.230.2 药品的质量评价应当有明确的结论，如批准放行、不合格或其他决定', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('af27c55ad4fb42f8b366ebbc5a8567c4', '0.003.008.183', 'ss_a', '药品生产管理规范', '8.183 下述活动也应当有相应的操作规程，其过程和结果应当有记录：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '340');
INSERT INTO `ss_checkjob_checkitem` VALUES ('afbf0f389d644b02b3a83e0210e325ca', '0.003.006.105', 'ss_a', '药品生产管理规范', '6.105 物料和产品的运输应当能够满足其保证质量的要求，对运输有特殊要求的，其运输条件应当予以确认', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('affef3568b7b4565aff3e8f84811b47f', '0.003.010.252', 'ss_a', '药品生产管理规范', '10.252 企业应当建立纠正措施和预防措施系统，对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势等进行调查并采取纠正和预防措施；调查的深度和形式应当与风险的级别相适应；纠正措施和预防措施系统应当能够增进对产品和工艺的理解，改进产品和工艺', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '360');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b0cc314bdff2445db79244ddffbd628d', '0.003.003.024.009', 'ss_a', '药品生产管理规范', '3.24.9 监督本规范执行状况', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b0eed5791124485bac83ed89ccb011cd', '0.003.006.106.002.001', 'ss_a', '药品生产管理规范', '6.106.2.1 交货单和包装容器上所注物料的名称', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b16a7a2f9d804a749fa583e41a5581c7', '0.003.005.080', 'ss_a', '药品生产管理规范', '5.80 应当制定设备的预防性维护计划和操作规程，设备的维护和维修应当有相应的记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b1abbb2ce98a4253b065ac94acdff13b', '0.003.003.030.001', 'ss_a', '药品生产管理规范', '3.30.1 生产区和质量控制区的人员应当正确理解相关的人员卫生操作规程', null, '01cafe8e25f740538f0e9b57bd64bba5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b1c722a9d2d24d2cbe7f65bb5ade0a88', '0.003.010.254', 'ss_a', '药品生产管理规范', '10.254 实施纠正和预防措施应当有文件记录，并由质量管理部门保存', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '380');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b20e7020c78248c7afc6c818bce61446', '0.003.004.051', 'ss_a', '药品生产管理规范', '4.51 排水设施应当大小适宜，并安装防止倒灌的装置；应当尽可能避免明沟排水；不可避免时，明沟宜浅，以方便清洁和消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b24cd627d143431e96f91e08f79c8ef5', '0.003.003.023.002.009', 'ss_a', '药品生产管理规范', '3.23.2.9 确保完成各种必要的确认或验证工作，审核和批准确认或验证方案和报告', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b37d3d6ffdcd4efda8e14f92027e3edb', '0.003.010.225.001', 'ss_a', '药品生产管理规范', '10.225.1 留样应当至少符合以下要求：', null, 'ae2e67112eea40938d4e1dc45b6b5c15', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b382d4b2470745e09d0c01cc3c8bbd8b', '0.003.008.170.002.007', 'ss_a', '药品生产管理规范', '8.170.2.7 需要说明的注意事项', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b4f28e34037b4d19975c4eb63c737c37', '0.003.010.253.001', 'ss_a', '药品生产管理规范', '10.253.1 对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势以及其他来源的质量数据进行分析，确定已有和潜在的质量问题；必要时，应当采用适当的统计学方法', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b69679d9c52047b6a04283bbbf6ca4f7', '0.003.009.204', 'ss_a', '药品生产管理规范', '9.204 包装操作前，还应当检查所领用的包装材料正确无误，核对待包装产品和所用包装材料的名称、规格、数量、质量状态，且与工艺规程相符', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b6dbf6579b834b0a96860cdaca666c7d', '0.003.012.302', 'ss_a', '药品生产管理规范', '12.302 产品召回负责人应当能够迅速查阅到药品发运记录', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b86e364ba05a44cd83a15c4d6c9b96b5', '0.003.010.251', 'ss_a', '药品生产管理规范', '10.251 质量管理部门应当负责偏差的分类，保存偏差调查、处理的文件和记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '350');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b8aabaf414814ed8bdee66d74fcf349c', '0.003.010.234.004', 'ss_a', '药品生产管理规范', '10.234.4 合格标准', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b8ca9732296e49778f27d23cebc67d5c', '0.003.010.223.006.003', 'ss_a', '药品生产管理规范', '10.223.6.3 检验所用的仪器或设备的型号和编号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b91cb851cf7142d3be3864826aa8f9db', '0.003.006.111', 'ss_a', '药品生产管理规范', '6.111 一次接收数个批次的物料，应当按批取样、检验、放行', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b94068ad64be4f36a9a1db38c8e323e3', '0.003.010.220', 'ss_a', '药品生产管理规范', '10.220 质量控制实验室应当配备药典、标准图谱等必要的工具书，以及标准品或对照品等相关的标准物质', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b97ce6566c7241fb93ef29ec040d95ab', '0.003.009.216', 'ss_a', '药品生产管理规范', '9.216 包装结束时，已打印批号的剩余包装材料应当由专人负责全部计数销毁，并有记录；如将未打印批号的印刷包装材料退库，应当按照操作规程执行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem` VALUES ('b9f5175f3fd34d5abf195876085d4376', '0.003.010.221.001.001', 'ss_a', '药品生产管理规范', '10.221.1.1 质量标准', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ba15563c4e5f4ff58bcef2c67c2bf955', '0.003.008.161', 'ss_a', '药品生产管理规范', '8.161 记录应当保持清洁，不得撕毁和任意涂改；记录填写的任何更改都应当签注姓名和日期，并使原有信息仍清晰可辨，必要时，应当说明更改的理由；记录如需重新誊写，则原有记录不得销毁，应当作为重新誊写记录的附件保存', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ba1b151180b24c4db07f9d4599f18999', '0.003.010.222.006', 'ss_a', '药品生产管理规范', '10.222.6 样品应当按照规定的贮存要求保存', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ba3ae1b792564c52926b9e6185737780', '0.003.010.225.001.004', 'ss_a', '药品生产管理规范', '10.225.1.4 物料的留样：', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ba4a6153b64b4dcfb6943000b2a0f82f', '0.003.002.009.001', 'ss_a', '药品生产管理规范', '2.9.1 药品的设计与研发体现本规范的要求', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ba4fa61ab4a446018c04ac0ae8d052d5', '0.003.010.266.002.010', 'ss_a', '药品生产管理规范', '10.266.2.10 新获批准和有变更的药品，按照注册要求上市后应当完成的工作情况', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('baa9d6bb315e416fa72dd3038c340bfd', '0.003.003.024.006', 'ss_a', '药品生产管理规范', '3.24.6 批准并监督委托生产', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bae4a6a560e04f818a15997377c42a8d', '0.003.008.175.006', 'ss_a', '药品生产管理规范', '8.175.6 相关生产操作或活动、工艺参数及控制范围，以及所用主要生产设备的编号', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('baf03d4d64ee43058ed87fd53fcaa6f1', '0.003.008', 'ss_a', '药品生产管理规范', '8 文件管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bb41ab918eba441fa3c7b8da5cba792f', '0.003.011.284', 'ss_a', '药品生产管理规范', '11.284 受托方必须具备足够的厂房、设备、知识和经验以及人员，满足委托方所委托的生产或检验工作的要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bb797c8b886b4cad86b05bc65b94c807', '0.003.007.148', 'ss_a', '药品生产管理规范', '7.148 确认或验证应当按照预先确定和批准的方案实施，并有记录；确认或验证工作完成后，应当写出报告，并经审核、批准；确认或验证的结果和结论（包括评价和建议）应当有记录并存档', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bc008f2cc84b49709b64465f576ec160', '0.003.010.228', 'ss_a', '药品生产管理规范', '10.228 应当分别建立物料和产品批准放行的操作规程，明确批准放行的标准、职责，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bc1cec0166824e059d1e93372b49f4a6', '0.003.010.223.006.007', 'ss_a', '药品生产管理规范', '10.223.6.7 检验结果，包括观察情况、计算和图谱或曲线图，以及依据的检验报告编号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bcb9babc67fd4e1abf3d41ce822a232a', '0.003.008.165.005', 'ss_a', '药品生产管理规范', '8.165.5 有效期或复验期', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bd274ea7d3a84536b47e2f9aa14f5005', '0.003.004.061.002', 'ss_a', '药品生产管理规范', '4.61.2 如果采用其他方法替代物理隔离，则该方法应当具有同等的安全性', null, '5f01a9476a954dbaace9c044e9a70f9e', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('bd822e547bad4586ac0493776a0f89e6', '0.003.008.175', 'ss_a', '药品生产管理规范', '8.175 批生产记录的内容应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '260');
INSERT INTO `ss_checkjob_checkitem` VALUES ('be60792440cc4dfca846b3e673ebf2a4', '0.003.002.005.002', 'ss_a', '药品生产管理规范', '2.5.2 确保所生产的药品符合预定用途和注册要求', null, '5d89ecc0558e46ebbf301ab4e933d435', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('be6f1441f6df4178bc588499f5ddb5fc', '0.003.010.225.001.003.005', 'ss_a', '药品生产管理规范', '10.225.1.3.5 留样观察应当有记录', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('be77637766234dea9607e4fe0f5ad76f', '0.003.002.010.005', 'ss_a', '药品生产管理规范', '2.10.5 操作人员经过培训，能够按照操作规程正确操作', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c0ccb55e74bf47ce9cbda41be7c56107', '0.003.006.106.002.003', 'ss_a', '药品生产管理规范', '6.106.2.3 接收日期', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c0d37596b88e4e2a954a90ba4a7af153', '0.003.010.225.001.003.004', 'ss_a', '药品生产管理规范', '10.225.1.3.4 如果不影响留样的包装完整性，保存期间内至少应当每年对留样进行一次目检观察，如有异常，应当进行彻底调查并采取相应的处理措施', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c0d4522d01b341d8bb037210aeec27a2', '0.003.004', 'ss_a', '药品生产管理规范', '4 厂房与设施', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c11fc6aca90540078c7a80511d486ef8', '0.003.004.069', 'ss_a', '药品生产管理规范', '4.69 更衣室和盥洗室应当方便人员进出，并与使用人数相适应；盥洗室不得与生产区和仓储区直接相通', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c14818e248e3456c8f63091716d6a363', '0.003.003.024.003', 'ss_a', '药品生产管理规范', '3.24.3 确保关键设备经过确认', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c16e14b1c9c548c08bc2c5d2e097b182', '0.003.010.258', 'ss_a', '药品生产管理规范', '10.258 现场质量审计应当核实供应商资质证明文件和检验报告的真实性，核实是否具备检验条件；应当对其人员机构、厂房设施和设备、物料管理、生产工艺流程和生产管理、质量控制实验室的设备、仪器、文件管理等进行检查，以全面评估其质量保证系统；现场质量审计应当有报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '420');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c1b2e44ecf974dc4becd61dc6404c5e7', '0.003.008.157', 'ss_a', '药品生产管理规范', '8.157 原版文件复制时，不得产生任何差错；复制的文件应当清晰可辨', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c1b982139b9147dfb599137366c9f2f6', '0.003.002.012', 'ss_a', '药品生产管理规范', '2.12 质量控制的基本要求：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c1eabd3626454705a12147415ec01d66', '0.003.007.139', 'ss_a', '药品生产管理规范', '7.139 企业的厂房、设施、设备和检验仪器应当经过确认，应当采用经过验证的生产工艺、操作规程和检验方法进行生产、操作和检验，并保持持续的验证状态', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c220e0481d2641cd8770cc4adae3f76a', '0.003.010.266.002.003', 'ss_a', '药品生产管理规范', '10.266.2.3 所有不符合质量标准的批次及其调查', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c22a04edd68f416daeb6ef4097bea83e', '0.003.010.256', 'ss_a', '药品生产管理规范', '10.256 应当建立物料供应商评估和批准的操作规程，明确供应商的资质、选择的原则、质量评估方式、评估标准、物料供应商批准的程序', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '400');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c2729b7b0a1e47408cfbe378b7a90a51', '0.003.003.022.002', 'ss_a', '药品生产管理规范', '3.22.2 生产管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少三年从事药品生产和质量管理的实践经验，其中至少有一年的药品生产管理经验，接受过与所生产产品相关的专业知识培训', null, '483b74dacc094bb4bd6760ed61348b91', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c2ec9e8a8ed1489191082b1224a6f1de', '0.003.013.307', 'ss_a', '药品生产管理规范', '13.307 自检应当有计划，对机构与人员、厂房与设施、设备、物料与产品、确认与验证、文件管理、生产管理、质量控制与质量保证、委托生产与委托检验、产品发运与召回等项目定期进行检查', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c35ba60dca8749d5995821f0be6a9e17', '0.003.006.106.002.002', 'ss_a', '药品生产管理规范', '6.106.2.2 企业内部所用物料名称和（或）代码', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c556081aa01f477a8f47841b49c64c87', '0.003.010.234.001', 'ss_a', '药品生产管理规范', '10.234.1 每种规格、每个生产批量药品的考察批次数', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c57ca6d580224a9ab7d4163dbf10c585', '0.003.005.085', 'ss_a', '药品生产管理规范', '5.85 已清洁的生产设备应当在清洁、干燥的条件下存放', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c68adc0394334bfa929c70f989789275', '0.003.002', 'ss_a', '药品生产管理规范', '2 质量管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c6b0c7680d2741c1b6eec58905b6bc46', '0.003.002.014', 'ss_a', '药品生产管理规范', '2.14 应当根据科学知识及经验对质量风险进行评估，以保证产品质量', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c6fc2069aeb24d15afd788891356b401', '0.003.006.137.001', 'ss_a', '药品生产管理规范', '6.137.1 评价考虑的因素至少应当包括药品的性质、所需的贮存条件、药品的现状、历史，以及发运与退货之间的间隔时间等因素；不符合贮存和运输要求的退货，应当在质量管理部门监督下予以销毁', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c768f2d9aa8b442d83f199d2400bfd16', '0.003.006.135', 'ss_a', '药品生产管理规范', '6.135 对返工或重新加工或回收合并后生产的成品，质量管理部门应当考虑需要进行额外相关项目的检验和稳定性考察', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '340');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c7a7a5dad6a84d1e8e8680867fa010e3', '0.003.008.162', 'ss_a', '药品生产管理规范', '8.162 每批药品应当有批记录，包括批生产记录、批包装记录、批检验记录和药品放行审核记录等与本批产品有关的记录', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c80fc1052a1d491ea9843099b18faf89', '0.003.008.170.001.001', 'ss_a', '药品生产管理规范', '8.170.1.1 产品名称和产品代码', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c8d2061a24eb4e5cbf19b9a9f0911547', '0.003.010.223.008', 'ss_a', '药品生产管理规范', '10.223.8 应当对实验室容量分析用玻璃仪器、试剂、试液、对照品以及培养基进行质量检查', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('c93e7cb48d2c47759c7937d9af33f96c', '0.003.006.137.004', 'ss_a', '药品生产管理规范', '6.137.4 退货处理的过程和结果应当有相应记录', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cab8972cecb3464b8766ade52aa5afdd', '0.003.003.023.002', 'ss_a', '药品生产管理规范', '3.23.2 主要职责：', null, '51e4493425074894a863dae4d80dcb0c', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cb2fcd1cb5c74339bcda36581cd97c08', '0.003.009.191', 'ss_a', '药品生产管理规范', '9.191 生产期间使用的所有物料、中间产品或待包装产品的容器及主要设备、必要的操作室应当贴签标识或以其他方式标明生产中的产品或物料名称、规格和批号，如有必要，还应当标明生产工序', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cb5e5e98b4fe43968c91f3ca6e39a3b1', '0.003.010.223.002', 'ss_a', '药品生产管理规范', '10.223.2 符合下列情形之一的，应当对检验方法进行验证：', null, '57de58f1774d4f90852961a935310aef', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cb7fcf162bb34ded9d0694afa2cce127', '0.003.008.175.009', 'ss_a', '药品生产管理规范', '8.175.9 对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cbc599498e9b4408916565f163c42014', '0.003.010.223.006.002', 'ss_a', '药品生产管理规范', '10.223.6.2 依据的质量标准和检验操作规程', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cbd91f27b5e04f4bad7b0e0f71ce8993', '0.003.009', 'ss_a', '药品生产管理规范', '9 生产管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cbdda2906144424a8153ff8a82785e95', '0.003.006.119.004', 'ss_a', '药品生产管理规范', '6.119.4 生产工序（必要时）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cc1351b04e924637bb7c8d6e62719ac2', '0.003.006.130', 'ss_a', '药品生产管理规范', '6.130 麻醉药品、精神药品、医疗用毒性药品（包括药材）、放射性药品、药品类易制毒化学品及易燃、易爆和其他危险品的验收、贮存、管理应当执行国家有关的规定', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ccb69e6e8c6446f1b047a11cad7442d8', '0.003.007.140.001', 'ss_a', '药品生产管理规范', '7.140.1 设计确认应当证明厂房、设施、设备的设计符合预定用途和本规范要求', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cce580d1e61d41e1b2fb71e20f9f2f20', '0.003.004.062', 'ss_a', '药品生产管理规范', '4.62 通常应当有单独的物料取样区；取样区的空气洁净度级别应当与生产要求一致；如在其他区域或采用其他方式取样，应当能够防止污染或交叉污染', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ccfc7d42bad242d2ac3bbb5211e21fe2', '0.003.008.181', 'ss_a', '药品生产管理规范', '8.181 操作规程的内容应当包括：题目、编号、版本号、颁发部门、生效日期、分发部门以及制定人、审核人、批准人的签名并注明日期，标题、正文及变更历史', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cd14928a239b448b867c2e45246cd038', '0.001', 'PARAM_TYPE', '参数分类科目', ' 测试测试测试', '', '0', '0', '0', 'book.png', '1');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cd5644684ce646c1bab34c93b578d6ab', '0.003.008.165', 'ss_a', '药品生产管理规范', '8.165 物料的质量标准一般应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ce094f877f7845ac88f99b9d19d1bb8e', '0.003.006.106.001', 'ss_a', '药品生产管理规范', '6.106.1 物料的外包装应当有标签，并注明规定的信息；必要时，还应当进行清洁，发现外包装损坏或其他可能影响物料质量的问题，应当向质量管理部门报告并进行调查和记录', null, '970fb6b3a4bb4a40b872c35ea797eee7', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ceaa67ae87284c4db2d7845fa0ebe542', '0.003.010.255', 'ss_a', '药品生产管理规范', '10.255 质量管理部门应当对所有生产用物料的供应商进行质量评估，会同有关部门对主要物料供应商（尤其是生产商）的质量体系进行现场质量审计，并对质量评估不符合要求的供应商行使否决权', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '390');
INSERT INTO `ss_checkjob_checkitem` VALUES ('cfdcef6248704ea8b373dc0a22ee18e0', '0.003.005.099', 'ss_a', '药品生产管理规范', '5.99 纯化水、注射用水的制备、贮存和分配应当能够防止微生物的滋生；纯化水可采用循环，注射用水可采用70℃以上保温循环', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d051676dde2b4bfaaceed1ba321e16de', '0.003.009.213.004', 'ss_a', '药品生产管理规范', '9.213.4 打印信息是否正确', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d0cf4f74c4c64b67b99e79e438806edf', '0.003.010.225.001.003.007', 'ss_a', '药品生产管理规范', '10.225.1.3.7 如企业终止药品生产或关闭的，应当将留样转交受权单位保存，并告知当地药品监督管理部门，以便在必要时可随时取得留样', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d11204412fbb45d893c182ad02440805', '0.003.002.012.005', 'ss_a', '药品生产管理规范', '2.12.5 取样、检查、检验应当有记录，偏差应当经过调查并记录', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d18d1b8225254489aaaa88d41a84969b', '0.003.003.019', 'ss_a', '药品生产管理规范', '3.19 职责通常不得委托给他人；确需委托的，其职责可委托给具有相当资质的指定人员', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d191faa3fbff4c36a5d5319b17c48b9c', '0.003.004.041', 'ss_a', '药品生产管理规范', '4.41 应当对厂房进行适当维护，并确保维修活动不影响药品的质量；应当按照详细的书面操作规程对厂房进行清洁或必要的消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d1922b39a89e4d4cb80f41b05ef4379c', '0.003.006.112.004', 'ss_a', '药品生产管理规范', '6.112.4 有效期或复验期', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d1a1a600ce354a6ca99dcf7eb3998695', '0.003.002.010', 'ss_a', '药品生产管理规范', '2.10 药品生产质量管理的基本要求：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d1a99b7da3ad4bbba46cb7ca595e1650', '0.003.005.074', 'ss_a', '药品生产管理规范', '5.74 生产设备不得对药品质量产生任何不利影响；与药品直接接触的生产设备表面应当平整、光洁、易清洗或消毒、耐腐蚀，不得与药品发生化学反应、吸附药品或向药品中释放物质', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d1cf71e1c8f84a42b3716e61d4c389c8', '0.003.006.133', 'ss_a', '药品生产管理规范', '6.133 产品回收需经预先批准，并对相关的质量风险进行充分评估，根据评估结论决定是否回收；回收应当按照预定的操作规程进行，并有相应记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '320');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d207761b01c04b8291e2e23e5591c85b', '0.003.008.167', 'ss_a', '药品生产管理规范', '8.167 成品的质量标准应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d2105ae6da7c4231b44d47a3abf68a79', '0.003.010.277', 'ss_a', '药品生产管理规范', '10.277 企业出现生产失误、药品变质或其他重大质量问题，应当及时采取相应措施，必要时还应当向当地药品监督管理部门报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '610');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d3301063fca3450ea9798467597a9145', '0.003.008.172', 'ss_a', '药品生产管理规范', '8.172 批生产记录应当依据现行批准的工艺规程的相关内容制定；记录的设计应当避免填写差错；批生产记录的每一页应当标注产品的名称、规格和批号', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d37c36aafe8948d9aa9512154b3dcce8', '0.003.010.226.004', 'ss_a', '药品生产管理规范', '10.226.4 试液和已配制的培养基应当标注配制批号、配制日期和配制人员姓名，并有配制（包括灭菌）记录；不稳定的试剂、试液和培养基应当标注有效期及特殊贮存条件；标准液、滴定液还应当标注最后一次标化的日期和校正因子，并有标化记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d398275d3c8c475489e754fc8e66642f', '0.003.005.075', 'ss_a', '药品生产管理规范', '5.75 应当配备有适当量程和精度的衡器、量具、仪器和仪表', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d3df7c68fbcd4dbebcc033ea9b9b749a', '0.003.010.225.001.003.003', 'ss_a', '药品生产管理规范', '10.225.1.3.3 每批药品的留样数量一般至少应当能够确保按照注册批准的质量标准完成两次全检（无菌检查和热原检查等除外）', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d40545c60f194b30bba50356056ee353', '0.003.008.165.003', 'ss_a', '药品生产管理规范', '8.165.3 定性和定量的限度要求', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d40883038b964c389761d0bb8b3f0396', '0.003.010.225.001.003.006', 'ss_a', '药品生产管理规范', '10.225.1.3.6 留样应当按照注册批准的贮存条件至少保存至药品有效期后一年', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d40ba7c934514792850c5dacee69991f', '0.003.008.165.002', 'ss_a', '药品生产管理规范', '8.165.2 取样、检验方法或相关操作规程编号', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d4470bb287754b42b717f34873471d6c', '0.003.008.183.002', 'ss_a', '药品生产管理规范', '8.183.2 设备的装配和校准', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d4490d4e0a0247119066eb8c71aca510', '0.003.009.213.002', 'ss_a', '药品生产管理规范', '9.213.2 包装是否完整', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d4926ab0165c45e6ab223a7a262f7b83', '0.003.008.152', 'ss_a', '药品生产管理规范', '8.152 文件的内容应当与药品生产许可、药品注册等相关要求一致，并有助于追溯每批产品的历史情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d498c6fefb3c4d359ab769b8f63ffb3b', '0.003.010.222.002.004', 'ss_a', '药品生产管理规范', '10.222.2.4 样品量', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d4b6eadaf61b4c3ba93d4cc9e76e5852', '0.003.003.026', 'ss_a', '药品生产管理规范', '3.26 企业应当指定部门或专人负责培训管理工作，应当有经生产管理负责人或质量管理负责人审核或批准的培训方案或计划，培训记录应当予以保存', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d52c836981014f7592987f5216811516', '0.003.006.103.001', 'ss_a', '药品生产管理规范', '6.103.1 物料和产品的处理应当按照操作规程或工艺规程执行，并有记录', null, 'f218d7d693944519bc4004c5a2213091', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d60a5b04880047b48d728457bf590f9b', '0.003.011.286', 'ss_a', '药品生产管理规范', '11.286 受托方不得从事对委托生产或检验的产品质量有不利影响的活动', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d62f9bba23364f50b79aceb519765066', '0.003.005.084', 'ss_a', '药品生产管理规范', '5.84 应当按照详细规定的操作规程清洁生产设备', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d66f797a3e8e42089e98712bd2f3dc45', '0.003.010.226.003', 'ss_a', '药品生产管理规范', '10.226.3 应当按照相关规定或使用说明配制、贮存和使用试剂、试液和培养基；特殊情况下，在接收或使用前，还应当对试剂进行鉴别或其他检验', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d6ae8a919aca4185aedf04e3200a4c33', '0.003.006.124', 'ss_a', '药品生产管理规范', '6.124 印刷包装材料应当设置专门区域妥善存放，未经批准人员不得进入；切割式标签或其他散装印刷包装材料应当分别置于密闭容器内储运，以防混淆', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d6c0f91567a14141a047c2d9c96c061e', '0.003.008.167.006', 'ss_a', '药品生产管理规范', '8.167.6 贮存条件和注意事项', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d6ef94901bfc483ba80bfede48b79753', '0.003.010.227.001', 'ss_a', '药品生产管理规范', '10.227.1 标准品或对照品应当按照规定贮存和使用', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d70605b58e88439fb3a00bcdbaeda7bf', '0.003.011.281', 'ss_a', '药品生产管理规范', '11.281 委托方应当向受托方提供所有必要的资料，以使受托方能够按照药品注册和其他法定要求正确实施所委托的操作', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d747f6fa34a14f39b3661726874c353c', '0.003.008.180.006', 'ss_a', '药品生产管理规范', '8.180.6 根据工艺规程所进行的检查记录，包括中间控制结果', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d75e44422f7641e484fac4d8c0dd5df9', '0.003.010.236', 'ss_a', '药品生产管理规范', '10.236 某些情况下，持续稳定性考察中应当额外增加批次数，如重大变更或生产和包装有重大偏差的药品应当列入稳定性考察；此外，重新加工、返工或回收的批次，也应当考虑列入考察，除非已经过验证和稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d7d7fcf5233d46a9abab7132f2fddd18', '0.003.003.025.001.001', 'ss_a', '药品生产管理规范', '3.25.1.1 质量受权人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，从事过药品生产过程控制和质量检验工作', null, '42fa75f81a264971ac4b41af192e5042', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d7dc38f552a04b7ca25ac0867865569a', '0.003.002.010.001', 'ss_a', '药品生产管理规范', '2.10.1 制定生产工艺，系统地回顾并证明其可持续稳定地生产出符合要求的产品', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d817d7917e6a41978f1376d78037f430', '0.003.001.003.001', 'ss_a', '药品生产管理规范', '1.3.1 旨在最大限度地降低药品生产过程中污染、交叉污染以及混淆、差错等风险，确保持续稳定地生产出符合预定用途和注册要求的药品', null, 'db26174ea02742949914658de8ca637e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d81a4774efe448118f93b9baaf34a36f', '0.003.007.140.005', 'ss_a', '药品生产管理规范', '7.140.5 工艺验证应当证明一个生产工艺按照规定的工艺参数能够持续生产出符合预定用途和注册要求的产品', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d8407a4a393b44d3a059bdc7bed184ef', '0.003.006.132', 'ss_a', '药品生产管理规范', '6.132 不合格的物料、中间产品、待包装产品和成品的处理应当经质量管理负责人批准，并有记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d871fb2905d6466db70d6adb75b5eb81', '0.003.010.253.004', 'ss_a', '药品生产管理规范', '10.253.4 评估纠正和预防措施的合理性、有效性和充分性', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d8efd2e25f294a41a32500a63335888d', '0.003.007.144', 'ss_a', '药品生产管理规范', '7.144 确认和验证不是一次性的行为；首次确认或验证后，应当根据产品质量回顾分析情况进行再确认或再验证；关键的生产工艺和操作规程应当定期进行再验证，确保其能够达到预期结果', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d921e5a64a18486e90c0006dd841282a', '0.003.007.141', 'ss_a', '药品生产管理规范', '7.141 采用新的生产处方或生产工艺前，应当验证其常规生产的适用性；生产工艺在使用规定的原辅料和设备条件下，应当能够始终生产出符合预定用途和注册要求的产品', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d9723c6e68a2406d934d8c4493a93b25', '0.003.002.010.003.004', 'ss_a', '药品生产管理规范', '2.10.3.4 正确的原辅料、包装材料和标签', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('d983eb02be0f42b1aa0e0fa3150f4395', '0.003.004.045', 'ss_a', '药品生产管理规范', '4.45 应当保存厂房、公用设施、固定管道建造或改造后的竣工图纸', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dae63d2e4a9e41408030378764b98558', '0.003.009.213.003', 'ss_a', '药品生产管理规范', '9.213.3 产品和包装材料是否正确', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dae6bf77adbb42d0aaf88dd4c59048f4', '0.003.003.025.002', 'ss_a', '药品生产管理规范', '3.25.2 主要职责：', null, '0f156e5386a2404cb559734cb4c723d4', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('db0ce0e74b164e13889db18acfa0baa2', '0.003.010.229.003', 'ss_a', '药品生产管理规范', '10.229.3 物料应当由指定人员签名批准放行', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('db26174ea02742949914658de8ca637e', '0.003.001.003', 'ss_a', '药品生产管理规范', '1.3 本规范作为质量管理体系的一部分，是药品生产管理和质量控制的基本要求', null, '2324d2d6fb9949c7abb19c4c45587207', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('db8e0f82c25e4c28bef63e070066c91b', '0.003.002.013', 'ss_a', '药品生产管理规范', '2.13 质量风险管理是在整个产品生命周期中采用前瞻或回顾的方式，对质量风险进行评估、控制、沟通、审核的系统过程', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('db912341ff7c46fb90cba85d6bc0825a', '0.003.005', 'ss_a', '药品生产管理规范', '5 设备', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dc144feb673845009c88a9750d6c3860', '0.003.003.018.001', 'ss_a', '药品生产管理规范', '3.18.1 岗位职责不得遗漏，交叉的职责应当有明确规定；每个人所承担的职责不应当过多', null, '513f0ba88fbd4ff0baa9fcfcd24b9bab', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dc941c2d802042d1844887d9dfb2a7a3', '0.003.008.170.003.004', 'ss_a', '药品生产管理规范', '8.170.3.4 需要说明的注意事项，包括对生产区和设备进行的检查，在包装操作开始前，确认包装生产线的清场已经完成等', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dcadb62d45494076b83692f4d6aaa1b8', '0.003.009.213.006', 'ss_a', '药品生产管理规范', '9.213.6 样品从包装生产线取走后不应当再返还，以防止产品混淆或污染', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dd2af270cc794d81ad23d0652ef6d0df', '0.003.010.256.001', 'ss_a', '药品生产管理规范', '10.256.1 如质量评估需采用现场质量审计方式的，还应当明确审计内容、周期、审计人员的组成及资质；需采用样品小批量试生产的，还应当明确生产批量、生产工艺、产品质量标准、稳定性考察方案', null, 'c22a04edd68f416daeb6ef4097bea83e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dd80776763d54ff6ad130f8cb55fd5da', '0.003.005.098.001', 'ss_a', '药品生产管理规范', '5.98.1 储罐的通气口应当安装不脱落纤维的疏水性除菌滤器', null, 'a751fb25ea6143a789d4025bfc5cb466', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dd83bd9c5734470db267403e82a4e22c', '0.003.010.223.002.001', 'ss_a', '药品生产管理规范', '10.223.2.1 采用新的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('de35744dc9914d018de7e9585b31b782', '0.003.006.109.001', 'ss_a', '药品生产管理规范', '6.109.1 使用完全计算机化仓储管理系统进行识别的，物料、产品等相关信息可不必以书面可读的方式标出', null, 'eb4426cb6be14363b3c4bd7a5cf669f8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('de7efa18cddc493cb97e69b424562b20', '0.003.008.170.002.005', 'ss_a', '药品生产管理规范', '8.170.2.5 预期的最终产量限度，必要时，还应当说明中间产品的产量限度，以及物料平衡的计算方法和限度', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('dee27c258ed34630b60ed833a4b7fa3c', '0.003.004.050', 'ss_a', '药品生产管理规范', '4.50 各种管道、照明设施、风口和其他公用设施的设计和安装应当避免出现不易清洁的部位，应当尽可能在生产区外部对其进行维护', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem` VALUES ('df30fd1f6dfb4b738def1e023e937fed', '0.003.008.170.001.003', 'ss_a', '药品生产管理规范', '8.170.1.3 所用原辅料清单（包括生产过程中使用，但不在成品中出现的物料），阐明每一物料的指定名称、代码和用量；如原辅料的用量需要折算时，还应当说明计算方法', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e004fb338c414da586289213d5987635', '0.003.009.197.010', 'ss_a', '药品生产管理规范', '9.197.10 液体制剂的配制、过滤、灌封、灭菌等工序应当在规定时间内完成', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e09fb912c36a415da9785f75a4489a6d', '0.003.007.138', 'ss_a', '药品生产管理规范', '7.138 企业应当确定需要进行的确认或验证工作，以证明有关操作的关键要素能够得到有效控制；确认或验证的范围和程度应当经过风险评估来确定', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e0d1682b220341f9980b3785c45f8604', '0.001.002', 'PARAM_TYPE', '参数分类科目', '2 会健健康康理解', null, 'cd14928a239b448b867c2e45246cd038', '1', '0', null, '0');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e0f5a2bcd28a4459996e133d1db0faf6', '0.003.009.197.006', 'ss_a', '药品生产管理规范', '9.197.6 采用经过验证或已知有效的清洁和去污染操作规程进行设备清洁；必要时，应当对与物料直接接触的设备表面的残留物进行检测', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e18de5c9d0284f18a05603bb1cc86cd8', '0.003.003.024.001', 'ss_a', '药品生产管理规范', '3.24.1 审核和批准产品的工艺规程、操作规程等文件', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e1947e4d73c6450bbebe724595a2276d', '0.003.007.147', 'ss_a', '药品生产管理规范', '7.147 应当根据确认或验证的对象制定确认或验证方案，并经审核、批准；确认或验证方案应当明确职责', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e21b5d035844478f9cef05e8687c9b85', '0.003.008.180.004', 'ss_a', '药品生产管理规范', '8.180.4 包装工序的操作人员签名', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e249c25610154493a294f7e52cc0a0d4', '0.003.003.021', 'ss_a', '药品生产管理规范', '3.21 企业负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e3a77addc673422fb2bd3cf87f2bd2f5', '0.003.008.165.001.002', 'ss_a', '药品生产管理规范', '8.165.1.2 质量标准的依据', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e3f8e335ea17447b8711362dd1d03539', '0.003.008.167.001', 'ss_a', '药品生产管理规范', '8.167.1 产品名称以及产品代码', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e41ae4e57743413f9a7e8300a9df6c9a', '0.003.011.288', 'ss_a', '药品生产管理规范', '11.288 合同应当详细规定质量受权人批准放行每批药品的程序，确保每批产品都已按照药品注册的要求完成生产和检验', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e4294ddff24f4d8dab8de3be61070820', '0.003.008.180.009', 'ss_a', '药品生产管理规范', '8.180.9 对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e45fe95dc98f4973b2ed29f2491e2a7c', '0.003.006.136.001', 'ss_a', '药品生产管理规范', '6.136.1 产品名称、批号、规格、数量、退货单位及地址、退货原因及日期、最终处理意见；同一产品同一批号不同渠道的退货应当分别记录、存放和处理', null, 'f4e7a70329f94388938f742457fb45d5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e4c018fea67f43f9aab0758f7592b5ab', '0.003.010.227.003', 'ss_a', '药品生产管理规范', '10.227.3 企业如需自制工作标准品或对照品，应当建立工作标准品或对照品的质量标准以及制备、鉴别、检验、批准和贮存的操作规程，每批工作标准品或对照品应当用法定标准品或对照品进行标化，并确定有效期，还应当通过定期标化证明工作标准品或对照品的效价或含量在有效期内保持稳定；标化的过程和结果应当有相应的记录', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e50a033faf4240feacde1995c24c2524', '0.003.010.222.002.009', 'ss_a', '药品生产管理规范', '10.222.2.9 贮存条件', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e5ea16ae33514c43a5417440f1970a0a', '0.003.010', 'ss_a', '药品生产管理规范', '10 质量控制与质量保证', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e650cbb30e924d5199accc7ae2fb7dcf', '0.003.010.253.003', 'ss_a', '药品生产管理规范', '10.253.3 确定所需采取的纠正和预防措施，防止问题的再次发生', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e6a5493c90f84e20b49b6b2481581b2d', '0.003.006.107', 'ss_a', '药品生产管理规范', '6.107 物料接收和成品生产后应当及时按照待验管理，直至放行', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e6b95c4c50c7418cbbb0fe663b0c2087', '0.003.003.027', 'ss_a', '药品生产管理规范', '3.27 与药品生产、质量有关的所有人员都应当经过培训，培训的内容应当与岗位的要求相适应', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e6cbfb8000e3486a8dcff2f630ab8c02', '0.003.008.165.001', 'ss_a', '药品生产管理规范', '8.165.1 物料的基本信息：', null, 'cd5644684ce646c1bab34c93b578d6ab', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e6ee3df87f284b1a96bcacadd72fbb8f', '0.003.008.175.001', 'ss_a', '药品生产管理规范', '8.175.1 产品名称、规格、批号', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e79b4728b8654499b736d413e4e8f2cf', '0.003.012.300', 'ss_a', '药品生产管理规范', '12.300 召回应当能够随时启动，并迅速实施', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e80f02637689470da9165fc8d4b932d3', '0.003.006.128', 'ss_a', '药品生产管理规范', '6.128 成品放行前应当待验贮存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e87d84390e7d4c2abe47bf20c3821098', '0.003.008.176', 'ss_a', '药品生产管理规范', '8.176 每批产品或每批中部分产品的包装，都应当有批包装记录，以便追溯该批产品包装操作以及与质量有关的情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e898bdbbc2324cd49340cef20a89c8f8', '0.003.010.221', 'ss_a', '药品生产管理规范', '10.221 质量控制实验室的文件应当符合第八章的原则，并符合下列要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e8b5ace53dea45a297ff641cc3015fe7', '0.003.008.175.008', 'ss_a', '药品生产管理规范', '8.175.8 不同生产工序所得产量及必要时的物料平衡计算', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e8c93e1814e64b54ad733c434bddfe5a', '0.003.002.012.002', 'ss_a', '药品生产管理规范', '2.12.2 应当有批准的操作规程，用于原辅料、包装材料、中间产品、待包装产品和成品的取样、检查、检验以及产品的稳定性考察，必要时进行环境监测，以确保符合本规范的要求', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('e957a5c5419b423eba225f255f559c1f', '0.003.005.098.002', 'ss_a', '药品生产管理规范', '5.98.2 管道的设计和安装应当避免死角、盲管', null, 'a751fb25ea6143a789d4025bfc5cb466', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ea4be59f7dd64dca8709109ce0857652', '0.003.002.009.010', 'ss_a', '药品生产管理规范', '2.9.10 按照自检操作规程，定期检查评估质量保证系统的有效性和适用性', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem` VALUES ('eaa6b57cc3bf498289e0be20c63d2ac4', '0.003.008.167.007', 'ss_a', '药品生产管理规范', '8.167.7 有效期', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('eb1e0ffd3f5946fca35b23a2f7798c47', '0.003', 'ss_a', '药品生产质量管理规范', ' 药品生产质量管理规范', '', '0', '0', '1', 'book.png', '0');
INSERT INTO `ss_checkjob_checkitem` VALUES ('eb4426cb6be14363b3c4bd7a5cf669f8', '0.003.006.109', 'ss_a', '药品生产管理规范', '6.109 使用计算机化仓储管理的，应当有相应的操作规程，防止因系统故障、停机等特殊情况而造成物料和产品的混淆和差错', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('eb783d48bea34bb9aad4269a2696e762', '0.003.003.036', 'ss_a', '药品生产管理规范', '3.36 生产区、仓储区应当禁止吸烟和饮食，禁止存放食品、饮料、香烟和个人用药品等非生产用物品', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ec9c0b134b8e4076af0067ac402e40de', '0.003.010.237', 'ss_a', '药品生产管理规范', '10.237 关键人员，尤其是质量受权人，应当了解持续稳定性考察的结果；当持续稳定性考察不在待包装产品和成品的生产企业进行时，则相关各方之间应当有书面协议，且均应当保存持续稳定性考察的结果以供药品监督管理部门审查', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ec9e2018abff415c98f88128b2f2cca0', '0.003.010.225.001.002', 'ss_a', '药品生产管理规范', '10.225.1.2 留样应当能够代表被取样批次的物料或产品', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ecb749656a80416a82b35c02c1be1e6a', '0.003.008.170.001', 'ss_a', '药品生产管理规范', '8.170.1 生产处方：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ecd49d3b15e449348f97e4affef365cf', '0.003.008.183.003', 'ss_a', '药品生产管理规范', '8.183.3 厂房和设备的维护、清洁和消毒', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ecec458fad9245d8a504c69921e53a02', '0.003.010.226.006', 'ss_a', '药品生产管理规范', '10.226.6 应当有检验所需的各种检定菌，并建立检定菌保存、传代、使用、销毁的操作规程和相应记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('edab2eb34a504fdc9b9095371767d913', '0.003.010.234.007', 'ss_a', '药品生产管理规范', '10.234.7 贮存条件（应当采用与药品标示贮存条件相对应的《中华人民共和国药典》规定的长期稳定性试验标准条件）', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ee58053de69c4f7a83d742ae674dbfe7', '0.003.004.046.003', 'ss_a', '药品生产管理规范', '4.46.3 生产β-内酰胺结构类药品、性激素类避孕药品必须使用专用设施（如独立的空气净化系统）和设备，并与其他药品生产区严格分开', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ee7719a501fe494db7834379a55e1d5d', '0.003.004.044', 'ss_a', '药品生产管理规范', '4.44 应当采取适当措施，防止未经批准人员的进入；生产、贮存和质量控制区不应当作为非本区工作人员的直接通道', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('eef8fe8c67824d23bb21c1ea9ab82449', '0.003.006.129', 'ss_a', '药品生产管理规范', '6.129 成品的贮存条件应当符合药品注册批准的要求', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f00146bee0094f098dd1ca8b190b3d7b', '0.003.010.250.002', 'ss_a', '药品生产管理规范', '10.250.2 企业还应当采取预防措施有效防止类似偏差的再次发生', null, '200aa421f6dd4781a2bc05f3649620cc', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f06d6387e7484d34a0a680b6eac72f96', '0.003.009.185', 'ss_a', '药品生产管理规范', '9.185 应当建立划分产品生产批次的操作规程，生产批次的划分应当能够确保同一批次产品质量和特性的均一性', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f1802dd92ad142c8b1b9193f3279626a', '0.003.010.226.005', 'ss_a', '药品生产管理规范', '10.226.5 配制的培养基应当进行适用性检查，并有相关记录；应当有培养基使用记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f1cfcb9f7d884f9cb9d36214465a0b8a', '0.003.009.190', 'ss_a', '药品生产管理规范', '9.190 在干燥物料或产品，尤其是高活性、高毒性或高致敏性物料或产品的生产过程中，应当采取特殊措施，防止粉尘的产生和扩散', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f218d7d693944519bc4004c5a2213091', '0.003.006.103', 'ss_a', '药品生产管理规范', '6.103 应当建立物料和产品的操作规程，确保物料和产品的正确接收、贮存、发放、使用和发运，防止污染、交叉污染、混淆和差错', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f255f88cc7f54fe5a5397e8bed014124', '0.003.010.240', 'ss_a', '药品生产管理规范', '10.240 企业应当建立变更控制系统，对所有影响产品质量的变更进行评估和管理；需要经药品监督管理部门批准的变更应当在得到批准后方可实施', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f2ee3280a3eb4335a1d8c5c2146a3220', '0.003.010.222.002.005', 'ss_a', '药品生产管理规范', '10.222.2.5 分样的方法', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f3750a99af9f4650ba5dc31df4fddd27', '0.003.006.126', 'ss_a', '药品生产管理规范', '6.126 每批或每次发放的与药品直接接触的包装材料或印刷包装材料，均应当有识别标志，标明所用产品的名称和批号', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f469f6a4fdda406284577dec7fb18421', '0.003.003.023.002.004', 'ss_a', '药品生产管理规范', '3.23.2.4 批准质量标准、取样方法、检验方法和其他质量管理的操作规程', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f47ca4b173e34e23adebe5ab50507178', '0.003.007.145', 'ss_a', '药品生产管理规范', '7.145 企业应当制定验证总计划，以文件形式说明确认与验证工作的关键信息', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f488b8e8151c4a2e90eb41b6e1ddab9c', '0.003.008.175.002', 'ss_a', '药品生产管理规范', '8.175.2 生产以及中间工序开始、结束的日期和时间', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f4e7a70329f94388938f742457fb45d5', '0.003.006.136', 'ss_a', '药品生产管理规范', '6.136 企业应当建立药品退货的操作规程，并有相应的记录，内容至少应当包括：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '350');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f56d0d92eaab45329453f9bccbb36fe3', '0.003.010.225.001.004.001', 'ss_a', '药品生产管理规范', '10.225.1.4.1 制剂生产用每批原辅料和与药品直接接触的包装材料均应当有留样；与药品直接接触的包装材料（如输液瓶），如成品已有留样，可不必单独留样', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f5dcbe0314bb4cbcade92eeb454de494', '0.003.006.106.002.006', 'ss_a', '药品生产管理规范', '6.106.2.6 接收总量和包装容器数量', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f640466a21cb452d831f57624b826b31', '0.003.010.234.002', 'ss_a', '药品生产管理规范', '10.234.2 相关的物理、化学、微生物和生物学检验方法，可考虑采用稳定性考察专属的检验方法', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f677ed564ba340f8ac32ebe32bb75573', '0.003.005.097.001', 'ss_a', '药品生产管理规范', '5.97.1 水处理设备的运行不得超出其设计能力', null, '4b3ec78fb64b40119efa1c74c456fb76', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f6b81bdc2ebb4b4a9812a18ad0a09587', '0.003.009.197.007', 'ss_a', '药品生产管理规范', '9.197.7 采用密闭系统生产', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f74b2a58630d447188c0a205145a54aa', '0.003.002.008.001', 'ss_a', '药品生产管理规范', '2.8.1 企业必须建立质量保证系统，同时建立完整的文件体系，以保证系统有效运行', null, '7747e2bf7aa645a6ac8d3f43d37e259b', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f78353bbf1d848efacca84aa5a427b15', '0.003.003.023.002.008', 'ss_a', '药品生产管理规范', '3.23.2.8 监督厂房和设备的维护，以保持其良好的运行状态', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f7c136f9e57341eb9c3c9418144664e7', '0.003.004.039', 'ss_a', '药品生产管理规范', '4.39 应当根据厂房及生产防护措施综合考虑选址，厂房所处的环境应当能够最大限度地降低物料或产品遭受污染的风险', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f801331c3ea643478b12813b43f68e55', '0.003.005.086', 'ss_a', '药品生产管理规范', '5.86 用于药品生产或检验的设备和仪器，应当有使用日志，记录内容包括使用、清洁、维护和维修情况以及日期、时间、所生产及检验的药品名称、规格和批号等', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f8c2ac31fddd41ce93ba4c9a71eb791f', '0.003.010.268', 'ss_a', '药品生产管理规范', '10.268 药品委托生产时，委托方和受托方之间应当有书面的技术协议，规定产品质量回顾分析中各方的责任，确保产品质量回顾分析按时进行并符合要求', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '520');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f8ff0293102a4fa8a3cface3ceb33dbd', '0.003.010.230', 'ss_a', '药品生产管理规范', '10.230 产品的放行应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem` VALUES ('f9914cf61c0343efb2d327f7f95042c2', '0.003.006.110', 'ss_a', '药品生产管理规范', '6.110 应当制定相应的操作规程，采取核对或检验等适当措施，确认每一包装内的原辅料正确无误', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fa4712fd6d51444bae7449f3618f32f4', '0.003.013.306', 'ss_a', '药品生产管理规范', '13.306 质量管理部门应当定期组织对企业进行自检，监控本规范的实施情况，评估企业是否符合本规范要求，并提出必要的纠正和预防措施', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fa54a3e021bc4128bc0caf9274144a2a', '0.003.010.259', 'ss_a', '药品生产管理规范', '10.259 必要时，应当对主要物料供应商提供的样品进行小批量试生产，并对试生产的药品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '430');
INSERT INTO `ss_checkjob_checkitem` VALUES ('faa1cb779b4d4edfa155bd75b48a63c9', '0.003.005.094', 'ss_a', '药品生产管理规范', '5.94 不得使用未经校准、超过校准有效期、失准的衡器、量具、仪表以及用于记录和控制的设备、仪器', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fae8efe5861c405abdd12e01f9eac27d', '0.003.010.229.001', 'ss_a', '药品生产管理规范', '10.229.1 物料的质量评价内容应当至少包括生产商的检验报告、物料包装完整性和密封性的检查情况和检验结果', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fb0e9d7a67e94cfb9c65cb10d753e005', '0.003.010.223.002.002', 'ss_a', '药品生产管理规范', '10.223.2.2 检验方法需变更的', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fb1bb00ed17f49aab5bca7a92c5f0ec7', '0.003.011.289.001', 'ss_a', '药品生产管理规范', '11.289.1 在委托检验的情况下，合同应当规定受托方是否在委托方的厂房内取样', null, 'ae210b502a4f47a9a9faab5a82c7682c', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fb753c2e0ae54cfc8e8795edc959bd75', '0.003.003.022.003.004', 'ss_a', '药品生产管理规范', '3.22.3.4 确保厂房和设备的维护保养，以保持其良好的运行状态', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fbf84fb446a442c5854f2c900a7be5e0', '0.003.009.186.001', 'ss_a', '药品生产管理规范', '9.186.1 每批药品均应当编制唯一的批号', null, 'ffbdf6f1aef0405080547b2be2c6c170', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fc0a7119b5174e14a6eef9884ffaaeda', '0.003.010.239', 'ss_a', '药品生产管理规范', '10.239 应当根据所获得的全部数据资料，包括考察的阶段性结论，撰写总结报告并保存；应当定期审核总结报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fcf9376948104da1b8d7cb43f71f4f78', '0.003.006.108', 'ss_a', '药品生产管理规范', '6.108 物料和产品应当根据其性质有序分批贮存和周转，发放及发运应当符合先进先出和近效期先出的原则', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fd9773377b2649a9bde3bc354ccf69f4', '0.003.008.163.001', 'ss_a', '药品生产管理规范', '8.163.1 使用电子数据处理系统的，只有经授权的人员方可输入或更改数据，更改和删除情况应当有记录；应当使用密码或其他方式来控制系统的登录；关键数据输入后，应当由他人独立进行复核', null, '343389a3dc8749b69f46d05f742450f5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fe19292755524456aebd88637c973860', '0.003.004.054', 'ss_a', '药品生产管理规范', '4.54 用于药品包装的厂房或区域应当合理设计和布局，以避免混淆或交叉污染；如同一区域内有数条包装线，应当有隔离措施', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fe2fbf44f2d94750b49e286aabd3ad07', '0.003.010.225.001.004.003', 'ss_a', '药品生产管理规范', '10.225.1.4.3 除稳定性较差的原辅料外，用于制剂生产的原辅料（不包括生产过程中使用的溶剂、气体或制药用水）和与药品直接接触的包装材料的留样应当至少保存至产品放行后二年；如果物料的有效期较短，则留样时间可相应缩短', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem` VALUES ('fe915b0898524988939a144667d7f71e', '0.003.010.266.002.005', 'ss_a', '药品生产管理规范', '10.266.2.5 生产工艺或检验方法等的所有变更', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ff6eb52a08744320bc7255ec6ec142f5', '0.003.007', 'ss_a', '药品生产管理规范', '7 确认与验证', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ffadf8ce87db410a8c38673f41123bac', '0.003.009.212', 'ss_a', '药品生产管理规范', '9.212 包装材料上印刷或模压的内容应当清晰，不易褪色和擦除', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem` VALUES ('ffbdf6f1aef0405080547b2be2c6c170', '0.003.009.186', 'ss_a', '药品生产管理规范', '9.186 应当建立编制药品批号和确定生产日期的操作规程', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '30');

-- ----------------------------
-- Table structure for `ss_checkjob_checkitem_copy`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_checkitem_copy`;
CREATE TABLE `ss_checkjob_checkitem_copy` (
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
-- Records of ss_checkjob_checkitem_copy
-- ----------------------------
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('000ec3d1c48d45ca8d321be55f44e495', '0.003.010.255.001', 'ss_a', '药品生产管理规范', '主要物料的确定应当综合考虑企业所生产的药品质量风险、物料用量以及物料对药品质量的影响程度等因素', null, 'ceaa67ae87284c4db2d7845fa0ebe542', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0017ff2d13cb44168edaf1f2fe693555', '0.003.012.295', 'ss_a', '药品生产管理规范', '每批产品均应当有发运记录；根据发运记录，应当能够追查每批产品的销售情况，必要时应当能够及时全部追回，发运记录内容应当包括：产品名称、规格、批号、数量、收货单位和地址、联系方式、发货日期、运输方式等', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('00a0aeba317840509f2f15d94fd6a1b3', '0.003.003.021.002', 'ss_a', '药品生产管理规范', '为确保企业实现质量目标并按照本规范要求生产药品，企业负责人应当负责提供必要的资源，合理计划、组织和协调，保证质量管理部门独立履行其职责', null, 'e249c25610154493a294f7e52cc0a0d4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('01cafe8e25f740538f0e9b57bd64bba5', '0.003.003.030', 'ss_a', '药品生产管理规范', '人员卫生操作规程应当包括与健康、卫生习惯及人员着装相关的内容', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('020bd3e0b3154c69a94ec14f0f20e61a', '0.003.004.066', 'ss_a', '药品生产管理规范', '处理生物样品或放射性样品等特殊物品的实验室应当符合国家的有关要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('02ee8dd8e86348b4b840d70c08c1960c', '0.003.002.011', 'ss_a', '药品生产管理规范', '质量控制包括相应的组织机构、文件系统以及取样、检验等，确保物料或产品在放行前完成必要的检验，确认其质量符合要求;', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('02eec96dfbf0440fa16a2caaf168c812', '0.003.006.131', 'ss_a', '药品生产管理规范', '不合格的物料、中间产品、待包装产品和成品的每个包装容器上均应当有清晰醒目的标志，并在隔离区内妥善保存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('03a5a95d55764fe696ad10eaa375d0f6', '0.003.006.102.001', 'ss_a', '药品生产管理规范', '药品上直接印字所用油墨应当符合食用标准要求', null, '69eef02c1a474f44b73c6393c65833c2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('03d8a31ffcb94e4c849fcdbef516d417', '0.003.004.055', 'ss_a', '药品生产管理规范', '生产区应当有适度的照明，目视操作区域的照明应当满足操作要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0426d11562f44ce69aa1bf544923d4d6', '0.003.009.207', 'ss_a', '药品生产管理规范', '待用分装容器在分装前应当保持清洁，避免容器中有玻璃碎屑、金属颗粒等污染物', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0431a290fbf14ea2b6a6017d55dbdbfe', '0.003.004.057', 'ss_a', '药品生产管理规范', '仓储区应当有足够的空间，确保有序存放待验、合格、不合格、退货或召回的原辅料、包装材料、中间产品、待包装产品和成品等各类物料和产品', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('04d461e5ff1649a1aa831dc94c861d28', '0.003.001.002.001', 'ss_a', '药品生产管理规范', '该体系应当涵盖影响药品质量的所有因素，包括确保药品质量符合预定用途的有组织、有计划的全部活动', null, '8d459793fbda4ca0b094278e8d0910ca', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0516d9cff90846df8c939d3fb8bf572f', '0.003.008.177', 'ss_a', '药品生产管理规范', '批包装记录应当依据工艺规程中与包装相关的内容制定；记录的设计应当注意避免填写差错；批包装记录的每一页均应当标注所包装产品的名称、规格、包装形式和批号', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('05294b6b587b4d7fbd7c3dfbf0012523', '0.003.005.092.001', 'ss_a', '药品生产管理规范', '校准记录应当标明所用计量标准器具的名称、编号、校准有效期和计量合格证明编号，确保记录的可追溯性', null, '0901af27890d4112a55c0c4c18c2329e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0538644823af4ccaba7bdbbeff1e8054', '0.003.006.116', 'ss_a', '药品生产管理规范', '配制的每一物料及其重量或体积应当由他人独立进行复核，并有复核记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0591167e15e84f87b6b140ba1aea3ad3', '0.003.010.267', 'ss_a', '药品生产管理规范', '应当对回顾分析的结果进行评估，提出是否需要采取纠正和预防措施或进行再确认或再验证的评估意见及理由，并及时、有效地完成整改', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '510');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('061fed69d2314950b22ad2ff053e5aed', '0.003.010.223.006', 'ss_a', '药品生产管理规范', '检验记录应当至少包括以下内容：', null, '57de58f1774d4f90852961a935310aef', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('06254582303d4460a97b92d2b2113146', '0.003.002.009.002', 'ss_a', '药品生产管理规范', '生产管理和质量控制活动符合本规范的要求', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0663db5cff8e423781cf2d30d310bc7f', '0.003.008.183.007', 'ss_a', '药品生产管理规范', '变更控制', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0671fc0f30914564a17678976b9c6473', '0.003.004.052', 'ss_a', '药品生产管理规范', '制剂的原辅料称量通常应当在专门设计的称量室内进行', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('067235520e4e4a999f31ed36ec5d3b0c', '0.003.010.270', 'ss_a', '药品生产管理规范', '应当主动收集药品不良反应，对不良反应应当详细记录、评价、调查和处理，及时采取措施控制可能存在的风险，并按照要求向药品监督管理部门报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '540');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0677953827d24baaa15fa6479fd58e09', '0.003.010.266.001', 'ss_a', '药品生产管理规范', '当有合理的科学依据时，可按照产品的剂型分类进行质量回顾，如固体制剂、液体制剂和无菌制剂等', null, '10b7d5734a4a416084374d68e2b53279', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('070b59d343f4459b846d2ff649514f8b', '0.003.010.223.006.004', 'ss_a', '药品生产管理规范', '检验所用的试液和培养基的配制批号、对照品或标准品的来源和批号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('07a33a25344140beae53805663e04ef4', '0.003.006.119.005', 'ss_a', '药品生产管理规范', '产品质量状态（必要时，如待验、合格、不合格、已取样）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('07e0f065f3c9426499633d4c642a2de2', '0.003.010.226', 'ss_a', '药品生产管理规范', '试剂、试液、培养基和检定菌的管理应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('08121f0d805841b0a83de4a043947e44', '0.003.006.114', 'ss_a', '药品生产管理规范', '原辅料应当按照有效期或复验期贮存；贮存期内，如发现对质量有不良影响的特殊情况，应当进行复验', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('083992395c2647a9b0dfa3a57613ad79', '0.003.010.234.005', 'ss_a', '药品生产管理规范', '容器密封系统的描述', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('085a07757a0b463a9ebed34b5c601e08', '0.003.008.156', 'ss_a', '药品生产管理规范', '文件应当分类存放、条理分明，便于查阅', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0861a290f47c423b8bec6905ab9d30c8', '0.003.010.225.001.004.002', 'ss_a', '药品生产管理规范', '物料的留样量应当至少满足鉴别的需要', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0888bccfda33406f81e014a1b2d1872a', '0.003.010.265', 'ss_a', '药品生产管理规范', '企业应当对每家物料供应商建立质量档案，档案内容应当包括供应商的资质证明文件、质量协议、质量标准、样品检验数据和报告、供应商的检验报告、现场质量审计报告、产品稳定性考察报告、定期的质量回顾分析报告等', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '490');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('08f43a3729da415bb1b56dcd7a2e68ab', '0.003.001.004', 'ss_a', '药品生产管理规范', '企业应当严格执行本规范，坚持诚实守信，禁止任何虚假、欺骗行为', null, '2324d2d6fb9949c7abb19c4c45587207', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0901af27890d4112a55c0c4c18c2329e', '0.003.005.092', 'ss_a', '药品生产管理规范', '应当使用计量标准器具进行校准，且所用计量标准器具应当符合国家有关规定', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('097063939f1c422c9a1e9c7ac1347c27', '0.003.010.227', 'ss_a', '药品生产管理规范', '标准品或对照品的管理应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('098574fbf8ad4a60810ea832d970065b', '0.003.009.208', 'ss_a', '药品生产管理规范', '产品分装、封口后应当及时贴签；未能及时贴签时，应当按照相关的操作规程操作，避免发生混淆或贴错标签等差错', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('098d322868fe43e081be36346c99d8a7', '0.003.005.090.001', 'ss_a', '药品生产管理规范', '校准的量程范围应当涵盖实际生产和检验的使用范围', null, '108b25f28d2a41b7bfdd0f1f45b59413', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0a37f5cf89204c3ab7e6dbb9e94936de', '0.003.009.187', 'ss_a', '药品生产管理规范', '每批产品应当检查产量和物料平衡，确保物料平衡符合设定的限度；如有差异，必须查明原因，确认无潜在质量风险后，方可按照正常产品处理', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0a4b4fa5c6dc4a7a89a651191197925e', '0.003.010.242', 'ss_a', '药品生产管理规范', '变更都应当评估其对产品质量的潜在影响；企业可以根据变更的性质、范围、对产品质量潜在影响的程度将变更分类（如主要、次要变更）；判断变更所需的验证、额外的检验以及稳定性考察应当有科学依据', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0b1b988046f946079303815df8423e05', '0.003.009.194', 'ss_a', '药品生产管理规范', '每次生产结束后应当进行清场，确保设备和工作场所没有遗留与本次生产有关的物料、产品和文件；下次生产开始前，应当对前次清场情况进行确认', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0b589d6d34ab41e3b59539a071c96eec', '0.003.002.012.003', 'ss_a', '药品生产管理规范', '由经授权的人员按照规定的方法对原辅料、包装材料、中间产品、待包装产品和成品取样', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0bb7ce792fbc4cff809c71af3c70a8e1', '0.003.003.016.001', 'ss_a', '药品生产管理规范', '企业应当设立独立的质量管理部门，履行质量保证和质量控制的职责;', null, '3421864fd8e845f8950e5e162341b3a5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0be0eb053bb649b3bf62bc360c1345f3', '0.003.004.064', 'ss_a', '药品生产管理规范', '实验室的设计应当确保其适用于预定的用途，并能够避免混淆和交叉污染，应当有足够的区域用于样品处置、留样和稳定性考察样品的存放以及记录的保存', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0d5ace0abcb9403581bbf217f983d82b', '0.003.010.253.007', 'ss_a', '药品生产管理规范', '确保相关信息及其纠正和预防措施已通过高层管理人员的评审', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0d9eb278f1d4430280c453c92f550f6d', '0.003.010.230.004', 'ss_a', '药品生产管理规范', '疫苗类制品、血液制品、用于血源筛查的体外诊断试剂以及国家食品药品监督管理局规定的其他生物制品放行前还应当取得批签发合格证明', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0da85c2cd1a04979ae19198326e6b806', '0.001.001', 'PARAM_TYPE', '参数分类科目', 'fsdafsa', null, 'cd14928a239b448b867c2e45246cd038', '1', '0', null, '0');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0dad3d00ff754bcba397de1831108029', '0.003.008.159', 'ss_a', '药品生产管理规范', '与本规范有关的每项活动均应当有记录，以保证产品生产、质量控制和质量保证等活动可以追溯；记录应当留有填写数据的足够空格；记录应当及时填写，内容真实，字迹清晰、易读，不易擦除', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0dcb5aeb23a747ea8ab367bda3f06989', '0.003.004.053', 'ss_a', '药品生产管理规范', '产尘操作间（如干燥物料或产品的取样、称量、混合、包装等操作间）应当保持相对负压或采取专门的措施，防止粉尘扩散、避免交叉污染并便于清洁', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0dda47b15fdb436abe4d7e84622f5879', '0.003.010.271', 'ss_a', '药品生产管理规范', '应当建立操作规程，规定投诉登记、评价、调查和处理的程序，并规定因可能的产品缺陷发生投诉时所采取的措施，包括考虑是否有必要从市场召回药品', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '550');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0ddff71c42164db3b755ab0198bbfdcc', '0.003.005.081', 'ss_a', '药品生产管理规范', '经改造或重大维修的设备应当进行再确认，符合要求后方可用于生产', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0f156e5386a2404cb559734cb4c723d4', '0.003.003.025', 'ss_a', '药品生产管理规范', '质量受权人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0f7658a54fd24e17a9dfc91dbb833722', '0.003.005.088', 'ss_a', '药品生产管理规范', '不合格的设备如有可能应当搬出生产和质量控制区，未搬出前，应当有醒目的状态标识', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0fa96b431b3c4d3096ea95c9945e369d', '0.003.009.213', 'ss_a', '药品生产管理规范', '包装期间，产品的中间控制检查应当至少包括下述内容：', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('0fcfc58cff9542d190d09d0ca43a03fb', '0.003.010.266.002.011', 'ss_a', '药品生产管理规范', '相关设备和设施，如空调净化系统、水系统、压缩空气等的确认状态', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('106a89d7353b439cb5eb000da7e6d881', '0.003.008.153', 'ss_a', '药品生产管理规范', '文件的起草、修订、审核、批准、替换或撤销、复制、保管和销毁等应当按照操作规程管理，并有相应的文件分发、撤销、复制、销毁记录', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('108b25f28d2a41b7bfdd0f1f45b59413', '0.003.005.090', 'ss_a', '药品生产管理规范', '应当按照操作规程和校准计划定期对生产和检验用衡器、量具、仪表、记录和控制设备以及仪器进行校准和检查，并保存相关记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1097397546504248994506aefdc75c43', '0.003.008.175.005', 'ss_a', '药品生产管理规范', '每一原辅料的批号以及实际称量的数量（包括投入的回收或返工处理产品的批号及数量）', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('10b7d5734a4a416084374d68e2b53279', '0.003.010.266', 'ss_a', '药品生产管理规范', '应当按照操作规程，每年对所有生产的药品按品种进行产品质量回顾分析，以确认工艺稳定可靠，以及原辅料、成品现行质量标准的适用性，及时发现不良趋势，确定产品及工艺改进的方向；应当考虑以往回顾分析的历史数据，还应当对产品质量回顾分析的有效性进行自检', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '500');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('10fcb1a6177343d4acbf291f347fce29', '0.003.010.226.007', 'ss_a', '药品生产管理规范', '检定菌应当有适当的标识，内容至少包括菌种名称、编号、代次、传代日期、传代操作人', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('11fb39ce43904480b5c741c23074d489', '0.003.003.025.002.002', 'ss_a', '药品生产管理规范', '承担产品放行的职责，确保每批已放行产品的生产、检验均符合相关法规、药品注册要求和质量标准', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('12ef81ff422441eab5924c18443e1807', '0.003.002.009.006', 'ss_a', '药品生产管理规范', '确认、验证的实施', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('139ab680b5e741229ab105768a774ac0', '0.003.005.077', 'ss_a', '药品生产管理规范', '设备所用的润滑剂、冷却剂等不得对药品或容器造成污染，应当尽可能使用食用级或级别相当的润滑剂', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('13c6fa8acea847aa8de37a674b2b2b3d', '0.003.003.023.002.010', 'ss_a', '药品生产管理规范', '确保完成自检', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1412d3f4a24a48a7b692cbc86340e1dc', '0.003.006.113', 'ss_a', '药品生产管理规范', '只有经质量管理部门批准放行并在有效期或复验期内的原辅料方可使用', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('141dde2f78d54ef9abb119cfbe5cfeac', '0.003.006.106.002.008', 'ss_a', '药品生产管理规范', '有关说明（如包装状况）', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('142aacdabb384b3e96d3f8bb748944fd', '0.003.008.178', 'ss_a', '药品生产管理规范', '批包装记录应当有待包装产品的批号、数量以及成品的批号和计划数量；原版空白的批包装记录的审核、批准、复制和发放的要求与原版空白的批生产记录相同', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('14a59f6a2f634affaa5adc8194b9432e', '0.003.003.023.002.006', 'ss_a', '药品生产管理规范', '确保所有重大偏差和检验结果超标已经过调查并得到及时处理', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('15b1e12e9064465bbe7160db10251351', '0.003.010.243', 'ss_a', '药品生产管理规范', '与产品质量有关的变更由申请部门提出后，应当经评估、制定实施计划并明确实施职责，最终由质量管理部门审核批准；变更实施应当有相应的完整记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('15e3c8bed84e420aae5dc3704d582e7c', '0.003.003.018.002', 'ss_a', '药品生产管理规范', '所有人员应当明确并理解自己的职责，熟悉与其职责相关的要求，并接受必要的培训，包括上岗前培训和继续培训', null, '513f0ba88fbd4ff0baa9fcfcd24b9bab', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('162c11c93b5545beb5f8255ba0c677e8', '0.003.010.232', 'ss_a', '药品生产管理规范', '持续稳定性考察主要针对市售包装药品，但也需兼顾待包装产品；例如，当待包装产品在完成包装前，或从生产厂运输到包装厂，还需要长期贮存时，应当在相应的环境条件下，评估其对包装后产品稳定性的影响；此外，还应当考虑对贮存时间较长的中间产品进行考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('16c8e1581a32447191b6c12ae78d7703', '0.003.009.197.003', 'ss_a', '药品生产管理规范', '设置必要的气锁间和排风；空气洁净度级别不同的区域应当有压差控制', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('16d934d24d4b450299d7d8c8fe62f559', '0.003.008.166', 'ss_a', '药品生产管理规范', '外购或外销的中间产品和待包装产品应当有质量标准；如果中间产品的检验结果用于成品的质量评价，则应当制定与成品质量标准相对应的中间产品质量标准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('170959a6056843f8ab8c128fea72afd6', '0.003.005.095.001', 'ss_a', '药品生产管理规范', '校准和检查应当有相应的记录', null, '9d9a9b61accf43169eee6c1366c04b34', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('17af630d2129411189b48cd6b733fb6e', '0.003.008.165.001.003', 'ss_a', '药品生产管理规范', '经批准的供应商', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1809e810e0994707bcf6ae104b160710', '0.003.002.010.009', 'ss_a', '药品生产管理规范', '建立药品召回系统，确保能够召回任何一批已发运销售的产品', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('18ab8dcf7740492ca667eb9fb0bdc864', '0.003.003', 'ss_a', '药品生产管理规范', '机构与人员', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('18eac196edb54f9da76541d0253e9e11', '0.003.002.015', 'ss_a', '药品生产管理规范', '质量风险管理过程所采用的方法、措施、形式及形成的文件应当与存在风险的级别相适应', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1909d8e7e3bc4422a2b824ba666b66ab', '0.003.009.202', 'ss_a', '药品生产管理规范', '包装操作规程应当规定降低污染和交叉污染、混淆或差错风险的措施', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1918cb9d3a24408da45b9fa2d9efec6c', '0.003.013.309', 'ss_a', '药品生产管理规范', '自检应当有记录；自检完成后应当有自检报告，内容至少包括自检过程中观察到的所有情况、评价的结论以及提出纠正和预防措施的建议；自检情况应当报告企业高层管理人员', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('198cf8524e434062ab5bb76f5d4f805e', '0.003.008.170.002.004', 'ss_a', '药品生产管理规范', '所有中间控制方法及标准', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('19e36afe02de439c8fdcf75e9f14a064', '0.003.002.012.006', 'ss_a', '药品生产管理规范', '物料、中间产品、待包装产品和成品必须按照质量标准进行检查和检验，并有记录', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1a66f7071b784ab9bd647652c3d93429', '0.003.002.010.008', 'ss_a', '药品生产管理规范', '降低药品发运过程中的质量风险', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1a82f7b4f96b4002b26eb706cfe1097e', '0.003.010.223.001', 'ss_a', '药品生产管理规范', '企业应当确保药品按照注册批准的方法进行全项检验', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1a99ce29abfd4f4c8589b6261eabae2f', '0.003.010.223.006.005', 'ss_a', '药品生产管理规范', '检验所用动物的相关信息', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1aef806987c64104b4db8300555dbc30', '0.003.009.197.001', 'ss_a', '药品生产管理规范', '在分隔的区域内生产不同品种的药品', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1b0cd1599760481ab800864cee84191a', '0.003.009.188', 'ss_a', '药品生产管理规范', '不得在同一生产操作间同时进行不同品种和规格药品的生产操作，除非没有发生混淆或交叉污染的可能', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1bd8c3dabd1a4f2aa5ef0c24e6e286d2', '0.003.004.046.002', 'ss_a', '药品生产管理规范', '生产特殊性质的药品，如高致敏性药品（如青霉素类）或生物制品（如卡介苗或其他用活性微生物制备而成的药品），必须采用专用和独立的厂房、生产设施和设备；青霉素类药品产尘量大的操作区域应当保持相对负压，排至室外的废气应当经过净化处理并符合要求，排风口应当远离其他空气净化系统的进风口', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1c7904b91249464aaf279624e3fc2a1a', '0.003.009.210', 'ss_a', '药品生产管理规范', '使用切割式标签或在包装线以外单独打印标签，应当采取专门措施，防止混淆', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1caf4534a0544bf986a7252e7f09695a', '0.003.002.010.003.002', 'ss_a', '药品生产管理规范', '足够的厂房和空间', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1cb4228a85e44a6e9e0ae3b9b94d09cc', '0.003.013.308', 'ss_a', '药品生产管理规范', '应当由企业指定人员进行独立、系统、全面的自检，也可由外部人员或专家进行独立的质量审计', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1d8251a2d2b04827b6bdab5bc201f4e6', '0.003.008.162.002', 'ss_a', '药品生产管理规范', '质量标准、工艺规程、操作规程、稳定性考察、确认、验证、变更等其他重要文件应当长期保存', null, 'c7a7a5dad6a84d1e8e8680867fa010e3', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1e62d063625f45fface416f617728890', '0.003.010.219', 'ss_a', '药品生产管理规范', '质量控制实验室的检验人员至少应当具有相关专业中专或高中以上学历，并经过与所从事的检验操作相关的实践培训且通过考核', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1e9b17346b0f436d9da9903df12c0449', '0.003.003.030.002', 'ss_a', '药品生产管理规范', '企业应当采取措施确保人员卫生操作规程的执行', null, '01cafe8e25f740538f0e9b57bd64bba5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1ef6c8cb8a77445a82fc085a1dbdfa30', '0.003.004.043', 'ss_a', '药品生产管理规范', '厂房、设施的设计和安装应当能够有效防止昆虫或其它动物进入；应当采取必要的措施，避免所使用的灭鼠药、杀虫剂、烟熏剂等对设备、物料、产品造成污染', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1f204699a48148e1a04e3d390baf4f4f', '0.003.009.186.002', 'ss_a', '药品生产管理规范', '除另有法定要求外，生产日期不得迟于产品成型或灌装（封）前经最后混合的操作开始日期，不得以产品包装日期作为生产日期', null, 'ffbdf6f1aef0405080547b2be2c6c170', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1f323abb6b2145cd86acf5ef0510a74d', '0.003.008.174', 'ss_a', '药品生产管理规范', '在生产过程中，进行每项操作时应当及时记录，操作结束后，应当由生产操作人员确认并签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1fa0f289694e4759af43b0f5d3a370d8', '0.003.011.287.001', 'ss_a', '药品生产管理规范', '委托生产及检验的各项工作必须符合药品生产许可和药品注册的有关要求并经双方同意', null, '68a13f5c418d4050b63e14ec5c5832e5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1fae2021c63d4bb8bda08e47df3cc175', '0.003.010.217', 'ss_a', '药品生产管理规范', '质量控制实验室的人员、设施、设备应当与产品性质和生产规模相适应；企业通常不得进行委托检验，确需委托检验的，应当按照第十一章中委托检验部分的规定，委托外部实验室进行检验，但应当在检验报告中予以说明', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('1fd51c62e7624d92a40d2a0c816be5df', '0.003.010.222.002.001', 'ss_a', '药品生产管理规范', '经授权的取样人', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('200aa421f6dd4781a2bc05f3649620cc', '0.003.010.250', 'ss_a', '药品生产管理规范', '任何偏离生产工艺、物料平衡限度、质量标准、检验方法、操作规程等的情况均应当有记录，并立即报告主管人员及质量管理部门，应当有清楚的说明，重大偏差应当由质量管理部门会同其他部门进行彻底调查，并有调查报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '340');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('21c400482d5f49088bba1d33c3a64134', '0.003.010.223.006.009', 'ss_a', '药品生产管理规范', '检验人员的签名和日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('21cc72d314b846d3a5db888285d06677', '0.003.008.167.002', 'ss_a', '药品生产管理规范', '对应的产品处方编号（如有）', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2204701c883443368b234c48f835e4e6', '0.003.004.070', 'ss_a', '药品生产管理规范', '维修间应当尽可能远离生产区；存放在洁净区内的维修用备件和工具，应当放置在专门的房间或工具柜中', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('221a5cab5f99476882065e846a91baf7', '0.003.004.056', 'ss_a', '药品生产管理规范', '生产区内可设中间控制区域，但中间控制操作不得给药品带来质量风险', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('221ce568b3b244e3aaa12d4530dbf7bf', '0.003.010.221.001.007', 'ss_a', '药品生产管理规范', '仪器校准和设备使用、清洁、维护的操作规程及记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2268786550c04b3797de11510337b548', '0.003.010.218', 'ss_a', '药品生产管理规范', '质量控制负责人应当具有足够的管理实验室的资质和经验，可以管理同一企业的一个或多个实验室', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('228fb3a3a54649f8b3d84d759f916e1c', '0.003.005.082', 'ss_a', '药品生产管理规范', '主要生产和检验设备都应当有明确的操作规程', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('231f5b0f79c34b09b747a1720b7f40f3', '0.003.010.223.009', 'ss_a', '药品生产管理规范', '必要时应当将检验用实验动物在使用前进行检验或隔离检疫；饲养和管理应当符合相关的实验动物管理规定；动物应当有标识，并应当保存使用的历史记录', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2324d2d6fb9949c7abb19c4c45587207', '0.003.001', 'ss_a', '药品生产管理规范', '总则', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2365f90d42f14ace8f4298f236643a7f', '0.003.004.049', 'ss_a', '药品生产管理规范', '洁净区的内表面（墙壁、地面、天棚）应当平整光滑、无裂缝、接口严密、无颗粒物脱落，避免积尘，便于有效清洁，必要时应当进行消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('236734b822524e35b37fbd921b0d284c', '0.003.002.009.005', 'ss_a', '药品生产管理规范', '中间产品得到有效控制', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2478477038dd426aa6ffe1d4e83f432c', '0.003.010.222.003', 'ss_a', '药品生产管理规范', '取样方法应当科学、合理，以保证样品的代表性', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('25f8bbcdd4d643c4a90cad11a33a8dae', '0.003.004.065', 'ss_a', '药品生产管理规范', '必要时，应当设置专门的仪器室，使灵敏度高的仪器免受静电、震动、潮湿或其他外界因素的干扰', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('261f8edaa2bf4707a8b9f86c3168dcc3', '0.003.003.017', 'ss_a', '药品生产管理规范', '质量管理部门应当参与所有与质量有关的活动，负责审核所有与本规范有关的文件；0.3.17.1质量管理部门人员不得将职责委托给其他部门的人员', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('268f031aadf343e7bd29af61f8714983', '0.003.011.280', 'ss_a', '药品生产管理规范', '委托方应当对受托方进行评估，对受托方的条件、技术水平、质量管理情况进行现场考核，确认其具有完成受托工作的能力，并能保证符合本规范的要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('26cdef312da04bef8d496fca825f3215', '0.003.008.183.005', 'ss_a', '药品生产管理规范', '环境监测', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('27240e39a91e431587e74d73562ddb13', '0.003.008.180', 'ss_a', '药品生产管理规范', '批包装记录的内容包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('27a1d0d3e6364fdf9dfce3d552212e53', '0.003.010.226.002', 'ss_a', '药品生产管理规范', '应当有接收试剂、试液、培养基的记录，必要时，应当在试剂、试液、培养基的容器上标注接收日期', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('27ad1953d24e4a2b84116249e65d7bb8', '0.003.003.023.002.011', 'ss_a', '药品生产管理规范', '评估和批准物料供应商', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('27d99e9f3a5e4e9cbe6b254c05c23be9', '0.003.008.170.002', 'ss_a', '药品生产管理规范', '生产操作要求：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('28fd3e0831954ac6bfb1cf0038c79378', '0.003.006.119.002', 'ss_a', '药品生产管理规范', '产品批号', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('292b76e267f74e7c9039f5227f6ff75c', '0.003.010.230.003', 'ss_a', '药品生产管理规范', '每批药品均应当由质量受权人签名批准放行', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2944bf75723d4a51b9e15b3086ab3300', '0.003.010.246', 'ss_a', '药品生产管理规范', '质量管理部门应当保存所有变更的文件和记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('29999d34870b41f9ad4e791b5feec11e', '0.003.003.022.003.001', 'ss_a', '药品生产管理规范', '确保药品按照批准的工艺规程生产、贮存，以保证药品质量', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('29b81c1d4802456ea8025a56636bc79b', '0.003.011.290', 'ss_a', '药品生产管理规范', '合同应当规定由受托方保存的生产、检验和发运记录及样品，委托方应当能够随时调阅或检查；出现投诉、怀疑产品有质量缺陷或召回时，委托方应当能够方便地查阅所有与评价产品质量相关的记录', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2a0440e46db9427ab3364a8dbc289fee', '0.003.008.160', 'ss_a', '药品生产管理规范', '应当尽可能采用生产和检验设备自动打印的记录、图谱和曲线图等，并标明产品或样品的名称、批号和记录设备的信息，操作人应当签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2a641809f589405fa5bd4c5941a59b07', '0.003.008.167.005', 'ss_a', '药品生产管理规范', '定性和定量的限度要求', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2a940a23b6624f15aec95df96e711f34', '0.003.010.231', 'ss_a', '药品生产管理规范', '持续稳定性考察的目的是在有效期内监控已上市药品的质量，以发现药品与生产相关的稳定性问题（如杂质含量或溶出度特性的变化），并确定药品能够在标示的贮存条件下，符合质量标准的各项要求', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2add8a3960514dac9c16ae91c7304554', '0.003.006.119.003', 'ss_a', '药品生产管理规范', '数量或重量（如毛重、净重等）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2af3400e2e3f4b0a99c016dec8edeafd', '0.003.010.266.002.002', 'ss_a', '药品生产管理规范', '关键中间控制点及成品的检验结果', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2b53b3a1e8ca4b81874ad762bfe012d9', '0.003.010.230.001.001', 'ss_a', '药品生产管理规范', '主要生产工艺和检验方法经过验证', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2b966450eb08470ab505f78d4700cc33', '0.003.010.266.002.004', 'ss_a', '药品生产管理规范', '所有重大偏差及相关的调查、所采取的整改措施和预防措施的有效性', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2bcba1c8ab384b64991de1e4448f21bc', '0.003.009.192', 'ss_a', '药品生产管理规范', '容器、设备或设施所用标识应当清晰明了，标识的格式应当经企业相关部门批准；除在标识上使用文字说明外，还可采用不同的颜色区分被标识物的状态（如待验、合格、不合格或已清洁等）', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2c3d50ac1f0f4a029f3812af0e0336d4', '0.003.006.104', 'ss_a', '药品生产管理规范', '物料供应商的确定及变更应当进行质量评估，并经质量管理部门批准后方可采购', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2c5af3a659924fb18ca1e950726db41b', '0.003.010.226.008', 'ss_a', '药品生产管理规范', '检定菌应当按照规定的条件贮存，贮存的方式和时间不应当对检定菌的生长特性有不利影响', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2c6871dd8f354c74991aa3c6b631e527', '0.003.010.257', 'ss_a', '药品生产管理规范', '质量管理部门应当指定专人负责物料供应商质量评估和现场质量审计，分发经批准的合格供应商名单；被指定的人员应当具有相关的法规和专业知识，具有足够的质量评估和现场质量审计的实践经验', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '410');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2c89a99ff88d43e78fb7577e31c4e114', '0.003.010.221.002', 'ss_a', '药品生产管理规范', '每批药品的检验记录应当包括中间产品、待包装产品和成品的质量检验记录，可追溯该批药品所有相关的质量检验情况', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2d7af66ddec7413c842c294dc599bb4a', '0.003.005.076', 'ss_a', '药品生产管理规范', '应当选择适当的清洗、清洁设备，并防止这类设备成为污染源', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2dbff7d7c0d6469993a4f137e37b2f0c', '0.003.009.197.002', 'ss_a', '药品生产管理规范', '采用阶段性生产方式', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2e203302dd80429fa395539e7dd9da62', '0.003.010.275', 'ss_a', '药品生产管理规范', '投诉调查和处理应当有记录，并注明所查相关批次产品的信息', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '590');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2fc17e9b1af840768353246615c73970', '0.003.008.180.005', 'ss_a', '药品生产管理规范', '每一包装材料的名称、批号和实际使用的数量', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('2fcefb3533a3460c8fab9735ef79c5f3', '0.003.010.249', 'ss_a', '药品生产管理规范', '任何偏差都应当评估其对产品质量的潜在影响；企业可以根据偏差的性质、范围、对产品质量潜在影响的程度将偏差分类（如重大、次要偏差），对重大偏差的评估还应当考虑是否需要对产品进行额外的检验以及对产品有效期的影响，必要时，应当对涉及重大偏差的产品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('30648364781d400e93765d17a9b50973', '0.003.006.118', 'ss_a', '药品生产管理规范', '中间产品和待包装产品应当在适当的条件下贮存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('30924526443c4764b22cb3ed094680d5', '0.003.010.222.002.007', 'ss_a', '药品生产管理规范', '取样后剩余部分及样品的处置和标识', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('30ff70c79797405abee2ef03471082f8', '0.003.003.024', 'ss_a', '药品生产管理规范', '生产管理负责人和质量管理负责人通常有下列共同的职责：', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('317d8aa200af4e3599b91dc6c034bd93', '0.003.010.223.006.001', 'ss_a', '药品生产管理规范', '产品或物料的名称、剂型、规格、批号或供货批号，必要时注明供应商和生产商（如不同）的名称或来源', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('31ce174bd01446659f7f82c74a7b145d', '0.003.010.229', 'ss_a', '药品生产管理规范', '物料的放行应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('31ea333d3e8f4f108ac4848c0200e3ba', '0.003.004.063', 'ss_a', '药品生产管理规范', '质量控制实验室通常应当与生产区分开；生物检定、微生物和放射性同位素的实验室还应当彼此分开', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('329ec9d4e6a0444e83e32c5906637641', '0.003.008.175.004', 'ss_a', '药品生产管理规范', '生产步骤操作人员的签名；必要时，还应当有操作（如称量）复核人员的签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('33292f2c24384e7197742f40b8018e71', '0.003.003.022.003.002', 'ss_a', '药品生产管理规范', '确保严格执行与生产操作相关的各种操作规程', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('332ad5dbdf014f60b27cba92780feee4', '0.003.010.222.002.002', 'ss_a', '药品生产管理规范', '取样方法', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('33e7911066554cd3a3d8227aa775f138', '0.003.010.221.001', 'ss_a', '药品生产管理规范', '质量控制实验室应当至少有下列详细文件：', null, 'e898bdbbc2324cd49340cef20a89c8f8', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3421864fd8e845f8950e5e162341b3a5', '0.003.003.016', 'ss_a', '药品生产管理规范', '企业应当建立与药品生产相适应的管理机构，并有组织机构图;', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('343389a3dc8749b69f46d05f742450f5', '0.003.008.163', 'ss_a', '药品生产管理规范', '如使用电子数据处理系统、照相技术或其他可靠方式记录数据资料，应当有所用系统的操作规程；记录的准确性应当经过核对', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3448d598192e4b69943aca1a1a443641', '0.003.004.046.005', 'ss_a', '药品生产管理规范', '用于上述第（二）、（三）、（四）项的空气净化系统，其排风应当经过净化处理', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('348fe09d7b5c46dc9c8f842886976d55', '0.003.004.048', 'ss_a', '药品生产管理规范', '应当根据药品品种、生产操作要求及外部环境状况等配置空调净化系统，使生产区有效通风，并有温度、湿度控制和空气净化过滤，保证药品的生产环境符合要求', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('34d1b554d06346e1b444b55958558665', '0.003.010.255.002', 'ss_a', '药品生产管理规范', '企业法定代表人、企业负责人及其他部门的人员不得干扰或妨碍质量管理部门对物料供应商独立作出质量评估', null, 'ceaa67ae87284c4db2d7845fa0ebe542', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('354054eabcef490eaf2162a3864a69ad', '0.003.010.230.001', 'ss_a', '药品生产管理规范', '在批准放行前，应当对每批药品进行质量评价，保证药品及其生产应当符合注册和本规范要求，并确认以下各项内容：', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('35cdfffd034845c3a37e785fb127889d', '0.003.003.023.002.012', 'ss_a', '药品生产管理规范', '确保所有与产品质量有关的投诉已经过调查，并得到及时、正确的处理', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3688d73258cf4144876f0af78325e782', '0.003.010.234.006', 'ss_a', '药品生产管理规范', '试验间隔时间（测试时间点）', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('36ff40d83d444180b13ea7a6ecd319bb', '0.003.002.010.002', 'ss_a', '药品生产管理规范', '生产工艺及其重大变更均经过验证', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3751b23776ec47afa0f7be7c396f98ef', '0.003.005.073', 'ss_a', '药品生产管理规范', '应当建立并保存设备采购、安装、确认的文件和记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3776ae04982348a2a14469ed3e57abcb', '0.003.008.164', 'ss_a', '药品生产管理规范', '物料和成品应当有经批准的现行质量标准；必要时，中间产品或待包装产品也应当有质量标准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('37e65c6b652348b984e34f41fef3f614', '0.003.005.083', 'ss_a', '药品生产管理规范', '生产设备应当在确认的参数范围内使用', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('37e72140320d4cdfb52acf286a70f4e2', '0.003.005.079', 'ss_a', '药品生产管理规范', '设备的维护和维修不得影响产品质量', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('37fe8ae58d1845d8a79b199e494ce26e', '0.003.010.266.002.012', 'ss_a', '药品生产管理规范', '委托生产或检验的技术合同履行情况', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('38f21e980951463a92fc572ba94226ba', '0.003.003.037', 'ss_a', '药品生产管理规范', '操作人员应当避免裸手直接接触药品、与药品直接接触的包装材料和设备表面', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('392bf14c61e64feeb568f5ef770abfb0', '0.003.006.137', 'ss_a', '药品生产管理规范', '只有经检查、检验和调查，有证据证明退货质量未受影响，且经质量管理部门根据操作规程评价后，方可考虑将退货重新包装、重新发运销售', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '360');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('39386d0173b74e7bad09b0c157ae2ed1', '0.003.008.150', 'ss_a', '药品生产管理规范', '文件是质量保证系统的基本要素；企业必须有内容正确的书面质量标准、生产处方和工艺规程、操作规程以及记录等文件', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3aab4f6b308045b9a3d7b229ec9103c9', '0.003.010.230.001.003', 'ss_a', '药品生产管理规范', '所有必需的生产和质量控制均已完成并经相关主管人员签名', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3b40e3543a0a4cda9397dd9d079d9164', '0.003.006.119.001', 'ss_a', '药品生产管理规范', '产品名称和企业内部的产品代码', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3b83a4447ff94f0cbd40d259b2845439', '0.003.003.031', 'ss_a', '药品生产管理规范', '企业应当对人员健康进行管理，并建立健康档案', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3b87e2a052ce41d4902ea4ad8a5be515', '0.003.010.225.001.003.002', 'ss_a', '药品生产管理规范', '留样的包装形式应当与药品市售包装形式相同，原料药的留样如无法采用市售包装形式的，可采用模拟包装', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3bcd9588f6274486a7a1b36e2a53b1fe', '0.003.010.238', 'ss_a', '药品生产管理规范', '应当对不符合质量标准的结果或重要的异常趋势进行调查；对任何已确认的不符合质量标准的结果或重大不良趋势，企业都应当考虑是否可能对已上市药品造成影响，必要时应当实施召回，调查结果以及采取的措施应当报告当地药品监督管理部门', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3c15d2ce9e0e409ab8dd8d6fb7eff56b', '0.003.005.100', 'ss_a', '药品生产管理规范', '应当对制药用水及原水的水质进行定期监测，并有相应的记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3c181e54f2e04c24a9e7c4fa2ead60e4', '0.003.006.112.003', 'ss_a', '药品生产管理规范', '物料质量状态（如待验、合格、不合格、已取样）', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3c7ce2395fdb410ca576e2c87b8400eb', '0.003.002.009.008', 'ss_a', '药品生产管理规范', '每批产品经质量受权人批准后方可放行', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3d15cb0826cf416084ee368d9afd23b9', '0.003.010.221.003', 'ss_a', '药品生产管理规范', '宜采用便于趋势分析的方法保存某些数据（如检验数据、环境监测数据、制药用水的微生物监测数据）', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3d9ec4f672dd42fa90dc9afe1aaa5931', '0.003.010.224', 'ss_a', '药品生产管理规范', '质量控制实验室应当建立检验结果超标调查的操作规程；任何检验结果超标都必须按照操作规程进行完整的调查，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3e5799025d264e4d8d5cba2f804e4b7e', '0.003.004.068', 'ss_a', '药品生产管理规范', '休息室的设置不应当对生产区、仓储区和质量控制区造成不良影响', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3e5e7f9b9dd340db99e110ece615db94', '0.003.008.167.004', 'ss_a', '药品生产管理规范', '取样、检验方法或相关操作规程编号', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3e73743f2e024d12bce72c4aed8a4c40', '0.003.010.244', 'ss_a', '药品生产管理规范', '改变原辅料、与药品直接接触的包装材料、生产工艺、主要生产设备以及其他影响药品质量的主要因素时，还应当对变更实施后最初至少三个批次的药品质量进行评估；如果变更可能影响药品的有效期，则质量评估还应当包括对变更实施后生产的药品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3ebf75057fe243608897da8288aff057', '0.003.002.010.007', 'ss_a', '药品生产管理规范', '批记录和发运记录应当能够追溯批产品的完整历史，并妥善保存、便于查阅', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3f3a4b007870411aad2410aad00b7678', '0.003.008.158', 'ss_a', '药品生产管理规范', '文件应当定期审核、修订；文件修订后，应当按照规定管理，防止旧版文件的误用；分发、使用的文件应当为批准的现行文本，已撤销的或旧版文件除留档备查外，不得在工作现场出现', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3f51b3302c4d4cca8fd4d24866351995', '0.003.008.180.001', 'ss_a', '药品生产管理规范', '产品名称、规格、包装形式、批号、生产日期和有效期', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3fcbf15d6b61485da3eb330041d5fd3a', '0.003.003.029', 'ss_a', '药品生产管理规范', '所有人员都应当接受卫生要求的培训，企业应当建立人员卫生操作规程，最大限度地降低人员对药品生产造成污染的风险', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('3fd98e1d6ec245899795c3a60303732c', '0.003.003.024.008', 'ss_a', '药品生产管理规范', '保存记录', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('406069fb556446249b282218929ba29a', '0.003.012.299', 'ss_a', '药品生产管理规范', '应当指定专人负责组织协调召回工作，并配备足够数量的人员；产品召回负责人应当独立于销售和市场部门；如产品召回负责人不是质量受权人，则应当向质量受权人通报召回处理情况', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('40a0aa96bdad44a88929f140700183ce', '0.003.002.010.003', 'ss_a', '药品生产管理规范', '配备所需的资源，至少包括：', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('40acf96b58f046de8fc4b9b3fcfb7d34', '0.003.010.229.002', 'ss_a', '药品生产管理规范', '物料的质量评价应当有明确的结论，如批准放行、不合格或其他决定', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('426ff20c14194a98b161c93e9e7770e5', '0.003.009.199.001', 'ss_a', '药品生产管理规范', '生产操作前，还应当核对物料或中间产品的名称、代码、批号和标识，确保生产所用物料或中间产品正确且符合要求', null, '8b2e4f49b81c467596c030b696e55ec6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('42b9b9791b714e39bae6dbf5690d16d8', '0.003.010.222.005', 'ss_a', '药品生产管理规范', '样品的容器应当贴有标签，注明样品名称、批号、取样日期、取自哪一包装容器、取样人等信息', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('42c30d52925d487dbd421b1b77276a5e', '0.003.010.266.002.001', 'ss_a', '药品生产管理规范', '产品所用原辅料的所有变更，尤其是来自新供应商的原辅料', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('42fa75f81a264971ac4b41af192e5042', '0.003.003.025.001', 'ss_a', '药品生产管理规范', '资质：', null, '0f156e5386a2404cb559734cb4c723d4', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('434ec4850990445086eb81a6f84f26db', '0.003.002.009.007', 'ss_a', '药品生产管理规范', '严格按照规程进行生产、检查、检验和复核', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('43b2d7e605d2496683ab290fdba63975', '0.003.010.222.002', 'ss_a', '药品生产管理规范', '应当按照经批准的操作规程取样，操作规程应当详细规定：', null, '4a30ae096a2d469086ef62b55c1f3d57', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('43c0b1197c444e2cba7c09efffa010d9', '0.003.010.253.005', 'ss_a', '药品生产管理规范', '对实施纠正和预防措施过程中所有发生的变更应当予以记录', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('44864aa8341d472285899f2bafeecd73', '0.003.002.010.003.001', 'ss_a', '药品生产管理规范', '具有适当的资质并经培训合格的人员', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('44d21f31957c46a293e81377bcdeaded', '0.003.005.096', 'ss_a', '药品生产管理规范', '制药用水应当适合其用途，并符合《中华人民共和国药典》的质量标准及相关要求；制药用水至少应当采用饮用水', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('45129b544a3148caa7ed11a69db06f64', '0.003.009.197.004', 'ss_a', '药品生产管理规范', '应当降低未经处理或未经充分处理的空气再次进入生产区导致污染的风险', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4530c9d3e70b4381be9f22153204d9d1', '0.003.012.303', 'ss_a', '药品生产管理规范', '已召回的产品应当有标识，并单独、妥善贮存，等待最终处理决定', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('467b88acf41447698539ddef4baf0f56', '0.003.009.197.008', 'ss_a', '药品生产管理规范', '干燥设备的进风应当有空气过滤器，排风应当有防止空气倒流装置', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('46aff64e9e264d5ea6c0118cbf949333', '0.003.008.163.002', 'ss_a', '药品生产管理规范', '用电子方法保存的批记录，应当采用磁带、缩微胶卷、纸质副本或其他方法进行备份，以确保记录的安全，且数据资料在保存期内便于查阅', null, '343389a3dc8749b69f46d05f742450f5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('46e8552b8e134b309b6399bb74389fe5', '0.003.010.221.001.003', 'ss_a', '药品生产管理规范', '检验操作规程和记录（包括检验记录或实验室工作记事簿）', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4719581c60aa4a36b985bf1c1361238d', '0.003.010.221.001.004', 'ss_a', '药品生产管理规范', '检验报告或证书', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('472a032b4f534675acac3602e946ef69', '0.003.007.146', 'ss_a', '药品生产管理规范', '验证总计划或其他相关文件中应当作出规定，确保厂房、设施、设备、检验仪器、生产工艺、操作规程和检验方法等能够保持持续稳定', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('47ff1faf6e8a4fd986eed87955820765', '0.003.003.022.003.005', 'ss_a', '药品生产管理规范', '确保完成各种必要的验证工作', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('482488e5a28e4be68672a69fe386299b', '0.003.006.120', 'ss_a', '药品生产管理规范', '与药品直接接触的包装材料和印刷包装材料的管理和控制要求与原辅料相同', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('483b74dacc094bb4bd6760ed61348b91', '0.003.003.022', 'ss_a', '药品生产管理规范', '生产管理负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('48cc5d1492f64cc6a8e36e80ca8f6657', '0.003.003.035', 'ss_a', '药品生产管理规范', '进入洁净生产区的人员不得化妆和佩带饰物', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('48ce1844048444e990a24e205fc29c90', '0.003.011.278', 'ss_a', '药品生产管理规范', '为确保委托生产产品的质量和委托检验的准确性和可靠性，委托方和受托方必须签订书面合同，明确规定各方责任、委托生产或委托检验的内容及相关的技术事项', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4a2c8705152448faac081d67a5ec00b5', '0.003.008.169', 'ss_a', '药品生产管理规范', '工艺规程不得任意更改；如需更改，应当按照相关的操作规程修订、审核、批准', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4a30ae096a2d469086ef62b55c1f3d57', '0.003.010.222', 'ss_a', '药品生产管理规范', '取样应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4a4fc9834d9e4d8ebdd46b7a52360ad8', '0.003.010.223.004', 'ss_a', '药品生产管理规范', '检验应当有书面操作规程，规定所用方法、仪器和设备，检验操作规程的内容应当与经确认或验证的检验方法一致', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4b3ec78fb64b40119efa1c74c456fb76', '0.003.005.097', 'ss_a', '药品生产管理规范', '水处理设备及其输送系统的设计、安装、运行和维护应当确保制药用水达到设定的质量标准', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4bd98ec5389848a0953f38fa17f6b1e2', '0.003.010.223.002.004', 'ss_a', '药品生产管理规范', '法规规定的其他需要验证的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4becc7109c4a4eaaa3e02411fa5ea301', '0.003.002.012.001', 'ss_a', '药品生产管理规范', '应当配备适当的设施、设备、仪器和经过培训的人员，有效、可靠地完成所有质量控制的相关活动', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4c1bac841bf944a5aeb7139776c88f8f', '0.003.005.084.002', 'ss_a', '药品生产管理规范', '如需拆装设备，还应当规定设备拆装的顺序和方法；如需对设备消毒或灭菌，还应当规定消毒或灭菌的具体方法、消毒剂的名称和配制方法；必要时，还应当规定设备生产结束至清洁前所允许的最长间隔时限', null, 'd62f9bba23364f50b79aceb519765066', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4c308a1f75af40eb8270b60c9fc3778a', '0.003.008.182', 'ss_a', '药品生产管理规范', '厂房、设备、物料、文件和记录应当有编号（或代码），并制定编制编号（或代码）的操作规程，确保编号（或代码）的唯一性', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4c388f7b76f94608aa1e483303322475', '0.003.006.123', 'ss_a', '药品生产管理规范', '印刷包装材料的版本变更时，应当采取措施，确保产品所用印刷包装材料的版本正确无误；宜收回作废的旧版印刷模版并予以销毁', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4c894a0d200a48e785aa4feb95163aeb', '0.003.008.170.003.006', 'ss_a', '药品生产管理规范', '中间控制的详细操作，包括取样方法及标准', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4d3b9ab8adda4edbbb6be4ecbc2ce3a4', '0.003.003.028', 'ss_a', '药品生产管理规范', '高风险操作区（如：高活性、高毒性、传染性、高致敏性物料的生产区）的工作人员应当接受专门的培训', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4d5267631db44a94b845c70f4d338bb2', '0.003.008.170', 'ss_a', '药品生产管理规范', '制剂的工艺规程的内容至少应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4d5a72079b4c49f8b2f22ba10e02d6e9', '0.003.010.250.001', 'ss_a', '药品生产管理规范', '偏差调查报告应当由质量管理部门的指定人员审核并签字', null, '200aa421f6dd4781a2bc05f3649620cc', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4dd3ebc2ee5f431f83849faba4425cad', '0.003.002.012.007', 'ss_a', '药品生产管理规范', '物料和最终包装的成品应当有足够的留样，以备必要的检查或检验；除最终包装容器过大的成品外，成品的留样包装应当与最终包装相同', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4e2c4640dbcd45fd9937aea4c738e6e8', '0.003.008.170.002.001', 'ss_a', '药品生产管理规范', '对生产场所和所用设备的说明（如操作间的位置和编号、洁净度级别、必要的温湿度要求、设备型号和编号等）', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4ee4531b971d4840afd2505672c887f0', '0.003.008.183.011', 'ss_a', '药品生产管理规范', '退货', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('4f59d1ff7cb94d2bb33e36b51e5ba29b', '0.003.006.112.001', 'ss_a', '药品生产管理规范', '指定的物料名称和企业内部的物料代码', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('505a5ceada204646bb0c10c6db4a5b90', '0.003.008.170.003', 'ss_a', '药品生产管理规范', '包装操作要求：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('50846bcc9df44b8ca9a3cc30537e51f9', '0.003.009.214', 'ss_a', '药品生产管理规范', '因包装过程产生异常情况而需要重新包装产品的，必须经专门检查、调查并由指定人员批准；重新包装应当有详细记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('511d9a48a3164f07abf3afc8c83c43fd', '0.003.010.226.001', 'ss_a', '药品生产管理规范', '试剂和培养基应当从可靠的供应商处采购，必要时应当对供应商进行评估', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('513f0ba88fbd4ff0baa9fcfcd24b9bab', '0.003.003.018', 'ss_a', '药品生产管理规范', '企业应当配备足够数量并具有适当资质（含学历、培训和实践经验）的管理和操作人员，应当明确规定每个部门和每个岗位的职责', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('51e4493425074894a863dae4d80dcb0c', '0.003.003.023', 'ss_a', '药品生产管理规范', '质量管理负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('51f394d7b58c4a70a2a6f71080002e44', '0.003.008.180.003', 'ss_a', '药品生产管理规范', '包装操作负责人签名', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('523844c52a6d48b88327de4eaf675792', '0.003.010.266.002', 'ss_a', '药品生产管理规范', '回顾分析应当有报告；企业至少应当对下列情形进行回顾分析：', null, '10b7d5734a4a416084374d68e2b53279', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('525bdeba083d4de5ab363b37c4493ecc', '0.003.003.023.002.013', 'ss_a', '药品生产管理规范', '确保完成产品的持续稳定性考察计划，提供稳定性考察的数据', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5280f7744f2e43ad80bd7555a94356c1', '0.003.008.175.007', 'ss_a', '药品生产管理规范', '中间控制结果的记录以及操作人员的签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('52c74b6c898143e9a2d2bcdca8d95338', '0.003.009.189', 'ss_a', '药品生产管理规范', '在生产的每一阶段，应当保护产品和物料免受微生物和其他污染', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('53716187adcb473a87cf206e2d687135', '0.003.006.122', 'ss_a', '药品生产管理规范', '应当建立印刷包装材料设计、审核、批准的操作规程，确保印刷包装材料印制的内容与药品监督管理部门核准的一致，并建立专门的文档，保存经签名批准的印刷包装材料原版实样', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('53a91fd4e1794585a4d49942a84e4710', '0.003.009.197.011', 'ss_a', '药品生产管理规范', '软膏剂、乳膏剂、凝胶剂等半固体制剂以及栓剂的中间产品应当规定贮存期和贮存条件', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('53c327399b5e4334be831daa415a42b3', '0.003.006.106.002.007', 'ss_a', '药品生产管理规范', '接收后企业指定的批号或流水号', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('53e9ded7b4754c82964963e3850068a6', '0.003.003.022.001', 'ss_a', '药品生产管理规范', '资质：', null, '483b74dacc094bb4bd6760ed61348b91', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('54baa8900f3d4fe8860ea3012f0c1be4', '0.003.008.154', 'ss_a', '药品生产管理规范', '文件的起草、修订、审核、批准均应当由适当的人员签名并注明日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('54e0b8c9c34a4c268a601654216ab2c1', '0.003.006.106.002.004', 'ss_a', '药品生产管理规范', '供应商和生产商（如不同）的名称', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5576ec291f354c18aa86f21b1e39cf9f', '0.003.003.024.007', 'ss_a', '药品生产管理规范', '确定和监控物料和产品的贮存条件', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('558fd2dd3b0a45158d86a4ab8b0084b1', '0.003.008.183.004', 'ss_a', '药品生产管理规范', '培训、更衣及卫生等与人员相关的事宜', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('567d2749135e43c1a4ce3f1240bbb538', '0.003.002.009', 'ss_a', '药品生产管理规范', '质量保证系统应当确保：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('57de58f1774d4f90852961a935310aef', '0.003.010.223', 'ss_a', '药品生产管理规范', '物料和不同生产阶段产品的检验应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5804d3ba08a641399ab7ef4ac5d6735c', '0.003.003.022.003', 'ss_a', '药品生产管理规范', '主要职责：', null, '483b74dacc094bb4bd6760ed61348b91', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('588bc5c4c34340d09e92c1938acd5d67', '0.003.010.261', 'ss_a', '药品生产管理规范', '改变物料供应商，应当对新的供应商进行质量评估；改变主要物料供应商的，还需要对产品进行相关的验证及稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '450');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('58ea3ffc36f04e5f82084d1f6abfe433', '0.003.003.023.002.002', 'ss_a', '药品生产管理规范', '确保在产品放行前完成对批记录的审核', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('592e4ee14c654bf1a91b016cb3258f23', '0.003.006.112', 'ss_a', '药品生产管理规范', '仓储区内的原辅料应当有适当的标识，并至少标明下述内容：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('593401edf90d4085b53c4c5e139dc4c1', '0.003.010.223.003', 'ss_a', '药品生产管理规范', '对不需要进行验证的检验方法，企业应当对检验方法进行确认，以确保检验数据准确、可靠', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('59434ab6ed18472f8811bda7c914696b', '0.003.008.183.001', 'ss_a', '药品生产管理规范', '确认和验证', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('594c457f61d84316aa253de4a2df4dae', '0.003.008.165.004', 'ss_a', '药品生产管理规范', '贮存条件和注意事项', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('59f9422d36414718b72fc604ee5acf2a', '0.003.004.048.001', 'ss_a', '药品生产管理规范', '洁净区与非洁净区之间、不同级别洁净区之间的压差应当不低于10帕斯卡；必要时，相同洁净度级别的不同功能区域（操作间）之间也应当保持适当的压差梯度', null, '348fe09d7b5c46dc9c8f842886976d55', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5aedcd4543af4534a8f0dd42e52be167', '0.003.009.215', 'ss_a', '药品生产管理规范', '在物料平衡检查中，发现待包装产品、印刷包装材料以及成品数量有显著差异时，应当进行调查，未得出结论前，成品不得放行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5ba89728daeb4a6999238a2939748145', '0.003.002.009.004', 'ss_a', '药品生产管理规范', '采购和使用的原辅料和包装材料正确无误', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5c6f65656ae1483faf02ac96c70ad186', '0.003.008.180.010', 'ss_a', '药品生产管理规范', '所有印刷包装材料和待包装产品的名称、代码，以及发放、使用、销毁或退库的数量、实际产量以及物料平衡检查', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5c91d6116c3e4a19879ed20127246aae', '0.003.003.020.002', 'ss_a', '药品生产管理规范', '质量管理负责人和质量受权人可以兼任', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5cc8d6e586094a118b793575f24dda1e', '0.003.012.298', 'ss_a', '药品生产管理规范', '应当制定召回操作规程，确保召回工作的有效性', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5d35d1e62a13441a8f56378d8afaf094', '0.003.006.117', 'ss_a', '药品生产管理规范', '用于同一批药品生产的所有配料应当集中存放，并作好标识', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5d87ab9a03554792b5050b284218c00f', '0.003.010.276', 'ss_a', '药品生产管理规范', '应当定期回顾分析投诉记录，以便发现需要警觉、重复出现以及可能需要从市场召回药品的问题，并采取相应措施', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '600');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5d89ecc0558e46ebbf301ab4e933d435', '0.003.002.005', 'ss_a', '药品生产管理规范', '企业应当建立符合药品质量管理要求的质量目标', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5d9ec80c4df7478dbc58cac6ca36fe0c', '0.003.002.009.009', 'ss_a', '药品生产管理规范', '在贮存、发运和随后的各种操作过程中有保证药品质量的适当措施', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5e2d2fdbcc524c16952ea6d6cdd7b335', '0.003.010.223.006.008', 'ss_a', '药品生产管理规范', '检验日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5f01a9476a954dbaace9c044e9a70f9e', '0.003.004.061', 'ss_a', '药品生产管理规范', '如采用单独的隔离区域贮存待验物料，待验区应当有醒目的标识，且只限于经批准的人员出入', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5f901562a67545e1951de9c60852714a', '0.003.010.235', 'ss_a', '药品生产管理规范', '考察批次数和检验频次应当能够获得足够的数据，以供趋势分析；通常情况下，每种规格、每种内包装形式的药品，至少每年应当考察一个批次，除非当年没有生产', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5fb659e7bcff486aa3849194bba8fd14', '0.003.010.248', 'ss_a', '药品生产管理规范', '企业应当建立偏差处理的操作规程，规定偏差的报告、记录、调查、处理以及所采取的纠正措施，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('5fc58867e9994545b77cb63e3e25daae', '0.003.002.005.001', 'ss_a', '药品生产管理规范', '将药品注册的有关安全、有效和质量可控的所有要求，系统地贯彻到药品生产、控制及产品放行、贮存、发运的全过程中', null, '5d89ecc0558e46ebbf301ab4e933d435', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('603fd8bf8b49404f97b94f9afe61a21f', '0.003.009.213.001', 'ss_a', '药品生产管理规范', '包装外观', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('60618eabcae547ad8bc1ac99874c2612', '0.003.010.221.001.002', 'ss_a', '药品生产管理规范', '取样操作规程和记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('60f547abbc4f4062a193f1a59e04d8b9', '0.003.008.170.003.003', 'ss_a', '药品生产管理规范', '印刷包装材料的实样或复制品，并标明产品批号、有效期打印位置', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('61a43f0b09f74a28b8488012c64f0416', '0.003.003.023.002.007', 'ss_a', '药品生产管理规范', '批准并监督委托检验', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('61ff959b3c2e4bfab3f5b7e3a347d338', '0.003.002.012.004', 'ss_a', '药品生产管理规范', '检验方法应当经过验证或确认', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6252b1c89ef247179d46db0a08b6e5b6', '0.003.008.165.001.001', 'ss_a', '药品生产管理规范', '企业统一指定的物料名称和内部使用的物料代码', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('63045d1450d24e27a9f9b7d682a0607e', '0.003.008.183.008', 'ss_a', '药品生产管理规范', '偏差处理', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('633fd99a1ed449d7bf4456538f6f3471', '0.003.004.046.006', 'ss_a', '药品生产管理规范', '药品生产厂房不得用于生产对药品质量有不利影响的非药用产品', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('63f398dac55e44d48e17c1b757d21e34', '0.003.003.025.001.002', 'ss_a', '药品生产管理规范', '质量受权人应当具有必要的专业理论知识，并经过与产品放行有关的培训，方能独立履行其职责', null, '42fa75f81a264971ac4b41af192e5042', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('645e2eb0be1540acb7f8364bb1de13d7', '0.003.003.016.002', 'ss_a', '药品生产管理规范', '质量管理部门可以分别设立质量保证部门和质量控制部门', null, '3421864fd8e845f8950e5e162341b3a5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('646cc50840244f55982cdddad599b133', '0.003.004.046', 'ss_a', '药品生产管理规范', '为降低污染和交叉污染的风险，厂房、生产设施和设备应当根据所生产药品的特性、工艺流程及相应洁净度级别要求合理设计、布局和使用，并符合下列要求：', null, 'c0d4522d01b341d8bb037210aeec27a2', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('66183a308515452485aad6510931e0d9', '0.003.005.071', 'ss_a', '药品生产管理规范', '设备的设计、选型、安装、改造和维护必须符合预定用途，应当尽可能降低产生污染、交叉污染、混淆和差错的风险，便于操作、清洁、维护，以及必要时进行的消毒或灭菌', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('668a0b6a33a34bd1b67efd2e3d486eed', '0.003.011.282', 'ss_a', '药品生产管理规范', '委托方应当对受托生产或检验的全过程进行监督', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('66c0459ec39242b8b623e10a7edbd770', '0.003.008.165.001.004', 'ss_a', '药品生产管理规范', '印刷包装材料的实样或样稿', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('67300088b3b340bb8e03f65f2c5e5752', '0.003.010.223.007', 'ss_a', '药品生产管理规范', '所有中间控制（包括生产人员所进行的中间控制），均应当按照经质量管理部门批准的方法进行，检验应当有记录', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('684db4b4286f44ad956dfaeea857dfdf', '0.003.004.047', 'ss_a', '药品生产管理规范', '生产区和贮存区应当有足够的空间，确保有序地存放设备、物料、中间产品、待包装产品和成品，避免不同产品或物料的混淆、交叉污染，避免生产或质量控制操作发生遗漏或差错', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('685b9f3f32dc49528c368645c5546ee5', '0.003.006.121', 'ss_a', '药品生产管理规范', '包装材料应当由专人按照操作规程发放，并采取措施避免混淆和差错，确保用于药品生产的包装材料正确无误', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6867cec2bba14071a1929a7b9e8f7932', '0.003.004.038', 'ss_a', '药品生产管理规范', '厂房的选址、设计、布局、建造、改造和维护必须符合药品生产要求，应当能够最大限度地避免污染、交叉污染、混淆和差错，便于清洁、操作和维护', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('686de8e2d0c64ababaf747434c0097d0', '0.003.006.137.002', 'ss_a', '药品生产管理规范', '对退货质量存有怀疑时，不得重新发运', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('68a13f5c418d4050b63e14ec5c5832e5', '0.003.011.287', 'ss_a', '药品生产管理规范', '委托方与受托方之间签订的合同应当详细规定各自的产品生产和控制职责，其中的技术性条款应当由具有制药技术、检验专业知识和熟悉本规范的主管人员拟订', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6924b76419e943d590f36fc398ee7220', '0.003.010.266.002.006', 'ss_a', '药品生产管理规范', '已批准或备案的药品注册所有变更', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('698a48b88ad94c89a8adc70bb5fdd63b', '0.003.011.291', 'ss_a', '药品生产管理规范', '合同应当明确规定委托方可以对受托方进行检查或现场质量审计', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('699879d259af49c09fb8a961b2bfa7f5', '0.003.009.201.002', 'ss_a', '药品生产管理规范', '清场记录应当纳入批生产记录', null, 'ab2aeacbef644038bedce9b7ce0d6a37', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('69a4e635dd054110a76bad3c8423c081', '0.003.008.167.003', 'ss_a', '药品生产管理规范', '产品规格和包装形式', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('69d560bd02ab46abb07adea545696d87', '0.003.007.140.003', 'ss_a', '药品生产管理规范', '运行确认应当证明厂房、设施、设备的运行符合设计标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('69eef02c1a474f44b73c6393c65833c2', '0.003.006.102', 'ss_a', '药品生产管理规范', '药品生产所用的原辅料、与药品直接接触的包装材料应当符合相应的质量标准', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6a49077e1d554c999a9cdd79e0fb397f', '0.003.008.180.007', 'ss_a', '药品生产管理规范', '包装操作的详细情况，包括所用设备及包装生产线的编号', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6ad724c3118c4d8b8026509f1a7a96b2', '0.003.010.274', 'ss_a', '药品生产管理规范', '发现或怀疑某批药品存在缺陷，应当考虑检查其他批次的药品，查明其是否受到影响', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '580');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6af809ac2123477997daf4982f532594', '0.003.002.010.003.006', 'ss_a', '药品生产管理规范', '适当的贮运条件', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6b82d7824d994bb3aee1fbf827135e77', '0.003.006.137.003', 'ss_a', '药品生产管理规范', '对退货进行回收处理的，回收后的产品应当符合预定的质量标准和0.6.133的要求', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6bb50b1902964648a6f9bf4db82a3306', '0.003.011.285', 'ss_a', '药品生产管理规范', '受托方应当确保所收到委托方提供的物料、中间产品和待包装产品适用于预定用途', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6c4d3d49309642d98088c759f703b270', '0.003.008.173', 'ss_a', '药品生产管理规范', '原版空白的批生产记录应当经生产管理负责人和质量管理负责人审核和批准；批生产记录的复制和发放均应当按照操作规程进行控制并有记录，每批产品的生产只能发放一份原版空白批生产记录的复制件', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6d0fe6e941444a19813694dc2fd7f45c', '0.003.003.021.001', 'ss_a', '药品生产管理规范', '企业负责人是药品质量的主要责任人，全面负责企业日常管理', null, 'e249c25610154493a294f7e52cc0a0d4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6d3e449431944c129371ed6be8be3d11', '0.003.012.305', 'ss_a', '药品生产管理规范', '应当定期对产品召回系统的有效性进行评估', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6e48d6cc50ba41cba4e6fede4d798c35', '0.003.013', 'ss_a', '药品生产管理规范', '自检', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6ec650cb3efe4cd785b4a6277985d255', '0.003.011.283', 'ss_a', '药品生产管理规范', '委托方应当确保物料和产品符合相应的质量标准', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6eea078283214dbaa3612819b59346b0', '0.003.004.061.001', 'ss_a', '药品生产管理规范', '不合格、退货或召回的物料或产品应当隔离存放', null, '5f01a9476a954dbaace9c044e9a70f9e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6f77e20a432448279b6c4d0cff8f2983', '0.003.004.067', 'ss_a', '药品生产管理规范', '实验动物房应当与其他区域严格分开，其设计、建造应当符合国家有关规定，并设有独立的空气处理设施以及动物的专用通道', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6f8a70a9ec2b407998cc3d81a1a5baa3', '0.003.009.198', 'ss_a', '药品生产管理规范', '应当定期检查防止污染和交叉污染的措施并评估其适用性和有效性', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('6fcab2ec600d492bb17d3c8eb142a92d', '0.003.002.009.003', 'ss_a', '药品生产管理规范', '管理职责明确', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('702ec11db90c491c95575f2eaee10f6e', '0.003.003.020', 'ss_a', '药品生产管理规范', '关键人员应当为企业的全职人员，至少应当包括企业负责人、生产管理负责人、质量管理负责人和质量受权人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('70756f7d8b7c4fb09d4c5de564c97f0d', '0.003.010.222.001', 'ss_a', '药品生产管理规范', '质量管理部门的人员有权进入生产区和仓储区进行取样及调查', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('711bb6672cf34ff2a106f0823dad25a6', '0.003.006.127', 'ss_a', '药品生产管理规范', '过期或废弃的印刷包装材料应当予以销毁并记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('712e2c9d68774c4e93ebcea3a9aa54f3', '0.003.004.042', 'ss_a', '药品生产管理规范', '厂房应当有适当的照明、温度、湿度和通风，确保生产和贮存的产品质量以及相关设备性能不会直接或间接地受到影响', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('715d4259be6545e586af8253fec04405', '0.003.010.223.006.006', 'ss_a', '药品生产管理规范', '检验过程，包括对照品溶液的配制、各项具体的检验操作、必要的环境温湿度', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('718e94d3273a46379cda2ed9718967f6', '0.003.010.230.001.002', 'ss_a', '药品生产管理规范', '已完成所有必需的检查、检验，并综合考虑实际生产条件和生产记录', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7273c287dcf044939e43ddcbb8dee899', '0.003.005.101.001', 'ss_a', '药品生产管理规范', '发现制药用水微生物污染达到警戒限度、纠偏限度时应当按照操作规程处理', null, '9ec94a0622314aa2943cde74ab6bb7df', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('72b8ed3b598a444883d59c159e73a7bf', '0.003.006.112.002', 'ss_a', '药品生产管理规范', '企业接收时设定的批号', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('72d65040039f4c3f8ca72e22495797fc', '0.003.007.149', 'ss_a', '药品生产管理规范', '应当根据验证的结果确认工艺规程和操作规程', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('73103a3f767e45fe925284f47e1dc0fe', '0.003.010.225.001.004.004', 'ss_a', '药品生产管理规范', '物料的留样应当按照规定的条件贮存，必要时还应当适当包装密封', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('73842ea9aff84bbaa90898cc64be3ab6', '0.003.012.297', 'ss_a', '药品生产管理规范', '发运记录应当至少保存至药品有效期后一年', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('73beb21c00454dba8b6ba5099dfef38e', '0.003.008.180.008', 'ss_a', '药品生产管理规范', '所用印刷包装材料的实样，并印有批号、有效期及其他打印内容；不易随批包装记录归档的印刷包装材料可采用印有上述内容的复制品', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('73bfa184258241efa0446b7a09feac3f', '0.003.010.253', 'ss_a', '药品生产管理规范', '企业应当建立实施纠正和预防措施的操作规程，内容至少包括：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '370');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('743c31262abb4b29a7f4326ab398be34', '0.003.010.253.002', 'ss_a', '药品生产管理规范', '调查与产品、工艺和质量保证系统有关的原因', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('74658df043774a82a7657e7f99d6d6ef', '0.003.010.225.001.003', 'ss_a', '药品生产管理规范', '成品的留样：', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('755295eff8744e5f93e9360e91bc12ec', '0.003.010.223.006.010', 'ss_a', '药品生产管理规范', '检验、计算复核人员的签名和日期', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('75860722e0484afa8a8ba95c6613b709', '0.003.009.197.005', 'ss_a', '药品生产管理规范', '在易产生交叉污染的生产区内，操作人员应当穿戴该区域专用的防护服', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('76189b338913443aa65b7d3dc83cb549', '0.003.011', 'ss_a', '药品生产管理规范', '委托生产与委托检验', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('766a824162a14b3fa7a6808078a8ac8a', '0.003.009.211', 'ss_a', '药品生产管理规范', '应当对电子读码机、标签计数器或其他类似装置的功能进行检查，确保其准确运行；检查应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('773310dd39964ba081b3db053a94e2ac', '0.003.010.222.002.008', 'ss_a', '药品生产管理规范', '取样注意事项，包括为降低取样过程产生的各种风险所采取的预防措施，尤其是无菌或有害物料的取样以及防止取样过程中污染和交叉污染的注意事项', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7747e2bf7aa645a6ac8d3f43d37e259b', '0.003.002.008', 'ss_a', '药品生产管理规范', '质量保证是质量管理体系的一部分', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('775a47f0a7544bbbaca9bec517cc6e1c', '0.003.012.293', 'ss_a', '药品生产管理规范', '企业应当建立产品召回系统，必要时可迅速、有效地从市场召回任何一批存在安全隐患的产品', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('77996256af164d4cb485847eaf9d121e', '0.003.005.089', 'ss_a', '药品生产管理规范', '主要固定管道应当标明内容物名称和流向', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('77ef62f7f6644cbba6c3011cac207b68', '0.003.005.084.001', 'ss_a', '药品生产管理规范', '生产设备清洁的操作规程应当规定具体而完整的清洁方法、清洁用设备或工具、清洁剂的名称和配制方法、去除前一批次标识的方法、保护已清洁设备在使用前免受污染的方法、已清洁设备最长的保存时限、使用前检查设备清洁状况的方法，使操作者能以可重现的、有效的方式对各类设备进行清洁', null, 'd62f9bba23364f50b79aceb519765066', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('78d1712bfe4546d1a23bfdd187cc475e', '0.003.010.230.001.006', 'ss_a', '药品生产管理规范', '所有与该批产品有关的偏差均已有明确的解释或说明，或者已经过彻底调查和适当处理；如偏差还涉及其他批次产品，应当一并处理', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('795dccc155734ff28c5ce144f986b246', '0.003.009.206', 'ss_a', '药品生产管理规范', '有数条包装线同时进行包装时，应当采取隔离或其他有效防止污染、交叉污染或混淆的措施', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('79b417931ffb4e1fa7a49af433d8becd', '0.003.003.023.002.003', 'ss_a', '药品生产管理规范', '确保完成所有必要的检验', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('79b801e9b2994040ab08da8b9e7431f7', '0.003.003.024.002', 'ss_a', '药品生产管理规范', '监督厂区卫生状况', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('79b8db09bf144b84b0115e87d0e2e8b6', '0.003.002.010.003.005', 'ss_a', '药品生产管理规范', '经批准的工艺规程和操作规程', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7ac17da1cf4d48bbab48a1e712e54585', '0.003.011.279', 'ss_a', '药品生产管理规范', '委托生产或委托检验的所有活动，包括在技术或其他方面拟采取的任何变更，均应当符合药品生产许可和注册的有关要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7b0727ca43f64232ae869d4ec7632899', '0.003.010.260', 'ss_a', '药品生产管理规范', '质量管理部门对物料供应商的评估至少应当包括：供应商的资质证明文件、质量标准、检验报告、企业对物料样品的检验数据和报告；如进行现场质量审计和样品小批量试生产的，还应当包括现场质量审计报告，以及小试产品的质量检验报告和稳定性考察报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '440');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7b8801a08e20422aacf6d5a5a55b8e05', '0.003.010.245', 'ss_a', '药品生产管理规范', '变更实施时，应当确保与变更相关的文件均已修订', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7c5c52dc7fe84faa86657506cbeb05c1', '0.003.004.058', 'ss_a', '药品生产管理规范', '仓储区的设计和建造应当确保良好的仓储条件，并有通风和照明设施；仓储区应当能够满足物料或产品的贮存条件（如温湿度、避光）和安全贮存的要求，并进行检查和监控', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7c73335b484b46c0a30fda7799e568e1', '0.003.010.264', 'ss_a', '药品生产管理规范', '质量管理部门应当定期对物料供应商进行评估或现场质量审计，回顾分析物料质量检验结果、质量投诉和不合格处理记录；如物料出现质量问题或生产条件、工艺、质量标准和检验方法等可能影响质量的关键因素发生重大改变时，还应当尽快进行相关的现场质量审计', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '480');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7ca840d004044b15907053a7ab5ef744', '0.003.008.155', 'ss_a', '药品生产管理规范', '文件应当标明题目、种类、目的以及文件编号和版本号；文字应当确切、清晰、易懂，不能模棱两可', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7cb2f53597894a938a2ecbd7e142e350', '0.003.009.203', 'ss_a', '药品生产管理规范', '包装开始前应当进行检查，确保工作场所、包装生产线、印刷机及其他设备已处于清洁或待用状态，无上批遗留的产品、文件或与本批产品包装无关的物料；检查结果应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7cba9759d04742b18f90fc4fa08721e7', '0.003.010.222.002.006', 'ss_a', '药品生产管理规范', '存放样品容器的类型和状态', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7dcee87f47794a91a29eb36e22070de6', '0.003.008.170.002.006', 'ss_a', '药品生产管理规范', '待包装产品的贮存要求，包括容器、标签及特殊贮存条件', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7eabb08027b04b3bad5e1a8fc07a0732', '0.003.010.225.001.001', 'ss_a', '药品生产管理规范', '应当按照操作规程对留样进行管理', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7ee8520a63ea40fbb5a44a72aedd8542', '0.003.004.040', 'ss_a', '药品生产管理规范', '企业应当有整洁的生产环境；厂区的地面、路面及运输等不应当对药品的生产造成污染；生产、行政、生活和辅助区的总体布局应当合理，不得互相妨碍；厂区和厂房内的人、物流走向应当合理', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7efd7f6c80b24c4b9206a42206265bbb', '0.003.003.033', 'ss_a', '药品生产管理规范', '参观人员和未经培训的人员不得进入生产区和质量控制区，特殊情况确需进入的，应当事先对个人卫生、更衣等事项进行指导', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7f4192caefb348eea56d711039d4c4b9', '0.003.008.170.003.002', 'ss_a', '药品生产管理规范', '所需全部包装材料的完整清单，包括包装材料的名称、数量、规格、类型以及与质量标准有关的每一包装材料的代码', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7f5defb0bc974d36ba1f5d1ee77aa087', '0.003.010.230.001.004', 'ss_a', '药品生产管理规范', '变更已按照相关规程处理完毕，需要经药品监督管理部门批准的变更已得到批准', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('7fc92604383e4b5eb13efb50c882ea05', '0.003.008.183.009', 'ss_a', '药品生产管理规范', '投诉', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('801d176730eb42ba9476f6d627605ca9', '0.003.008.170.002.002', 'ss_a', '药品生产管理规范', '关键设备的准备（如清洗、组装、校准、灭菌等）所采用的方法或相应操作规程编号', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('81418e427c9b439dba47d38b551c4aa6', '0.003.010.223.002.003', 'ss_a', '药品生产管理规范', '采用《中华人民共和国药典》及其他法定标准未收载的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('81ca0d1ef2244140bf1f381edc9fd1d7', '0.003.007.142', 'ss_a', '药品生产管理规范', '当影响产品质量的主要因素，如原辅料、与药品直接接触的包装材料、生产设备、生产环境（或厂房）、生产工艺、检验方法等发生变更时，应当进行确认或验证；必要时，还应当经药品监督管理部门批准', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('823ea6c2bb1146cb974a1f88627f97cc', '0.003.010.241', 'ss_a', '药品生产管理规范', '应当建立操作规程，规定原辅料、包装材料、质量标准、检验方法、操作规程、厂房、设施、设备、仪器、生产工艺和计算机软件变更的申请、评估、审核、批准和实施；质量管理部门应当指定专人负责变更控制', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('82b05bfdedc74b0390a2e56305cd37c1', '0.003.009.197.009', 'ss_a', '药品生产管理规范', '生产和清洁过程中应当避免使用易碎、易脱屑、易发霉器具；使用筛网时，应当有防止因筛网断裂而造成污染的措施', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8339f698c8944a55a1e13af47485aa06', '0.003.004.060', 'ss_a', '药品生产管理规范', '接收、发放和发运区域应当能够保护物料、产品免受外界天气（如雨、雪）的影响；接收区的布局和设施应当能够确保到货物料在进入仓储区前可对外包装进行必要的清洁', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('83fd054fd20e44359f898816c0297104', '0.003.006.133.001', 'ss_a', '药品生产管理规范', '回收处理后的产品应当按照回收处理中最早批次产品的生产日期确定有效期', null, 'd1cf71e1c8f84a42b3716e61d4c389c8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8472f241590d4d38984a1cf6520585ab', '0.003.003.024.005', 'ss_a', '药品生产管理规范', '确保企业所有相关人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('850dfc1b012e464a8e24efe8568dd8d6', '0.003.006.119', 'ss_a', '药品生产管理规范', '中间产品和待包装产品应当有明确的标识，并至少标明下述内容：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('853ecdd98d3048c3a0bf3d4773bcdfda', '0.003.002.010.010', 'ss_a', '药品生产管理规范', '调查导致药品投诉和质量缺陷的原因，并采取措施，防止类似质量缺陷再次发生;', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('85857e7ad00a489694c171545108b51d', '0.003.008.179', 'ss_a', '药品生产管理规范', '在包装过程中，进行每项操作时应当及时记录，操作结束后，应当由包装操作人员确认并签注姓名和日期', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '300');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('85b3c3f90f374d0697203446b464e44c', '0.003.012.296', 'ss_a', '药品生产管理规范', '药品发运的零头包装只限两个批号为一个合箱，合箱外应当标明全部批号，并建立合箱记录', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('85c01be5af524b589733f0d0743d26d5', '0.003.002.006', 'ss_a', '药品生产管理规范', '企业高层管理人员应当确保实现既定的质量目标，不同层次的人员以及供应商、经销商应当共同参与并承担各自的责任', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8626fdaeefa64aa28ce1bcc41c8c8488', '0.003.010.234.008', 'ss_a', '药品生产管理规范', '检验项目，如检验项目少于成品质量标准所包含的项目，应当说明理由', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('865e28af48984acb97611fae7df91f88', '0.003.011.292', 'ss_a', '药品生产管理规范', '委托检验合同应当明确受托方有义务接受药品监督管理部门检查', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('86b52d935dfc4ab9a587cbcf5f7feae1', '0.003.009.184', 'ss_a', '药品生产管理规范', '所有药品的生产和包装均应当按照批准的工艺规程和操作规程进行操作并有相关记录，以确保药品达到规定的质量标准，并符合药品生产许可和注册批准的要求', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('87d922c87449409e94af94446eb3bd68', '0.003.004.048.002', 'ss_a', '药品生产管理规范', '口服液体和固体制剂、腔道用药（含直肠用药）、表皮外用药品等非无菌制剂生产的暴露工序区域及其直接接触药品的包装材料最终处理的暴露工序区域，应当参照“无菌药品”附录中D级洁净区的要求设置，企业可根据产品的标准和特性对该区域采取适当的微生物监控措施', null, '348fe09d7b5c46dc9c8f842886976d55', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('88cf543d33dc45cba71012c04bbd17ba', '0.003.009.196', 'ss_a', '药品生产管理规范', '生产厂房应当仅限于经批准的人员出入', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('89796decc44745c395faa70bfe41aa9b', '0.003.010.222.002.010', 'ss_a', '药品生产管理规范', '取样器具的清洁方法和贮存要求', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('89b48008f420404d92f6932db5f03239', '0.003.010.273', 'ss_a', '药品生产管理规范', '所有投诉都应当登记与审核，与产品质量缺陷有关的投诉，应当详细记录投诉的各个细节，并进行调查', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '570');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8a2ce512289e42aa9ee4b4f5cd5fd2fe', '0.003.010.266.002.007', 'ss_a', '药品生产管理规范', '稳定性考察的结果及任何不良趋势', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8a39cc8902694c4b93a415154d8ae805', '0.003.004.059', 'ss_a', '药品生产管理规范', '高活性的物料或产品以及印刷包装材料应当贮存于安全的区域', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8a4bf3be4c1641439ed85abcf5bfe759', '0.003.007.140.002', 'ss_a', '药品生产管理规范', '安装确认应当证明厂房、设施、设备的建造和安装符合设计标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8ae373a6baa942c89de22aedd06c065d', '0.003.003.023.002.001', 'ss_a', '药品生产管理规范', '确保原辅料、包装材料、中间产品、待包装产品和成品符合经注册批准的要求和质量标准', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8b24bde8caa146518a8778e8f61c04c9', '0.003.010.272', 'ss_a', '药品生产管理规范', '应当有专人及足够的辅助人员负责进行质量投诉的调查和处理，所有投诉、调查的信息应当向质量受权人通报', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '560');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8b2e4f49b81c467596c030b696e55ec6', '0.003.009.199', 'ss_a', '药品生产管理规范', '生产开始前应当进行检查，确保设备和工作场所没有上批遗留的产品、文件或与本批产品生产无关的物料，设备处于已清洁及待用状态；检查结果应当有记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8bb06f3ad82545ffb0b387d723442bc3', '0.003.012.294', 'ss_a', '药品生产管理规范', '因质量原因退货和召回的产品，均应当按照规定监督销毁，有证据证明退货产品质量未受影响的除外', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8ca48b9e58384060a08aa39bfbc14b48', '0.003.004.046.004', 'ss_a', '药品生产管理规范', '生产某些激素类、细胞毒性类、高活性化学药品应当使用专用设施（如独立的空气净化系统）和设备；特殊情况下，如采取特别防护措施并经过必要的验证，上述药品制剂则可通过阶段性生产方式共用同一生产设施和设备', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8d459793fbda4ca0b094278e8d0910ca', '0.003.001.002', 'ss_a', '药品生产管理规范', '企业应当建立药品质量管理体系', null, '2324d2d6fb9949c7abb19c4c45587207', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8da5bf212a654ecaa2292411fe68a096', '0.003.006.106.002.005', 'ss_a', '药品生产管理规范', '供应商和生产商（如不同）标识的批号', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8daa22e6661643b3b60316c0f6c62ead', '0.003.005.078', 'ss_a', '药品生产管理规范', '生产用模具的采购、验收、保管、维护、发放及报废应当制定相应操作规程，设专人专柜保管，并有相应记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8e0a0c9ef3bf4348b5be414fa164dbcd', '0.003.007.140.004', 'ss_a', '药品生产管理规范', '性能确认应当证明厂房、设施、设备在正常操作方法和工艺条件下能够持续符合标准', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8f0412c3f50e4cdfb5da626e339f6fa7', '0.003.005.091', 'ss_a', '药品生产管理规范', '应当确保生产和检验使用的关键衡器、量具、仪表、记录和控制设备以及仪器经过校准，所得出的数据准确、可靠', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8f39f1cba9914e5ebbdd3486cb2c87f2', '0.003.006.102.002', 'ss_a', '药品生产管理规范', '进口原辅料应当符合国家相关的进口管理规定', null, '69eef02c1a474f44b73c6393c65833c2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('8f60e02df6e44f0d942d909f3f87f8f4', '0.003.008.170.003.001', 'ss_a', '药品生产管理规范', '以最终包装容器中产品的数量、重量或体积表示的包装形式', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('907a767787af48f49e172362926234f5', '0.003.005.072', 'ss_a', '药品生产管理规范', '应当建立设备使用、清洁、维护和维修的操作规程，并保存相应的操作记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('90a104a62cb4461ea874132ec252efa5', '0.003.002.010.004', 'ss_a', '药品生产管理规范', '应当使用准确、易懂的语言制定操作规程', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('91d42e23ae3140669da49cdde63bfc62', '0.003.008.180.002', 'ss_a', '药品生产管理规范', '包装操作日期和时间', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('91ed9701c2754788b98f88bbbc30a71d', '0.003.009.201.001', 'ss_a', '药品生产管理规范', '清场记录内容包括：操作间编号、产品名称、批号、生产工序、清场日期、检查项目及结果、清场负责人及复核人签名', null, 'ab2aeacbef644038bedce9b7ce0d6a37', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('91f0ee74b1854f16b13ac9a54ffe03dc', '0.003.003.023.002.005', 'ss_a', '药品生产管理规范', '审核和批准所有与质量有关的变更', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('92ea9dd5c24940348e94a059daacefac', '0.003.003.025.002.003', 'ss_a', '药品生产管理规范', '在产品放行前，质量受权人必须按照上述第2项的要求出具产品放行审核记录，并纳入批记录', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('937a4020df8a400d8d3deedec659798f', '0.003.008.162.001', 'ss_a', '药品生产管理规范', '批记录应当由质量管理部门负责管理，至少保存至药品有效期后一年', null, 'c7a7a5dad6a84d1e8e8680867fa010e3', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('93b6f9f8615f40e3beb042ac3d1924d3', '0.003.010.227.002', 'ss_a', '药品生产管理规范', '标准品或对照品应当有适当的标识，内容至少包括名称、批号、制备日期（如有）、有效期（如有）、首次开启日期、含量或效价、贮存条件', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9459c44eb06e4d698bc86d9e45b8995f', '0.003.007.140', 'ss_a', '药品生产管理规范', '应当建立确认与验证的文件和记录，并能以文件和记录证明达到以下预定的目标：', null, 'ff6eb52a08744320bc7255ec6ec142f5', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('94b585a47b8b426897b1320574a0cb7e', '0.003.003.034', 'ss_a', '药品生产管理规范', '任何进入生产区的人员均应当按照规定更衣', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('95dbb97291af4957b02ec791f3f234ca', '0.003.008.170.002.003', 'ss_a', '药品生产管理规范', '详细的生产步骤和工艺参数说明（如物料的核对、预处理、加入物料的顺序、混合时间、温度等）', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('95e71c576b434a3e93f22737abc20c88', '0.003.010.266.002.008', 'ss_a', '药品生产管理规范', '所有因质量原因造成的退货、投诉、召回及调查', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('96ad0cac8d0649aa9505185dcf805491', '0.003.001.001', 'ss_a', '药品生产管理规范', '为规范药品生产质量管理，根据《中华人民共和国药品管理法》、《中华人民共和国药品管理法实施条例》，制定本规范', null, '2324d2d6fb9949c7abb19c4c45587207', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('96d0c52d111148159b86f36e5c0cb7da', '0.003.003.025.002.001', 'ss_a', '药品生产管理规范', '参与企业质量体系建立、内部自检、外部质量审计、验证以及药品不良反应报告、产品召回等质量管理活动', null, 'dae6bf77adbb42d0aaf88dd4c59048f4', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('96deb86dde1145f485b22644d510ada4', '0.003.010.266.002.009', 'ss_a', '药品生产管理规范', '与产品工艺或设备相关的纠正措施的执行情况和效果', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('96e872a7922842baad9a7f99712394ed', '0.003.010.230.001.005', 'ss_a', '药品生产管理规范', '对变更或偏差已完成所有必要的取样、检查、检验和审核', null, '354054eabcef490eaf2162a3864a69ad', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('97003585193849b7a1661e1b8afe6f94', '0.003.003.022.003.006', 'ss_a', '药品生产管理规范', '确保生产相关人员经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('970fb6b3a4bb4a40b872c35ea797eee7', '0.003.006.106', 'ss_a', '药品生产管理规范', '原辅料、与药品直接接触的包装材料和印刷包装材料的接收应当有操作规程，所有到货物料均应当检查，以确保与订单一致，并确认供应商已经质量管理部门批准', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9749060c72574c9ea5f279bb45885a27', '0.003.012', 'ss_a', '药品生产管理规范', '产品发运与召回', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('974b43cd9b294fb78a053f570176d93b', '0.003.003.024.004', 'ss_a', '药品生产管理规范', '确保完成生产工艺验证', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('978a6dbef37c4232949a59565b3d5e58', '0.003.008.183.010', 'ss_a', '药品生产管理规范', '药品召回', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('97e296dae88242d6a170220c39bcc95f', '0.003.003.023.001.001', 'ss_a', '药品生产管理规范', '质量管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，其中至少一年的药品质量管理经验，接受过与所生产产品相关的专业知识培训', null, '9ff6516cbcd4467987ababfbcc1d7056', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9811013aa5084117b04fb78a6db48030', '0.003.009.197', 'ss_a', '药品生产管理规范', '生产过程中应当尽可能采取措施，防止污染和交叉污染，如：', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9822118068af43919cd245bf8d1f33e0', '0.003.010.247', 'ss_a', '药品生产管理规范', '各部门负责人应当确保所有人员正确执行生产工艺、质量标准、检验方法和操作规程，防止偏差的产生', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('98caa5d1bcf145218d9910687db6ef8f', '0.003.008.170.001.002', 'ss_a', '药品生产管理规范', '产品剂型、规格和批量', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('99c71a6a15ef496686012f9a8fdee8e9', '0.003.005.093', 'ss_a', '药品生产管理规范', '衡器、量具、仪表、用于记录和控制的设备以及仪器应当有明显的标识，标明其校准有效期', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('99d7edce55c545c093fdbe6d606760c0', '0.003.003.034.001', 'ss_a', '药品生产管理规范', '工作服的选材、式样及穿戴方式应当与所从事的工作和空气洁净度级别要求相适应', null, '94b585a47b8b426897b1320574a0cb7e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('99e1819ec61e4b539c244bcb95686e60', '0.003.006.106.002', 'ss_a', '药品生产管理规范', '每次接收均应当有记录，内容包括：', null, '970fb6b3a4bb4a40b872c35ea797eee7', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9a3d10ae835c467194e9f66d2869cb73', '0.003.008.168', 'ss_a', '药品生产管理规范', '每种药品的每个生产批量均应当有经企业批准的工艺规程，不同药品规格的每种包装形式均应当有各自的包装操作要求；工艺规程的制定应当以注册批准的工艺为依据', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '190');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9afe6292eed84760b4f8851bb11d3999', '0.003.010.262', 'ss_a', '药品生产管理规范', '质量管理部门应当向物料管理部门分发经批准的合格供应商名单，该名单内容至少包括物料名称、规格、质量标准、生产商名称和地址、经销商（如有）名称等，并及时更新', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '460');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9c02a0190c0449fd9b7b49ad2df649a5', '0.003.010.222.004', 'ss_a', '药品生产管理规范', '留样应当能够代表被取样批次的产品或物料，也可抽取其他样品来监控生产过程中最重要的环节（如生产的开始或结束）', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9c3ccbcf90bc494786f080d2b8f7fa4c', '0.003.003.020.001', 'ss_a', '药品生产管理规范', '质量管理负责人和生产管理负责人不得互相兼任', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9c496ad57e4e4d1e96e6f4ac501802b0', '0.003.010.263', 'ss_a', '药品生产管理规范', '质量管理部门应当与主要物料供应商签订质量协议，在协议中应当明确双方所承担的质量责任', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '470');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9c638ba5adcc4a29aabc78d90cc53d58', '0.003.003.020.003', 'ss_a', '药品生产管理规范', '应当制定操作规程确保质量受权人独立履行职责，不受企业负责人和其他人员的干扰', null, '702ec11db90c491c95575f2eaee10f6e', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9c952a7f1e1044a687f073a737fc8179', '0.003.010.223.005', 'ss_a', '药品生产管理规范', '检验应当有可追溯的记录并应当复核，确保结果与记录一致；所有计算均应当严格核对', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9cad5efef18a472184e69f752496b4b9', '0.003.003.023.002.014', 'ss_a', '药品生产管理规范', '确保质量控制和质量保证人员都已经过必要的上岗前培训和继续培训，并根据实际需要调整培训内容', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9d9a9b61accf43169eee6c1366c04b34', '0.003.005.095', 'ss_a', '药品生产管理规范', '在生产、包装、仓储过程中使用自动或电子设备的，应当按照操作规程定期进行校准和检查，确保其操作功能正常', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9da1787394a24c68a88bb317934bbb89', '0.003.006.134.001', 'ss_a', '药品生产管理规范', '只有不影响产品质量、符合相应质量标准，且根据预定、经批准的操作规程以及对相关风险充分评估后，才允许返工处理；返工应当有相应记录', null, 'a35147e95d464685a931e24bb067a7a7', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9dffab413bf7403188f8d8d7571a2f8c', '0.003.008.183.006', 'ss_a', '药品生产管理规范', '虫害控制', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9e5ea3ab16184876863a96f59cb37c29', '0.003.010.234', 'ss_a', '药品生产管理规范', '持续稳定性考察的时间应当涵盖药品有效期，考察方案应当至少包括以下内容：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9e75610a6e974237b97493af4524543b', '0.003.011.281.001', 'ss_a', '药品生产管理规范', '委托方应当使受托方充分了解与产品或操作相关的各种问题，包括产品或操作对受托方的环境、厂房、设备、人员及其他物料或产品可能造成的危害', null, 'd70605b58e88439fb3a00bcdbaeda7bf', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9eb7f6dae4834fd1916b413d7312de2b', '0.003.010.221.004', 'ss_a', '药品生产管理规范', '除与批记录相关的资料信息外，还应当保存其他原始资料或记录，以方便查阅', null, 'e898bdbbc2324cd49340cef20a89c8f8', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9ec94a0622314aa2943cde74ab6bb7df', '0.003.005.101', 'ss_a', '药品生产管理规范', '应当按照操作规程对纯化水、注射用水管道进行清洗消毒，并有相关记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9f11b4b9d1ac438ebc7be137867c13e1', '0.003.008.170.003.007', 'ss_a', '药品生产管理规范', '待包装产品、印刷包装材料的物料平衡计算方法和限度', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9f8201fc2b084be29df0ec93feceeb8c', '0.003.002.010.003.003', 'ss_a', '药品生产管理规范', '适用的设备和维修保障', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9faed470a7874cd8b96fd24940e3ebf2', '0.003.012.304', 'ss_a', '药品生产管理规范', '召回的进展过程应当有记录，并有最终报告；产品发运数量、已召回数量以及数量平衡情况应当在报告中予以说明', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('9ff6516cbcd4467987ababfbcc1d7056', '0.003.003.023.001', 'ss_a', '药品生产管理规范', '资质：', null, '51e4493425074894a863dae4d80dcb0c', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a09d87ce110240adbc5a959f9b46b4ed', '0.003.002.007', 'ss_a', '药品生产管理规范', '企业应当配备足够的、符合要求的人员、厂房、设施和设备，为实现质量目标提供必要的条件', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a0cf430b1e0a4f1a8abce51fcb275599', '0.003.010.225.001.003.001', 'ss_a', '药品生产管理规范', '每批药品均应当有留样；如果一批药品分成数次进行包装，则每次包装至少应当保留一件最小市售包装的成品', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a146dd23950d475db819cc05033a5339', '0.003.003.032', 'ss_a', '药品生产管理规范', '企业应当采取适当措施，避免体表有伤口、患有传染病或其他可能污染药品疾病的人员从事直接接触药品的生产', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a28be3e190da4ced8b3cb8a30a59ac73', '0.003.009.193', 'ss_a', '药品生产管理规范', '应当检查产品从一个区域输送至另一个区域的管道和其他设备连接，确保连接正确无误', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a2a82a2044244055ad3f34b857b91dd0', '0.003.003.031.001', 'ss_a', '药品生产管理规范', '直接接触药品的生产人员上岗前应当接受健康检查，以后每年至少进行一次健康检查', null, '3b83a4447ff94f0cbd40d259b2845439', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a2b1565c3eb8487098e5910d4cd930a3', '0.003.010.253.006', 'ss_a', '药品生产管理规范', '确保相关信息已传递到质量受权人和预防问题再次发生的直接负责人', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a34f8687b96340369304d06c9a755119', '0.003.012.301', 'ss_a', '药品生产管理规范', '因产品存在安全隐患决定从市场召回的，应当立即向当地药品监督管理部门报告', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a35147e95d464685a931e24bb067a7a7', '0.003.006.134', 'ss_a', '药品生产管理规范', '制剂产品不得进行重新加工；不合格的制剂中间产品、待包装产品和成品一般不得进行返工', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '330');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a3641488ac1344d5a02315dc540393b6', '0.003.009.209', 'ss_a', '药品生产管理规范', '单独打印或包装过程中在线打印的信息（如产品批号或有效期）均应当进行检查，确保其正确无误，并予以记录；如手工打印，应当增加检查频次', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a3c1d3a5a4664a2aae928ec175b359d3', '0.003.010.221.001.005', 'ss_a', '药品生产管理规范', '必要的环境监测操作规程、记录和报告', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a3f95fe0ff4a4df7991130fbaaf91543', '0.003.010.234.003', 'ss_a', '药品生产管理规范', '检验方法依据', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a416287ac6dc439da09531bf6e88a9b6', '0.003.009.200', 'ss_a', '药品生产管理规范', '应当进行中间控制和必要的环境监测，并予以记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a429456c50714c4ca646146024656915', '0.003.006.125', 'ss_a', '药品生产管理规范', '印刷包装材料应当由专人保管，并按照操作规程和需求量发放', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a43f86668c3441c69c795e1188320eb5', '0.003.007.143', 'ss_a', '药品生产管理规范', '清洁方法应当经过验证，证实其清洁的效果，以有效防止污染和交叉污染；清洁验证应当综合考虑设备使用情况、所使用的清洁剂和消毒剂、取样方法和位置以及相应的取样回收率、残留物的性质和限度、残留物检验方法的灵敏度等因素', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a628a5ab3a344ac388172200a81d11ad', '0.003.003.024.010', 'ss_a', '药品生产管理规范', '监控影响产品质量的因素', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a629a587321449fe9b6ff98a51465e3c', '0.003.002.010.006', 'ss_a', '药品生产管理规范', '生产全过程应当有记录，偏差均经过调查并记录', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a67e6ea4b460461cbe0a8ace3f0a6b1a', '0.003.009.195', 'ss_a', '药品生产管理规范', '应当尽可能避免出现任何偏离工艺规程或操作规程的偏差；一旦出现偏差，应当按照偏差处理操作规程执行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a751fb25ea6143a789d4025bfc5cb466', '0.003.005.098', 'ss_a', '药品生产管理规范', '纯化水、注射用水储罐和输送管道所用材料应当无毒、耐腐蚀', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a8a2e50c07e14690858984b7052abe7b', '0.003.009.213.005', 'ss_a', '药品生产管理规范', '在线监控装置的功能是否正常', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a8e68a22bab4412098de7698b086f9fc', '0.003.008.171', 'ss_a', '药品生产管理规范', '每批产品均应当有相应的批生产记录，可追溯该批产品的生产历史以及与质量有关的情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('a9b72a3e00a74b2c9e5c8b054fa48587', '0.003.003.022.003.003', 'ss_a', '药品生产管理规范', '确保批生产记录和批包装记录经过指定人员审核并送交质量管理部门', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aa26b2b703234852b88fcb6efd023cc2', '0.003.004.046.001', 'ss_a', '药品生产管理规范', '应当综合考虑药品的特性、工艺和预定用途等因素，确定厂房、生产设施和设备多产品共用的可行性，并有相应评估报告', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aac09bcaaea04401aaa03624cc06e824', '0.003.009.205', 'ss_a', '药品生产管理规范', '每一包装操作场所或包装生产线，应当有标识标明包装中的产品名称、规格、批号和批量的生产状态', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '220');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aad3ac1a1a5b4da3b4e43d4102dbbed9', '0.003.006', 'ss_a', '药品生产管理规范', '物料与产品', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aae1caa47c1f49c497a18f6d7e6e1b9f', '0.003.003.027.001', 'ss_a', '药品生产管理规范', '除进行本规范理论和实践的培训外，还应当有相关法规、相应岗位的职责、技能的培训，并定期评估培训的实际效果', null, 'e6b95c4c50c7418cbbb0fe663b0c2087', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ab268b5261354918929a040cf2843203', '0.003.006.115', 'ss_a', '药品生产管理规范', '应当由指定人员按照操作规程进行配料，核对物料后，精确称量或计量，并作好标识', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ab2aeacbef644038bedce9b7ce0d6a37', '0.003.009.201', 'ss_a', '药品生产管理规范', '每批药品的每一生产阶段完成后必须由生产操作人员清场，并填写清场记录', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('acde633d9d754e64912b7340f7d11414', '0.003.005.087', 'ss_a', '药品生产管理规范', '生产设备应当有明显的状态标识，标明设备编号和内容物（如名称、规格、批号）；没有内容物的应当标明清洁状态', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('acdfb25d6fca4cdaab17f5d63aad7a0a', '0.003.010.221.001.006', 'ss_a', '药品生产管理规范', '必要的检验方法验证报告和记录', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('adebb43766d740fc9115509f71fdb89c', '0.003.010.222.002.003', 'ss_a', '药品生产管理规范', '所用器具', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ae051185bc3a498e85568b030b8b98ab', '0.003.008.151', 'ss_a', '药品生产管理规范', '企业应当建立文件管理的操作规程，系统地设计、制定、审核、批准和发放文件；与本规范有关的文件应当经质量管理部门的审核', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ae210b502a4f47a9a9faab5a82c7682c', '0.003.011.289', 'ss_a', '药品生产管理规范', '合同应当规定何方负责物料的采购、检验、放行、生产和质量控制（包括中间控制），还应当规定何方负责取样和检验', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ae287f2ffa7a44d087629e3ad486f3fe', '0.003.010.233', 'ss_a', '药品生产管理规范', '持续稳定性考察应当有考察方案，结果应当有报告；用于持续稳定性考察的设备（尤其是稳定性试验设备或设施）应当按照第七章和第五章的要求进行确认和维护', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ae2e67112eea40938d4e1dc45b6b5c15', '0.003.010.225', 'ss_a', '药品生产管理规范', '企业按规定保存的、用于药品质量追溯或调查的物料、产品样品为留样；用于产品稳定性考察的样品不属于留样', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ae7a64952068457ca60f6c5771a0b0cb', '0.003.008.170.003.005', 'ss_a', '药品生产管理规范', '包装操作步骤的说明，包括重要的辅助性操作和所用设备的注意事项、包装材料使用前的核对', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aea7395ba87f48a6880095042d10d74e', '0.003.008.175.003', 'ss_a', '药品生产管理规范', '每一生产工序的负责人签名', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('aeaa779e824d487281ef7b53ca086b67', '0.003.010.269', 'ss_a', '药品生产管理规范', '应当建立药品不良反应报告和监测管理制度，设立专门机构并配备专职人员负责管理', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '530');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('af06a3239a724678b089c2ad41fa58c7', '0.003.010.230.002', 'ss_a', '药品生产管理规范', '药品的质量评价应当有明确的结论，如批准放行、不合格或其他决定', null, 'f8ff0293102a4fa8a3cface3ceb33dbd', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('af27c55ad4fb42f8b366ebbc5a8567c4', '0.003.008.183', 'ss_a', '药品生产管理规范', '下述活动也应当有相应的操作规程，其过程和结果应当有记录：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '340');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('afbf0f389d644b02b3a83e0210e325ca', '0.003.006.105', 'ss_a', '药品生产管理规范', '物料和产品的运输应当能够满足其保证质量的要求，对运输有特殊要求的，其运输条件应当予以确认', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('affef3568b7b4565aff3e8f84811b47f', '0.003.010.252', 'ss_a', '药品生产管理规范', '企业应当建立纠正措施和预防措施系统，对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势等进行调查并采取纠正和预防措施；调查的深度和形式应当与风险的级别相适应；纠正措施和预防措施系统应当能够增进对产品和工艺的理解，改进产品和工艺', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '360');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b0cc314bdff2445db79244ddffbd628d', '0.003.003.024.009', 'ss_a', '药品生产管理规范', '监督本规范执行状况', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b0eed5791124485bac83ed89ccb011cd', '0.003.006.106.002.001', 'ss_a', '药品生产管理规范', '交货单和包装容器上所注物料的名称', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b16a7a2f9d804a749fa583e41a5581c7', '0.003.005.080', 'ss_a', '药品生产管理规范', '应当制定设备的预防性维护计划和操作规程，设备的维护和维修应当有相应的记录', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b1abbb2ce98a4253b065ac94acdff13b', '0.003.003.030.001', 'ss_a', '药品生产管理规范', '生产区和质量控制区的人员应当正确理解相关的人员卫生操作规程', null, '01cafe8e25f740538f0e9b57bd64bba5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b1c722a9d2d24d2cbe7f65bb5ade0a88', '0.003.010.254', 'ss_a', '药品生产管理规范', '实施纠正和预防措施应当有文件记录，并由质量管理部门保存', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '380');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b20e7020c78248c7afc6c818bce61446', '0.003.004.051', 'ss_a', '药品生产管理规范', '排水设施应当大小适宜，并安装防止倒灌的装置；应当尽可能避免明沟排水；不可避免时，明沟宜浅，以方便清洁和消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b24cd627d143431e96f91e08f79c8ef5', '0.003.003.023.002.009', 'ss_a', '药品生产管理规范', '确保完成各种必要的确认或验证工作，审核和批准确认或验证方案和报告', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b37d3d6ffdcd4efda8e14f92027e3edb', '0.003.010.225.001', 'ss_a', '药品生产管理规范', '留样应当至少符合以下要求：', null, 'ae2e67112eea40938d4e1dc45b6b5c15', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b382d4b2470745e09d0c01cc3c8bbd8b', '0.003.008.170.002.007', 'ss_a', '药品生产管理规范', '需要说明的注意事项', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b4f28e34037b4d19975c4eb63c737c37', '0.003.010.253.001', 'ss_a', '药品生产管理规范', '对投诉、召回、偏差、自检或外部检查结果、工艺性能和质量监测趋势以及其他来源的质量数据进行分析，确定已有和潜在的质量问题；必要时，应当采用适当的统计学方法', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b69679d9c52047b6a04283bbbf6ca4f7', '0.003.009.204', 'ss_a', '药品生产管理规范', '包装操作前，还应当检查所领用的包装材料正确无误，核对待包装产品和所用包装材料的名称、规格、数量、质量状态，且与工艺规程相符', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b6dbf6579b834b0a96860cdaca666c7d', '0.003.012.302', 'ss_a', '药品生产管理规范', '产品召回负责人应当能够迅速查阅到药品发运记录', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b86e364ba05a44cd83a15c4d6c9b96b5', '0.003.010.251', 'ss_a', '药品生产管理规范', '质量管理部门应当负责偏差的分类，保存偏差调查、处理的文件和记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '350');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b8aabaf414814ed8bdee66d74fcf349c', '0.003.010.234.004', 'ss_a', '药品生产管理规范', '合格标准', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b8ca9732296e49778f27d23cebc67d5c', '0.003.010.223.006.003', 'ss_a', '药品生产管理规范', '检验所用的仪器或设备的型号和编号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b91cb851cf7142d3be3864826aa8f9db', '0.003.006.111一', 'ss_a', '药品生产管理规范', '次接收数个批次的物料，应当按批取样、检验、放行', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b94068ad64be4f36a9a1db38c8e323e3', '0.003.010.220', 'ss_a', '药品生产管理规范', '质量控制实验室应当配备药典、标准图谱等必要的工具书，以及标准品或对照品等相关的标准物质', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b97ce6566c7241fb93ef29ec040d95ab', '0.003.009.216', 'ss_a', '药品生产管理规范', '包装结束时，已打印批号的剩余包装材料应当由专人负责全部计数销毁，并有记录；如将未打印批号的印刷包装材料退库，应当按照操作规程执行', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '330');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('b9f5175f3fd34d5abf195876085d4376', '0.003.010.221.001.001', 'ss_a', '药品生产管理规范', '质量标准', null, '33e7911066554cd3a3d8227aa775f138', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ba15563c4e5f4ff58bcef2c67c2bf955', '0.003.008.161', 'ss_a', '药品生产管理规范', '记录应当保持清洁，不得撕毁和任意涂改；记录填写的任何更改都应当签注姓名和日期，并使原有信息仍清晰可辨，必要时，应当说明更改的理由；记录如需重新誊写，则原有记录不得销毁，应当作为重新誊写记录的附件保存', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ba1b151180b24c4db07f9d4599f18999', '0.003.010.222.006', 'ss_a', '药品生产管理规范', '样品应当按照规定的贮存要求保存', null, '4a30ae096a2d469086ef62b55c1f3d57', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ba3ae1b792564c52926b9e6185737780', '0.003.010.225.001.004', 'ss_a', '药品生产管理规范', '物料的留样：', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ba4a6153b64b4dcfb6943000b2a0f82f', '0.003.002.009.001', 'ss_a', '药品生产管理规范', '药品的设计与研发体现本规范的要求', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ba4fa61ab4a446018c04ac0ae8d052d5', '0.003.010.266.002.010', 'ss_a', '药品生产管理规范', '新获批准和有变更的药品，按照注册要求上市后应当完成的工作情况', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('baa9d6bb315e416fa72dd3038c340bfd', '0.003.003.024.006', 'ss_a', '药品生产管理规范', '批准并监督委托生产', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bae4a6a560e04f818a15997377c42a8d', '0.003.008.175.006', 'ss_a', '药品生产管理规范', '相关生产操作或活动、工艺参数及控制范围，以及所用主要生产设备的编号', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('baf03d4d64ee43058ed87fd53fcaa6f1', '0.003.008', 'ss_a', '药品生产管理规范', '文件管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bb41ab918eba441fa3c7b8da5cba792f', '0.003.011.284', 'ss_a', '药品生产管理规范', '受托方必须具备足够的厂房、设备、知识和经验以及人员，满足委托方所委托的生产或检验工作的要求', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bb797c8b886b4cad86b05bc65b94c807', '0.003.007.148', 'ss_a', '药品生产管理规范', '确认或验证应当按照预先确定和批准的方案实施，并有记录；确认或验证工作完成后，应当写出报告，并经审核、批准；确认或验证的结果和结论（包括评价和建议）应当有记录并存档', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bc008f2cc84b49709b64465f576ec160', '0.003.010.228', 'ss_a', '药品生产管理规范', '应当分别建立物料和产品批准放行的操作规程，明确批准放行的标准、职责，并有相应的记录', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bc1cec0166824e059d1e93372b49f4a6', '0.003.010.223.006.007', 'ss_a', '药品生产管理规范', '检验结果，包括观察情况、计算和图谱或曲线图，以及依据的检验报告编号', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bcb9babc67fd4e1abf3d41ce822a232a', '0.003.008.165.005', 'ss_a', '药品生产管理规范', '有效期或复验期', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bd274ea7d3a84536b47e2f9aa14f5005', '0.003.004.061.002', 'ss_a', '药品生产管理规范', '如果采用其他方法替代物理隔离，则该方法应当具有同等的安全性', null, '5f01a9476a954dbaace9c044e9a70f9e', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('bd822e547bad4586ac0493776a0f89e6', '0.003.008.175', 'ss_a', '药品生产管理规范', '批生产记录的内容应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '260');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('be60792440cc4dfca846b3e673ebf2a4', '0.003.002.005.002', 'ss_a', '药品生产管理规范', '确保所生产的药品符合预定用途和注册要求', null, '5d89ecc0558e46ebbf301ab4e933d435', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('be6f1441f6df4178bc588499f5ddb5fc', '0.003.010.225.001.003.005', 'ss_a', '药品生产管理规范', '留样观察应当有记录', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('be77637766234dea9607e4fe0f5ad76f', '0.003.002.010.005', 'ss_a', '药品生产管理规范', '操作人员经过培训，能够按照操作规程正确操作', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c0ccb55e74bf47ce9cbda41be7c56107', '0.003.006.106.002.003', 'ss_a', '药品生产管理规范', '接收日期', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c0d37596b88e4e2a954a90ba4a7af153', '0.003.010.225.001.003.004', 'ss_a', '药品生产管理规范', '如果不影响留样的包装完整性，保存期间内至少应当每年对留样进行一次目检观察，如有异常，应当进行彻底调查并采取相应的处理措施', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c0d4522d01b341d8bb037210aeec27a2', '0.003.004', 'ss_a', '药品生产管理规范', '厂房与设施', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c11fc6aca90540078c7a80511d486ef8', '0.003.004.069', 'ss_a', '药品生产管理规范', '更衣室和盥洗室应当方便人员进出，并与使用人数相适应；盥洗室不得与生产区和仓储区直接相通', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c14818e248e3456c8f63091716d6a363', '0.003.003.024.003', 'ss_a', '药品生产管理规范', '确保关键设备经过确认', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c16e14b1c9c548c08bc2c5d2e097b182', '0.003.010.258', 'ss_a', '药品生产管理规范', '现场质量审计应当核实供应商资质证明文件和检验报告的真实性，核实是否具备检验条件；应当对其人员机构、厂房设施和设备、物料管理、生产工艺流程和生产管理、质量控制实验室的设备、仪器、文件管理等进行检查，以全面评估其质量保证系统；现场质量审计应当有报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '420');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c1b2e44ecf974dc4becd61dc6404c5e7', '0.003.008.157', 'ss_a', '药品生产管理规范', '原版文件复制时，不得产生任何差错；复制的文件应当清晰可辨', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c1b982139b9147dfb599137366c9f2f6', '0.003.002.012', 'ss_a', '药品生产管理规范', '质量控制的基本要求：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c1eabd3626454705a12147415ec01d66', '0.003.007.139', 'ss_a', '药品生产管理规范', '企业的厂房、设施、设备和检验仪器应当经过确认，应当采用经过验证的生产工艺、操作规程和检验方法进行生产、操作和检验，并保持持续的验证状态', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c220e0481d2641cd8770cc4adae3f76a', '0.003.010.266.002.003', 'ss_a', '药品生产管理规范', '所有不符合质量标准的批次及其调查', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c22a04edd68f416daeb6ef4097bea83e', '0.003.010.256', 'ss_a', '药品生产管理规范', '应当建立物料供应商评估和批准的操作规程，明确供应商的资质、选择的原则、质量评估方式、评估标准、物料供应商批准的程序', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '400');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c2729b7b0a1e47408cfbe378b7a90a51', '0.003.003.022.002', 'ss_a', '药品生产管理规范', '生产管理负责人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少三年从事药品生产和质量管理的实践经验，其中至少有一年的药品生产管理经验，接受过与所生产产品相关的专业知识培训', null, '483b74dacc094bb4bd6760ed61348b91', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c2ec9e8a8ed1489191082b1224a6f1de', '0.003.013.307', 'ss_a', '药品生产管理规范', '自检应当有计划，对机构与人员、厂房与设施、设备、物料与产品、确认与验证、文件管理、生产管理、质量控制与质量保证、委托生产与委托检验、产品发运与召回等项目定期进行检查', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c35ba60dca8749d5995821f0be6a9e17', '0.003.006.106.002.002', 'ss_a', '药品生产管理规范', '企业内部所用物料名称和（或）代码', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c556081aa01f477a8f47841b49c64c87', '0.003.010.234.001', 'ss_a', '药品生产管理规范', '每种规格、每个生产批量药品的考察批次数', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c57ca6d580224a9ab7d4163dbf10c585', '0.003.005.085', 'ss_a', '药品生产管理规范', '已清洁的生产设备应当在清洁、干燥的条件下存放', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '150');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c68adc0394334bfa929c70f989789275', '0.003.002', 'ss_a', '药品生产管理规范', '质量管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c6b0c7680d2741c1b6eec58905b6bc46', '0.003.002.014', 'ss_a', '药品生产管理规范', '应当根据科学知识及经验对质量风险进行评估，以保证产品质量', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c6fc2069aeb24d15afd788891356b401', '0.003.006.137.001', 'ss_a', '药品生产管理规范', '评价考虑的因素至少应当包括药品的性质、所需的贮存条件、药品的现状、历史，以及发运与退货之间的间隔时间等因素；不符合贮存和运输要求的退货，应当在质量管理部门监督下予以销毁', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c768f2d9aa8b442d83f199d2400bfd16', '0.003.006.135', 'ss_a', '药品生产管理规范', '对返工或重新加工或回收合并后生产的成品，质量管理部门应当考虑需要进行额外相关项目的检验和稳定性考察', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '340');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c7a7a5dad6a84d1e8e8680867fa010e3', '0.003.008.162', 'ss_a', '药品生产管理规范', '每批药品应当有批记录，包括批生产记录、批包装记录、批检验记录和药品放行审核记录等与本批产品有关的记录', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c80fc1052a1d491ea9843099b18faf89', '0.003.008.170.001.001', 'ss_a', '药品生产管理规范', '产品名称和产品代码', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c8d2061a24eb4e5cbf19b9a9f0911547', '0.003.010.223.008', 'ss_a', '药品生产管理规范', '应当对实验室容量分析用玻璃仪器、试剂、试液、对照品以及培养基进行质量检查', null, '57de58f1774d4f90852961a935310aef', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('c93e7cb48d2c47759c7937d9af33f96c', '0.003.006.137.004', 'ss_a', '药品生产管理规范', '退货处理的过程和结果应当有相应记录', null, '392bf14c61e64feeb568f5ef770abfb0', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cab8972cecb3464b8766ade52aa5afdd', '0.003.003.023.002', 'ss_a', '药品生产管理规范', '主要职责：', null, '51e4493425074894a863dae4d80dcb0c', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cb2fcd1cb5c74339bcda36581cd97c08', '0.003.009.191', 'ss_a', '药品生产管理规范', '生产期间使用的所有物料、中间产品或待包装产品的容器及主要设备、必要的操作室应当贴签标识或以其他方式标明生产中的产品或物料名称、规格和批号，如有必要，还应当标明生产工序', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cb5e5e98b4fe43968c91f3ca6e39a3b1', '0.003.010.223.002', 'ss_a', '药品生产管理规范', '符合下列情形之一的，应当对检验方法进行验证：', null, '57de58f1774d4f90852961a935310aef', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cb7fcf162bb34ded9d0694afa2cce127', '0.003.008.175.009', 'ss_a', '药品生产管理规范', '对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cbc599498e9b4408916565f163c42014', '0.003.010.223.006.002', 'ss_a', '药品生产管理规范', '依据的质量标准和检验操作规程', null, '061fed69d2314950b22ad2ff053e5aed', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cbd91f27b5e04f4bad7b0e0f71ce8993', '0.003.009', 'ss_a', '药品生产管理规范', '生产管理', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cbdda2906144424a8153ff8a82785e95', '0.003.006.119.004', 'ss_a', '药品生产管理规范', '生产工序（必要时）', null, '850dfc1b012e464a8e24efe8568dd8d6', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cc1351b04e924637bb7c8d6e62719ac2', '0.003.006.130', 'ss_a', '药品生产管理规范', '麻醉药品、精神药品、医疗用毒性药品（包括药材）、放射性药品、药品类易制毒化学品及易燃、易爆和其他危险品的验收、贮存、管理应当执行国家有关的规定', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ccb69e6e8c6446f1b047a11cad7442d8', '0.003.007.140.001', 'ss_a', '药品生产管理规范', '设计确认应当证明厂房、设施、设备的设计符合预定用途和本规范要求', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cce580d1e61d41e1b2fb71e20f9f2f20', '0.003.004.062', 'ss_a', '药品生产管理规范', '通常应当有单独的物料取样区；取样区的空气洁净度级别应当与生产要求一致；如在其他区域或采用其他方式取样，应当能够防止污染或交叉污染', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ccfc7d42bad242d2ac3bbb5211e21fe2', '0.003.008.181', 'ss_a', '药品生产管理规范', '操作规程的内容应当包括：题目、编号、版本号、颁发部门、生效日期、分发部门以及制定人、审核人、批准人的签名并注明日期，标题、正文及变更历史', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '320');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cd14928a239b448b867c2e45246cd038', '0.001', 'PARAM_TYPE', '参数分类科目', '测试测试测试', '', '0', '0', '0', 'book.png', '1');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cd5644684ce646c1bab34c93b578d6ab', '0.003.008.165', 'ss_a', '药品生产管理规范', '物料的质量标准一般应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ce094f877f7845ac88f99b9d19d1bb8e', '0.003.006.106.001', 'ss_a', '药品生产管理规范', '物料的外包装应当有标签，并注明规定的信息；必要时，还应当进行清洁，发现外包装损坏或其他可能影响物料质量的问题，应当向质量管理部门报告并进行调查和记录', null, '970fb6b3a4bb4a40b872c35ea797eee7', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ceaa67ae87284c4db2d7845fa0ebe542', '0.003.010.255', 'ss_a', '药品生产管理规范', '质量管理部门应当对所有生产用物料的供应商进行质量评估，会同有关部门对主要物料供应商（尤其是生产商）的质量体系进行现场质量审计，并对质量评估不符合要求的供应商行使否决权', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '390');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('cfdcef6248704ea8b373dc0a22ee18e0', '0.003.005.099', 'ss_a', '药品生产管理规范', '纯化水、注射用水的制备、贮存和分配应当能够防止微生物的滋生；纯化水可采用循环，注射用水可采用70℃以上保温循环', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d051676dde2b4bfaaceed1ba321e16de', '0.003.009.213.004', 'ss_a', '药品生产管理规范', '打印信息是否正确', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d0cf4f74c4c64b67b99e79e438806edf', '0.003.010.225.001.003.007', 'ss_a', '药品生产管理规范', '如企业终止药品生产或关闭的，应当将留样转交受权单位保存，并告知当地药品监督管理部门，以便在必要时可随时取得留样', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d11204412fbb45d893c182ad02440805', '0.003.002.012.005', 'ss_a', '药品生产管理规范', '取样、检查、检验应当有记录，偏差应当经过调查并记录', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d18d1b8225254489aaaa88d41a84969b', '0.003.003.019', 'ss_a', '药品生产管理规范', '职责通常不得委托给他人；确需委托的，其职责可委托给具有相当资质的指定人员', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d191faa3fbff4c36a5d5319b17c48b9c', '0.003.004.041', 'ss_a', '药品生产管理规范', '应当对厂房进行适当维护，并确保维修活动不影响药品的质量；应当按照详细的书面操作规程对厂房进行清洁或必要的消毒', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d1922b39a89e4d4cb80f41b05ef4379c', '0.003.006.112.004', 'ss_a', '药品生产管理规范', '有效期或复验期', null, '592e4ee14c654bf1a91b016cb3258f23', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d1a1a600ce354a6ca99dcf7eb3998695', '0.003.002.010', 'ss_a', '药品生产管理规范', '药品生产质量管理的基本要求：', null, 'c68adc0394334bfa929c70f989789275', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d1a99b7da3ad4bbba46cb7ca595e1650', '0.003.005.074', 'ss_a', '药品生产管理规范', '生产设备不得对药品质量产生任何不利影响；与药品直接接触的生产设备表面应当平整、光洁、易清洗或消毒、耐腐蚀，不得与药品发生化学反应、吸附药品或向药品中释放物质', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d1cf71e1c8f84a42b3716e61d4c389c8', '0.003.006.133', 'ss_a', '药品生产管理规范', '产品回收需经预先批准，并对相关的质量风险进行充分评估，根据评估结论决定是否回收；回收应当按照预定的操作规程进行，并有相应记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '320');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d207761b01c04b8291e2e23e5591c85b', '0.003.008.167', 'ss_a', '药品生产管理规范', '成品的质量标准应当包括：', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '0', '0', 'folder2.png', '180');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d2105ae6da7c4231b44d47a3abf68a79', '0.003.010.277', 'ss_a', '药品生产管理规范', '企业出现生产失误、药品变质或其他重大质量问题，应当及时采取相应措施，必要时还应当向当地药品监督管理部门报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '610');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d3301063fca3450ea9798467597a9145', '0.003.008.172', 'ss_a', '药品生产管理规范', '批生产记录应当依据现行批准的工艺规程的相关内容制定；记录的设计应当避免填写差错；批生产记录的每一页应当标注产品的名称、规格和批号', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d37c36aafe8948d9aa9512154b3dcce8', '0.003.010.226.004', 'ss_a', '药品生产管理规范', '试液和已配制的培养基应当标注配制批号、配制日期和配制人员姓名，并有配制（包括灭菌）记录；不稳定的试剂、试液和培养基应当标注有效期及特殊贮存条件；标准液、滴定液还应当标注最后一次标化的日期和校正因子，并有标化记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d398275d3c8c475489e754fc8e66642f', '0.003.005.075', 'ss_a', '药品生产管理规范', '应当配备有适当量程和精度的衡器、量具、仪器和仪表', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d3df7c68fbcd4dbebcc033ea9b9b749a', '0.003.010.225.001.003.003', 'ss_a', '药品生产管理规范', '每批药品的留样数量一般至少应当能够确保按照注册批准的质量标准完成两次全检（无菌检查和热原检查等除外）', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d40545c60f194b30bba50356056ee353', '0.003.008.165.003', 'ss_a', '药品生产管理规范', '定性和定量的限度要求', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d40883038b964c389761d0bb8b3f0396', '0.003.010.225.001.003.006', 'ss_a', '药品生产管理规范', '留样应当按照注册批准的贮存条件至少保存至药品有效期后一年', null, '74658df043774a82a7657e7f99d6d6ef', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d40ba7c934514792850c5dacee69991f', '0.003.008.165.002', 'ss_a', '药品生产管理规范', '取样、检验方法或相关操作规程编号', null, 'cd5644684ce646c1bab34c93b578d6ab', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d4470bb287754b42b717f34873471d6c', '0.003.008.183.002', 'ss_a', '药品生产管理规范', '设备的装配和校准', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d4490d4e0a0247119066eb8c71aca510', '0.003.009.213.002', 'ss_a', '药品生产管理规范', '包装是否完整', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d4926ab0165c45e6ab223a7a262f7b83', '0.003.008.152', 'ss_a', '药品生产管理规范', '文件的内容应当与药品生产许可、药品注册等相关要求一致，并有助于追溯每批产品的历史情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d498c6fefb3c4d359ab769b8f63ffb3b', '0.003.010.222.002.004', 'ss_a', '药品生产管理规范', '样品量', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d4b6eadaf61b4c3ba93d4cc9e76e5852', '0.003.003.026', 'ss_a', '药品生产管理规范', '企业应当指定部门或专人负责培训管理工作，应当有经生产管理负责人或质量管理负责人审核或批准的培训方案或计划，培训记录应当予以保存', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d52c836981014f7592987f5216811516', '0.003.006.103.001', 'ss_a', '药品生产管理规范', '物料和产品的处理应当按照操作规程或工艺规程执行，并有记录', null, 'f218d7d693944519bc4004c5a2213091', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d60a5b04880047b48d728457bf590f9b', '0.003.011.286', 'ss_a', '药品生产管理规范', '受托方不得从事对委托生产或检验的产品质量有不利影响的活动', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d62f9bba23364f50b79aceb519765066', '0.003.005.084', 'ss_a', '药品生产管理规范', '应当按照详细规定的操作规程清洁生产设备', null, 'db912341ff7c46fb90cba85d6bc0825a', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d66f797a3e8e42089e98712bd2f3dc45', '0.003.010.226.003', 'ss_a', '药品生产管理规范', '应当按照相关规定或使用说明配制、贮存和使用试剂、试液和培养基；特殊情况下，在接收或使用前，还应当对试剂进行鉴别或其他检验', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d6ae8a919aca4185aedf04e3200a4c33', '0.003.006.124', 'ss_a', '药品生产管理规范', '印刷包装材料应当设置专门区域妥善存放，未经批准人员不得进入；切割式标签或其他散装印刷包装材料应当分别置于密闭容器内储运，以防混淆', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d6c0f91567a14141a047c2d9c96c061e', '0.003.008.167.006', 'ss_a', '药品生产管理规范', '贮存条件和注意事项', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d6ef94901bfc483ba80bfede48b79753', '0.003.010.227.001', 'ss_a', '药品生产管理规范', '标准品或对照品应当按照规定贮存和使用', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d70605b58e88439fb3a00bcdbaeda7bf', '0.003.011.281', 'ss_a', '药品生产管理规范', '委托方应当向受托方提供所有必要的资料，以使受托方能够按照药品注册和其他法定要求正确实施所委托的操作', null, '76189b338913443aa65b7d3dc83cb549', '0', '0', 'folder2.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d747f6fa34a14f39b3661726874c353c', '0.003.008.180.006', 'ss_a', '药品生产管理规范', '根据工艺规程所进行的检查记录，包括中间控制结果', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d75e44422f7641e484fac4d8c0dd5df9', '0.003.010.236', 'ss_a', '药品生产管理规范', '某些情况下，持续稳定性考察中应当额外增加批次数，如重大变更或生产和包装有重大偏差的药品应当列入稳定性考察；此外，重新加工、返工或回收的批次，也应当考虑列入考察，除非已经过验证和稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '200');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d7d7fcf5233d46a9abab7132f2fddd18', '0.003.003.025.001.001', 'ss_a', '药品生产管理规范', '质量受权人应当至少具有药学或相关专业本科学历（或中级专业技术职称或执业药师资格），具有至少五年从事药品生产和质量管理的实践经验，从事过药品生产过程控制和质量检验工作', null, '42fa75f81a264971ac4b41af192e5042', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d7dc38f552a04b7ca25ac0867865569a', '0.003.002.010.001', 'ss_a', '药品生产管理规范', '制定生产工艺，系统地回顾并证明其可持续稳定地生产出符合要求的产品', null, 'd1a1a600ce354a6ca99dcf7eb3998695', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d817d7917e6a41978f1376d78037f430', '0.003.001.003.001', 'ss_a', '药品生产管理规范', '旨在最大限度地降低药品生产过程中污染、交叉污染以及混淆、差错等风险，确保持续稳定地生产出符合预定用途和注册要求的药品', null, 'db26174ea02742949914658de8ca637e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d81a4774efe448118f93b9baaf34a36f', '0.003.007.140.005', 'ss_a', '药品生产管理规范', '工艺验证应当证明一个生产工艺按照规定的工艺参数能够持续生产出符合预定用途和注册要求的产品', null, '9459c44eb06e4d698bc86d9e45b8995f', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d8407a4a393b44d3a059bdc7bed184ef', '0.003.006.132', 'ss_a', '药品生产管理规范', '不合格的物料、中间产品、待包装产品和成品的处理应当经质量管理负责人批准，并有记录', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '310');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d871fb2905d6466db70d6adb75b5eb81', '0.003.010.253.004', 'ss_a', '药品生产管理规范', '评估纠正和预防措施的合理性、有效性和充分性', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d8efd2e25f294a41a32500a63335888d', '0.003.007.144', 'ss_a', '药品生产管理规范', '确认和验证不是一次性的行为；首次确认或验证后，应当根据产品质量回顾分析情况进行再确认或再验证；关键的生产工艺和操作规程应当定期进行再验证，确保其能够达到预期结果', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d921e5a64a18486e90c0006dd841282a', '0.003.007.141', 'ss_a', '药品生产管理规范', '采用新的生产处方或生产工艺前，应当验证其常规生产的适用性；生产工艺在使用规定的原辅料和设备条件下，应当能够始终生产出符合预定用途和注册要求的产品', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d9723c6e68a2406d934d8c4493a93b25', '0.003.002.010.003.004', 'ss_a', '药品生产管理规范', '正确的原辅料、包装材料和标签', null, '40a0aa96bdad44a88929f140700183ce', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('d983eb02be0f42b1aa0e0fa3150f4395', '0.003.004.045', 'ss_a', '药品生产管理规范', '应当保存厂房、公用设施、固定管道建造或改造后的竣工图纸', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dae63d2e4a9e41408030378764b98558', '0.003.009.213.003', 'ss_a', '药品生产管理规范', '产品和包装材料是否正确', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dae6bf77adbb42d0aaf88dd4c59048f4', '0.003.003.025.002', 'ss_a', '药品生产管理规范', '主要职责：', null, '0f156e5386a2404cb559734cb4c723d4', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('db0ce0e74b164e13889db18acfa0baa2', '0.003.010.229.003', 'ss_a', '药品生产管理规范', '物料应当由指定人员签名批准放行', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('db26174ea02742949914658de8ca637e', '0.003.001.003', 'ss_a', '药品生产管理规范', '本规范作为质量管理体系的一部分，是药品生产管理和质量控制的基本要求', null, '2324d2d6fb9949c7abb19c4c45587207', '0', '0', 'folder2.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('db8e0f82c25e4c28bef63e070066c91b', '0.003.002.013', 'ss_a', '药品生产管理规范', '质量风险管理是在整个产品生命周期中采用前瞻或回顾的方式，对质量风险进行评估、控制、沟通、审核的系统过程', null, 'c68adc0394334bfa929c70f989789275', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('db912341ff7c46fb90cba85d6bc0825a', '0.003.005', 'ss_a', '药品生产管理规范', '设备', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dc144feb673845009c88a9750d6c3860', '0.003.003.018.001', 'ss_a', '药品生产管理规范', '岗位职责不得遗漏，交叉的职责应当有明确规定；每个人所承担的职责不应当过多', null, '513f0ba88fbd4ff0baa9fcfcd24b9bab', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dc941c2d802042d1844887d9dfb2a7a3', '0.003.008.170.003.004', 'ss_a', '药品生产管理规范', '需要说明的注意事项，包括对生产区和设备进行的检查，在包装操作开始前，确认包装生产线的清场已经完成等', null, '505a5ceada204646bb0c10c6db4a5b90', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dcadb62d45494076b83692f4d6aaa1b8', '0.003.009.213.006', 'ss_a', '药品生产管理规范', '样品从包装生产线取走后不应当再返还，以防止产品混淆或污染', null, '0fa96b431b3c4d3096ea95c9945e369d', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dd2af270cc794d81ad23d0652ef6d0df', '0.003.010.256.001', 'ss_a', '药品生产管理规范', '如质量评估需采用现场质量审计方式的，还应当明确审计内容、周期、审计人员的组成及资质；需采用样品小批量试生产的，还应当明确生产批量、生产工艺、产品质量标准、稳定性考察方案', null, 'c22a04edd68f416daeb6ef4097bea83e', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dd80776763d54ff6ad130f8cb55fd5da', '0.003.005.098.001', 'ss_a', '药品生产管理规范', '储罐的通气口应当安装不脱落纤维的疏水性除菌滤器', null, 'a751fb25ea6143a789d4025bfc5cb466', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dd83bd9c5734470db267403e82a4e22c', '0.003.010.223.002.001', 'ss_a', '药品生产管理规范', '采用新的检验方法', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('de35744dc9914d018de7e9585b31b782', '0.003.006.109.001', 'ss_a', '药品生产管理规范', '使用完全计算机化仓储管理系统进行识别的，物料、产品等相关信息可不必以书面可读的方式标出', null, 'eb4426cb6be14363b3c4bd7a5cf669f8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('de7efa18cddc493cb97e69b424562b20', '0.003.008.170.002.005', 'ss_a', '药品生产管理规范', '预期的最终产量限度，必要时，还应当说明中间产品的产量限度，以及物料平衡的计算方法和限度', null, '27d99e9f3a5e4e9cbe6b254c05c23be9', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('dee27c258ed34630b60ed833a4b7fa3c', '0.003.004.050', 'ss_a', '药品生产管理规范', '各种管道、照明设施、风口和其他公用设施的设计和安装应当避免出现不易清洁的部位，应当尽可能在生产区外部对其进行维护', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '130');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('df30fd1f6dfb4b738def1e023e937fed', '0.003.008.170.001.003', 'ss_a', '药品生产管理规范', '所用原辅料清单（包括生产过程中使用，但不在成品中出现的物料），阐明每一物料的指定名称、代码和用量；如原辅料的用量需要折算时，还应当说明计算方法', null, 'ecb749656a80416a82b35c02c1be1e6a', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e004fb338c414da586289213d5987635', '0.003.009.197.010', 'ss_a', '药品生产管理规范', '液体制剂的配制、过滤、灌封、灭菌等工序应当在规定时间内完成', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e09fb912c36a415da9785f75a4489a6d', '0.003.007.138', 'ss_a', '药品生产管理规范', '企业应当确定需要进行的确认或验证工作，以证明有关操作的关键要素能够得到有效控制；确认或验证的范围和程度应当经过风险评估来确定', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e0d1682b220341f9980b3785c45f8604', '0.001.002', 'PARAM_TYPE', '参数分类科目', '会健健康康理解', null, 'cd14928a239b448b867c2e45246cd038', '1', '0', null, '0');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e0f5a2bcd28a4459996e133d1db0faf6', '0.003.009.197.006', 'ss_a', '药品生产管理规范', '采用经过验证或已知有效的清洁和去污染操作规程进行设备清洁；必要时，应当对与物料直接接触的设备表面的残留物进行检测', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e18de5c9d0284f18a05603bb1cc86cd8', '0.003.003.024.001', 'ss_a', '药品生产管理规范', '审核和批准产品的工艺规程、操作规程等文件', null, '30ff70c79797405abee2ef03471082f8', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e1947e4d73c6450bbebe724595a2276d', '0.003.007.147', 'ss_a', '药品生产管理规范', '应当根据确认或验证的对象制定确认或验证方案，并经审核、批准；确认或验证方案应当明确职责', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e21b5d035844478f9cef05e8687c9b85', '0.003.008.180.004', 'ss_a', '药品生产管理规范', '包装工序的操作人员签名', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e249c25610154493a294f7e52cc0a0d4', '0.003.003.021', 'ss_a', '药品生产管理规范', '企业负责人', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e3a77addc673422fb2bd3cf87f2bd2f5', '0.003.008.165.001.002', 'ss_a', '药品生产管理规范', '质量标准的依据', null, 'e6cbfb8000e3486a8dcff2f630ab8c02', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e3f8e335ea17447b8711362dd1d03539', '0.003.008.167.001', 'ss_a', '药品生产管理规范', '产品名称以及产品代码', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e41ae4e57743413f9a7e8300a9df6c9a', '0.003.011.288', 'ss_a', '药品生产管理规范', '合同应当详细规定质量受权人批准放行每批药品的程序，确保每批产品都已按照药品注册的要求完成生产和检验', null, '76189b338913443aa65b7d3dc83cb549', '1', '0', 'default.png', '110');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e4294ddff24f4d8dab8de3be61070820', '0.003.008.180.009', 'ss_a', '药品生产管理规范', '对特殊问题或异常事件的记录，包括对偏离工艺规程的偏差情况的详细说明或调查报告，并经签字批准', null, '27240e39a91e431587e74d73562ddb13', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e45fe95dc98f4973b2ed29f2491e2a7c', '0.003.006.136.001', 'ss_a', '药品生产管理规范', '产品名称、批号、规格、数量、退货单位及地址、退货原因及日期、最终处理意见；同一产品同一批号不同渠道的退货应当分别记录、存放和处理', null, 'f4e7a70329f94388938f742457fb45d5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e4c018fea67f43f9aab0758f7592b5ab', '0.003.010.227.003', 'ss_a', '药品生产管理规范', '企业如需自制工作标准品或对照品，应当建立工作标准品或对照品的质量标准以及制备、鉴别、检验、批准和贮存的操作规程，每批工作标准品或对照品应当用法定标准品或对照品进行标化，并确定有效期，还应当通过定期标化证明工作标准品或对照品的效价或含量在有效期内保持稳定；标化的过程和结果应当有相应的记录', null, '097063939f1c422c9a1e9c7ac1347c27', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e50a033faf4240feacde1995c24c2524', '0.003.010.222.002.009', 'ss_a', '药品生产管理规范', '贮存条件', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e5ea16ae33514c43a5417440f1970a0a', '0.003.010', 'ss_a', '药品生产管理规范', '质量控制与质量保证', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e650cbb30e924d5199accc7ae2fb7dcf', '0.003.010.253.003', 'ss_a', '药品生产管理规范', '确定所需采取的纠正和预防措施，防止问题的再次发生', null, '73bfa184258241efa0446b7a09feac3f', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e6a5493c90f84e20b49b6b2481581b2d', '0.003.006.107', 'ss_a', '药品生产管理规范', '物料接收和成品生产后应当及时按照待验管理，直至放行', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e6b95c4c50c7418cbbb0fe663b0c2087', '0.003.003.027', 'ss_a', '药品生产管理规范', '与药品生产、质量有关的所有人员都应当经过培训，培训的内容应当与岗位的要求相适应', null, '18ab8dcf7740492ca667eb9fb0bdc864', '0', '0', 'folder2.png', '120');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e6cbfb8000e3486a8dcff2f630ab8c02', '0.003.008.165.001', 'ss_a', '药品生产管理规范', '物料的基本信息：', null, 'cd5644684ce646c1bab34c93b578d6ab', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e6ee3df87f284b1a96bcacadd72fbb8f', '0.003.008.175.001', 'ss_a', '药品生产管理规范', '产品名称、规格、批号', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e79b4728b8654499b736d413e4e8f2cf', '0.003.012.300', 'ss_a', '药品生产管理规范', '召回应当能够随时启动，并迅速实施', null, '9749060c72574c9ea5f279bb45885a27', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e80f02637689470da9165fc8d4b932d3', '0.003.006.128', 'ss_a', '药品生产管理规范', '成品放行前应当待验贮存', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e87d84390e7d4c2abe47bf20c3821098', '0.003.008.176', 'ss_a', '药品生产管理规范', '每批产品或每批中部分产品的包装，都应当有批包装记录，以便追溯该批产品包装操作以及与质量有关的情况', null, 'baf03d4d64ee43058ed87fd53fcaa6f1', '1', '0', 'default.png', '270');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e898bdbbc2324cd49340cef20a89c8f8', '0.003.010.221', 'ss_a', '药品生产管理规范', '质量控制实验室的文件应当符合第八章的原则，并符合下列要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e8b5ace53dea45a297ff641cc3015fe7', '0.003.008.175.008', 'ss_a', '药品生产管理规范', '不同生产工序所得产量及必要时的物料平衡计算', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e8c93e1814e64b54ad733c434bddfe5a', '0.003.002.012.002', 'ss_a', '药品生产管理规范', '应当有批准的操作规程，用于原辅料、包装材料、中间产品、待包装产品和成品的取样、检查、检验以及产品的稳定性考察，必要时进行环境监测，以确保符合本规范的要求', null, 'c1b982139b9147dfb599137366c9f2f6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('e957a5c5419b423eba225f255f559c1f', '0.003.005.098.002', 'ss_a', '药品生产管理规范', '管道的设计和安装应当避免死角、盲管', null, 'a751fb25ea6143a789d4025bfc5cb466', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ea4be59f7dd64dca8709109ce0857652', '0.003.002.009.010', 'ss_a', '药品生产管理规范', '按照自检操作规程，定期检查评估质量保证系统的有效性和适用性', null, '567d2749135e43c1a4ce3f1240bbb538', '1', '0', 'default.png', '100');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('eaa6b57cc3bf498289e0be20c63d2ac4', '0.003.008.167.007', 'ss_a', '药品生产管理规范', '有效期', null, 'd207761b01c04b8291e2e23e5591c85b', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('eb1e0ffd3f5946fca35b23a2f7798c47', '0.003', 'ss_a', '药品生产质量管理规范', '药品生产质量管理规范', '', '0', '0', '1', 'book.png', '0');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('eb4426cb6be14363b3c4bd7a5cf669f8', '0.003.006.109', 'ss_a', '药品生产管理规范', '使用计算机化仓储管理的，应当有相应的操作规程，防止因系统故障、停机等特殊情况而造成物料和产品的混淆和差错', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('eb783d48bea34bb9aad4269a2696e762', '0.003.003.036', 'ss_a', '药品生产管理规范', '生产区、仓储区应当禁止吸烟和饮食，禁止存放食品、饮料、香烟和个人用药品等非生产用物品', null, '18ab8dcf7740492ca667eb9fb0bdc864', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ec9c0b134b8e4076af0067ac402e40de', '0.003.010.237', 'ss_a', '药品生产管理规范', '关键人员，尤其是质量受权人，应当了解持续稳定性考察的结果；当持续稳定性考察不在待包装产品和成品的生产企业进行时，则相关各方之间应当有书面协议，且均应当保存持续稳定性考察的结果以供药品监督管理部门审查', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '210');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ec9e2018abff415c98f88128b2f2cca0', '0.003.010.225.001.002', 'ss_a', '药品生产管理规范', '留样应当能够代表被取样批次的物料或产品', null, 'b37d3d6ffdcd4efda8e14f92027e3edb', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ecb749656a80416a82b35c02c1be1e6a', '0.003.008.170.001', 'ss_a', '药品生产管理规范', '生产处方：', null, '4d5267631db44a94b845c70f4d338bb2', '0', '0', 'folder2.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ecd49d3b15e449348f97e4affef365cf', '0.003.008.183.003', 'ss_a', '药品生产管理规范', '厂房和设备的维护、清洁和消毒', null, 'af27c55ad4fb42f8b366ebbc5a8567c4', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ecec458fad9245d8a504c69921e53a02', '0.003.010.226.006', 'ss_a', '药品生产管理规范', '应当有检验所需的各种检定菌，并建立检定菌保存、传代、使用、销毁的操作规程和相应记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('edab2eb34a504fdc9b9095371767d913', '0.003.010.234.007', 'ss_a', '药品生产管理规范', '贮存条件（应当采用与药品标示贮存条件相对应的《中华人民共和国药典》规定的长期稳定性试验标准条件）', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ee58053de69c4f7a83d742ae674dbfe7', '0.003.004.046.003', 'ss_a', '药品生产管理规范', '生产β-内酰胺结构类药品、性激素类避孕药品必须使用专用设施（如独立的空气净化系统）和设备，并与其他药品生产区严格分开', null, '646cc50840244f55982cdddad599b133', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ee7719a501fe494db7834379a55e1d5d', '0.003.004.044', 'ss_a', '药品生产管理规范', '应当采取适当措施，防止未经批准人员的进入；生产、贮存和质量控制区不应当作为非本区工作人员的直接通道', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('eef8fe8c67824d23bb21c1ea9ab82449', '0.003.006.129', 'ss_a', '药品生产管理规范', '成品的贮存条件应当符合药品注册批准的要求', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '280');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f00146bee0094f098dd1ca8b190b3d7b', '0.003.010.250.002', 'ss_a', '药品生产管理规范', '企业还应当采取预防措施有效防止类似偏差的再次发生', null, '200aa421f6dd4781a2bc05f3649620cc', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f06d6387e7484d34a0a680b6eac72f96', '0.003.009.185', 'ss_a', '药品生产管理规范', '应当建立划分产品生产批次的操作规程，生产批次的划分应当能够确保同一批次产品质量和特性的均一性', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f1802dd92ad142c8b1b9193f3279626a', '0.003.010.226.005', 'ss_a', '药品生产管理规范', '配制的培养基应当进行适用性检查，并有相关记录；应当有培养基使用记录', null, '07e0f065f3c9426499633d4c642a2de2', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f1cfcb9f7d884f9cb9d36214465a0b8a', '0.003.009.190', 'ss_a', '药品生产管理规范', '在干燥物料或产品，尤其是高活性、高毒性或高致敏性物料或产品的生产过程中，应当采取特殊措施，防止粉尘的产生和扩散', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f218d7d693944519bc4004c5a2213091', '0.003.006.103', 'ss_a', '药品生产管理规范', '应当建立物料和产品的操作规程，确保物料和产品的正确接收、贮存、发放、使用和发运，防止污染、交叉污染、混淆和差错', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f255f88cc7f54fe5a5397e8bed014124', '0.003.010.240', 'ss_a', '药品生产管理规范', '企业应当建立变更控制系统，对所有影响产品质量的变更进行评估和管理；需要经药品监督管理部门批准的变更应当在得到批准后方可实施', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f2ee3280a3eb4335a1d8c5c2146a3220', '0.003.010.222.002.005', 'ss_a', '药品生产管理规范', '分样的方法', null, '43b2d7e605d2496683ab290fdba63975', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f3750a99af9f4650ba5dc31df4fddd27', '0.003.006.126', 'ss_a', '药品生产管理规范', '每批或每次发放的与药品直接接触的包装材料或印刷包装材料，均应当有识别标志，标明所用产品的名称和批号', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '250');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f469f6a4fdda406284577dec7fb18421', '0.003.003.023.002.004', 'ss_a', '药品生产管理规范', '批准质量标准、取样方法、检验方法和其他质量管理的操作规程', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f47ca4b173e34e23adebe5ab50507178', '0.003.007.145', 'ss_a', '药品生产管理规范', '企业应当制定验证总计划，以文件形式说明确认与验证工作的关键信息', null, 'ff6eb52a08744320bc7255ec6ec142f5', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f488b8e8151c4a2e90eb41b6e1ddab9c', '0.003.008.175.002', 'ss_a', '药品生产管理规范', '生产以及中间工序开始、结束的日期和时间', null, 'bd822e547bad4586ac0493776a0f89e6', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f4e7a70329f94388938f742457fb45d5', '0.003.006.136', 'ss_a', '药品生产管理规范', '企业应当建立药品退货的操作规程，并有相应的记录，内容至少应当包括：', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '0', '0', 'folder2.png', '350');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f56d0d92eaab45329453f9bccbb36fe3', '0.003.010.225.001.004.001', 'ss_a', '药品生产管理规范', '制剂生产用每批原辅料和与药品直接接触的包装材料均应当有留样；与药品直接接触的包装材料（如输液瓶），如成品已有留样，可不必单独留样', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f5dcbe0314bb4cbcade92eeb454de494', '0.003.006.106.002.006', 'ss_a', '药品生产管理规范', '接收总量和包装容器数量', null, '99e1819ec61e4b539c244bcb95686e60', '1', '0', 'default.png', '60');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f640466a21cb452d831f57624b826b31', '0.003.010.234.002', 'ss_a', '药品生产管理规范', '相关的物理、化学、微生物和生物学检验方法，可考虑采用稳定性考察专属的检验方法', null, '9e5ea3ab16184876863a96f59cb37c29', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f677ed564ba340f8ac32ebe32bb75573', '0.003.005.097.001', 'ss_a', '药品生产管理规范', '水处理设备的运行不得超出其设计能力', null, '4b3ec78fb64b40119efa1c74c456fb76', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f6b81bdc2ebb4b4a9812a18ad0a09587', '0.003.009.197.007', 'ss_a', '药品生产管理规范', '采用密闭系统生产', null, '9811013aa5084117b04fb78a6db48030', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f74b2a58630d447188c0a205145a54aa', '0.003.002.008.001', 'ss_a', '药品生产管理规范', '企业必须建立质量保证系统，同时建立完整的文件体系，以保证系统有效运行', null, '7747e2bf7aa645a6ac8d3f43d37e259b', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f78353bbf1d848efacca84aa5a427b15', '0.003.003.023.002.008', 'ss_a', '药品生产管理规范', '监督厂房和设备的维护，以保持其良好的运行状态', null, 'cab8972cecb3464b8766ade52aa5afdd', '1', '0', 'default.png', '80');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f7c136f9e57341eb9c3c9418144664e7', '0.003.004.039', 'ss_a', '药品生产管理规范', '应当根据厂房及生产防护措施综合考虑选址，厂房所处的环境应当能够最大限度地降低物料或产品遭受污染的风险', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f801331c3ea643478b12813b43f68e55', '0.003.005.086', 'ss_a', '药品生产管理规范', '用于药品生产或检验的设备和仪器，应当有使用日志，记录内容包括使用、清洁、维护和维修情况以及日期、时间、所生产及检验的药品名称、规格和批号等', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '160');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f8c2ac31fddd41ce93ba4c9a71eb791f', '0.003.010.268', 'ss_a', '药品生产管理规范', '药品委托生产时，委托方和受托方之间应当有书面的技术协议，规定产品质量回顾分析中各方的责任，确保产品质量回顾分析按时进行并符合要求', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '520');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f8ff0293102a4fa8a3cface3ceb33dbd', '0.003.010.230', 'ss_a', '药品生产管理规范', '产品的放行应当至少符合以下要求：', null, 'e5ea16ae33514c43a5417440f1970a0a', '0', '0', 'folder2.png', '140');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('f9914cf61c0343efb2d327f7f95042c2', '0.003.006.110', 'ss_a', '药品生产管理规范', '应当制定相应的操作规程，采取核对或检验等适当措施，确认每一包装内的原辅料正确无误', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '90');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fa4712fd6d51444bae7449f3618f32f4', '0.003.013.306', 'ss_a', '药品生产管理规范', '质量管理部门应当定期组织对企业进行自检，监控本规范的实施情况，评估企业是否符合本规范要求，并提出必要的纠正和预防措施', null, '6e48d6cc50ba41cba4e6fede4d798c35', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fa54a3e021bc4128bc0caf9274144a2a', '0.003.010.259', 'ss_a', '药品生产管理规范', '必要时，应当对主要物料供应商提供的样品进行小批量试生产，并对试生产的药品进行稳定性考察', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '430');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('faa1cb779b4d4edfa155bd75b48a63c9', '0.003.005.094', 'ss_a', '药品生产管理规范', '不得使用未经校准、超过校准有效期、失准的衡器、量具、仪表以及用于记录和控制的设备、仪器', null, 'db912341ff7c46fb90cba85d6bc0825a', '1', '0', 'default.png', '240');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fae8efe5861c405abdd12e01f9eac27d', '0.003.010.229.001', 'ss_a', '药品生产管理规范', '物料的质量评价内容应当至少包括生产商的检验报告、物料包装完整性和密封性的检查情况和检验结果', null, '31ce174bd01446659f7f82c74a7b145d', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fb0e9d7a67e94cfb9c65cb10d753e005', '0.003.010.223.002.002', 'ss_a', '药品生产管理规范', '检验方法需变更的', null, 'cb5e5e98b4fe43968c91f3ca6e39a3b1', '1', '0', 'default.png', '20');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fb1bb00ed17f49aab5bca7a92c5f0ec7', '0.003.011.289.001', 'ss_a', '药品生产管理规范', '在委托检验的情况下，合同应当规定受托方是否在委托方的厂房内取样', null, 'ae210b502a4f47a9a9faab5a82c7682c', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fb753c2e0ae54cfc8e8795edc959bd75', '0.003.003.022.003.004', 'ss_a', '药品生产管理规范', '确保厂房和设备的维护保养，以保持其良好的运行状态', null, '5804d3ba08a641399ab7ef4ac5d6735c', '1', '0', 'default.png', '40');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fbf84fb446a442c5854f2c900a7be5e0', '0.003.009.186.001', 'ss_a', '药品生产管理规范', '每批药品均应当编制唯一的批号', null, 'ffbdf6f1aef0405080547b2be2c6c170', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fc0a7119b5174e14a6eef9884ffaaeda', '0.003.010.239', 'ss_a', '药品生产管理规范', '应当根据所获得的全部数据资料，包括考察的阶段性结论，撰写总结报告并保存；应当定期审核总结报告', null, 'e5ea16ae33514c43a5417440f1970a0a', '1', '0', 'default.png', '230');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fcf9376948104da1b8d7cb43f71f4f78', '0.003.006.108', 'ss_a', '药品生产管理规范', '物料和产品应当根据其性质有序分批贮存和周转，发放及发运应当符合先进先出和近效期先出的原则', null, 'aad3ac1a1a5b4da3b4e43d4102dbbed9', '1', '0', 'default.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fd9773377b2649a9bde3bc354ccf69f4', '0.003.008.163.001', 'ss_a', '药品生产管理规范', '使用电子数据处理系统的，只有经授权的人员方可输入或更改数据，更改和删除情况应当有记录；应当使用密码或其他方式来控制系统的登录；关键数据输入后，应当由他人独立进行复核', null, '343389a3dc8749b69f46d05f742450f5', '1', '0', 'default.png', '10');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fe19292755524456aebd88637c973860', '0.003.004.054', 'ss_a', '药品生产管理规范', '用于药品包装的厂房或区域应当合理设计和布局，以避免混淆或交叉污染；如同一区域内有数条包装线，应当有隔离措施', null, 'c0d4522d01b341d8bb037210aeec27a2', '1', '0', 'default.png', '170');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fe2fbf44f2d94750b49e286aabd3ad07', '0.003.010.225.001.004.003', 'ss_a', '药品生产管理规范', '除稳定性较差的原辅料外，用于制剂生产的原辅料（不包括生产过程中使用的溶剂、气体或制药用水）和与药品直接接触的包装材料的留样应当至少保存至产品放行后二年；如果物料的有效期较短，则留样时间可相应缩短', null, 'ba3ae1b792564c52926b9e6185737780', '1', '0', 'default.png', '30');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('fe915b0898524988939a144667d7f71e', '0.003.010.266.002.005', 'ss_a', '药品生产管理规范', '生产工艺或检验方法等的所有变更', null, '523844c52a6d48b88327de4eaf675792', '1', '0', 'default.png', '50');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ff6eb52a08744320bc7255ec6ec142f5', '0.003.007', 'ss_a', '药品生产管理规范', '确认与验证', null, 'eb1e0ffd3f5946fca35b23a2f7798c47', '0', '0', 'folder2.png', '70');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ffadf8ce87db410a8c38673f41123bac', '0.003.009.212', 'ss_a', '药品生产管理规范', '包装材料上印刷或模压的内容应当清晰，不易褪色和擦除', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '1', '0', 'default.png', '290');
INSERT INTO `ss_checkjob_checkitem_copy` VALUES ('ffbdf6f1aef0405080547b2be2c6c170', '0.003.009.186', 'ss_a', '药品生产管理规范', '应当建立编制药品批号和确定生产日期的操作规程', null, 'cbd91f27b5e04f4bad7b0e0f71ce8993', '0', '0', 'folder2.png', '30');

-- ----------------------------
-- Table structure for `ss_checkjob_job`
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
-- Records of ss_checkjob_job
-- ----------------------------
INSERT INTO `ss_checkjob_job` VALUES ('13fa658fe77a4452aeba067aa69f910a', '金耀测试检查任务', '1f5e09c2e1ed4b0f8eb193580fc60f2d', '2', '40a954d5f1de4acc8454ee1d5bc2b523', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:58:14', 'c321c891521446bdac49ae2bb29d7a00', '2099-12-31 00:00:00', '哈哈哈', '3', '2016-05-20 09:58:58', '2', 'be8d6dacb14a42c7bb31893f3dcb922b', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_checkjob_job` VALUES ('22663e41b31a4ca68051173b24105ce3', '天津局自执行检查测试1', 'e20dddafbd8043db8fc6f44c46b602bb', '0', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:15:57', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', '天津局自执行检查测试1', '-1', '2016-05-16 02:56:28', '1', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job` VALUES ('2a94cff1da254f37a4b907a8fd6b1c4d', 'bhtest2', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:52:48', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', null, '10', '2016-05-17 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128');
INSERT INTO `ss_checkjob_job` VALUES ('33d4e7e7c47b4b3b9fb749ea9ef60041', 'jxtest1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:56:00', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', 'jxtest1', '7', '2016-05-18 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128');
INSERT INTO `ss_checkjob_job` VALUES ('72f59330be7748fc99e6968bb6400c5e', '蓟县分局自身测试1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'e470153e65ff4acf84ef6bba89290519', '2016-05-20 02:35:38', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', '蓟县分局自身测试1', '4', '2016-05-11 02:56:28', '2', 'd12df3a736c742c58da176dbbd52d128', 'd12df3a736c742c58da176dbbd52d128');
INSERT INTO `ss_checkjob_job` VALUES ('7a476a7f9da54b1cabb1158445f65926', '测试1', '3bf1c8399c7a4eeaaf4197211318887d', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:30:05', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', null, '10', '2016-05-20 09:32:43', '2', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job` VALUES ('86c72188723e4e738d61f62531f73d26', 'aaa', 'e20dddafbd8043db8fc6f44c46b602bb', '0', '03aa6e8bddce4f1599c9f7fb396fb12f', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 03:28:19', null, '2099-12-31 00:00:00', 'aaa', '-1', '2016-05-12 02:56:28', null, 'be8d6dacb14a42c7bb31893f3dcb922b', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job` VALUES ('8f1099da100b4794930c0257ef0b6eb1', '短测试2', 'e20dddafbd8043db8fc6f44c46b602bb', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:28:29', 'c4db76be7dd94f95b5213b885f919cba', '2099-12-31 00:00:00', null, '6', '2016-05-13 02:56:28', '3', 'be742f86c9914e7b83bfb531c2e693df', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job` VALUES ('9169fa8fd0c04136a8144e5763102a26', 'a企业自查任务测试1', 'cc65b6abe5444eae8b2adfd516b2240e', '2', '00a6355517874ab9ac9c89184d438124', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-20 02:58:20', '5f6b500ffdf642349a1b46203c147ee0', '2099-12-31 00:00:00', 'a企业自查任务测试1', '5', '2016-05-20 03:01:06', '3', '00a6355517874ab9ac9c89184d438124', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_checkjob_job` VALUES ('e12c736dbf9d44f08e02c53a3e1d49cb', '天津局分配给蓟县分局任务测试1', '900fcf39cf11462ebc5fb7fa940aa727', '2', '00a6355517874ab9ac9c89184d438124', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 01:28:52', 'e470153e65ff4acf84ef6bba89290519', '2099-12-31 00:00:00', '天津局分配给蓟县分局任务测试1', '10', '2016-05-19 03:01:06', '2', 'd12df3a736c742c58da176dbbd52d128', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job` VALUES ('e4af019f7a544cbb99d84092b11d57d5', '滨海自身测试1', '761081eb53d84e24973aae34425066cf', '2', '02dba066a2894ac08fafe0dc599caba2', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 02:38:12', 'c321c891521446bdac49ae2bb29d7a00', '2099-12-31 00:00:00', '滨海自身测试1', '8', '2016-05-19 03:01:06', '2', 'be8d6dacb14a42c7bb31893f3dcb922b', 'be8d6dacb14a42c7bb31893f3dcb922b');

-- ----------------------------
-- Table structure for `ss_checkjob_job_detail`
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
-- Records of ss_checkjob_job_detail
-- ----------------------------
INSERT INTO `ss_checkjob_job_detail` VALUES ('0cc252c9712e444f89f08ce6f9661689', '72f59330be7748fc99e6968bb6400c5e', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('0cd518393d7c4408baf622832a3130fc', '7a476a7f9da54b1cabb1158445f65926', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('0d44bc27104a4f3b86d5945903a78b1e', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:34:10', 'e470153e65ff4acf84ef6bba89290519', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('0f86863cf10e4a118fd2e00749702611', 'e4af019f7a544cbb99d84092b11d57d5', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('143f0192a2ed45e99cadb5cb8d58efe0', '2a94cff1da254f37a4b907a8fd6b1c4d', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('22a39f31e7da46bd973aa1cd497fbb41', '22663e41b31a4ca68051173b24105ce3', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:16:56', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('29353c502a714b48943a115a4a150175', '7a476a7f9da54b1cabb1158445f65926', 'd398275d3c8c475489e754fc8e66642f', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('514c4d7672d54a3e86c90a182879b5f8', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:34:01', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('5689fc26bd4e4dd39d8292884c7b17fc', '7a476a7f9da54b1cabb1158445f65926', '54baa8900f3d4fe8860ea3012f0c1be4', '2016-05-20 09:32:43', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('56c9f47b078c44df9595eeb726bf6116', '22663e41b31a4ca68051173b24105ce3', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:20:55', 'c4db76be7dd94f95b5213b885f919cba', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('5faa67fc8dc84499801e8ea0cd2a84f3', '86c72188723e4e738d61f62531f73d26', '5fc58867e9994545b77cb63e3e25daae', null, null, '-1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('65667662c43b4d4b97aa925b60ebe8c1', 'e12c736dbf9d44f08e02c53a3e1d49cb', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:34:01', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('693ea554f3da4384ab5897104a50319d', '9169fa8fd0c04136a8144e5763102a26', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('6e7ff7cdb02848aba78163ad50bd5210', '33d4e7e7c47b4b3b9fb749ea9ef60041', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('756e2051e6594ec792fbb3764dadb685', '9169fa8fd0c04136a8144e5763102a26', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('793e94113a4b492a8b3d67b05eabcde0', '9169fa8fd0c04136a8144e5763102a26', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 03:01:06', '5f6b500ffdf642349a1b46203c147ee0', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('7c4a40e21e3f4d598a2facc10a391f14', '2a94cff1da254f37a4b907a8fd6b1c4d', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('80d88aa094eb4a2da33ea598625c370d', '86c72188723e4e738d61f62531f73d26', '0bb7ce792fbc4cff809c71af3c70a8e1', null, null, '-1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('8242280848ba40a5b4878a68716156e3', '72f59330be7748fc99e6968bb6400c5e', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('82c61771ad8a43edba11e739605c4bc4', '9169fa8fd0c04136a8144e5763102a26', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 03:01:00', '5f6b500ffdf642349a1b46203c147ee0', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('84f7e804325342cf8f7ca44144eb40b6', 'e12c736dbf9d44f08e02c53a3e1d49cb', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:34:10', 'e470153e65ff4acf84ef6bba89290519', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('868b79cbe1404417880e28350ee93e1c', '8f1099da100b4794930c0257ef0b6eb1', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:45:04', 'c4db76be7dd94f95b5213b885f919cba', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('911ae8fca47345a3bf8fc32bc91e4c4d', '22663e41b31a4ca68051173b24105ce3', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:16:56', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('9435a591923f47eea7bbd01dd9bc8824', 'e4af019f7a544cbb99d84092b11d57d5', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('954d2db794564eada9893fa030e35cfe', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:56:28', 'e470153e65ff4acf84ef6bba89290519', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('99c0b65ca63243b3941fd8ff3fa53aec', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('a05275d226e544a7b3408cf47086cc8b', '7a476a7f9da54b1cabb1158445f65926', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('a190cb3ecfcb4d729bc6c75ae1062208', 'e4af019f7a544cbb99d84092b11d57d5', '06254582303d4460a97b92d2b2113146', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('a41e7a274ff34e48ae27781fba519409', '13fa658fe77a4452aeba067aa69f910a', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 09:58:58', 'c321c891521446bdac49ae2bb29d7a00', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('b5261d801ae144608a764c3d96e1dfa9', '13fa658fe77a4452aeba067aa69f910a', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:58:58', 'c321c891521446bdac49ae2bb29d7a00', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('b67e6885af4e418fbd1c715914de4674', '7a476a7f9da54b1cabb1158445f65926', 'd1a99b7da3ad4bbba46cb7ca595e1650', '2016-05-20 09:32:42', 'c4db76be7dd94f95b5213b885f919cba', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('c8f3db3bcf804fd08f62926681766812', '8f1099da100b4794930c0257ef0b6eb1', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:36:02', 'c4db76be7dd94f95b5213b885f919cba', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('d06e2bddbb2a400a965cc4e0f4d0ebc8', '33d4e7e7c47b4b3b9fb749ea9ef60041', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 02:56:12', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('d69e065c8e0748a4ba981da54d8e0c4f', '2a94cff1da254f37a4b907a8fd6b1c4d', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '3');
INSERT INTO `ss_checkjob_job_detail` VALUES ('e39e7157b2bb46e8bda44bc7ffa31a65', '7a476a7f9da54b1cabb1158445f65926', '106a89d7353b439cb5eb000da7e6d881', '2016-05-20 09:32:43', 'c4db76be7dd94f95b5213b885f919cba', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('e407dc61322d4ece944c0844d0811236', 'e4af019f7a544cbb99d84092b11d57d5', '5ba89728daeb4a6999238a2939748145', '2016-05-20 02:39:52', 'c321c891521446bdac49ae2bb29d7a00', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('ee44e951d1c04bf19fd9e89997cc69ee', '72f59330be7748fc99e6968bb6400c5e', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('ef8e2e1b840f48db9638a514ed4694c5', '2a94cff1da254f37a4b907a8fd6b1c4d', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:53:02', 'e470153e65ff4acf84ef6bba89290519', '2');
INSERT INTO `ss_checkjob_job_detail` VALUES ('f2a7188f49594127aaf40a614a443f61', '86c72188723e4e738d61f62531f73d26', '96ad0cac8d0649aa9505185dcf805491', null, null, '-1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('f40f954de6684f539a8e2e605102dd60', '72f59330be7748fc99e6968bb6400c5e', '85c01be5af524b589733f0d0743d26d5', '2016-05-20 02:35:56', 'e470153e65ff4acf84ef6bba89290519', '1');
INSERT INTO `ss_checkjob_job_detail` VALUES ('f491b10f573b4c4da0e8342334a70606', '8f1099da100b4794930c0257ef0b6eb1', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:45:19', 'c4db76be7dd94f95b5213b885f919cba', '2');

-- ----------------------------
-- Table structure for `ss_checkjob_job_result`
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
-- Records of ss_checkjob_job_result
-- ----------------------------

-- ----------------------------
-- Table structure for `ss_checkjob_job_tem`
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
-- Records of ss_checkjob_job_tem
-- ----------------------------
INSERT INTO `ss_checkjob_job_tem` VALUES ('0794ae8b15804c1784ef18b4cad18565', 'aa', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-19 08:47:58', null, '5ba89728daeb4a6999238a2939748145,06254582303d4460a97b92d2b2113146,f74b2a58630d447188c0a205145a54aa,85c01be5af524b589733f0d0743d26d5,', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_checkjob_job_tem` VALUES ('1f5e09c2e1ed4b0f8eb193580fc60f2d', 'test2222', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:56:20', null, '6fcab2ec600d492bb17d3c8eb142a92d,ba4a6153b64b4dcfb6943000b2a0f82f,', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_checkjob_job_tem` VALUES ('3bf1c8399c7a4eeaaf4197211318887d', '测试2', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:28:47', null, '54baa8900f3d4fe8860ea3012f0c1be4,106a89d7353b439cb5eb000da7e6d881,d398275d3c8c475489e754fc8e66642f,d1a99b7da3ad4bbba46cb7ca595e1650,be60792440cc4dfca846b3e673ebf2a4,5fc58867e9994545b77cb63e3e25daae,', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job_tem` VALUES ('4919954eab334b8c9a70b7eaeb2b7981', '长模版', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-18 14:34:49', null, '1cb4228a85e44a6e9e0ae3b9b94d09cc,fb1bb00ed17f49aab5bca7a92c5f0ec7,29b81c1d4802456ea8025a56636bc79b,6d3e449431944c129371ed6be8be3d11,fa4712fd6d51444bae7449f3618f32f4,7c73335b484b46c0a30fda7799e568e1,9c496ad57e4e4d1e96e6f4ac501802b0,a3f95fe0ff4a4df7991130fbaaf91543,f640466a21cb452d831f57624b826b31,bc008f2cc84b49709b64465f576ec160,e4c018fea67f43f9aab0758f7592b5ab,21c400482d5f49088bba1d33c3a64134,755295eff8744e5f93e9360e91bc12ec,16c8e1581a32447191b6c12ae78d7703,2dbff7d7c0d6469993a4f137e37b2f0c,45129b544a3148caa7ed11a69db06f64,cb7fcf162bb34ded9d0694afa2cce127,98caa5d1bcf145218d9910687db6ef8f,c80fc1052a1d491ea9843099b18faf89,e3a77addc673422fb2bd3cf87f2bd2f5,6252b1c89ef247179d46db0a08b6e5b6,3776ae04982348a2a14469ed3e57abcb,472a032b4f534675acac3602e946ef69,e1947e4d73c6450bbebe724595a2276d,bb797c8b886b4cad86b05bc65b94c807,72d65040039f4c3f8ca72e22495797fc,d8407a4a393b44d3a059bdc7bed184ef,02eec96dfbf0440fa16a2caaf168c812,cc1351b04e924637bb7c8d6e62719ac2,eef8fe8c67824d23bb21c1ea9ab82449,b91cb851cf7142d3be3864826aa8f9db,f9914cf61c0343efb2d327f7f95042c2,de35744dc9914d018de7e9585b31b782,fcf9376948104da1b8d7cb43f71f4f78,77ef62f7f6644cbba6c3011cac207b68,37e65c6b652348b984e34f41fef3f614,228fb3a3a54649f8b3d84d759f916e1c,0ddff71c42164db3b755ab0198bbfdcc,b16a7a2f9d804a749fa583e41a5581c7,37e72140320d4cdfb52acf286a70f4e2,8daa22e6661643b3b60316c0f6c62ead,2d7af66ddec7413c842c294dc599bb4a,d398275d3c8c475489e754fc8e66642f,6eea078283214dbaa3612819b59346b0,8a39cc8902694c4b93a415154d8ae805,8339f698c8944a55a1e13af47485aa06,bd274ea7d3a84536b47e2f9aa14f5005,cce580d1e61d41e1b2fb71e20f9f2f20,b20e7020c78248c7afc6c818bce61446,dee27c258ed34630b60ed833a4b7fa3c,2365f90d42f14ace8f4298f236643a7f,87d922c87449409e94af94446eb3bd68,59f9422d36414718b72fc604ee5acf2a,79b417931ffb4e1fa7a49af433d8becd,33292f2c24384e7197742f40b8018e71,29999d34870b41f9ad4e791b5feec11e,c2729b7b0a1e47408cfbe378b7a90a51,f74b2a58630d447188c0a205145a54aa,5fc58867e9994545b77cb63e3e25daae,08f43a3729da415bb1b56dcd7a2e68ab,96ad0cac8d0649aa9505185dcf805491,', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_checkjob_job_tem` VALUES ('54c9392998734269b0075c7adc40c104', 'test11111', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-20 09:55:40', null, '06254582303d4460a97b92d2b2113146,a09d87ce110240adbc5a959f9b46b4ed,be60792440cc4dfca846b3e673ebf2a4,', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_checkjob_job_tem` VALUES ('5cbd9b0e26ea491da62259580f244a86', 'testnew1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 09:14:08', null, '12ef81ff422441eab5924c18443e1807,6fcab2ec600d492bb17d3c8eb142a92d,f74b2a58630d447188c0a205145a54aa,a09d87ce110240adbc5a959f9b46b4ed,', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job_tem` VALUES ('761081eb53d84e24973aae34425066cf', '滨海模版1', 'c321c891521446bdac49ae2bb29d7a00', '2016-05-19 13:52:16', null, '5ba89728daeb4a6999238a2939748145,6fcab2ec600d492bb17d3c8eb142a92d,06254582303d4460a97b92d2b2113146,f74b2a58630d447188c0a205145a54aa,', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_checkjob_job_tem` VALUES ('900fcf39cf11462ebc5fb7fa940aa727', '蓟县分局模版1', 'e470153e65ff4acf84ef6bba89290519', '2016-05-18 16:46:34', null, 'ba4a6153b64b4dcfb6943000b2a0f82f,f74b2a58630d447188c0a205145a54aa,a09d87ce110240adbc5a959f9b46b4ed,85c01be5af524b589733f0d0743d26d5,', 'd12df3a736c742c58da176dbbd52d128');
INSERT INTO `ss_checkjob_job_tem` VALUES ('c3f4273431c94d9bbc4ec5daca923bc8', '天津局测试模版1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-18 15:35:07', null, '73842ea9aff84bbaa90898cc64be3ab6,85b3c3f90f374d0697203446b464e44c,3e73743f2e024d12bce72c4aed8a4c40,f255f88cc7f54fe5a5397e8bed014124,7f5defb0bc974d36ba1f5d1ee77aa087,fe2fbf44f2d94750b49e286aabd3ad07,f56d0d92eaab45329453f9bccbb36fe3,853ecdd98d3048c3a0bf3d4773bcdfda,1a66f7071b784ab9bd647652c3d93429,1809e810e0994707bcf6ae104b160710,5d9ec80c4df7478dbc58cac6ca36fe0c,6d0fe6e941444a19813694dc2fd7f45c,00a0aeba317840509f2f15d94fd6a1b3,c2729b7b0a1e47408cfbe378b7a90a51,29999d34870b41f9ad4e791b5feec11e,97e296dae88242d6a170220c39bcc95f,', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_checkjob_job_tem` VALUES ('cc65b6abe5444eae8b2adfd516b2240e', '企业自创建模版测试1', '5f6b500ffdf642349a1b46203c147ee0', '2016-05-17 09:21:39', null, 'a09d87ce110240adbc5a959f9b46b4ed,85c01be5af524b589733f0d0743d26d5,08f43a3729da415bb1b56dcd7a2e68ab,96ad0cac8d0649aa9505185dcf805491,', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_checkjob_job_tem` VALUES ('e20dddafbd8043db8fc6f44c46b602bb', '天津局测试短模版1', 'c4db76be7dd94f95b5213b885f919cba', '2016-05-20 00:14:47', null, '0bb7ce792fbc4cff809c71af3c70a8e1,5fc58867e9994545b77cb63e3e25daae,96ad0cac8d0649aa9505185dcf805491,', 'be742f86c9914e7b83bfb531c2e693df');

-- ----------------------------
-- Table structure for `ss_checkjob_job_tem_item`
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
-- Records of ss_checkjob_job_tem_item
-- ----------------------------
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('01268134af8d452a982b00d5ec6fac46', '3bf1c8399c7a4eeaaf4197211318887d', 'd398275d3c8c475489e754fc8e66642f', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('018470c1eecd41cbb59d5e079726ac05', '900fcf39cf11462ebc5fb7fa940aa727', '85c01be5af524b589733f0d0743d26d5', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('04af182f0a4947f581c13ddfd891a08a', '4919954eab334b8c9a70b7eaeb2b7981', 'eef8fe8c67824d23bb21c1ea9ab82449', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('08cf24561d1148fda728aa95e4234679', '4919954eab334b8c9a70b7eaeb2b7981', '228fb3a3a54649f8b3d84d759f916e1c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('09227dc707c0453a887c070a3f157d10', '4919954eab334b8c9a70b7eaeb2b7981', '29999d34870b41f9ad4e791b5feec11e', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('0bf29b4948a145769fa85311dde05f29', '4919954eab334b8c9a70b7eaeb2b7981', 'e1947e4d73c6450bbebe724595a2276d', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('0f075fe3c08d4f4582b2ea42f4fdcea7', '4919954eab334b8c9a70b7eaeb2b7981', '2d7af66ddec7413c842c294dc599bb4a', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('0f898146ce304435a7e0b6527144389d', '0794ae8b15804c1784ef18b4cad18565', 'f74b2a58630d447188c0a205145a54aa', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('109194e8e1d845d099d8bdbde5881899', '4919954eab334b8c9a70b7eaeb2b7981', 'd398275d3c8c475489e754fc8e66642f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('10b2555fd24943fbb5b8377113ac28ac', 'e20dddafbd8043db8fc6f44c46b602bb', '96ad0cac8d0649aa9505185dcf805491', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('14cd64b4b2b646acac332859e95a77b2', 'c3f4273431c94d9bbc4ec5daca923bc8', '5d9ec80c4df7478dbc58cac6ca36fe0c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('1ec3453ef4cc4cada1dc7dd3679e5d24', '4919954eab334b8c9a70b7eaeb2b7981', 'd8407a4a393b44d3a059bdc7bed184ef', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('217269d9ed3f4189bb6141ee3f469591', '54c9392998734269b0075c7adc40c104', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('223f363f450348cda777c02df6e784ed', '4919954eab334b8c9a70b7eaeb2b7981', 'b20e7020c78248c7afc6c818bce61446', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('27c7e19572c9446985cbb22d8c8e695d', '4919954eab334b8c9a70b7eaeb2b7981', '98caa5d1bcf145218d9910687db6ef8f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('2f44da835c2a44218a7087a0c73fc045', '4919954eab334b8c9a70b7eaeb2b7981', 'b16a7a2f9d804a749fa583e41a5581c7', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('2fc68b3eaccf4b4588a9fa05543a11b9', '4919954eab334b8c9a70b7eaeb2b7981', '9c496ad57e4e4d1e96e6f4ac501802b0', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('31714be685ea41d1985255d724f5b75c', 'c3f4273431c94d9bbc4ec5daca923bc8', '1a66f7071b784ab9bd647652c3d93429', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('36af504f64e44ba1bda89cf82bffcc91', '4919954eab334b8c9a70b7eaeb2b7981', 'f74b2a58630d447188c0a205145a54aa', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('36e1a55e9d894b149b783219e08d12fd', '0794ae8b15804c1784ef18b4cad18565', '06254582303d4460a97b92d2b2113146', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('371d129ead0a40a0a63b44ca8eb26eac', '4919954eab334b8c9a70b7eaeb2b7981', 'f9914cf61c0343efb2d327f7f95042c2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('37635173c5124a9ba1e62fb556c78eb0', 'cc65b6abe5444eae8b2adfd516b2240e', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('37f3327d016148d589c95d08567aaead', '4919954eab334b8c9a70b7eaeb2b7981', '7c73335b484b46c0a30fda7799e568e1', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('411448bcb3b04fccbde996b700dead4b', '900fcf39cf11462ebc5fb7fa940aa727', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('421249e781244be8b1ccc4b97b1c6bd8', '4919954eab334b8c9a70b7eaeb2b7981', '472a032b4f534675acac3602e946ef69', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('4871cb9c3f194ce7bfaa14a34fa6d600', 'e20dddafbd8043db8fc6f44c46b602bb', '0bb7ce792fbc4cff809c71af3c70a8e1', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('4a430fece4fb4849a7839063561c1ba2', '54c9392998734269b0075c7adc40c104', '06254582303d4460a97b92d2b2113146', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('4cc1c2f3cfb4417699a1101ab3c687de', '54c9392998734269b0075c7adc40c104', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 09:55:40', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('4ef2648f02684ea08b5d89e50b7f1075', 'c3f4273431c94d9bbc4ec5daca923bc8', 'f56d0d92eaab45329453f9bccbb36fe3', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('52ea27f0ba3748819cecdf7493cb0f44', '3bf1c8399c7a4eeaaf4197211318887d', '106a89d7353b439cb5eb000da7e6d881', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('565e851e993e40069045bc71e37d8e92', '4919954eab334b8c9a70b7eaeb2b7981', '8a39cc8902694c4b93a415154d8ae805', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('584dca20613c4ca49133c4760309f1ec', '4919954eab334b8c9a70b7eaeb2b7981', '72d65040039f4c3f8ca72e22495797fc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('58aa13ac06b24d7ab8a47ce2ccd0ac15', '1f5e09c2e1ed4b0f8eb193580fc60f2d', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-20 09:56:20', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('58cc537681734ae6946cdec400c05f63', '4919954eab334b8c9a70b7eaeb2b7981', '2365f90d42f14ace8f4298f236643a7f', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('5b519455f06240b89a1e1c1c90505243', 'c3f4273431c94d9bbc4ec5daca923bc8', '7f5defb0bc974d36ba1f5d1ee77aa087', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('5dc71b8b53db4bf6bbaa40f40ac7ae0c', '4919954eab334b8c9a70b7eaeb2b7981', '6d3e449431944c129371ed6be8be3d11', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('609b2c4a167b4e6ca2674f35198905d2', '0794ae8b15804c1784ef18b4cad18565', '5ba89728daeb4a6999238a2939748145', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('68e5e29a44fe436c89181364745d7ad4', '4919954eab334b8c9a70b7eaeb2b7981', '37e72140320d4cdfb52acf286a70f4e2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('6bd3a53b8cb14816a5f1bcd46260ac1f', '4919954eab334b8c9a70b7eaeb2b7981', '1cb4228a85e44a6e9e0ae3b9b94d09cc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('6be1fbe464fe4bccaf85c214a559fa23', 'cc65b6abe5444eae8b2adfd516b2240e', '96ad0cac8d0649aa9505185dcf805491', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('730ca39d54564acc94e1f65193954e91', 'c3f4273431c94d9bbc4ec5daca923bc8', 'fe2fbf44f2d94750b49e286aabd3ad07', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('741f84e334a54c868d673b8761ba1af8', '5cbd9b0e26ea491da62259580f244a86', '12ef81ff422441eab5924c18443e1807', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('750f1e6fe35c45ae8a0b1282e566336d', '4919954eab334b8c9a70b7eaeb2b7981', '77ef62f7f6644cbba6c3011cac207b68', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('75b657812e9a4f5495a6b8430b88867c', '4919954eab334b8c9a70b7eaeb2b7981', 'c2729b7b0a1e47408cfbe378b7a90a51', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('7791fc39d69c447b826164c4d1db8d92', '5cbd9b0e26ea491da62259580f244a86', 'f74b2a58630d447188c0a205145a54aa', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('7a21645078e34732a322a04075326a79', '4919954eab334b8c9a70b7eaeb2b7981', 'cb7fcf162bb34ded9d0694afa2cce127', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('7ba6df27346248f18bc276ae40797154', 'c3f4273431c94d9bbc4ec5daca923bc8', 'f255f88cc7f54fe5a5397e8bed014124', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('7be4d8107e7d4f9e8ba6f866050605d5', '761081eb53d84e24973aae34425066cf', 'f74b2a58630d447188c0a205145a54aa', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('7fc699a975384c57a23b043d4518372c', 'c3f4273431c94d9bbc4ec5daca923bc8', '3e73743f2e024d12bce72c4aed8a4c40', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('82da82d689e34a688c01e044b28a8b14', '4919954eab334b8c9a70b7eaeb2b7981', '6eea078283214dbaa3612819b59346b0', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('831be866ace54d01817ea1d595f7f39f', 'cc65b6abe5444eae8b2adfd516b2240e', '85c01be5af524b589733f0d0743d26d5', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('84b7c481ea2345adac4989537389d4f9', '4919954eab334b8c9a70b7eaeb2b7981', 'cce580d1e61d41e1b2fb71e20f9f2f20', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('85cd8fed86af4ee292916d7d6e81fbd0', '4919954eab334b8c9a70b7eaeb2b7981', '755295eff8744e5f93e9360e91bc12ec', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('8b3494fa749544248ebdd74fb17792a4', 'c3f4273431c94d9bbc4ec5daca923bc8', '6d0fe6e941444a19813694dc2fd7f45c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('8bad30040e194b7091e112209e571384', '5cbd9b0e26ea491da62259580f244a86', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('8c5531f25f8b4df38f9e33744778e339', '4919954eab334b8c9a70b7eaeb2b7981', '6252b1c89ef247179d46db0a08b6e5b6', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('8f5a43316c134c768640ee0633de1b55', '4919954eab334b8c9a70b7eaeb2b7981', '0ddff71c42164db3b755ab0198bbfdcc', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('90bb95d2810b4d81a362c8f341b75bb0', '4919954eab334b8c9a70b7eaeb2b7981', '16c8e1581a32447191b6c12ae78d7703', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('91a372c5c44741c6a1b940429a79b55e', '900fcf39cf11462ebc5fb7fa940aa727', 'ba4a6153b64b4dcfb6943000b2a0f82f', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('92525604d25948409b83331d6d176939', '4919954eab334b8c9a70b7eaeb2b7981', 'fcf9376948104da1b8d7cb43f71f4f78', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('96fd17f158e545368bfa4d81615df1b7', '4919954eab334b8c9a70b7eaeb2b7981', '2dbff7d7c0d6469993a4f137e37b2f0c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9883613cfbbc43b8a3907816c0581a8b', '4919954eab334b8c9a70b7eaeb2b7981', 'bd274ea7d3a84536b47e2f9aa14f5005', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9b122b7ed1e148dfa3c7d8824bb4995c', '900fcf39cf11462ebc5fb7fa940aa727', 'f74b2a58630d447188c0a205145a54aa', '2016-05-18 16:46:34', 'e470153e65ff4acf84ef6bba89290519');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9d335e22b6714128a7a8ed0941533b9f', 'c3f4273431c94d9bbc4ec5daca923bc8', 'c2729b7b0a1e47408cfbe378b7a90a51', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9d867109e00b49178cf93222b95e475d', '3bf1c8399c7a4eeaaf4197211318887d', 'd1a99b7da3ad4bbba46cb7ca595e1650', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9e92a440111f4cf882272169e536a822', '3bf1c8399c7a4eeaaf4197211318887d', 'be60792440cc4dfca846b3e673ebf2a4', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('9ecd0a53251048dcacc45171b70967c5', 'c3f4273431c94d9bbc4ec5daca923bc8', '00a0aeba317840509f2f15d94fd6a1b3', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a011c191e3b4447baadcba93e48c5225', '4919954eab334b8c9a70b7eaeb2b7981', 'f640466a21cb452d831f57624b826b31', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a24813ec0a6948df98188639ca29c4dd', '4919954eab334b8c9a70b7eaeb2b7981', '8339f698c8944a55a1e13af47485aa06', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a360b9df1e1c44868381248d023881d2', '4919954eab334b8c9a70b7eaeb2b7981', 'de35744dc9914d018de7e9585b31b782', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a368ed1406e24cbd868ad7c21abb5884', '4919954eab334b8c9a70b7eaeb2b7981', '8daa22e6661643b3b60316c0f6c62ead', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a637e0e6c9064ebe92bc971ca9289ae9', '3bf1c8399c7a4eeaaf4197211318887d', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('a77a4fc9c74e4121a0415a456ea91fed', '4919954eab334b8c9a70b7eaeb2b7981', '02eec96dfbf0440fa16a2caaf168c812', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('aeda24e0bb204f55ba38a3dfc0aaf67e', '4919954eab334b8c9a70b7eaeb2b7981', '5fc58867e9994545b77cb63e3e25daae', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('aefcc84f872a486287fe239427a0766b', '761081eb53d84e24973aae34425066cf', '06254582303d4460a97b92d2b2113146', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('afd01c53ab854f28923e29e39204d455', '4919954eab334b8c9a70b7eaeb2b7981', '3776ae04982348a2a14469ed3e57abcb', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('b003ef3be50a4e48a8e61f552296e34b', '4919954eab334b8c9a70b7eaeb2b7981', '21c400482d5f49088bba1d33c3a64134', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('b3b00a54206d495d8af757c5bd9e0460', '4919954eab334b8c9a70b7eaeb2b7981', '29b81c1d4802456ea8025a56636bc79b', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('b471a448c7d247a183db539a9138033f', 'c3f4273431c94d9bbc4ec5daca923bc8', '1809e810e0994707bcf6ae104b160710', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('b798bbeed6dd426b971f253ca2b7bfcd', 'e20dddafbd8043db8fc6f44c46b602bb', '5fc58867e9994545b77cb63e3e25daae', '2016-05-20 00:14:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('c14d154b628b4fc38430640f32914a60', '0794ae8b15804c1784ef18b4cad18565', '85c01be5af524b589733f0d0743d26d5', '2016-05-19 08:47:58', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('c2a4aed1c9ae4f60a0e22eb58a03ab60', '4919954eab334b8c9a70b7eaeb2b7981', 'cc1351b04e924637bb7c8d6e62719ac2', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('c543064be23d4307aaebd1ee445d7725', 'c3f4273431c94d9bbc4ec5daca923bc8', '85b3c3f90f374d0697203446b464e44c', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('c86949653ba24cb29f0fb6c2cc90157e', 'c3f4273431c94d9bbc4ec5daca923bc8', '853ecdd98d3048c3a0bf3d4773bcdfda', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('ca2ef3eb2c464bf9a459660134859a4b', '4919954eab334b8c9a70b7eaeb2b7981', 'bc008f2cc84b49709b64465f576ec160', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('d1f1b492487048839d30768b24065e81', '4919954eab334b8c9a70b7eaeb2b7981', '79b417931ffb4e1fa7a49af433d8becd', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('d3189699f6f142b8b65e3321d31a9660', '1f5e09c2e1ed4b0f8eb193580fc60f2d', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:56:20', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('d543f4ba54104fdeb607257e20f37167', '761081eb53d84e24973aae34425066cf', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('d7e3b48b541c4a26937d0c20cf9f6c7a', 'c3f4273431c94d9bbc4ec5daca923bc8', '73842ea9aff84bbaa90898cc64be3ab6', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('d7ecbd77dad940f1920dd89fa165f000', '4919954eab334b8c9a70b7eaeb2b7981', 'e4c018fea67f43f9aab0758f7592b5ab', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('da90b014c94946e3b09bbad631d15687', '4919954eab334b8c9a70b7eaeb2b7981', '59f9422d36414718b72fc604ee5acf2a', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('dacc300521b3464097fb31e7c77080aa', '4919954eab334b8c9a70b7eaeb2b7981', 'b91cb851cf7142d3be3864826aa8f9db', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('de451c49636348b0a9e7668313b1dfac', '4919954eab334b8c9a70b7eaeb2b7981', 'bb797c8b886b4cad86b05bc65b94c807', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e03f637b491346b89d1daab02d0c2539', '4919954eab334b8c9a70b7eaeb2b7981', '37e65c6b652348b984e34f41fef3f614', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e3d37a9d051c4448868ef1dabe730529', 'c3f4273431c94d9bbc4ec5daca923bc8', '97e296dae88242d6a170220c39bcc95f', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e6ea798b04034afa9e09d436db3c61ae', '4919954eab334b8c9a70b7eaeb2b7981', '08f43a3729da415bb1b56dcd7a2e68ab', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e73351d62cf24cf3b473c8f9d61be85c', '4919954eab334b8c9a70b7eaeb2b7981', '45129b544a3148caa7ed11a69db06f64', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e7654b7825f948489eeb7777fdf1ee6f', '4919954eab334b8c9a70b7eaeb2b7981', 'c80fc1052a1d491ea9843099b18faf89', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e7cb14ea2135498f9c799549fdbd583c', '4919954eab334b8c9a70b7eaeb2b7981', 'a3f95fe0ff4a4df7991130fbaaf91543', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('e80739ffacac4a218b5c5f94e0660aa8', '4919954eab334b8c9a70b7eaeb2b7981', '33292f2c24384e7197742f40b8018e71', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('eaf34660ada5412fa835a2487991b73b', '5cbd9b0e26ea491da62259580f244a86', '6fcab2ec600d492bb17d3c8eb142a92d', '2016-05-20 09:14:08', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('ec779c4db15b4c54bb79d2d4f02860eb', '761081eb53d84e24973aae34425066cf', '5ba89728daeb4a6999238a2939748145', '2016-05-19 13:52:16', 'c321c891521446bdac49ae2bb29d7a00');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('ed690ba028ec451594dd21218d0f86ab', '4919954eab334b8c9a70b7eaeb2b7981', '87d922c87449409e94af94446eb3bd68', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('ed7383c667454956babdc7c4223c830e', '4919954eab334b8c9a70b7eaeb2b7981', 'dee27c258ed34630b60ed833a4b7fa3c', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('eddca003844b48008128aa4940c125e4', '3bf1c8399c7a4eeaaf4197211318887d', '54baa8900f3d4fe8860ea3012f0c1be4', '2016-05-20 09:28:47', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('f3434fcb824848409346bf633fb20b0e', '4919954eab334b8c9a70b7eaeb2b7981', '96ad0cac8d0649aa9505185dcf805491', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('f5a2fe916f0b4744ae4f51fd2f5cd756', '4919954eab334b8c9a70b7eaeb2b7981', 'e3a77addc673422fb2bd3cf87f2bd2f5', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('fa838c56c54e49e6aec4626fa409828f', '4919954eab334b8c9a70b7eaeb2b7981', 'fa4712fd6d51444bae7449f3618f32f4', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('fb7f6e4dc42c4b4ba89dc4aabddafe83', '4919954eab334b8c9a70b7eaeb2b7981', 'fb1bb00ed17f49aab5bca7a92c5f0ec7', '2016-05-18 14:34:49', '5f6b500ffdf642349a1b46203c147ee0');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('fcfe70eeb895496095f354010696d03c', 'c3f4273431c94d9bbc4ec5daca923bc8', '29999d34870b41f9ad4e791b5feec11e', '2016-05-18 15:35:07', 'c4db76be7dd94f95b5213b885f919cba');
INSERT INTO `ss_checkjob_job_tem_item` VALUES ('fe27d8d3d7974561ae7d6f8c75051575', 'cc65b6abe5444eae8b2adfd516b2240e', 'a09d87ce110240adbc5a959f9b46b4ed', '2016-05-17 09:21:39', '5f6b500ffdf642349a1b46203c147ee0');

-- ----------------------------
-- Table structure for `ss_checkjob_report_sum`
-- ----------------------------
DROP TABLE IF EXISTS `ss_checkjob_report_sum`;
CREATE TABLE `ss_checkjob_report_sum` (
  `id_` varchar(64) NOT NULL COMMENT '用户ID',
  `theme_` varchar(255) DEFAULT NULL COMMENT '用户界面主题',
  `skin_` varchar(255) DEFAULT NULL COMMENT '用户界面皮肤',
  `is_show_top_nav_` varchar(255) DEFAULT NULL COMMENT '是否显示水平导航条',
  `navbar_btn_style_` varchar(255) DEFAULT NULL COMMENT '导航条按钮风格',
  `tab_focus_color_` varchar(255) DEFAULT NULL COMMENT 'Tab高亮颜色',
  `nav_tab_index_` varchar(255) DEFAULT NULL COMMENT '导航缺省活动页',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户配置表';

-- ----------------------------
-- Records of ss_checkjob_report_sum
-- ----------------------------

-- ----------------------------
-- Table structure for `ss_ent_baseinfor`
-- ----------------------------
DROP TABLE IF EXISTS `ss_ent_baseinfor`;
CREATE TABLE `ss_ent_baseinfor` (
  `id_` varchar(64) NOT NULL COMMENT '企业ID',
  `name_` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `xkzcode_` varchar(255) DEFAULT NULL COMMENT '许可证代码',
  `fuzeren` varchar(255) DEFAULT NULL COMMENT '负责人',
  `fadingdaibiaoren` varchar(255) DEFAULT NULL COMMENT '法定代表人',
  `type` varchar(255) DEFAULT NULL COMMENT '企业类型',
  `zuzhijigoucode` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `xkzfzdate` date DEFAULT NULL COMMENT '许可证发证日期',
  `xkzyxdate` date DEFAULT NULL COMMENT '许可证有效日期',
  `scfw` varchar(1000) DEFAULT NULL COMMENT '生产范围',
  `sczt` varchar(255) DEFAULT NULL,
  `gxbm` varchar(255) DEFAULT NULL,
  `is_wj` varchar(255) DEFAULT NULL,
  `zcdz` varchar(255) DEFAULT NULL,
  `qygm` varchar(255) DEFAULT NULL,
  `zczb` varchar(255) DEFAULT NULL,
  `yzbm` varchar(255) DEFAULT NULL,
  `qylxr` varchar(255) DEFAULT NULL,
  `yddh` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `cz` varchar(255) DEFAULT NULL,
  `zlfzr` varchar(255) DEFAULT NULL,
  `zlsqr` varchar(255) DEFAULT NULL,
  `ssjt` varchar(255) DEFAULT NULL,
  `ssgx` varchar(255) DEFAULT NULL COMMENT '所属管辖',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户配置表';

-- ----------------------------
-- Records of ss_ent_baseinfor
-- ----------------------------
INSERT INTO `ss_ent_baseinfor` VALUES ('00a6355517874ab9ac9c89184d438124', '天津市亨利工贸有限公司', '津20130162', '吴少贤', '吴少贤', '有限责任公司', '76760482X', '2013-11-08', '2018-11-07', '天津市蓟县邦均镇：医用氧（气态）***', '', null, '0', '', '', '', '', '', '', '', '', '', '', '', 'd12df3a736c742c58da176dbbd52d128');
INSERT INTO `ss_ent_baseinfor` VALUES ('02dba066a2894ac08fafe0dc599caba2', '天津格斯宝药业有限公司', '津20100102', '梁立志', '何光杰', '有限责任公司（法人独资）', '60057456-9', '2014-03-19', '2015-12-29', '天津市河东区八纬路109号： 中药饮片（净制、切制、西洋参加工）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('03aa6e8bddce4f1599c9f7fb396fb12f', '天津新丰制药有限公司', '津20100011', '崔连泉', '张龙铎', '中外合资', '60058741-5', '2010-12-20', '2015-12-19', '天津经济技术开发区睦宁路8号：粉针剂（头孢菌素类）、片剂、硬胶囊剂、进口药品分包装（头孢菌素类粉针剂、片剂）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('044f8f34dbdd40b493a628fd793fd326', '天津创新药业有限公司', '津20100040', '乔连明', '马春廷', '有限责任公司', '74404174-5', '2014-04-11', '2015-12-19', '天津经济技术开发区第四大街80号C3座:片剂 、硬胶囊剂 、颗粒剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('0899cc0f92be4db4ab73404490c12227', '天津天药药业股份有限公司', '津20100029', '王福军', '李立群', '股份有限公司（上市）', '71824811-X', '2010-12-20', '2015-12-19', '天津市经济技术开发区黄海路221号:片剂(含激素类)***\n天津开发区西区新业九街19号:原料药（倍他米松、丁酸氢化可的松、醋酸氟轻松、地塞米松磷酸钠、醋酸泼尼松龙、泼尼松、醋酸甲泼尼龙、哈西奈德、醋酸曲安奈德、盐酸氟桂利嗪、氢化可的松、泼尼松龙、醋酸泼尼松、醋酸氢化可的松、琥珀酸甲泼尼龙、盐酸布桂嗪、桂利嗪、丙酸氯倍他索、地塞米松、氯碘羟喹、甲泼尼龙、醋酸地塞米松、曲安奈德、曲安西龙、丙酸倍氯米松、倍他米松磷酸钠、阿达帕林、糠酸莫米松、丙酸氟替卡松氟米龙、卤米松、布地奈德、昔萘酸沙美特罗、氢化可的松琥珀', '生产', null, '否', '滨海新区', '大型', '', '', '', '', '', '', '张杰', '张杰', '天津市金耀集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('090c7dbb01024860aed348fe6fa5d6aa', '天津康乐产业有限公司', '津20100047', '董士杰', '高震', '有限责任公司（中外合资）', '60055128-7', '2011-06-14', '2015-12-21', '天津经济技术开发区微山路6号: 灸熨剂***', '', null, '', '滨海新区', '小型', '1548', '300457', '贾婷', '13920313745', '25325624', '25326652', '李得月', '李得月', '天津医药集团众健康达医疗器械有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('0943139299784dfa951b4af898a1958e', '天津中天制药有限公司', '津20100044', '李叔达', '李庆云', '中外合资', '60057860-7', '2010-12-22', '2015-12-21', '北京市通州区永乐经济开发区:片剂、颗粒剂、硬胶囊剂***\n天津市南开区临潼路50号: 滴丸剂、软胶囊剂***', '生产', null, '否', '滨海新区', '小型', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('10605b3006ce4a8fb39d5b228b3a71c8', '天津太平洋制药有限公司', '津20150050', '宋德成', '宋德成', '有限责任公司', '60058413-4', '2015-12-22', '2020-12-21', '天津市解放南路外环线17号桥：片剂，软胶囊剂，乳膏剂(含激素类)，散剂，颗粒剂(含青霉素类)，硬胶囊剂(含青霉素类)，精神药品***天津市津南区开发区宝源路27号109车间：包醛氧淀粉***山东省临沂市高新区马厂湖工业三路中段：中药材前处理，中药提取***', '', null, '', '西青区', '中型', '12098', '300385', '李振军', '13820166127', '022-83988997', '022-83988997', '李振军', '李振军', '天津太平洋医药科技集团有限公司', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('111d1124937e4fc78b975ce58298e09c', '天津尖峰弗兰德医药科技发展有限公司', '津20100087', '魏洪君', '黄金龙', '有限责任公司', '74400465-3', '2010-12-23', '2015-12-22', '天津开发区第四大街80号天大科技园B9楼一层:药用辅料（薄膜包衣剂）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('1514950998944c82a8baad6189155f3d', '天津敬一堂制药有限公司', '津20100035', '敬守存', '敬守存', '有限责任公司', '55344526-1', '2012-07-30', '2015-12-19', '天津市津南经济开发区（双港）：片剂、硬胶囊剂、颗粒剂、滴丸剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('179d186fcfd2406cb0efc33d8b6497ef', '天津天安药业股份有限公司', '津20100030', '姚玉峰', '姚玉峰', '股份有限公司', '73545340-6', '2011-11-18', '2015-12-20', '天津经济技术开发区黄海路221号:大容量注射液（含抗肿瘤类）、洗剂***\n湖北省襄阳市汉北路99号: 大容量注射液***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('1877c6ec0a7946f384db9bebf1a206db', '天津红日药业股份有限公司', '津20100072', '姚小青', '姚小青', '股份有限公司（上市）', '10409702-X', '2014-12-19', '2015-12-21', '天津新技术产业园区武清开发区泉发路西：小容量注射剂、硬胶囊剂、颗粒剂、片剂、原料药（低分子量肝素钙、盐酸法舒地尔、硫酸氢氯吡格雷、盐酸沙格雷酯、                                     ）、中药提取***\n天津新技术产业园区武清开发区源泉路17号：大容量注射剂、冻干粉针剂、小容量注射剂（抗肿瘤药）、原料药（马来酸氟吡汀、盐酸替罗非班、罗库溴铵、对甲苯磺酰胺、胸腺法新、磺达肝癸钠、肝素钠、盐酸帕洛诺司琼、L-苹果酸、盐酸美金刚、右佐匹克隆、安立生坦、奥氮平、枸橼酸托法替布）、', '', null, '', '武清区', '中型', '91153', '301700', '郑岩', '15902289135', '022-59693539', '022-59693553', '刘方', '刘方', '无', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('196149c5be994f3eb8485de1917e4aa1', '天津市津津药业有限公司', '津20150040', '只万民', '只万民', '有限责任公司', '10385102-7', '2015-12-21', '2020-12-20', '天津市西青区张家窝镇周李庄村南：原料药***', '', null, '', '西青区', '中型', '2000', '300380', '袁东超', '18622368986', '022-87988215', '022-87988215', '袁东超', '袁东超', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('1a0691dc703740d28cfc0281edfa7441', '天津太平洋化学制药有限公司', '津20100049', '宋香羿', '宋德成', '有限责任公司', '77060997-1', '2014-07-29', '2015-12-21', '天津市津南区开发区宝源路27号：生产范围：原料药（非普拉宗、盐酸二甲双胍、依替膦酸二钠、藻酸双酯钠、甘油磷酸钙、熊去氧胆酸、吲达帕胺、利巴韦林、盐酸丙哌维林、罗红霉素、阿昔洛韦、扎来普隆、奥扎格雷、醋酸氟轻松、丁酸氢化可的松、醋酸曲安奈德、曲安奈德、哈西奈德、蒿甲醚、双氢青蒿素、青蒿琥酯、丙酸氯倍他索、布地奈德、氯替泼诺、苯磷硫胺、门冬氨酸鸟氨酸、恩替卡韦、醋酸地塞米松、地塞米松、碳酸思维拉姆）***', '生产', null, '否', '津南区', '中型', '3699', '300350', '刘宁', '022-88515285', '022-88515285', '022-88515285', '李菊', '刘宁', '天津太平洋医药科技集团有限公司', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('1c0ee3a2c89f4b7fa66a8ffa747e3872', '天津和治药业有限公司', '津20100073', '蔡治河', '蔡治河', '有限责任公司', '10343380-2', '2015-10-09', '2015-12-21', '天津市武清开发区泉发路22号：片剂、颗粒剂、硬胶囊剂、软胶囊剂、丸剂(浓缩丸)、合剂、酒剂、酊剂(口服)、中药提取***', '', null, '', '武清区', '小型', '3800', '301700', '邵海艳', '13920228549', '022-82103295', '022-82191080', '邵海艳', '邵海艳', '无', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('1d56017d8c894ce0b6e38f52508392fd', '灵北制药（天津）有限公司', '津20120159', 'Herman Santoni Ramos', 'Ole Chrintz', '有限责任公司（外国法人独资）', '58131802-4', '2012-08-09', '2017-08-08', '天津市西青经济开发区赛达国际工业城D12-2座：进口药品分包装（片剂）***', '', null, '', '西青区', '微型', '3482', '300385', '李全力', '13702032953', '02287204906', '02287204878', '李全力', '李全力', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('1e1f50d2f5b54c3bbbb5d9e6db736fdb', '天津中新药业集团股份有限公司新新制药厂', '津20100010', '贾兆绪', '王志强', '股份有限公司', '10373832-3', '2010-11-07', '2015-12-19', '天津市程林庄工业区：片剂、硬胶囊剂、原料药（愈创木酚甘油醚、美索巴莫、苯丙氨酯、格列齐特、盐酸硫必利、盐酸二甲双胍、呋喃唑酮、拉米呋啶、盐酸帕吉林）***', '', null, '', '东丽区', '小型', '', '', '', '', '', '', '', '', '', 'd4873f66c50d4158a363f7dbb464b157');
INSERT INTO `ss_ent_baseinfor` VALUES ('21dec403140649c8904f500b1a588d53', '天津市康瑞药业有限公司', '津20100066', '刘国英', '解伟成', '有限责任公司', '23966238-0', '2013-04-12', '2015-12-21', '天津空港经济区西七道18号: 片剂***', '', null, '', '滨海新区', '小型', '4900', '300308', '卢玉梅', '13302091418', '58218600', '58218602', '王琦', '王琦', '无', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('22777a74d8304254a4d526ae1ec14a58', '天津世纪药业有限公司', '津20050055', '张利民', '张利民', '', '72572434-8', '2014-10-13', '2019-10-12', '', '', null, '', '滨海新区', '小型', '6500', '300457', '崔今松', '13820885181', '65296777-8007', '59901891', '崔今松', '崔今松', '普邦（天津）投资有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('22cddd255c164a308f57562190a60d6b', '天津洪福药业有限公司', '津20110116', '边路明', '边路明', '有限责任公司', '71291647-1', '2015-06-24', '2016-01-22', '天津市武清区曹子里乡大高口村：片剂、硬胶囊剂、颗粒剂、合剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('2595b4dacab9480aa62071e5194e44bb', '天津市协和医药科技集团有限公司', '津F201202', '阎尔坤', '阎尔坤', '有限责任公司', '70052960-X', '2014-08-18', '2016-12-31', '体外放射性诊断试剂', '', null, '', '滨海新区', '中型', '2000', '300310', '曹玉清', '13821163351', '022-66250198', '022-87891051', '潘学继', '潘学继', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('28cb96b18c1743789e5ce4120780be18', '天津泰阳制药有限公司', '津20110155', '欧来良', '欧阳绍江', '有限责任公司', '73279932-1', '2011-08-08', '2016-08-07', '天津开发区黄海路东侧第十大街南： 中药提取物、浸膏剂、流浸膏剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('2b3d92580e004e3da14cea095ae938e7', '天津泰达药业有限公司', '津20100018', 'JOAN VICTORIA G.WU', 'Janice R.Ong', '有限责任公司（外国法人独资）', '74139276-9', '2010-12-20', '2015-12-19', '天津经济技术开发区睦宁路95号：片剂、硬胶囊剂、颗粒剂、丸剂（水丸、水蜜丸）、糖浆剂、中药提取***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('2b76c04a14454c62b1765733ac2b2a67', '天津市港源生物制品有限公司', '津20090135', '窦华彬', '窦华彬', '有限责任公司（法人独资）', '67147397-6', '2009-12-02', '2014-12-01', '大港区津歧公路南4369号：药用辅料（甜菊素）', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('2cd6447d5585414898b483c4bca25250', '天津中盛海天制药有限公司', '津20150144', '郎洪平', '郎洪平', '有限责任公司', '69740954-2', '2015-02-02', '2020-02-01', '天津市津南区双港镇达港南路1号：片剂、颗粒剂（含中药材前处理和中药提取）***', '', null, '', '津南区', '小型', '', '', '', '', '', '', '', '', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('2f1c5f28806a4e6fa24999d66106bf04', '天津博科林药品包装技术有限公司', '津20100086', '王宝艺', '闫凯', '有限责任公司（法人独资）', '73548320-X', '2015-06-23', '2015-12-22', '天津新技术产业园区北辰科技工业园：药用辅料（薄膜包衣剂、聚乙二醇）***', '生产', null, '否', '北辰区', '小型', '1900', '300410', '赵琳', '13602193368', '022-26735298', '022-2675169', '祁秀琴', '无', '天士力制药集团', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('303a3d3a8fad4086a0df892247a4a676', '津润（天津）药业有限公司', '津20100052', '孟兆利', '孟兆利', '有限责任公司', '73846335-1', '2012-01-04', '2015-12-21', '天津新技术产业园区北辰科技工业园：片剂、硬胶囊剂***', '生产', null, '否', '北辰区', '小型', '5000', '300402', '张晨皓', '13752458859', '022-26727766', '022-26727769', '王立敏', '陈大如', '无', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('322e9ee7be714145b27d13344ae02f2f', '天津市协和医药科技集团有限公司', '津F201202', '阎尔坤', '阎尔坤', '有限责任公司', '70052960-X', '2014-08-18', '2016-12-31', '体外放射性诊断试剂', '', null, '', '滨海新区', '中型', '2000', '300310', '曹玉清', '13821163351', '022-66250198', '022-87891051', '潘学继', '潘学继', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('332b4cd9c8374de7862fe0a12e98e98d', '天津市中宝制药有限公司', '津20110132', '郝彬', '赵学风', '有限责任公司', '74911722-7', '2011-12-28', '2016-12-27', '天津市东丽经济开发区一经路29号：贴剂、膜剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'd4873f66c50d4158a363f7dbb464b157');
INSERT INTO `ss_ent_baseinfor` VALUES ('36ec55f6073f47358b80645a1342912f', '天津市新冠制药有限公司', '津20120136', '郑洁', '郑洁', '有限责任公司', '66882162-6', '2015-02-06', '2017-12-23', '天津市静海城东天宇科技园：原料药（拉米夫定、替米沙坦、甲磺酸伊马替尼、卡培他滨）、片剂、硬胶囊剂、颗粒剂***', '', null, '', '静海县', '中型', '4800', '301609', '杨国英', '13820775808', '86818376', '', '隆长锋', '隆长锋', '', '9571616ff17e4d88bf0a7d7f7f97e84c');
INSERT INTO `ss_ent_baseinfor` VALUES ('387cc86d2c78460cb2d1b51b16aaf90a', '天津梅花生物医药科技有限公司', '津20100077', '郑晓平', '梅开忠', '有限责任公司', '10360939-6', '2014-10-24', '2015-12-22', '天津开发区西区新圣路117号105:片剂、颗粒剂、硬胶囊剂、溶液剂***', '', null, '', '滨海新区', '微型', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('3a09560d4a3643d4a5caa25adc335ff2', '天津世纪天龙药业有限公司', '津20110153', '王现昌', '任为之', '有限责任公司', '68773307-4', '2013-05-23', '2016-03-24', '天津市武清区万兴工贸园梅石公路486号:硬胶囊剂***', '生产', null, '否', '武清区', '小型', '9067', '301741', '王晓雷', '18622987677', '18622987677', '22990168', '刘伟', '刘伟', '否', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('3a7f09d4a9fd4826882dba4f2f21cd0f', '天津市医疗器材厂', '津20100048', '刘向益', '刘向益', '集体', '10320869-9', '2010-12-22', '2015-12-21', '天津市西青区中北镇大蒋庄：灸熨剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('3b27c4ce3978430d93d9ca45c8328365', '测试1111', '123456789', '刘备', '刘备', '科技型企业', 'abcde', '2016-03-23', '2016-03-23', '感冒药剂', '正常', null, '1', '天津', '200', '1000', null, null, null, null, null, null, null, null, 'df7a483b2b3f45158b9e1a30e65854fe');
INSERT INTO `ss_ent_baseinfor` VALUES ('3c15e693da9b48b3bf17563243914a6b', '天津市天骄制药有限公司', '津20100051', '姚广津', '冯全生', '有限责任公司', '71820649-7', '2013-05-14', '2015-12-21', '天津市宁河县造甲城镇造甲城村世纪天鑫工业园：乳膏剂（激素类）、凝胶剂、搽剂（激素类）***', '', null, '', '红桥区', '小型', '', '', '', '', '', '', '', '', '', '4f277ce667e24774998ee76f7d0c430a');
INSERT INTO `ss_ent_baseinfor` VALUES ('3c43e0ee718a4b26b9f977228cae2af4', '天津同仁堂集团股份有限公司', '津20100004', '张彦森', '张彦森', '股份有限公司', '10354271-8', '2015-02-16', '2015-12-19', '天津市津南区小站镇工业园区五号路：中药材前处理***\n天津市西青经济开发区赛达八支路1号：片剂、颗粒剂、硬胶囊剂、口服液、糖浆剂、橡胶膏剂***\n天津市北辰区青光镇安光道：橡胶膏剂***', '', null, '', '西青区', '小型', '11000', '300385', '苏何蕾', '13512426286', '022-26579859', '022-26579800', '苗淑杰', '苗淑杰', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('3cd8b1608a93474ebf2db664c48cd333', '天津炜捷制药有限公司', '津20120110', '丛强', '宋洪洲', '有限责任公司', '75810721-5', '2012-01-25', '2017-01-24', '原料药', '生产', null, '否', '滨海新区', '小型', '2478', '300480', '张冉', '13512267633', '022-67161255', '022-67161756', '董英敏', '董英敏', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('3fb7d3743d5a45068034614e6d4fb929', '天津市安氏蜂业有限公司', '津20100082', '秦文魁', '安中利', '有限责任公司', '70043958-3', '2010-12-23', '2015-12-22', '天津市北辰区上河头安氏工业园：药用辅料（蜂蜜）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('40a954d5f1de4acc8454ee1d5bc2b523', '天津金耀药业有限公司', '津20100028', '李静', '卢彦昌', '有限责任公司（台港澳与境内合资）', '56269173-9', '2015-03-30', '2015-12-19', '天津开发区黄海路221号：软膏剂（含激素类）、乳膏剂（含激素类）、涂膜剂（激素类）、凝胶剂（含激素类）、膜剂、栓剂、硬胶囊剂、丸剂（水丸、水蜜丸）、鼻用喷雾剂（激素类）、冻干粉针剂（含激素类）、小容量注射剂（含激素类、抗肿瘤类）、第二类精神药品制剂（苯巴比妥钠注射液、地西泮注射液）、麻醉药品（盐酸布桂嗪注射液）、滴眼剂（含激素类）、气雾剂、大容量注射液、洗剂***', '', null, '', '滨海新区', '中型', '60405', '300457', '黄凤华', '18622663937', '022-59995199', '022-62250225', '于润芳', '于润芳', '天津药业集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('415e0bcb711d41f18d2b37b8cfe6d5ca', '石药信汇（天津）医药科技有限公司', '津20110150', '郝金恒', '田玉妙', '有限责任公司', '68774369-4', '2015-01-22', '2019-12-23', '天津开发区汉沽现代产业区华山路26号：原料药（头孢妥仑匹酯、头孢丙烯、头孢呋辛酯、头孢卡品酯）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('437f41e064694af58fec49f04fab915a', '天津柏海药业有限责任公司', '津20100075', '刘爱国', '刘爱国', '有限责任公司', '73848146-1', '2013-10-21', '2015-12-21', '天津市武清区创业经济园区：片剂（含激素类）、硬胶囊剂、颗粒剂（洛伐他丁颗粒）***', '', null, '', '武清区', '小型', '300', '301718', '肖时栋', '18822073149', '022-22159129-809', '022-22159450', '肖时栋', '肖时栋', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('4527f990b51549b98838565c743e06ef', '天津华立达生物工程有限公司', '津20150029', '何询', '潘爱华', '有限责任公司', '60060059-5', '2015-12-16', '2020-12-16', '治疗用生物制品***', '', null, '', '滨海新区', '小型', '22823', '300457', '苏颖', '15302078922', '022-25324850-2108', '022-25329924', '苏颖', '苏颖', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('452eeab4295f4cd89e45900e7eab5921', '天津医药集团津康制药有限公司', '津20100021', '姜起栋', '姜起栋', '有限责任公司（法人独资）', '75220273-X', '2015-04-19', '2015-12-19', '天津市滨海新区大港石化产业园区金源路236号： 原料药（头孢地尼、核黄素磷酸钠、格列本脲、头孢克肟、瑞格列奈）、 硬胶囊剂（头孢菌素类）、粉针剂（头孢菌素类）、片剂（头孢菌素类）、颗粒剂（头孢菌素类）、无菌原料药（盐酸头孢吡肟）***', '', null, '', '滨海新区', '中型', '18950', '300270', '梁丽娟', '18602673383', '022-63233139', '022-63233139', '万军', '万军', '天津市医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('45de521566d34201b156a18e0ad647bc', '天津金耀氨基酸有限公司', '津20100031', '李静', '李静', '有限责任公司', '10307080-2', '2010-12-20', '2015-12-19', '天津经济技术开发区黄海路223号:原料药（甲钴胺、卡莫司汀、磷酸氢二钾、磷酸二氢钾、依地酸钙钠）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('469a888aa7c44f209571e3c4bc8b7a63', '天津天士力圣特制药有限公司', '津20150002', '王宝艺', '闫凯境', '有限责任公司', '66614208-0', '2015-04-13', '2020-04-12', '天津市北辰区汀江西路3号：\n片剂、硬胶囊剂、第二类精神药品（原料药：右佐匹克隆）、无菌原料药（比阿培南）***', '', null, '', '北辰区', '小型', '19987', '300410', '张弘颖', '13820077701', '022-86342299', '86342722', '张弘颖', '张弘颖', '天士力制药集团股份有限公司', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('47934d1bb423473da35efb622a453d51', '天津中盛海天制药有限公司', '津20150144', '郎洪平', '郎洪平', '有限责任公司', '69740954-2', '2015-02-02', '2020-02-01', '天津市津南区双港镇达港南路1号：片剂、颗粒剂（含中药材前处理和中药提取）***', '', null, '', '津南区', '小型', '', '', '', '', '', '', '', '', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('47ac54966cef44e88dc5ef5d96776089', '施维雅(天津)制药有限公司', '津20100019', 'Didier Mochon', 'Didier Mochon', '有限责任公司（中外合作）', '72298274-7', '2010-12-20', '2015-12-19', '天津经济技术开发区第十大街12号： 片剂、进口药品分包装（干混悬剂）***', '生产', null, '否', '滨海新区', '小型', '4524', '300457', '陈立新', '13652134731', '66296458-402', '66299456', '聂杰', '聂杰', '无', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('47b7b8ab8faa4b429a3ba3a9a1a96508', '天士力制药集团股份有限公司', '津20100032', '朱永宏', '闫凯境', '股份有限公司（上市）', '23944464-X', '2014-12-06', '2015-12-19', '天津市北辰区普济河东道2号（天士力现代中药城）：滴丸剂、颗粒剂、硬胶囊剂、软胶囊剂、片剂、丸剂；天津市北辰区汀江西路2号：颗粒剂、软胶囊剂、丸剂***\n异地提取车间：陕西省商洛市商州区刘湾产业项目区挥发油提取车间（荆花油、紫苏叶油）；\n集团内部共用提取车间：1、天津天士力现代中药资源有限公司（中药提取物）；2、河南天地药业股份有限公司（降香油提取）***', '', null, '', '北辰区', '大型', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('4b826ed9439d4876a407a2033e7ff6d9', '天津市日康医用氧气科技有限公司', '津20100094', '高学忠', '高学忠', '有限责任公司(自然人独资)', '72571228-3', '2010-12-23', '2015-12-22', '西青区精武镇潘楼北增1号：医用氧（气态）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('4b8f95d8c48f47268abd499187b8f4bc', '天津中新药业集团股份有限公司乐仁堂制药厂', '津20100003', '王磊', '王志强', '股份有限公司', '10307082-9', '2013-06-21', '2015-12-19', '天津市西青区大明道2号：丸剂（水丸、水蜜丸、糊丸、浓缩丸、浓水丸、微丸）、片剂、硬胶囊剂、颗粒剂、糖浆剂、合剂***\n天津市西青区中北镇李楼村（乐仁堂前处理车间）：中药材前处理、配料、粉碎、混合***', '', null, '', '西青区', '中型', '', '300112', '', '', '', '', '金兆祥', '金兆祥', '天津中新药业集团股份有限公司', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('4d186134eaff40479b8d0d92d2da3962', '天津药物研究院药业有限责任公司', '津20100012', '刘亚梅', '汤立达', '有限责任公司', '23899179-9', '2015-02-03', '2015-12-19', '', '生产', null, '是', '滨海新区', '中型', '5000', '300301', '梁锦荣', '13642062200', '23006947', '23006940', '梁田', '梁田', '医药集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('4d78ceada72c41c080aa9d4d5a0685b0', '天津海光药业有限公司', '津20100043', '张佩林', '张佩林', '有限责任公司（法人独资）', '10431208-4', '2010-12-22', '2015-12-21', '天津开发区第七大街5号: 原料药（氯化钠、氯化钾、氯化钙、氯化镁）***', '', null, '', '滨海新区', '小型', '5100', '300457', '费丽萍', '15022578195', '022-25290056', '022-25321643', '郑井瑞', '郑井瑞', '天津长芦海晶集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('4f17781531d649fb8dd6ce07fc5898c1', '天津隆顺榕发展制药有限公司', '津20110126', '张宏明', '王志强', '有限责任公司（法人独资）', '78330813-1', '2015-04-14', '2016-04-25', '天津市西青区中北镇李楼村：中药材前处理***\n天津市河北区雁门路21号：片剂、颗粒剂、糖浆剂、中药饮片（净制、切制，含直接口服饮片）、中药提取***', '', null, '', '河北区', '小型', '4500', '300232', '曲明', '13920660318', '02226623057', '02226623057', '牛瑞杰', '牛瑞杰', '天津中新药业集团股份有限公司', '85d923b0f58b4e5ca9bee9ed52123fca');
INSERT INTO `ss_ent_baseinfor` VALUES ('51775000e7004d8fa022f0623216608c', '天津市兴达药业有限公司', '津20110125', '张清民', '张清民', '有限责任公司', '78937771-X', '2011-06-16', '2016-06-15', '北辰科技园区：中药饮片（含毒性饮片，炮制范围包括净制、切制、炒制、炙制、煅制、蒸制、煮炙、发芽、发酵）、中药提取***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('5698058a23384a1cb3da5336f64b35fe', '天津中新药业集团股份有限公司达仁堂制药厂', '津20100002', '李燕钰', '王志强', '股份有限公司', '10347050-7', '2012-11-08', '2015-12-19', '天津开发区第十大街21号：丸剂(蜜丸、水蜜丸、水丸)、软胶囊剂、硬胶囊剂、片剂、颗粒剂***\n天津市北辰开发区科研路：煎膏剂、中药提取***\n天津市西青区中北镇李楼村： 中药材前处理、配料、粉碎、研兑工序***', '', null, '', '滨海新区', '中型', '0', '300457', '吴芸蛟', '15022120542', '022-60123816', '022-60123817', '江永萍', '江永萍', '天津市医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('585fd783154c4544b982bb73f88b0013', '天津巨能药业有限公司', '津20100036', '张兴远', '张兴远', '有限责任公司（中外合资）', '73548448-0', '2012-03-20', '2015-12-19', '天津市西青经济开发区辛口工业园：硬胶囊剂、颗粒剂、茶剂、原料药（替米沙坦、卡维地络）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('59fb43251638496395c81dbd8600e87f', '天津天药药业股份有限公司', '津20100029', '王福军', '李立群', '股份有限公司（上市）', '71824811-X', '2010-12-20', '2015-12-19', '天津市经济技术开发区黄海路221号:片剂(含激素类)***\n天津开发区西区新业九街19号:原料药（倍他米松、丁酸氢化可的松、醋酸氟轻松、地塞米松磷酸钠、醋酸泼尼松龙、泼尼松、醋酸甲泼尼龙、哈西奈德、醋酸曲安奈德、盐酸氟桂利嗪、氢化可的松、泼尼松龙、醋酸泼尼松、醋酸氢化可的松、琥珀酸甲泼尼龙、盐酸布桂嗪、桂利嗪、丙酸氯倍他索、地塞米松、氯碘羟喹、甲泼尼龙、醋酸地塞米松、曲安奈德、曲安西龙、丙酸倍氯米松、倍他米松磷酸钠、阿达帕林、糠酸莫米松、丙酸氟替卡松氟米龙、卤米松、布地奈德、昔萘酸沙美特罗、氢化可的松琥珀', '生产', null, '否', '滨海新区', '大型', '', '', '', '', '', '', '张杰', '张杰', '天津市金耀集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('5efaf7f75f0941eb9022fb105c0d1fbf', 'test1', '', 'realtes', '测试啊2 ', '', '', '2016-03-23', '2016-03-23', '', '', null, '0', '', '', '', null, null, null, null, null, null, null, null, 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('5fefa24592364417bb3c401592d30be2', '天津中新药业集团股份有限公司达仁堂制药厂', '津20100002', '李燕钰', '王志强', '股份有限公司', '10347050-7', '2012-11-08', '2015-12-19', '天津开发区第十大街21号：丸剂(蜜丸、水蜜丸、水丸)、软胶囊剂、硬胶囊剂、片剂、颗粒剂***\n天津市北辰开发区科研路：煎膏剂、中药提取***\n天津市西青区中北镇李楼村： 中药材前处理、配料、粉碎、研兑工序***', '', null, '', '滨海新区', '中型', '0', '300457', '吴芸蛟', '15022120542', '022-60123816', '022-60123817', '江永萍', '江永萍', '天津市医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('606152be6b1d4b8a9c4f9318776ba477', '天津市红山石油化工有限公司', '津20100084', '沈旺', '张春洪', '有限责任公司', '72749739-6', '2010-12-23', '2015-12-22', '天津市北辰区西堤头村：药用辅料（液状石蜡）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('620e08cb60794bdaaaf3a77d1a3da473', '天津市宏发双盛凡士林有限公司', '津20100083', '张锡林', '张锡林', '有限责任公司', '69406327-5', '2010-12-23', '2015-12-22', '天津市津南区八里台镇中义村西工业区：药用辅料（白凡士林、黄凡士林）***', '', null, '', '津南区', '小型', '200', '300350', '张广红', '13920464837', '022-88811868', '022-88811868', '张锡林', '张宇柱', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('654d5208c27d49bba8ad0e3990bb3037', '天津宏仁堂药业有限公司', '津20150021', '朱晓晶', '张彦森', '有限责任公司', '10315706-X', '2015-12-20', '2020-12-19', '天津市西青开发区赛达八支路3号：硬胶囊剂，颗粒剂，散剂***天津市津南区小站镇传字营村：中药材前处理、中药提取***', '生产', null, '否', '红桥区', '中型', '', '', '', '', '', '', '', '', '', '4f277ce667e24774998ee76f7d0c430a');
INSERT INTO `ss_ent_baseinfor` VALUES ('65c786fcf63d4c7a844c0c9281dd537c', '天津市儿童药厂', '津20100045', '王泉', '王泉', '股份合作企业', '10380444-X', '2014-07-18', '2015-12-21', '天津市滨海新区大港石化产业园金汇路948号:颗粒剂（含青霉素类、头孢菌素类）、片剂（含头孢菌素类）、糖浆剂、合剂***', '生产', null, '否', '滨海新区', '小型', '11470000', '300270', '王少娟', '13920774372', '60560372', '59716008', '张仲宽', '张仲宽', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('66696e33e4ac46c6a968521494839e0a', '天津中安药业有限公司', '津20100060', '李振恩', '李振恩', '有限责任公司', '10379518-4', '2011-03-10', '2015-12-19', '天津市西青区复康路188号：原料药（咖啡因、茶碱、氨茶碱、甲硝唑、硝苯地平、苯酰甲硝唑、烟酸占替诺）***', '', null, '', '西青区', '中型', '1109', '300384', '高文良', '', '022-23791870', '02223792058', '张广涛', '张广涛', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('6671b5b9de764d67bb573fa9069ff15f', '天津天威制药有限公司', '津20110129', '吴德荣', '吴德荣', '有限责任公司（台港澳法人独资）', '74910013-4', '2014-09-02', '2016-09-28', '天津开发区泰华路75号：合剂、糖浆剂、片剂、硬胶囊剂***', '', null, '', '滨海新区', '小型', '32565', '300457', '厉剑峰', '13312113778', '022-66230066', '022-66231500', '厉剑峰', '厉剑峰', '天津鸿发投资集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('682f07acd8dc4639812f116a9956a933', '天津市思露森医药材料科技有限公司', '津20100088', '苏蔷', '苏蔷', '有限责任公司', '72295313-7', '2010-12-23', '2015-12-22', '天津市华苑产业区鑫茂科技园E-6-C： 药用辅料（薄膜包衣剂）***', '生产', null, '否', '滨海新区', '小型', '', '300384', '', '', '022-83712693', '022-83712910', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('6936c7d9f44842a0906e50a0aa99b983', '天津市普善医药器械股份合作公司', '津20090142', '宁圃亭', '宁圃亭', '股份合作制', '72296349-0', '2009-02-24', '2014-02-23', '天津市津南区李楼工业园：软膏剂******', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('69a9dad62c1b4635acf50301b4291681', '天津民祥药业有限公司', '津20130161', '刘万里', '尹春杰', '有限责任公司（法人独资）', '67145914-6', '2015-10-16', '2018-04-17', '天津市静海县经济开发区南区泰安道17号：原料药（盐酸金刚烷胺）***', '', null, '', '静海县', '小型', '500', '301600', '何超建', '022-59595809', '13502010219', '022-59595808', '赵坤', '李彬', '无', '9571616ff17e4d88bf0a7d7f7f97e84c');
INSERT INTO `ss_ent_baseinfor` VALUES ('6b404bc5ded741f1a9ba05310535400e', '天津中新药业集团股份有限公司乐仁堂制药厂', '津20100003', '王磊', '王志强', '股份有限公司', '10307082-9', '2013-06-21', '2015-12-19', '天津市西青区大明道2号：丸剂（水丸、水蜜丸、糊丸、浓缩丸、浓水丸、微丸）、片剂、硬胶囊剂、颗粒剂、糖浆剂、合剂***\n天津市西青区中北镇李楼村（乐仁堂前处理车间）：中药材前处理、配料、粉碎、混合***', '', null, '', '西青区', '中型', '', '300112', '', '', '', '', '金兆祥', '金兆祥', '天津中新药业集团股份有限公司', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('6c9621c541f549e6b2dd9053a50d6211', '葛兰素史克（天津）有限公司', '津20100024', 'Oana Dariana Ghimpau', '季海威\n（Hervé Léon Pol GISSEROT）', '有限责任公司（中外合资）', '60089124-9', '2014-05-27', '2015-12-19', '天津经济技术开发区第五大街65号： 滴眼剂、片剂、硬胶囊剂、进口药品分包装（小容量注射剂、片剂）***', '', null, '', '滨海新区', '小型', '', '', '', '', '', '', '郭华星', '郭华星', '天津市医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('6d06fd5e187a4b3b8138cd6a86bdac73', '天津开发区渤海东大药业有限公司', '津20130160', '赵富贵', '赵富贵', '有限责任公司', '55652905-7', '2013-01-17', '2018-01-16', '天津滨海新区塘沽凯威路728号： 原料药（苯甲酸中间品）***\n天津开发区南港工业区港达路21号：原料药（苯甲酸）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('6d5cba75684c41c791ca004718a4352d', '天津生物化学制药有限公司', '津20100042', '韩松勇', '郑洁', '有限责任公司(法人独资)', '10329455-8', '2010-12-21', '2015-12-20', '天津空港经济区环河南路269号:冻干粉针剂(含激素类)、小容量注射剂、原料药（肝素钙、乳酶生、马来酸阿奇霉素、奥扎格雷、氢化可的松琥珀酸钠、低分子量肝素钙）***', '生产', null, '是', '滨海新区', '中型', '110822800', '300308', '帅英丽', '13702098866', '022-84911624', '022-24890518', '林敏', '林敏', '天津医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('6eb5b4e63b594f418f62c4299c27300b', '天津中瑞药业股份有限公司', '津20110107', '刘长锁', '崔宝刚', '有限责任公司', '75813031-9', '2015-06-15', '2015-12-29', '天津市武清区城关镇北环路路东侧：原料药（烟酸、烟酰胺、肌醇烟酸酯、盐酸特拉唑嗪、盐酸法舒地尔、二盐酸氟哌噻吨、盐酸美利曲辛、硫酸氢氯吡格雷、盐酸坦索罗辛、雷奈酸锶、苯磺顺阿曲库铵、氨磷汀、左乙拉西坦、盐酸普拉克索、富马酸泰诺福韦二吡呋酯、盐酸乐卡地平、盐酸多巴胺、非布司他）、药用辅料（乙醇、甘油）***', '', null, '', '武清区', '小型', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('6f883873f3b7473ba9291e463ed714e9', '凯莱英生命科学技术（天津）有限公司', '津20140143', '洪亮', '洪亮', '中外合资', '78330751-8', '2014-04-25', '2019-04-24', '天津开发区第七大街71号：片剂、硬胶囊剂、颗粒剂、原料药***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('6ff079022e1f47ccab73419fb44d3660', '天津同仁堂集团股份有限公司', '津20100004', '张彦森', '张彦森', '股份有限公司', '10354271-8', '2015-02-16', '2015-12-19', '天津市津南区小站镇工业园区五号路：中药材前处理***\n天津市西青经济开发区赛达八支路1号：片剂、颗粒剂、硬胶囊剂、口服液、糖浆剂、橡胶膏剂***\n天津市北辰区青光镇安光道：橡胶膏剂***', '', null, '', '西青区', '小型', '11000', '300385', '苏何蕾', '13512426286', '022-26579859', '022-26579800', '苗淑杰', '苗淑杰', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('7226f8f4d9724a58b35111fc06b3c09d', '诺和诺德(中国)制药有限公司', '津20100020', 'Camilla Sylvest', 'Jakob Riis', '', '60053773-3', '2010-01-29', '2015-12-20', '', '', null, '', '滨海新区', '大型', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('73682106f6804a1e912c1c577f93272a', '生源（天津）生物工程有限公司', '津20130140', '陈立元', '陈立元', '有限责任公司', '75222292-5', '2013-11-16', '2018-11-15', '天津经济技术开发区微电子工业区微七路18号： 中药饮片（果实种子类含直接服用饮片、炮制范围限净制）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('7411f13dbb064ba1bfb71e29718531f0', '天津药业研究院有限公司', '津20120158', '李静', '李静', '有限责任公司', '74400495-2', '2014-11-24', '2017-03-29', '天津经济技术开发区西区新业九街19号：无菌原料药（地塞米松磷酸钠、依碳酸氯替泼诺）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('748eb98151024abca76084ce3d42c413', '天津市石天药业有限责任公司', '津20100059', '李进', '李进', '有限责任公司', '73037720-5', '2014-06-04', '2015-12-21', '天津市西青区王稳庄镇建新村：硬胶囊剂、颗粒剂***', '', null, '', '西青区', '小型', '', '300385', '李连萍', '13332069877', '022-83969739', '022-83969680', '崔维利', '李连萍', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('74bfa9e3fc734cc49449eaac9ac9af13', '天健生物制药（天津）有限公司', '津20100079', '刘礼乐', '阎尔坤', '有限责任公司（中外合资）', '77364733-2', '2010-11-17', '2015-11-16', '天津开发区第五大街泰华路12号：单克隆抗体、体外诊断试剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('78e0f656f36d4716a073ca9038de3a0b', '天津君安生物制药有限公司', '津20100067（补）', '刘东林', '刘刚', '有限责任公司', '73037039-6', '2013-07-26', '2015-12-21', '天津宝坻经济开发区九园工业园：冻干粉针剂、片剂、硬胶囊剂、小容量注射剂、原料药***\n天津宝坻经济开发区西区：片剂、硬胶囊剂、软胶囊剂、颗粒剂、干混悬剂、原料药（阿昔洛韦、利巴韦林）***', '', null, '', '宝坻区', '小型', '4610', '301802', '杜素芳', '13702104984', '13702104984', '022-29244842', '杜素芳', '杜素芳', '无', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('79324819c46f4659b79c77b126ace315', '天津市健生制药有限公司', '津20150039', '盛红益', '周树国', '有限责任公司', '10420446-2', '2015-12-22', '2020-12-21', '片剂，硬胶囊剂(含头孢菌素类)***', '', null, '', '宝坻区', '小型', '1031', '301805', '孙艳东', '15122194903', '022-82459488', '022-82459368', '丁芳亮', '丁芳亮', '', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('79576cab2e9a47989b99147fd9f25bf0', '天津怀仁制药有限公司', '津20100037', '张志北', '马云', '有限责任公司', '23899647-7', '2012-05-31', '2015-12-19', '天津市西青经济开发区宏源道25号：片剂、硬胶囊剂、颗粒剂、原料药（右旋糖酐铁）***', '', null, '', '西青区', '小型', '3000', '300385', '宋永亮', '13602091156', '022-83963409', '022-83963403', '韩振爽', '韩振爽', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('7aaa499eb741464e9022d851764bf209', '天津金虹胜利药业有限公司', '津20110115', '王惠', '谷庆昇', '有限责任公司', '74401963-6', '2011-01-16', '2016-01-15', '天津市静海县经济开发新区广海道3号：\n片剂、颗粒剂、硬胶囊剂、滴耳剂、滴鼻剂、滴眼剂、溶液剂（外用）、散剂、贴膏剂、药品类易制毒化学品（盐酸麻黄碱滴鼻液）***', '', null, '', '静海县', '小型', '', '', '', '', '', '', '', '', '', '9571616ff17e4d88bf0a7d7f7f97e84c');
INSERT INTO `ss_ent_baseinfor` VALUES ('7adac28920cd44f0bba3256be50b0fcb', '天津九鼎医学生物工程有限公司', '津F201201', '温耀刚', '温耀刚', '有限责任公司', '70050847-0', '2012-01-10', '2016-12-31', '人促甲状腺素免放药盒、免疫球蛋白G放免药盒、肝胆酸放免药盒、甲状腺球蛋白放免药盒、胰岛素抗体放免药盒、а1-微球蛋白放免药盒、反三碘甲状腺原氨酸放免药盒、C-肽放免药盒、游离三碘甲状腺原氨酸放免药盒、游离三碘甲状腺素放免药盒、甲状腺微粒体抗体放免药盒、甲状腺球蛋白抗体放免药盒、癌抗原免放药盒、糖类抗原免放药盒、胰高血糖素放免药盒、白蛋白放免药盒、碘[125I]人促甲状腺激素放免药盒、碘[125I]人绒毛膜促性腺激素-в亚单位放免药盒、碘[125I]人胎盘催乳素放免药盒、碘[125I]睾酮放免药盒、碘[12', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('7bde630c0dea4fd19a534d7b49655d35', '盛实百草药业有限公司', '津20130163', '舒鹤栋', '李刚', '有限责任公司', '58975869-X', '2015-06-17', '2018-12-03', '中药饮片（含毒性饮片、炮制范围限净制）***', '生产', null, '否', '滨海新区', '小型', '8000', '300301', '刘佳', '13821179610', '022-58357006-8602', '022-58357006', '张永和', '张永和', '无', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('7e9481bc53ab4cad946f0ffa649b8a89', '天津中新药业集团股份有限公司第六中药厂', '津20100006', '周鸿', '王志强', '股份有限公司', '10307083-7', '2015-07-21', '2015-12-19', '天津市北辰区青光北：滴丸剂***    \n天津市北辰区104国道青光村北天津中新工业集团有限药材公司仓库第43号库：中药材前处理***     \n集团内部共用提取车间：天津中新药业集团股份有限公司中新制药厂（地址：天津开发区第十大街21号）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('80d94fd7a7894890ab66cfcaf5688a60', '天津市津津药业有限公司', '津20150040', '只万民', '只万民', '有限责任公司', '10385102-7', '2015-12-21', '2020-12-20', '天津市西青区张家窝镇周李庄村南：原料药***', '', null, '', '西青区', '中型', '2000', '300380', '袁东超', '18622368986', '022-87988215', '022-87988215', '袁东超', '袁东超', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('822e8a620a464d368eb5168ab2a0342c', '天津中新药业集团股份有限公司达仁堂制药厂', '津20100002', '李燕钰', '王志强', '股份有限公司', '10347050-7', '2012-11-08', '2015-12-19', '天津开发区第十大街21号：丸剂(蜜丸、水蜜丸、水丸)、软胶囊剂、硬胶囊剂、片剂、颗粒剂***\n天津市北辰开发区科研路：煎膏剂、中药提取***\n天津市西青区中北镇李楼村： 中药材前处理、配料、粉碎、研兑工序***', '', null, '', '滨海新区', '中型', '0', '300457', '吴芸蛟', '15022120542', '022-60123816', '022-60123817', '江永萍', '江永萍', '天津市医药集团有限公司', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('83950eda8ba64ce1a6fbd44c63426518', '天津市永康制药有限公司', '津20100151', '刘文忠', '刘文忠', '有限责任公司', '56613183-5', '2012-11-15', '2015-11-14', '天津市西青区辛口工业区鸿运道南侧：\n原料药（磷酸二氢钠、无水碳酸钠、碳酸钙、硫酸锌）、药用辅料（乙醇、苯甲醇、尿素、蓖麻油、轻质液状石蜡、枸橼酸钾、硼酸、乳酸、邻苯二甲酸二乙酯、依地酸二钠、氢氧化钠、甘油、丙二醇、亚硫酸氢钠、焦亚硫酸钠、硫酸钙、十二烷基硫酸钠、无水亚硫酸钠、磷酸氢二钠、磷酸二氢钾、磷酸氢二钾三水合物、醋酸钠、三氯甲烷、稀盐酸、无水乙醇、醋酸、浓氨溶液、蔗糖、异丙醇、盐酸、枸橼酸、苯甲酸钠、白凡士林、DL-酒石酸、硫代硫酸钠、聚山梨酯80、聚乙二醇、乳糖、二氧化硅、二氧化钛、枸橼酸钠、硼砂', '停产-停止药品生产3个月以上，但具备迅速恢复生产的能力', null, '否', '西青区', '小型', '132', '300380', '刘文忠', '13803016000', '27979990', '27979600', '', '', '------', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('84da4e496a1841789c4f8951afc51229', '天津天狮药业有限公司', '津20100074', '吴益群', '李爱军', '有限责任公司', '71294943-3', '2012-12-24', '2015-12-21', '天津新技术产业园区武清开发区源泉路8号：片剂 、颗粒剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('85a6ebd54286460b8e66acfb2c7e35b4', '天津汉瑞药业有限公司', '津20150036', '严洁', '严洁', '有限责任公司', '55035562-3', '2015-04-17', '2020-04-16', '北辰科技园区华实道88号：片剂、硬胶囊剂、颗粒剂、干混悬剂、小容量注射剂、冻干粉针剂、原料药（消旋α-生育酚、右泛醇、四水合辅羧酶、埃索美拉唑镁、甲磺酸达比加群酯、帕瑞昔布钠、替格瑞洛、利伐沙班、维格列汀、利格列汀、磷酸西格列汀、埃索美拉唑钠)***', '', null, '', '北辰区', '小型', '13600', '300409', '张凯', '15822951317', '23028998-8102', '23023918', '张凯', '张凯', '无', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('85f8bae5ce21443fb707c3267ccd0306', '天津天士力之骄药业有限公司', '津20110108', '叶正良', '叶正良', '有限责任公司', '76434964-0', '2014-11-27', '2016-12-17', '天津市北辰科技园区：冻干粉针剂（含一线、二线）、中药提取***', '', null, '', '北辰区', '中型', '16092', '300410', '孟昭平', '15922299597', '022-86342028', '022-26736050', '孟昭平', '杨悦武', '天士力制药集团股份有限公司', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('87987bf10dcb4009a127e8022b895a90', '天津市麦格尔医药材料科技有限公司', '津20110089', '周国昌', '周国昌', '有限责任公司', '78332414-X', '2011-06-20', '2016-06-19', '西青区中北镇李楼村南京福路东：药用辅料（薄膜包衣预混辅料）***', '', null, '', '国家局', '小型', '100', '300380', '周国昌', '13920139275', '27944912', '27397318', '王淑英', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('88b69384d9004b8ab1e41033f56973da', '天津武田药品有限公司', '津20150035', '道岡武春', '中谷昭', '有限责任公司', '60058061-9', '2015-12-20', '2020-12-19', '片剂，硬胶囊剂，进口药品分包装***', '', null, '', '西青区', '小型', '52642', '300385', '邢冬梅', '13821263956', '022-23703123', '022-23972240', '马洪波', '马洪波', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('898e587010a142abb6b6dc76e2ed8120', '天津百特医疗用品有限公司', '津20100016', '邱涛', '高楠', '有限责任公司（外国法人独资）', '60089114-2', '2015-08-20', '2015-12-19', '天津市北辰区铁东路：大容量注射剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('8a3473d16ff54ac3b83e27a8dc40030d', '中国大冢制药有限公司', '津20100026', '高海春', '董增贺', '有限责任公司（中外合资）', '60055002-2', '2014-08-27', '2015-12-19', '天津市西青区精武镇津文公路36号：大容量注射剂、小容量注射剂、滴眼剂、冲洗剂***', '生产', null, '是', '西青区', '大型', '3150', '300382', '', '', '022-83991000', '022-23981645', '住吉信昭', '李量', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('8b44baa959084be2b2c2a4c695031802', '天津市博爱生物药业有限公司', '津20150041', '夏雪城', '夏雪城', '有限责任公司（外商投资企业投资）', '75221058-8', '2015-06-23', '2020-06-22', '天津市静海经济开发区南区科技大道13号：片剂、硬胶囊剂、颗粒剂、丸剂、口服液、糖浆剂、煎膏剂、贴膏剂（含激素类）、中药提取***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '9571616ff17e4d88bf0a7d7f7f97e84c');
INSERT INTO `ss_ent_baseinfor` VALUES ('8c2f54689f8141f5866a01b59c488bd1', '天津田边制药有限公司', '津20100014', '川尻忠司', '郑洁', '有限责任公司（中外合资）', '60057673-2', '2015-04-14', '2015-12-19', '天津经济技术开发区微电子工业区微三路16号：片剂、硬胶囊剂、颗粒剂、进口药品分包装（冻干粉针剂、小容量注射剂、硬胶囊剂、颗粒剂、片剂）***', '生产', null, '否', '滨海新区', '中型', '10482', '300385', '郭桂云', '18622301600', '83962525', '022-23979555', '何斌', '郭桂云', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('8cf9577378bf488791750714bb29018d', '天士力制药集团股份有限公司', '津20100032', '朱永宏', '闫凯境', '股份有限公司（上市）', '23944464-X', '2014-12-06', '2015-12-19', '天津市北辰区普济河东道2号（天士力现代中药城）：滴丸剂、颗粒剂、硬胶囊剂、软胶囊剂、片剂、丸剂；天津市北辰区汀江西路2号：颗粒剂、软胶囊剂、丸剂***\n异地提取车间：陕西省商洛市商州区刘湾产业项目区挥发油提取车间（荆花油、紫苏叶油）；\n集团内部共用提取车间：1、天津天士力现代中药资源有限公司（中药提取物）；2、河南天地药业股份有限公司（降香油提取）***', '', null, '', '北辰区', '大型', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('8e4066d59cd14c51a040941eb34cf578', '天津双维生物药业有限公司', '津20080141', '杨维明', '杨维明', '有限责任公司', '78636419-8', '2014-09-05', '2019-09-04', '天津经济技术开发区西区南大街195号：原料药（羟乙基淀粉）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('908d39f497674492ac0dd53977118a29', '天津市中药饮片厂有限公司', '津20100112', '陈长琦', '陈长琦', '有限责任公司（法人独资）', '10354270-X', '2015-09-24', '2015-12-30', '天津市西青区西青道278号：中药饮片（炮制范围：净制、切制、蒸制、煮制、燀制、炒制、炙制、煅制、制炭、水飞、发芽、发酵）；\n安国市祁州工业城河南大道：中药饮片（炮制范围：净制、切制、蒸制、煮制、燀制、炒制、炙制、煅制、制炭；含毒性饮片）；\n天津市南开区长江道102号：检测中心、成品库***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('9275da03ce43473b9ed176514ca1481b', '天津中新药业集团股份有限公司中新制药厂', '津20110128', '凌宁生', '王志强', '股份制、非法人企业', '77064534-X', '2013-12-06', '2016-09-12', '天津开发区第十大街21号： 片剂、颗粒剂、硬胶囊剂、中药提取***\n天津市西青区中北镇李楼村：中药材前处理（与天津中新药业集团股份有限公司隆顺榕制药厂中药材前处理车间共用）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('95fce5c9ea59455ea703561446381a66', '天津华津制药有限公司', '津20110101', '陈桂娥', '陈桂娥', '有限责任公司（法人独资）', '10347168-1', '2014-02-10', '2016-12-27', '天津市河北区水产前街28号：滴鼻剂***   \n天津开发区西区新安路77号：大容量注射剂、粉针剂（青霉素类、头孢菌素类）、片剂（含头孢菌素类）、硬胶囊剂（含头孢菌素类）、颗粒剂、原料药（盐酸赛洛唑啉）、第二类精神药品（艾司唑仑片、地西泮片、佐匹克隆胶囊）、进口药品分包装（片剂）***', '生产', null, '是', '河北区', '中型', '5025', '300241', '阎宇东', '13194661805', '022-66320777', '022-66320766', '赵青', '赵青', '际华集团股份有限公司', '85d923b0f58b4e5ca9bee9ed52123fca');
INSERT INTO `ss_ent_baseinfor` VALUES ('963fa3cd6249476e8c3902bba808e08d', '天津新内田制药有限公司', '津20100070', '内田尚和', '内田尚和', '有限责任公司（中外合资）', '60058896-0', '2015-04-21', '2015-12-22', '天津市西青经济开发区赛达九支路17号：中药饮片（净制、切制、含毒性饮片）***\n外设仓库：天津市西青区南河镇工业区牛坨子工业园（津文公路西侧）***', '', null, '', '西青区', '小型', '5052', '300385', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('9a30c0a58ed7420cbee55f8167e30e08', '天津达仁堂京万红药业有限公司', '津20100008', '刘文伟', '刘文伟', '有限责任公司', '10378746-7', '2012-12-14', '2015-12-19', '天津市西青区大明道20号：糖浆剂、合剂、酒剂、搽剂、硬胶囊剂、丸剂（蜜丸）、软膏剂、膏药***\n天津市北辰区双口镇双口一村京福公路东侧：中药材前处理***', '', null, '', '西青区', '中型', '7751', '300112', '张彦明', '13820139265', '022-27796216', '022-27795643', '董村', '董村', '天津市医药集团有限公司', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('9c91eb4651a343d7a776bb89635f816a', '天津市海王精细化工有限公司', '津20080138', '赵以正', '赵以正', '有限责任公司', '23882906-2', '2008-04-02', '2013-04-01', '天津市东丽区金钟街南何庄村：药用辅料（丙二醇）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '421fedb458334b138c8586269e10232a');
INSERT INTO `ss_ent_baseinfor` VALUES ('9f81c6a2d8ed42bc961700788b18a2b5', '天津金世制药有限公司', '津20100062', '梁世昌', '宋富智', '有限责任公司', '60060043-X', '2012-03-12', '2015-12-21', '天津市西青经济开发区兴华九支路6号：片剂(含抗肿瘤类）、硬胶囊剂、颗粒剂***', '', null, '', '西青区', '小型', '1176', '300385', '丁丽', '13820679286', '022-88240792', '022-88242016', '梁世昌', '梁世昌', '天津金世集团', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('a20cfd4ce5a7442e906e120b93f391a6', '和心（天津）外用制剂科技有限公司', '津20100145', '龙本威', '龙本威', '有限责任公司（外国法人独资）', '67596496-7', '2013-05-17', '2015-02-08', '天津港保税区海滨十路129号2-B401：凝胶膏剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('a3c4a39e4ff74c8a98753c84c951d0f0', '天津赛诺制药有限公司', '津20150069', '朱江', '朱江', '其他有限责任公司', '71828325-7', '2015-12-20', '2020-12-19', '粉针剂，原料药***', '生产', null, '是', '武清区', '小型', '9121', '301700', '赵艳', '13821172252', '022-82169790-821', '022-82169798', '赵艳', '赵艳', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('a47adcd64bc948389aa81d0369b7e9a6', '天津天士力现代中药资源有限公司', '津20100033', '张雪明', '闫凯境', '有限责任公司（法人独资）', '74668265-0', '2015-06-08', '2015-12-20', '天津市北辰区科技园区：流浸膏剂、原料药（穿心莲内酯）***\n天津市武清区京滨工业园京滨大道6号（天津景军投资有限公司（A1）库房）、天津市北辰区顺义道65号（中储发展股份有限公司天津物流中心48库房）：中药饮片库房***', '', null, '', '北辰区', '中型', '33470', '300402', '张延莹', '15522940937', '022-26736588', '022-26736147', '张延莹', '张延莹', '天士力制药集团股份有限公司', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('a6abe2a8292b44fd9db361ee29e6c626', '天津天大领先制药有限公司', '津20100096', '王鸿涛', '李建新', '有限责任公司', '10409846-0', '2014-12-29', '2015-12-27', '天津新技术产业园区武清开发区开源道4号：硬胶囊剂、散剂***', '生产', null, '否', '武清区', '中型', '13725', '301700', '李灵芝', '13042211668', '022-82122614', '022-82122614', '李灵芝', '李灵芝', '领先集团', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('a6b3c13ad33b4b4186166cdede999b43', '天津南大凯泰药业有限公司', '津20100080', '刘和平', '刘和平', '有限责任公司（自然人独资）', '72297779-6', '2010-12-23', '2015-12-22', '天津大港石化产业园区金汇路1082号:药用辅料（甜菊素）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('aa74785b3c844fa0b7f4e23e1f6b183c', '天津民祥生物医药科技有限公司', '津20140168', '刘万里', '刘万里', '股份有限公司', '78034884-0', '2015-10-09', '2019-07-16', '天津市津南区双港工业园区发港路24号：原料药（马来酸噻吗洛尔、维格列汀）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('ac80322d731b436aaf011b3eea189e36', '凯莱英医药集团（天津）股份有限公司', '津20140164', 'HAO HONG', 'HAO HONG', '有限责任公司', '70057051-4', '2014-03-17', '2019-03-16', '天津经济技术开发区洞庭三街6号：原料药***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('add739525d9c4d999e1d4157259822fa', '天津红日药业股份有限公司', '津20100072', '姚小青', '姚小青', '股份有限公司（上市）', '10409702-X', '2014-12-19', '2015-12-21', '天津新技术产业园区武清开发区泉发路西：小容量注射剂、硬胶囊剂、颗粒剂、片剂、原料药（低分子量肝素钙、盐酸法舒地尔、硫酸氢氯吡格雷、盐酸沙格雷酯、                                     ）、中药提取***\n天津新技术产业园区武清开发区源泉路17号：大容量注射剂、冻干粉针剂、小容量注射剂（抗肿瘤药）、原料药（马来酸氟吡汀、盐酸替罗非班、罗库溴铵、对甲苯磺酰胺、胸腺法新、磺达肝癸钠、肝素钠、盐酸帕洛诺司琼、L-苹果酸、盐酸美金刚、右佐匹克隆、安立生坦、奥氮平、枸橼酸托法替布）、', '', null, '', '武清区', '中型', '91153', '301700', '郑岩', '15902289135', '022-59693539', '022-59693553', '刘方', '刘方', '无', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('af1cefceb6aa47d6be12c7bd2861d518', '天津亚宝药业科技有限公司', '津20150037', '李学强', '李相涛', '有限责任公司', '55340812-9', '2015-12-23', '2020-12-22', '片剂，硬胶囊剂，颗粒剂，中药提取***', '', null, '', '武清区', '小型', '2000', '301700', '鲁俊侠', '13512012900', '022-82100761', '022-82100763', '林红娟', '储玉玲', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('afe38067bfdb4914a4368206f5264e65', '天津凯威永利联合化学有限责任公司', '津20140167', '程迎良', '吴玉凯', '有限责任公司', '55036068-4', '2014-06-24', '2019-06-23', '天津临港工业区渤海十路3369号： 药用辅料（轻质液状石蜡）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('b02f650f1ced4ffeaed0070aa2af8450', '中逸安科生物技术股份有限公司', '津20130137', '高辉', '高辉', '股份有限公司', '73037802-1', '2015-09-17', '2018-02-03', '天津北辰科技园区：疫苗（流行性感冒病毒亚单位疫苗）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('b079d36fbb564ec0815474cfc1197858', '天津天钢气体有限公司', '津20100113', '韩富生', '韩富生', '有限责任公司', '10328344-5', '2010-12-31', '2015-12-30', '天津市东丽区津塘公路398号：医用氧（气态、液态）***', '', null, '', '国家局', '小型', '1000', '300301', '王秀营', '13012214819', '24352716', '24352716', '陈磊', '王秀营', '', 'd4873f66c50d4158a363f7dbb464b157');
INSERT INTO `ss_ent_baseinfor` VALUES ('b6f11846ae8c4bd0ae83900a90cde2af', '天津力生制药股份有限公司', '津20100013', '李云鹏', '郑洁', '股份有限公司（上市）', '10306950-2', '2014-11-17', '2015-12-19', '天津市西青区经济开发区兴华十一支路四号增1号：原料药（伊曲康唑、奥沙拉秦钠、吲达帕胺、盐酸多奈哌齐、富马酸福莫特罗、马来酸依那普利、盐酸苯海索、维生素B4、非布司他、依折麦布、盐酸贝凡洛尔）***\n天津市南开区黄河道491号：片剂（含激素类、抗肿瘤类）、硬胶囊剂（含头孢菌素类）、颗粒剂、麻醉药品（盐酸布桂嗪片）、第二类精神药品（地西泮片）***\n天津市南开区芥园西道213号：片剂（含激素类）、滴丸剂（含性激素类）、硬胶囊剂（含头孢菌素类）、颗粒剂***\n天津市静海城东天宇科技园：片剂、硬胶囊剂、颗粒剂**', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('b6fd1d048471442898c00042335397a6', '诺维信（中国）生物医药有限公司', '津20110156', '蒋新', 'Thomas Videbaek', '有限责任公司（台港澳法人独资）', '68189292-0', '2011-09-02', '2016-09-01', '天津经济技术开发区泰华路35号：原料药（透明质酸）、药用辅料（透明质酸）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('b85bdb335588411bbfedbed2bdf8f243', '天津市东方广诚医药化工有限公司', '津20100076', '张立民', '王建一', '有限责任公司', '10347811-1', '2011-01-12', '2015-12-22', '天津市北辰区宜兴埠东马道三千工业园区：溶液剂（外用）***', '', null, '', '北辰区', '微型', '', '', '', '', '', '', '', '', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('ba1e7ef075ab4dd9b9e5285c8123ca56', '液化空气（天津）有限公司', '津20100090', '王纯全', '马瑞龙（Marcelo Fioranelli）', '有限责任公司（外商独资）', '60089425-5', '2010-12-23', '2015-12-22', '天津市大港区北围堤路炼油厂西侧：医用氧（液态）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('bb614f129b6d441f8f490076c44a4a23', '天津同仁堂集团股份有限公司', '津20100004', '张彦森', '张彦森', '股份有限公司', '10354271-8', '2015-02-16', '2015-12-19', '天津市津南区小站镇工业园区五号路：中药材前处理***\n天津市西青经济开发区赛达八支路1号：片剂、颗粒剂、硬胶囊剂、口服液、糖浆剂、橡胶膏剂***\n天津市北辰区青光镇安光道：橡胶膏剂***', '', null, '', '西青区', '小型', '11000', '300385', '苏何蕾', '13512426286', '022-26579859', '022-26579800', '苗淑杰', '苗淑杰', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('bcfe545bd749435d9680a551a5d86bbb', '天津市津钢氧气厂', '津20100093', '史建全', '史建全', '股份合作制', '10398474-3', '2010-12-23', '2015-12-22', '天津市北辰区西堤头乡曙光农场旁：医用氧（气态）***', '', null, '', '北辰区', '小型', '306', '300408', '崔贵望', '18722255333', '022-86844502', '022-86844502', '杨佩钢', '杨佩钢', '无', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('be1e163cf1f04e5fb9e5e2b1ac56e702', '天津信汇制药股份有限公司', '津20120118', '李炜业', '朱德权', '股份有限公司', '73547999-9', '2012-01-25', '2017-01-24', '天津经济技术开发区汉沽现代产业区泰山路18号： 原料药（贝美前列素、布林佐胺）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('be3204960cc542cf96a7d5ea841f60b5', '天津精华石化有限公司群力分公司', '津20100091', '李金明', '李铁英', '有限责任公司', '66032129-9', '2013-09-11', '2015-12-22', '天津市滨海新区大港天津石化空分厂院内：医用氧（气态）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('bf19b91c97c24f8998b74fcc771eaa29', '天津宏仁堂药业有限公司', '津20150021', '朱晓晶', '张彦森', '有限责任公司', '10315706-X', '2015-12-20', '2020-12-19', '天津市西青开发区赛达八支路3号：硬胶囊剂，颗粒剂，散剂***天津市津南区小站镇传字营村：中药材前处理、中药提取***', '生产', null, '否', '红桥区', '中型', '', '', '', '', '', '', '', '', '', '4f277ce667e24774998ee76f7d0c430a');
INSERT INTO `ss_ent_baseinfor` VALUES ('c1ea5e7966934946a3a3c393b66fb6de', '液化空气天津滨海有限公司', '津20100148', '马俊', 'MARCELO FIORANELL', '股份有限公司（中外合资）', '77733460-8', '2013-11-25', '2015-07-07', '塘沽区临港工业区A12道1092号：医用氧（液态）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('c4430572c86f4f3cbe7d3d8fc5cba42f', '天津市普乐新药用辅料有限公司', '津20110121', '张艳', '张艳', '有限责任公司', '78637090-X', '2011-03-15', '2016-03-14', '天津开发区第五大街泰华路12号创业中心A1005： 药用辅料（薄膜包衣剂）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('c5737718a0b64cee8fb7506afdb762d9', '中美天津史克制药有限公司', '津20100017', '刘洁', '张建津', '中外合资', '60055017-X', '2014-03-12', '2015-12-19', '天津市东丽区程林庄道澄州路口：片剂、硬胶囊剂、软膏剂、乳膏剂、散剂、进口药品分包装（小容量注射剂）***', '', null, '', '东丽区', '中型', '', '300163', '', '', '', '', '', '', '', 'd4873f66c50d4158a363f7dbb464b157');
INSERT INTO `ss_ent_baseinfor` VALUES ('c934af290b7f4ff4a024f4d05876b820', '天津乐敦中药有限公司', '津20140165', '水谷誠志', '桝本健', '有限责任公司(中外合资)', '55650077-2', '2014-04-16', '2019-04-15', '天津市西青经济开发区赛达北一道15号：\n中药提取物（防风通圣散、小青龙汤、麻黄汤）***', '', null, '', '西青区', '中型', '11850', '300385', '15022653005', '15022653005', '15022653005', '02258062699', '陈祥', '水谷诚志', '天津市西青经济开发区管理委员会', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('ca91c9a3b4424843970aef81e15318e3', '权健自然医学科技发展有限公司', '津20140171', '束昱辉', '束昱辉', '有限责任公司', '75811368-2', '2015-11-27', '2020-11-26', '中药饮片（净制、切制、蒸制、煮制、炒制、炙制、煅制）、毒性中药饮片（净制、切制、蒸制、煮制、炒制、炙制）、直接口服中药饮片***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('ce9d8cbe65ed493fa1346acc7cec1299', '天津市津兰药业有限公司', '津20100054', '郭永强', '郭永强', '有限责任公司', '23933114-3', '2010-12-22', '2015-12-21', '天津市西青区津淄公路东侧：大容量注射剂、片剂（含头孢菌素类）、硬胶囊剂（含头孢菌素类）、酊剂（激素类）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('d042b232f1e24ddda30987eefa608416', '天津儿童药业有限公司', '津20150052', '张建川', '张建川', '股份合作企业', '9112011610380444X2', '2015-12-16', '2020-12-16', '', '', null, '', '', '', '', '', '', '', '', '', '', '张仲宽', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('d085e3934b614abe800de2e7f1e75f1d', '天津顶硕药业科技有限公司', '津20100152', '任治国', '许荧', '有限责任公司', '58977249-1', '2013-06-17', '2015-11-16', '天津市西青区张家窝工业区丰泽道6号： 原料药（薁磺酸钠）***', '', null, '', '滨海新区', '小型', '6000', '300384', '星华', '13302171981', '022-83718828', '022-83718829', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('d1442b4d0d6b4c8ea7a22c2a1a957fb6', '天津瑞德药业有限公司', '津20120124', '梁祖望', '梁祖望', '有限责任公司', '77734428-3', '2015-04-14', '2017-06-11', '天津市武清区南蔡村镇金博路2号：贴剂、巴布膏剂、软膏剂、溶液剂、凝胶剂***', '', null, '', '武清区', '微型', '200', '301709', '周小岳', '18002060171', '022-24564181', '022-24564181', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('d3b63f95d02547008ed4168a12186ffc', '天津汉德威药业有限公司', '津20100105', '王顺治', '王顺治', '有限责任公司', '67943393-6', '2015-11-03', '2015-12-30', '天津市津南区二八公路翟家甸桥北：\n原料药（异烟肼、烟酸、烟酰胺、盐酸二甲双胍）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '5d835a6b4db7495fb563a87a06af0236');
INSERT INTO `ss_ent_baseinfor` VALUES ('d51bb845f4d740f59f7ba747961d4b34', '天津嘉汇捷瑞医药科技有限公司', '津20150172', '李文静', '李文静', '有限责任公司', '32859212-6', '2015-11-30', '2020-11-29', '药用辅料（薄膜包衣剂）', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('d80bdb12fe894f2bbe5da186f98d0988', '天津太河制药有限公司', '津20100022', '李颜', '马贵中', '有限责任公司', '60058525-X', '2012-09-13', '2015-12-19', '天津市大港区海洋石化科技园区：冻干粉针剂（含抗肿瘤类）、硬胶囊剂（含抗肿瘤类）、原料药（盐酸博安霉素、盐酸尼莫司汀、福莫司汀、替加氟、氟尿嘧啶、盐酸米托蒽醌、维生素B2、盐酸平阳霉素）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '85d923b0f58b4e5ca9bee9ed52123fca');
INSERT INTO `ss_ent_baseinfor` VALUES ('d8c3eec62b1d4316af61f095e9560f47', '博福-益普生（天津）制药有限公司', '津20100027', 'ERIC BOUTEILLER', 'ERIC BOUTEILLER', '', '60090856-5', '2012-04-18', '2015-12-20', '', '', null, '', '滨海新区', '小型', '8000', '300384', '王丽英', '13512238763', '022-58118542', '022-83710344', '王丽英', '王丽英', '无', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('dc9f8cd981fa40288d5a8da36d7a6758', '天津中一制药有限公司', '津20100057', '宋新波', '张伯礼', '有限责任公司（法人独资）', '60056924-1', '2010-12-22', '2015-12-21', '天津市南开区玉泉路88号：浸膏剂、干膏剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('dd5414417719488e945290aa6bd054ee', '天津药物研究院药业有限责任公司', '津20100012', '刘亚梅', '汤立达', '有限责任公司', '23899179-9', '2015-02-03', '2015-12-19', '', '生产', null, '是', '滨海新区', '中型', '5000', '300301', '梁锦荣', '13642062200', '23006947', '23006940', '梁田', '梁田', '医药集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('dd915170a36a45d7ad1b07d012d61362', '天津中维药业有限公司', '津20120109', '王春荃', '宋德顺', '有限责任公司', '75480727-3', '2012-01-25', '2017-01-24', '天津经济技术开发区汉沽现代产业区华山路16号： 原料药（维生素B1（盐酸硫胺）、硝酸硫胺）***', '', null, '', '滨海新区', '小型', '', '300480', '刘杰', '13512812532', '022-67161710-8501', '022-67161710', '吴建伟', '吴建伟', '金世集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('e0e0fb4c96ea4a128bd83c0366e433c6', '天津天成制药有限公司', '津20100064', '张国基', '张国基', '有限责任公司', '60050140-7', '2011-11-24', '2015-12-21', '天津市西青区杨柳青柳明路9号：\n原料药（碘仿、碘化钾、甘氨酸、盐酸萘甲唑林、盐酸舍曲林、牛磺酸、丙氨酰谷氨酰胺）、药用辅料（聚乙二醇）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('e205f7f1f87d48cd87841460fc339b37', '天津康宝天然药物有限公司', '津20100078', '薛宝文', '高景辉', '有限责任公司', '74139836-X', '2012-11-20', '2015-12-21', '天津市静海经济开发区金海道东：片剂、硬胶囊剂、颗粒剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '9571616ff17e4d88bf0a7d7f7f97e84c');
INSERT INTO `ss_ent_baseinfor` VALUES ('e35067b71b8f4ae09caa74a0280048e3', '天津中津药业股份有限公司', '津20100061', '王培松', '宋富智', '股份有限公司', '10380970-X', '2011-05-11', '2015-12-21', '天津开发区汉沽现代产业园区华山路16号:原料药(维生素B1、硝酸硫胺、吡拉西坦、匹多莫德）***', '', null, '', '西青区', '小型', '12625', '300385', '刘达', '13802117040', '022-67161710-8509', '022-67161817', '李友成', '李友成', '金世集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('e3defaee311b4c769ec97ab1e74d79f1', '天津凯镛药业有限公司', '津20100046', '曹学斌', '曹学斌', '有限责任公司', '60057939-4', '2013-12-06', '2015-12-21', '天津经济技术开发区洞庭路118号: 口服液、中药提取***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('e5cb141aa2bc4c6dbbc35703a38931e0', '天津市中央药业有限公司', '津20100007', '尹家智', '郑洁', '有限责任公司（法人独资）', '10307070-6', '2014-04-26', '2015-12-19', '天津市北辰区富锦道1号：片剂（含头孢菌素类）、硬胶囊剂、颗粒剂、软胶囊剂、合剂、口服溶液剂、滴眼剂、溶液剂、原料药（甲睾酮、尼莫地平、阿替洛尔、马来酸噻吗洛尔、盐酸环丙沙星、诺氟沙星、盐酸维拉帕米、盐酸阿普林定、盐酸美沙酮、甲磺酸酚妥拉明、盐酸莫索尼定、盐酸帕吉林、塞来昔布、依碳酸氯替泼诺、埃索美拉唑钠）、中药提取、麻醉药品（盐酸美沙酮、盐酸美沙酮片、盐酸美沙酮口服溶液）***', '', null, '', '北辰区', '中型', '8235', '300402', '张旭婷', '', '26912628', '', '隆长锋', '隆长锋', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('ea9a6a68f5ef4a54b9510295905257cb', '天津爱勒易医药材料有限公司', '津20100085', '王然', '陈文兵', '有限责任公司', '60084142-8', '2010-12-23', '2015-12-22', '天津市华苑产业园区榕苑路9号: 药用辅料（薄膜包衣剂、聚乙烯醇、乙基纤维素混悬液、交联羧甲基纤维素钠）***', '', null, '', '滨海新区', '小型', '680', '300384', '赵维亮', '15022357765', '83713395', '83716565', '赵雨', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('eb33095dc9fc41d68928324cc99a8179', '天津市山佳医药科技有限公司', '津20140166', '崔建平', '崔建平', '有限责任公司', '70050277-3', '2014-04-24', '2019-04-23', '天津市静海经济开发区聚海道8号：贴剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('ef108916c27840d7812f7ba76a33e5a5', '天津市博发药业有限公司', '津20120100', '闫贵发', '闫贵发', '有限责任公司(自然人独资)', '66032806-0', '2012-06-25', '2017-06-24', '天津市东丽区军粮城工业园区：原料药（对乙酰氨基酚）***', '生产', null, '否', '东丽区', '小型', '1000', '300301', '闫贵发', '022-24350888', '13802188069', '022-24356288', '刘志起', '刘志起', '', 'd4873f66c50d4158a363f7dbb464b157');
INSERT INTO `ss_ent_baseinfor` VALUES ('f26e49622dfd43fda221e1203d694b78', '天津中威和治药业有限公司', '津20110157', '商杰', '商杰', '有限责任公司', '58328004-X', '2011-09-21', '2016-09-20', '天津市宝坻区经济开发区宝中道北侧:片剂、硬胶囊剂、颗粒剂、口服液、茶剂***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('f2c2a46d599a4daf8aad352094e9290b', '天津巨能生物技术有限公司', '津20120122', '赵坤', '赵坤', '有限责任公司', '77733400-X', '2012-04-13', '2017-04-12', '天津市西青经济开发区辛口园泰华路2号：原料药（硼砂、硼酸、苯甲酸）***', '生产', null, '否', '西青区', '小型', '150', '300380', '罗春大', '13662019482', '022-27991066', '022-27991066', '魏淑兴', '魏淑兴', '无', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('f3ec2844e5c948a5944795b6e3be943e', '中国医药保健品有限公司塘沽加工厂', '津20110127', '刘洪海', '***', '非法人单位', '77734255-2', '2011-06-16', '2016-06-15', '塘沽区中心桥乡八堡村西：中药饮片（净制、切制）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('f409fc3f4f404ed6a0ec7a61bf3bf5d1', '天津美伦医药集团有限公司', '津20100034', '赵兵', '赵永良', '有限责任公司', '60055311-9', '2013-05-21', '2015-12-19', '天津市北辰经济开发区双辰中路18号：硬胶囊剂、片剂、丸剂（含中药提取）、颗粒剂、煎膏剂、滴丸剂、药用辅料（甜菊素）***', '', null, '', '北辰区', '中型', '6000', '300400', '杨玥', '15522006972', '26985856', '26978455', '杨玥', '杨玥', '', '44284adb0da14a269fb0c907d0f1ceaf');
INSERT INTO `ss_ent_baseinfor` VALUES ('f41d49901dc94b51aad36d29d876e8e4', '天津和治友德制药有限公司', '津20150042', '盛皓', '韩金明', '有限责任公司（法人独资）', '66614139-5', '2015-09-07', '2020-09-06', '天津市宝坻区经济开发区天中路16号：片剂、硬胶囊剂、颗粒剂***', '', null, '', '宝坻区', '小型', '8000', '301800', '何淑娟', '13820861051', '022-29277780', '022-29277793', '周亮', '周亮', '', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('f4cf0408308a4c9492f8dbf7f557ece4', '天津君安生物制药有限公司', '津20100067（补）', '刘东林', '刘刚', '有限责任公司', '73037039-6', '2013-07-26', '2015-12-21', '天津宝坻经济开发区九园工业园：冻干粉针剂、片剂、硬胶囊剂、小容量注射剂、原料药***\n天津宝坻经济开发区西区：片剂、硬胶囊剂、软胶囊剂、颗粒剂、干混悬剂、原料药（阿昔洛韦、利巴韦林）***', '', null, '', '宝坻区', '小型', '4610', '301802', '杜素芳', '13702104984', '13702104984', '022-29244842', '杜素芳', '杜素芳', '无', 'aef819fdcf0d4671a99bbed6365955e3');
INSERT INTO `ss_ent_baseinfor` VALUES ('f5360406b8254cbc8d05ab390fc4f5a4', '天津市武清区福康化工厂', '津20110123', '段增军', '段增军', '股份合作企业', '10404076-0', '2011-04-06', '2016-04-05', '天津市武清区石各庄镇石各庄村北侧：药用辅料（聚乙二醇）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('f6cd5a200d994d13b91065b43e774ace', '天津中新药业集团股份有限公司', '津20100111', '王志强', '王志强', '股份有限公司', '10310078-4', '2012-11-07', '2015-12-30', '天津市南开区白堤路17号：丸剂、浸膏剂、合剂、颗粒剂、糖浆剂、酊剂、原料药、片剂、软胶囊剂、硬胶囊剂、滴丸剂、栓剂***', '', null, '', '南开区', '大型', '', '300193', '彭静', '13642074359', '022-27020917', '022-27020917', '', '', '医药集团', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor` VALUES ('f70a3d3b37024341bf57e100c0d592c3', '天泽恩源（天津）制药有限公司', '津20140170', '彭志强', '彭志强', '有限责任公司（外商投资企业投资）', '05208592-3', '2015-02-02', '2019-12-18', '天津市武清开发区泉秀路10号：原料药（他氟前列素、前列地尔、米索前列醇、卡前列素氨丁三醇）***', '', null, '', '', '', '', '', '', '', '', '', '', '', '', 'ebe97416b0d54e6dacd413fca9f86b3c');
INSERT INTO `ss_ent_baseinfor` VALUES ('f8b5d8dbff3c4f2f95750f7d4cc9e757', '天津市华鑫工业气体有限公司', '津20100092', '王希会', '王希会', '有限责任公司', '76129773-4', '2010-12-23', '2015-12-22', '塘沽海洋高新技术开发区华山道121号：医用氧（气态）***', '', null, '', '滨海新区', '小型', '290', '300451', '郭家怡', '13612116780', '022-25215999', '022-25216166', '郭家怡', '郭家怡', '无', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('fbad53cb55d84ce59ee99d27e8b8720e', '天津金汇药业集团有限公司', '津20120065', '程绍国', '陈桂娥', '有限责任公司', '73283148-3', '2012-04-11', '2017-01-24', '天津市西青区杨柳青柳霞路98号：原料药（醋酸泼尼松、醋酸氢化可的松、醋酸曲安奈德、曲安奈德、泼尼松、泼尼松龙、曲安西龙、倍他米松、布地奈德）、药用辅料（乙醇）***', '', null, '', '西青区', '小型', '3369', '300380', '张秀敏', '13820555007', '022-27950672', '022-27932148', '张秀敏', '张秀敏', '天津华津制药有限公司', '6ff4a6b3cf0548958cb1b4f212f28c64');
INSERT INTO `ss_ent_baseinfor` VALUES ('fc2db97e83954c3f979a2e46c829fca6', '天津中新药业集团股份有限公司隆顺榕制药厂', '津20100001', '刘萍', '王志强', '股份制、非法人企业', '10307081-0', '2012-11-08', '2015-12-19', '天津经济技术开发区第十大街21号：片剂、酊剂、颗粒剂、糖浆剂、中药提取（集团内部共用车间：天津中新药业集团股份有限公司中新制药厂提取车间）***\n西青区中北镇李楼村、北辰区刘安庄村：中药材前处理***', '', null, '', '滨海新区', '中型', '0', '300457', '刘卫红', '13212220813', '022-25293288', '022-25295056', '袁雪海', '袁雪海', '天津市医药集团', 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor` VALUES ('fcc2886366914942b00ac6cc7d8d81e7', '天津天药药业股份有限公司', '津20100029', '王福军', '李立群', '股份有限公司（上市）', '71824811-X', '2010-12-20', '2015-12-19', '天津市经济技术开发区黄海路221号:片剂(含激素类)***\n天津开发区西区新业九街19号:原料药（倍他米松、丁酸氢化可的松、醋酸氟轻松、地塞米松磷酸钠、醋酸泼尼松龙、泼尼松、醋酸甲泼尼龙、哈西奈德、醋酸曲安奈德、盐酸氟桂利嗪、氢化可的松、泼尼松龙、醋酸泼尼松、醋酸氢化可的松、琥珀酸甲泼尼龙、盐酸布桂嗪、桂利嗪、丙酸氯倍他索、地塞米松、氯碘羟喹、甲泼尼龙、醋酸地塞米松、曲安奈德、曲安西龙、丙酸倍氯米松、倍他米松磷酸钠、阿达帕林、糠酸莫米松、丙酸氟替卡松氟米龙、卤米松、布地奈德、昔萘酸沙美特罗、氢化可的松琥珀', '生产', null, '否', '滨海新区', '大型', '', '', '', '', '', '', '张杰', '张杰', '天津市金耀集团', 'be8d6dacb14a42c7bb31893f3dcb922b');

-- ----------------------------
-- Table structure for `ss_ent_baseinfor_copy`
-- ----------------------------
DROP TABLE IF EXISTS `ss_ent_baseinfor_copy`;
CREATE TABLE `ss_ent_baseinfor_copy` (
  `id_` varchar(64) NOT NULL COMMENT '企业ID',
  `name_` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `xkzcode_` varchar(255) DEFAULT NULL COMMENT '许可证代码',
  `fuzeren` varchar(255) DEFAULT NULL COMMENT '负责人',
  `fadingdaibiaoren` varchar(255) DEFAULT NULL COMMENT '法定代表人',
  `type` varchar(255) DEFAULT NULL COMMENT '企业类型',
  `zuzhijigoucode` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `xkzfzdate` datetime DEFAULT NULL COMMENT '许可证发证日期',
  `xkzyxdate` datetime DEFAULT NULL COMMENT '许可证有效日期',
  `scfw` varchar(255) DEFAULT NULL COMMENT '生产范围',
  `sczt` varchar(255) DEFAULT NULL,
  `gxbm` varchar(255) DEFAULT NULL,
  `is_wj` varchar(255) DEFAULT NULL,
  `zcdz` varchar(255) DEFAULT NULL,
  `qygm` varchar(255) DEFAULT NULL,
  `zczb` varchar(255) DEFAULT NULL,
  `yzbm` varchar(255) DEFAULT NULL,
  `qylxr` varchar(255) DEFAULT NULL,
  `yddh` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `cz` varchar(255) DEFAULT NULL,
  `zlfzr` varchar(255) DEFAULT NULL,
  `zlsqr` varchar(255) DEFAULT NULL,
  `ssjt` varchar(255) DEFAULT NULL,
  `ssgx` varchar(255) DEFAULT NULL COMMENT '所属管辖',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户配置表';

-- ----------------------------
-- Records of ss_ent_baseinfor_copy
-- ----------------------------
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('00a6355517874ab9ac9c89184d438124', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('02dba066a2894ac08fafe0dc599caba2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('03aa6e8bddce4f1599c9f7fb396fb12f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('044f8f34dbdd40b493a628fd793fd326', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('0899cc0f92be4db4ab73404490c12227', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('090c7dbb01024860aed348fe6fa5d6aa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('0943139299784dfa951b4af898a1958e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('10605b3006ce4a8fb39d5b228b3a71c8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('111d1124937e4fc78b975ce58298e09c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1514950998944c82a8baad6189155f3d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('179d186fcfd2406cb0efc33d8b6497ef', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1877c6ec0a7946f384db9bebf1a206db', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('196149c5be994f3eb8485de1917e4aa1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1a0691dc703740d28cfc0281edfa7441', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1c0ee3a2c89f4b7fa66a8ffa747e3872', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1d56017d8c894ce0b6e38f52508392fd', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('1e1f50d2f5b54c3bbbb5d9e6db736fdb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('21dec403140649c8904f500b1a588d53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('22777a74d8304254a4d526ae1ec14a58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('22cddd255c164a308f57562190a60d6b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('2595b4dacab9480aa62071e5194e44bb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('25c4cca3611a441c968d77a5b625d968', '测试专用（不应该显示在天津局用户中）', '', 'a12', '', '', '', '2016-03-23 00:00:00', '2016-03-23 00:00:00', '', '', null, '0', '', '', '', null, null, null, null, null, null, null, null, '63cf387a243d4d9799367d773b853346');
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('28cb96b18c1743789e5ce4120780be18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('2b3d92580e004e3da14cea095ae938e7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('2b76c04a14454c62b1765733ac2b2a67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('2cd6447d5585414898b483c4bca25250', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('2f1c5f28806a4e6fa24999d66106bf04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('303a3d3a8fad4086a0df892247a4a676', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('322e9ee7be714145b27d13344ae02f2f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('332b4cd9c8374de7862fe0a12e98e98d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('36ec55f6073f47358b80645a1342912f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('387cc86d2c78460cb2d1b51b16aaf90a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3a09560d4a3643d4a5caa25adc335ff2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3a7f09d4a9fd4826882dba4f2f21cd0f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3c15e693da9b48b3bf17563243914a6b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3c43e0ee718a4b26b9f977228cae2af4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3cd8b1608a93474ebf2db664c48cd333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('3fb7d3743d5a45068034614e6d4fb929', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('40a954d5f1de4acc8454ee1d5bc2b523', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('415e0bcb711d41f18d2b37b8cfe6d5ca', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('437f41e064694af58fec49f04fab915a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4527f990b51549b98838565c743e06ef', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('452eeab4295f4cd89e45900e7eab5921', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('45de521566d34201b156a18e0ad647bc', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('469a888aa7c44f209571e3c4bc8b7a63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('47934d1bb423473da35efb622a453d51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('47ac54966cef44e88dc5ef5d96776089', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('47b7b8ab8faa4b429a3ba3a9a1a96508', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4b826ed9439d4876a407a2033e7ff6d9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4b8f95d8c48f47268abd499187b8f4bc', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4d186134eaff40479b8d0d92d2da3962', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4d78ceada72c41c080aa9d4d5a0685b0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('4f17781531d649fb8dd6ce07fc5898c1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('51775000e7004d8fa022f0623216608c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('5698058a23384a1cb3da5336f64b35fe', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('585fd783154c4544b982bb73f88b0013', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('59fb43251638496395c81dbd8600e87f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('5fefa24592364417bb3c401592d30be2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('606152be6b1d4b8a9c4f9318776ba477', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('620e08cb60794bdaaaf3a77d1a3da473', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('654d5208c27d49bba8ad0e3990bb3037', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('65c786fcf63d4c7a844c0c9281dd537c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('66696e33e4ac46c6a968521494839e0a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6671b5b9de764d67bb573fa9069ff15f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('682f07acd8dc4639812f116a9956a933', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6936c7d9f44842a0906e50a0aa99b983', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('69a9dad62c1b4635acf50301b4291681', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6b404bc5ded741f1a9ba05310535400e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6c9621c541f549e6b2dd9053a50d6211', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6d06fd5e187a4b3b8138cd6a86bdac73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6d5cba75684c41c791ca004718a4352d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6eb5b4e63b594f418f62c4299c27300b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6f883873f3b7473ba9291e463ed714e9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('6ff079022e1f47ccab73419fb44d3660', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7226f8f4d9724a58b35111fc06b3c09d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('73682106f6804a1e912c1c577f93272a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7411f13dbb064ba1bfb71e29718531f0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('748eb98151024abca76084ce3d42c413', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('74bfa9e3fc734cc49449eaac9ac9af13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('78e0f656f36d4716a073ca9038de3a0b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('79324819c46f4659b79c77b126ace315', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('79576cab2e9a47989b99147fd9f25bf0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7aaa499eb741464e9022d851764bf209', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7adac28920cd44f0bba3256be50b0fcb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7bde630c0dea4fd19a534d7b49655d35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('7e9481bc53ab4cad946f0ffa649b8a89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('80d94fd7a7894890ab66cfcaf5688a60', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('822e8a620a464d368eb5168ab2a0342c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('83950eda8ba64ce1a6fbd44c63426518', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('84da4e496a1841789c4f8951afc51229', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('85a6ebd54286460b8e66acfb2c7e35b4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('85f8bae5ce21443fb707c3267ccd0306', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('87987bf10dcb4009a127e8022b895a90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('88b69384d9004b8ab1e41033f56973da', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('898e587010a142abb6b6dc76e2ed8120', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('8a3473d16ff54ac3b83e27a8dc40030d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('8b44baa959084be2b2c2a4c695031802', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('8c2f54689f8141f5866a01b59c488bd1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('8cf9577378bf488791750714bb29018d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('8e4066d59cd14c51a040941eb34cf578', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('908d39f497674492ac0dd53977118a29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('9275da03ce43473b9ed176514ca1481b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('95fce5c9ea59455ea703561446381a66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('963fa3cd6249476e8c3902bba808e08d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('9a30c0a58ed7420cbee55f8167e30e08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('9c91eb4651a343d7a776bb89635f816a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('9f81c6a2d8ed42bc961700788b18a2b5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a20cfd4ce5a7442e906e120b93f391a6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a3c4a39e4ff74c8a98753c84c951d0f0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a47adcd64bc948389aa81d0369b7e9a6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a6abe2a8292b44fd9db361ee29e6c626', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a6b3c13ad33b4b4186166cdede999b43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('a91de5d5b30d49849be64e4b84ae27dc', 'aaaa', '', 'aaa55', '555', '', '', '2016-03-23 00:00:00', '2016-03-23 00:00:00', '', '', null, '0', '', '', '', null, null, null, null, null, null, null, null, '421fedb458334b138c8586269e10232a');
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('aa74785b3c844fa0b7f4e23e1f6b183c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ac80322d731b436aaf011b3eea189e36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('add739525d9c4d999e1d4157259822fa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('af1cefceb6aa47d6be12c7bd2861d518', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('afe38067bfdb4914a4368206f5264e65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b02f650f1ced4ffeaed0070aa2af8450', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b079d36fbb564ec0815474cfc1197858', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b54e610f1964459093e62562be62092f', '测试企业1', '1123A13111', '测试负责任444', '111333', '测试111', '12312111', '2016-03-23 00:00:00', '2017-03-23 00:00:00', '测试111', '正常', '天津市河东区药监局', '1', '天津111', '300', '1000', null, null, null, null, null, null, null, null, 'be8d6dacb14a42c7bb31893f3dcb922b');
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b6f11846ae8c4bd0ae83900a90cde2af', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b6fd1d048471442898c00042335397a6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('b85bdb335588411bbfedbed2bdf8f243', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ba1e7ef075ab4dd9b9e5285c8123ca56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('bb614f129b6d441f8f490076c44a4a23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('bcfe545bd749435d9680a551a5d86bbb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('be1e163cf1f04e5fb9e5e2b1ac56e702', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('be3204960cc542cf96a7d5ea841f60b5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('bf19b91c97c24f8998b74fcc771eaa29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('c1ea5e7966934946a3a3c393b66fb6de', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('c4430572c86f4f3cbe7d3d8fc5cba42f', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('c5737718a0b64cee8fb7506afdb762d9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('c934af290b7f4ff4a024f4d05876b820', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ca91c9a3b4424843970aef81e15318e3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ce9d8cbe65ed493fa1346acc7cec1299', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d042b232f1e24ddda30987eefa608416', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d085e3934b614abe800de2e7f1e75f1d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d1442b4d0d6b4c8ea7a22c2a1a957fb6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d3b63f95d02547008ed4168a12186ffc', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d51bb845f4d740f59f7ba747961d4b34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d80bdb12fe894f2bbe5da186f98d0988', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('d8c3eec62b1d4316af61f095e9560f47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('da2bee79bef4426b9bfdb5d713869879', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('dc9f8cd981fa40288d5a8da36d7a6758', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('dd5414417719488e945290aa6bd054ee', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('dd915170a36a45d7ad1b07d012d61362', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('e0e0fb4c96ea4a128bd83c0366e433c6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('e205f7f1f87d48cd87841460fc339b37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('e35067b71b8f4ae09caa74a0280048e3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('e3defaee311b4c769ec97ab1e74d79f1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('e5cb141aa2bc4c6dbbc35703a38931e0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ea8083520bfb49dfb9ef89f2fd496da4', '天津全新制药集团', '022123456111', '刘备', '关羽', '', '123456', '2016-02-01 04:25:09', '2017-02-01 04:25:17', '感冒药', '正常', '天津市药监局', '1', '天津市XXXX', '1000', '2000', '300123', '赵云', '13920123456', '02288888888', '0228888888', '赵云', '魏延', '天津全新制药集团', 'be742f86c9914e7b83bfb531c2e693df');
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ea9a6a68f5ef4a54b9510295905257cb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('eb33095dc9fc41d68928324cc99a8179', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('ef108916c27840d7812f7ba76a33e5a5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f26e49622dfd43fda221e1203d694b78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f2c2a46d599a4daf8aad352094e9290b', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f3ec2844e5c948a5944795b6e3be943e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f409fc3f4f404ed6a0ec7a61bf3bf5d1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f41d49901dc94b51aad36d29d876e8e4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f4cf0408308a4c9492f8dbf7f557ece4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f5360406b8254cbc8d05ab390fc4f5a4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f6cd5a200d994d13b91065b43e774ace', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f70a3d3b37024341bf57e100c0d592c3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('f8b5d8dbff3c4f2f95750f7d4cc9e757', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('fbad53cb55d84ce59ee99d27e8b8720e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('fc2db97e83954c3f979a2e46c829fca6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_ent_baseinfor_copy` VALUES ('fcc2886366914942b00ac6cc7d8d81e7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `ss_material_infor`
-- ----------------------------
DROP TABLE IF EXISTS `ss_material_infor`;
CREATE TABLE `ss_material_infor` (
  `id_` varchar(64) NOT NULL COMMENT '原辅料ID流水号',
  `name_` varchar(255) DEFAULT NULL COMMENT '原辅料名称',
  `batchnumber_` varchar(255) DEFAULT NULL COMMENT '原辅料批号',
  `ext_property_3` varchar(255) DEFAULT NULL COMMENT '扩展属性3',
  `ext_property_2` varchar(255) DEFAULT NULL COMMENT '扩展属性2',
  `ext_property_1` varchar(255) DEFAULT '' COMMENT '扩展属性1',
  `buydate` date DEFAULT NULL COMMENT '原辅料购进时间',
  `buycount` int(11) DEFAULT NULL COMMENT '原辅料购进数量',
  `validitydate` date DEFAULT NULL COMMENT '原辅料有效期',
  `materialstandard` varchar(255) DEFAULT NULL COMMENT '原辅料规格',
  `materialcode` varchar(255) DEFAULT NULL COMMENT '原辅料物料代码',
  `org_id_` varchar(64) DEFAULT NULL COMMENT '物料所属企业',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='原辅料表';

-- ----------------------------
-- Records of ss_material_infor
-- ----------------------------
INSERT INTO `ss_material_infor` VALUES ('6be523b8aa0e452b94984ec4d58ecbc2', '测试4', '444444', null, null, '', '2016-05-04', '1000', '2016-05-28', '', 'code444', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_material_infor` VALUES ('a9f677c8581546168452da287d307912', '测试物料名称2', '2222', null, null, '', '2016-05-04', '100', '2016-06-07', '公斤', 'abc', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_material_infor` VALUES ('a9f677c8581546168452da287d307913', '测试物料名称3', '3333', null, null, '', '2016-05-04', '100', '2016-06-07', '公斤', 'abc', '02dba066a2894ac08fafe0dc599caba2');
INSERT INTO `ss_material_infor` VALUES ('a9f677c8581546168452da287d30791f', '测试物料名称1', '11111', null, null, '', '2016-05-03', '100', '2016-06-07', '公斤', 'abcd', '00a6355517874ab9ac9c89184d438124');
INSERT INTO `ss_material_infor` VALUES ('e09d454ffeb742e18754de791d68d291', '例外测试', '9', null, null, '', '2016-05-10', '200', '2018-05-10', '盒', 'code333', null);

-- ----------------------------
-- Procedure structure for `checkitemprocess`
-- ----------------------------
DROP PROCEDURE IF EXISTS `checkitemprocess`;
DELIMITER ;;
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
DELIMITER ;

-- ----------------------------
-- Function structure for `getCheckItemChildLst`
-- ----------------------------
DROP FUNCTION IF EXISTS `getCheckItemChildLst`;
DELIMITER ;;
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
DELIMITER ;

-- ----------------------------
-- Function structure for `getChildLst`
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
DELIMITER ;;
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
DELIMITER ;
