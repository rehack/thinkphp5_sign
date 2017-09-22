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

insert  into `signin_admin`(`id`,`username`,`password`,`status`,`level`,`prem`) values (1,'admin','c3284d0f94606de1fd2af172aba15bf3',1,1,'1,34'),(3,'test','14e1b600b1fd579f47433b88e8d85291',1,1,'1'),(5,'suadmin','c3284d0f94606de1fd2af172aba15bf3',1,1,'1,10,16'),(4,'credit','14e1b600b1fd579f47433b88e8d85291',1,1,'10');

/*Table structure for table `signin_lucky` */

DROP TABLE IF EXISTS `signin_lucky`;

CREATE TABLE `signin_lucky` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(3) unsigned zerofill NOT NULL COMMENT '客户编号',
  `islucky` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '中奖状态1中奖2未中奖',
  `lun` varchar(255) DEFAULT NULL COMMENT '中奖轮次',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用0不启用1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;

/*Data for the table `signin_lucky` */

insert  into `signin_lucky`(`id`,`num`,`islucky`,`lun`,`status`) values (1,001,2,NULL,1),(2,002,2,NULL,1),(3,003,2,NULL,1),(4,004,2,NULL,1),(5,005,2,NULL,1),(6,006,2,NULL,1),(7,007,2,NULL,1),(8,008,2,NULL,1),(9,009,2,NULL,1),(10,010,2,NULL,1),(11,011,2,NULL,1),(12,012,2,NULL,1),(13,013,2,NULL,1),(14,014,2,NULL,1),(15,015,1,'1',1),(16,016,1,'1',1),(17,017,1,'1',1),(18,018,2,NULL,1),(19,019,2,NULL,1),(20,020,1,'1',1),(21,021,2,NULL,1),(22,022,2,NULL,1),(23,023,2,NULL,1),(24,024,2,NULL,1),(26,026,1,'1',1),(27,027,2,NULL,1),(28,028,2,NULL,1),(29,029,1,'1',1),(30,030,2,NULL,1),(31,031,1,'1',1),(32,032,1,'1',1),(33,033,2,NULL,1),(34,034,1,'1',1),(35,035,2,NULL,1),(36,036,1,'1',1),(37,037,1,'1',1),(38,038,2,NULL,1),(39,039,2,NULL,1),(40,040,2,NULL,1),(41,041,2,NULL,1),(42,042,2,NULL,1),(43,043,2,NULL,1),(44,044,2,NULL,1),(45,045,1,'1',1),(46,046,1,'1',1),(47,047,1,'1',1),(48,048,2,NULL,1),(49,049,1,'1',1),(51,051,1,'1',1),(52,052,2,NULL,1),(53,053,2,NULL,1),(54,054,2,NULL,1),(55,055,2,NULL,1),(56,056,2,NULL,1),(57,057,2,NULL,1),(58,058,2,NULL,1),(59,059,2,NULL,1),(60,060,2,NULL,1),(61,061,1,'1',1),(62,062,2,NULL,1),(63,063,2,NULL,1),(64,064,2,NULL,1),(65,065,2,NULL,1),(66,066,2,NULL,1),(67,067,2,NULL,1),(68,068,1,'1',1),(69,069,1,'1',1),(70,070,2,NULL,1),(71,071,2,NULL,1),(72,072,2,NULL,1),(73,073,1,'1',1),(74,074,2,NULL,1),(76,076,1,'1',1),(77,077,2,NULL,1),(78,078,2,NULL,1),(79,079,1,'1',1),(80,080,1,'1',1),(81,081,1,'1',1),(82,082,2,NULL,1),(83,083,2,NULL,1),(84,084,2,NULL,1),(85,085,2,NULL,1),(86,086,1,'1',1),(87,087,2,NULL,1),(88,088,2,NULL,1),(89,089,2,NULL,1),(90,090,2,NULL,1),(91,091,1,'1',1),(92,092,2,NULL,1),(93,093,2,NULL,1),(94,094,2,NULL,1),(95,095,2,NULL,1),(96,096,1,'1',1),(97,097,1,'1',1),(98,098,2,NULL,1),(99,099,2,NULL,1),(101,101,2,NULL,1),(102,102,2,NULL,1),(103,103,2,NULL,1),(104,104,1,'1',1),(105,105,2,NULL,1),(106,106,2,NULL,1),(107,107,2,NULL,1),(108,108,2,NULL,1),(109,109,2,NULL,1),(110,110,2,NULL,1),(111,111,1,'1',1),(112,112,2,NULL,1),(113,113,2,NULL,1),(114,114,2,NULL,1),(115,115,2,NULL,1),(116,116,1,'1',1),(117,117,1,'1',1),(118,118,1,'1',1),(119,119,2,NULL,1),(120,120,2,NULL,1),(121,121,2,NULL,1),(122,122,2,NULL,1),(123,123,2,NULL,1),(124,124,1,'1',1),(126,126,2,NULL,1),(127,127,1,'1',1),(128,128,1,'1',1),(129,129,2,NULL,1),(130,130,1,'1',1),(131,131,1,'1',1),(132,132,1,'1',1),(133,133,2,NULL,1),(134,134,1,'1',1),(135,135,2,NULL,1),(136,136,2,NULL,1),(137,137,2,NULL,1),(138,138,2,NULL,1),(139,139,2,NULL,1),(140,140,1,'1',1),(141,141,1,'1',1),(142,142,2,NULL,1),(143,143,2,NULL,1),(144,144,2,NULL,1),(145,145,2,NULL,1),(146,146,2,NULL,1),(147,147,2,NULL,1),(148,148,2,NULL,1),(149,149,1,'1',1),(151,151,1,'1',1),(152,152,1,'1',1),(153,153,2,NULL,1),(154,154,2,NULL,1),(155,155,2,NULL,1),(156,156,2,NULL,1),(157,157,2,NULL,1),(158,158,2,NULL,1),(159,159,1,'1',1),(160,160,1,'1',1),(161,161,1,'1',1),(162,162,1,'1',1),(163,163,2,NULL,1),(164,164,1,'1',1),(165,165,2,NULL,1),(166,166,2,NULL,1),(167,167,1,'1',1),(168,168,2,NULL,1),(169,169,2,NULL,1),(170,170,1,'1',1),(171,171,2,NULL,1),(172,172,1,'1',1),(173,173,1,'1',1),(174,174,2,NULL,1),(176,176,1,'1',1),(177,177,2,NULL,1),(178,178,2,NULL,1),(179,179,2,NULL,1),(180,180,1,'1',1),(181,181,2,NULL,1),(182,182,2,NULL,1),(183,183,2,NULL,1),(184,184,1,'1',1),(185,185,2,NULL,1),(186,186,2,NULL,1),(187,187,1,'1',1),(188,188,2,NULL,1),(189,189,2,NULL,1),(190,190,2,NULL,1),(191,191,2,NULL,1),(192,192,1,'1',1),(193,193,1,'1',1),(194,194,1,'1',1),(195,195,2,NULL,1),(196,196,1,'1',1),(197,197,2,NULL,1),(198,198,1,'1',1),(199,199,2,NULL,1),(201,201,2,NULL,1),(202,202,2,NULL,1),(203,203,1,'1',1),(204,204,1,'1',1),(205,205,2,NULL,1),(206,206,2,NULL,1),(207,207,2,NULL,1),(208,208,2,NULL,1),(209,209,1,'1',1),(210,210,1,'1',1),(211,211,2,NULL,1),(212,212,2,NULL,1),(213,213,2,NULL,1),(214,214,1,'1',1),(215,215,2,NULL,1),(216,216,1,'1',1),(217,217,2,NULL,1),(218,218,2,NULL,1),(219,219,2,NULL,1),(220,220,2,NULL,1),(221,221,1,'1',1),(222,222,2,NULL,1),(223,223,2,NULL,1),(224,224,1,'1',1),(226,226,2,NULL,1),(227,227,2,NULL,1),(228,228,2,NULL,1),(229,229,2,NULL,1),(230,230,1,'1',1),(231,231,2,NULL,1),(232,232,1,'1',1),(233,233,2,NULL,1),(234,234,2,NULL,1),(235,235,1,'1',1),(236,236,2,NULL,1),(237,237,1,'1',1),(238,238,1,'1',1),(239,239,2,NULL,1),(240,240,2,NULL,1),(241,241,2,NULL,1),(242,242,1,'1',1),(243,243,2,NULL,1),(244,244,1,'1',1),(245,245,1,'1',1),(246,246,2,NULL,1),(247,247,1,'1',1),(248,248,2,NULL,1),(249,249,1,'1',1),(251,251,1,'1',1),(252,252,1,'1',1),(253,253,2,NULL,1),(254,254,2,NULL,1),(255,255,1,'1',1),(256,256,2,NULL,1),(257,257,2,NULL,1),(258,258,1,'1',1),(259,259,2,NULL,1),(260,260,2,NULL,1),(261,261,2,NULL,1),(262,262,2,NULL,1),(263,263,2,NULL,1),(264,264,2,NULL,1),(265,265,1,'1',1),(266,266,1,'1',1),(267,267,2,NULL,1),(268,268,2,NULL,1),(269,269,2,NULL,1),(270,270,1,'1',1),(271,271,2,NULL,1),(272,272,2,NULL,1),(273,273,2,NULL,1),(274,274,2,NULL,1),(276,276,1,'1',1),(277,277,1,'1',1),(278,278,1,'1',1),(279,279,1,'1',1),(280,280,1,'1',1),(281,281,1,'1',1),(282,282,2,NULL,1),(283,283,1,'1',1),(284,284,1,'1',1),(285,285,2,NULL,1),(286,286,2,NULL,1),(287,287,1,'1',1),(288,288,2,NULL,1),(289,289,1,'1',1),(290,290,2,NULL,1),(291,291,2,NULL,1),(292,292,2,NULL,1),(293,293,2,NULL,1),(294,294,2,NULL,1),(295,295,2,NULL,1),(296,296,2,NULL,1),(297,297,1,'1',1),(298,298,2,NULL,1),(299,299,2,NULL,1),(301,301,2,NULL,1),(302,302,1,'1',1),(303,303,2,NULL,1),(304,304,1,'1',1),(305,305,1,'1',1),(306,306,2,NULL,1),(307,307,1,'1',1),(308,308,1,'1',1),(309,309,2,NULL,1),(310,310,2,NULL,1),(311,311,1,'1',1),(312,312,2,NULL,1),(313,313,1,'1',1),(314,314,1,'1',1),(315,315,2,NULL,1),(316,316,2,NULL,1),(317,317,2,NULL,1),(318,318,1,'1',1),(319,319,2,NULL,1),(320,320,2,NULL,1),(321,321,2,NULL,1),(322,322,2,NULL,1),(323,323,1,'1',1),(324,324,2,NULL,1),(326,326,2,NULL,1),(327,327,2,NULL,1),(328,328,1,'1',1),(329,329,1,'1',1),(330,330,2,NULL,1),(331,331,1,'1',1),(332,332,2,NULL,1),(333,333,1,'1',1),(334,334,1,'1',1),(335,335,2,NULL,1),(336,336,2,NULL,1),(337,337,1,'1',1),(338,338,2,NULL,1),(339,339,2,NULL,1),(340,340,2,NULL,1),(341,341,1,'1',1),(342,342,2,NULL,1),(343,343,2,NULL,1),(344,344,2,NULL,1),(345,345,2,NULL,1),(346,346,1,'1',1),(347,347,1,'1',1),(348,348,1,'1',1),(349,349,2,NULL,1),(351,351,2,NULL,1),(352,352,1,'1',1),(353,353,1,'1',1),(354,354,1,'1',1),(355,355,1,'1',1),(356,356,1,'1',1),(357,357,2,NULL,1),(358,358,2,NULL,1),(359,359,2,NULL,1),(360,360,2,NULL,1),(361,361,2,NULL,1),(362,362,2,NULL,1),(363,363,2,NULL,1),(364,364,2,NULL,1),(365,365,1,'1',1),(366,366,2,NULL,1),(367,367,2,NULL,1),(368,368,2,NULL,1),(369,369,2,NULL,1),(370,370,2,NULL,1),(371,371,2,NULL,1),(372,372,2,NULL,1),(373,373,1,'1',1),(374,374,1,'1',1),(376,376,1,'1',1),(377,377,2,NULL,1),(378,378,1,'1',1),(379,379,1,'1',1),(380,380,2,NULL,1),(381,381,1,'1',1),(382,382,2,NULL,1),(383,383,1,'1',1),(384,384,2,NULL,1),(385,385,2,NULL,1),(386,386,2,NULL,1),(387,387,2,NULL,1),(388,388,2,NULL,1),(389,389,2,NULL,1),(390,390,1,'1',1),(391,391,2,NULL,1),(392,392,2,NULL,1),(393,393,2,NULL,1),(394,394,1,'1',1),(395,395,1,'1',1),(396,396,2,NULL,1),(397,397,2,NULL,1),(398,398,2,NULL,1),(399,399,1,'1',1),(401,401,2,NULL,1),(402,402,2,NULL,1),(403,403,1,'1',1),(404,404,1,'1',1),(405,405,2,NULL,1),(406,406,2,NULL,1),(407,407,2,NULL,1),(408,408,2,NULL,1),(409,409,2,NULL,1),(410,410,1,'1',1),(411,411,2,NULL,1),(412,412,1,'1',1),(413,413,2,NULL,1),(414,414,2,NULL,1),(415,415,2,NULL,1),(416,416,1,'1',1),(417,417,2,NULL,1),(418,418,2,NULL,1),(419,419,2,NULL,1),(420,420,2,NULL,1),(421,421,1,'1',1),(422,422,2,NULL,1),(423,423,2,NULL,1),(424,424,2,NULL,1),(426,426,1,'1',1),(427,427,2,NULL,1),(428,428,1,'1',1),(429,429,2,NULL,1),(430,430,2,NULL,1),(431,431,2,NULL,1),(432,432,2,NULL,1),(433,433,2,NULL,1),(434,434,2,NULL,1),(435,435,1,'1',1),(436,436,2,NULL,1),(437,437,1,'1',1),(438,438,1,'1',1),(439,439,2,NULL,1),(440,440,1,'1',1),(441,441,2,NULL,1),(442,442,1,'1',1),(443,443,2,NULL,1),(444,444,2,NULL,1),(445,445,2,NULL,1),(446,446,2,NULL,1),(447,447,1,'1',1),(448,448,2,NULL,1),(449,449,2,NULL,1);

/*Table structure for table `signin_menu` */

DROP TABLE IF EXISTS `signin_menu`;

CREATE TABLE `signin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `signin_menu` */

insert  into `signin_menu`(`id`,`menuname`,`icon`,`url`,`pid`) values (1,'签到管理','credit-card','',0),(3,'客户列表','plus','/admin/all/',1),(2,'新增客户','user-plus','/admin/useradd/',1),(34,'抽奖系统','user-plus','',0),(35,'抽奖管理','user-plus','/admin/lucky/',34),(36,'参数设置',NULL,'/admin/lucky/confshow',34),(37,'拍照签到','user-plus','',1);

/*Table structure for table `signin_uploads` */

DROP TABLE IF EXISTS `signin_uploads`;

CREATE TABLE `signin_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sign_num` smallint(4) unsigned NOT NULL,
  `img_url` varchar(765) NOT NULL,
  `self_lucky_turn` tinyint(3) unsigned DEFAULT NULL,
  `luckied_turn` tinyint(3) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`sign_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `signin_uploads` */

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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Data for the table `signin_users` */

insert  into `signin_users`(`id`,`name`,`sex`,`telephone`,`signin`,`comment`,`create_time`,`signin_time`,`update_time`) values (58,'007',1,'13655551102',1,'股份的股份',1481868449,1481868462,1481868531),(47,'y',1,'13666622211',2,'没有update_time',1480650578,NULL,NULL),(48,'tt',1,'13699996663',1,'782rr他',1480650726,1481102865,1480758318),(52,'马蓉',2,'13877774452',2,'达到的接撒打开撒 的挥洒接电话撒撒的谎撒谎的 大俗就看撒谎的爱上的能力啥的萨达哈撒10大坏蛋爱上',1480901219,NULL,1480917411),(54,'333w',2,'13265485555',2,'',1480929799,NULL,1480929799),(57,'src',1,'13666662201',2,'ff2',1481858336,NULL,1481858336),(55,'2211',1,'13655556666',1,'',1480929846,1481795467,1480929846),(56,'王DOe',2,'13633332214',2,'达到i',1481104493,NULL,1481795505);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
