
CREATE DATABASE IF NOT EXISTS xiao DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS you DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;


USE xiao;
DROP TABLE IF EXISTS xiao.`User`;
CREATE TABLE xiao.`User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `age` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

LOCK TABLES xiao.`User` WRITE;
INSERT INTO xiao.`User` VALUES (1,'张三',18,1),(2,'李四',20,2),(3,'王五',30,1),(4,'周六',25,2),(5,'吴七',28,1);
UNLOCK TABLES;


USE you;
DROP TABLE IF EXISTS you.`Stat`;
CREATE TABLE you.`Stat` (
  `datetime` date NOT NULL COMMENT '数据日期',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `count` int(11) NOT NULL COMMENT '访问次数',
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`,`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS you.`User`;
CREATE TABLE you.`User` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `age` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  KEY `User_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

