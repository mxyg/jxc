#
# TABLE STRUCTURE FOR: ci_account
#

DROP TABLE IF EXISTS ci_account;

CREATE TABLE `ci_account` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `number` varchar(15) COLLATE utf8_unicode_ci DEFAULT '0',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `amount` double DEFAULT '0',
  `date` date DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `number` (`number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ci_account (`id`, `name`, `number`, `status`, `amount`, `date`, `type`, `isDelete`) VALUES (1, '中国工商银行', '1001', 1, '0', '2015-10-08', 1, 0);


#
# TABLE STRUCTURE FOR: ci_account_info
#

DROP TABLE IF EXISTS ci_account_info;

CREATE TABLE `ci_account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT '0' COMMENT '关联ID',
  `buId` smallint(6) DEFAULT '0' COMMENT '客户ID',
  `billNo` varchar(25) DEFAULT '' COMMENT '销售单号',
  `billType` varchar(20) DEFAULT '',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `accId` int(11) DEFAULT '0' COMMENT '结算账户ID',
  `payment` double DEFAULT '0' COMMENT '收款金额  采购退回为正',
  `wayId` int(11) DEFAULT '0' COMMENT '结算方式ID',
  `settlement` varchar(50) DEFAULT '' COMMENT '结算号',
  `remark` varchar(50) DEFAULT '' COMMENT '备注',
  `transType` int(11) DEFAULT '0',
  `transTypeName` varchar(50) DEFAULT '',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `billdate` (`billDate`) USING BTREE,
  KEY `iid` (`iid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ci_account_info (`id`, `iid`, `buId`, `billNo`, `billType`, `billDate`, `accId`, `payment`, `wayId`, `settlement`, `remark`, `transType`, `transTypeName`, `isDelete`) VALUES (1, 6, 8, 'SKD201704100029432', 'RECEIPT', '2017-04-10', 1, '124', 9, '', '', 153001, '收款', 0);


#
# TABLE STRUCTURE FOR: ci_address
#

DROP TABLE IF EXISTS ci_address;

CREATE TABLE `ci_address` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `shortName` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT ' ',
  `postalcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `area` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `linkman` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `isdefault` tinyint(1) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `pid` (`postalcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: ci_admin
#

DROP TABLE IF EXISTS ci_admin;

CREATE TABLE `ci_admin` (
  `uid` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户名称',
  `userpwd` varchar(32) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '密码',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否锁定',
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT '',
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `lever` text COLLATE utf8_unicode_ci COMMENT '权限',
  `roleid` tinyint(1) DEFAULT '1' COMMENT '角色ID',
  `rightids` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `righttype1` text COLLATE utf8_unicode_ci,
  `righttype2` text COLLATE utf8_unicode_ci,
  `righttype3` text COLLATE utf8_unicode_ci,
  `righttype4` text COLLATE utf8_unicode_ci,
  `righttype5` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ci_admin (`uid`, `username`, `userpwd`, `status`, `name`, `mobile`, `lever`, `roleid`, `rightids`, `righttype1`, `righttype2`, `righttype3`, `righttype4`, `righttype5`) VALUES (1, 'admin', '7fef6171469e80d32c0559f88b377245', 1, '管理员', '18170521585', NULL, 0, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO ci_admin (`uid`, `username`, `userpwd`, `status`, `name`, `mobile`, `lever`, `roleid`, `rightids`, `righttype1`, `righttype2`, `righttype3`, `righttype4`, `righttype5`) VALUES (2, 'liuman', '2c68163a88c2cfcfcac230456fa4252a', 1, 'liuman', '18241890660', '1,2,3,4,5,85,86,87,106,107,108,109,110,111,11,12,13,99,112,113,114,115,116,117,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,14,100,101,102,15,16,17,144,145,146,147,148,179,149,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,18,103,104,105,19,20,21,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,91,92,6,10,7,8,88,89,9,90,63,64,65,66,67,93,94,68,69,70,71,72,95,96,73,74,75,76,77,78,79,80,81,82,83,84,97,118,119,120,98,121,122,123', 1, '', NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: ci_assistingprop
#

DROP TABLE IF EXISTS ci_assistingprop;

CREATE TABLE `ci_assistingprop` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `disable` tinyint(1) DEFAULT '0' COMMENT '状态',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: ci_assistsku
#

DROP TABLE IF EXISTS ci_assistsku;

CREATE TABLE `ci_assistsku` (
  `skuId` int(11) NOT NULL AUTO_INCREMENT,
  `skuClassId` int(11) DEFAULT '0',
  `skuAssistId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skuName` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`skuId`),
  KEY `id` (`skuClassId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: ci_category
#

DROP TABLE IF EXISTS ci_category;

CREATE TABLE `ci_category` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `parentId` smallint(6) DEFAULT '0' COMMENT '上级栏目ID',
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目路径',
  `level` tinyint(2) DEFAULT '1' COMMENT '层次',
  `ordnum` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `typeNumber` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '区别',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `detail` tinyint(4) DEFAULT '1',
  `sortIndex` smallint(6) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parentId` (`parentId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (1, 'shangji', 0, '', 1, 0, 1, 'supplytype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (2, '默认分类', 0, '2', 1, 0, 1, 'trade', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (3, '采购', 0, '', 1, 0, 1, 'paccttype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (4, '工资', 0, '', 1, 0, 1, 'paccttype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (5, '餐饮', 0, '', 1, 0, 1, 'paccttype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (6, '营业款', 0, '', 1, 0, 1, 'raccttype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (7, '开票', 0, '', 1, 0, 1, 'raccttype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (8, '零售客户', 0, '', 1, 0, 1, 'customertype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (9, '现金', 0, '', 1, 0, 1, 'PayMethod', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (10, '批发客户', 0, '', 1, 0, 1, 'customertype', '', 1, 0, 0);
INSERT INTO ci_category (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `remark`, `detail`, `sortIndex`, `isDelete`) VALUES (11, 'VIP客户', 0, '', 1, 0, 1, 'customertype', '', 1, 0, 0);


#
# TABLE STRUCTURE FOR: ci_contact
#

DROP TABLE IF EXISTS ci_contact;

CREATE TABLE `ci_contact` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '客户名称',
  `number` varchar(50) DEFAULT '0' COMMENT '客户编号',
  `cCategory` smallint(6) DEFAULT '0' COMMENT '客户类别',
  `cCategoryName` varchar(50) DEFAULT '' COMMENT '分类名称',
  `taxRate` double DEFAULT '0' COMMENT '税率',
  `amount` double DEFAULT '0' COMMENT '期初应付款',
  `periodMoney` double DEFAULT '0' COMMENT '期初预付款',
  `difMoney` double DEFAULT '0' COMMENT '初期往来余额',
  `beginDate` date DEFAULT NULL COMMENT '余额日期',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `linkMans` text COMMENT '客户联系方式',
  `type` tinyint(1) DEFAULT '-10' COMMENT '-10客户  10供应商',
  `contact` varchar(255) DEFAULT '',
  `cLevel` smallint(5) DEFAULT '1' COMMENT '客户等级ID',
  `cLevelName` varchar(50) DEFAULT '' COMMENT '客户等级',
  `pinYin` varchar(50) DEFAULT '',
  `disable` tinyint(1) DEFAULT '0' COMMENT '0启用   1禁用',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `hospital` varchar(50) DEFAULT '' COMMENT '医院',
  `sex` tinyint(1) DEFAULT '0' COMMENT '0男  1女',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `bed` varchar(50) DEFAULT '' COMMENT '床位',
  `hospitalNo` varchar(50) DEFAULT '' COMMENT '住院号',
  `operation` varchar(50) DEFAULT '' COMMENT '手术名称',
  `surgeon` varchar(50) DEFAULT '' COMMENT '手术医师',
  `military` varchar(50) DEFAULT '' COMMENT '器械师',
  PRIMARY KEY (`id`),
  KEY `number` (`number`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (7, '测试用户二', 'K002', 10, '批发客户', '0', '0', '0', '0', '2016-04-23', '', '[{\"linkName\":\"李四\",\"linkMobile\":\"333333333333\",\"linkPhone\":\"3\",\"linkIm\":\"3\",\"linkFirst\":1,\"province\":\"陕西省\",\"city\":\"铜川市\",\"county\":\"印台区\",\"address\":\"XXXX路\",\"id\":\"7\"}]', -10, '', 1, '批发客户', '', 0, 0, '0', 0, 0, '0', '0', '0', '0', '0');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (6, '测试用户一', 'k001', 10, '批发客户', '0', '0', '0', '0', '2016-04-23', '', '[{\"linkName\":\"张三\",\"linkMobile\":\"11111\",\"linkPhone\":\"2222\",\"linkIm\":\"222\",\"linkFirst\":1,\"province\":\"山西省\",\"city\":\"阳泉市\",\"county\":\"矿区\",\"address\":\"阿萨德发射点法\",\"id\":\"6\"}]', -10, '', 2, 'VIP客户', '', 0, 0, '0', 0, 0, '0', '0', '0', '0', '0');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (5, '测试供货商', '5001', 1, 'shangji', '0', '0', '0', '0', '2016-04-23', '', '[{\"linkName\":\"1\",\"linkMobile\":\"1\",\"linkPhone\":\"1\",\"linkIm\":\"1\",\"linkFirst\":1,\"province\":\"河北省\",\"city\":\"秦皇岛市\",\"county\":\"山海关区\",\"address\":\"111111\",\"id\":\"5\"}]', 10, '', 0, '0', '', 0, 0, '0', 0, 0, '0', '0', '0', '0', '0');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (4, '测试客户', '1001', 8, '零售客户', '0', '5', '1111', '-1106', '2016-04-23', '', '[{\"linkName\":\"33\",\"linkMobile\":\"33\",\"linkPhone\":\"33\",\"linkIm\":\"33\",\"linkFirst\":1,\"province\":\"湖南省\",\"city\":\"株洲市\",\"county\":\"芦淞区\",\"address\":\"dfsdfg\",\"id\":0}]', -10, '', 0, '零售客户', '', 0, 1, '0', 0, 0, '0', '0', '0', '0', '0');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (8, '测试客户三', 'K003', 10, '批发客户', '0', '0', '0', '0', '2016-04-01', '', '[{\"linkName\":\"李易\",\"linkMobile\":\"18888888\",\"linkPhone\":\"0000\",\"linkIm\":\"00000\",\"linkFirst\":1,\"province\":\"广东省\",\"city\":\"深圳市\",\"county\":\"福田区\",\"address\":\"XXX路xxx号\",\"id\":\"8\"},{\"linkName\":\"123\",\"linkMobile\":\"123\",\"linkPhone\":\"123\",\"linkIm\":\"123\",\"linkFirst\":0,\"province\":\"辽宁省\",\"city\":\"阜新市\",\"county\":\"太平区\",\"address\":\"12321\",\"id\":0}]', -10, '', 0, '零售客户', '', 0, 0, '0', 0, 0, '0', '0', '0', '0', '0');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (9, '刘满刘满刘满刘满刘满', 'K004', 8, '零售客户', '0', '0', '0', '0', '2017-04-05', '', '[]', -10, '', 1, '批发客户', '', 0, 0, '1', 1, 2, '3', '4', '5', '6', '7');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (10, '123123', '12312312312', 8, '零售客户', '0', '0', '0', '0', '2017-04-10', '', '[]', -10, '', 0, '零售客户', '', 0, 0, '1', 0, 2, '3', '4', '5', '6', '7');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (11, '2', '123', 8, '零售客户', '0', '0', '0', '0', '2017-04-10', '', '[]', -10, '', 0, '零售客户', '', 0, 0, '1', 1, 3, '4', '5', '6', '7', '8');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (12, '234', '124', 8, '零售客户', '0', '0', '0', '0', '2017-04-10', '', '[]', -10, '', 0, '零售客户', '', 0, 0, '1', 1, 3, '4', '5', '6', '7', '8');
INSERT INTO ci_contact (`id`, `name`, `number`, `cCategory`, `cCategoryName`, `taxRate`, `amount`, `periodMoney`, `difMoney`, `beginDate`, `remark`, `linkMans`, `type`, `contact`, `cLevel`, `cLevelName`, `pinYin`, `disable`, `isDelete`, `hospital`, `sex`, `age`, `bed`, `hospitalNo`, `operation`, `surgeon`, `military`) VALUES (13, '123', '123123', 10, '批发客户', '0', '0', '0', '0', '2017-04-10', '', '[]', -10, '', 0, '零售客户', '', 0, 0, '123', 0, 1, '2', '3', '4', '5', '6');


#
# TABLE STRUCTURE FOR: ci_goods
#

DROP TABLE IF EXISTS ci_goods;

CREATE TABLE `ci_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '商品编号',
  `quantity` double DEFAULT '0' COMMENT '起初数量',
  `spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '规格',
  `baseUnitId` smallint(6) DEFAULT '0' COMMENT '单位ID',
  `unitName` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '单位名称',
  `categoryId` smallint(6) DEFAULT '0' COMMENT '商品分类ID',
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '分类名称',
  `purPrice` double DEFAULT '0' COMMENT '预计采购价',
  `salePrice` double DEFAULT '0' COMMENT '预计销售价',
  `unitCost` double DEFAULT '0' COMMENT '单位成本',
  `amount` double DEFAULT '0' COMMENT '期初总价',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `goods` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `propertys` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '初期设置',
  `vipPrice` double DEFAULT '0' COMMENT '会员价',
  `lowQty` double DEFAULT '0',
  `length` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `highQty` double DEFAULT '0',
  `isSerNum` double DEFAULT '0',
  `barCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `discountRate1` double DEFAULT '0' COMMENT '0',
  `discountRate2` double DEFAULT '0',
  `locationId` int(11) DEFAULT '0',
  `locationName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `wholesalePrice` double DEFAULT '0',
  `width` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `skuAssistId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '辅助属性分类',
  `pinYin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `unitId` smallint(6) DEFAULT '0',
  `files` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '图片路径',
  `disable` tinyint(1) DEFAULT '0' COMMENT '0启用   1禁用',
  `unitTypeId` int(11) DEFAULT '0',
  `assistIds` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `assistName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `assistUnit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `jianxing` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `josl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `skuClassId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `property` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `safeDays` double DEFAULT '0',
  `advanceDay` double DEFAULT '0',
  `isWarranty` double DEFAULT '0',
  `delete` int(11) DEFAULT '0',
  `weight` double DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '0正常  1删除',
  `warehouseWarning` text,
  `inspector` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '厂家检验员',
  `deadline` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '商品期限',
  `factory` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '生产厂家',
  `regNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '注册账号',
  `proDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '生产日期',
  `mode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '型号',
  `serial` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '编码',
  PRIMARY KEY (`id`),
  KEY `number` (`number`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ci_goods (`id`, `name`, `number`, `quantity`, `spec`, `baseUnitId`, `unitName`, `categoryId`, `categoryName`, `purPrice`, `salePrice`, `unitCost`, `amount`, `remark`, `status`, `goods`, `propertys`, `vipPrice`, `lowQty`, `length`, `height`, `highQty`, `isSerNum`, `barCode`, `discountRate1`, `discountRate2`, `locationId`, `locationName`, `wholesalePrice`, `width`, `skuAssistId`, `pinYin`, `unitId`, `files`, `disable`, `unitTypeId`, `assistIds`, `assistName`, `assistUnit`, `jianxing`, `josl`, `skuClassId`, `property`, `safeDays`, `advanceDay`, `isWarranty`, `delete`, `weight`, `isDelete`, `warehouseWarning`, `inspector`, `deadline`, `factory`, `regNumber`, `proDate`, `mode`, `serial`) VALUES (1, '测试商品', '1001', '0', '123', 2, '根', 2, '默认分类', '0', '0', '0', '0', '', 1, '', NULL, '0', '2', '', '', '3', '0', '323', '0', '0', 1, '默认仓库', '0', '', NULL, 'cssp', 0, NULL, 0, 0, '', '', '', '', '', '', '', '0', '0', '0', 0, '0', 0, NULL, '12', '12', '123', '12', '123', '', '');
INSERT INTO ci_goods (`id`, `name`, `number`, `quantity`, `spec`, `baseUnitId`, `unitName`, `categoryId`, `categoryName`, `purPrice`, `salePrice`, `unitCost`, `amount`, `remark`, `status`, `goods`, `propertys`, `vipPrice`, `lowQty`, `length`, `height`, `highQty`, `isSerNum`, `barCode`, `discountRate1`, `discountRate2`, `locationId`, `locationName`, `wholesalePrice`, `width`, `skuAssistId`, `pinYin`, `unitId`, `files`, `disable`, `unitTypeId`, `assistIds`, `assistName`, `assistUnit`, `jianxing`, `josl`, `skuClassId`, `property`, `safeDays`, `advanceDay`, `isWarranty`, `delete`, `weight`, `isDelete`, `warehouseWarning`, `inspector`, `deadline`, `factory`, `regNumber`, `proDate`, `mode`, `serial`) VALUES (2, '123', '12321', '0', '123', 5, '套', 2, '默认分类', '1', '1', '0', '0', '', 1, '', NULL, '1', '1', '', '', '1', '0', '123', '1', '1', 1, '默认仓库', '1', '', NULL, '123', 0, NULL, 0, 0, '', '', '', '', '', '', '', '0', '0', '0', 0, '0', 0, NULL, '123', '123', '123', '123', '123', '', '');
INSERT INTO ci_goods (`id`, `name`, `number`, `quantity`, `spec`, `baseUnitId`, `unitName`, `categoryId`, `categoryName`, `purPrice`, `salePrice`, `unitCost`, `amount`, `remark`, `status`, `goods`, `propertys`, `vipPrice`, `lowQty`, `length`, `height`, `highQty`, `isSerNum`, `barCode`, `discountRate1`, `discountRate2`, `locationId`, `locationName`, `wholesalePrice`, `width`, `skuAssistId`, `pinYin`, `unitId`, `files`, `disable`, `unitTypeId`, `assistIds`, `assistName`, `assistUnit`, `jianxing`, `josl`, `skuClassId`, `property`, `safeDays`, `advanceDay`, `isWarranty`, `delete`, `weight`, `isDelete`, `warehouseWarning`, `inspector`, `deadline`, `factory`, `regNumber`, `proDate`, `mode`, `serial`) VALUES (3, '123', '123', '0', '', 5, '套', 2, '默认分类', '0', '0', '0', '0', '', 1, '', NULL, '0', '0', '', '', '0', '0', '', '0', '0', 0, '', '0', '', NULL, '123', 0, NULL, 0, 0, '', '', '', '', '', '', '', '0', '0', '0', 0, '0', 0, NULL, '', '', '', '', '', '', '');
INSERT INTO ci_goods (`id`, `name`, `number`, `quantity`, `spec`, `baseUnitId`, `unitName`, `categoryId`, `categoryName`, `purPrice`, `salePrice`, `unitCost`, `amount`, `remark`, `status`, `goods`, `propertys`, `vipPrice`, `lowQty`, `length`, `height`, `highQty`, `isSerNum`, `barCode`, `discountRate1`, `discountRate2`, `locationId`, `locationName`, `wholesalePrice`, `width`, `skuAssistId`, `pinYin`, `unitId`, `files`, `disable`, `unitTypeId`, `assistIds`, `assistName`, `assistUnit`, `jianxing`, `josl`, `skuClassId`, `property`, `safeDays`, `advanceDay`, `isWarranty`, `delete`, `weight`, `isDelete`, `warehouseWarning`, `inspector`, `deadline`, `factory`, `regNumber`, `proDate`, `mode`, `serial`) VALUES (4, 'haha', 'asdfsa', '0', '', 2, '根', 2, '默认分类', '1', '10', '0', '0', '', 1, '', NULL, '8', '0', '', '', '0', '0', '0106939488379060', '0', '0', 3, '八一广场门店', '5', '', NULL, 'haha', 0, NULL, 0, 0, '', '', '', '', '', '', '', '0', '0', '0', 0, '0', 0, NULL, '11', '10', '', '', '141111', '', '14090062050');


#
# TABLE STRUCTURE FOR: ci_goods_img
#

DROP TABLE IF EXISTS ci_goods_img;

CREATE TABLE `ci_goods_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `invId` int(11) DEFAULT '0',
  `type` varchar(100) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `thumbnailUrl` varchar(255) DEFAULT '',
  `size` int(11) DEFAULT '0',
  `deleteUrl` varchar(255) DEFAULT '',
  `deleteType` varchar(50) DEFAULT '',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `invId` (`invId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_invoice
#

DROP TABLE IF EXISTS ci_invoice;

CREATE TABLE `ci_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buId` smallint(6) DEFAULT '0' COMMENT '供应商ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '单据编号',
  `uid` smallint(6) DEFAULT '0',
  `userName` varchar(50) DEFAULT '' COMMENT '制单人',
  `transType` int(11) DEFAULT '0' COMMENT '150501购货 150502退货 150601销售 150602退销 150706其他入库',
  `totalAmount` double DEFAULT '0' COMMENT '购货总金额',
  `amount` double DEFAULT '0' COMMENT '折扣后金额',
  `rpAmount` double DEFAULT '0' COMMENT '本次付款',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `description` varchar(100) DEFAULT '' COMMENT '备注',
  `arrears` double DEFAULT '0' COMMENT '本次欠款',
  `disRate` double DEFAULT '0' COMMENT '折扣率',
  `disAmount` double DEFAULT '0' COMMENT '折扣金额',
  `totalQty` double DEFAULT '0' COMMENT '总数量',
  `totalArrears` double DEFAULT '0',
  `billStatus` tinyint(1) DEFAULT '0' COMMENT '订单状态 ',
  `checkName` varchar(50) DEFAULT '' COMMENT '采购单审核人',
  `totalTax` double DEFAULT '0',
  `totalTaxAmount` double DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0' COMMENT '采购单状态',
  `accId` tinyint(4) DEFAULT '0' COMMENT '结算账户ID',
  `billType` varchar(20) DEFAULT '' COMMENT 'PO采购订单 OI其他入库 PUR采购入库 BAL初期余额',
  `modifyTime` datetime DEFAULT NULL COMMENT '更新时间',
  `hxStateCode` tinyint(4) DEFAULT '0' COMMENT '0未付款  1部分付款  2全部付款',
  `transTypeName` varchar(20) DEFAULT '',
  `totalDiscount` double DEFAULT '0',
  `salesId` smallint(6) DEFAULT '0' COMMENT '销售人员ID',
  `customerFree` double DEFAULT '0' COMMENT '客户承担费用',
  `hxAmount` double DEFAULT '0' COMMENT '本次核销金额',
  `hasCheck` double DEFAULT '0' COMMENT '已核销',
  `notCheck` double DEFAULT '0' COMMENT '未核销',
  `nowCheck` double DEFAULT '0' COMMENT '本次核销',
  `payment` double DEFAULT '0' COMMENT '本次预收款',
  `discount` double DEFAULT '0' COMMENT '整单折扣',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '1删除  0正常',
  PRIMARY KEY (`id`),
  KEY `accId` (`accId`),
  KEY `buId` (`buId`),
  KEY `salesId` (`salesId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (1, 7, 'XS201704061552267', 1, '管理员', 150601, '12', '12', '0', '2017-04-06', '', '12', '0', '0', '1', '0', 0, '', '0', '0', 0, 0, 'SALE', '2017-04-06 15:52:26', 0, '销货', '0', 1, '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (2, 5, 'CG201704061554024', 1, '管理员', 150501, '1', '1', '0', '2017-04-06', '', '1', '0', '0', '1', '0', 0, '', '0', '0', 0, 0, 'PUR', '2017-04-06 15:54:02', 0, '购货', '0', 0, '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (3, 5, 'CG201704061557449', 1, '管理员', 150501, '144', '144', '0', '2017-04-06', '', '144', '0', '0', '12', '0', 0, '', '0', '0', 0, 0, 'PUR', '2017-04-06 15:57:44', 0, '购货', '0', 0, '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (4, 7, 'XS201704061558163', 1, '管理员', 150601, '12', '12', '0', '2017-04-06', '', '12', '0', '0', '1', '0', 0, '', '0', '0', 0, 0, 'SALE', '2017-04-06 15:58:16', 0, '销货', '0', 1, '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (5, 7, 'XS201704061558563', 1, '管理员', 150601, '240', '240', '0', '2017-04-06', '', '240', '0', '0', '10', '0', 0, '', '0', '0', 0, 0, 'SALE', '2017-04-06 15:58:56', 0, '销货', '0', 1, '0', '0', '0', '0', '0', '0', '0', 0);
INSERT INTO ci_invoice (`id`, `buId`, `billNo`, `uid`, `userName`, `transType`, `totalAmount`, `amount`, `rpAmount`, `billDate`, `description`, `arrears`, `disRate`, `disAmount`, `totalQty`, `totalArrears`, `billStatus`, `checkName`, `totalTax`, `totalTaxAmount`, `checked`, `accId`, `billType`, `modifyTime`, `hxStateCode`, `transTypeName`, `totalDiscount`, `salesId`, `customerFree`, `hxAmount`, `hasCheck`, `notCheck`, `nowCheck`, `payment`, `discount`, `isDelete`) VALUES (6, 8, 'SKD201704100029432', 1, '管理员', 153001, '0', '0', '124', '2017-04-10', '', '-124', '0', '0', '0', '0', 0, '', '0', '0', 0, 0, 'RECEIPT', NULL, 0, '收款', '0', 0, '0', '0', '0', '0', '0', '0', '0', 0);


#
# TABLE STRUCTURE FOR: ci_invoice_info
#

DROP TABLE IF EXISTS ci_invoice_info;

CREATE TABLE `ci_invoice_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT '0' COMMENT '关联ID',
  `buId` smallint(6) DEFAULT '0' COMMENT '供应商ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '单据编号',
  `transType` int(11) DEFAULT '0' COMMENT '150501采购 150502退货',
  `amount` double DEFAULT '0' COMMENT '购货金额',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `description` varchar(50) DEFAULT '' COMMENT '备注',
  `invId` int(11) DEFAULT '0' COMMENT '商品ID',
  `price` double DEFAULT '0' COMMENT '单价',
  `deduction` double DEFAULT '0' COMMENT '折扣额',
  `discountRate` double DEFAULT '0' COMMENT '折扣率',
  `qty` double DEFAULT '0' COMMENT '数量',
  `locationId` smallint(6) DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxRate` double DEFAULT '0',
  `taxAmount` double DEFAULT '0',
  `unitId` smallint(6) DEFAULT '0',
  `skuId` int(11) DEFAULT '0',
  `entryId` tinyint(1) DEFAULT '1' COMMENT '区分调拨单  进和出',
  `transTypeName` varchar(25) DEFAULT '',
  `srcOrderEntryId` int(11) DEFAULT '0',
  `srcOrderId` int(11) DEFAULT '0',
  `srcOrderNo` varchar(25) DEFAULT '',
  `billType` varchar(20) DEFAULT '',
  `checked` tinyint(1) DEFAULT '0' COMMENT '0 1',
  `checkName` varchar(30) DEFAULT '',
  `salesId` smallint(6) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '1删除 0正常',
  PRIMARY KEY (`id`),
  KEY `type` (`transType`),
  KEY `billdate` (`billDate`),
  KEY `invId` (`invId`) USING BTREE,
  KEY `transType` (`transType`),
  KEY `iid` (`iid`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (15, 0, 0, '期初数量', 0, '0', '2017-04-07', '', 1, '0', '0', '0', '0', 1, '0', '0', '0', 0, 0, 1, '期初数量', 0, 0, '', 'INI', 0, '', 0, 0);
INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (8, 1, 7, 'XS201704061552267', 150601, '12', '2017-04-06', '', 1, '12', '0', '0', '-1', 1, '0', '0', '0', -1, -1, 1, '销货', 0, 0, '', 'SALE', 0, '', 1, 0);
INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (10, 2, 5, 'CG201704061554024', 150501, '1', '2017-04-06', '', 1, '1', '0', '0', '1', 1, '0', '0', '0', -1, -1, 1, '购货', 0, 0, '', 'PUR', 0, '', 0, 0);
INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (11, 3, 5, 'CG201704061557449', 150501, '144', '2017-04-06', '', 1, '12', '0', '0', '12', 1, '0', '0', '0', -1, -1, 1, '购货', 0, 0, '', 'PUR', 0, '', 0, 0);
INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (12, 4, 7, 'XS201704061558163', 150601, '12', '2017-04-06', '', 1, '12', '0', '0', '-1', 1, '0', '0', '0', -1, -1, 1, '销货', 0, 0, '', 'SALE', 0, '', 1, 0);
INSERT INTO ci_invoice_info (`id`, `iid`, `buId`, `billNo`, `transType`, `amount`, `billDate`, `description`, `invId`, `price`, `deduction`, `discountRate`, `qty`, `locationId`, `tax`, `taxRate`, `taxAmount`, `unitId`, `skuId`, `entryId`, `transTypeName`, `srcOrderEntryId`, `srcOrderId`, `srcOrderNo`, `billType`, `checked`, `checkName`, `salesId`, `isDelete`) VALUES (14, 5, 7, 'XS201704061558563', 150601, '240', '2017-04-06', '', 1, '24', '0', '0', '-10', 1, '0', '0', '0', -1, -1, 1, '销货', 0, 0, '', 'SALE', 0, '', 1, 0);


#
# TABLE STRUCTURE FOR: ci_invoice_type
#

DROP TABLE IF EXISTS ci_invoice_type;

CREATE TABLE `ci_invoice_type` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `inout` tinyint(1) DEFAULT '1' COMMENT '1 入库  -1出库',
  `status` tinyint(1) DEFAULT '1',
  `type` varchar(10) DEFAULT '',
  `default` tinyint(1) DEFAULT '0',
  `number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ci_invoice_type (`id`, `name`, `inout`, `status`, `type`, `default`, `number`) VALUES (1, '其他入库', 1, 1, 'in', 1, 150706);
INSERT INTO ci_invoice_type (`id`, `name`, `inout`, `status`, `type`, `default`, `number`) VALUES (2, '盘盈', 1, 1, 'in', 0, 150701);
INSERT INTO ci_invoice_type (`id`, `name`, `inout`, `status`, `type`, `default`, `number`) VALUES (3, '其他出库', -1, 1, 'out', 1, 150806);
INSERT INTO ci_invoice_type (`id`, `name`, `inout`, `status`, `type`, `default`, `number`) VALUES (4, '盘亏', -1, 1, 'out', 0, 150801);


#
# TABLE STRUCTURE FOR: ci_invps
#

DROP TABLE IF EXISTS ci_invps;

CREATE TABLE `ci_invps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buId` smallint(6) DEFAULT '0' COMMENT '供应商ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '单据编号',
  `uid` smallint(6) DEFAULT '0',
  `userName` varchar(50) DEFAULT '' COMMENT '制单人',
  `transType` int(11) DEFAULT '0' COMMENT '150501购货 150502退货 150601销售 150602退销 150706其他入库',
  `totalAmount` double DEFAULT '0' COMMENT '购货总金额',
  `amount` double DEFAULT '0' COMMENT '折扣后金额',
  `rpAmount` double DEFAULT '0' COMMENT '本次付款',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `description` varchar(100) DEFAULT '' COMMENT '备注',
  `arrears` double DEFAULT '0' COMMENT '本次欠款',
  `disRate` double DEFAULT '0' COMMENT '折扣率',
  `disAmount` double DEFAULT '0' COMMENT '折扣金额',
  `totalQty` double DEFAULT '0' COMMENT '总数量',
  `totalArrears` double DEFAULT '0',
  `billStatus` tinyint(1) DEFAULT '0' COMMENT '订单状态 0未入库  1 2全部入库',
  `checkName` varchar(50) DEFAULT '' COMMENT '采购单审核人',
  `totalTax` double DEFAULT '0',
  `totalTaxAmount` double DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0' COMMENT '采购单状态',
  `accId` tinyint(4) DEFAULT '0' COMMENT '结算账户ID',
  `billType` varchar(20) DEFAULT '' COMMENT 'PO采购订单 OI其他入库 PUR采购入库 BAL初期余额',
  `modifyTime` datetime DEFAULT NULL COMMENT '更新时间',
  `hxStateCode` tinyint(4) DEFAULT '0' COMMENT '0未付款  1部分付款  2全部付款',
  `transTypeName` varchar(20) DEFAULT '',
  `totalDiscount` double DEFAULT '0',
  `salesId` smallint(6) DEFAULT '0' COMMENT '销售人员ID',
  `customerFree` double DEFAULT '0' COMMENT '客户承担费用',
  `hxAmount` double DEFAULT '0' COMMENT '本次核销金额',
  `hasCheck` double DEFAULT '0' COMMENT '已核销',
  `notCheck` double DEFAULT '0' COMMENT '未核销',
  `nowCheck` double DEFAULT '0' COMMENT '本次核销',
  `payment` double DEFAULT '0' COMMENT '本次预收款',
  `discount` double DEFAULT '0' COMMENT '整单折扣',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '1删除  0正常',
  `deliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accId` (`accId`),
  KEY `buId` (`buId`),
  KEY `salesId` (`salesId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_invps_info
#

DROP TABLE IF EXISTS ci_invps_info;

CREATE TABLE `ci_invps_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT '0' COMMENT '关联ID',
  `buId` smallint(6) DEFAULT '0' COMMENT '供应商ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '单据编号',
  `transType` int(11) DEFAULT '0' COMMENT '150501采购 150502退货',
  `amount` double DEFAULT '0' COMMENT '购货金额',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `description` varchar(50) DEFAULT '' COMMENT '备注',
  `invId` int(11) DEFAULT '0' COMMENT '商品ID',
  `price` double DEFAULT '0' COMMENT '单价',
  `deduction` double DEFAULT '0' COMMENT '折扣额',
  `discountRate` double DEFAULT '0' COMMENT '折扣率',
  `qty` double DEFAULT '0' COMMENT '数量',
  `locationId` smallint(6) DEFAULT '0',
  `tax` double DEFAULT '0',
  `taxRate` double DEFAULT '0',
  `taxAmount` double DEFAULT '0',
  `unitId` smallint(6) DEFAULT '0',
  `skuId` int(11) DEFAULT '0',
  `entryId` tinyint(1) DEFAULT '1' COMMENT '区分调拨单  进和出',
  `transTypeName` varchar(25) DEFAULT '',
  `srcOrderEntryId` int(11) DEFAULT '0',
  `srcOrderId` int(11) DEFAULT '0',
  `srcOrderNo` varchar(25) DEFAULT '',
  `billType` varchar(20) DEFAULT '',
  `checked` tinyint(1) DEFAULT '0' COMMENT '0 1',
  `checkName` varchar(30) DEFAULT '',
  `salesId` smallint(6) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0' COMMENT '1删除 0正常',
  PRIMARY KEY (`id`),
  KEY `type` (`transType`),
  KEY `billdate` (`billDate`),
  KEY `invId` (`invId`) USING BTREE,
  KEY `transType` (`transType`),
  KEY `iid` (`iid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_log
#

DROP TABLE IF EXISTS ci_log;

CREATE TABLE `ci_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` smallint(6) DEFAULT '0' COMMENT '用户ID',
  `ip` varchar(25) DEFAULT '',
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '姓名',
  `log` text COMMENT '日志内容',
  `type` tinyint(1) DEFAULT '1' COMMENT ' ',
  `loginName` varchar(50) DEFAULT '' COMMENT '用户名',
  `modifyTime` datetime DEFAULT NULL COMMENT '写入日期',
  `operateTypeName` varchar(50) DEFAULT '',
  `adddate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (53, 1, '127.0.0.2', '管理员', '切换皮肤：default', 1, 'admin', '2015-10-08 19:23:35', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (31, 1, '127.0.0.2', '小阳', '新增供应商类别:供应商', 1, 'admin', '2015-10-08 19:06:25', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (32, 1, '127.0.0.2', '小阳', '新增商品类别:默认分类', 1, 'admin', '2015-10-08 19:06:36', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (33, 1, '127.0.0.2', '小阳', '修改类别:ID=2 名称:默认分类', 1, 'admin', '2015-10-08 19:06:51', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (34, 1, '127.0.0.2', '小阳', '新增支出类别:采购', 1, 'admin', '2015-10-08 19:07:19', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (35, 1, '127.0.0.2', '小阳', '新增支出类别:工资', 1, 'admin', '2015-10-08 19:08:26', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (36, 1, '127.0.0.2', '小阳', '新增支出类别:餐饮', 1, 'admin', '2015-10-08 19:09:11', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (37, 1, '127.0.0.2', '小阳', '新增收入类别:营业款', 1, 'admin', '2015-10-08 19:09:27', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (38, 1, '127.0.0.2', '小阳', '新增收入类别:开票', 1, 'admin', '2015-10-08 19:09:33', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (39, 1, '127.0.0.2', '小阳', '新增客户类别:零售客户', 1, 'admin', '2015-10-08 19:09:46', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (40, 1, '127.0.0.2', '小阳', '新增结算方式:现金', 1, 'admin', '2015-10-08 19:10:04', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (41, 1, '127.0.0.2', '小阳', '新增员工:编号1001 名称营业员', 1, 'admin', '2015-10-08 19:10:28', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (42, 1, '127.0.0.2', '小阳', '新增账户:1001中国工商银行', 1, 'admin', '2015-10-08 19:11:05', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (43, 1, '127.0.0.2', '小阳', '新增商品:测试商品', 1, 'admin', '2015-10-08 19:11:35', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (44, 1, '127.0.0.2', '小阳', '更新仓库:默认仓库', 1, 'admin', '2015-10-08 19:12:02', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (45, 1, '127.0.0.2', '小阳', '新增仓库:八一广场门店', 1, 'admin', '2015-10-08 19:12:48', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (46, 1, '127.0.0.2', '小阳', '修改商品:ID=1名称:测试商品', 1, 'admin', '2015-10-08 19:13:53', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (47, 1, '127.0.0.2', '小阳', '系统设置成功', 1, 'admin', '2015-10-08 19:14:59', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (48, NULL, '127.0.0.2', NULL, '登陆成功 用户名：admin', 1, NULL, '2015-10-08 19:21:13', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (49, 1, '127.0.0.2', '小阳', '密码修改成功 UID：1 真实姓名改为：管理员', 1, 'admin', '2015-10-08 19:21:36', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (50, NULL, '127.0.0.2', NULL, '登陆成功 用户名：18170521585', 1, NULL, '2015-10-08 19:22:01', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (51, 1, '127.0.0.2', '管理员', '切换皮肤：default', 1, 'admin', '2015-10-08 19:22:59', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (52, 1, '127.0.0.2', '管理员', '切换皮肤：green', 1, 'admin', '2015-10-08 19:23:03', '', '2015-10-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (54, NULL, '127.0.0.11', NULL, '登陆成功 用户名：admin', 1, NULL, '2016-05-11 14:08:24', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (55, NULL, '127.0.0.11', NULL, '登陆成功 用户名：admin', 1, NULL, '2016-05-11 14:10:41', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (56, 1, '127.0.0.11', '管理员', '修改供应商:湖南广播电视股份有限公司', 1, 'admin', '2016-05-11 14:10:56', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (57, 1, '127.0.0.11', '管理员', '修改客户:测试供货商', 1, 'admin', '2016-05-11 14:11:01', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (58, 1, '127.0.0.11', '管理员', '修改供应商:测试客户三', 1, 'admin', '2016-05-11 14:11:48', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (59, 1, '127.0.0.11', '管理员', '修改供应商:测试用户二', 1, 'admin', '2016-05-11 14:12:12', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (60, 1, '127.0.0.11', '管理员', '修改供应商:测试用户一', 1, 'admin', '2016-05-11 14:12:33', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (61, 1, '127.0.0.11', '管理员', '修改供应商:测试用户二', 1, 'admin', '2016-05-11 14:12:38', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (62, 1, '127.0.0.11', '管理员', '修改供应商:测试客户三', 1, 'admin', '2016-05-11 14:12:43', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (63, 1, '127.0.0.11', '管理员', '系统设置成功', 1, 'admin', '2016-05-11 14:13:10', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (64, 1, '127.0.0.11', '管理员', '备份与恢复,备份文件名:201605111413251.sql', 1, 'admin', '2016-05-11 14:13:25', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (65, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201605101445024.sql', 1, 'admin', '2016-05-11 14:13:44', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (66, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201605051158240.sql', 1, 'admin', '2016-05-11 14:13:46', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (67, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201604212257406.sql', 1, 'admin', '2016-05-11 14:13:48', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (68, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602041023138.sql', 1, 'admin', '2016-05-11 14:13:50', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (69, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201604291744497.sql', 1, 'admin', '2016-05-11 14:13:52', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (70, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201605111413251.sql', 1, 'admin', '2016-05-11 14:14:20', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (71, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201601132158047.sql', 1, 'admin', '2016-05-11 14:14:22', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (72, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201601291317366.sql', 1, 'admin', '2016-05-11 14:14:23', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (73, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201601291706135.sql', 1, 'admin', '2016-05-11 14:14:25', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (74, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201601291657199.sql', 1, 'admin', '2016-05-11 14:14:28', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (75, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602010938473.sql', 1, 'admin', '2016-05-11 14:14:30', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (76, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602011051290.sql', 1, 'admin', '2016-05-11 14:14:33', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (77, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602011709281.sql', 1, 'admin', '2016-05-11 14:14:35', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (78, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602021025241.sql', 1, 'admin', '2016-05-11 14:14:36', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (79, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602021206438.sql', 1, 'admin', '2016-05-11 14:14:38', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (80, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602021827383.sql', 1, 'admin', '2016-05-11 14:14:40', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (81, 1, '127.0.0.11', '管理员', '备份与恢复,删除文件名:201602022115070.sql', 1, 'admin', '2016-05-11 14:14:43', '', '2016-05-11');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (82, 1, '127.0.0.11', '管理员', '系统设置成功', 1, 'admin', '2016-05-12 20:12:26', '', '2016-05-12');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (83, 1, '127.0.0.11', '管理员', '系统设置成功', 1, 'admin', '2016-05-12 20:22:24', '', '2016-05-12');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (84, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-04 18:00:27', '', '2017-04-04');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (85, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-06 15:35:04', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (86, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-06 15:47:04', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (87, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-06 15:51:13', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (88, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-06 15:51:38', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (89, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-06 15:52:20', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (90, 1, '::1', '管理员', '新增销货 单据编号：XS201704061552267', 1, 'admin', '2017-04-06 15:52:26', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (91, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-06 15:53:44', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (92, 1, '::1', '管理员', '新增购货 单据编号：CG201704061554024', 1, 'admin', '2017-04-06 15:54:02', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (93, 1, '::1', '管理员', '新增购货 单据编号：CG201704061557449', 1, 'admin', '2017-04-06 15:57:44', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (94, 1, '::1', '管理员', '新增销货 单据编号：XS201704061558163', 1, 'admin', '2017-04-06 15:58:16', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (95, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-06 15:58:47', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (96, 1, '::1', '管理员', '新增销货 单据编号：XS201704061558563', 1, 'admin', '2017-04-06 15:58:56', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (97, 1, '::1', '管理员', '切换皮肤：green', 1, 'admin', '2017-04-06 21:51:15', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (98, 1, '::1', '管理员', '切换皮肤：blue', 1, 'admin', '2017-04-06 21:51:20', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (99, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-06 21:51:26', '', '2017-04-06');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (100, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-07 18:41:25', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (101, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-07 18:48:13', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (102, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-07 18:48:28', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (103, 1, '::1', '管理员', '采购明细表(按商品)导出:pu_summary_20170407194505.xls', 1, 'admin', '2017-04-07 19:45:05', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (104, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-07 21:03:01', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (105, 1, '::1', '管理员', '修改商品:ID=1名称:测试商品', 1, 'admin', '2017-04-07 21:05:26', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (106, 1, '::1', '管理员', '新增商品:123', 1, 'admin', '2017-04-07 21:06:13', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (107, 1, '::1', '管理员', '新增商品:123', 1, 'admin', '2017-04-07 21:07:26', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (108, 1, '::1', '管理员', '修改商品:ID=3名称:123', 1, 'admin', '2017-04-07 21:07:52', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (109, 1, '::1', '管理员', '修改商品:ID=3名称:123', 1, 'admin', '2017-04-07 21:08:15', '', '2017-04-07');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (110, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-08 00:23:07', '', '2017-04-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (111, 1, '::1', '管理员', '新增商品:haha', 1, 'admin', '2017-04-08 22:55:41', '', '2017-04-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (112, 1, '::1', '管理员', '修改商品:ID=4名称:haha', 1, 'admin', '2017-04-08 23:38:44', '', '2017-04-08');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (113, 1, '::1', '管理员', '修改供应商:测试用户二', 1, 'admin', '2017-04-09 18:40:50', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (114, 1, '::1', '管理员', '修改供应商:测试用户一', 1, 'admin', '2017-04-09 18:40:57', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (115, 1, '::1', '管理员', '新增客户类别:批发客户', 1, 'admin', '2017-04-09 18:44:06', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (116, 1, '::1', '管理员', '修改供应商:测试用户二', 1, 'admin', '2017-04-09 18:44:09', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (117, 1, '::1', '管理员', '新增客户类别:VIP客户', 1, 'admin', '2017-04-09 18:44:20', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (118, 1, '::1', '管理员', '修改供应商:测试用户一', 1, 'admin', '2017-04-09 18:44:22', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (119, 1, '::1', '管理员', '修改商品:ID=4名称:haha', 1, 'admin', '2017-04-09 18:45:52', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (120, 1, '::1', '管理员', '修改供应商:测试用户一', 1, 'admin', '2017-04-09 18:48:44', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (121, 1, '::1', '管理员', '修改供应商:测试客户三', 1, 'admin', '2017-04-09 18:48:55', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (122, 1, '::1', '管理员', '修改供应商:测试客户三', 1, 'admin', '2017-04-09 20:54:25', '', '2017-04-09');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (123, 1, '::1', '管理员', '新增收款单 单据编号：SKD201704100029432', 1, 'admin', '2017-04-10 00:29:43', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (124, 1, '::1', '管理员', '修改供应商类别:供应商1', 1, 'admin', '2017-04-10 00:31:53', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (125, 1, '::1', '管理员', '修改供应商类别:shangji', 1, 'admin', '2017-04-10 00:32:03', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (126, 1, '::1', '管理员', '修改客户:测试供货商', 1, 'admin', '2017-04-10 00:32:54', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (127, 1, '::1', '管理员', '导出客户:customer_20170410014347.xls', 1, 'admin', '2017-04-10 01:43:47', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (128, 1, '::1', '管理员', '修改供应商:测试客户三', 1, 'admin', '2017-04-10 01:46:23', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (129, 1, '::1', '管理员', '新增供应商:刘满', 1, 'admin', '2017-04-10 02:34:08', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (130, 1, '::1', '管理员', '修改供应商:刘满刘满刘满刘满刘满', 1, 'admin', '2017-04-10 02:57:05', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (131, 1, '::1', '管理员', '修改供应商:刘满刘满刘满刘满刘满', 1, 'admin', '2017-04-10 04:31:02', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (132, 1, '::1', '管理员', '新增供应商:123123', 1, 'admin', '2017-04-10 04:32:26', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (133, 1, '::1', '管理员', '修改供应商:123123', 1, 'admin', '2017-04-10 05:00:58', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (134, 1, '::1', '管理员', '修改供应商:刘满刘满刘满刘满刘满', 1, 'admin', '2017-04-10 05:01:25', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (135, 1, '::1', '管理员', '新增供应商:2', 1, 'admin', '2017-04-10 05:02:17', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (136, 1, '::1', '管理员', '新增供应商:234', 1, 'admin', '2017-04-10 05:03:54', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (137, 1, '::1', '管理员', '新增供应商:123', 1, 'admin', '2017-04-10 05:20:17', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (138, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-10 06:40:08', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (139, NULL, '::1', NULL, '登陆成功 用户名：admin', 1, NULL, '2017-04-10 20:45:20', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (140, 1, '::1', '管理员', '备份与恢复,删除文件名:back.sql', 1, 'admin', '2017-04-10 20:47:06', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (141, 1, '::1', '管理员', '备份与恢复,恢复文件名:201704102047097.sql', 1, 'admin', '2017-04-10 21:32:25', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (142, 1, '::1', '管理员', '新增用户:liuman', 1, 'admin', '2017-04-10 22:21:16', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (143, 1, '::1', '管理员', '更新权限:liuman', 1, 'admin', '2017-04-10 22:21:21', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (144, 1, '::1', '管理员', '用户停用:liuman', 1, 'admin', '2017-04-10 22:21:38', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (145, 1, '::1', '管理员', '用户启用:liuman', 1, 'admin', '2017-04-10 22:21:42', '', '2017-04-10');
INSERT INTO ci_log (`id`, `userId`, `ip`, `name`, `log`, `type`, `loginName`, `modifyTime`, `operateTypeName`, `adddate`) VALUES (146, 1, '::1', '管理员', '备份与恢复,删除文件名:201704102047097.sql', 1, 'admin', '2017-04-10 22:22:04', '', '2017-04-10');


#
# TABLE STRUCTURE FOR: ci_menu
#

DROP TABLE IF EXISTS ci_menu;

CREATE TABLE `ci_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `parentId` smallint(5) DEFAULT '0' COMMENT '上级栏目ID',
  `path` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目路径',
  `level` tinyint(2) DEFAULT '1' COMMENT '层次',
  `ordnum` smallint(6) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `typeNumber` varchar(25) COLLATE utf8_unicode_ci DEFAULT '',
  `detail` tinyint(1) DEFAULT '1',
  `sortIndex` smallint(6) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parentId` (`parentId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (1, '购货单', 0, '1', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (2, '新增', 1, '1,2', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (3, '修改', 1, '1,3', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (4, '删除', 1, '1,4', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (5, '导出', 1, '1,5', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (6, '销货单', 0, '6', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (7, '新增', 6, '6,7', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (8, '修改', 6, '6,8', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (9, '删除', 6, '6,9', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (10, '导出', 6, '6,10', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (11, '盘点', 0, '11', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (12, '生成盘点记录', 11, '11,12', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (13, '导出', 11, '11,13', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (14, '其他入库单', 0, '14', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (15, '新增', 14, '14,15', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (16, '修改', 14, '14,16', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (17, '删除', 14, '14,17', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (18, '其他出库单', 0, '18', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (19, '新增', 18, '18,19', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (20, '修改', 18, '18,20', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (21, '删除', 18, '18,21', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (22, '采购明细表', 0, '22', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (23, '导出', 22, '22,23', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (24, '打印', 22, '22,24', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (25, '采购汇总表（按商品）', 0, '25', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (26, '导出', 25, '25,26', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (27, '打印', 25, '25,27', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (28, '采购汇总表（按供应商）', 0, '28', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (29, '导出', 28, '28,29', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (30, '打印', 28, '28,30', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (31, '销售明细表', 0, '31', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (32, '导出', 31, '31,32', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (33, '打印', 31, '31,33', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (34, '销售汇总表（按商品）', 0, '34', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (35, '导出', 34, '34,35', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (36, '打印', 34, '34,36', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (37, '销售汇总表（按客户）', 0, '37', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (38, '导出', 37, '37,38', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (39, '打印', 37, '37,39', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (40, '商品库存余额表', 0, '40', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (41, '导出', 40, '40,41', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (42, '打印', 40, '40,42', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (43, '商品收发明细表', 0, '43', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (44, '导出', 43, '43,44', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (45, '打印', 43, '43,45', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (46, '商品收发汇总表', 0, '46', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (47, '导出', 46, '46,47', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (48, '打印', 46, '46,48', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (49, '往来单位欠款表', 0, '49', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (50, '导出', 49, '49,50', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (51, '打印', 49, '49,51', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (52, '应付账款明细表', 0, '52', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (53, '导出', 52, '52,53', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (54, '打印', 52, '52,54', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (55, '应收账款明细表', 0, '55', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (56, '导出', 55, '55,56', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (57, '打印', 55, '55,57', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (58, '客户管理', 0, '58', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (59, '新增', 58, '58,59', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (60, '修改', 58, '58,60', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (61, '删除', 58, '58,61', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (62, '导出', 58, '58,62', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (63, '供应商管理', 0, '63', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (64, '新增', 63, '63,64', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (65, '修改', 63, '63,65', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (66, '删除', 63, '63,66', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (67, '导出', 63, '63,67', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (68, '商品管理', 0, '68', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (69, '新增', 68, '68,69', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (70, '修改', 68, '68,70', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (71, '删除', 68, '68,71', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (72, '导出', 68, '68,72', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (73, '客户类别', 0, '73', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (74, '新增', 73, '73,74', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (75, '修改', 73, '73,75', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (76, '删除', 73, '73,76', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (77, '计量单位', 0, '77', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (78, '新增', 77, '77,78', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (79, '修改', 77, '77,79', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (80, '删除', 77, '77,80', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (81, '系统参数', 0, '81', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (82, '权限设置', 0, '82', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (83, '操作日志', 0, '83', 1, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (84, '数据备份', 0, '84', 1, 99, 0, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (85, '打印', 1, '1,85', 2, 99, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (86, '审核', 1, '1,86', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (87, '反审核', 1, '1,87', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (88, '打印', 6, '6,88', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (89, '审核', 6, '6,89', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (90, '反审核', 6, '6,90', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (91, '禁用', 58, '58,91', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (92, '启用', 58, '58,92', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (93, '禁用', 63, '63,93', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (94, '启用', 63, '63,94', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (95, '禁用', 68, '68,95', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (96, '启用', 68, '68,96', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (97, '职员管理', 0, '97', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (98, '账号管理', 0, '98', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (99, '导入', 11, '11,99', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (100, '审核', 14, '14,100', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (101, '反审核', 14, '14,101', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (102, '导出', 14, '14,102', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (103, '审核', 18, '18,103', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (104, '反审核', 18, '18,104', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (105, '导出', 18, '18,105', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (106, '现金银行报表', 0, '106', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (107, '打印', 106, '106,107', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (108, '导出', 106, '106,108', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (109, '客户对账单', 0, '109', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (110, '打印', 109, '109,110', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (111, '导出', 109, '109,111', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (112, '供应商对账单', 0, '112', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (113, '打印', 112, '112,113', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (114, '导出', 112, '112,114', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (115, '其他收支明细表', 0, '115', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (116, '打印', 115, '115,116', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (117, '导出', 115, '115,117', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (118, '新增', 97, '97,118', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (119, '修改', 97, '97,119', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (120, '删除', 97, '97,120', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (121, '新增', 98, '98,121', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (122, '修改', 98, '98,122', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (123, '删除', 98, '98,123', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (124, '收款单', 0, '124', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (125, '新增', 124, '124,125', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (126, '修改', 124, '124,126', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (127, '删除', 124, '124,127', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (128, '导出', 124, '124,128', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (129, '付款单', 0, '129', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (130, '新增', 129, '129,130', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (131, '修改', 129, '129,131', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (132, '删除', 129, '129,132', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (133, '导出', 129, '129,133', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (134, '其他收入单', 0, '134', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (135, '新增', 134, '134,135', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (136, '修改', 134, '134,136', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (137, '删除', 134, '134,137', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (138, '导出', 134, '134,138', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (139, '其他支出单', 0, '139', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (140, '新增', 139, '139,140', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (141, '修改', 139, '139,141', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (142, '删除', 139, '139,142', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (143, '导出', 139, '139,143', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (144, '调拨单', 0, '144', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (145, '新增', 144, '144,145', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (146, '修改', 144, '144,146', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (147, '删除', 144, '144,147', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (148, '导出', 144, '144,148', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (149, '重新初始化', 0, '149', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (151, '成本调整单', 0, '151', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (152, '新增', 151, '151,152', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (153, '修改', 151, '151,153', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (154, '删除', 151, '151,154', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (155, '仓库管理', 0, '155', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (156, '新增', 155, '155,156', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (157, '修改', 155, '155,157', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (158, '删除', 155, '155,158', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (159, '结算方式', 0, '159', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (160, '新增', 159, '159,160', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (161, '修改', 159, '159,161', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (162, '删除', 159, '159,162', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (163, '供应商类别', 0, '163', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (164, '新增', 163, '163,164', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (165, '修改', 163, '163,165', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (166, '删除', 163, '163,166', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (167, '商品类别', 0, '167', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (168, '新增', 167, '167,168', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (169, '修改', 167, '167,169', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (170, '删除', 167, '167,170', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (171, '支出类别', 0, '171', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (172, '新增', 171, '171,172', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (173, '修改', 171, '171,173', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (174, '删除', 171, '171,174', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (175, '收入类别', 0, '175', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (176, '新增', 175, '175,176', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (177, '修改', 175, '175,177', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (178, '删除', 175, '175,178', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (179, '打印', 144, '144,179', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (180, '采购订单', 0, '180', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (181, '新增', 180, '180,181', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (182, '修改', 180, '180,182', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (183, '删除', 180, '180,183', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (184, '导出', 180, '180,184', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (185, '打印', 180, '180,185', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (186, '审核', 180, '180,186', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (187, '反审核', 180, '180,187', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (188, '销售订单', 0, '188', 1, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (189, '新增', 188, '188,189', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (190, '修改', 188, '188,190', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (191, '删除', 188, '188,191', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (192, '导出', 188, '188,192', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (193, '打印', 188, '188,193', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (194, '审核', 188, '188,194', 2, 0, 1, 'trade', 1, 0, 0, '');
INSERT INTO ci_menu (`id`, `name`, `parentId`, `path`, `level`, `ordnum`, `status`, `typeNumber`, `detail`, `sortIndex`, `isDelete`, `remark`) VALUES (195, '反审核', 188, '188,195', 2, 0, 1, 'trade', 1, 0, 0, '');


#
# TABLE STRUCTURE FOR: ci_options
#

DROP TABLE IF EXISTS ci_options;

CREATE TABLE `ci_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (1, 'system', 'a:10:{s:11:\"companyName\";s:25:\"易网软件 简单易用\";s:11:\"companyAddr\";s:27:\"江西省樟树市药都路\";s:5:\"phone\";s:12:\"0795-7332137\";s:3:\"fax\";s:12:\"0795-7332137\";s:8:\"postcode\";s:6:\"331200\";s:9:\"qtyPlaces\";s:1:\"2\";s:11:\"pricePlaces\";s:1:\"1\";s:12:\"amountPlaces\";s:1:\"2\";s:10:\"valMethods\";s:13:\"movingAverage\";s:18:\"requiredCheckStore\";s:1:\"1\";}', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (2, 'sales', 's:766:\"{\"grids\":{\"grid\":{\"colModel\":[[\"operating\",\" \",null,60],[\"goods\",\"商品\",null,300],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,135],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"price\",\"销售单价\",false,100],[\"discountRate\",\"折扣率(%)\",false,70],[\"deduction\",\"折扣额\",false,70],[\"amount\",\"销售金额\",false,100],[\"description\",\"备注\",null,150],[\"srcOrderEntryId\",\"源单分录ID\",true,0],[\"srcOrderId\",\"源单ID\",true,0],[\"srcOrderNo\",\"源单号\",true,120]],\"isReg\":true}},\"curTime\":1491754652000,\"modifyTime\":1491754652000}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (3, 'purchase', 'b:0;', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (4, 'transfers', 's:2702:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":40,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"width\":318,\"title\":false,\"classes\":\"goods\",\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"batch\",\"label\":\"批次\",\"width\":90,\"classes\":\"ui-ellipsis batch\",\"hidden\":true,\"title\":false,\"editable\":true,\"align\":\"left\",\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"批次\",\"defhidden\":true},{\"name\":\"prodDate\",\"label\":\"生产日期\",\"width\":90,\"hidden\":true,\"title\":false,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{},\"defLabel\":\"生产日期\",\"defhidden\":true},{\"name\":\"safeDays\",\"label\":\"保质期(天)\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"保质期(天)\",\"defhidden\":true},{\"name\":\"validDate\",\"label\":\"有效期至\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"有效期至\",\"defhidden\":true},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":1},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"outLocationName\",\"label\":\"调出仓库\",\"nameExt\":\"<small id=\\\"batch-storageA\\\">(批量)</small>\",\"sortable\":false,\"width\":100,\"title\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"调出仓库\"},{\"name\":\"inLocationName\",\"label\":\"调入仓库\",\"nameExt\":\"<small id=\\\"batch-storageB\\\">(批量)</small>\",\"width\":100,\"title\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"调入仓库\"},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"}],\"colModel\":[[\"operating\",\" \",null,40],[\"goods\",\"商品\",null,318],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"outLocationName\",\"调出仓库\",null,100],[\"inLocationName\",\"调入仓库\",null,100],[\"description\",\"备注\",null,150]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (5, 'otherWarehouse', 's:2906:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":40,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"width\":320,\"title\":true,\"classes\":\"goods\",\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"locationName\",\"label\":\"仓库\",\"nameExt\":\"<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"title\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库\"},{\"name\":\"batch\",\"label\":\"批次\",\"width\":90,\"classes\":\"ui-ellipsis batch\",\"hidden\":true,\"title\":false,\"editable\":true,\"align\":\"left\",\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"批次\",\"defhidden\":true},{\"name\":\"prodDate\",\"label\":\"生产日期\",\"width\":90,\"hidden\":true,\"title\":false,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{},\"defLabel\":\"生产日期\",\"defhidden\":true},{\"name\":\"safeDays\",\"label\":\"保质期(天)\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"保质期(天)\",\"defhidden\":true},{\"name\":\"validDate\",\"label\":\"有效期至\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"有效期至\",\"defhidden\":true},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":1},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"price\",\"label\":\"入库单价\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":1},\"editable\":true,\"defLabel\":\"入库单价\",\"defhidden\":false},{\"name\":\"amount\",\"label\":\"入库金额\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"入库金额\",\"defhidden\":false},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"}],\"colModel\":[[\"operating\",\" \",null,40],[\"goods\",\"商品\",null,320],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,100],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"price\",\"入库单价\",false,100],[\"amount\",\"入库金额\",false,100],[\"description\",\"备注\",null,150]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (6, 'adjustment', 's:1337:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":40,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"width\":320,\"title\":true,\"classes\":\"goods\",\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis disableSku\"},\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":60,\"defLabel\":\"单位\"},{\"name\":\"amount\",\"label\":\"调整金额\",\"hidden\":false,\"width\":100,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"调整金额\",\"defhidden\":false},{\"name\":\"locationName\",\"label\":\"仓库<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"title\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库<small id=\\\"batchStorage\\\">(批量)</small>\"},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"}],\"colModel\":[[\"operating\",\" \",null,40],[\"goods\",\"商品\",null,320],[\"skuId\",\"属性ID\",true,null],[\"mainUnit\",\"单位\",null,60],[\"amount\",\"调整金额\",false,100],[\"locationName\",\"仓库<small id=\\\"batchStorage\\\">(批量)</small>\",null,100],[\"description\",\"备注\",null,150]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (7, 'purchaseBack', 's:3824:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":60,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"nameExt\":\"<span id=\\\"barCodeInsert\\\">扫描枪录入</span>\",\"width\":300,\"classes\":\"goods\",\"editable\":true,\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"locationName\",\"label\":\"仓库\",\"nameExt\":\"<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库\"},{\"name\":\"batch\",\"label\":\"批次\",\"width\":90,\"classes\":\"ui-ellipsis batch\",\"hidden\":true,\"title\":false,\"editable\":true,\"align\":\"left\",\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"批次\",\"defhidden\":true},{\"name\":\"prodDate\",\"label\":\"生产日期\",\"width\":90,\"hidden\":true,\"title\":false,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{},\"defLabel\":\"生产日期\",\"defhidden\":true},{\"name\":\"safeDays\",\"label\":\"保质期(天)\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"保质期(天)\",\"defhidden\":true},{\"name\":\"validDate\",\"label\":\"有效期至\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"有效期至\",\"defhidden\":true},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"price\",\"label\":\"购货单价\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"购货单价\",\"defhidden\":false},{\"name\":\"discountRate\",\"label\":\"折扣率(%)\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"integer\",\"editable\":true,\"defLabel\":\"折扣率(%)\",\"defhidden\":false},{\"name\":\"deduction\",\"label\":\"折扣额\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"折扣额\",\"defhidden\":false},{\"name\":\"amount\",\"label\":\"购货金额\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"购货金额\",\"defhidden\":false},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"},{\"name\":\"srcOrderEntryId\",\"label\":\"源单分录ID\",\"width\":0,\"hidden\":true,\"defLabel\":\"源单分录ID\",\"defhidden\":true},{\"name\":\"srcOrderId\",\"label\":\"源单ID\",\"width\":0,\"hidden\":true,\"defLabel\":\"源单ID\",\"defhidden\":true},{\"name\":\"srcOrderNo\",\"label\":\"源单号\",\"width\":120,\"fixed\":true,\"hidden\":true,\"defLabel\":\"源单号\",\"defhidden\":true}],\"colModel\":[[\"operating\",\" \",null,60],[\"goods\",\"商品\",null,300],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,100],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"price\",\"购货单价\",false,100],[\"discountRate\",\"折扣率(%)\",false,70],[\"deduction\",\"折扣额\",false,70],[\"amount\",\"购货金额\",false,100],[\"description\",\"备注\",null,150],[\"srcOrderEntryId\",\"源单分录ID\",true,0],[\"srcOrderId\",\"源单ID\",true,0],[\"srcOrderNo\",\"源单号\",true,120]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (8, 'salesBack', 's:3893:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":60,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"nameExt\":\"<span id=\\\"barCodeInsert\\\">扫描枪录入</span>\",\"width\":300,\"classes\":\"goods\",\"editable\":true,\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"locationName\",\"label\":\"仓库\",\"nameExt\":\"<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库\"},{\"name\":\"batch\",\"label\":\"批次\",\"width\":90,\"classes\":\"ui-ellipsis batch\",\"hidden\":true,\"title\":false,\"editable\":true,\"align\":\"left\",\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"批次\",\"defhidden\":true},{\"name\":\"prodDate\",\"label\":\"生产日期\",\"width\":90,\"hidden\":true,\"title\":false,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{},\"defLabel\":\"生产日期\",\"defhidden\":true},{\"name\":\"safeDays\",\"label\":\"保质期(天)\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"保质期(天)\",\"defhidden\":true},{\"name\":\"validDate\",\"label\":\"有效期至\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"有效期至\",\"defhidden\":true},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"price\",\"label\":\"销售单价\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"销售单价\",\"defhidden\":false},{\"name\":\"discountRate\",\"label\":\"折扣率(%)\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"integer\",\"editable\":true,\"defLabel\":\"折扣率(%)\",\"defhidden\":false},{\"name\":\"deduction\",\"label\":\"折扣额\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"折扣额\",\"defhidden\":false},{\"name\":\"amount\",\"label\":\"销售金额\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"销售金额\",\"defhidden\":false},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"},{\"name\":\"srcOrderEntryId\",\"label\":\"源单分录ID\",\"width\":0,\"hidden\":true,\"defLabel\":\"源单分录ID\",\"defhidden\":true},{\"name\":\"srcOrderId\",\"label\":\"源单ID\",\"width\":0,\"hidden\":true,\"defLabel\":\"源单ID\",\"defhidden\":true},{\"name\":\"srcOrderNo\",\"label\":\"源单号\",\"width\":120,\"fixed\":true,\"hidden\":true,\"defLabel\":\"源单号\",\"defhidden\":true}],\"colModel\":[[\"operating\",\" \",null,60],[\"goods\",\"商品\",null,300],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,100],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"price\",\"销售单价\",false,100],[\"discountRate\",\"折扣率(%)\",false,70],[\"deduction\",\"折扣额\",false,70],[\"amount\",\"销售金额\",false,100],[\"description\",\"备注\",null,150],[\"srcOrderEntryId\",\"源单分录ID\",true,0],[\"srcOrderId\",\"源单ID\",true,0],[\"srcOrderNo\",\"源单号\",true,120]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (9, 'otherOutbound', 's:2892:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":40,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"width\":320,\"title\":true,\"classes\":\"goods\",\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"locationName\",\"label\":\"仓库\",\"nameExt\":\"<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"title\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库\"},{\"name\":\"batch\",\"label\":\"批次\",\"width\":90,\"classes\":\"ui-ellipsis batch\",\"hidden\":true,\"title\":false,\"editable\":true,\"align\":\"left\",\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-ellipsis\"},\"defLabel\":\"批次\",\"defhidden\":true},{\"name\":\"prodDate\",\"label\":\"生产日期\",\"width\":90,\"hidden\":true,\"title\":false,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{},\"defLabel\":\"生产日期\",\"defhidden\":true},{\"name\":\"safeDays\",\"label\":\"保质期(天)\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"保质期(天)\",\"defhidden\":true},{\"name\":\"validDate\",\"label\":\"有效期至\",\"width\":90,\"hidden\":true,\"title\":false,\"align\":\"left\",\"defLabel\":\"有效期至\",\"defhidden\":true},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":1},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"price\",\"label\":\"出库单位成本\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":1},\"defLabel\":\"出库单位成本\",\"defhidden\":false},{\"name\":\"amount\",\"label\":\"出库成本\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"defLabel\":\"出库成本\",\"defhidden\":false},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"}],\"colModel\":[[\"operating\",\" \",null,40],[\"goods\",\"商品\",null,320],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,100],[\"batch\",\"批次\",true,90],[\"prodDate\",\"生产日期\",true,90],[\"safeDays\",\"保质期(天)\",true,90],[\"validDate\",\"有效期至\",true,90],[\"qty\",\"数量\",null,80],[\"price\",\"出库单位成本\",false,100],[\"amount\",\"出库成本\",false,100],[\"description\",\"备注\",null,150]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (10, 'purchaseOrder', 's:2682:\"{\"grids\":{\"grid\":{\"defColModel\":[{\"name\":\"operating\",\"label\":\" \",\"width\":60,\"fixed\":true,\"align\":\"center\",\"defLabel\":\" \"},{\"name\":\"goods\",\"label\":\"商品\",\"nameExt\":\"<span id=\\\"barCodeInsert\\\">扫描枪录入</span>\",\"width\":300,\"classes\":\"goods\",\"editable\":true,\"defLabel\":\"商品\"},{\"name\":\"skuId\",\"label\":\"属性ID\",\"hidden\":true,\"defLabel\":\"属性ID\",\"defhidden\":true},{\"name\":\"skuName\",\"label\":\"属性\",\"width\":100,\"classes\":\"ui-ellipsis\",\"hidden\":true,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"属性\",\"defhidden\":true},{\"name\":\"mainUnit\",\"label\":\"单位\",\"width\":80,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"单位\"},{\"name\":\"unitId\",\"label\":\"单位Id\",\"hidden\":true,\"defLabel\":\"单位Id\",\"defhidden\":true},{\"name\":\"locationName\",\"label\":\"仓库\",\"nameExt\":\"<small id=\\\"batchStorage\\\">(批量)</small>\",\"width\":100,\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"仓库\"},{\"name\":\"qty\",\"label\":\"数量\",\"width\":80,\"align\":\"right\",\"formatter\":\"number\",\"formatoptions\":{\"decimalPlaces\":1},\"editable\":true,\"defLabel\":\"数量\"},{\"name\":\"price\",\"label\":\"购货单价\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":1},\"editable\":true,\"edittype\":\"custom\",\"editoptions\":{\"trigger\":\"ui-icon-triangle-1-s\"},\"defLabel\":\"购货单价\",\"defhidden\":false},{\"name\":\"discountRate\",\"label\":\"折扣率(%)\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"integer\",\"editable\":true,\"defLabel\":\"折扣率(%)\",\"defhidden\":false},{\"name\":\"deduction\",\"label\":\"折扣额\",\"hidden\":false,\"width\":70,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"折扣额\",\"defhidden\":false},{\"name\":\"amount\",\"label\":\"购货金额\",\"hidden\":false,\"width\":100,\"fixed\":true,\"align\":\"right\",\"formatter\":\"currency\",\"formatoptions\":{\"showZero\":true,\"decimalPlaces\":2},\"editable\":true,\"defLabel\":\"购货金额\",\"defhidden\":false},{\"name\":\"description\",\"label\":\"备注\",\"width\":150,\"title\":true,\"editable\":true,\"defLabel\":\"备注\"}],\"colModel\":[[\"operating\",\" \",null,60],[\"goods\",\"商品\",null,300],[\"skuId\",\"属性ID\",true,null],[\"skuName\",\"属性\",true,100],[\"mainUnit\",\"单位\",null,80],[\"unitId\",\"单位Id\",true,null],[\"locationName\",\"仓库\",null,100],[\"qty\",\"数量\",null,80],[\"price\",\"购货单价\",false,100],[\"discountRate\",\"折扣率(%)\",false,70],[\"deduction\",\"折扣额\",false,70],[\"amount\",\"购货金额\",false,100],[\"description\",\"备注\",null,150]],\"isReg\":true}}}\";', 'yes');
INSERT INTO ci_options (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (11, 'salesOrderList', 's:606:\"{\"grids\":{\"grid\":{\"colModel\":[[\"operating\",\"操作\",null,60],[\"billDate\",\"订单日期\",null,100],[\"billNo\",\"订单编号\",null,120],[\"transType\",\"业务类别\",null,100],[\"salesName\",\"销售人员\",null,80],[\"contactName\",\"客户\",null,101],[\"totalAmount\",\"销售金额\",false,100],[\"totalQty\",\"数量\",null,57],[\"billStatusName\",\"订单状态\",null,71],[\"deliveryDate\",\"交货日期\",null,100],[\"userName\",\"制单人\",null,80],[\"checkName\",\"审核人\",false,44],[\"description\",\"备注\",null,200],[\"disEditable\",\"不可编辑\",true,null]],\"isReg\":true}},\"curTime\":1438079315000,\"modifyTime\":1438079315000}\";', 'yes');


#
# TABLE STRUCTURE FOR: ci_payment_info
#

DROP TABLE IF EXISTS ci_payment_info;

CREATE TABLE `ci_payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT '0' COMMENT '关联ID',
  `buId` smallint(6) DEFAULT '0' COMMENT '客户ID',
  `billId` int(11) DEFAULT '0' COMMENT '销售单号ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '销售单编号',
  `billType` varchar(20) DEFAULT '',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `billPrice` double DEFAULT '0' COMMENT '单据金额',
  `hasCheck` double DEFAULT '0' COMMENT '已收款',
  `notCheck` double DEFAULT '0' COMMENT '未收款',
  `nowCheck` double DEFAULT '0' COMMENT '本次收款',
  `transType` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type,billdate` (`billDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_printtemplates
#

DROP TABLE IF EXISTS ci_printtemplates;

CREATE TABLE `ci_printtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `info` text,
  `type` int(11) DEFAULT '0',
  `isDefault` tinyint(1) DEFAULT '0',
  `isSystem` tinyint(1) DEFAULT '0',
  `filePath` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_receipt_info
#

DROP TABLE IF EXISTS ci_receipt_info;

CREATE TABLE `ci_receipt_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT '0' COMMENT '关联ID',
  `buId` smallint(6) DEFAULT '0' COMMENT '客户ID',
  `billId` int(11) DEFAULT '0' COMMENT '销售单号ID',
  `billNo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '销售单编号',
  `billType` varchar(20) DEFAULT '',
  `billDate` date DEFAULT NULL COMMENT '单据日期',
  `billPrice` double DEFAULT '0' COMMENT '单据金额',
  `hasCheck` double DEFAULT '0' COMMENT '已收款',
  `notCheck` double DEFAULT '0' COMMENT '未收款',
  `nowCheck` double DEFAULT '0' COMMENT '本次收款',
  `transType` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type,billdate` (`billDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_staff
#

DROP TABLE IF EXISTS ci_staff;

CREATE TABLE `ci_staff` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `number` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `disable` tinyint(1) DEFAULT '0' COMMENT '0启用  1禁用',
  `allowsms` tinyint(4) DEFAULT '0',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `commissionrate` tinyint(4) DEFAULT '0',
  `creatorId` int(11) DEFAULT '0',
  `deptId` int(11) DEFAULT '0',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `empId` int(11) DEFAULT '0',
  `empType` tinyint(4) DEFAULT '1',
  `fullId` int(11) DEFAULT '0',
  `leftDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `parentId` smallint(6) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `number` (`number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ci_staff (`id`, `name`, `number`, `disable`, `allowsms`, `birthday`, `commissionrate`, `creatorId`, `deptId`, `description`, `email`, `empId`, `empType`, `fullId`, `leftDate`, `mobile`, `parentId`, `sex`, `userName`, `isDelete`) VALUES (1, '营业员', '1001', 0, 0, '', 0, 0, 0, NULL, NULL, 0, 1, 0, '', '', NULL, NULL, '', 0);


#
# TABLE STRUCTURE FOR: ci_storage
#

DROP TABLE IF EXISTS ci_storage;

CREATE TABLE `ci_storage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '导航栏目',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '栏目名称',
  `locationNo` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `disable` tinyint(1) DEFAULT '0' COMMENT '状态 0正常  1锁定',
  `allowNeg` tinyint(4) DEFAULT '0',
  `deptId` int(11) DEFAULT '0',
  `empId` int(11) DEFAULT '0',
  `groupx` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `isDelete` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `locationNo` (`locationNo`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ci_storage (`id`, `name`, `locationNo`, `disable`, `allowNeg`, `deptId`, `empId`, `groupx`, `phone`, `type`, `address`, `isDelete`) VALUES (1, '默认仓库', '001', 0, 0, 0, 0, NULL, NULL, 0, '', 0);
INSERT INTO ci_storage (`id`, `name`, `locationNo`, `disable`, `allowNeg`, `deptId`, `empId`, `groupx`, `phone`, `type`, `address`, `isDelete`) VALUES (2, '新大地门店', '003', 0, 0, 0, 0, NULL, NULL, 0, '', 0);
INSERT INTO ci_storage (`id`, `name`, `locationNo`, `disable`, `allowNeg`, `deptId`, `empId`, `groupx`, `phone`, `type`, `address`, `isDelete`) VALUES (3, '八一广场门店', '002', 0, 0, 0, 0, NULL, NULL, 0, '', 0);


#
# TABLE STRUCTURE FOR: ci_unit
#

DROP TABLE IF EXISTS ci_unit;

CREATE TABLE `ci_unit` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '客户名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `unitTypeId` smallint(6) DEFAULT '0',
  `default` tinyint(1) DEFAULT '0',
  `rate` tinyint(1) DEFAULT '0',
  `guid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO ci_unit (`id`, `name`, `status`, `unitTypeId`, `default`, `rate`, `guid`, `isDelete`) VALUES (1, '片', 1, 0, 0, 0, '', 0);
INSERT INTO ci_unit (`id`, `name`, `status`, `unitTypeId`, `default`, `rate`, `guid`, `isDelete`) VALUES (2, '根', 1, 0, 0, 0, '', 0);
INSERT INTO ci_unit (`id`, `name`, `status`, `unitTypeId`, `default`, `rate`, `guid`, `isDelete`) VALUES (3, '只', 1, 0, 0, 0, '', 0);
INSERT INTO ci_unit (`id`, `name`, `status`, `unitTypeId`, `default`, `rate`, `guid`, `isDelete`) VALUES (4, '台', 1, 0, 0, 0, '', 0);
INSERT INTO ci_unit (`id`, `name`, `status`, `unitTypeId`, `default`, `rate`, `guid`, `isDelete`) VALUES (5, '套', 1, 0, 0, 0, '', 0);


#
# TABLE STRUCTURE FOR: ci_unittype
#

DROP TABLE IF EXISTS ci_unittype;

CREATE TABLE `ci_unittype` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '客户名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isDelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

