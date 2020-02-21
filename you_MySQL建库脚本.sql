# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.28)
# Database: you
# Generation Time: 2020-02-21 05:32:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table MonthReportYYYY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MonthReportYYYY`;

CREATE TABLE `MonthReportYYYY` (
  `DataDateTime` date NOT NULL DEFAULT '1900-01-01' COMMENT '数据日期',
  `YearDate` smallint(4) NOT NULL DEFAULT '0' COMMENT '业务年',
  `WeekNumDate` smallint(4) NOT NULL DEFAULT '0' COMMENT '业务周',
  `WeekDayDate` smallint(4) NOT NULL DEFAULT '0' COMMENT '业务星期',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `UserName` varchar(30) NOT NULL DEFAULT '',
  `IsDelete` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除 / 1:已删除)',
  `AddTime` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '添加时间',
  `ModifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间(CURRENT_TIMESTAMP)',
  PRIMARY KEY (`UserId`,`DataDateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户月报表:';



# Dump of table Stat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Stat`;

CREATE TABLE `Stat` (
  `datetime` date NOT NULL COMMENT '数据日期',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `count` int(11) NOT NULL COMMENT '访问次数',
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`,`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table StatMonth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `StatMonth`;

CREATE TABLE `StatMonth` (
  `DataDateTime` date NOT NULL DEFAULT '1900-01-01' COMMENT '数据日期',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `UserName` varchar(30) NOT NULL DEFAULT '',
  `IsDelete` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除 / 1:已删除)',
  `AddTime` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '添加时间',
  `ModifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间(CURRENT_TIMESTAMP)',
  PRIMARY KEY (`UserId`,`DataDateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户统计月报表:';



# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `age` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  KEY `User_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
