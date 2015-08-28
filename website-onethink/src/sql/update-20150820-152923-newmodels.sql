SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET NAMES utf8 */;


UPDATE `onethink_addons` SET `status` = '0' WHERE `name` = 'DevTeam';
UPDATE `onethink_auth_rule` SET `status` = '-1' WHERE `module` = 'admin' AND `name` = 'Admin/Think/lists?model=download';
UPDATE `onethink_auth_rule` SET `status` = '-1' WHERE `module` = 'admin' AND `name` = 'Admin/Think/lists?model=config';
UPDATE `onethink_category` SET `status` = '0' WHERE `name` = 'blog';
UPDATE `onethink_category` SET `status` = '0' WHERE `name` = 'default_blog';
UPDATE `onethink_channel` SET `status` = '0' WHERE `title` = '博客';
UPDATE `onethink_channel` SET `status` = '0' WHERE `title` = '官网';

INSERT INTO `onethink_model` VALUES ('4', 'idea', 'Idea', '1', '', '1', '', '1:基础', '', '', '', '', '', '', '10', '', '', '1440052510', '1440052510', '1', 'MyISAM');
INSERT INTO `onethink_model` VALUES ('5', 'issue', 'Issue', '1', '', '1', '', '1:基础', '', '', '', '', '', '', '10', '', '', '1440052531', '1440052531', '1', 'MyISAM');

INSERT INTO `onethink_attribute` VALUES ('33', 'content', '文章内容', 'text NOT NULL', 'editor', '', '文章内容', '1', '', '4', '1', '1', '1440052761', '1440052761', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `onethink_attribute` VALUES ('34', 'content', '文章内容', 'text NOT NULL', 'editor', '', '文章内容', '1', '', '5', '1', '1', '1440052783', '1440052783', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `onethink_attribute` VALUES ('36', 'solved', '是否已解决', 'tinyint(2) NOT NULL', 'bool', '0', '是否已解决', '1', '0:FALSE\r\n1:TRUE', '5', '0', '1', '1440054797', '1440054797', '', '3', '', 'regex', '', '3', 'function');

INSERT INTO `onethink_category` VALUES ('39', 'docs', 'Docs(文档)', '0', '0', '10', '', '', '', '', '', '', '', '2,3', '2,3', '2,1,3', '0', '1', '1', '0', '0', '', '', '1440053436', '1440053727', '1', '0', '各种文档，如Release, Change Log, 通知, Todo List等');
INSERT INTO `onethink_category` VALUES ('40', 'ideas', 'Ideas(想法)', '0', '1', '10', '', '', '', '', '', '', '', '4', '4', '2,1,3', '0', '2', '1', '0', '0', '', '', '1440053490', '1440053722', '1', '0', '收集各种需要技术实现的Ideas');
INSERT INTO `onethink_category` VALUES ('41', 'issues', 'Issues(问题)', '0', '2', '10', '', '', '', '', '', '', '', '5', '5', '2,1,3', '0', '2', '1', '0', '0', '', '', '1440053593', '1440053702', '1', '0', '发布需要解决的技术问题等，寻求回答');
INSERT INTO `onethink_category` VALUES ('42', 'develop', 'Deveop(技术研究)', '0', '3', '10', '', '', '', '', '', '', '', '2', '2', '2,1,3', '0', '2', '1', '0', '0', '', '', '1440053666', '1440053709', '1', '0', '研究技术的文章或记录');

INSERT INTO `onethink_channel` VALUES ('4', '0', 'Ideas', 'Article/index?category=ideas', '4', '1440053815', '1440053815', '1', '0');
INSERT INTO `onethink_channel` VALUES ('5', '0', 'Issues', 'Article/index?category=issues', '5', '1440053830', '1440053830', '1', '0');
INSERT INTO `onethink_channel` VALUES ('6', '0', 'Develop', 'Article/index?category=develop', '6', '1440053845', '1440053845', '1', '0');
INSERT INTO `onethink_channel` VALUES ('7', '0', 'Docs', 'Article/index?category=docs', '7', '1440053856', '1440053856', '1', '0');

INSERT INTO `onethink_auth_rule` VALUES ('217', 'admin', '1', 'Admin/article/index', '文档列表', '1', '');
INSERT INTO `onethink_auth_rule` VALUES ('218', 'admin', '1', 'Admin/think/lists', '数据列表', '1', '');


-- -----------------------------
-- Table structure for `onethink_document_idea`
-- -----------------------------
-- DROP TABLE IF EXISTS `onethink_document_idea`;
CREATE TABLE `onethink_document_idea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text NOT NULL COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- -----------------------------
-- Table structure for `onethink_document_issue`
-- -----------------------------
-- DROP TABLE IF EXISTS `onethink_document_issue`;
CREATE TABLE `onethink_document_issue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text NOT NULL COMMENT '文章内容',
  `solved` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已解决',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

