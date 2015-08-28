SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET NAMES utf8 */;

INSERT INTO `onethink_model` VALUES ('6', 'carousel', '首页推荐slider', '1', '', '1', '{\"1\":[\"3\",\"12\",\"37\",\"19\",\"2\",\"16\",\"14\",\"13\",\"17\",\"20\",\"11\",\"5\",\"10\",\"9\"]}', '1:基础', '', '', '', '', '', '', '10', '', '', '1440492672', '1440498083', '1', 'MyISAM');
INSERT INTO `onethink_attribute` VALUES ('37', 'url', 'URL', 'varchar(255) NOT NULL', 'string', '', '点击项目后跳转到的URL', '1', '', '6', '0', '1', '1440492778', '1440492778', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `onethink_category` VALUES ('43', 'others', '其他', '0', '4', '10', '', '', '', '', '', '', '', '6', '6', '2,1,3', '0', '0', '1', '0', '0', '', '', '1440495821', '1440495837', '1', '0', '非普通文档');
INSERT INTO `onethink_category` VALUES ('44', 'carousels', '首页Slider', '43', '0', '10', '', '', '', '', '', '', '', '6', '6', '2,1,3', '0', '1', '1', '0', '0', '', '', '1440495880', '1440498446', '1', '0', '首页推荐Slider项目');
-- -----------------------------
-- Table structure for `onethink_document_carousel`
-- -----------------------------
CREATE TABLE `onethink_document_carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` varchar(255) NOT NULL COMMENT 'URL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
