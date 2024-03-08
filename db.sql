/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqinggeliguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqinggeliguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqinggeliguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-03 13:37:44'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-03 13:37:44'),(3,'diqu_types','风险等级',1,'低风险',NULL,NULL,'2022-03-03 13:37:44'),(4,'diqu_types','风险等级',2,'中风险',NULL,NULL,'2022-03-03 13:37:44'),(5,'diqu_types','风险等级',3,'高风险',NULL,NULL,'2022-03-03 13:37:44'),(6,'geli_types','隔离类型',1,'居家隔离',NULL,NULL,'2022-03-03 13:37:44'),(7,'geli_types','隔离类型',2,'隔离点隔离',NULL,NULL,'2022-03-03 13:37:44'),(8,'gelishenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2022-03-03 13:37:45'),(9,'gelishenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-03-03 13:37:45'),(10,'gelishenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-03-03 13:37:45'),(11,'wupin_types','物品类型',1,'物品类型1',NULL,NULL,'2022-03-03 13:37:45'),(12,'wupin_types','物品类型',2,'物品类型2',NULL,NULL,'2022-03-03 13:37:45'),(13,'wupin_types','物品类型',3,'物品类型3',NULL,NULL,'2022-03-03 13:37:45'),(14,'wupin_types','物品类型',4,'物品类型4',NULL,NULL,'2022-03-03 13:37:45'),(15,'wupin_shenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2022-03-03 13:37:45'),(16,'wupin_shenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-03-03 13:37:45'),(17,'wupin_shenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-03-03 13:37:45'),(18,'yonghuwenti_types','用户问题类型',1,'用户问题类型1',NULL,NULL,'2022-03-03 13:37:45'),(19,'yonghuwenti_types','用户问题类型',2,'用户问题类型2',NULL,NULL,'2022-03-03 13:37:45'),(20,'yonghuwenti_types','用户问题类型',3,'用户问题类型3',NULL,NULL,'2022-03-03 13:37:45'),(21,'gongyingshangwenti_types','供应商问题类型',1,'供应商问题类型1',NULL,NULL,'2022-03-03 13:37:45'),(22,'gongyingshangwenti_types','供应商问题类型',2,'供应商问题类型2',NULL,NULL,'2022-03-03 13:37:45'),(23,'gongyingshangwenti_types','供应商问题类型',3,'供应商问题类型3',NULL,NULL,'2022-03-03 13:37:45'),(24,'wupin_types','物品类型',5,'物品类型5',NULL,'','2022-03-03 14:30:55');

/*Table structure for table `diqu` */

DROP TABLE IF EXISTS `diqu`;

CREATE TABLE `diqu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diqu_name` varchar(200) DEFAULT NULL COMMENT '地区名称 Search111 ',
  `diqu_types` int(11) DEFAULT NULL COMMENT '风险等级',
  `diqu_content` text COMMENT '地区详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地区';

/*Data for the table `diqu` */

insert  into `diqu`(`id`,`diqu_name`,`diqu_types`,`diqu_content`,`insert_time`,`create_time`) values (1,'地区名称1',2,'地区详情1','2022-03-03 13:37:50','2022-03-03 13:37:50'),(2,'地区名称2',3,'地区详情2','2022-03-03 13:37:50','2022-03-03 13:37:50'),(3,'地区名称3',2,'地区详情3','2022-03-03 13:37:50','2022-03-03 13:37:50'),(4,'地区名称4',3,'地区详情4','2022-03-03 13:37:50','2022-03-03 13:37:50'),(5,'地区名称5',1,'地区详情5','2022-03-03 13:37:50','2022-03-03 13:37:50'),(6,'地区99',1,'<p>地区99的详细介绍</p>','2022-03-03 14:31:13','2022-03-03 14:31:13');

/*Table structure for table `geli` */

DROP TABLE IF EXISTS `geli`;

CREATE TABLE `geli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `geli_types` int(11) DEFAULT NULL COMMENT '隔离类型',
  `geli_content` text COMMENT '隔离备注',
  `geli_time` timestamp NULL DEFAULT NULL COMMENT '隔离时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='隔离';

/*Data for the table `geli` */

insert  into `geli`(`id`,`yonghu_id`,`geli_types`,`geli_content`,`geli_time`,`insert_time`,`create_time`) values (1,3,1,'隔离备注1','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(2,1,2,'隔离备注2','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(3,3,1,'隔离备注3','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(4,2,1,'隔离备注4','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(5,1,1,'隔离备注5','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50');

/*Table structure for table `gelishenqing` */

DROP TABLE IF EXISTS `gelishenqing`;

CREATE TABLE `gelishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gelishenqing_content` text COMMENT '隔离结束申请内容',
  `gelishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `gelishenqing_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='隔离结束申请';

/*Data for the table `gelishenqing` */

insert  into `gelishenqing`(`id`,`yonghu_id`,`gelishenqing_content`,`gelishenqing_yesno_types`,`gelishenqing_yesno_text`,`insert_time`,`create_time`) values (1,3,'隔离结束申请内容1',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(2,3,'隔离结束申请内容2',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(3,1,'隔离结束申请内容3',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(4,3,'隔离结束申请内容4',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(5,2,'隔离结束申请内容5',2,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(6,2,'<p>sadsad</p>',1,'','2022-03-03 14:36:13','2022-03-03 14:36:13');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称 Search111 ',
  `gongyingshang_address` varchar(200) DEFAULT NULL COMMENT '供应商地址',
  `diqu_content` text COMMENT '供应商介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`username`,`password`,`gongyingshang_name`,`gongyingshang_address`,`diqu_content`,`create_time`) values (1,'a1','123456','供应商名称1','供应商地址1','供应商介绍1','2022-03-03 13:37:50'),(2,'a2','123456','供应商名称2','供应商地址2','供应商介绍2','2022-03-03 13:37:50'),(3,'a3','123456','供应商名称3','供应商地址3','供应商介绍3','2022-03-03 13:37:50');

/*Table structure for table `gongyingshangwenti` */

DROP TABLE IF EXISTS `gongyingshangwenti`;

CREATE TABLE `gongyingshangwenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `gongyingshangwenti_name` varchar(200) DEFAULT NULL COMMENT '问题名称 Search111  ',
  `gongyingshangwenti_types` int(11) NOT NULL COMMENT '供应商问题类型 ',
  `gongyingshangwenti_content` text COMMENT '供应商问题详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '增加时间 ',
  `huifu_content` text COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='供应商问题';

/*Data for the table `gongyingshangwenti` */

insert  into `gongyingshangwenti`(`id`,`gongyingshang_id`,`gongyingshangwenti_name`,`gongyingshangwenti_types`,`gongyingshangwenti_content`,`insert_time`,`huifu_content`,`create_time`) values (1,1,'问题名称1',1,'供应商问题详情1','2022-03-03 13:37:50','回复内容1','2022-03-03 13:37:50'),(2,2,'问题名称2',3,'供应商问题详情2','2022-03-03 13:37:50','回复内容2','2022-03-03 13:37:50'),(3,2,'问题名称3',1,'供应商问题详情3','2022-03-03 13:37:50','回复内容3','2022-03-03 13:37:50'),(4,3,'问题名称4',3,'供应商问题详情4','2022-03-03 13:37:50','回复内容4','2022-03-03 13:37:50'),(5,3,'问题名称5',2,'供应商问题详情5','2022-03-03 13:37:50','回复内容5','2022-03-03 13:37:50'),(6,2,'问题11',3,'<p>问题11的内容</p>','2022-03-03 14:28:51','<p>回复11231321</p>','2022-03-03 14:28:51'),(7,2,'问题11231',3,'<p>文明同12131321</p>','2022-03-03 14:35:01','','2022-03-03 14:35:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','asqkijhqudr6ogqmgnbqy7fowqqqnnk2','2022-03-03 13:23:11','2022-03-03 15:30:18'),(2,1,'a1','yonghu','用户','ky0ajxmm8hr6g3sy2zu427d7upnrzs12','2022-03-03 13:56:55','2022-03-03 14:56:55'),(3,1,'a1','gongyingshang','供应商','d62uvgfy427ea09ahevdkh8bsnx8refm','2022-03-03 13:57:35','2022-03-03 15:29:28'),(4,2,'a2','gongyingshang','供应商','s151qkzq8c7wq1epibqyj6ygu840gus2','2022-03-03 13:57:47','2022-03-03 15:35:48'),(5,2,'a2','yonghu','用户','4y7ihuhgo77b75l3qig84fhlq1d3rher','2022-03-03 14:35:56','2022-03-03 15:35:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `wupin` */

DROP TABLE IF EXISTS `wupin`;

CREATE TABLE `wupin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `wupin_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `wupin_photo` varchar(200) DEFAULT NULL COMMENT '物品照片',
  `wupin_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `wupin_kucun_number` int(11) DEFAULT NULL COMMENT '物品库存',
  `wupin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `wupin_content` text COMMENT '物品介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物品';

/*Data for the table `wupin` */

insert  into `wupin`(`id`,`gongyingshang_id`,`wupin_name`,`wupin_photo`,`wupin_types`,`wupin_kucun_number`,`wupin_delete`,`wupin_content`,`create_time`) values (1,3,'物品名称1','http://localhost:8080/yiqinggeliguanli/upload/wupin1.jpg',4,101,1,'物品介绍1','2022-03-03 13:37:50'),(2,2,'物品名称2','http://localhost:8080/yiqinggeliguanli/upload/wupin2.jpg',2,90,1,'物品介绍2','2022-03-03 13:37:50'),(3,3,'物品名称3','http://localhost:8080/yiqinggeliguanli/upload/wupin3.jpg',3,103,1,'物品介绍3','2022-03-03 13:37:50'),(4,3,'物品名称4','http://localhost:8080/yiqinggeliguanli/upload/wupin4.jpg',1,104,1,'物品介绍4','2022-03-03 13:37:50'),(5,2,'物品名称5','http://localhost:8080/yiqinggeliguanli/upload/wupin5.jpg',4,90,1,'物品介绍5','2022-03-03 13:37:50');

/*Table structure for table `wupin_shenqing` */

DROP TABLE IF EXISTS `wupin_shenqing`;

CREATE TABLE `wupin_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wupin_shenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请流水号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_id` int(11) DEFAULT NULL COMMENT '物品',
  `wupin_shenqing_number` int(11) DEFAULT NULL COMMENT '申请数量',
  `wupin_content` text COMMENT '申请详情',
  `wupin_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `wupin_shenqing_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物品申请';

/*Data for the table `wupin_shenqing` */

insert  into `wupin_shenqing`(`id`,`wupin_shenqing_uuid_number`,`yonghu_id`,`wupin_id`,`wupin_shenqing_number`,`wupin_content`,`wupin_shenqing_yesno_types`,`wupin_shenqing_yesno_text`,`insert_time`,`create_time`) values (1,'164628587004012',1,1,11,'申请详情1',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(2,'164628587004012',3,2,12,'申请详情2',2,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(3,'16462858700404',2,3,12,'申请详情3',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(4,'164628587004017',3,4,15,'申请详情4',1,NULL,'2022-03-03 13:37:50','2022-03-03 13:37:50'),(5,'16462858700415',1,5,15,'申请详情5',2,'','2022-03-03 13:37:50','2022-03-03 13:37:50'),(6,'1646289416569',2,5,1,'<p>申请详情介绍</p>',1,'','2022-03-03 14:37:15','2022-03-03 14:37:15');

/*Table structure for table `xingcheng` */

DROP TABLE IF EXISTS `xingcheng`;

CREATE TABLE `xingcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `diqu_id` int(11) DEFAULT NULL COMMENT '地区',
  `xingcheng_content` text COMMENT '行程备注',
  `jingguo_time` timestamp NULL DEFAULT NULL COMMENT '经过时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='行程';

/*Data for the table `xingcheng` */

insert  into `xingcheng`(`id`,`yonghu_id`,`diqu_id`,`xingcheng_content`,`jingguo_time`,`insert_time`,`create_time`) values (1,1,1,'行程备注1','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(2,2,2,'行程备注2','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(3,3,3,'行程备注3','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(4,2,4,'行程备注4','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(5,2,5,'行程备注5','2022-03-03 13:37:50','2022-03-03 13:37:50','2022-03-03 13:37:50'),(6,2,5,'<p>无</p>','2022-03-02 02:00:00','2022-03-03 14:38:20','2022-03-03 14:38:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/yiqinggeliguanli/upload/yonghu1.jpg',2,'1@qq.com','2022-03-03 13:37:50'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/yiqinggeliguanli/upload/yonghu2.jpg',1,'2@qq.com','2022-03-03 13:37:50'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/yiqinggeliguanli/upload/yonghu3.jpg',1,'3@qq.com','2022-03-03 13:37:50');

/*Table structure for table `yonghuwenti` */

DROP TABLE IF EXISTS `yonghuwenti`;

CREATE TABLE `yonghuwenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yonghuwenti_name` varchar(200) DEFAULT NULL COMMENT '问题名称 Search111  ',
  `yonghuwenti_types` int(11) NOT NULL COMMENT '用户问题类型 ',
  `yonghuwenti_content` text COMMENT '用户问题详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '增加时间 ',
  `huifu_content` text COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户问题';

/*Data for the table `yonghuwenti` */

insert  into `yonghuwenti`(`id`,`yonghu_id`,`yonghuwenti_name`,`yonghuwenti_types`,`yonghuwenti_content`,`insert_time`,`huifu_content`,`create_time`) values (1,1,'问题名称1',3,'用户问题详情1','2022-03-03 13:37:50','回复内容1','2022-03-03 13:37:50'),(2,2,'问题名称2',1,'用户问题详情2','2022-03-03 13:37:50','回复内容2','2022-03-03 13:37:50'),(3,1,'问题名称3',2,'用户问题详情3','2022-03-03 13:37:50','回复内容3','2022-03-03 13:37:50'),(4,1,'问题名称4',1,'用户问题详情4','2022-03-03 13:37:50','回复内容4','2022-03-03 13:37:50'),(5,2,'问题名称5',1,'用户问题详情5','2022-03-03 13:37:50','回复内容5','2022-03-03 13:37:50'),(6,2,'问题12131',2,'<p>问题哦23131</p>','2022-03-03 14:38:34','','2022-03-03 14:38:34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
