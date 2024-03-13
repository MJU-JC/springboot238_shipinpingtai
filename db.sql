/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - guangyingshipin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guangyingshipin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guangyingshipin`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/guangyingshipin/upload/1640482840250.jpg'),(2,'轮播图2','http://localhost:8080/guangyingshipin/upload/1640482848041.jpg'),(3,'轮播图3','http://localhost:8080/guangyingshipin/upload/1640484513521.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,NULL,'2021-12-26 09:26:01'),(2,'sex_types','性别类型名称',2,'女',NULL,NULL,'2021-12-26 09:26:01'),(5,'nba_types','NBA类型名称',1,'NBA类型1',NULL,NULL,'2021-12-26 09:26:01'),(6,'nba_types','NBA类型名称',2,'NBA类型2',NULL,NULL,'2021-12-26 09:26:01'),(7,'nba_types','NBA类型名称',3,'NBA类型3',NULL,NULL,'2021-12-26 09:26:01'),(8,'nba_types','NBA类型名称',4,'NBA类型4',NULL,NULL,'2021-12-26 09:26:01'),(11,'papi_types','papi酱视频类型名称',1,'papi酱视频类型1',NULL,NULL,'2021-12-26 09:26:02'),(12,'papi_types','papi酱视频类型名称',2,'papi酱视频类型2',NULL,NULL,'2021-12-26 09:26:02'),(13,'papi_types','papi酱视频类型名称',3,'papi酱视频类型3',NULL,NULL,'2021-12-26 09:26:02'),(14,'papi_types','papi酱视频类型名称',4,'papi酱视频类型4',NULL,NULL,'2021-12-26 09:26:02'),(17,'tiyu_types','体育类型名称',1,'体育类型1',NULL,NULL,'2021-12-26 09:26:02'),(18,'tiyu_types','体育类型名称',2,'体育类型2',NULL,NULL,'2021-12-26 09:26:02'),(19,'tiyu_types','体育类型名称',3,'体育类型3',NULL,NULL,'2021-12-26 09:26:02'),(20,'tiyu_types','体育类型名称',4,'体育类型4',NULL,NULL,'2021-12-26 09:26:02'),(21,'news_types','新闻类型名称',1,'新闻类型1',NULL,NULL,'2021-12-26 09:26:02'),(22,'news_types','新闻类型名称',2,'新闻类型2',NULL,NULL,'2021-12-26 09:26:02'),(25,'yishu_types','艺术类型名称',1,'艺术类型1',NULL,NULL,'2021-12-26 09:26:03'),(26,'yishu_types','艺术类型名称',2,'艺术类型2',NULL,NULL,'2021-12-26 09:26:03'),(27,'yishu_types','艺术类型名称',3,'艺术类型3',NULL,NULL,'2021-12-26 09:26:03'),(28,'yishu_types','艺术类型名称',4,'艺术类型4',NULL,NULL,'2021-12-26 09:26:03'),(29,'shangxia_types','上下架名称',1,'上架',NULL,NULL,'2021-12-26 09:26:03'),(30,'shangxia_types','上下架名称',2,'下架',NULL,NULL,'2021-12-26 09:26:03'),(31,'yule_types','娱乐类型名称',1,'娱乐类型1',NULL,NULL,'2021-12-26 09:26:03'),(32,'yule_types','娱乐类型名称',2,'娱乐类型2',NULL,NULL,'2021-12-26 09:26:03'),(33,'yule_types','娱乐类型名称',3,'娱乐类型3',NULL,NULL,'2021-12-26 09:26:03'),(34,'yule_types','娱乐类型名称',4,'娱乐类型4',NULL,NULL,'2021-12-26 09:26:03'),(35,'yule_types','娱乐类型名称',5,'娱乐类型编码5',NULL,NULL,'2021-12-26 10:04:26');

/*Table structure for table `nba` */

DROP TABLE IF EXISTS `nba`;

CREATE TABLE `nba` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `nba_name` varchar(200) DEFAULT NULL COMMENT 'NBA名称  Search111 ',
  `nba_photo` varchar(200) DEFAULT NULL COMMENT 'NBA照片',
  `nba_video` varchar(200) DEFAULT NULL COMMENT 'NBA视频',
  `nba_types` int(11) DEFAULT NULL COMMENT 'NBA类型 Search111',
  `nba_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `nba_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `nba_content` text COMMENT 'NBA简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='NBA';

/*Data for the table `nba` */

insert  into `nba`(`id`,`nba_name`,`nba_photo`,`nba_video`,`nba_types`,`nba_clicknum`,`shangxia_types`,`nba_delete`,`nba_content`,`create_time`) values (1,'nab视频1','http://localhost:8080/guangyingshipin/upload/1640482913250.jpg','http://localhost:8080/guangyingshipin/upload/1640482963742.mp4',4,3,1,1,'<p>nvb视频1的详情<img src=\"http://localhost:8080/guangyingshipin/upload/1640482998096.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483004389.jpg\"></p>','2021-12-26 09:43:26'),(2,'nba2','http://localhost:8080/guangyingshipin/upload/1640483028132.jpg','http://localhost:8080/guangyingshipin/upload/1640483038120.mp4',2,6,1,1,'<p>视频2的详情</p>','2021-12-26 09:46:36'),(3,'nba3','http://localhost:8080/guangyingshipin/upload/1640484293852.jpg','http://localhost:8080/guangyingshipin/upload/1640484299103.mp4',3,1,1,1,'<p>nba3的介绍简介</p>','2021-12-26 10:05:21');

/*Table structure for table `nba_collection` */

DROP TABLE IF EXISTS `nba_collection`;

CREATE TABLE `nba_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nba_id` int(11) DEFAULT NULL COMMENT 'NBA',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='NBA收藏';

/*Data for the table `nba_collection` */

insert  into `nba_collection`(`id`,`nba_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-12-26 10:02:23','2021-12-26 10:02:23'),(2,1,1,'2021-12-26 10:02:32','2021-12-26 10:02:32');

/*Table structure for table `nba_liuyan` */

DROP TABLE IF EXISTS `nba_liuyan`;

CREATE TABLE `nba_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nba_id` int(11) DEFAULT NULL COMMENT 'NBA',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nba_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='NBA留言';

/*Data for the table `nba_liuyan` */

insert  into `nba_liuyan`(`id`,`nba_id`,`yonghu_id`,`nba_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,2,1,'留言1',NULL,'2021-12-26 10:02:07',NULL,'2021-12-26 10:02:07'),(2,2,1,'留言2','回复2','2021-12-26 10:02:16','2021-12-26 10:06:00','2021-12-26 09:39:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','http://localhost:8080/guangyingshipin/upload/1640484072927.png',1,'2021-12-26 09:26:02','<p>新闻详情1111</p>','2021-12-26 09:26:02'),(2,'新闻2','http://localhost:8080/guangyingshipin/upload/1640484428263.jpg',2,'2021-12-26 10:07:17','<p>新闻2的详情介绍</p>','2021-12-26 10:07:17');

/*Table structure for table `papi` */

DROP TABLE IF EXISTS `papi`;

CREATE TABLE `papi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `papi_name` varchar(200) DEFAULT NULL COMMENT 'papi酱视频名称  Search111 ',
  `papi_photo` varchar(200) DEFAULT NULL COMMENT 'papi酱视频照片',
  `papi_video` varchar(200) DEFAULT NULL COMMENT 'papi酱视频视频',
  `papi_types` int(11) DEFAULT NULL COMMENT 'papi酱视频类型 Search111',
  `papi_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `papi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `papi_content` text COMMENT 'papi酱视频简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='papi酱视频';

/*Data for the table `papi` */

insert  into `papi`(`id`,`papi_name`,`papi_photo`,`papi_video`,`papi_types`,`papi_clicknum`,`shangxia_types`,`papi_delete`,`papi_content`,`create_time`) values (1,'papi酱视频1','http://localhost:8080/guangyingshipin/upload/1640483248231.png','http://localhost:8080/guangyingshipin/upload/1640483265904.mp4',2,3,1,1,'<p>papi酱的视频详情<img src=\"http://localhost:8080/guangyingshipin/upload/1640483295325.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483300350.jpg\"><img src=\"http://localhost:8080/guangyingshipin/upload/1640483305972.png\"></p>','2021-12-26 09:48:28');

/*Table structure for table `papi_collection` */

DROP TABLE IF EXISTS `papi_collection`;

CREATE TABLE `papi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `papi_id` int(11) DEFAULT NULL COMMENT 'papi酱视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='papi酱视频收藏';

/*Data for the table `papi_collection` */

/*Table structure for table `papi_liuyan` */

DROP TABLE IF EXISTS `papi_liuyan`;

CREATE TABLE `papi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `papi_id` int(11) DEFAULT NULL COMMENT 'papi酱视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `papi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='papi酱视频留言';

/*Data for the table `papi_liuyan` */

/*Table structure for table `tiyu` */

DROP TABLE IF EXISTS `tiyu`;

CREATE TABLE `tiyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tiyu_name` varchar(200) DEFAULT NULL COMMENT '体育名称  Search111 ',
  `tiyu_photo` varchar(200) DEFAULT NULL COMMENT '体育照片',
  `tiyu_video` varchar(200) DEFAULT NULL COMMENT '体育视频',
  `tiyu_types` int(11) DEFAULT NULL COMMENT '体育类型 Search111',
  `tiyu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tiyu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `tiyu_content` text COMMENT '体育简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='体育';

/*Data for the table `tiyu` */

insert  into `tiyu`(`id`,`tiyu_name`,`tiyu_photo`,`tiyu_video`,`tiyu_types`,`tiyu_clicknum`,`shangxia_types`,`tiyu_delete`,`tiyu_content`,`create_time`) values (1,'体育1','http://localhost:8080/guangyingshipin/upload/1640483354686.jpg','http://localhost:8080/guangyingshipin/upload/1640483364152.mp4',3,3,1,1,'<p>体育1的详情<img src=\"http://localhost:8080/guangyingshipin/upload/1640483384166.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483389351.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483396519.jpg\"></p>','2021-12-26 09:49:58');

/*Table structure for table `tiyu_collection` */

DROP TABLE IF EXISTS `tiyu_collection`;

CREATE TABLE `tiyu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tiyu_id` int(11) DEFAULT NULL COMMENT '体育',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='体育收藏';

/*Data for the table `tiyu_collection` */

/*Table structure for table `tiyu_liuyan` */

DROP TABLE IF EXISTS `tiyu_liuyan`;

CREATE TABLE `tiyu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tiyu_id` int(11) DEFAULT NULL COMMENT '体育',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tiyu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体育留言';

/*Data for the table `tiyu_liuyan` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','jzs4dlie5xsauglgjh9d7yirn7gjv5um','2021-12-26 09:38:11','2021-12-26 11:03:43'),(2,1,'a1','yonghu','用户','wlx0ngq2z1misrgy7dm40nxfv43ow44f','2021-12-26 09:51:55','2021-12-26 11:08:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yishu` */

DROP TABLE IF EXISTS `yishu`;

CREATE TABLE `yishu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yishu_name` varchar(200) DEFAULT NULL COMMENT '艺术名称  Search111 ',
  `yishu_photo` varchar(200) DEFAULT NULL COMMENT '艺术照片',
  `yishu_video` varchar(200) DEFAULT NULL COMMENT '艺术视频',
  `yishu_types` int(11) DEFAULT NULL COMMENT '艺术类型 Search111',
  `yishu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `yishu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `yishu_content` text COMMENT '艺术简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='艺术';

/*Data for the table `yishu` */

insert  into `yishu`(`id`,`yishu_name`,`yishu_photo`,`yishu_video`,`yishu_types`,`yishu_clicknum`,`shangxia_types`,`yishu_delete`,`yishu_content`,`create_time`) values (1,'艺术1','http://localhost:8080/guangyingshipin/upload/1640483418933.jpg','http://localhost:8080/guangyingshipin/upload/1640483429123.mp4',2,3,1,1,'<p>艺术1的详情<img src=\"http://localhost:8080/guangyingshipin/upload/1640483444133.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483448982.jpg\"></p>','2021-12-26 09:50:51');

/*Table structure for table `yishu_collection` */

DROP TABLE IF EXISTS `yishu_collection`;

CREATE TABLE `yishu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yishu_id` int(11) DEFAULT NULL COMMENT '艺术',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='艺术收藏';

/*Data for the table `yishu_collection` */

insert  into `yishu_collection`(`id`,`yishu_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-12-26 10:03:13','2021-12-26 10:03:13');

/*Table structure for table `yishu_liuyan` */

DROP TABLE IF EXISTS `yishu_liuyan`;

CREATE TABLE `yishu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yishu_id` int(11) DEFAULT NULL COMMENT '艺术',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yishu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='艺术留言';

/*Data for the table `yishu_liuyan` */

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户昵称 Search111 ',
  `yonghu_xingming` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_xingming`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','张一','17703786901','410224199610232001','http://localhost:8080/guangyingshipin/upload/1640482768560.jpg',1,'2021-12-26 09:39:49'),(2,'a2','123456','张2','张二','17703786902','410224199610232002','http://localhost:8080/guangyingshipin/upload/1640482818348.jpg',1,'2021-12-26 09:40:20');

/*Table structure for table `yule` */

DROP TABLE IF EXISTS `yule`;

CREATE TABLE `yule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yule_name` varchar(200) DEFAULT NULL COMMENT '娱乐名称  Search111 ',
  `yule_photo` varchar(200) DEFAULT NULL COMMENT '娱乐照片',
  `yule_video` varchar(200) DEFAULT NULL COMMENT '娱乐视频',
  `yule_types` int(11) DEFAULT NULL COMMENT '娱乐类型 Search111',
  `yule_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `yule_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `yule_content` text COMMENT '娱乐简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='娱乐';

/*Data for the table `yule` */

insert  into `yule`(`id`,`yule_name`,`yule_photo`,`yule_video`,`yule_types`,`yule_clicknum`,`shangxia_types`,`yule_delete`,`yule_content`,`create_time`) values (1,'娱乐1','http://localhost:8080/guangyingshipin/upload/1640483468393.jpg','http://localhost:8080/guangyingshipin/upload/1640483473789.mp4',2,1,1,1,'<p>娱乐1的详情介绍</p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483491770.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483496359.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483500690.jpg\"></p><p><img src=\"http://localhost:8080/guangyingshipin/upload/1640483504597.jpg\"></p>','2021-12-26 09:51:46');

/*Table structure for table `yule_collection` */

DROP TABLE IF EXISTS `yule_collection`;

CREATE TABLE `yule_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yule_id` int(11) DEFAULT NULL COMMENT '娱乐',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='娱乐收藏';

/*Data for the table `yule_collection` */

/*Table structure for table `yule_liuyan` */

DROP TABLE IF EXISTS `yule_liuyan`;

CREATE TABLE `yule_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yule_id` int(11) DEFAULT NULL COMMENT '娱乐',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yule_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='娱乐留言';

/*Data for the table `yule_liuyan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
