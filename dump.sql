# ************************************************************
# Sequel Pro SQL dump
# Version 5126
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.16-MariaDB)
# Database: typo3_95
# Generation Time: 2019-01-18 09:21:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table backend_layout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `backend_layout`;

CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table be_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `be_groups`;

CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8mb4_unicode_ci,
  `tables_modify` text COLLATE utf8mb4_unicode_ci,
  `groupMods` text COLLATE utf8mb4_unicode_ci,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `subgroup` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table be_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `be_sessions`;

CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;

INSERT INTO `be_sessions` (`ses_id`, `ses_iplock`, `ses_userid`, `ses_tstamp`, `ses_data`, `ses_backuserid`)
VALUES
	('cc21790f057fbc82ee45af3d1ec37644','::1',1,1547802115,X'613A383A7B733A32363A22666F726D50726F74656374696F6E53657373696F6E546F6B656E223B733A36343A2233623862616439366165313734633064613433396136373136316563623933383662393964356362353665396163663363313330386463663538616233313561223B733A32373A22636F72652E74656D706C6174652E666C6173684D65737361676573223B4E3B733A34393A225459504F335C434D535C4261636B656E645C436F6E74726F6C6C65725C506167654C61796F7574436F6E74726F6C6C6572223B613A313A7B733A31323A227365617263685F6669656C64223B4E3B7D733A38303A22657874626173652E666C6173686D657373616765732E74785F657874656E73696F6E6D616E616765725F746F6F6C735F657874656E73696F6E6D616E61676572657874656E73696F6E6D616E61676572223B4E3B733A31353A2274785F4265757365725F6465707468223B693A303B733A35373A22657874626173652E666C6173686D657373616765732E74785F6265757365725F73797374656D5F62657573657274787065726D697373696F6E223B4E3B733A35333A22657874626173652E666C6173686D657373616765732E74785F6265757365725F73797374656D5F6265757365727478626575736572223B4E3B733A35323A225459504F335C434D535C5265636F72646C6973745C436F6E74726F6C6C65725C5265636F72644C697374436F6E74726F6C6C6572223B613A313A7B733A31323A227365617263685F6669656C64223B4E3B7D7D',0);

/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table be_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `be_users`;

CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;

INSERT INTO `be_users` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `disable`, `starttime`, `endtime`, `description`, `username`, `avatar`, `password`, `admin`, `usergroup`, `lang`, `email`, `db_mountpoints`, `options`, `realName`, `userMods`, `allowed_languages`, `uc`, `file_mountpoints`, `file_permissions`, `workspace_perms`, `lockToDomain`, `disableIPlock`, `TSconfig`, `lastlogin`, `createdByAction`, `usergroup_cached_list`, `workspace_id`, `category_perms`)
VALUES
	(1,0,1547801088,1547801088,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=16384,t=16,p=2$ZmYxangyckd1YW9XalBTQQ$Rd1swFc4BL/X86aY0gU4vWV90WYRfcEJMe4YYLQtjfk',1,'','','',NULL,0,'',NULL,'',X'613A31363A7B733A31343A22696E746572666163655365747570223B733A373A226261636B656E64223B733A31303A226D6F64756C6544617461223B613A31303A7B733A31303A227765625F6C61796F7574223B613A323A7B733A383A2266756E6374696F6E223B733A313A2231223B733A383A226C616E6775616765223B733A313A2230223B7D733A35373A225459504F335C434D535C4261636B656E645C5574696C6974795C4261636B656E645574696C6974793A3A6765745570646174655369676E616C223B613A303A7B7D733A31303A22466F726D456E67696E65223B613A323A7B693A303B613A343A7B733A33323A223736616334383434333838313663373338303833353433353166653937303934223B613A343A7B693A303B733A31393A223C656D3E5B4E6F207469746C655D3C2F656D3E223B693A313B613A363A7B733A343A2265646974223B613A313A7B733A31303A2274745F636F6E74656E74223B613A313A7B693A313B733A343A2265646974223B7D7D733A373A2264656656616C73223B613A313A7B733A31303A2274745F636F6E74656E74223B613A333A7B733A363A22636F6C506F73223B733A313A2230223B733A31363A227379735F6C616E67756167655F756964223B733A313A2230223B733A353A224354797065223B733A363A22686561646572223B7D7D733A31323A226F7665727269646556616C73223B4E3B733A31313A22636F6C756D6E734F6E6C79223B4E3B733A363A226E6F56696577223B4E3B733A393A22776F726B7370616365223B4E3B7D693A323B733A3137353A2226656469745B74745F636F6E74656E745D5B315D3D656469742664656656616C735B74745F636F6E74656E745D5B636F6C506F735D3D302664656656616C735B74745F636F6E74656E745D5B7379735F6C616E67756167655F7569645D3D302664656656616C735B74745F636F6E74656E745D5B43547970655D3D686561646572266F7665727269646556616C733D26636F6C756D6E734F6E6C793D266E6F566965773D26776F726B73706163653D223B693A333B613A353A7B733A353A227461626C65223B733A31303A2274745F636F6E74656E74223B733A333A22756964223B693A313B733A333A22706964223B693A313B733A333A22636D64223B733A343A2265646974223B733A31323A2264656C657465416363657373223B623A313B7D7D733A33323A223431653135303361393132633864316237303338343262623139653734663162223B613A343A7B693A303B733A31393A223C656D3E5B4E6F207469746C655D3C2F656D3E223B693A313B613A363A7B733A343A2265646974223B613A313A7B733A31303A2274745F636F6E74656E74223B613A313A7B693A313B733A343A2265646974223B7D7D733A373A2264656656616C73223B4E3B733A31323A226F7665727269646556616C73223B4E3B733A31313A22636F6C756D6E734F6E6C79223B4E3B733A363A226E6F56696577223B4E3B733A393A22776F726B7370616365223B4E3B7D693A323B733A38303A2226656469745B74745F636F6E74656E745D5B315D3D656469742664656656616C733D266F7665727269646556616C733D26636F6C756D6E734F6E6C793D266E6F566965773D26776F726B73706163653D223B693A333B613A353A7B733A353A227461626C65223B733A31303A2274745F636F6E74656E74223B733A333A22756964223B693A313B733A333A22706964223B693A313B733A333A22636D64223B733A343A2265646974223B733A31323A2264656C657465416363657373223B623A313B7D7D733A33323A223737313839666232326132333963653432363666653661303061663561343036223B613A343A7B693A303B733A343A22726F6F74223B693A313B613A363A7B733A343A2265646974223B613A313A7B733A31323A227379735F74656D706C617465223B613A313A7B693A313B733A343A2265646974223B7D7D733A373A2264656656616C73223B4E3B733A31323A226F7665727269646556616C73223B4E3B733A31313A22636F6C756D6E734F6E6C79223B733A363A22636F6E666967223B733A363A226E6F56696577223B4E3B733A393A22776F726B7370616365223B4E3B7D693A323B733A38383A2226656469745B7379735F74656D706C6174655D5B315D3D656469742664656656616C733D266F7665727269646556616C733D26636F6C756D6E734F6E6C793D636F6E666967266E6F566965773D26776F726B73706163653D223B693A333B613A353A7B733A353A227461626C65223B733A31323A227379735F74656D706C617465223B733A333A22756964223B693A313B733A333A22706964223B693A313B733A333A22636D64223B733A343A2265646974223B733A31323A2264656C657465416363657373223B623A313B7D7D733A33323A223962323039646532333831316566383962656333383563303539663331636435223B613A343A7B693A303B733A343A22726F6F74223B693A313B613A363A7B733A343A2265646974223B613A313A7B733A31323A227379735F74656D706C617465223B613A313A7B693A313B733A343A2265646974223B7D7D733A373A2264656656616C73223B4E3B733A31323A226F7665727269646556616C73223B4E3B733A31313A22636F6C756D6E734F6E6C79223B4E3B733A363A226E6F56696577223B4E3B733A393A22776F726B7370616365223B4E3B7D693A323B733A38323A2226656469745B7379735F74656D706C6174655D5B315D3D656469742664656656616C733D266F7665727269646556616C733D26636F6C756D6E734F6E6C793D266E6F566965773D26776F726B73706163653D223B693A333B613A353A7B733A353A227461626C65223B733A31323A227379735F74656D706C617465223B733A333A22756964223B693A313B733A333A22706964223B693A313B733A333A22636D64223B733A343A2265646974223B733A31323A2264656C657465416363657373223B623A313B7D7D7D693A313B733A33323A223962323039646532333831316566383962656333383563303539663331636435223B7D733A363A227765625F7473223B613A323A7B733A383A2266756E6374696F6E223B733A38353A225459504F335C434D535C547374656D706C6174655C436F6E74726F6C6C65725C5479706F53637269707454656D706C617465496E666F726D6174696F6E4D6F64756C6546756E6374696F6E436F6E74726F6C6C6572223B733A31393A22636F6E7374616E745F656469746F725F636174223B733A31343A2266726F6E74656E64206C6F67696E223B7D733A31363A226F70656E646F63733A3A726563656E74223B613A313A7B733A33323A223962323039646532333831316566383962656333383563303539663331636435223B613A343A7B693A303B733A343A222B657874223B693A313B613A363A7B733A343A2265646974223B613A313A7B733A31323A227379735F74656D706C617465223B613A313A7B693A313B733A343A2265646974223B7D7D733A373A2264656656616C73223B4E3B733A31323A226F7665727269646556616C73223B4E3B733A31313A22636F6C756D6E734F6E6C79223B4E3B733A363A226E6F56696577223B4E3B733A393A22776F726B7370616365223B4E3B7D693A323B733A38323A2226656469745B7379735F74656D706C6174655D5B315D3D656469742664656656616C733D266F7665727269646556616C733D26636F6C756D6E734F6E6C793D266E6F566965773D26776F726B73706163653D223B693A333B613A353A7B733A353A227461626C65223B733A31323A227379735F74656D706C617465223B733A333A22756964223B693A313B733A333A22706964223B693A313B733A333A22636D64223B733A343A2265646974223B733A31323A2264656C657465416363657373223B623A313B7D7D7D733A383A227765625F696E666F223B613A313A7B733A383A2266756E6374696F6E223B733A34383A225459504F335C434D535C42656C6F675C4D6F64756C655C4261636B656E644C6F674D6F64756C65426F6F747374726170223B7D733A393A2274785F626575736572223B733A3533303A224F3A34303A225459504F335C434D535C4265757365725C446F6D61696E5C4D6F64656C5C4D6F64756C6544617461223A323A7B733A393A22002A0064656D616E64223B4F3A33363A225459504F335C434D535C4265757365725C446F6D61696E5C4D6F64656C5C44656D616E64223A31323A7B733A31313A22002A00757365724E616D65223B733A303A22223B733A31313A22002A007573657254797065223B693A303B733A393A22002A00737461747573223B693A303B733A393A22002A006C6F67696E73223B693A303B733A31393A22002A006261636B656E645573657247726F7570223B4E3B733A363A22002A00756964223B4E3B733A31363A22002A005F6C6F63616C697A6564556964223B4E3B733A31353A22002A005F6C616E6775616765556964223B4E3B733A31363A22002A005F76657273696F6E6564556964223B4E3B733A363A22002A00706964223B4E3B733A36313A22005459504F335C434D535C457874626173655C446F6D61696E4F626A6563745C4162737472616374446F6D61696E4F626A656374005F6973436C6F6E65223B623A303B733A36393A22005459504F335C434D535C457874626173655C446F6D61696E4F626A6563745C4162737472616374446F6D61696E4F626A656374005F636C65616E50726F70657274696573223B613A303A7B7D7D733A31383A22002A00636F6D70617265557365724C697374223B613A303A7B7D7D223B733A393A2266696C655F6C697374223B613A303A7B7D733A383A227765625F6C697374223B613A303A7B7D733A31333A2273797374656D5F636F6E666967223B613A323A7B733A343A2274726565223B733A383A22636F6E6656617273223B733A31313A227265676578536561726368223B623A303B7D7D733A31393A227468756D626E61696C73427944656661756C74223B693A313B733A31343A22656D61696C4D6541744C6F67696E223B693A303B733A31313A2273746172744D6F64756C65223B733A31353A2268656C705F41626F757441626F7574223B733A383A227469746C654C656E223B693A35303B733A383A22656469745F525445223B733A313A2231223B733A32303A22656469745F646F634D6F64756C6555706C6F6164223B733A313A2231223B733A31353A22726573697A65546578746172656173223B693A313B733A32353A22726573697A655465787461726561735F4D6178486569676874223B693A3530303B733A32343A22726573697A655465787461726561735F466C657869626C65223B693A303B733A343A226C616E67223B733A303A22223B733A31393A2266697273744C6F67696E54696D655374616D70223B693A313534373830313039393B733A31353A226D6F64756C6553657373696F6E4944223B613A393A7B733A31303A227765625F6C61796F7574223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A35373A225459504F335C434D535C4261636B656E645C5574696C6974795C4261636B656E645574696C6974793A3A6765745570646174655369676E616C223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A31303A22466F726D456E67696E65223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A363A227765625F7473223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A31363A226F70656E646F63733A3A726563656E74223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A383A227765625F696E666F223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A393A2274785F626575736572223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A393A2266696C655F6C697374223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B733A383A227765625F6C697374223B733A33323A226363323137393066303537666263383265653435616633643165633337363434223B7D733A31373A224261636B656E64436F6D706F6E656E7473223B613A313A7B733A363A22537461746573223B613A313A7B733A383A225061676574726565223B613A313A7B733A393A22737461746548617368223B613A313A7B733A333A22305F30223B733A313A2231223B7D7D7D7D733A31313A2262726F7773655472656573223B613A313A7B733A363A22666F6C646572223B733A35313A22613A313A7B693A32353231383B613A323A7B693A36323832323732343B693A313B693A3138373431393030393B693A313B7D7D223B7D7D',NULL,NULL,1,'',0,NULL,1547801099,0,NULL,0,NULL);

/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cache_treelist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_treelist`;

CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_hash
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_hash`;

CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_hash_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_hash_tags`;

CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_imagesizes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_imagesizes`;

CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_imagesizes_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;

CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_pages`;

CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_pages_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_pages_tags`;

CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_pagesection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_pagesection`;

CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_pagesection_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;

CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_rootline
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_rootline`;

CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_cache_rootline_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;

CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_extbase_datamapfactory_datamap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;

CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cf_extbase_datamapfactory_datamap_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;

CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table fe_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fe_groups`;

CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table fe_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fe_sessions`;

CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table fe_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fe_users`;

CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `rowDescription`, `editlock`, `sys_language_uid`, `l10n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `title`, `slug`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `shortcut`, `shortcut_mode`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `legacy_overlay_uid`, `categories`)
VALUES
	(1,0,1547801110,1547801107,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Root','/',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1547801341,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_be_shortcuts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_be_shortcuts`;

CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_category`;

CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_category_record_mm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_category_record_mm`;

CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_collection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_collection`;

CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_collection_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_collection_entries`;

CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_domain
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_domain`;

CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `domainName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file`;

CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8mb4_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file_collection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file_collection`;

CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8mb4_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file_metadata`;

CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file_processedfile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file_processedfile`;

CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `configuration` text COLLATE utf8mb4_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file_reference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file_reference`;

CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_file_storage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_file_storage`;

CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci,
  `configuration` text COLLATE utf8mb4_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;

INSERT INTO `sys_file_storage` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `description`, `name`, `driver`, `configuration`, `is_default`, `is_browsable`, `is_public`, `is_writable`, `is_online`, `auto_extract_metadata`, `processingfolder`)
VALUES
	(1,0,1547802049,1547802049,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);

/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_filemounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_filemounts`;

CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_history`;

CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `actiontype` smallint(6) NOT NULL DEFAULT '0',
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `workspace` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_language`;

CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_lockedrecords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_lockedrecords`;

CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(10) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_news`;

CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_refindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_refindex`;

CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sys_registry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_registry`;

CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;

INSERT INTO `sys_registry` (`uid`, `entry_namespace`, `entry_key`, `entry_value`)
VALUES
	(1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables',X'693A313B'),
	(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry',X'693A313B'),
	(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate',X'693A313B'),
	(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard',X'693A313B'),
	(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard',X'693A313B'),
	(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate',X'693A313B'),
	(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField',X'693A313B'),
	(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate',X'693A313B'),
	(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate',X'693A313B'),
	(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate',X'693A313B'),
	(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate',X'693A313B'),
	(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate',X'693A313B'),
	(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate',X'693A313B'),
	(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate',X'693A313B'),
	(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate',X'693A313B'),
	(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate',X'693A313B'),
	(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate',X'693A313B'),
	(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate',X'693A313B'),
	(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate',X'693A313B'),
	(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate',X'693A313B'),
	(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate',X'693A313B'),
	(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SeparateSysHistoryFromSysLogUpdate',X'693A313B'),
	(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate',X'693A313B'),
	(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate',X'693A313B'),
	(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate',X'693A313B'),
	(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights',X'693A313B'),
	(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard',X'693A313B'),
	(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate',X'693A313B'),
	(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall',X'693A313B'),
	(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs',X'693A313B'),
	(31,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes',X'693A313B'),
	(32,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate',X'693A313B'),
	(33,'core','formProtectionSessionToken:1',X'733A36343A2233623862616439366165313734633064613433396136373136316563623933383662393964356362353665396163663363313330386463663538616233313561223B'),
	(34,'extensionDataImport','typo3conf/ext/extbase_with_symfony_forms/ext_tables_static+adt.sql',X'733A303A22223B');

/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_template`;

CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8mb4_unicode_ci,
  `constants` text COLLATE utf8mb4_unicode_ci,
  `config` text COLLATE utf8mb4_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;

INSERT INTO `sys_template` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `sorting`, `description`, `t3_origuid`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `title`, `sitetitle`, `root`, `clear`, `include_static_file`, `constants`, `config`, `nextLevel`, `basedOn`, `includeStaticAfterBasedOn`, `static_file_mode`)
VALUES
	(1,1,1547801542,1547801348,1,0,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'root','',1,1,'EXT:fluid_styled_content/Configuration/TypoScript/',NULL,'page = PAGE\r\npage.10 = CONTENT\r\npage.10 {\r\n    table = tt_content\r\n    select {\r\n        orderBy = sorting\r\n        where = {#colPos}=0\r\n    }\r\n}\r\n','','',0,0);

/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tt_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tt_content`;

CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci,
  `pages` text COLLATE utf8mb4_unicode_ci,
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8mb4_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;

INSERT INTO `tt_content` (`uid`, `rowDescription`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `editlock`, `sys_language_uid`, `l18n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l18n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `CType`, `header`, `header_position`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `cols`, `spaceBefore`, `spaceAfter`, `space_before_class`, `space_after_class`, `records`, `pages`, `colPos`, `subheader`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `filelink_sorting_direction`, `target`, `date`, `recursive`, `imageheight`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `categories`)
VALUES
	(1,'',1,1547801341,1547801205,1,0,0,0,0,'',256,0,0,0,0,NULL,0,X'613A323A7B733A353A224354797065223B4E3B733A31303A2263617465676F72696573223B4E3B7D',0,0,'',0,0,0,0,0,0,'extbasewithsymfonyforms_form','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0);

/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tx_extensionmanager_domain_model_extension
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;

CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tx_extensionmanager_domain_model_repository
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;

CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;

INSERT INTO `tx_extensionmanager_domain_model_repository` (`uid`, `title`, `description`, `wsdl_url`, `mirror_list_url`, `last_update`, `extension_count`, `pid`)
VALUES
	(1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);

/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
