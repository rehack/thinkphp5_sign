/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.53 : Database - signin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`signin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `signin`;

/*Table structure for table `signin_admin` */

DROP TABLE IF EXISTS `signin_admin`;

CREATE TABLE `signin_admin` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '状态',
  `level` tinyint(4) unsigned DEFAULT NULL,
  `prem` varchar(20) NOT NULL COMMENT '拥有的菜单权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `signin_admin` */

insert  into `signin_admin`(`id`,`username`,`password`,`status`,`level`,`prem`) values (1,'admin','c3284d0f94606de1fd2af172aba15bf3',1,1,'1,10,16'),(3,'test','14e1b600b1fd579f47433b88e8d85291',1,1,'1'),(5,'suadmin','c3284d0f94606de1fd2af172aba15bf3',1,1,'1,10,16'),(4,'credit','14e1b600b1fd579f47433b88e8d85291',1,1,'10');

/*Table structure for table `signin_menu` */

DROP TABLE IF EXISTS `signin_menu`;

CREATE TABLE `signin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `signin_menu` */

insert  into `signin_menu`(`id`,`menuname`,`icon`,`url`,`pid`) values (1,'签到管理','credit-card','',0),(3,'客户列表','plus','/admin/all/',1),(2,'新增客户','user-plus','/admin/useradd/',1);

/*Table structure for table `signin_users` */

DROP TABLE IF EXISTS `signin_users`;

CREATE TABLE `signin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL COMMENT '签到客户姓名',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别',
  `telephone` char(11) NOT NULL COMMENT '手机号',
  `signin` tinyint(5) unsigned NOT NULL DEFAULT '2' COMMENT '签到状态0未签到1已签到',
  `comment` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '登记时间',
  `signin_time` int(11) unsigned DEFAULT NULL COMMENT '签到时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel` (`telephone`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `signin_users` */

insert  into `signin_users`(`id`,`name`,`sex`,`telephone`,`signin`,`comment`,`create_time`,`signin_time`,`update_time`) values (45,'2',1,'13466663321',2,'df9',1480649280,NULL,1480820778),(46,'u',2,'13666655522',1,'没空',1480650419,1481102867,1480917426),(47,'y',1,'13666622211',2,'没有update_time',1480650578,NULL,NULL),(48,'tt',1,'13699996663',1,'782rr他',1480650726,1481102865,1480758318),(52,'马蓉',2,'13877774452',2,'达到的接撒打开撒 的挥洒接电话撒撒的谎撒谎的 大俗就看撒谎的爱上的能力啥的萨达哈撒10大坏蛋爱上',1480901219,NULL,1480917411),(53,'林妙可',1,'13633332659',2,'O(∩_∩)O嗯!',1480917285,NULL,1480917436),(54,'333w',2,'13265485555',2,'',1480929799,NULL,1480929799),(55,'2211',1,'13655556666',2,'',1480929846,NULL,1480929846);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
