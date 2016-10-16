/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : jc

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-10-17 06:43:58
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
-- Table structure for `act_evt_log`
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
-- Records of act_evt_log
-- ----------------------------


-- ----------------------------
-- Table structure for `act_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('next.dbid', '147501', '60');
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(5.21.0.0)', '1');
INSERT INTO `act_ge_property` VALUES ('schema.version', '5.21.0.0', '1');

-- ----------------------------
-- Table structure for `act_hi_actinst`
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
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO `act_hi_actinst` VALUES ('10002', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:48:37.543', '2016-09-01 14:48:37.571', '28', '');
INSERT INTO `act_hi_actinst` VALUES ('10004', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:48:37.572', '2016-09-01 14:48:37.575', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('10005', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '10006', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:48:37.575', '2016-09-01 14:49:47.104', '69529', '');
INSERT INTO `act_hi_actinst` VALUES ('10009', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:49:47.105', '2016-09-01 14:49:47.143', '38', '');
INSERT INTO `act_hi_actinst` VALUES ('10012', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:49:47.147', '2016-09-01 14:50:28.843', '41696', '');
INSERT INTO `act_hi_actinst` VALUES ('10013', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:49:47.147', '2016-09-01 14:49:47.150', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('10014', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:49:47.151', '2016-09-01 14:49:47.151', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('10017', 'hireProcessWithJpa:1:7', '10001', '10015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '10018', null, 'Tech interview', 'userTask', null, '2016-09-01 14:49:47.176', '2016-09-01 14:50:28.757', '41581', '');
INSERT INTO `act_hi_actinst` VALUES ('10020', 'hireProcessWithJpa:1:7', '10001', '10016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '10021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:49:47.193', '2016-09-01 14:50:17.622', '30429', '');
INSERT INTO `act_hi_actinst` VALUES ('10024', 'hireProcessWithJpa:1:7', '10001', '10016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:50:17.622', '2016-09-01 14:50:17.639', '17', '');
INSERT INTO `act_hi_actinst` VALUES ('10026', 'hireProcessWithJpa:1:7', '10001', '10015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:50:28.757', '2016-09-01 14:50:28.773', '16', '');
INSERT INTO `act_hi_actinst` VALUES ('10027', 'hireProcessWithJpa:1:7', '10001', '10010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:50:28.824', '2016-09-01 14:50:28.824', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('10028', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:50:28.858', '2016-09-01 14:50:28.859', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('10029', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:50:28.859', '2016-09-01 14:50:29.227', '368', '');
INSERT INTO `act_hi_actinst` VALUES ('10030', 'hireProcessWithJpa:1:7', '10001', '10001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:50:29.227', '2016-09-01 14:50:29.228', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('12502', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:51:34.328', '2016-09-01 14:51:34.356', '28', '');
INSERT INTO `act_hi_actinst` VALUES ('12504', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:51:34.357', '2016-09-01 14:51:34.360', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('12505', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '12506', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:51:34.360', '2016-09-01 14:51:38.095', '3735', '');
INSERT INTO `act_hi_actinst` VALUES ('12509', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:51:38.095', '2016-09-01 14:51:38.100', '5', '');
INSERT INTO `act_hi_actinst` VALUES ('12512', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.171', '69', '');
INSERT INTO `act_hi_actinst` VALUES ('12513', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.102', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('12514', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.102', '2016-09-01 14:51:38.102', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('12517', 'hireProcessWithJpa:1:7', '12501', '12515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '12518', null, 'Tech interview', 'userTask', null, '2016-09-01 14:51:38.105', '2016-09-01 14:51:38.159', '54', '');
INSERT INTO `act_hi_actinst` VALUES ('12520', 'hireProcessWithJpa:1:7', '12501', '12516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '12521', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:51:38.108', '2016-09-01 14:51:38.142', '34', '');
INSERT INTO `act_hi_actinst` VALUES ('12524', 'hireProcessWithJpa:1:7', '12501', '12516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.142', '2016-09-01 14:51:38.143', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('12526', 'hireProcessWithJpa:1:7', '12501', '12515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:51:38.159', '2016-09-01 14:51:38.160', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('12527', 'hireProcessWithJpa:1:7', '12501', '12510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:51:38.168', '2016-09-01 14:51:38.168', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('12528', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:51:38.172', '2016-09-01 14:51:38.173', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('12529', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:51:38.173', '2016-09-01 14:51:38.250', '77', '');
INSERT INTO `act_hi_actinst` VALUES ('12530', 'hireProcessWithJpa:1:7', '12501', '12501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:51:38.250', '2016-09-01 14:51:38.250', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('15002', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 20:47:13.183', '2016-09-01 20:47:13.230', '47', '');
INSERT INTO `act_hi_actinst` VALUES ('15004', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 20:47:13.230', '2016-09-01 20:47:13.234', '4', '');
INSERT INTO `act_hi_actinst` VALUES ('15005', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '15006', null, 'Telephone interview', 'userTask', null, '2016-09-01 20:47:13.234', '2016-09-01 20:47:13.350', '116', '');
INSERT INTO `act_hi_actinst` VALUES ('15009', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 20:47:13.350', '2016-09-01 20:47:13.364', '14', '');
INSERT INTO `act_hi_actinst` VALUES ('15012', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 20:47:13.366', '2016-09-01 20:47:13.495', '129', '');
INSERT INTO `act_hi_actinst` VALUES ('15013', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 20:47:13.367', '2016-09-01 20:47:13.368', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('15014', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.368', '2016-09-01 20:47:13.368', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('15017', 'hireProcessWithJpa:1:7', '15001', '15015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '15018', null, 'Tech interview', 'userTask', null, '2016-09-01 20:47:13.375', '2016-09-01 20:47:13.480', '105', '');
INSERT INTO `act_hi_actinst` VALUES ('15020', 'hireProcessWithJpa:1:7', '15001', '15016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '15021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 20:47:13.379', '2016-09-01 20:47:13.453', '74', '');
INSERT INTO `act_hi_actinst` VALUES ('15024', 'hireProcessWithJpa:1:7', '15001', '15016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.453', '2016-09-01 20:47:13.456', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('15026', 'hireProcessWithJpa:1:7', '15001', '15015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 20:47:13.480', '2016-09-01 20:47:13.482', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('15027', 'hireProcessWithJpa:1:7', '15001', '15010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 20:47:13.491', '2016-09-01 20:47:13.491', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('15028', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 20:47:13.498', '2016-09-01 20:47:13.498', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('15029', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 20:47:13.498', '2016-09-01 20:47:13.613', '115', '');
INSERT INTO `act_hi_actinst` VALUES ('15030', 'hireProcessWithJpa:1:7', '15001', '15001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 20:47:13.613', '2016-09-01 20:47:13.613', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('20002', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 13:38:35.543', '2016-09-02 13:38:35.569', '26', '');
INSERT INTO `act_hi_actinst` VALUES ('20004', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 13:38:35.569', '2016-09-02 13:38:35.572', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('20005', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '20006', null, 'Telephone interview', 'userTask', null, '2016-09-02 13:38:35.572', '2016-09-02 13:38:35.675', '103', '');
INSERT INTO `act_hi_actinst` VALUES ('20009', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 13:38:35.675', '2016-09-02 13:38:35.682', '7', '');
INSERT INTO `act_hi_actinst` VALUES ('20012', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 13:38:35.683', '2016-09-02 13:38:35.768', '85', '');
INSERT INTO `act_hi_actinst` VALUES ('20013', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 13:38:35.683', '2016-09-02 13:38:35.684', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('20014', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.684', '2016-09-02 13:38:35.684', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('20017', 'hireProcessWithJpa:2:17509', '20001', '20015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '20018', null, 'Tech interview', 'userTask', null, '2016-09-02 13:38:35.688', '2016-09-02 13:38:35.754', '66', '');
INSERT INTO `act_hi_actinst` VALUES ('20020', 'hireProcessWithJpa:2:17509', '20001', '20016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '20021', null, 'Financial negotiation', 'userTask', null, '2016-09-02 13:38:35.692', '2016-09-02 13:38:35.732', '40', '');
INSERT INTO `act_hi_actinst` VALUES ('20024', 'hireProcessWithJpa:2:17509', '20001', '20016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.732', '2016-09-02 13:38:35.735', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('20026', 'hireProcessWithJpa:2:17509', '20001', '20015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 13:38:35.754', '2016-09-02 13:38:35.756', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('20027', 'hireProcessWithJpa:2:17509', '20001', '20010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 13:38:35.765', '2016-09-02 13:38:35.765', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('20028', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 13:38:35.770', '2016-09-02 13:38:35.770', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('20029', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 13:38:35.770', '2016-09-02 13:38:35.869', '99', '');
INSERT INTO `act_hi_actinst` VALUES ('20030', 'hireProcessWithJpa:2:17509', '20001', '20001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 13:38:35.869', '2016-09-02 13:38:35.869', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('22502', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 15:07:43.968', '2016-09-02 15:07:43.989', '21', '');
INSERT INTO `act_hi_actinst` VALUES ('22504', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 15:07:43.990', '2016-09-02 15:07:43.993', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('22505', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '22506', null, 'Telephone interview', 'userTask', null, '2016-09-02 15:07:43.993', '2016-09-02 15:07:44.076', '83', '');
INSERT INTO `act_hi_actinst` VALUES ('22509', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:07:44.076', '2016-09-02 15:07:44.080', '4', '');
INSERT INTO `act_hi_actinst` VALUES ('22512', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.159', '77', '');
INSERT INTO `act_hi_actinst` VALUES ('22513', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.082', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('22514', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.082', '2016-09-02 15:07:44.083', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('22517', 'hireProcessWithJpa:2:17509', '22501', '22515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '22518', null, 'Tech interview', 'userTask', null, '2016-09-02 15:07:44.086', '2016-09-02 15:07:44.147', '61', '');
INSERT INTO `act_hi_actinst` VALUES ('22520', 'hireProcessWithJpa:2:17509', '22501', '22516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '22521', null, 'Financial negotiation', 'userTask', null, '2016-09-02 15:07:44.089', '2016-09-02 15:07:44.128', '39', '');
INSERT INTO `act_hi_actinst` VALUES ('22524', 'hireProcessWithJpa:2:17509', '22501', '22516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.128', '2016-09-02 15:07:44.130', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('22526', 'hireProcessWithJpa:2:17509', '22501', '22515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:07:44.147', '2016-09-02 15:07:44.149', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('22527', 'hireProcessWithJpa:2:17509', '22501', '22510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 15:07:44.156', '2016-09-02 15:07:44.156', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('22528', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:07:44.160', '2016-09-02 15:07:44.161', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('22529', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 15:07:44.161', '2016-09-02 15:07:44.244', '83', '');
INSERT INTO `act_hi_actinst` VALUES ('22530', 'hireProcessWithJpa:2:17509', '22501', '22501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 15:07:44.244', '2016-09-02 15:07:44.245', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('25002', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 15:08:31.255', '2016-09-02 15:08:31.278', '23', '');
INSERT INTO `act_hi_actinst` VALUES ('25004', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 15:08:31.278', '2016-09-02 15:08:31.281', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('25005', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '25006', null, 'Telephone interview', 'userTask', null, '2016-09-02 15:08:31.281', '2016-09-02 15:08:31.366', '85', '');
INSERT INTO `act_hi_actinst` VALUES ('25009', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:08:31.366', '2016-09-02 15:08:31.373', '7', '');
INSERT INTO `act_hi_actinst` VALUES ('25012', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 15:08:31.375', '2016-09-02 15:08:31.465', '90', '');
INSERT INTO `act_hi_actinst` VALUES ('25013', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 15:08:31.375', '2016-09-02 15:08:31.376', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('25014', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.376', '2016-09-02 15:08:31.376', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('25017', 'hireProcessWithJpa:2:17509', '25001', '25015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '25018', null, 'Tech interview', 'userTask', null, '2016-09-02 15:08:31.379', '2016-09-02 15:08:31.449', '70', '');
INSERT INTO `act_hi_actinst` VALUES ('2502', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-08-29 14:21:25.702', '2016-08-29 14:21:25.728', '26', '');
INSERT INTO `act_hi_actinst` VALUES ('25020', 'hireProcessWithJpa:2:17509', '25001', '25016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '25021', null, 'Financial negotiation', 'userTask', null, '2016-09-02 15:08:31.383', '2016-09-02 15:08:31.427', '44', '');
INSERT INTO `act_hi_actinst` VALUES ('25024', 'hireProcessWithJpa:2:17509', '25001', '25016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.427', '2016-09-02 15:08:31.429', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('25026', 'hireProcessWithJpa:2:17509', '25001', '25015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 15:08:31.449', '2016-09-02 15:08:31.451', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('25027', 'hireProcessWithJpa:2:17509', '25001', '25010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 15:08:31.460', '2016-09-02 15:08:31.460', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('25028', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 15:08:31.467', '2016-09-02 15:08:31.467', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('25029', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 15:08:31.467', '2016-09-02 15:08:31.572', '105', '');
INSERT INTO `act_hi_actinst` VALUES ('25030', 'hireProcessWithJpa:2:17509', '25001', '25001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 15:08:31.572', '2016-09-02 15:08:31.572', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('2504', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-08-29 14:21:25.728', '2016-08-29 14:21:25.732', '4', '');
INSERT INTO `act_hi_actinst` VALUES ('2505', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '2506', null, 'Telephone interview', 'userTask', null, '2016-08-29 14:21:25.732', '2016-08-29 14:21:25.840', '108', '');
INSERT INTO `act_hi_actinst` VALUES ('2509', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-08-29 14:21:25.840', '2016-08-29 14:21:25.847', '7', '');
INSERT INTO `act_hi_actinst` VALUES ('2512', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-08-29 14:21:25.849', '2016-08-29 14:21:25.949', '100', '');
INSERT INTO `act_hi_actinst` VALUES ('2513', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-08-29 14:21:25.849', '2016-08-29 14:21:25.850', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('2514', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.850', '2016-08-29 14:21:25.850', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('2517', 'hireProcessWithJpa:1:7', '2501', '2515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '2518', null, 'Tech interview', 'userTask', null, '2016-08-29 14:21:25.855', '2016-08-29 14:21:25.934', '79', '');
INSERT INTO `act_hi_actinst` VALUES ('2520', 'hireProcessWithJpa:1:7', '2501', '2516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '2521', null, 'Financial negotiation', 'userTask', null, '2016-08-29 14:21:25.859', '2016-08-29 14:21:25.908', '49', '');
INSERT INTO `act_hi_actinst` VALUES ('2524', 'hireProcessWithJpa:1:7', '2501', '2516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.908', '2016-08-29 14:21:25.911', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('2526', 'hireProcessWithJpa:1:7', '2501', '2515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-08-29 14:21:25.934', '2016-08-29 14:21:25.936', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('2527', 'hireProcessWithJpa:1:7', '2501', '2510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-08-29 14:21:25.946', '2016-08-29 14:21:25.946', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('2528', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-08-29 14:21:25.952', '2016-08-29 14:21:25.952', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('2529', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-08-29 14:21:25.952', '2016-08-29 14:21:26.047', '95', '');
INSERT INTO `act_hi_actinst` VALUES ('2530', 'hireProcessWithJpa:1:7', '2501', '2501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-08-29 14:21:26.047', '2016-08-29 14:21:26.047', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('27512', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-02 16:09:55.603', '2016-09-02 16:09:55.629', '26', '');
INSERT INTO `act_hi_actinst` VALUES ('27514', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-02 16:09:55.629', '2016-09-02 16:09:55.632', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('27515', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '27516', null, 'Telephone interview', 'userTask', null, '2016-09-02 16:09:55.632', '2016-09-02 16:09:55.711', '79', '');
INSERT INTO `act_hi_actinst` VALUES ('27519', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-02 16:09:55.711', '2016-09-02 16:09:55.719', '8', '');
INSERT INTO `act_hi_actinst` VALUES ('27522', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-02 16:09:55.720', '2016-09-02 16:09:55.805', '85', '');
INSERT INTO `act_hi_actinst` VALUES ('27523', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-02 16:09:55.720', '2016-09-02 16:09:55.721', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('27524', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.721', '2016-09-02 16:09:55.722', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('27527', 'hireProcessWithJpa:1:27508', '27511', '27525', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '27528', null, 'Tech interview', 'userTask', null, '2016-09-02 16:09:55.726', '2016-09-02 16:09:55.792', '66', '');
INSERT INTO `act_hi_actinst` VALUES ('27530', 'hireProcessWithJpa:1:27508', '27511', '27526', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '27531', null, 'Financial negotiation', 'userTask', null, '2016-09-02 16:09:55.729', '2016-09-02 16:09:55.768', '39', '');
INSERT INTO `act_hi_actinst` VALUES ('27534', 'hireProcessWithJpa:1:27508', '27511', '27526', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.768', '2016-09-02 16:09:55.770', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('27536', 'hireProcessWithJpa:1:27508', '27511', '27525', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-02 16:09:55.792', '2016-09-02 16:09:55.794', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('27537', 'hireProcessWithJpa:1:27508', '27511', '27520', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-02 16:09:55.802', '2016-09-02 16:09:55.802', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('27538', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-02 16:09:55.807', '2016-09-02 16:09:55.808', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('27539', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-02 16:09:55.808', '2016-09-02 16:09:55.891', '83', '');
INSERT INTO `act_hi_actinst` VALUES ('27540', 'hireProcessWithJpa:1:27508', '27511', '27511', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-02 16:09:55.891', '2016-09-02 16:09:55.891', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('5002', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:39:32.621', '2016-09-01 14:39:32.649', '28', '');
INSERT INTO `act_hi_actinst` VALUES ('5004', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:39:32.649', '2016-09-01 14:39:32.652', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('5005', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '5006', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:39:32.652', '2016-09-01 14:39:32.771', '119', '');
INSERT INTO `act_hi_actinst` VALUES ('5009', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:39:32.771', '2016-09-01 14:39:32.777', '6', '');
INSERT INTO `act_hi_actinst` VALUES ('5012', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:39:32.778', '2016-09-01 14:39:32.875', '97', '');
INSERT INTO `act_hi_actinst` VALUES ('5013', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:39:32.779', '2016-09-01 14:39:32.779', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('5014', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.779', '2016-09-01 14:39:32.780', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('5017', 'hireProcessWithJpa:1:7', '5001', '5015', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '5018', null, 'Tech interview', 'userTask', null, '2016-09-01 14:39:32.784', '2016-09-01 14:39:32.860', '76', '');
INSERT INTO `act_hi_actinst` VALUES ('5020', 'hireProcessWithJpa:1:7', '5001', '5016', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '5021', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:39:32.788', '2016-09-01 14:39:32.834', '46', '');
INSERT INTO `act_hi_actinst` VALUES ('5024', 'hireProcessWithJpa:1:7', '5001', '5016', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.834', '2016-09-01 14:39:32.837', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('5026', 'hireProcessWithJpa:1:7', '5001', '5015', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:39:32.860', '2016-09-01 14:39:32.862', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('5027', 'hireProcessWithJpa:1:7', '5001', '5010', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:39:32.871', '2016-09-01 14:39:32.871', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('5028', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:39:32.877', '2016-09-01 14:39:32.877', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('5029', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:39:32.877', '2016-09-01 14:39:32.988', '111', '');
INSERT INTO `act_hi_actinst` VALUES ('5030', 'hireProcessWithJpa:1:7', '5001', '5001', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:39:32.988', '2016-09-01 14:39:32.988', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('7502', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', null, null, null, 'startEvent', null, '2016-09-01 14:48:11.605', '2016-09-01 14:48:11.626', '21', '');
INSERT INTO `act_hi_actinst` VALUES ('7504', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-9DFC483F-2C57-4378-AE25-30460BD3838F', null, null, 'Store resume', 'serviceTask', null, '2016-09-01 14:48:11.626', '2016-09-01 14:48:11.629', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('7505', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '7506', null, 'Telephone interview', 'userTask', null, '2016-09-01 14:48:11.629', '2016-09-01 14:48:11.722', '93', '');
INSERT INTO `act_hi_actinst` VALUES ('7509', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-47ECD3C6-CA48-40D8-B478-6C26A122FA28', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:48:11.722', '2016-09-01 14:48:11.727', '5', '');
INSERT INTO `act_hi_actinst` VALUES ('7512', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-304989D1-D3EC-4F89-A288-2238C7941973', null, null, 'subProcess', 'subProcess', null, '2016-09-01 14:48:11.729', '2016-09-01 14:48:11.814', '85', '');
INSERT INTO `act_hi_actinst` VALUES ('7513', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-48CEC12C-2047-4B8B-94E9-371A379C3CF3', null, null, null, 'startEvent', null, '2016-09-01 14:48:11.729', '2016-09-01 14:48:11.730', '1', '');
INSERT INTO `act_hi_actinst` VALUES ('7514', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-904B6A3F-4D05-408C-BF50-25194FBFE4CA', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.730', '2016-09-01 14:48:11.730', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('7517', 'hireProcessWithJpa:1:7', '7501', '7515', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '7518', null, 'Tech interview', 'userTask', null, '2016-09-01 14:48:11.734', '2016-09-01 14:48:11.802', '68', '');
INSERT INTO `act_hi_actinst` VALUES ('7520', 'hireProcessWithJpa:1:7', '7501', '7516', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '7521', null, 'Financial negotiation', 'userTask', null, '2016-09-01 14:48:11.738', '2016-09-01 14:48:11.779', '41', '');
INSERT INTO `act_hi_actinst` VALUES ('7524', 'hireProcessWithJpa:1:7', '7501', '7516', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.779', '2016-09-01 14:48:11.782', '3', '');
INSERT INTO `act_hi_actinst` VALUES ('7526', 'hireProcessWithJpa:1:7', '7501', '7515', 'sid-E16BD1C2-F09E-4946-A65A-3D2FBF1FC62E', null, null, null, 'parallelGateway', null, '2016-09-01 14:48:11.802', '2016-09-01 14:48:11.804', '2', '');
INSERT INTO `act_hi_actinst` VALUES ('7527', 'hireProcessWithJpa:1:7', '7501', '7510', 'sid-DB05DC5F-A576-4E77-803A-C41AB0694245', null, null, null, 'endEvent', null, '2016-09-01 14:48:11.811', '2016-09-01 14:48:11.811', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('7528', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-3D63E564-D35A-42E3-A81E-6D7DF325D118', null, null, null, 'exclusiveGateway', null, '2016-09-01 14:48:11.816', '2016-09-01 14:48:11.816', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('7529', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-F2ADA953-6FCF-42FA-B59E-45DAC6EACFA7', null, null, 'Send welcome mail', 'serviceTask', null, '2016-09-01 14:48:11.816', '2016-09-01 14:48:11.899', '83', '');
INSERT INTO `act_hi_actinst` VALUES ('7530', 'hireProcessWithJpa:1:7', '7501', '7501', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, 'accepted', 'endEvent', null, '2016-09-01 14:48:11.899', '2016-09-01 14:48:11.899', '0', '');
INSERT INTO `act_hi_actinst` VALUES ('77502', 'simplejc:5:72512', '77501', '77501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 06:56:54.955', '2016-09-05 06:56:54.971', '16', '');
INSERT INTO `act_hi_actinst` VALUES ('77504', 'simplejc:5:72512', '77501', '77501', 'comfirmDate', '77505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 06:56:54.971', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('80011', 'simplejc:6:80008', '80010', '80010', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 06:58:41.756', '2016-09-05 06:58:41.766', '10', '');
INSERT INTO `act_hi_actinst` VALUES ('80013', 'simplejc:6:80008', '80010', '80010', 'comfirmDate', '80014', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 06:58:41.766', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('82502', 'simplejc:6:80008', '82501', '82501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:00:11.961', '2016-09-05 07:00:11.975', '14', '');
INSERT INTO `act_hi_actinst` VALUES ('82504', 'simplejc:6:80008', '82501', '82501', 'comfirmDate', '82505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:00:11.975', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('85002', 'simplejc:6:80008', '85001', '85001', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:01:19.089', '2016-09-05 07:01:19.101', '12', '');
INSERT INTO `act_hi_actinst` VALUES ('85004', 'simplejc:6:80008', '85001', '85001', 'comfirmDate', '85005', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:01:19.101', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('87502', 'simplejc:6:80008', '87501', '87501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:26:09.458', '2016-09-05 07:26:09.470', '12', '');
INSERT INTO `act_hi_actinst` VALUES ('87504', 'simplejc:6:80008', '87501', '87501', 'comfirmDate', '87505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:26:09.471', '2016-09-05 07:26:09.553', '82', '');
INSERT INTO `act_hi_actinst` VALUES ('87508', 'simplejc:6:80008', '87501', '87501', 'preAudit', '87509', null, '预稽查', 'userTask', null, '2016-09-05 07:26:09.553', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('90002', 'simplejc:6:80008', '90001', '90001', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:27:43.553', '2016-09-05 07:27:43.567', '14', '');
INSERT INTO `act_hi_actinst` VALUES ('90004', 'simplejc:6:80008', '90001', '90001', 'comfirmDate', '90005', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:27:43.568', '2016-09-05 07:27:43.669', '101', '');
INSERT INTO `act_hi_actinst` VALUES ('90008', 'simplejc:6:80008', '90001', '90001', 'preAudit', '90009', null, '预稽查', 'userTask', null, '2016-09-05 07:27:43.669', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('92502', 'simplejc:6:80008', '92501', '92501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:29:38.680', '2016-09-05 07:29:38.695', '15', '');
INSERT INTO `act_hi_actinst` VALUES ('92504', 'simplejc:6:80008', '92501', '92501', 'comfirmDate', '92505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:29:38.695', '2016-09-05 07:29:38.790', '95', '');
INSERT INTO `act_hi_actinst` VALUES ('92508', 'simplejc:6:80008', '92501', '92501', 'preAudit', '92509', null, '预稽查', 'userTask', null, '2016-09-05 07:29:38.790', '2016-09-05 07:29:38.828', '38', '');
INSERT INTO `act_hi_actinst` VALUES ('92512', 'simplejc:6:80008', '92501', '92501', 'audit', '92513', null, '稽查', 'userTask', null, '2016-09-05 07:29:38.828', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('95014', 'simplejc:7:95012', '95013', '95013', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 07:48:32.617', '2016-09-05 07:48:32.626', '9', '');
INSERT INTO `act_hi_actinst` VALUES ('95016', 'simplejc:7:95012', '95013', '95013', 'comfirmDate', '95017', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 07:48:32.626', null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('97502', 'simplejc:7:95012', '97501', '97501', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-09-05 09:55:51.072', '2016-09-05 09:55:51.081', '9', '');
INSERT INTO `act_hi_actinst` VALUES ('97504', 'simplejc:7:95012', '97501', '97501', 'comfirmDate', '97505', null, '确定人员、时间、行程', 'userTask', null, '2016-09-05 09:55:51.081', null, null, '');

-- ----------------------------
-- Table structure for `act_hi_attachment`
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
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_comment`
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
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_detail`
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
-- Records of act_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_identitylink`
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
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO `act_hi_identitylink` VALUES ('10007', 'dev-managers', 'candidate', null, '10006', null);
INSERT INTO `act_hi_identitylink` VALUES ('10019', 'dev-management', 'candidate', null, '10018', null);
INSERT INTO `act_hi_identitylink` VALUES ('10022', 'finance', 'candidate', null, '10021', null);
INSERT INTO `act_hi_identitylink` VALUES ('12507', 'dev-managers', 'candidate', null, '12506', null);
INSERT INTO `act_hi_identitylink` VALUES ('12519', 'dev-management', 'candidate', null, '12518', null);
INSERT INTO `act_hi_identitylink` VALUES ('12522', 'finance', 'candidate', null, '12521', null);
INSERT INTO `act_hi_identitylink` VALUES ('15007', 'dev-managers', 'candidate', null, '15006', null);
INSERT INTO `act_hi_identitylink` VALUES ('15019', 'dev-management', 'candidate', null, '15018', null);
INSERT INTO `act_hi_identitylink` VALUES ('15022', 'finance', 'candidate', null, '15021', null);
INSERT INTO `act_hi_identitylink` VALUES ('20007', 'dev-managers', 'candidate', null, '20006', null);
INSERT INTO `act_hi_identitylink` VALUES ('20019', 'dev-management', 'candidate', null, '20018', null);
INSERT INTO `act_hi_identitylink` VALUES ('20022', 'finance', 'candidate', null, '20021', null);
INSERT INTO `act_hi_identitylink` VALUES ('22507', 'dev-managers', 'candidate', null, '22506', null);
INSERT INTO `act_hi_identitylink` VALUES ('22519', 'dev-management', 'candidate', null, '22518', null);
INSERT INTO `act_hi_identitylink` VALUES ('22522', 'finance', 'candidate', null, '22521', null);
INSERT INTO `act_hi_identitylink` VALUES ('25007', 'dev-managers', 'candidate', null, '25006', null);
INSERT INTO `act_hi_identitylink` VALUES ('25019', 'dev-management', 'candidate', null, '25018', null);
INSERT INTO `act_hi_identitylink` VALUES ('25022', 'finance', 'candidate', null, '25021', null);
INSERT INTO `act_hi_identitylink` VALUES ('2507', 'dev-managers', 'candidate', null, '2506', null);
INSERT INTO `act_hi_identitylink` VALUES ('2519', 'dev-management', 'candidate', null, '2518', null);
INSERT INTO `act_hi_identitylink` VALUES ('2522', 'finance', 'candidate', null, '2521', null);
INSERT INTO `act_hi_identitylink` VALUES ('27517', 'dev-managers', 'candidate', null, '27516', null);
INSERT INTO `act_hi_identitylink` VALUES ('27529', 'dev-management', 'candidate', null, '27528', null);
INSERT INTO `act_hi_identitylink` VALUES ('27532', 'finance', 'candidate', null, '27531', null);
INSERT INTO `act_hi_identitylink` VALUES ('5007', 'dev-managers', 'candidate', null, '5006', null);
INSERT INTO `act_hi_identitylink` VALUES ('5019', 'dev-management', 'candidate', null, '5018', null);
INSERT INTO `act_hi_identitylink` VALUES ('5022', 'finance', 'candidate', null, '5021', null);
INSERT INTO `act_hi_identitylink` VALUES ('7507', 'dev-managers', 'candidate', null, '7506', null);
INSERT INTO `act_hi_identitylink` VALUES ('7519', 'dev-management', 'candidate', null, '7518', null);
INSERT INTO `act_hi_identitylink` VALUES ('7522', 'finance', 'candidate', null, '7521', null);
INSERT INTO `act_hi_identitylink` VALUES ('77506', 'org1_secretary', 'candidate', null, '77505', null);
INSERT INTO `act_hi_identitylink` VALUES ('80015', 'org1_secretary', 'candidate', null, '80014', null);
INSERT INTO `act_hi_identitylink` VALUES ('82506', 'org1_secretary', 'candidate', null, '82505', null);
INSERT INTO `act_hi_identitylink` VALUES ('85006', 'org1_secretary', 'candidate', null, '85005', null);
INSERT INTO `act_hi_identitylink` VALUES ('87506', 'org1_secretary', 'candidate', null, '87505', null);
INSERT INTO `act_hi_identitylink` VALUES ('87510', 'org1_preaudit', 'candidate', null, '87509', null);
INSERT INTO `act_hi_identitylink` VALUES ('90006', 'org1_secretary', 'candidate', null, '90005', null);
INSERT INTO `act_hi_identitylink` VALUES ('90010', 'org1_preaudit', 'candidate', null, '90009', null);
INSERT INTO `act_hi_identitylink` VALUES ('92506', 'org1_secretary', 'candidate', null, '92505', null);
INSERT INTO `act_hi_identitylink` VALUES ('92510', 'org1_preaudit', 'candidate', null, '92509', null);
INSERT INTO `act_hi_identitylink` VALUES ('92514', 'org1_audit', 'candidate', null, '92513', null);
INSERT INTO `act_hi_identitylink` VALUES ('95018', 'org1_secretary', 'candidate', null, '95017', null);
INSERT INTO `act_hi_identitylink` VALUES ('97506', 'org1_secretary', 'candidate', null, '97505', null);

-- ----------------------------
-- Table structure for `act_hi_procinst`
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
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO `act_hi_procinst` VALUES ('10001', '10001', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:48:37.543', '2016-09-01 14:50:29.236', '111693', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('12501', '12501', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:51:34.328', '2016-09-01 14:51:38.251', '3923', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('15001', '15001', null, 'hireProcessWithJpa:1:7', '2016-09-01 20:47:13.182', '2016-09-01 20:47:13.616', '434', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('20001', '20001', null, 'hireProcessWithJpa:2:17509', '2016-09-02 13:38:35.543', '2016-09-02 13:38:35.871', '328', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('22501', '22501', null, 'hireProcessWithJpa:2:17509', '2016-09-02 15:07:43.968', '2016-09-02 15:07:44.246', '278', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('25001', '25001', null, 'hireProcessWithJpa:2:17509', '2016-09-02 15:08:31.255', '2016-09-02 15:08:31.574', '319', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('2501', '2501', null, 'hireProcessWithJpa:1:7', '2016-08-29 14:21:25.702', '2016-08-29 14:21:26.049', '347', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('27511', '27511', null, 'hireProcessWithJpa:1:27508', '2016-09-02 16:09:55.603', '2016-09-02 16:09:55.893', '290', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('5001', '5001', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:39:32.621', '2016-09-01 14:39:32.990', '369', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('7501', '7501', null, 'hireProcessWithJpa:1:7', '2016-09-01 14:48:11.605', '2016-09-01 14:48:11.901', '296', null, 'sid-E0DD2D8E-0672-4BE0-97A4-933DD8771EFF', 'sid-76F28F61-0B2A-41BA-8A71-5E4C9C7828E4', null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('77501', '77501', '18', 'simplejc:5:72512', '2016-09-05 06:56:54.955', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('80010', '80010', '19', 'simplejc:6:80008', '2016-09-05 06:58:41.756', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('82501', '82501', '20', 'simplejc:6:80008', '2016-09-05 07:00:11.961', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('85001', '85001', '21', 'simplejc:6:80008', '2016-09-05 07:01:19.089', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('87501', '87501', '22', 'simplejc:6:80008', '2016-09-05 07:26:09.458', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('90001', '90001', '23', 'simplejc:6:80008', '2016-09-05 07:27:43.553', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('92501', '92501', '24', 'simplejc:6:80008', '2016-09-05 07:29:38.680', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('95013', '95013', '25', 'simplejc:7:95012', '2016-09-05 07:48:32.617', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO `act_hi_procinst` VALUES ('97501', '97501', '26', 'simplejc:7:95012', '2016-09-05 09:55:51.072', null, null, null, 'startevent1', null, null, null, '', null);

-- ----------------------------
-- Table structure for `act_hi_taskinst`
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
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO `act_hi_taskinst` VALUES ('10006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '10001', '10001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:48:37.576', null, '2016-09-01 14:49:47.068', '69492', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('10018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '10001', '10015', 'Tech interview', null, null, null, null, '2016-09-01 14:49:47.179', null, '2016-09-01 14:50:28.732', '41553', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('10021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '10001', '10016', 'Financial negotiation', null, null, null, null, '2016-09-01 14:49:47.196', null, '2016-09-01 14:50:17.595', '30399', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('12506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '12501', '12501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:51:34.362', null, '2016-09-01 14:51:38.091', '3729', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('12518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '12501', '12515', 'Tech interview', null, null, null, null, '2016-09-01 14:51:38.106', null, '2016-09-01 14:51:38.157', '51', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('12521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '12501', '12516', 'Financial negotiation', null, null, null, null, '2016-09-01 14:51:38.109', null, '2016-09-01 14:51:38.140', '31', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('15006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '15001', '15001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 20:47:13.236', null, '2016-09-01 20:47:13.346', '110', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('15018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '15001', '15015', 'Tech interview', null, null, null, null, '2016-09-01 20:47:13.375', null, '2016-09-01 20:47:13.477', '102', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('15021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '15001', '15016', 'Financial negotiation', null, null, null, null, '2016-09-01 20:47:13.381', null, '2016-09-01 20:47:13.446', '65', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('20006', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '20001', '20001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 13:38:35.575', null, '2016-09-02 13:38:35.671', '96', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('20018', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '20001', '20015', 'Tech interview', null, null, null, null, '2016-09-02 13:38:35.689', null, '2016-09-02 13:38:35.752', '63', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('20021', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '20001', '20016', 'Financial negotiation', null, null, null, null, '2016-09-02 13:38:35.692', null, '2016-09-02 13:38:35.730', '38', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('22506', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '22501', '22501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 15:07:43.994', null, '2016-09-02 15:07:44.072', '78', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('22518', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '22501', '22515', 'Tech interview', null, null, null, null, '2016-09-02 15:07:44.086', null, '2016-09-02 15:07:44.145', '59', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('22521', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '22501', '22516', 'Financial negotiation', null, null, null, null, '2016-09-02 15:07:44.089', null, '2016-09-02 15:07:44.126', '37', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('25006', 'hireProcessWithJpa:2:17509', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '25001', '25001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 15:08:31.283', null, '2016-09-02 15:08:31.362', '79', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('25018', 'hireProcessWithJpa:2:17509', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '25001', '25015', 'Tech interview', null, null, null, null, '2016-09-02 15:08:31.380', null, '2016-09-02 15:08:31.446', '66', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('25021', 'hireProcessWithJpa:2:17509', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '25001', '25016', 'Financial negotiation', null, null, null, null, '2016-09-02 15:08:31.384', null, '2016-09-02 15:08:31.423', '39', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('2506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '2501', '2501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-08-29 14:21:25.734', null, '2016-08-29 14:21:25.835', '101', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('2518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '2501', '2515', 'Tech interview', null, null, null, null, '2016-08-29 14:21:25.855', null, '2016-08-29 14:21:25.931', '76', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('2521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '2501', '2516', 'Financial negotiation', null, null, null, null, '2016-08-29 14:21:25.859', null, '2016-08-29 14:21:25.905', '46', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('27516', 'hireProcessWithJpa:1:27508', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '27511', '27511', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-02 16:09:55.633', null, '2016-09-02 16:09:55.707', '74', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('27528', 'hireProcessWithJpa:1:27508', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '27511', '27525', 'Tech interview', null, null, null, null, '2016-09-02 16:09:55.727', null, '2016-09-02 16:09:55.789', '62', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('27531', 'hireProcessWithJpa:1:27508', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '27511', '27526', 'Financial negotiation', null, null, null, null, '2016-09-02 16:09:55.730', null, '2016-09-02 16:09:55.765', '35', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('5006', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '5001', '5001', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:39:32.654', null, '2016-09-01 14:39:32.765', '111', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('5018', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '5001', '5015', 'Tech interview', null, null, null, null, '2016-09-01 14:39:32.784', null, '2016-09-01 14:39:32.857', '73', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('5021', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '5001', '5016', 'Financial negotiation', null, null, null, null, '2016-09-01 14:39:32.788', null, '2016-09-01 14:39:32.831', '43', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('7506', 'hireProcessWithJpa:1:7', 'sid-42BAE58A-8FFB-4B02-AAED-E0D8EA5A7E39', '7501', '7501', 'Telephone interview', null, 'Conduct a telephone interview with John Doe. Phone number = 12344', null, null, '2016-09-01 14:48:11.631', null, '2016-09-01 14:48:11.718', '87', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('7518', 'hireProcessWithJpa:1:7', 'sid-C2137C46-166B-4F9B-92A1-97BF920FCD9E', '7501', '7515', 'Tech interview', null, null, null, null, '2016-09-01 14:48:11.734', null, '2016-09-01 14:48:11.800', '66', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('7521', 'hireProcessWithJpa:1:7', 'sid-14429F68-4A79-47DC-A3F0-21804629FD88', '7501', '7516', 'Financial negotiation', null, null, null, null, '2016-09-01 14:48:11.738', null, '2016-09-01 14:48:11.776', '38', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('77505', 'simplejc:5:72512', 'comfirmDate', '77501', '77501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 06:56:54.973', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('80014', 'simplejc:6:80008', 'comfirmDate', '80010', '80010', '确定人员、时间、行程', null, null, null, null, '2016-09-05 06:58:41.767', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('82505', 'simplejc:6:80008', 'comfirmDate', '82501', '82501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:00:11.976', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('85005', 'simplejc:6:80008', 'comfirmDate', '85001', '85001', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:01:19.102', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('87505', 'simplejc:6:80008', 'comfirmDate', '87501', '87501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:26:09.472', null, '2016-09-05 07:26:09.550', '78', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('87509', 'simplejc:6:80008', 'preAudit', '87501', '87501', '预稽查', null, null, null, null, '2016-09-05 07:26:09.553', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('90005', 'simplejc:6:80008', 'comfirmDate', '90001', '90001', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:27:43.569', null, '2016-09-05 07:27:43.666', '97', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('90009', 'simplejc:6:80008', 'preAudit', '90001', '90001', '预稽查', null, null, null, null, '2016-09-05 07:27:43.669', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('92505', 'simplejc:6:80008', 'comfirmDate', '92501', '92501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:29:38.697', null, '2016-09-05 07:29:38.785', '88', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('92509', 'simplejc:6:80008', 'preAudit', '92501', '92501', '预稽查', null, null, null, null, '2016-09-05 07:29:38.791', null, '2016-09-05 07:29:38.826', '35', 'completed', '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('92513', 'simplejc:6:80008', 'audit', '92501', '92501', '稽查', null, null, null, null, '2016-09-05 07:29:38.828', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('95017', 'simplejc:7:95012', 'comfirmDate', '95013', '95013', '确定人员、时间、行程', null, null, null, null, '2016-09-05 07:48:32.627', null, null, null, null, '50', null, null, null, '');
INSERT INTO `act_hi_taskinst` VALUES ('97505', 'simplejc:7:95012', 'comfirmDate', '97501', '97501', '确定人员、时间、行程', null, null, null, null, '2016-09-05 09:55:51.082', null, null, null, null, '50', null, null, null, '');

-- ----------------------------
-- Table structure for `act_hi_varinst`
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
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO `act_hi_varinst` VALUES ('10003', '10001', '10001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '4', '2016-09-01 14:48:37.545', '2016-09-01 14:50:29.257');
INSERT INTO `act_hi_varinst` VALUES ('10008', '10001', '10001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:49:47.041', '2016-09-01 14:50:29.257');
INSERT INTO `act_hi_varinst` VALUES ('10023', '10001', '10001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:50:17.575', '2016-09-01 14:50:29.257');
INSERT INTO `act_hi_varinst` VALUES ('10025', '10001', '10001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:50:28.712', '2016-09-01 14:50:29.258');
INSERT INTO `act_hi_varinst` VALUES ('12503', '12501', '12501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '5', '2016-09-01 14:51:34.330', '2016-09-01 14:51:38.254');
INSERT INTO `act_hi_varinst` VALUES ('12508', '12501', '12501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:51:38.087', '2016-09-01 14:51:38.254');
INSERT INTO `act_hi_varinst` VALUES ('12523', '12501', '12501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:51:38.138', '2016-09-01 14:51:38.254');
INSERT INTO `act_hi_varinst` VALUES ('12525', '12501', '12501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:51:38.155', '2016-09-01 14:51:38.254');
INSERT INTO `act_hi_varinst` VALUES ('15003', '15001', '15001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '6', '2016-09-01 20:47:13.188', '2016-09-01 20:47:13.619');
INSERT INTO `act_hi_varinst` VALUES ('15008', '15001', '15001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 20:47:13.340', '2016-09-01 20:47:13.619');
INSERT INTO `act_hi_varinst` VALUES ('15023', '15001', '15001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 20:47:13.442', '2016-09-01 20:47:13.619');
INSERT INTO `act_hi_varinst` VALUES ('15025', '15001', '15001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 20:47:13.475', '2016-09-01 20:47:13.619');
INSERT INTO `act_hi_varinst` VALUES ('20003', '20001', '20001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '7', '2016-09-02 13:38:35.545', '2016-09-02 13:38:35.873');
INSERT INTO `act_hi_varinst` VALUES ('20008', '20001', '20001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 13:38:35.666', '2016-09-02 13:38:35.873');
INSERT INTO `act_hi_varinst` VALUES ('20023', '20001', '20001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 13:38:35.727', '2016-09-02 13:38:35.873');
INSERT INTO `act_hi_varinst` VALUES ('20025', '20001', '20001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 13:38:35.750', '2016-09-02 13:38:35.873');
INSERT INTO `act_hi_varinst` VALUES ('22503', '22501', '22501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '8', '2016-09-02 15:07:43.969', '2016-09-02 15:07:44.248');
INSERT INTO `act_hi_varinst` VALUES ('22508', '22501', '22501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:07:44.068', '2016-09-02 15:07:44.248');
INSERT INTO `act_hi_varinst` VALUES ('22523', '22501', '22501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:07:44.124', '2016-09-02 15:07:44.248');
INSERT INTO `act_hi_varinst` VALUES ('22525', '22501', '22501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 15:07:44.143', '2016-09-02 15:07:44.248');
INSERT INTO `act_hi_varinst` VALUES ('25003', '25001', '25001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '9', '2016-09-02 15:08:31.257', '2016-09-02 15:08:31.577');
INSERT INTO `act_hi_varinst` VALUES ('25008', '25001', '25001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:08:31.358', '2016-09-02 15:08:31.577');
INSERT INTO `act_hi_varinst` VALUES ('25023', '25001', '25001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 15:08:31.420', '2016-09-02 15:08:31.577');
INSERT INTO `act_hi_varinst` VALUES ('25025', '25001', '25001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 15:08:31.444', '2016-09-02 15:08:31.577');
INSERT INTO `act_hi_varinst` VALUES ('2503', '2501', '2501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '1', '2016-08-29 14:21:25.704', '2016-08-29 14:21:26.052');
INSERT INTO `act_hi_varinst` VALUES ('2508', '2501', '2501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-08-29 14:21:25.830', '2016-08-29 14:21:26.052');
INSERT INTO `act_hi_varinst` VALUES ('2523', '2501', '2501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-08-29 14:21:25.902', '2016-08-29 14:21:26.052');
INSERT INTO `act_hi_varinst` VALUES ('2525', '2501', '2501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-08-29 14:21:25.928', '2016-08-29 14:21:26.052');
INSERT INTO `act_hi_varinst` VALUES ('27513', '27511', '27511', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.temp.Applicant', '16', '2016-09-02 16:09:55.605', '2016-09-02 16:09:55.895');
INSERT INTO `act_hi_varinst` VALUES ('27518', '27511', '27511', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-02 16:09:55.702', '2016-09-02 16:09:55.895');
INSERT INTO `act_hi_varinst` VALUES ('27533', '27511', '27511', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-02 16:09:55.763', '2016-09-02 16:09:55.895');
INSERT INTO `act_hi_varinst` VALUES ('27535', '27511', '27511', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-02 16:09:55.787', '2016-09-02 16:09:55.895');
INSERT INTO `act_hi_varinst` VALUES ('5003', '5001', '5001', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '2', '2016-09-01 14:39:32.623', '2016-09-01 14:39:32.993');
INSERT INTO `act_hi_varinst` VALUES ('5008', '5001', '5001', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:39:32.760', '2016-09-01 14:39:32.993');
INSERT INTO `act_hi_varinst` VALUES ('5023', '5001', '5001', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:39:32.828', '2016-09-01 14:39:32.993');
INSERT INTO `act_hi_varinst` VALUES ('5025', '5001', '5001', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:39:32.853', '2016-09-01 14:39:32.993');
INSERT INTO `act_hi_varinst` VALUES ('7503', '7501', '7501', null, 'applicant', 'jpa-entity', '1', null, null, null, 'com.realaicy.product.jc.common.wf.tmp.Applicant', '3', '2016-09-01 14:48:11.607', '2016-09-01 14:48:11.904');
INSERT INTO `act_hi_varinst` VALUES ('7508', '7501', '7501', null, 'telephoneInterviewOutcome', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:48:11.714', '2016-09-01 14:48:11.904');
INSERT INTO `act_hi_varinst` VALUES ('7523', '7501', '7501', null, 'techOk', 'boolean', '1', null, null, '1', null, null, '2016-09-01 14:48:11.773', '2016-09-01 14:48:11.904');
INSERT INTO `act_hi_varinst` VALUES ('7525', '7501', '7501', null, 'financialOk', 'boolean', '0', null, null, '1', null, null, '2016-09-01 14:48:11.797', '2016-09-01 14:48:11.904');
INSERT INTO `act_hi_varinst` VALUES ('77503', '77501', '77501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '18', '2016-09-05 06:56:54.957', '2016-09-05 06:56:54.957');
INSERT INTO `act_hi_varinst` VALUES ('80012', '80010', '80010', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '19', '2016-09-05 06:58:41.758', '2016-09-05 06:58:41.758');
INSERT INTO `act_hi_varinst` VALUES ('82503', '82501', '82501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '20', '2016-09-05 07:00:11.963', '2016-09-05 07:00:11.963');
INSERT INTO `act_hi_varinst` VALUES ('85003', '85001', '85001', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '21', '2016-09-05 07:01:19.091', '2016-09-05 07:01:19.091');
INSERT INTO `act_hi_varinst` VALUES ('87503', '87501', '87501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '22', '2016-09-05 07:26:09.461', '2016-09-05 07:26:09.461');
INSERT INTO `act_hi_varinst` VALUES ('87507', '87501', '87501', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:26:09.546', '2016-09-05 07:26:09.546');
INSERT INTO `act_hi_varinst` VALUES ('90003', '90001', '90001', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '23', '2016-09-05 07:27:43.555', '2016-09-05 07:27:43.555');
INSERT INTO `act_hi_varinst` VALUES ('90007', '90001', '90001', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:27:43.661', '2016-09-05 07:27:43.661');
INSERT INTO `act_hi_varinst` VALUES ('92503', '92501', '92501', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '24', '2016-09-05 07:29:38.682', '2016-09-05 07:29:38.682');
INSERT INTO `act_hi_varinst` VALUES ('92507', '92501', '92501', null, 'telephoneInterviewOutcome', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:29:38.780', '2016-09-05 07:29:38.780');
INSERT INTO `act_hi_varinst` VALUES ('92511', '92501', '92501', null, 'techOk', 'boolean', '0', null, null, '1', null, null, '2016-09-05 07:29:38.824', '2016-09-05 07:29:38.824');
INSERT INTO `act_hi_varinst` VALUES ('95015', '95013', '95013', null, 'projectInfo', 'jpa-entity', '0', null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '25', '2016-09-05 07:48:32.619', '2016-09-05 07:48:32.619');
INSERT INTO `act_hi_varinst` VALUES ('97503', '97501', '97501', null, 'projectName', 'string', '0', null, null, null, '工作流测试——1', null, '2016-09-05 09:55:51.072', '2016-09-05 09:55:51.072');

-- ----------------------------
-- Table structure for `act_procdef_info`
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
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_deployment`
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
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO `act_re_deployment` VALUES ('1', 'SpringAutoDeployment', null, '', '2016-08-29 14:09:53.238');
INSERT INTO `act_re_deployment` VALUES ('100001', 'SpringAutoDeployment', null, '', '2016-09-05 10:09:23.255');
INSERT INTO `act_re_deployment` VALUES ('102501', 'SpringAutoDeployment', null, '', '2016-09-25 17:15:32.683');
INSERT INTO `act_re_deployment` VALUES ('105001', 'SpringAutoDeployment', null, '', '2016-09-25 21:42:01.683');
INSERT INTO `act_re_deployment` VALUES ('107501', 'SpringAutoDeployment', null, '', '2016-09-25 22:00:08.437');
INSERT INTO `act_re_deployment` VALUES ('110001', 'SpringAutoDeployment', null, '', '2016-09-25 22:30:31.384');
INSERT INTO `act_re_deployment` VALUES ('112501', 'SpringAutoDeployment', null, '', '2016-09-26 00:40:13.628');
INSERT INTO `act_re_deployment` VALUES ('115001', 'SpringAutoDeployment', null, '', '2016-09-26 01:45:19.581');
INSERT INTO `act_re_deployment` VALUES ('117501', 'SpringAutoDeployment', null, '', '2016-10-01 08:50:07.035');
INSERT INTO `act_re_deployment` VALUES ('120001', 'SpringAutoDeployment', null, '', '2016-10-05 07:57:31.725');
INSERT INTO `act_re_deployment` VALUES ('122501', 'SpringAutoDeployment', null, '', '2016-10-05 08:52:10.454');
INSERT INTO `act_re_deployment` VALUES ('125001', 'SpringAutoDeployment', null, '', '2016-10-05 09:21:44.943');
INSERT INTO `act_re_deployment` VALUES ('127501', 'SpringAutoDeployment', null, '', '2016-10-05 14:45:58.227');
INSERT INTO `act_re_deployment` VALUES ('130001', 'SpringAutoDeployment', null, '', '2016-10-05 16:10:00.197');
INSERT INTO `act_re_deployment` VALUES ('132501', 'SpringAutoDeployment', null, '', '2016-10-05 16:29:51.241');
INSERT INTO `act_re_deployment` VALUES ('135001', 'SpringAutoDeployment', null, '', '2016-10-07 23:03:02.684');
INSERT INTO `act_re_deployment` VALUES ('137501', 'SpringAutoDeployment', null, '', '2016-10-08 01:10:38.472');
INSERT INTO `act_re_deployment` VALUES ('140001', 'SpringAutoDeployment', null, '', '2016-10-08 06:58:15.635');
INSERT INTO `act_re_deployment` VALUES ('142501', 'SpringAutoDeployment', null, '', '2016-10-16 21:29:49.007');
INSERT INTO `act_re_deployment` VALUES ('145001', 'SpringAutoDeployment', null, '', '2016-10-16 21:40:53.523');
INSERT INTO `act_re_deployment` VALUES ('17501', 'SpringAutoDeployment', null, '', '2016-09-02 13:34:52.869');
INSERT INTO `act_re_deployment` VALUES ('27501', 'SpringAutoDeployment', null, '', '2016-09-02 16:09:50.503');
INSERT INTO `act_re_deployment` VALUES ('30001', 'SpringAutoDeployment', null, '', '2016-09-03 08:21:32.878');
INSERT INTO `act_re_deployment` VALUES ('32501', 'SpringAutoDeployment', null, '', '2016-09-03 08:24:43.193');
INSERT INTO `act_re_deployment` VALUES ('35001', 'SpringAutoDeployment', null, '', '2016-09-03 10:05:27.775');
INSERT INTO `act_re_deployment` VALUES ('37501', 'SpringAutoDeployment', null, '', '2016-09-03 11:03:12.374');
INSERT INTO `act_re_deployment` VALUES ('40001', 'SpringAutoDeployment', null, '', '2016-09-04 17:41:14.406');
INSERT INTO `act_re_deployment` VALUES ('42501', 'SpringAutoDeployment', null, '', '2016-09-04 17:57:28.310');
INSERT INTO `act_re_deployment` VALUES ('45001', 'SpringAutoDeployment', null, '', '2016-09-05 01:46:08.599');
INSERT INTO `act_re_deployment` VALUES ('47501', 'SpringAutoDeployment', null, '', '2016-09-05 01:49:01.469');
INSERT INTO `act_re_deployment` VALUES ('50001', 'SpringAutoDeployment', null, '', '2016-09-05 02:16:38.754');
INSERT INTO `act_re_deployment` VALUES ('52501', 'SpringAutoDeployment', null, '', '2016-09-05 04:59:16.573');
INSERT INTO `act_re_deployment` VALUES ('55001', 'SpringAutoDeployment', null, '', '2016-09-05 06:28:15.350');
INSERT INTO `act_re_deployment` VALUES ('57501', 'SpringAutoDeployment', null, '', '2016-09-05 06:44:52.200');
INSERT INTO `act_re_deployment` VALUES ('62501', 'SpringAutoDeployment', null, '', '2016-09-05 06:48:41.202');
INSERT INTO `act_re_deployment` VALUES ('65001', 'SpringAutoDeployment', null, '', '2016-09-05 06:51:16.455');
INSERT INTO `act_re_deployment` VALUES ('67501', 'SpringAutoDeployment', null, '', '2016-09-05 06:52:49.113');
INSERT INTO `act_re_deployment` VALUES ('70001', 'SpringAutoDeployment', null, '', '2016-09-05 06:53:59.900');
INSERT INTO `act_re_deployment` VALUES ('72501', 'SpringAutoDeployment', null, '', '2016-09-05 06:54:55.307');
INSERT INTO `act_re_deployment` VALUES ('75001', 'SpringAutoDeployment', null, '', '2016-09-05 06:56:13.204');
INSERT INTO `act_re_deployment` VALUES ('80001', 'SpringAutoDeployment', null, '', '2016-09-05 06:58:36.620');
INSERT INTO `act_re_deployment` VALUES ('95001', 'SpringAutoDeployment', null, '', '2016-09-05 07:47:48.571');

-- ----------------------------
-- Table structure for `act_re_model`
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
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_procdef`
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
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO `act_re_procdef` VALUES ('hireProcess:10:100009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:11:102508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:12:105009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:13:107508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:14:110009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:15:112508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:16:115009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:17:117511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:18:120009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:19:122511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:1:57510', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:20:125009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:21:127511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:22:130009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:23:132511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:24:135009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:25:137511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:26:140009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:27:142508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '27', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:28:145011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '28', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:2:62511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:3:65011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:4:67511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:5:70011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:6:72511', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:7:75007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:8:80009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcess:9:95011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcess', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring.hireProcess.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:10:100011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '10', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:11:102507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '11', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:12:105011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '12', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:13:107507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '13', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:14:110011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '14', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:15:112507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '15', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:16:115011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '16', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:17:117509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '17', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:18:120007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '18', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:19:122509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '19', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:1:57508', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:20:125007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '20', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:21:127509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '21', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:22:130007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '22', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:23:132509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '23', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:24:135007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '24', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:25:137509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '25', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:26:140011', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '26', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:27:142507', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '27', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.bpmn20.xml', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:28:145009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '28', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:2:62509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:3:65009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:4:67509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:5:70009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:6:72509', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:7:75006', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '7', '75001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:8:80007', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '8', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('hireProcessWithJpa:9:95009', '1', 'http://www.activiti.org/processdef', 'Developer Hiring', 'hireProcessWithJpa', '9', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.bpmn20.xml', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\Developer_Hiring_with_jpa.hireProcessWithJpa.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:10:110012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '10', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:11:115012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '11', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:12:117510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '12', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:13:122510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '13', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:14:127510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '14', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:15:132510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '15', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:16:137510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '16', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:17:140012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '17', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:18:145010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '18', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:1:57509', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '1', '57501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:2:62510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '2', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:3:65010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '3', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:4:67510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '4', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:5:70010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '5', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:6:72510', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '6', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:7:95010', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.bpmn', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:8:100012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('leavesayhello:9:105012', '1', 'http://www.kafeitu.me/activiti-in-action', 'Leave', 'leavesayhello', '9', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.bpmn', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/sayhelloleave.leavesayhello.png', null, '0', '1', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:10:105010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '10', '105001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:11:107509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '11', '107501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:12:110010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '12', '110001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:13:112509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '13', '112501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:14:115010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '14', '115001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:15:117512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '15', '117501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:16:120008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '16', '120001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:17:122512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '17', '122501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:18:125008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '18', '125001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:19:127512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '19', '127501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:1:62512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '1', '62501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:20:130008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '20', '130001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:21:132512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '21', '132501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:22:135008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '22', '135001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:23:137512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '23', '137501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:24:140010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '24', '140001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:25:142509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '25', '142501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:26:145012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '26', '145001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:2:65012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '2', '65001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:3:67512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '3', '67501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:4:70012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '4', '70001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:5:72512', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '5', '72501', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:6:80008', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '6', '80001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\test-classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:7:95012', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '7', '95001', 'C:\\RealCode\\TNA\\JC\\jc-web\\target\\classes\\processes\\simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:8:100010', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '8', '100001', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');
INSERT INTO `act_re_procdef` VALUES ('simplejc:9:102509', '1', 'http://www.kafeitu.me/activiti-in-action', 'simplejc', 'simplejc', '9', '102501', '/Users/realaicy/RealCode/TNA/JC/jc-web/target/test-classes/processes/simplejc.bpmn20.xml', null, null, '0', '0', '1', '');

-- ----------------------------
-- Table structure for `act_ru_event_subscr`
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
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_execution`
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
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO `act_ru_execution` VALUES ('77501', '1', '77501', '18', null, 'simplejc:5:72512', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('80010', '1', '80010', '19', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('82501', '1', '82501', '20', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('85001', '1', '85001', '21', null, 'simplejc:6:80008', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('87501', '2', '87501', '22', null, 'simplejc:6:80008', null, 'preAudit', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('90001', '2', '90001', '23', null, 'simplejc:6:80008', null, 'preAudit', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('92501', '3', '92501', '24', null, 'simplejc:6:80008', null, 'audit', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('95013', '1', '95013', '25', null, 'simplejc:7:95012', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);
INSERT INTO `act_ru_execution` VALUES ('97501', '1', '97501', '26', null, 'simplejc:7:95012', null, 'comfirmDate', '1', '0', '1', '0', '1', '2', '', null, null);

-- ----------------------------
-- Table structure for `act_ru_identitylink`
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
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO `act_ru_identitylink` VALUES ('77506', '1', 'org1_secretary', 'candidate', null, '77505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('80015', '1', 'org1_secretary', 'candidate', null, '80014', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('82506', '1', 'org1_secretary', 'candidate', null, '82505', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('85006', '1', 'org1_secretary', 'candidate', null, '85005', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('87510', '1', 'org1_preaudit', 'candidate', null, '87509', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('90010', '1', 'org1_preaudit', 'candidate', null, '90009', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('92514', '1', 'org1_audit', 'candidate', null, '92513', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('95018', '1', 'org1_secretary', 'candidate', null, '95017', null, null);
INSERT INTO `act_ru_identitylink` VALUES ('97506', '1', 'org1_secretary', 'candidate', null, '97505', null, null);

-- ----------------------------
-- Table structure for `act_ru_job`
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
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_task`
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
-- Records of act_ru_task
-- ----------------------------
INSERT INTO `act_ru_task` VALUES ('77505', '1', '77501', '77501', 'simplejc:5:72512', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 06:56:54.971', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('80014', '1', '80010', '80010', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 06:58:41.767', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('82505', '1', '82501', '82501', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:00:11.975', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('85005', '1', '85001', '85001', 'simplejc:6:80008', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:01:19.101', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('87509', '1', '87501', '87501', 'simplejc:6:80008', '预稽查', null, null, 'preAudit', null, null, null, '50', '2016-09-05 07:26:09.553', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('90009', '1', '90001', '90001', 'simplejc:6:80008', '预稽查', null, null, 'preAudit', null, null, null, '50', '2016-09-05 07:27:43.669', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('92513', '1', '92501', '92501', 'simplejc:6:80008', '稽查', null, null, 'audit', null, null, null, '50', '2016-09-05 07:29:38.828', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('95017', '1', '95013', '95013', 'simplejc:7:95012', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 07:48:32.627', null, null, '1', '', null);
INSERT INTO `act_ru_task` VALUES ('97505', '1', '97501', '97501', 'simplejc:7:95012', '确定人员、时间、行程', null, null, 'comfirmDate', null, null, null, '50', '2016-09-05 09:55:51.081', null, null, '1', '', null);

-- ----------------------------
-- Table structure for `act_ru_variable`
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
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO `act_ru_variable` VALUES ('77503', '1', 'jpa-entity', 'projectInfo', '77501', '77501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '18');
INSERT INTO `act_ru_variable` VALUES ('80012', '1', 'jpa-entity', 'projectInfo', '80010', '80010', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '19');
INSERT INTO `act_ru_variable` VALUES ('82503', '1', 'jpa-entity', 'projectInfo', '82501', '82501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '20');
INSERT INTO `act_ru_variable` VALUES ('85003', '1', 'jpa-entity', 'projectInfo', '85001', '85001', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '21');
INSERT INTO `act_ru_variable` VALUES ('87503', '1', 'jpa-entity', 'projectInfo', '87501', '87501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '22');
INSERT INTO `act_ru_variable` VALUES ('87507', '1', 'boolean', 'telephoneInterviewOutcome', '87501', '87501', null, null, null, '1', null, null);
INSERT INTO `act_ru_variable` VALUES ('90003', '1', 'jpa-entity', 'projectInfo', '90001', '90001', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '23');
INSERT INTO `act_ru_variable` VALUES ('90007', '1', 'boolean', 'telephoneInterviewOutcome', '90001', '90001', null, null, null, '1', null, null);
INSERT INTO `act_ru_variable` VALUES ('92503', '1', 'jpa-entity', 'projectInfo', '92501', '92501', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '24');
INSERT INTO `act_ru_variable` VALUES ('92507', '1', 'boolean', 'telephoneInterviewOutcome', '92501', '92501', null, null, null, '1', null, null);
INSERT INTO `act_ru_variable` VALUES ('92511', '1', 'boolean', 'techOk', '92501', '92501', null, null, null, '1', null, null);
INSERT INTO `act_ru_variable` VALUES ('95015', '1', 'jpa-entity', 'projectInfo', '95013', '95013', null, null, null, null, 'com.realaicy.product.jc.modules.project.model.ProjectInfo', '25');
INSERT INTO `act_ru_variable` VALUES ('97503', '1', 'string', 'projectName', '97501', '97501', null, null, null, null, '工作流测试——1', null);

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
-- Records of jc_common_tree
-- ----------------------------
INSERT INTO `jc_common_tree` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, '', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '');
INSERT INTO `jc_common_tree` VALUES ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '');
INSERT INTO `jc_common_tree` VALUES ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', '', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '');
INSERT INTO `jc_common_tree` VALUES ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', '', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null);
INSERT INTO `jc_common_tree` VALUES ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', '', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '');
INSERT INTO `jc_common_tree` VALUES ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', '', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null);
INSERT INTO `jc_common_tree` VALUES ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', '', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '');
INSERT INTO `jc_common_tree` VALUES ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', '', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '');
INSERT INTO `jc_common_tree` VALUES ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', '', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null);
INSERT INTO `jc_common_tree` VALUES ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '');
INSERT INTO `jc_common_tree` VALUES ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '');
INSERT INTO `jc_common_tree` VALUES ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '');
INSERT INTO `jc_common_tree` VALUES ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', '', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '');
INSERT INTO `jc_common_tree` VALUES ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '');
INSERT INTO `jc_common_tree` VALUES ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '');
INSERT INTO `jc_common_tree` VALUES ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '');
INSERT INTO `jc_common_tree` VALUES ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);

-- ----------------------------
-- Table structure for `jc_m_checkdb_all`
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
-- Records of jc_m_checkdb_all
-- ----------------------------
INSERT INTO `jc_m_checkdb_all` VALUES ('1', '1', '1', '1', '', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('2', '1', '1', '1', '稽查标准数据库', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('3', '1', '1.001', '2', 'GCP国家标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('4', '1', '1.002', '2', 'CDISC标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('5', '1', '1.003', '2', 'XX医院标准', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('6', '1', '1.004', '2', '参考经验', null, null, '0', '0', null, '1', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('7', '1', '1.001.0000001', '3', 'GCP具体检查项1', null, null, '0', '0', null, '0', '0', '1', null, null, null, null, null, null, '');
INSERT INTO `jc_m_checkdb_all` VALUES ('8', '1', '1.001.0000002', '3', 'GCP具体检查项2', null, null, '0', '0', null, '0', '0', '1', null, null, null, null, null, null, '');

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
-- Table structure for `jc_m_doc_allinone`
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
-- Records of jc_m_doc_allinone
-- ----------------------------
INSERT INTO `jc_m_doc_allinone` VALUES ('1', '1', '1', '99', '文档中心资源库', null, null, null, null, '', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', '', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', '', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, '');
INSERT INTO `jc_m_doc_allinone` VALUES ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', '', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', '', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null, '');
INSERT INTO `jc_m_doc_allinone` VALUES ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', '', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', '', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('9', '1', '1.005', '1', '测试文档目录层1', null, null, '0', '999', '', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null, '');
INSERT INTO `jc_m_doc_allinone` VALUES ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', '', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_0033', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5test', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '', '');
INSERT INTO `jc_m_doc_allinone` VALUES ('99', '1', '0', '99', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null, '');

-- ----------------------------
-- Table structure for `jc_m_doc_catalog`
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
-- Records of jc_m_doc_catalog
-- ----------------------------
INSERT INTO `jc_m_doc_catalog` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, '', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', '', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', '', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null);
INSERT INTO `jc_m_doc_catalog` VALUES ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', '', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', '', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null);
INSERT INTO `jc_m_doc_catalog` VALUES ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', '', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', '', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', '', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null);
INSERT INTO `jc_m_doc_catalog` VALUES ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', '', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '');
INSERT INTO `jc_m_doc_catalog` VALUES ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);

-- ----------------------------
-- Table structure for `jc_m_doc_file`
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
-- Records of jc_m_doc_file
-- ----------------------------
INSERT INTO `jc_m_doc_file` VALUES ('1', '1', '1', '0', '文档中心资源库', null, null, null, null, '', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('2', '1', '1.001', '1', 'SOP文档', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('3', '1', '1.002', '1', '制度文档', null, null, null, '3000', '', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('4', '1', '1.003', '1', '培训文档', null, null, '0', '2000', '', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null);
INSERT INTO `jc_m_doc_file` VALUES ('5', '1', '1.004', '1', '稽查文档', '', '', '0', '4000', '', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('6', '1', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', '', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null);
INSERT INTO `jc_m_doc_file` VALUES ('7', '1', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', '', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '');
INSERT INTO `jc_m_doc_file` VALUES ('8', '1', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', '', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '');
INSERT INTO `jc_m_doc_file` VALUES ('9', '1', '1.005', '1', '测试文档目录层111111', null, null, '0', '999', '', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null);
INSERT INTO `jc_m_doc_file` VALUES ('10', '1', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '');
INSERT INTO `jc_m_doc_file` VALUES ('11', '1', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '');
INSERT INTO `jc_m_doc_file` VALUES ('12', '1', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '');
INSERT INTO `jc_m_doc_file` VALUES ('13', '1', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', '', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '');
INSERT INTO `jc_m_doc_file` VALUES ('14', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('15', '1', '1.005.001.001.001.0000001', '10', '测试文档目录层3_003', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('16', '1', '1.005.001.001.001.0000001', '12', '测试文档目录层5', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '');
INSERT INTO `jc_m_doc_file` VALUES ('17', '1', '0', '0', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);

-- ----------------------------
-- Table structure for `jc_pj_application`
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
-- Records of jc_pj_application
-- ----------------------------
INSERT INTO `jc_pj_application` VALUES ('1', '河南肿瘤医院GCP稽查申请', '1', 'XXX药厂', '刘柯南', '022-24567890', '13920888888', '100000', '1', '2016-09-04 17:35:12', null, '2016-09-04 17:35:12', null, null);
INSERT INTO `jc_pj_application` VALUES ('2', '测试', '1', '测试', '测试', null, null, null, '30', '2016-09-04 19:38:16', '6', '2016-09-04 23:43:17', '6', null);
INSERT INTO `jc_pj_application` VALUES ('3', '1', '1', '1', '1', null, null, null, '0', '2016-09-04 19:39:36', '6', '2016-09-04 19:39:36', '6', null);

-- ----------------------------
-- Table structure for `jc_pj_info`
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
-- Records of jc_pj_info
-- ----------------------------
INSERT INTO `jc_pj_info` VALUES ('4', '河南肿瘤医院GCP稽查', null, '6', '13920888888', '100000', '60', '2016-09-05 04:40:03', null, '2016-09-05 04:40:03', null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('11', 'ffff', null, '6', null, '111111', '0', '2016-09-05 05:34:46', '6', '2016-09-05 05:34:46', '6', null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('12', '测试流程1', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('14', '测试流程2016-09-05T06:35:30.442', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('15', '测试流程2016-09-05T06:36:45.832', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('16', '测试流程2016-09-05T06:38:55.215', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('17', '测试流程2016-09-05T06:41:11.733', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('18', '测试流程2016-09-05T06:56:54.755', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('19', '测试流程2016-09-05T06:58:41.692', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('20', '测试流程2016-09-05T07:00:11.758', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('21', '测试流程2016-09-05T07:01:18.900', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('22', '测试流程2016-09-05T07:26:09.259', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('23', '测试流程2016-09-05T07:27:43.354', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('24', '测试流程2016-09-05T07:29:38.442', null, null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('25', '流程测试项目1', null, '6', null, '1', '0', '2016-09-05 07:48:33', '6', '2016-09-05 07:48:33', '6', null, null, null, null);
INSERT INTO `jc_pj_info` VALUES ('26', '工作流测试——1', null, '6', null, '1111', '0', '2016-09-05 09:55:51', '6', '2016-09-05 09:55:51', '6', null, null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_group`
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
-- Records of jc_sys_group
-- ----------------------------
INSERT INTO `jc_sys_group` VALUES ('1', '0', '1', 'ROOT', '占位符', '', '0', null, '1', '0', '1', null, '2016-08-30 15:47:15', '1', '2016-08-30 15:47:15', '1', '', null, null, null);
INSERT INTO `jc_sys_group` VALUES ('2', '1', '1', 'Parent', '组祖先', '', '0', null, '1', '0', '1', null, '2016-08-30 16:03:14', '1', '2016-08-30 16:03:14', '1', '', null, null, null);
INSERT INTO `jc_sys_group` VALUES ('3', '1.001', '2', 'org1', 'ORG1的组祖先', '', '0', null, '1', '0', '1', null, '2016-08-30 16:03:57', '1', '2016-08-30 16:03:57', '1', '', null, null, null);
INSERT INTO `jc_sys_group` VALUES ('4', '1.001.001', '3', 'org1_admin', 'ORG1的管理员组', '', '0', null, '1', '0', '1', null, '2016-08-30 16:06:23', '1', '2016-08-30 16:06:23', '1', 'wf', null, null, null);
INSERT INTO `jc_sys_group` VALUES ('5', '1.001.002', '3', 'org1_secretary', 'ORG1的秘书处', '', '0', null, '1', '0', '1', null, '2016-09-05 05:54:33', '1', '2016-09-05 05:54:33', '1', 'wf', null, null, null);
INSERT INTO `jc_sys_group` VALUES ('6', '1.001.003', null, 'org1_preaudit', 'ORG1的预稽查人员组', '', '0', null, '1', '0', '1', null, '2016-09-05 05:56:32', '1', '2016-09-05 05:56:32', '1', 'wf', null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_menu`
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
-- Records of jc_sys_menu
-- ----------------------------
INSERT INTO `jc_sys_menu` VALUES ('1', '2', '1', '99', '菜单鼻祖', '#', null, null, null, null, '', '', '', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '', '');
INSERT INTO `jc_sys_menu` VALUES ('2', '2', '1.001', '1', '综合看板', '#', null, 'fa fa-lg fa-fw fa-home', '', '1000', '', '', '', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '', '');
INSERT INTO `jc_sys_menu` VALUES ('3', '2', '1.002', '1', '我的工作台', '#', null, 'fa fa-lg fa-fw fa-inbox', '<em>3</em>', '2000', '', '', '', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '', '');
INSERT INTO `jc_sys_menu` VALUES ('4', '2', '1.003', '1', '项目管理', '#', null, 'fa fa-lg fa-fw fa-file-powerpoint-o', null, '3000', '', '', '', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null, '');
INSERT INTO `jc_sys_menu` VALUES ('99', '1', '0', '99', '占位符', null, null, '0', null, '0', null, '', '', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null, '');
INSERT INTO `jc_sys_menu` VALUES ('100', '2', '1.001.001', '2', '业务仪表盘', 'dashboard/dashboard.html', null, '0', null, '1000', null, '', '', '1', null, '2016-09-25 17:33:25', '0', '2016-09-25 17:33:31', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('101', '2', '1.001.002', '2', '统计分析仪表盘', 'dashboard/flot', null, '0', null, '2000', null, '', '', '1', null, '2016-09-25 17:33:29', '0', '2016-09-25 17:33:33', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('102', '2', '1.004', '1', '文档管理中心', '#', null, 'fa fa-lg fa-fw fa-folder-o', null, '4000', null, '', '', '1', null, '2016-09-25 20:15:17', '0', '2016-09-25 20:15:19', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('103', '2', '1.004.001', '102', '文档分类管理', 'doccenter/manager.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-25 20:16:18', '0', '2016-09-25 20:16:18', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('104', '2', '1.004.002', '102', '文档维护', 'doccenter/m2.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-25 20:22:15', '0', '2016-09-25 20:22:15', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('105', '2', '1.005', '1', '稽查标准数据库管理', null, null, 'fa fa-lg fa-fw fa-database', null, '5000', null, '', '', '1', null, '2016-09-25 20:26:52', '0', '2016-09-25 20:26:52', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('106', '2', '1.006', '1', '工作流管理', null, null, 'fa fa-lg fa-fw fa-long-arrow-right', null, '6000', null, '', '', '1', null, '2016-09-25 20:27:03', '0', '2016-09-25 20:27:03', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('107', '2', '1.007', '1', '系统管理', null, null, 'fa fa-lg fa-fw fa-gear', null, '9000', null, '', '', '1', null, '2016-09-25 20:28:10', '0', '2016-09-25 20:28:10', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('108', '2', '1.007.001', '107', '机构管理', 'system/org/page.html', null, '0', null, '1000', null, '', '', '1', null, '2016-09-25 20:28:45', '0', '2016-09-25 20:28:45', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('109', '2', '1.007.002', '107', '用户管理', 'system/user/page.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-25 20:30:17', '0', '2016-09-25 20:30:17', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('110', '2', '1.007.003', '107', '角色管理', 'system/role/page.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-25 20:31:08', '0', '2016-09-25 20:31:08', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('111', '2', '1.006.001', '106', '流程列表', 'wf/def/page.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-26 15:59:00', '0', '2016-09-26 15:59:00', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('112', '2', '1.006.002', '106', '我的工作', 'wf/task/page.html', null, '0', null, '0', null, '', '', '1', null, '2016-09-26 16:00:20', '0', '2016-09-26 16:00:20', '0', null, '');
INSERT INTO `jc_sys_menu` VALUES ('113', '1', '1.007', '1', '医学工具箱', '#', null, 'fa fa-lg fa-fw fa-medkit', '', '7000', '', '', '', '1', null, '2016-10-17 05:25:16', '1', '2016-10-17 05:25:16', '1', null, '');
INSERT INTO `jc_sys_menu` VALUES ('114', '1', '1.007.001', '113', 'MedDRA数据库查询', null, null, 'fa fa-lg fa-fw fa-cubes', '', '1000', '', '', '', '1', null, '2016-10-17 05:27:29', '1', '2016-10-17 05:27:29', '1', null, '');
INSERT INTO `jc_sys_menu` VALUES ('115', '1', '1.001.003', '2', '项目区域分布图', 'dashboard/map.html', null, 'fa fa-lg fa-fw fa-map-marker', '', '3000', '', '', '', '1', null, '2016-10-17 05:40:32', '1', '2016-10-17 05:40:32', '1', null, '');

-- ----------------------------
-- Table structure for `jc_sys_org`
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='组织表';

-- ----------------------------
-- Records of jc_sys_org
-- ----------------------------
INSERT INTO `jc_sys_org` VALUES ('1', '1', '0', '', '1', '占位符', null, '13920888888', 'realtest@google.com', '8', '', '0', null, '', '', '1', null, '2016-08-30 15:26:54', '1', '2016-08-30 15:26:54', '1', null, null);
INSERT INTO `jc_sys_org` VALUES ('2', '3', '1', '', '1', 'ROOT', null, '13920888888', 'realtest@google.com', '8', '1', '1', null, '', '', '1', '1', '2016-08-30 15:33:36', '1', '2016-08-30 15:33:36', '1', '1', null);
INSERT INTO `jc_sys_org` VALUES ('3', '2', '1.001', '', '2', '中国肿瘤临床试验稽查协作组', '测试1', '13920888888', 'realtest@google.com', '9', '0', '100', null, '', '', '1', null, '2016-08-30 15:34:44', '1', '2016-10-01 09:45:43', '6', null, null);
INSERT INTO `jc_sys_org` VALUES ('4', '4', '1.002', '', '2', '中国测试协作组', 'aaaaa', '1392-088-8881', 'realtest@google.com', '9', '', '999', null, '', '', '1', null, '2016-09-03 11:21:07', '1', '2016-10-07 16:04:14', '6', null, null);
INSERT INTO `jc_sys_org` VALUES ('5', '5', '1.003', '', '2', '药品一致性稽查协作组', null, '13920888888', 'realtest@google.com', '9', '', '200', null, '', '', '1', null, '2016-09-03 11:32:36', '1', '2016-09-03 11:32:36', '1', null, null);
INSERT INTO `jc_sys_org` VALUES ('6', '6', '1.002.001', '', '4', '测试协作组——管理员组', null, '13920888888', 'realtest@google.com', '1', '', '0', null, '', '', '1', null, '2016-09-03 11:33:36', '1', '2016-09-03 11:33:36', '1', null, null);
INSERT INTO `jc_sys_org` VALUES ('30', '2', '1.001.001', '', '3', '秘书处', '刘备南3', '1392-088-8888', 'realtest@google.com', '1', null, '200', '', '', '', '1', '', '2016-09-04 16:50:15', '6', '2016-10-07 22:19:52', '116', '', null);
INSERT INTO `jc_sys_org` VALUES ('31', '2', '1.004', '', '2', '测试专用', '测试员1', '1382-088-8888', 'a@b.com', '0', null, null, '', '', '', '1', '', '2016-10-07 13:34:00', '6', '2016-10-09 04:40:26', '6', '', null);
INSERT INTO `jc_sys_org` VALUES ('58', null, '1.001.002', '', '3', '专家组', '测试', '13920234616', 'a@b', '0', null, null, null, '', null, '0', '', '2016-10-17 06:17:11', '6', '2016-10-17 06:17:11', '6', '', null);
INSERT INTO `jc_sys_org` VALUES ('59', null, '1.001.003', '', '3', '稽查组', '测试', '13920234616', 'a@b', '0', null, null, null, '', null, '0', '', '2016-10-17 06:17:30', '6', '2016-10-17 06:17:30', '6', '', null);
INSERT INTO `jc_sys_org` VALUES ('60', null, '1.001.004', '', '3', '预稽查组', '测试', '13920234616', 'a@b', '0', null, null, null, '', null, '0', '', '2016-10-17 06:17:36', '6', '2016-10-17 06:17:36', '6', '', null);

-- ----------------------------
-- Table structure for `jc_sys_org2`
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
-- Records of jc_sys_org2
-- ----------------------------
INSERT INTO `jc_sys_org2` VALUES ('1', '1', '99', '文档中心资源库', null, null, null, null, '', '1', '1', '1', '', '2016-07-07 10:34:50', '1', '2016-07-07 10:34:50', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('2', '1.001', '1', 'SOP文档', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-07 10:45:23', '1', '2016-07-07 10:45:23', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('3', '1.002', '1', '制度文档', null, null, null, '3000', '', '1', '1', '1', '', '2016-07-07 14:24:05', '1', '2016-07-07 14:24:05', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('4', '1.003', '1', '培训文档', null, null, '0', '2000', '', '1', '1', '1', null, '2016-07-19 15:52:21', '1', '2016-07-19 15:52:26', '1', null);
INSERT INTO `jc_sys_org2` VALUES ('5', '1.004', '1', '稽查文档', '', '', '0', '4000', '', '1', '1', '1', '', '2016-07-19 15:55:06', '1', '2016-07-19 15:55:13', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('6', '1.002.0000001', '3', 'Real_制度测试文档1', null, null, '0', '1000', '', '0', '0', '1', 'test', '2016-07-19 15:56:23', '1', '2016-07-19 15:56:25', '1', null);
INSERT INTO `jc_sys_org2` VALUES ('7', '1.002.0000002', '3', 'Real_测试制度文档Tue Jul 19 16:00:53 CST 2016', null, null, null, '3000', '', '0', '0', '1', 'test', '2016-07-19 16:00:53', '3', '2016-07-19 16:00:53', '3', '');
INSERT INTO `jc_sys_org2` VALUES ('8', '1.002.0000003', '3', 'Real_测试制度文档Tue Jul 19 16:01:06 CST 2016', null, null, null, '2000', '', '0', '0', '1', 'test', '2016-07-19 16:01:06', '3', '2016-07-19 16:01:06', '3', '');
INSERT INTO `jc_sys_org2` VALUES ('9', '1.005', '1', '测试文档目录层1', null, null, '0', '999', '', '1', '0', '1', null, '2016-07-19 16:32:18', '1', '2016-07-19 16:32:21', '1', null);
INSERT INTO `jc_sys_org2` VALUES ('10', '1.005.001', '9', '测试文档目录层2', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:35:35', '9', '2016-07-19 16:35:35', '9', '');
INSERT INTO `jc_sys_org2` VALUES ('11', '1.005.001.001', '10', '测试文档目录层3', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:37:25', '10', '2016-07-19 16:37:25', '10', '');
INSERT INTO `jc_sys_org2` VALUES ('12', '1.005.001.001.001', '11', '测试文档目录层4', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-19 16:39:44', '11', '2016-07-19 16:39:44', '11', '');
INSERT INTO `jc_sys_org2` VALUES ('13', '1.005.001.001.001.0000001', '12', '测试文档1', null, null, null, '1000', '', '0', '1', '1', '', '2016-07-19 16:50:52', '12', '2016-07-19 16:50:52', '12', '');
INSERT INTO `jc_sys_org2` VALUES ('14', '1.005.001.001.001.0000001', '10', '测试文档目录层3_002', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:08:00', '1', '2016-07-20 01:08:00', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('15', '1.005.001.001.001.0000001', '10', '测试文档目录层3_0033', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:13:42', '1', '2016-07-20 01:13:42', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('16', '1.005.001.001.001.0000001', '12', '测试文档目录层5test', null, null, null, '1000', '', '1', '1', '1', '', '2016-07-20 01:14:02', '1', '2016-07-20 01:14:02', '1', '');
INSERT INTO `jc_sys_org2` VALUES ('99', '0', '99', '占位符', null, null, '0', '0', null, '1', '0', '1', null, '2016-07-19 16:14:19', '1', '2016-07-19 16:14:21', '1', null);

-- ----------------------------
-- Table structure for `jc_sys_role`
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of jc_sys_role
-- ----------------------------
INSERT INTO `jc_sys_role` VALUES ('1', '', '测试角色1', '1', '1', '2,100,106', 'test,test2', '2016-10-10 15:50:17', null, null, null, '3', null, '1');
INSERT INTO `jc_sys_role` VALUES ('2', '', '测试角色2', '1', '1', null, null, '2016-10-10 15:50:17', null, null, null, '3', null, '1');
INSERT INTO `jc_sys_role` VALUES ('3', '', '测试角色3', '1', '1', null, null, '2016-10-10 15:50:18', null, null, null, '3', null, '1');
INSERT INTO `jc_sys_role` VALUES ('4', '', '测试角色4', '1', '1', null, null, '2016-10-10 15:50:19', null, null, null, '3', null, '1');
INSERT INTO `jc_sys_role` VALUES ('5', '', '测试角色5c', '1', '1', null, null, '2016-10-10 15:50:19', null, '2016-10-09 06:24:48', '6', '31', null, '1');
INSERT INTO `jc_sys_role` VALUES ('6', '', '超级管理员', '1', '1', null, 'Org-r,Org-c,Org-r,Org-d,Role-a,User-a', '2016-10-16 08:03:29', null, null, null, '3', null, '1');
INSERT INTO `jc_sys_role` VALUES ('7', '', '秘书处处长', '1', '1', '2,100,102,103,104,107,108,109,110,106,115', 'Org-r,Org-c,Role-a,User-a', '2016-10-17 05:52:50', null, null, null, '30', null, '1');
INSERT INTO `jc_sys_role` VALUES ('37', '', '专家组长', null, null, null, null, '2016-10-17 06:24:54', '6', '2016-10-17 06:24:54', '6', '58', '', '0');
INSERT INTO `jc_sys_role` VALUES ('38', '', '稽查组长', null, null, null, null, '2016-10-17 06:25:00', '6', '2016-10-17 06:25:00', '6', '58', '', '0');
INSERT INTO `jc_sys_role` VALUES ('39', '', '稽查组长', null, null, null, null, '2016-10-17 06:25:53', '6', '2016-10-17 06:25:53', '6', '59', '', '0');
INSERT INTO `jc_sys_role` VALUES ('40', '', '预稽查组长', null, null, null, null, '2016-10-17 06:26:09', '6', '2016-10-17 06:26:09', '6', '60', '', '0');
INSERT INTO `jc_sys_role` VALUES ('41', '', '专家组成员', null, null, null, null, '2016-10-17 06:28:39', '6', '2016-10-17 06:28:39', '6', '58', '', '0');
INSERT INTO `jc_sys_role` VALUES ('42', '', '稽查组成员', null, null, null, null, '2016-10-17 06:31:19', '6', '2016-10-17 06:31:19', '6', '59', '', '0');
INSERT INTO `jc_sys_role` VALUES ('43', '', '预稽查组成员', null, null, null, null, '2016-10-17 06:38:24', '6', '2016-10-17 06:38:24', '6', '60', '', '0');
INSERT INTO `jc_sys_role` VALUES ('44', '', '秘书成员', null, null, null, null, '2016-10-17 06:39:02', '6', '2016-10-17 06:39:02', '6', '30', '', '0');

-- ----------------------------
-- Table structure for `jc_sys_tenant`
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
-- Records of jc_sys_tenant
-- ----------------------------
INSERT INTO `jc_sys_tenant` VALUES ('1', 'ROOT', null, null, '', '0', null, '1', null, '2016-08-30 15:26:54', '1', '2016-08-30 15:26:54', '1', null, null);
INSERT INTO `jc_sys_tenant` VALUES ('2', '中国肿瘤临床试验稽查协作组', '闫昭', '13988888888', '1', '1', '', '1', '1', '2016-08-30 15:33:36', '1', '2016-08-30 15:33:36', '1', '1', null);
INSERT INTO `jc_sys_tenant` VALUES ('3', 'realadmin', 'XudongLiu', '13920234616', '1', '1', '', '1', null, '2016-10-05 09:16:57', '1', '2016-10-05 09:16:57', '1', '1', '');

-- ----------------------------
-- Table structure for `jc_sys_user`
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
-- Records of jc_sys_user
-- ----------------------------
INSERT INTO `jc_sys_user` VALUES ('6', '3', '2', '1', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', '100', 'testonly@realaicy.com', null, '1', '1', '2016-08-25 10:25:46', null, null, null, '2016-01-01 08:08:08', null, null, null);
INSERT INTO `jc_sys_user` VALUES ('116', '2', '30', '1.001.001', 'wym', '$2a$10$FZV9Z7OAuzjM9nwzSe.cWOkddVwa2Niubp776/4jtSVJDpKUoPq5O', '测试秘书长', '2', '0', 'wym@126.com', '', '0', '0', '2016-09-25 22:06:41', '6', '', null, '2016-09-25 22:06:41', '6', null, '秘书处处长');

-- ----------------------------
-- Table structure for `jc_sys_user_group`
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
-- Records of jc_sys_user_group
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色关联表';

-- ----------------------------
-- Records of jc_sys_user_role
-- ----------------------------
INSERT INTO `jc_sys_user_role` VALUES ('1', '4', '4', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('15', '5', '3', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('16', '5', '4', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('17', '5', '5', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('18', '5', '2', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('19', '6', '6', null, null, null, null);
INSERT INTO `jc_sys_user_role` VALUES ('21', '116', '7', null, null, null, null);

-- ----------------------------
-- Table structure for `jc_sys_user_role_copy`
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
-- Records of jc_sys_user_role_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `jc_sys_user_sec`
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户基本信息表';

-- ----------------------------
-- Records of jc_sys_user_sec
-- ----------------------------
INSERT INTO `jc_sys_user_sec` VALUES ('6', '3', '2', '1', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', '1', '1', '1', null, null, null, null, '', null, '1');
INSERT INTO `jc_sys_user_sec` VALUES ('116', '2', '30', '1.001.001', 'wym', '$2a$10$FZV9Z7OAuzjM9nwzSe.cWOkddVwa2Niubp776/4jtSVJDpKUoPq5O', '测试秘书长', '1', '1', '1', '1', '2016-09-25 22:06:41', '6', '2016-09-25 22:06:41', '6', '', null, '1');

-- ----------------------------
-- Table structure for `jc_sys_user_security`
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
-- Records of jc_sys_user_security
-- ----------------------------
INSERT INTO `jc_sys_user_security` VALUES ('1', 'test_1', '$2a$10$i07EXDvszCW1dDRhwjcOA.fq35YMd11R2Ymm.OpEYH0uKauv/dMdu', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('2', 'test_2', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('3', 'test_3', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('4', 'test_4', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('5', 'test_5', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('6', 'realaicy', '$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC', '刘旭东', '1', null, '1', '1', null, null, null, null, null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('7', 'test_5', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('8', 'test_6', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('9', 'test_7', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('10', 'test_8', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('11', 'test_9', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('12', 'test_10', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('13', 'test_11', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('14', 'test_12', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('15', 'test_13', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('16', 'test_14', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('17', 'test_15', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('18', 'test_16', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('19', 'test_17', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('20', 'test_18', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('21', 'test_19', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('22', 'test_20', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('23', 'test_21', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('24', 'test_22', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('25', 'test_23', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('26', 'test_24', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('27', 'test_25', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('28', 'test_26', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('29', 'test_27', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('30', 'test_28', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('31', 'test_29', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('32', 'test_30', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('33', 'test_31', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('34', 'test_32', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('35', 'test_33', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('36', 'test_34', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('37', 'test_35', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('38', 'test_36', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('39', 'test_37', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('40', 'test_38', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('41', 'test_39', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('42', 'test_40', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('43', 'test_41', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('44', 'test_42', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('45', 'test_43', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('46', 'test_44', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('47', 'test_45', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('48', 'test_46', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('49', 'test_47', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('50', 'test_48', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('51', 'test_49', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('52', 'test_50', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('53', 'test_51', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('54', 'test_52', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('55', 'test_53', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('56', 'test_54', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('57', 'test_55', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('58', 'test_56', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('59', 'test_57', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('60', 'test_58', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('61', 'test_59', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('62', 'test_60', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('63', 'test_61', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('64', 'test_62', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('65', 'test_63', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('66', 'test_64', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('67', 'test_65', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('68', 'test_66', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('69', 'test_67', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('70', 'test_68', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('71', 'test_69', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('72', 'test_70', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('73', 'test_71', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('74', 'test_72', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('75', 'test_73', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('76', 'test_74', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('77', 'test_75', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('78', 'test_76', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('79', 'test_77', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('80', 'test_78', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('81', 'test_79', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('82', 'test_80', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('83', 'test_81', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('84', 'test_82', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('85', 'test_83', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('86', 'test_84', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('87', 'test_85', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('88', 'test_86', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('89', 'test_87', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('90', 'test_88', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('91', 'test_89', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('92', 'test_90', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('93', 'test_91', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('94', 'test_92', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('95', 'test_93', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('96', 'test_94', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('97', 'test_95', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('98', 'test_96', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('99', 'test_97', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('100', 'test_98', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);
INSERT INTO `jc_sys_user_security` VALUES ('101', 'test_99', '12345678', '刘旭东', '1', null, '1', '1', null, null, '', '0', null, null, null);

-- ----------------------------
-- Table structure for `jc_tmp_actuserinfo`
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
-- Records of jc_tmp_actuserinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `jc_tmp_applicant`
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
-- Records of jc_tmp_applicant
-- ----------------------------
INSERT INTO `jc_tmp_applicant` VALUES ('1', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('2', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('3', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('4', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('5', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('6', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('7', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('8', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('9', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('10', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('11', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('12', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('13', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('14', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('15', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('16', 'John Doe', 'john@activiti.org', '12344');
INSERT INTO `jc_tmp_applicant` VALUES ('17', 'John Doe', 'john@activiti.org', '12344');

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
-- View structure for `act_id_group`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_group` AS select `t1`.`id` AS `ID_`,`t1`.`REV` AS `REV_`,`t1`.`NAME` AS `NAME_`,`t1`.`TYPE` AS `TYPE_` from `jc_sys_group` `t1` where (`t1`.`CUSTOM_CODE` = 'wf') ;

-- ----------------------------
-- View structure for `act_id_info`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_info` AS select `t1`.`ID_` AS `ID_`,`t1`.`REV_` AS `REV_`,`t1`.`USER_ID_` AS `USER_ID_`,`t1`.`TYPE_` AS `TYPE_`,`t1`.`KEY_` AS `KEY_`,`t1`.`VALUE_` AS `VALUE_`,`t1`.`PASSWORD_` AS `PASSWORD_`,`t1`.`PARENT_ID_` AS `PARENT_ID_` from `jc_tmp_actuserinfo` `t1` ;

-- ----------------------------
-- View structure for `act_id_membership`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_membership`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_membership` AS select `jc_sys_user_group`.`USERID` AS `USER_ID_`,`jc_sys_user_group`.`GROUPID` AS `GROUP_ID_` from `jc_sys_user_group` ;

-- ----------------------------
-- View structure for `act_id_user`
-- ----------------------------
DROP VIEW IF EXISTS `act_id_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `act_id_user` AS select `t1`.`USERNAME` AS `ID_`,(1 + 1) AS `REV_`,'testfirst' AS `FIRST_`,'testlast' AS `LAST`,'0' AS `PICTURE_ID_`,`t1`.`EMAIL` AS `EMAIL_`,`t1`.`PASSWORD` AS `PWD_` from `jc_sys_user` `t1` ;

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
