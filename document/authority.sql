/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.7.17-log : Database - ecbiz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecbiz` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ecbiz`;

/*Table structure for table `sys_logs` */

DROP TABLE IF EXISTS `sys_logs`;

CREATE TABLE `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `oper_url` varchar(200) DEFAULT NULL,
  `describe` varchar(200) DEFAULT NULL,
  `Ip` varchar(30) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `sys_logs` */

insert  into `sys_logs`(`id`,`userId`,`oper_url`,`describe`,`Ip`,`created`,`userName`) values (40,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-10-08','master'),(41,NULL,'/power/list','菜单新增操作','127.0.0.1','2017-10-12','master'),(42,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-10-12','master'),(43,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-11-05','master'),(44,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-11-05','master'),(45,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-11-05','master'),(46,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-11-05','master'),(47,NULL,'/power/list','菜单删除操作','127.0.0.1','2017-11-05','master');

/*Table structure for table `sys_operation` */

DROP TABLE IF EXISTS `sys_operation`;

CREATE TABLE `sys_operation` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `STATE` char(1) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10031 DEFAULT CHARSET=utf8;

/*Data for the table `sys_operation` */

insert  into `sys_operation`(`ID`,`NAME`,`URL`,`DESCRIPTION`,`CREATE_TIME`,`STATE`) values (10003,'删除','11','111','2017-10-04','1'),(10004,'修改','2231','2231','2017-10-06','1'),(10011,'查询','11','11','2017-10-06','1'),(10017,'删除','1','删除','2017-10-06','1'),(10018,'修改','1','修改','2017-10-06','1'),(10019,'查询','1','查询','2017-10-06','1'),(10020,'分配角色','1','分配角色','2017-10-06','1'),(10022,'22','2','22','2017-10-06',NULL),(10025,'添加','','添加','2017-10-06','1'),(10026,'修改','','修改','2017-10-06','1'),(10027,'分配权限','','分配权限','2017-10-06','1'),(10028,'查询','','查询','2017-10-06','1'),(10030,'新增','新增','新增','2017-10-08','1');

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `RESOURCE_ID` bigint(10) DEFAULT NULL,
  `OPERATION_ID` bigint(10) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `IS_ADMIN` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100469 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`ID`,`RESOURCE_ID`,`OPERATION_ID`,`CREATE_TIME`,`IS_ADMIN`) values (100005,100001,10016,'2017-10-03','0'),(100006,100002,10016,'2017-10-03','0'),(100007,100003,10016,'2017-10-03','0'),(100402,100101,10016,NULL,NULL),(100403,100102,10016,NULL,NULL),(100404,100103,10016,NULL,NULL),(100405,100104,10003,NULL,NULL),(100406,100105,10016,NULL,NULL),(100407,100004,10004,NULL,NULL),(100408,100005,10016,NULL,NULL),(100409,100006,10004,NULL,NULL),(100410,100007,10016,NULL,NULL),(100411,100201,10004,NULL,NULL),(100412,100202,10016,NULL,NULL),(100413,100203,10003,NULL,NULL),(100414,100204,10016,NULL,NULL),(100415,100205,10016,NULL,NULL),(100416,100206,10003,NULL,NULL),(100417,100207,10003,NULL,NULL),(100418,100208,10016,NULL,NULL),(100419,100209,10016,NULL,NULL),(100420,100210,10016,NULL,NULL),(100421,100211,10016,NULL,NULL),(100422,100301,10016,NULL,NULL),(100423,100302,10016,NULL,NULL),(100424,100303,10016,NULL,NULL),(100425,100304,10016,NULL,NULL),(100426,100305,10016,NULL,NULL),(100427,100306,10016,NULL,NULL),(100428,100307,10016,NULL,NULL),(100429,100308,10016,NULL,NULL),(100430,100309,10016,NULL,NULL),(100432,100401,10016,NULL,NULL),(100433,100402,10016,NULL,NULL),(100435,100403,10016,NULL,NULL),(100436,100404,10016,NULL,NULL),(100437,100405,10016,NULL,NULL),(100438,100406,10016,NULL,NULL),(100439,100407,10016,NULL,NULL),(100441,100433,10016,NULL,NULL),(100452,100001,10017,NULL,NULL),(100454,100001,10018,NULL,NULL),(100455,100001,10019,NULL,NULL),(100456,100001,10020,NULL,NULL),(100458,100433,10022,NULL,NULL),(100460,100000,0,NULL,NULL),(100462,100002,10025,NULL,NULL),(100463,100002,10026,NULL,NULL),(100464,100002,10027,NULL,NULL),(100465,100002,10028,NULL,NULL),(100466,100434,NULL,NULL,NULL),(100468,100434,10030,NULL,NULL);

/*Table structure for table `sys_resource` */

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `OTHER_PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100435 DEFAULT CHARSET=utf8;

/*Data for the table `sys_resource` */

insert  into `sys_resource`(`ID`,`NAME`,`URL`,`PARENT_ID`,`DESCRIPTION`,`CREATE_TIME`,`STATE`,`OTHER_PARENT_ID`) values (100000,'系统管理','',0,NULL,'2017-09-15','1',0),(100001,'用户管理','sysuser/list',100000,NULL,'2017-09-15','1',NULL),(100002,'角色管理','sysrole/list',100000,NULL,'2017-09-15','1',NULL),(100003,'菜单管理','power/list',100000,NULL,'2017-09-15','1',NULL),(100004,'日志管理','product/list',100000,NULL,NULL,NULL,NULL),(100005,'系统日志','syslogs/list',100004,NULL,NULL,NULL,NULL),(100006,'清除日志','syslogs/logClear',100004,NULL,NULL,NULL,NULL),(100007,'系统监控','aml/sysmanage/systemControl.htm',100000,NULL,NULL,NULL,NULL),(100101,'会员购买分析','aml/statistics/infoStat.htm',100100,NULL,NULL,NULL,NULL),(100102,'会员购买排行','aml/statistics/personnelStat.htm',100100,NULL,NULL,NULL,NULL),(100103,'商品信息统计','product/list',100100,NULL,NULL,NULL,NULL),(100104,'商品销售排行','aml/statistics/nkzd.htm',100103,NULL,NULL,NULL,NULL),(100105,'销售明细统计','aml/statistics/jggw.htm',100103,NULL,NULL,NULL,NULL),(100201,'会员管理','product/list',100200,NULL,NULL,NULL,NULL),(100202,'写信息','product/list',100200,NULL,NULL,NULL,NULL),(100203,'黑名单','product/list',100200,NULL,NULL,NULL,NULL),(100204,'会员查询','product/list',100201,NULL,NULL,NULL,NULL),(100205,'会员等级','product/list',100201,NULL,NULL,NULL,NULL),(100206,'会员分组','product/list',100201,NULL,NULL,NULL,NULL),(100207,'收件夹','product/list',100202,NULL,NULL,NULL,NULL),(100208,'发件夹','product/list',100202,NULL,NULL,NULL,NULL),(100209,'关注名单','product/list',100203,NULL,NULL,NULL,NULL),(100210,'重点关注名单','product/list',100203,NULL,NULL,NULL,NULL),(100211,'非法名单','product/list',100203,NULL,NULL,NULL,NULL),(100301,'商城订单','trade/list',100300,NULL,NULL,NULL,NULL),(100302,'退换货处理','trade/list',100300,NULL,NULL,NULL,NULL),(100303,'凭证管理','product/list',100300,NULL,NULL,NULL,NULL),(100304,'服务码管理','product/list',100300,NULL,NULL,NULL,NULL),(100305,'退货单','trade/list',100302,NULL,NULL,NULL,NULL),(100306,'换货单','trade/list',100302,NULL,NULL,NULL,NULL),(100307,'订单支付凭证','product/list',100303,NULL,NULL,NULL,NULL),(100308,'服务码查询','product/list',100304,NULL,NULL,NULL,NULL),(100309,'服务码补发','product/list',100304,NULL,NULL,NULL,NULL),(100401,'商品发布','productinfo/list',100400,NULL,NULL,NULL,NULL),(100402,'基础信息','',100400,NULL,NULL,NULL,NULL),(100403,'商品分类','productcategory/list',100402,NULL,NULL,NULL,NULL),(100404,'品牌管理','productbrand/list',100402,NULL,NULL,NULL,NULL),(100405,'厂商信息','productcompany/list',100402,NULL,NULL,NULL,NULL),(100406,'规格管理','paramConfig/edit',100402,NULL,NULL,NULL,NULL),(100407,'商品图片','product/list',100402,NULL,NULL,NULL,NULL),(100433,'测试菜单2','product/list',100432,'333','2017-10-04',NULL,NULL),(100434,'88889','88889',100432,'8888','2017-10-08',NULL,NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `r_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `r_name` varchar(10) DEFAULT NULL COMMENT '角色名称',
  `describe` varchar(20) DEFAULT NULL COMMENT '角色描述',
  `operator` varchar(20) DEFAULT NULL COMMENT '登记人',
  `created` date DEFAULT NULL COMMENT '登记日期',
  `permissions` varchar(60) DEFAULT NULL COMMENT '权限集合',
  `note` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`r_id`,`r_name`,`describe`,`operator`,`created`,`permissions`,`note`) values (1,'系统管理员','系统管理员',NULL,'2017-08-20',NULL,'2222'),(2,'333','3',NULL,'2017-08-20',NULL,'33333'),(3,'232','232',NULL,'2017-08-20',NULL,'2323232'),(4,NULL,NULL,NULL,'2017-10-06',NULL,NULL),(5,'777','777',NULL,'2017-10-08',NULL,'77'),(6,'论文案例测试角色','论文案例测试角色',NULL,'2017-10-12',NULL,'论文案例测试角色');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  `PERMISSION_ID` bigint(20) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`ID`,`ROLE_ID`,`PERMISSION_ID`,`CREATE_TIME`) values (1,5,100452,'2017-10-08'),(2,5,100454,'2017-10-08'),(3,5,100455,'2017-10-08'),(4,5,100456,'2017-10-08'),(5,5,100462,'2017-10-08'),(6,5,100463,'2017-10-08'),(7,5,100464,'2017-10-08'),(8,5,100465,'2017-10-08'),(9,5,100407,'2017-10-08'),(10,5,100409,'2017-10-08'),(11,5,100405,'2017-10-08'),(12,5,100411,'2017-10-08'),(13,5,100416,'2017-10-08'),(14,5,100417,'2017-10-08'),(15,5,100413,'2017-10-08');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `uid` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uname` varchar(10) DEFAULT NULL COMMENT '用户名',
  `password` varchar(10) DEFAULT NULL COMMENT '密码',
  `name` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `organization` varchar(10) DEFAULT NULL COMMENT '所属机构',
  `r_id` varchar(10) DEFAULT NULL COMMENT '角色id',
  `r_name` varchar(10) DEFAULT NULL COMMENT '角色名称',
  `operator` varchar(10) DEFAULT NULL COMMENT '创建人员',
  `tel` varchar(12) DEFAULT NULL COMMENT '联系电话',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `created` date DEFAULT NULL COMMENT '创建时间',
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`uid`,`uname`,`password`,`name`,`organization`,`r_id`,`r_name`,`operator`,`tel`,`status`,`created`,`note`) values (1,'111','11','11','山东省','',NULL,'11','222','注销','2017-10-02','21'),(2,'222','111','22','山东省','',NULL,'22','22','','2017-10-02','221'),(3,'111',NULL,'11','山东省','业务人员',NULL,'111','111111','注销','2017-08-20','22'),(4,'111',NULL,'11','山东省','业务人员',NULL,'111','111','启用','2017-08-20','2'),(5,'122',NULL,'22','山东省','总局人员',NULL,'22','222','启用','2017-08-20','2'),(6,'214324',NULL,'234','山东省','业务人员',NULL,'234234','23432','启用','2017-08-20','2'),(7,'24242',NULL,'2424','山东省','业务人员',NULL,'24242','24242','启用','2017-08-20','2'),(8,'2232',NULL,'232','山东省','业务人员',NULL,'23232','232323','启用','2017-08-20','2'),(9,'23232',NULL,'232','山东省','总局人员',NULL,'23232','232323','启用','2017-08-20','22'),(10,'232',NULL,'23232','山东省','业务人员',NULL,'232','23232','启用','2017-08-20','2'),(11,'23232',NULL,'232','山东省','业务人员',NULL,'23232','23232','启用','2017-08-20','2'),(12,'3434',NULL,'343','山东省','业务人员',NULL,'343','3434','启用','2017-08-20','2'),(13,'11','11','11','山东省','业务人员',NULL,'11','11','启用','2017-10-02','2'),(14,'11','11','11','山东省','总局人员',NULL,'11','11','启用','2017-10-02','2'),(15,'11','11','11','山东省','',NULL,'11','11','','2017-10-02',NULL),(16,'23232','11','232','山东省','',NULL,'23232','23232','','2017-10-02','2'),(17,'111',NULL,'11','山东省','',NULL,'11','','','2017-10-02','2'),(18,'111','11','11','山东省','',NULL,'11','','','2017-10-02','2'),(19,'111','11','11','山东省','',NULL,'11','','','2017-10-02','2'),(20,'111',NULL,'11','山东省','',NULL,'11','11','注销','2017-10-02','211'),(21,'111','11','11','山东省','',NULL,'11','','','2017-10-02','2'),(22,'111','','11','山东省','',NULL,'11','','','2017-10-02','2'),(23,'master','123','管理员','山东省','总局人员',NULL,'孟','13233333333','启用','2017-10-08','超级管理员账号.master/123'),(24,'7888','99','999','山东省','总局人员',NULL,'i999','777','启用','2017-10-08','999'),(25,'论文测试用例用户','1','张三','山东省','总局人员',NULL,'1','13261962725','','2017-10-12','论文测试用例用户');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `r_u_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `r_id` bigint(10) DEFAULT NULL,
  `u_id` bigint(10) DEFAULT NULL,
  `r_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`r_u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`r_u_id`,`r_id`,`u_id`,`r_name`) values (11,1,1,NULL),(12,2,1,NULL),(13,1,2,NULL),(14,2,2,NULL),(15,3,1,NULL),(16,1,3,NULL),(17,2,3,NULL),(18,3,3,NULL),(19,1,23,'系统管理员'),(20,1,24,'系统管理员'),(21,6,21,'论文案例测试角色');

/*Table structure for table `system_users` */

DROP TABLE IF EXISTS `system_users`;

CREATE TABLE `system_users` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) DEFAULT NULL,
  `user_password` varchar(60) DEFAULT NULL,
  `nickname` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `login_ip` varchar(60) DEFAULT NULL,
  `add_time` date DEFAULT NULL,
  `login_time` date DEFAULT NULL,
  `role_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
