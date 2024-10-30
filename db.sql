/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm73156
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm73156` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm73156`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm73156/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm73156/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm73156/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (61,'2021-01-20 17:22:35','订单编号1','汽车名称1','汽车类型1','账号1','车牌号1','总价格1','押金1','总计1','2021-01-20','用户名1','姓名1','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (62,'2021-01-20 17:22:35','订单编号2','汽车名称2','汽车类型2','账号2','车牌号2','总价格2','押金2','总计2','2021-01-20','用户名2','姓名2','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (63,'2021-01-20 17:22:35','订单编号3','汽车名称3','汽车类型3','账号3','车牌号3','总价格3','押金3','总计3','2021-01-20','用户名3','姓名3','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (64,'2021-01-20 17:22:35','订单编号4','汽车名称4','汽车类型4','账号4','车牌号4','总价格4','押金4','总计4','2021-01-20','用户名4','姓名4','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (65,'2021-01-20 17:22:35','订单编号5','汽车名称5','汽车类型5','账号5','车牌号5','总价格5','押金5','总计5','2021-01-20','用户名5','姓名5','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`chepaihao`,`zongjiage`,`yajin`,`zongji`,`zulinriqi`,`yonghuming`,`xingming`,`ispay`) values (66,'2021-01-20 17:22:35','订单编号6','汽车名称6','汽车类型6','账号6','车牌号6','总价格6','押金6','总计6','2021-01-20','用户名6','姓名6','未支付');

/*Table structure for table `discussqichexinxi` */

DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

/*Data for the table `discussqichexinxi` */

insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2021-01-20 17:22:35',1,1,'评论内容1','回复内容1');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (102,'2021-01-20 17:22:35',2,2,'评论内容2','回复内容2');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (103,'2021-01-20 17:22:35',3,3,'评论内容3','回复内容3');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (104,'2021-01-20 17:22:35',4,4,'评论内容4','回复内容4');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (105,'2021-01-20 17:22:35',5,5,'评论内容5','回复内容5');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (106,'2021-01-20 17:22:35',6,6,'评论内容6','回复内容6');

/*Table structure for table `haichexinxi` */

DROP TABLE IF EXISTS `haichexinxi`;

CREATE TABLE `haichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `zhaopian` varchar(200) NOT NULL COMMENT '照片',
  `haichezhuangkuang` longtext COMMENT '还车状况',
  `haicheriqi` date DEFAULT NULL COMMENT '还车日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='还车信息';

/*Data for the table `haichexinxi` */

insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (71,'2021-01-20 17:22:35','汽车名称1','汽车类型1','账号1','品牌1','车牌号1','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian1.jpg','还车状况1','2021-01-20','用户名1','姓名1','否','');
insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (72,'2021-01-20 17:22:35','汽车名称2','汽车类型2','账号2','品牌2','车牌号2','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian2.jpg','还车状况2','2021-01-20','用户名2','姓名2','否','');
insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (73,'2021-01-20 17:22:35','汽车名称3','汽车类型3','账号3','品牌3','车牌号3','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian3.jpg','还车状况3','2021-01-20','用户名3','姓名3','否','');
insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (74,'2021-01-20 17:22:35','汽车名称4','汽车类型4','账号4','品牌4','车牌号4','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian4.jpg','还车状况4','2021-01-20','用户名4','姓名4','否','');
insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (75,'2021-01-20 17:22:35','汽车名称5','汽车类型5','账号5','品牌5','车牌号5','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian5.jpg','还车状况5','2021-01-20','用户名5','姓名5','否','');
insert  into `haichexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`zhanghao`,`pinpai`,`chepaihao`,`zhaopian`,`haichezhuangkuang`,`haicheriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (76,'2021-01-20 17:22:35','汽车名称6','汽车类型6','账号6','品牌6','车牌号6','http://localhost:8080/ssm73156/upload/haichexinxi_zhaopian6.jpg','还车状况6','2021-01-20','用户名6','姓名6','否','');

/*Table structure for table `jiechexinxi` */

DROP TABLE IF EXISTS `jiechexinxi`;

CREATE TABLE `jiechexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `shijiage` int(11) DEFAULT NULL COMMENT '时价格',
  `zulinshijian` int(11) NOT NULL COMMENT '租赁时间',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='借车信息';

/*Data for the table `jiechexinxi` */

insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (51,'2021-01-20 17:22:35','汽车名称1','汽车类型1','品牌1','账号1','车牌号1',1,1,1,'押金1','2021-01-20','用户名1','姓名1','否','');
insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (52,'2021-01-20 17:22:35','汽车名称2','汽车类型2','品牌2','账号2','车牌号2',2,2,2,'押金2','2021-01-20','用户名2','姓名2','否','');
insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (53,'2021-01-20 17:22:35','汽车名称3','汽车类型3','品牌3','账号3','车牌号3',3,3,3,'押金3','2021-01-20','用户名3','姓名3','否','');
insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (54,'2021-01-20 17:22:35','汽车名称4','汽车类型4','品牌4','账号4','车牌号4',4,4,4,'押金4','2021-01-20','用户名4','姓名4','否','');
insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (55,'2021-01-20 17:22:35','汽车名称5','汽车类型5','品牌5','账号5','车牌号5',5,5,5,'押金5','2021-01-20','用户名5','姓名5','否','');
insert  into `jiechexinxi`(`id`,`addtime`,`qichemingcheng`,`qicheleixing`,`pinpai`,`zhanghao`,`chepaihao`,`shijiage`,`zulinshijian`,`zongjiage`,`yajin`,`zulinriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (56,'2021-01-20 17:22:35','汽车名称6','汽车类型6','品牌6','账号6','车牌号6',6,6,6,'押金6','2021-01-20','用户名6','姓名6','否','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (91,'2021-01-20 17:22:35','公告信息','http://localhost:8080/ssm73156/upload/news_picture1.jpg','<p>这里可以发布一些公告内容，比如谁今天借了什么车</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (92,'2021-01-20 17:22:35','标题2','http://localhost:8080/ssm73156/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (93,'2021-01-20 17:22:35','标题3','http://localhost:8080/ssm73156/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (94,'2021-01-20 17:22:35','标题4','http://localhost:8080/ssm73156/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (95,'2021-01-20 17:22:35','标题5','http://localhost:8080/ssm73156/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (96,'2021-01-20 17:22:35','标题6','http://localhost:8080/ssm73156/upload/news_picture6.jpg','内容6');

/*Table structure for table `qichexinxi` */

DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `qichebianhao` varchar(200) DEFAULT NULL COMMENT '汽车编号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shijiage` int(11) DEFAULT NULL COMMENT '时价格',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `chuzuzhuangtai` varchar(200) DEFAULT NULL COMMENT '出租状态',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichebianhao` (`qichebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

/*Data for the table `qichexinxi` */

insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (41,'2021-01-20 17:22:35','门店名称1','汽车编号1','汽车名称1','小轿车','品牌1','颜色1','车牌号1','http://localhost:8080/ssm73156/upload/qichexinxi_tupian1.jpg','<p>详情1</p>','地址1',1,'押金1','已出租','001');
insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (42,'2021-01-20 17:22:35','门店名称2','汽车编号2','汽车名称2','小轿车','品牌2','颜色2','车牌号2','http://localhost:8080/ssm73156/upload/qichexinxi_tupian2.jpg','详情2','地址2',2,'押金2','已出租','账号2');
insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (43,'2021-01-20 17:22:35','门店名称3','汽车编号3','汽车名称3','小轿车','品牌3','颜色3','车牌号3','http://localhost:8080/ssm73156/upload/qichexinxi_tupian3.jpg','详情3','地址3',3,'押金3','已出租','账号3');
insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (44,'2021-01-20 17:22:35','门店名称4','汽车编号4','汽车名称4','小轿车','品牌4','颜色4','车牌号4','http://localhost:8080/ssm73156/upload/qichexinxi_tupian4.jpg','详情4','地址4',4,'押金4','已出租','账号4');
insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (45,'2021-01-20 17:22:35','门店名称5','汽车编号5','汽车名称5','小轿车','品牌5','颜色5','车牌号5','http://localhost:8080/ssm73156/upload/qichexinxi_tupian5.jpg','详情5','地址5',5,'押金5','已出租','账号5');
insert  into `qichexinxi`(`id`,`addtime`,`mendianmingcheng`,`qichebianhao`,`qichemingcheng`,`qicheleixing`,`pinpai`,`yanse`,`chepaihao`,`tupian`,`xiangqing`,`dizhi`,`shijiage`,`yajin`,`chuzuzhuangtai`,`zhanghao`) values (46,'2021-01-20 17:22:35','门店名称6','汽车编号6','汽车名称6','小轿车','品牌6','颜色6','车牌号6','http://localhost:8080/ssm73156/upload/qichexinxi_tupian6.jpg','详情6','地址6',6,'押金6','已出租','账号6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ukbfmwrcea3i6t5v6m8fxurhujqwclac','2021-01-20 17:24:41','2021-01-20 18:24:42');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'001','zhandianguanliyuan','站点管理员','sebvsy2ugb03zqj9poejai7u71qyuhcv','2021-01-20 17:25:08','2021-01-20 18:25:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-20 17:22:35');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-01-20 17:22:35','001','001','姓名1','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (12,'2021-01-20 17:22:35','用户2','123456','姓名2','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (13,'2021-01-20 17:22:35','用户3','123456','姓名3','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (14,'2021-01-20 17:22:35','用户4','123456','姓名4','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (15,'2021-01-20 17:22:35','用户5','123456','姓名5','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (16,'2021-01-20 17:22:35','用户6','123456','姓名6','男','http://localhost:8080/ssm73156/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

/*Table structure for table `zhandianguanliyuan` */

DROP TABLE IF EXISTS `zhandianguanliyuan`;

CREATE TABLE `zhandianguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='站点管理员';

/*Data for the table `zhandianguanliyuan` */

insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (21,'2021-01-20 17:22:35','001','001','姓名1','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang1.jpg','13823888881','地址1');
insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (22,'2021-01-20 17:22:35','站点管理员2','123456','姓名2','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang2.jpg','13823888882','地址2');
insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (23,'2021-01-20 17:22:35','站点管理员3','123456','姓名3','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang3.jpg','13823888883','地址3');
insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (24,'2021-01-20 17:22:35','站点管理员4','123456','姓名4','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang4.jpg','13823888884','地址4');
insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (25,'2021-01-20 17:22:35','站点管理员5','123456','姓名5','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang5.jpg','13823888885','地址5');
insert  into `zhandianguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`) values (26,'2021-01-20 17:22:35','站点管理员6','123456','姓名6','男','http://localhost:8080/ssm73156/upload/zhandianguanliyuan_touxiang6.jpg','13823888886','地址6');

/*Table structure for table `zujiedian` */

DROP TABLE IF EXISTS `zujiedian`;

CREATE TABLE `zujiedian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='租借点';

/*Data for the table `zujiedian` */

insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (31,'2021-01-20 17:22:35','门店名称1','http://localhost:8080/ssm73156/upload/zujiedian_tupian1.jpg','服务时间1','020-89819991','详细地址1','001','姓名1');
insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (32,'2021-01-20 17:22:35','门店名称2','http://localhost:8080/ssm73156/upload/zujiedian_tupian2.jpg','服务时间2','020-89819992','详细地址2','账号2','姓名2');
insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (33,'2021-01-20 17:22:35','门店名称3','http://localhost:8080/ssm73156/upload/zujiedian_tupian3.jpg','服务时间3','020-89819993','详细地址3','账号3','姓名3');
insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (34,'2021-01-20 17:22:35','门店名称4','http://localhost:8080/ssm73156/upload/zujiedian_tupian4.jpg','服务时间4','020-89819994','详细地址4','账号4','姓名4');
insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (35,'2021-01-20 17:22:35','门店名称5','http://localhost:8080/ssm73156/upload/zujiedian_tupian5.jpg','服务时间5','020-89819995','详细地址5','账号5','姓名5');
insert  into `zujiedian`(`id`,`addtime`,`mendianmingcheng`,`tupian`,`fuwushijian`,`zixundianhua`,`xiangxidizhi`,`zhanghao`,`xingming`) values (36,'2021-01-20 17:22:35','门店名称6','http://localhost:8080/ssm73156/upload/zujiedian_tupian6.jpg','服务时间6','020-89819996','详细地址6','账号6','姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
