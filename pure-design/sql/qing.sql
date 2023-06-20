-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qing
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人',
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'这是个日志','你好！','管理员','2023-05-26 17:21:58'),(2,'日志','111','管理员','2023-05-28 22:07:34'),(3,'日志','222\n# 123\n\n```cpp\n#include <bits/stdc++.h>\nusing namespace std;\n\nint main() \n{\n	int a, b;\n	cin >> a >> b;\n	cout << a + b << endl;\n	return 0;\n}','管理员','2023-06-02 22:16:55'),(4,'日志一','地点：七七制药公司生产车间\n  今天我们生产了一批名为“抗生素X”的药品。青霉素是一种广谱抗生素，对多种细菌感染都有很好的疗效。在今天的生产中，我们成功生产了100,000粒抗生素X。这批药品将用于医院和药店供应，以满足广大患者的需求。\n  以下是一张抗生素X生产过程的照片。照片中展示了生产线上的工人们在精心操作设备，确保药品的质量和安全。\n\n![IJYTXIRRXI860`~ABGF.png](1)\n\n这批抗生素X是由七七制药公司的位于xx工厂生产的。xx工厂是我们公司的主要生产基地之一，拥有先进的生产设备和严格的质量控制流程。我们的工作人员经过专业培训，熟练操作设备，并按照标准操作程序进行生产，确保药品符合国家和行业标准。\n抗生素X是由我们公司的研发团队精心设计和研制的。他们在多年的研究和实验基础上，成功开发出这种高效的抗生素，为医疗行业做出了重要贡献。我们感谢他们的努力和创新精神，使得患者能够获得更好的治疗效果。\n我们的生产设备在今天的生产过程中表现出色。该设备每小时能够生产500粒抗生素X，确保了高效的生产率和产品质量。我们会继续保养和维护设备，以确保其正常运行，并满足市场需求。\n今天的生产过程非常顺利，我们团队紧密合作，以高标准和严格的要求完成了任务。我们将继续努力，为患者提供更多高质量的药品。','管理员','2023-06-17 15:06:32'),(5,'日志二','地点：九九制药公司生产车间\n今天我们生产了一批名为“布洛芬疼痛缓解药”的药品。疼痛缓解药是一种用于缓解各种程度的疼痛的药物，包括头痛、肌肉酸痛、关节炎等。在今天的生产中，我们成功生产了50,000粒疼痛缓解药。这批药品将用于医院、药店和个人消费者市场。\n\n以下是一张疼痛缓解药生产过程的照片。照片中展示了生产线上的工人们在操作设备，确保药品的质量和安全。\n![素材4.png](1)\n![素材5.png](2)\n这批疼痛缓解药是由九九制药公司的位于xx工厂生产的。xx工厂是我们公司的主要生产基地之一，配备了先进的生产设备和严格的质量控制流程。我们的工作人员经过专业培训，熟练操作设备，并按照标准操作程序进行生产，确保药品符合国家和行业标准。\n\n疼痛缓解药是由我们公司的研发团队精心设计和研制的。他们在长期的研究和实验基础上，成功开发出这种有效的疼痛缓解药，为广大患者提供了舒适和安宁。我们感谢他们的辛勤努力和创新精神，使得患者能够得到有效的治疗。\n\n我们的生产设备在今天的生产过程中表现出色。该设备每小时能够生产1,000粒疼痛缓解药，保证了高效的生产率和产品质量。我们会继续维护和保养设备，确保其正常运行，并满足市场需求。\n\n今天的生产过程非常顺利，我们的团队密切合作，以高标准和严格的要求完成了任务。我们将继续努力，为患者提供更多高质量的药品。![素材5.png](1)','管理员','2023-06-17 15:11:49');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '楼栋',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单元',
  `pid` int DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'1栋','1栋',NULL),(2,'2栋','2栋',NULL),(3,'1单元','1单元',1),(4,'2单元','2单元',1),(5,'1单元','1单元',2),(6,'2单元','2单元',2),(7,'101','101',3),(8,'201','201',3),(9,'101','101',4),(10,'201','201',4);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程名称',
  `score` int DEFAULT NULL COMMENT '学分',
  `times` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上课时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '是否开课',
  `teacher_id` int DEFAULT NULL COMMENT '授课老师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'工艺参数库',105,'温度、压力、流量、PH值等工艺参数数据',0,997),(2,'设备运行库',250,'设备的运行状态、故障信息等设备数据',0,997),(3,'产品质量表',270,'检测设备采集生产过程中的质量数据',NULL,997),(4,'数据分析库',378,'对采集到的数据进行分析，建立可视化平台',NULL,997),(6,'生产任务库',240,'根据生产计划和订单需求，制定生产任务计划',NULL,997),(7,'生产调度库',117,'对生产计划、生产任务、生产资源等因素进行实时调整',NULL,997),(8,'生产监控库',305,'对生产过程进行实时监控，确保生产过程的稳定性和可靠性，建立可视化平台',NULL,997),(9,'质量检测库',517,'对生产过程中的原料、半成品和成品进行检测',NULL,997),(10,'产品追踪库',250,'通过追踪产品的生产过程和流向，快速定位和处理产品质量问题',NULL,997),(11,'质量报告库',454,'产品的质量数据进行汇总和分析，生成质量报告',NULL,997),(12,'订单计划库',784,'对生产计划和订单需求进行集中管理',NULL,38),(13,'物料采购库',389,'对采购流程进行集中管理，实现供应商和企业之间的信息共享和协同',NULL,38),(14,'销售订单库',573,'实现销售订单的共享和协同，以提高销售部门的协同效率',NULL,36),(15,'库存管理库',1298,'实现库存管理的共享和协同，以优化库存水平和提高资金利用效率',NULL,37),(16,'系统维护库',628,'负责系统的基础设置和维护',NULL,36),(17,'用户权限库',764,'负责管理系统的用户信息和权限控制',NULL,38),(18,'安全日志库',1429,'负责系统的安全管理和日志管理',NULL,38);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (1,6),(28,1),(28,2),(31,1),(31,2);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('user','el-icon-user','icon'),('house','el-icon-house','icon'),('menu','el-icon-menu','icon'),('s-custom','el-icon-s-custom','icon'),('s-grid','el-icon-s-grid','icon'),('document','el-icon-document','icon'),('coffee','el-icon-coffee\r\n','icon'),('search','el-icon-search','icon'),('link','el-icon-link','icon'),('s-marketing','el-icon-s-marketing','icon'),('s-data','el-icon-s-data','icon'),('date','el-icon-date','icon'),('money','el-icon-money','icon'),('location','el-icon-location','icon'),('coin','el-icon-coin','icon');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `size` bigint DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (17,'649002da71c8473db39892b4a758f875.png','png',634,'http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','e1a9407cd0e937c4b411a93b7aca7c87',1,0),(18,'1641024983532cf.png','png',634,'http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','e1a9407cd0e937c4b411a93b7aca7c87',1,0),(19,'Java3年经验开发个人简历模板.doc','doc',47,'http://localhost:9090/file/0e020e1337474a93ba3b43a75b2890ee.doc','9ace4fac24420f85c753aa663009edb4',1,1),(20,'1626102561055-2.jpg','jpg',24,'http://localhost:9090/file/cd379f381364482aaad0d6ffb7209d3d.jpg','adb0481b283645af3809e3d8a1bdb294',1,1),(21,'1622011842830-5.jpg','jpg',14,'http://localhost:9090/file/7737484487db47ab89e58504ddf86ac1.jpg','2dcd5d60c696c47fdfe0b482c18de0ea',0,1),(22,'1622536738094-7.jpg','jpg',12,'http://localhost:9090/file/ad5946fe27c14508ac796115f6465826.jpg','35977e7dc2159a734f3c81de460e4b8d',0,1),(23,'用户信息 (1).xlsx','xlsx',3,'http://localhost:9090/file/02f70e07e69045c38b4748283ffeeabb.xlsx','687f150737c967e74cfd6fa9ec981589',0,1),(24,'1641024983532cf.png','png',634,'http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','e1a9407cd0e937c4b411a93b7aca7c87',0,1),(25,'1641024983532cf.png','png',634,'http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','e1a9407cd0e937c4b411a93b7aca7c87',0,1),(26,'6.jpg','jpg',30,'http://localhost:9090/file/9b21a2b133b140e0bcd9bf66dc5cad1d.jpg','a2cf10bcbed5e9d98cbaf5467acae28d',0,1),(27,'9b21a2b133b140e0bcd9bf66dc5cad1d.jpg','jpg',30,'http://localhost:9090/file/9b21a2b133b140e0bcd9bf66dc5cad1d.jpg','a2cf10bcbed5e9d98cbaf5467acae28d',0,1),(28,'1622011842830-5.jpg','jpg',14,'http://localhost:9090/file/7737484487db47ab89e58504ddf86ac1.jpg','2dcd5d60c696c47fdfe0b482c18de0ea',1,1),(29,'1641024983532cf (1).png','png',634,'http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','e1a9407cd0e937c4b411a93b7aca7c87',0,1),(30,'1622011842830-5.jpg','jpg',14,'http://localhost:9090/file/7737484487db47ab89e58504ddf86ac1.jpg','2dcd5d60c696c47fdfe0b482c18de0ea',0,1),(31,'QQ截图20211214232106.jpg','jpg',30,'http://localhost:9090/file/7de0e50f915547539db12023cf997276.jpg','ba5dd263551a31d9bb0582b07cb480e1',0,1),(32,'boot.jpg','jpg',11,'http://localhost:9090/file/657d7054d7864bd7a0aaba9e44f7924e.jpg','2ab82ad78ff081665ee90f8cb38b45db',0,1),(33,'QQ图片20210828212629.gif','gif',188,'http://localhost:9090/file/e5512c68a5614135a12064afa66c67e5.gif','ce524058758a83c046b97c66ddcb8a83',0,1),(34,'vite.jpg','jpg',27,'http://localhost:9090/file/782f20b37b8b4a158c5e13a07fe826d5.jpg','c67bab9c32968cd0cda3e1608286b0d9',1,1),(35,'mp.jpg','jpg',32,'http://localhost:9090/file/650e8330e78b4fed8fb0c1d866684b5d.jpg','cb887a9d64563352edce80cf50296cc5',0,1),(36,'qq音乐.png','png',445,'http://localhost:9090/file/461504596ec040729776b674ddec88d3.png','793fd534fa705475eb3358f68c87ec68',0,1),(37,'QQ截图20211214232106.jpg','jpg',30,'http://localhost:9090/file/7de0e50f915547539db12023cf997276.jpg','ba5dd263551a31d9bb0582b07cb480e1',0,1),(38,'boot.jpg','jpg',11,'http://localhost:9090/file/657d7054d7864bd7a0aaba9e44f7924e.jpg','2ab82ad78ff081665ee90f8cb38b45db',0,1),(39,'QQ截图20211214232106.jpg','jpg',30,'http://localhost:9090/file/7de0e50f915547539db12023cf997276.jpg','ba5dd263551a31d9bb0582b07cb480e1',1,0),(40,'v1.mp4','mp4',47484,'http://localhost:9090/file/a22c9d62ef0648db86b9766bb14d742a.mp4','3dda54bc1a07bd9112bfb381c20b4867',1,1),(41,'搜狗截图20220129174103.png','png',56,'http://localhost:9090/file/8567a00d2bf740e0a63794baf600cec3.png','050df6119399582fda666834870608d7',0,1),(42,'QQ图片20220307194920.png','png',100,'http://localhost:9090/file/5e40a867acd74d1f90b0ac9a765823e5.png','0f1337b5c0ebf68f67718fcf42d1322f',0,1),(43,'QQ图片20220307194920.png','png',100,'http://localhost:9090/file/5e40a867acd74d1f90b0ac9a765823e5.png','0f1337b5c0ebf68f67718fcf42d1322f',1,1),(44,'my_head.png','png',63,'http://localhost:9090/file/2d0d585f621c48c892d7f94cb4d99a8e.png','e56050b781bc7cc40a27c13120cad25a',1,1),(45,'my_head.png','png',63,'http://localhost:9090/file/2d0d585f621c48c892d7f94cb4d99a8e.png','e56050b781bc7cc40a27c13120cad25a',1,1),(46,'2028EE86ECC27CAD605B61374F8D76F1.jpg','jpg',347,'http://localhost:9090/file/b672b9012d9d47919d296f8f688cce7d.jpg','2028ee86ecc27cad605b61374f8d76f1',1,1),(47,'2.2设计.docx','docx',191,'http://localhost:9090/file/82567c8873014dd5b8b8a44be1b8d7de.docx','9ec961c2ed9e208663f2811ebc441f92',0,1),(48,'IJYTX[IRRXI8$}$60`~ABGF.png','png',147,'http://localhost:9090/file/3d1fb4621b4441008b634db64dae4ae0.png','1495fd8266635701af1309b02a57ba96',0,1),(49,'IJYTX[IRRXI8$}$60`~ABGF.png','png',147,'http://localhost:9090/file/3d1fb4621b4441008b634db64dae4ae0.png','1495fd8266635701af1309b02a57ba96',0,1),(50,'素材5.png','png',270,'http://localhost:9090/file/c0720a98a1534e03a08b6c22e5a9943f.png','0678fce76a5fda76c382206b3e8a82f6',0,1),(51,'选拔赛.jpg','jpg',80,'http://localhost:9090/file/74965c8033c847398095d8ee5ab57f17.jpg','7dc359f455fbb694672f89de9f095ce4',0,1),(52,'选拔赛.jpg','jpg',80,'http://localhost:9090/file/74965c8033c847398095d8ee5ab57f17.jpg','7dc359f455fbb694672f89de9f095ce4',0,1),(53,'素材5.png','png',270,'http://localhost:9090/file/c0720a98a1534e03a08b6c22e5a9943f.png','0678fce76a5fda76c382206b3e8a82f6',0,1),(54,'素材4.png','png',147,'http://localhost:9090/file/3d1fb4621b4441008b634db64dae4ae0.png','1495fd8266635701af1309b02a57ba96',0,1),(55,'素材4.png','png',147,'http://localhost:9090/file/3d1fb4621b4441008b634db64dae4ae0.png','1495fd8266635701af1309b02a57ba96',0,1),(56,'icon.jpg','jpg',6,'http://localhost:9090/file/3e65c24dda1e47f6b2cfbcbada324fd9.jpg','074a61382c4d6a7ee1ddd798b56dbcf1',1,1),(57,'icon.jpg','jpg',6,'http://localhost:9090/file/3e65c24dda1e47f6b2cfbcbada324fd9.jpg','074a61382c4d6a7ee1ddd798b56dbcf1',1,1),(58,'素材5.png','png',270,'http://localhost:9090/file/c0720a98a1534e03a08b6c22e5a9943f.png','0678fce76a5fda76c382206b3e8a82f6',0,1),(59,'icon.jpg','jpg',6,'http://localhost:9090/file/3e65c24dda1e47f6b2cfbcbada324fd9.jpg','074a61382c4d6a7ee1ddd798b56dbcf1',1,1),(60,'素材4.png','png',147,'http://localhost:9090/file/3d1fb4621b4441008b634db64dae4ae0.png','1495fd8266635701af1309b02a57ba96',0,1);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `pid` int DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  `sort_num` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (2,'数据分析','','el-icon-s-marketing','数据分析和报告',NULL,'',300),(4,'系统管理',NULL,'el-icon-s-grid',NULL,NULL,NULL,100),(5,'用户管理','/user','el-icon-user','用户管理',4,'User',101),(6,'角色管理','/role','el-icon-s-custom','角色管理',4,'Role',102),(7,'菜单管理','/menu','el-icon-menu','菜单管理',4,'Menu',103),(8,'文件管理','/file','el-icon-document','文件管理',4,'File',104),(10,'主页','/home','el-icon-house','主页',NULL,'Home',0),(21,'数据图表','/dashbord','el-icon-s-data','数据图表',2,'Dashbord',301),(22,'生产图表','/production','el-icon-s-data','生产图表',2,'Production',302),(23,'原料图表','/sale','el-icon-s-data','原料图表',2,'Sale',303),(39,'数据库管理','/course','el-icon-coin','数据库管理',NULL,'Course',950),(40,'地图界面','/map','el-icon-location','显示地理位置',NULL,'Map',999),(41,'生产计划','/plan','el-icon-date','展示生产计划',NULL,'Plan',700),(42,'原材料管理','/material','el-icon-s-grid','原材料管理',NULL,'Material',800),(43,'订单管理','/order','el-icon-coffee\r\n','订单管理',NULL,'Order',900),(44,'日志管理','/article','el-icon-document','记录管理日志',NULL,'Article',999),(45,'日志查询','/timeSearch','el-icon-search','查询日志',NULL,'TimeSearch',999),(449,'产品管理','/product','el-icon-money','产品管理',NULL,'Product',500),(450,'质量管理','/quality','el-icon-document','质量管理',NULL,'Quality',501);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','管理员','ROLE_ADMIN'),(2,'学生','学生','ROLE_STUDENT'),(3,'老师','老师','ROLE_TEACHER'),(5,'职工','普通员工','ROLE_STAFF'),(6,'医生','普通医生','ROLE_DOCTOR'),(7,'数据库','数据库类型','ROLE_DATABASE'),(8,'用户','普通用户','ROLE_USER'),(9,'老板','老板','ROLE_BOSS');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色菜单关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,2),(1,4),(1,5),(1,6),(1,7),(1,8),(1,10),(1,21),(1,22),(1,23),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,449),(1,450),(2,2),(2,4),(2,5),(2,6),(2,7),(2,8),(2,10),(2,39),(2,40),(2,41),(2,42),(2,43),(3,2),(3,4),(3,5),(3,6),(3,7),(3,8),(3,10),(3,21),(3,22),(3,23),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(3,45),(5,2),(5,10),(5,21),(5,22),(5,23),(5,39),(5,40),(5,41),(5,42),(5,43),(5,44),(5,45),(6,2),(6,10),(6,21),(6,22),(6,23),(6,39),(6,40),(6,41),(6,42),(6,43),(6,44),(6,45),(7,2),(7,4),(7,5),(7,6),(7,7),(7,8),(7,10),(7,21),(7,22),(7,23),(7,39),(7,40),(7,41),(7,42),(7,43),(7,44),(7,45),(8,2),(8,10),(8,21),(8,22),(8,23),(8,39),(8,40),(8,41),(8,42),(8,43),(8,44),(8,45),(9,2),(9,4),(9,5),(9,6),(9,7),(9,8),(9,10),(9,21),(9,22),(9,23),(9,39),(9,40),(9,41),(9,42),(9,43),(9,44),(9,45),(9,449);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','管理员','admin@qq.com','12345678910','中华人民共和国xx省xx市','2022-01-22 13:10:27','http://localhost:9090/file/8d966b0e6cf84fe191a72a58b8293b23.png','ROLE_ADMIN'),(2,'马斯课','202cb962ac59075b964b07152d234b70','马斯课','masike.163.com','18224242759','饿麦锐坑','2023-06-05 12:08:14',NULL,'ROLE_BOSS'),(3,'张三','202cb962ac59075b964b07152d234b70','小三','1131312143@163.com','17431241242','xx省','2023-06-05 12:17:43',NULL,'ROLE_USER'),(4,'明明','202cb962ac59075b964b07152d234b70','小明','18421412443@qq.com','17324745414','xx省','2023-05-26 09:39:56',NULL,'ROLE_USER'),(5,'石石','202cb962ac59075b964b07152d234b70','小石','1843242243@qq.com','14423532525','xx省','2023-05-26 09:05:20',NULL,'ROLE_STAFF'),(6,'小雷','202cb962ac59075b964b07152d234b70','小雷','4217212414@163.com','14124124143','中国','2023-06-05 12:24:30',NULL,'ROLE_BOSS'),(7,'小刘','202cb962ac59075b964b07152d234b70','刘大饼','2141414214@qq.com','15141742342','中国xx省','2023-06-05 12:27:58',NULL,'ROLE_STAFF'),(8,'张三三','e10adc3949ba59abbe56e057f20f883e','张三三','15234245663@qq.com','17321416412','xx省xx市','2023-05-26 08:09:13',NULL,'ROLE_STAFF'),(9,'测试','202cb962ac59075b964b07152d234b70','测试','23131312313@qq.com','3131321313','xxx','2023-06-18 05:47:39',NULL,'ROLE_STAFF'),(10,'测试1','202cb962ac59075b964b07152d234b70','测试1','213131313123@qq.com','123141241234','xxx','2023-06-18 05:49:12',NULL,'ROLE_STAFF'),(100,'MySql','202cb962ac59075b964b07152d234b70','MySql','111','111','xxx','2023-06-02 13:13:25',NULL,'ROLE_TEACHER'),(101,'SqlServer','202cb962ac59075b964b07152d234b70','SqlServer','312319231@163.com','18342342234','xxx','2023-06-02 13:28:57',NULL,'ROLE_TEACHER'),(102,'Oracle','202cb962ac59075b964b07152d234b70','Oracle','31231231412@163.com','18312441244','xxx','2023-06-02 13:30:01',NULL,'ROLE_TEACHER');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `user_id` int DEFAULT NULL COMMENT '评论人id',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论时间',
  `pid` int DEFAULT NULL COMMENT '父id',
  `origin_id` int DEFAULT NULL COMMENT '最上级评论id',
  `article_id` int DEFAULT NULL COMMENT '关联文章的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` VALUES (1,'222222222',1,'2022-03-22 20:00:00',NULL,NULL,1),(2,'123',NULL,NULL,NULL,NULL,NULL),(5,'222222222',1,'2022-03-22 21:01:00',NULL,NULL,1),(6,'4444',1,'2022-03-22 21:03:15',4,4,1),(7,'5555',1,'2022-03-22 21:04:11',4,4,1),(8,'444444',1,'2022-03-22 21:29:55',7,7,1),(9,'5555',1,'2022-03-22 21:30:04',7,7,1),(10,'666',1,'2022-03-22 21:34:05',7,4,1),(11,'2222222222',16,'2022-03-22 21:38:26',10,4,1),(13,'2222222222',28,'2022-03-22 21:46:01',12,12,1),(14,'222222222',20,'2022-03-22 21:46:48',13,12,1),(15,'2222222222',20,'2022-03-22 21:47:03',13,12,1),(16,'222222222',20,'2022-03-22 21:48:19',4,4,1),(17,'33333',20,'2022-03-22 21:48:42',5,5,1),(19,'11111111',20,'2022-03-22 21:49:21',1,1,1),(21,'222222222',28,'2022-03-22 21:50:04',20,1,1);
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 15:32:31
