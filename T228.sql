/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t228`;
CREATE DATABASE IF NOT EXISTS `t228` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t228`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-05 06:48:44'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-05 06:48:44'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-05 06:48:44'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-05 06:48:44'),
	(5, 'yaofang_types', '药方类型', 1, '药方类型1', NULL, NULL, '2022-04-05 06:48:44'),
	(6, 'yaofang_types', '药方类型', 2, '药方类型2', NULL, NULL, '2022-04-05 06:48:44'),
	(7, 'yaofang_types', '药方类型', 3, '药方类型3', NULL, NULL, '2022-04-05 06:48:44'),
	(8, 'yaofang_types', '药方类型', 4, '药方类型4', NULL, NULL, '2022-04-05 06:48:44'),
	(9, 'jixing_types', '剂型', 1, '丸剂', NULL, NULL, '2022-04-05 06:48:44'),
	(10, 'jixing_types', '剂型', 2, '散剂', NULL, NULL, '2022-04-05 06:48:44'),
	(11, 'jixing_types', '剂型', 3, '汤剂', NULL, NULL, '2022-04-05 06:48:44'),
	(12, 'yaofang_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-05 06:48:44'),
	(13, 'yaoshiliangyongyaocai_types', '药食两用药材类型', 1, '药食两用药材类型1', NULL, NULL, '2022-04-05 06:48:44'),
	(14, 'yaoshiliangyongyaocai_types', '药食两用药材类型', 2, '药食两用药材类型2', NULL, NULL, '2022-04-05 06:48:44'),
	(15, 'yaoshiliangyongyaocai_types', '药食两用药材类型', 3, '药食两用药材类型3', NULL, NULL, '2022-04-05 06:48:44'),
	(16, 'yaoshiliangyongyaocai_types', '药食两用药材类型', 4, '药食两用药材类型4', NULL, NULL, '2022-04-05 06:48:44'),
	(17, 'yaoshiliangyongyaocai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-05 06:48:44'),
	(18, 'wenzhang_types', '文章类型', 1, '文章类型1', NULL, NULL, '2022-04-05 06:48:44'),
	(19, 'wenzhang_types', '文章类型', 2, '文章类型2', NULL, NULL, '2022-04-05 06:48:44'),
	(20, 'wenzhang_types', '文章类型', 3, '文章类型3', NULL, NULL, '2022-04-05 06:48:44'),
	(21, 'wenzhang_types', '文章类型', 4, '文章类型4', NULL, NULL, '2022-04-05 06:48:44'),
	(22, 'wenzhang_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-05 06:48:44'),
	(23, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-04-05 06:48:45'),
	(24, 'single_seach_types', '单页数据类型', 2, '关于我们', NULL, NULL, '2022-04-05 06:48:45');

DROP TABLE IF EXISTS `fanyi`;
CREATE TABLE IF NOT EXISTS `fanyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fanyi_zhongwen_name` varchar(200) DEFAULT NULL COMMENT '中文 Search111 ',
  `fanyi_yingwen_name` varchar(200) DEFAULT NULL COMMENT '英文 Search111 ',
  `fanyi_content` text COMMENT '例句翻译 ',
  `fanyi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='中医翻译';

DELETE FROM `fanyi`;
INSERT INTO `fanyi` (`id`, `fanyi_zhongwen_name`, `fanyi_yingwen_name`, `fanyi_content`, `fanyi_delete`, `create_time`) VALUES
	(1, '中文1', '英文1', '例句翻译1', 1, '2022-04-05 06:50:59'),
	(2, '中文2', '英文2', '例句翻译2', 1, '2022-04-05 06:50:59'),
	(3, '中文3', '英文3', '例句翻译3', 1, '2022-04-05 06:50:59'),
	(4, '中文4', '英文4', '例句翻译4', 1, '2022-04-05 06:50:59'),
	(5, '中文5', '英文5;英文222;英文33;', '<p>例句翻译5</p>', 1, '2022-04-05 06:50:59');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '网站介绍', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍</p>', '2022-04-05 07:07:29'),
	(2, '关于我们', 2, '<p>关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于<span style="background-color: rgba(245, 247, 250, 0.114); color: rgb(96, 98, 102);">关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们</span>我们关于我们关于我们关于我们关于我们关于我们关于我们</p>', '2022-04-05 07:07:40');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'l1tcnvx0vo2ul39k91e9yk3jhhwbygn8', '2022-04-05 07:06:49', '2024-06-10 06:37:40'),
	(2, 1, 'a1', 'yonghu', '用户', 'ebfnilab57czvog47lm43ezj7nngtweq', '2022-04-05 07:09:47', '2024-06-10 06:39:31'),
	(3, 2, 'a2', 'yonghu', '用户', '77xz9vyueftp0gh2savay43wg3u3an0h', '2022-04-05 07:51:41', '2022-04-05 08:52:25');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `wenzhang`;
CREATE TABLE IF NOT EXISTS `wenzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wenzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '文章编号  Search111 ',
  `wenzhang_name` varchar(200) DEFAULT NULL COMMENT '文章名称  Search111 ',
  `wenzhang_photo` varchar(200) DEFAULT NULL COMMENT '文章照片',
  `wenzhang_types` int DEFAULT NULL COMMENT '文章类型 Search111',
  `wenzhang_clicknum` int DEFAULT NULL COMMENT '热度 ',
  `wenzhang_content` text COMMENT '文章内容 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `wenzhang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='文章';

DELETE FROM `wenzhang`;
INSERT INTO `wenzhang` (`id`, `yonghu_id`, `wenzhang_uuid_number`, `wenzhang_name`, `wenzhang_photo`, `wenzhang_types`, `wenzhang_clicknum`, `wenzhang_content`, `shangxia_types`, `wenzhang_delete`, `create_time`) VALUES
	(1, 3, '164914145908615', '文章名称1', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 4, 41, '文章内容1', 1, 1, '2022-04-05 06:50:59'),
	(2, 2, '16491414590861', '文章名称2', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 3, 14, '文章内容2', 1, 1, '2022-04-05 06:50:59'),
	(3, 2, '164914145908613', '文章名称3', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu3.jpg', 1, 237, '文章内容3', 1, 1, '2022-04-05 06:50:59'),
	(4, 2, '164914145908614', '文章名称4', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 4, 176, '文章内容4', 1, 1, '2022-04-05 06:50:59'),
	(5, 2, '164914145908614', '文章名称5', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 2, 219, '文章内容5', 1, 1, '2022-04-05 06:50:59'),
	(6, 2, '1649145176149', '文章999', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/1649145185931.jpg', 3, 4, '<p>文明在建行9*9*99的的</p>', 1, 1, '2022-04-05 07:53:12'),
	(7, 2, '1649145214147', '111', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/1649145217456.jpg', 3, 1, '<p>111</p>', 2, 1, '2022-04-05 07:53:57'),
	(8, 2, '1649145243885', '22222', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/1649145247101.jpg', 3, 1, '<p>222222</p>', 2, 1, '2022-04-05 07:54:10');

DROP TABLE IF EXISTS `wenzhang_collection`;
CREATE TABLE IF NOT EXISTS `wenzhang_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int DEFAULT NULL COMMENT '文章',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wenzhang_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='文章收藏';

DELETE FROM `wenzhang_collection`;
INSERT INTO `wenzhang_collection` (`id`, `wenzhang_id`, `yonghu_id`, `wenzhang_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(2, 2, 1, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(3, 3, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(4, 4, 1, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(5, 5, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(6, 6, 1, 1, '2024-06-10 05:39:42', '2024-06-10 05:39:42');

DROP TABLE IF EXISTS `wenzhang_liuyan`;
CREATE TABLE IF NOT EXISTS `wenzhang_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int DEFAULT NULL COMMENT '文章',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wenzhang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='文章留言';

DELETE FROM `wenzhang_liuyan`;
INSERT INTO `wenzhang_liuyan` (`id`, `wenzhang_id`, `yonghu_id`, `wenzhang_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2022-04-05 06:50:59', '回复信息1', '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(2, 2, 3, '留言内容2', '2022-04-05 06:50:59', '回复信息2', '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(3, 3, 2, '留言内容3', '2022-04-05 06:50:59', '回复信息3', '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(4, 4, 2, '留言内容4', '2022-04-05 06:50:59', '回复信息4', '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(5, 5, 1, '留言内容5', '2022-04-05 06:50:59', '回复信息5', '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(6, 4, 1, '2222', '2022-04-05 07:44:37', NULL, NULL, '2022-04-05 07:44:37'),
	(7, 1, 2, '22222222', '2022-04-05 07:52:13', NULL, NULL, '2022-04-05 07:52:13');

DROP TABLE IF EXISTS `yaofang`;
CREATE TABLE IF NOT EXISTS `yaofang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaofang_uuid_number` varchar(200) DEFAULT NULL COMMENT '药方编号  Search111 ',
  `yaofang_name` varchar(200) DEFAULT NULL COMMENT '药方名  Search111 ',
  `yaofang_photo` varchar(200) DEFAULT NULL COMMENT '药方照片',
  `yaofang_types` int DEFAULT NULL COMMENT '药方类型 Search111',
  `yaofang_laiyuan` varchar(200) DEFAULT NULL COMMENT '方剂来源',
  `yaofang_zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `yaofang_chengshuniandai` varchar(200) DEFAULT NULL COMMENT '成书年代',
  `yaofang_text` text COMMENT '原文',
  `yaofang_zucheng` varchar(200) DEFAULT NULL COMMENT '方剂组成',
  `yaofang_yaoshiliangyong` varchar(200) DEFAULT NULL COMMENT '药食两用 Search111 ',
  `yaofang_gongxiao` varchar(200) DEFAULT NULL COMMENT '功效 Search111 ',
  `yaofang_zhuzhizheng` varchar(200) DEFAULT NULL COMMENT '主治证 Search111 ',
  `yaofang_zhengzhuang` varchar(200) DEFAULT NULL COMMENT '症状',
  `yaofang_yongfa` varchar(200) DEFAULT NULL COMMENT '用法/服法',
  `jixing_types` int DEFAULT NULL COMMENT '剂型 Search111',
  `yaofang_yinjing` varchar(200) DEFAULT NULL COMMENT '引经',
  `yaofang_clicknum` int DEFAULT NULL COMMENT '热度 ',
  `yaofang_content` text COMMENT '药方详情 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `yaofang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药方';

DELETE FROM `yaofang`;
INSERT INTO `yaofang` (`id`, `yaofang_uuid_number`, `yaofang_name`, `yaofang_photo`, `yaofang_types`, `yaofang_laiyuan`, `yaofang_zuozhe`, `yaofang_chengshuniandai`, `yaofang_text`, `yaofang_zucheng`, `yaofang_yaoshiliangyong`, `yaofang_gongxiao`, `yaofang_zhuzhizheng`, `yaofang_zhengzhuang`, `yaofang_yongfa`, `jixing_types`, `yaofang_yinjing`, `yaofang_clicknum`, `yaofang_content`, `shangxia_types`, `yaofang_delete`, `create_time`) VALUES
	(1, '164914145909416', '药方名1', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 2, '方剂来源1', '作者1', '成书年代1', '原文1', '方剂组成1', '药食两用1', '功效1', '主治证1', '症状1', '用法/服法1', 3, '引经1', 381, '药方详情1', 1, 1, '2022-04-05 06:50:59'),
	(2, '164914145909418', '药方名2', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 3, '方剂来源2', '作者2', '成书年代2', '原文2', '方剂组成2', '药食两用2', '功效2', '主治证2', '症状2', '用法/服法2', 2, '引经2', 334, '药方详情2', 1, 1, '2022-04-05 06:50:59'),
	(3, '16491414590940', '药方名3', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu3.jpg', 4, '方剂来源3', '作者3', '成书年代3', '原文3', '方剂组成3', '药食两用3', '功效3', '主治证3', '症状3', '用法/服法3', 1, '引经3', 176, '药方详情3', 1, 1, '2022-04-05 06:50:59'),
	(4, '164914145909415', '药方名4', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 1, '方剂来源4', '作者4', '成书年代4', '原文4', '方剂组成4', '药食两用4', '功效4', '主治证4', '症状4', '用法/服法4', 2, '引经4', 383, '药方详情4', 1, 1, '2022-04-05 06:50:59'),
	(5, '16491414590944', '药方名5', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 1, '方剂来源5', '作者5', '成书年代5', '原文5', '方剂组成5', '药食两用5', '功效5', '主治证5', '症状5', '用法/服法5', 2, '引经5', 221, '药方详情5', 1, 1, '2022-04-05 06:50:59');

DROP TABLE IF EXISTS `yaofang_collection`;
CREATE TABLE IF NOT EXISTS `yaofang_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaofang_id` int DEFAULT NULL COMMENT '药方',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yaofang_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='药方收藏';

DELETE FROM `yaofang_collection`;
INSERT INTO `yaofang_collection` (`id`, `yaofang_id`, `yonghu_id`, `yaofang_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(2, 2, 1, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(3, 3, 2, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(4, 4, 2, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(5, 5, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(6, 5, 1, 1, '2024-06-10 05:39:49', '2024-06-10 05:39:49');

DROP TABLE IF EXISTS `yaoshiliangyongyaocai`;
CREATE TABLE IF NOT EXISTS `yaoshiliangyongyaocai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaoshiliangyongyaocai_uuid_number` varchar(200) DEFAULT NULL COMMENT '药材编号  Search111 ',
  `yaoshiliangyongyaocai_name` varchar(200) DEFAULT NULL COMMENT '药材名称  Search111 ',
  `yaoshiliangyongyaocai_photo` varchar(200) DEFAULT NULL COMMENT '药材照片',
  `yaoshiliangyongyaocai_types` int DEFAULT NULL COMMENT '药材类型 Search111',
  `yaoshiliangyongyaocai_gongxiao` varchar(200) DEFAULT NULL COMMENT '功效',
  `yaoshiliangyongyaocai_clicknum` int DEFAULT NULL COMMENT '热度 ',
  `yaoshiliangyongyaocai_content` text COMMENT '药食两用药材详情 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `yaoshiliangyongyaocai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药食两用药材';

DELETE FROM `yaoshiliangyongyaocai`;
INSERT INTO `yaoshiliangyongyaocai` (`id`, `yaoshiliangyongyaocai_uuid_number`, `yaoshiliangyongyaocai_name`, `yaoshiliangyongyaocai_photo`, `yaoshiliangyongyaocai_types`, `yaoshiliangyongyaocai_gongxiao`, `yaoshiliangyongyaocai_clicknum`, `yaoshiliangyongyaocai_content`, `shangxia_types`, `yaoshiliangyongyaocai_delete`, `create_time`) VALUES
	(1, '16491414590998', '药材名称1', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 2, '功效1', 441, '药食两用药材详情1', 1, 1, '2022-04-05 06:50:59'),
	(2, '164914145909919', '药材名称2', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 4, '功效2', 132, '药食两用药材详情2', 1, 1, '2022-04-05 06:50:59'),
	(3, '16491414590991', '药材名称3', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu3.jpg', 3, '功效3', 195, '药食两用药材详情3', 1, 1, '2022-04-05 06:50:59'),
	(4, '164914145909911', '药材名称4', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 2, '功效4', 353, '药食两用药材详情4', 1, 1, '2022-04-05 06:50:59'),
	(5, '16491414590997', '药材名称5', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 4, '功效5', 261, '药食两用药材详情5', 1, 1, '2022-04-05 06:50:59');

DROP TABLE IF EXISTS `yaoshiliangyongyaocai_collection`;
CREATE TABLE IF NOT EXISTS `yaoshiliangyongyaocai_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaoshiliangyongyaocai_id` int DEFAULT NULL COMMENT '药食两用药材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yaoshiliangyongyaocai_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='药食两用药材收藏';

DELETE FROM `yaoshiliangyongyaocai_collection`;
INSERT INTO `yaoshiliangyongyaocai_collection` (`id`, `yaoshiliangyongyaocai_id`, `yonghu_id`, `yaoshiliangyongyaocai_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(2, 2, 2, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(3, 3, 2, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(4, 4, 2, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(5, 5, 3, 1, '2022-04-05 06:50:59', '2022-04-05 06:50:59'),
	(6, 3, 1, 1, '2024-06-10 05:39:55', '2024-06-10 05:39:55');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu1.jpg', 2, '1@qq.com', '2022-04-05 06:50:59'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu2.jpg', 2, '2@qq.com', '2022-04-05 06:50:59'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/jingfangyaoshiliangyongfuwupingtai/upload/yonghu3.jpg', 1, '3@qq.com', '2022-04-05 06:50:59');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
