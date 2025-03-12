-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmh4b9v
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmh4b9v/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmh4b9v/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmh4b9v/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangwuxinxi`
--

DROP TABLE IF EXISTS `discussfangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899405421 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangwuxinxi`
--

LOCK TABLES `discussfangwuxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangwuxinxi` DISABLE KEYS */;
INSERT INTO `discussfangwuxinxi` VALUES (81,'2021-03-16 12:50:35',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-16 12:50:35',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-16 12:50:35',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-16 12:50:35',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-16 12:50:35',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-16 12:50:35',6,6,'用户名6','评论内容6','回复内容6'),(1615899405420,'2021-03-16 12:56:44',41,1615899312911,NULL,'环境很舒服很好',NULL);
/*!40000 ALTER TABLE `discussfangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899186115 DEFAULT CHARSET=utf8 COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (1615899086575,'2021-03-16 12:51:26','一房一厅'),(1615899089620,'2021-03-16 12:51:28','两房一厅'),(1615899091329,'2021-03-16 12:51:31','三房一厅'),(1615899186114,'2021-03-16 12:53:06','三房两厅');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianhao` varchar(200) NOT NULL COMMENT '房间号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `yuezujin` varchar(200) NOT NULL COMMENT '月租金',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `xiangqing` longtext COMMENT '详情',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianhao` (`fangjianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (41,'2021-03-16 12:50:35','2011','碧桂园','三房两厅','http://localhost:8080/jspmh4b9v/upload/1615899220286.jpg','电梯房','150平方米','1500','020-89819991','上海','上海市人民南路35号','<img src=\"http://localhost:8080/jspmh4b9v/upload/1615899243672.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmh4b9v/upload/1615899243672.jpg\">\r\n<img src=\"http://localhost:8080/jspmh4b9v/upload/1615899248294.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmh4b9v/upload/1615899248294.jpg\"><img src=\"http://localhost:8080/jspmh4b9v/upload/1615899253504.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmh4b9v/upload/1615899253504.jpg\"><img src=\"http://localhost:8080/jspmh4b9v/upload/1615899261724.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmh4b9v/upload/1615899261724.jpg\">这里可以发上传多张图片文字结合描述房屋详细情况详情1\r\n','待出租'),(42,'2021-03-16 12:50:35','房间号2','房屋名称2','房屋类型2','http://localhost:8080/jspmh4b9v/upload/fangwuxinxi_tupian2.jpg','电梯房','面积2','月租金2','020-89819992','地区2','详细地址2','详情2','待出租'),(43,'2021-03-16 12:50:35','房间号3','房屋名称3','房屋类型3','http://localhost:8080/jspmh4b9v/upload/fangwuxinxi_tupian3.jpg','电梯房','面积3','月租金3','020-89819993','地区3','详细地址3','详情3','待出租'),(44,'2021-03-16 12:50:35','房间号4','房屋名称4','房屋类型4','http://localhost:8080/jspmh4b9v/upload/fangwuxinxi_tupian4.jpg','电梯房','面积4','月租金4','020-89819994','地区4','详细地址4','详情4','待出租'),(45,'2021-03-16 12:50:35','房间号5','房屋名称5','房屋类型5','http://localhost:8080/jspmh4b9v/upload/fangwuxinxi_tupian5.jpg','电梯房','面积5','月租金5','020-89819995','地区5','详细地址5','详情5','待出租'),(46,'2021-03-16 12:50:35','房间号6','房屋名称6','房屋类型6','http://localhost:8080/jspmh4b9v/upload/fangwuxinxi_tupian6.jpg','电梯房','面积6','月租金6','020-89819996','地区6','详细地址6','详情6','待出租');
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (21,'2021-03-16 12:50:35','公告信息','公告','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian1.jpg','这里可以发布一些公告内容的，可以图片文字结合描述的，这里的内容都是用预测的可于自行添加修改删除的公告内容1\r\n','2021-03-01'),(22,'2021-03-16 12:50:35','标题2','类型2','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian2.jpg','公告内容2','2021-03-16'),(23,'2021-03-16 12:50:35','标题3','类型3','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian3.jpg','公告内容3','2021-03-16'),(24,'2021-03-16 12:50:35','标题4','类型4','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian4.jpg','公告内容4','2021-03-16'),(25,'2021-03-16 12:50:35','标题5','类型5','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian5.jpg','公告内容5','2021-03-16'),(26,'2021-03-16 12:50:35','标题6','类型6','http://localhost:8080/jspmh4b9v/upload/gonggaoxinxi_tupian6.jpg','公告内容6','2021-03-16');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongxinxi`
--

DROP TABLE IF EXISTS `hetongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zongzujin` varchar(200) DEFAULT NULL COMMENT '总租金',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `zulinshijian` varchar(200) DEFAULT NULL COMMENT '租赁时间',
  `hetongneirong` longtext COMMENT '合同内容',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `qiandingriqi` date DEFAULT NULL COMMENT '签订日期',
  `youxiaoqi` varchar(200) DEFAULT NULL COMMENT '有效期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899508992 DEFAULT CHARSET=utf8 COMMENT='合同信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongxinxi`
--

LOCK TABLES `hetongxinxi` WRITE;
/*!40000 ALTER TABLE `hetongxinxi` DISABLE KEYS */;
INSERT INTO `hetongxinxi` VALUES (61,'2021-03-16 12:50:35','合同编号1','房屋名称1','房屋类型1','用户名1','姓名1','总租金1','2021-03-16','租赁时间1','合同内容1','','2021-03-16','有效期1','是',''),(62,'2021-03-16 12:50:35','合同编号2','房屋名称2','房屋类型2','用户名2','姓名2','总租金2','2021-03-16','租赁时间2','合同内容2','','2021-03-16','有效期2','是',''),(63,'2021-03-16 12:50:35','合同编号3','房屋名称3','房屋类型3','用户名3','姓名3','总租金3','2021-03-16','租赁时间3','合同内容3','','2021-03-16','有效期3','是',''),(64,'2021-03-16 12:50:35','合同编号4','房屋名称4','房屋类型4','用户名4','姓名4','总租金4','2021-03-16','租赁时间4','合同内容4','','2021-03-16','有效期4','是',''),(65,'2021-03-16 12:50:35','合同编号5','房屋名称5','房屋类型5','用户名5','姓名5','总租金5','2021-03-16','租赁时间5','合同内容5','','2021-03-16','有效期5','是',''),(66,'2021-03-16 12:50:35','合同编号6','房屋名称6','房屋类型6','用户名6','姓名6','总租金6','2021-03-16','租赁时间6','合同内容6','','2021-03-16','有效期6','是',''),(1615899508991,'2021-03-16 12:58:28','1615899460','碧桂园','三房两厅','001','李铭','3000','2021-03-01','2','跟客户李铭签订两个月的合同，1号开始生效，2月28号借宿','http://localhost:8080/jspmh4b9v/file/download?fileName=1615899503936.doc','2021-03-01','2个月','是','同意签订');
/*!40000 ALTER TABLE `hetongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899376177 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615899376176,'2021-03-16 12:56:15',1615899312911,41,'fangwuxinxi','碧桂园','http://localhost:8080/jspmh4b9v/upload/1615899220286.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','76l3kmqgq7yi82x25c1kt26sxpz7er7p','2021-03-16 12:51:13','2021-03-16 13:59:31'),(2,1615899312911,'001','yonghu','用户','s29kq6nm40yod2gsymvt5n3fcnne3zs6','2021-03-16 12:55:17','2021-03-16 13:58:43'),(3,11,'1','yonghu','用户','yhu77ldy6iwyxgiavu5m56l46ejfbmuq','2021-03-16 12:58:37','2021-03-16 13:58:38');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 12:50:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899312912 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-16 12:50:35','1','1','姓名1','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-03-16 12:50:35','用户2','123456','姓名2','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-03-16 12:50:35','用户3','123456','姓名3','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-03-16 12:50:35','用户4','123456','姓名4','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-03-16 12:50:35','用户5','123456','姓名5','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-03-16 12:50:35','用户6','123456','姓名6','男','http://localhost:8080/jspmh4b9v/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1615899312911,'2021-03-16 12:55:12','001','001','李铭','男','http://localhost:8080/jspmh4b9v/upload/1615899331962.jpg','441214121412141214','15214121412');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulindingdan`
--

DROP TABLE IF EXISTS `zulindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yuezujin` varchar(200) DEFAULT NULL COMMENT '月租金',
  `zulinshijian` int(11) NOT NULL COMMENT '租赁时间',
  `zongzujin` int(11) DEFAULT NULL COMMENT '总租金',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615899395863 DEFAULT CHARSET=utf8 COMMENT='租赁订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulindingdan`
--

LOCK TABLES `zulindingdan` WRITE;
/*!40000 ALTER TABLE `zulindingdan` DISABLE KEYS */;
INSERT INTO `zulindingdan` VALUES (51,'2021-03-16 12:50:35','订单编号1','房屋名称1','房屋类型1','月租金1',1,1,'备注1','2021-03-16','用户名1','姓名1','手机1','是','','未支付'),(52,'2021-03-16 12:50:35','订单编号2','房屋名称2','房屋类型2','月租金2',2,2,'备注2','2021-03-16','用户名2','姓名2','手机2','是','','未支付'),(53,'2021-03-16 12:50:35','订单编号3','房屋名称3','房屋类型3','月租金3',3,3,'备注3','2021-03-16','用户名3','姓名3','手机3','是','','未支付'),(54,'2021-03-16 12:50:35','订单编号4','房屋名称4','房屋类型4','月租金4',4,4,'备注4','2021-03-16','用户名4','姓名4','手机4','是','','未支付'),(55,'2021-03-16 12:50:35','订单编号5','房屋名称5','房屋类型5','月租金5',5,5,'备注5','2021-03-16','用户名5','姓名5','手机5','是','','未支付'),(56,'2021-03-16 12:50:35','订单编号6','房屋名称6','房屋类型6','月租金6',6,6,'备注6','2021-03-16','用户名6','姓名6','手机6','是','','未支付'),(1615899395862,'2021-03-16 12:56:35','202131620562211930415','碧桂园','三房两厅','1500',2,3000,'我要租2个月','2021-03-01','001','李铭','15214121412','是','同意租赁','已支付');
/*!40000 ALTER TABLE `zulindingdan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 10:02:18
