/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.53 : Database - db_wszy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_wszy` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_wszy`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`userId`,`userName`,`userPw`) values 
(4,'admin','admin');

/*Table structure for table `t_banji` */


/*Table structure for table `t_doc` */

DROP TABLE IF EXISTS `t_doc`;

CREATE TABLE `t_doc` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_doc` */

insert  into `t_doc`(`id`,`title`,`content`,`fujian`,`fujianYuanshiming`,`shijian`,`del`) values 
('1303840052437','最新大学英语六级全真题精讲（第2版）','最新大学英语六级全真题精讲（第2版）','/upload/1303840048468.doc','教学资料.doc','2012-03-21 10:10:14','no'),
('1303840161062','2011考研计算机全真模拟试题 ','2011考研计算机全真模拟试题 ','/upload/1303840048468.doc','教学资料.doc','2012-03-21 10:10:14','no'),
('1304388624281','星火英语职场应急系列-接待英语 ','星火英语职场应急系列-接待英语 ','/upload/1303840048468.doc','教学资料.doc','2012-03-21 10:10:14','no'),
('1304431525468','星火英语一天一场景-演示英语 ','请输入内容','/upload/1303840048468.doc','教学资料.doc','2012-03-21 10:10:14','no'),
('1304431562406','新概念英语第二册MP3音频','请输入内容','/upload/1303840048468.doc','教学资料.doc','2012-03-21 10:10:14','no');

/*Table structure for table `t_gonggao` */

DROP TABLE IF EXISTS `t_gonggao`;

CREATE TABLE `t_gonggao` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_gonggao` */

insert  into `t_gonggao`(`id`,`title`,`content`,`shijian`) values 
('1301780053187','公告公告公告公告公告公告','请输入内容','2012-03-21 10:10:14'),
('1301780374390','公告公告公告公告公告公告','请输入内容','2012-03-21 10:10:14'),
('1301781147750','公告公告公告公告公告公告','请输入内容','2012-03-21 10:10:14'),
('1301781150843','公告公告公告公告公告公告','请输入内容','2012-03-21 10:10:14'),
('1301781154078','公告公告公告公告公告公告','请输入内容','2012-03-21 10:10:14');

/*Table structure for table `t_liuyan` */

DROP TABLE IF EXISTS `t_liuyan`;

CREATE TABLE `t_liuyan` (
  `id` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_liuyan` */

insert  into `t_liuyan`(`id`,`title`,`content`,`shijian`) values 
('1332955077734','的的顶顶顶顶顶顶顶顶顶顶','<p>的的顶顶顶顶顶顶顶顶顶顶</p>','2012-3-29 1:17:57');

/*Table structure for table `t_stu` */

DROP TABLE IF EXISTS `t_stu`;

CREATE TABLE `t_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `banji_id` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_stu` */

insert  into `t_stu`(`id`,`xuehao`,`name1`,`sex`,`age`,`banji_id`,`loginpw`,`del`) values 
(1,'2009001','张三','男','22','1','000000','no'),
(2,'2009003','刘光强','男','22','1','000000','no');

/*Table structure for table `t_tea` */

DROP TABLE IF EXISTS `t_tea`;

CREATE TABLE `t_tea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_tea` */

insert  into `t_tea`(`id`,`bianhao`,`name`,`sex`,`age`,`loginpw`,`del`) values 
(1,'001','刘老师','男','55','000000','no'),
(2,'002','王老师','女','52','000000','no'),
(3,'003','王老师','男','11','000000','no');

/*Table structure for table `t_zuoye` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
