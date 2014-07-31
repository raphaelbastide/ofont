
DROP TABLE IF EXISTS `field_author_url`;
CREATE TABLE `field_author_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_author_url` (pages_id, data) VALUES('1115', 'http://www.cataloged.cc/');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1129', 'http://antoine-gelgon.fr/');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1116', 'http://cataloged.cc/');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1117', 'http://osp.constantvzw.org/');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1118', 'http://osp.constantvzw.org/');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1122', 'http://etienneozeray.fr');
INSERT INTO `field_author_url` (pages_id, data) VALUES('1123', 'http://xamaru.tumblr.com/');

DROP TABLE IF EXISTS `field_authors`;
CREATE TABLE `field_authors` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1114', '1115', '0');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1114', '1116', '1');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1114', '1117', '2');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1114', '1118', '3');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1121', '1122', '0');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1121', '1123', '1');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1128', '1129', '0');
INSERT INTO `field_authors` (pages_id, data, sort) VALUES('1125', '1132', '0');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (pages_id, data) VALUES('27', '<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (pages_id, data) VALUES('1', '<p>This is a personal selection of beautiful, classy, punk, professional, incomplete, weird typefaces. Open source licenses make them free to use and modify. This selection is the result of deep search and crushes. This selection is yours. <em>RB</em></p>');
INSERT INTO `field_body` (pages_id, data) VALUES('1100', '<p>The goal of this project is to provide a contemporary set of fonts under libre or open source licences, hand picked by a typography and free cultrure lover.</p><p>This project is open to modifications and always looking for collaborators :</p><p>Type designers: If you are interesed to create or fork existing projects</p><p>Web developpers - app wizards: If you want to improve this project to make it more admin and user friendly.</p><p>Have a look to the book L’Ève future.</p><h2>Contact</h2><p>Do not hesitate to drop me an <a href=\"mailto:bonjour@raphaelbastide.com\">email</a></p>');

DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (pages_id, data) VALUES('1114', 'Designed for [http://www.esad-gv.fr](http://www.esad-gv.fr).\r\n\r\nInspired by characters found on cartography from XIX untill middle XX.');
INSERT INTO `field_comments` (pages_id, data) VALUES('1121', 'Generated font made with PureData and Php based on  [Terminus](http://terminus-font.sourceforge.net/).');
INSERT INTO `field_comments` (pages_id, data) VALUES('1128', 'Autopia is a free family Typeface designed by Antoine Gelgon. This project was initiated during the Summer School of OSP in August 2013. The particularity of this fonts is in the process of developing its shape. The skeleton was generated through Autotrace Program (a program that converts bitmap to vectorgraphics). Calligraphic forms were drawn with Python Fontforge’s code.');
INSERT INTO `field_comments` (pages_id, data) VALUES('1125', 'Terminus Font is a clean, fixed width bitmap font, designed for long (8 and more hours per day) work with computers. Version 4.39 contains 891 characters, covers about 120 language sets and supports ISO8859-1/2/5/7/9/13/15/16, Paratype-PT154/PT254, KOI8-R/U/E/F, Esperanto, many IBM, Windows and Macintosh code pages, as well as the IBM VGA, vt100 and xterm pseudographic characters.\r\nThe sizes present are 6x12, 8x14, 8x16, 10x18, 10x20, 11x22, 12x24, 14x28 and 16x32.\r\nThe styles are normal and bold (except for 6x12), plus EGA/VGA-bold for 8x14 and 8x16.');

DROP TABLE IF EXISTS `field_download_url`;
CREATE TABLE `field_download_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_download_url` (pages_id, data) VALUES('1114', 'https://github.com/no-feature/dauphine');
INSERT INTO `field_download_url` (pages_id, data) VALUES('1121', 'http://etienneozeray.fr/nikelapolice.php');
INSERT INTO `field_download_url` (pages_id, data) VALUES('1128', 'http://autopia-type.tumblr.com/');
INSERT INTO `field_download_url` (pages_id, data) VALUES('1125', 'http://terminus-font.sourceforge.net/');

DROP TABLE IF EXISTS `field_draft`;
CREATE TABLE `field_draft` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (pages_id, data) VALUES('1', 'Basic Example Site');
INSERT INTO `field_headline` (pages_id, data) VALUES('1001', 'About Us');
INSERT INTO `field_headline` (pages_id, data) VALUES('1003', 'Developing Site Templates');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'westin_interior2.jpg', '7', 'Westin Peachtree Atlanta hotel lobby area.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'marquis_interior7b.jpg', '5', 'Elevator at the Atlanta Marriott Marquis hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'marquis_interior13b_med.jpg', '6', 'Atrium at the Atlanta Marriott Marquis hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'marquis_interior3.jpg', '4', 'Elevator core at the Atlanta Marriott Marquis hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'hyatt_interior11.jpg', '3', 'Looking up from the lobby area at the Atlanta Hyatt hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'hyatt2.jpg', '2', 'Detail from Atlanta Hyatt Hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'hyatt_interior9.jpg', '1', 'Detail from Atlanta Hyatt Hotel.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');
INSERT INTO `field_images` (pages_id, data, sort, description, modified, created) VALUES('1', 'westin_interior1.jpg', '0', 'Westin Peachtree Atlanta hotel lobby area.', '2014-07-15 16:06:43', '2014-07-15 16:06:43');

DROP TABLE IF EXISTS `field_in_use`;
CREATE TABLE `field_in_use` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_in_use` (pages_id, data, sort, description, modified, created) VALUES('1114', 'cap_2014-07-24_09_11_34.png', '1', 'Esad-gv website 2 http://www.esad-gv.fr', '2014-07-24 09:16:53', '2014-07-24 09:12:21');
INSERT INTO `field_in_use` (pages_id, data, sort, description, modified, created) VALUES('1114', 'cap_2014-07-24_09_11_24.png', '2', 'Esad-gv website 3 http://www.esad-gv.fr', '2014-07-24 09:16:53', '2014-07-24 09:12:21');
INSERT INTO `field_in_use` (pages_id, data, sort, description, modified, created) VALUES('1114', 'carte-esad-gv3.jpg', '3', 'Carte de vœux de l\'Esad-GV, Matthieu Meyer http://www.matthieumeyer.com/', '2014-07-24 10:25:44', '2014-07-24 10:24:15');
INSERT INTO `field_in_use` (pages_id, data, sort, description, modified, created) VALUES('1114', 'cap_2014-07-24_09_12_01.png', '0', 'Esad-gv website http://www.esad-gv.fr', '2014-07-24 09:16:53', '2014-07-24 09:12:21');

DROP TABLE IF EXISTS `field_keywords`;
CREATE TABLE `field_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1114', '1119', '0');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1121', '1124', '1');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1121', '1126', '0');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1128', '1126', '1');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1121', '1127', '2');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1125', '1127', '0');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1128', '1130', '2');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1128', '1131', '0');
INSERT INTO `field_keywords` (pages_id, data, sort) VALUES('1125', '1133', '1');

DROP TABLE IF EXISTS `field_license`;
CREATE TABLE `field_license` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_license` (pages_id, data, sort) VALUES('1114', '1120', '0');
INSERT INTO `field_license` (pages_id, data, sort) VALUES('1121', '1120', '0');
INSERT INTO `field_license` (pages_id, data, sort) VALUES('1125', '1120', '0');
INSERT INTO `field_license` (pages_id, data, sort) VALUES('1128', '1120', '0');

DROP TABLE IF EXISTS `field_license_url`;
CREATE TABLE `field_license_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_license_url` (pages_id, data) VALUES('1120', 'http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL');

INSERT INTO `field_process` (pages_id, data) VALUES('6', '17') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('3', '12') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('8', '12') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('9', '14') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('10', '7') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('11', '47') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('16', '48') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('300', '104') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('21', '50') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('29', '66') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('23', '10') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('304', '138') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('31', '136') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('22', '76') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('30', '68') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('303', '129') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('2', '87') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('302', '121') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('301', '109') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('28', '76') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1113', '149') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_process` (pages_id, data) VALUES('1134', '151') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);

DROP TABLE IF EXISTS `field_related_fonts`;
CREATE TABLE `field_related_fonts` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_related_fonts` (pages_id, data, sort) VALUES('1125', '1121', '0');
INSERT INTO `field_related_fonts` (pages_id, data, sort) VALUES('1121', '1125', '0');

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (pages_id, data) VALUES('1', '<h3>About ProcessWire</h3><p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. </p><p><a href=\"http://processwire.com/about/\" target=\"_blank\">About ProcessWire</a><br /><a href=\"http://processwire.com/api/\">Developer API</a><br /><a href=\"http://processwire.com/contact/\">Contact Us</a><br /><a href=\"http://twitter.com/rc_d\">Follow Us on Twitter</a></p>');
INSERT INTO `field_sidebar` (pages_id, data) VALUES('1002', '<h3>Sudo nullus</h3><p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (pages_id, data) VALUES('1002', 'Dolore ea valde refero feugait utinam luctus. Probo velit commoveo et, delenit praesent, suscipit zelus, hendrerit zelus illum facilisi, regula. ');
INSERT INTO `field_summary` (pages_id, data) VALUES('1001', 'This is a placeholder page with two child pages to serve as an example. ');
INSERT INTO `field_summary` (pages_id, data) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');
INSERT INTO `field_summary` (pages_id, data) VALUES('1003', 'More about the templates included in this basic site profile. ');
INSERT INTO `field_summary` (pages_id, data) VALUES('1004', 'Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.');
INSERT INTO `field_summary` (pages_id, data) VALUES('1', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ');

INSERT INTO `field_title` (pages_id, data) VALUES('1', 'Home') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1000', 'Search') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1006', 'fonts') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1007', 'licenses') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1008', 'keywords') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1009', 'authors') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1119', 'grotesque') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1120', 'SIL Open Font License, Version 1.1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1118', 'Stéphanie Vilayphiou') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1117', 'Alexandre Leray') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1100', 'About') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1114', 'Dauphine') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1115', 'Charles Mazé') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1116', 'Coline Sunier') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1113', 'Export Site Profile') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1121', 'NikLaPolice') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1122', 'Étienne Ozeray') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1123', 'Lucas Lejeune') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1124', 'glitch') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1125', 'Terminus') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1126', 'Generative') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1127', 'Monospaced') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1128', 'Autopia') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1129', 'Antoine Gelgon') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1130', 'Serif') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1131', 'Autotrace') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1132', 'Various') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1133', 'Bitmap') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);
INSERT INTO `field_title` (pages_id, data) VALUES('1134', 'Image crop') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), data=VALUES(data);

DROP TABLE IF EXISTS `field_used_in`;
CREATE TABLE `field_used_in` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_webfont_archive`;
CREATE TABLE `field_webfont_archive` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'generator_config.txt', '9', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'dauphine_regular.ttf', '0', '', '2014-01-27 08:26:42', '2014-01-27 08:26:42');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'grid_12-825-55-15.css', '1', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'easytabs.js', '2', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'stylesheet.css', '3', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'dauphine_regular.eot', '4', '', '2014-01-27 08:26:42', '2014-01-27 08:26:42');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'dauphine_regular-demo.html', '5', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'dauphine_regular.svg', '6', '', '2014-01-27 08:26:42', '2014-01-27 08:26:42');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'specimen_stylesheet.css', '7', '', '2014-01-27 08:26:44', '2014-01-27 08:26:44');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1114', 'dauphine_regular.woff', '8', '', '2014-01-27 08:26:42', '2014-01-27 08:26:42');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'grid_12-825-55-15.css', '8', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'stylesheet.css', '6', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'niklapolice-demo.html', '7', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'easytabs.js', '4', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'specimen_stylesheet.css', '5', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'niklapolice-webfont.ttf', '3', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'niklapolice-webfont.svg', '2', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'grid_12-825-55-15.css', '8', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'stylesheet.css', '7', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'autopia-webfont.ttf', '6', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'autopia-webfont.svg', '5', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'specimen_stylesheet.css', '4', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'easytabs.js', '3', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'autopia-demo.html', '2', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'autopia-webfont.woff', '1', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'generator_config.txt', '1', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'niklapolice-webfont.eot', '0', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1121', 'niklapolice-webfont.woff', '9', '', '2014-07-15 10:44:48', '2014-07-15 10:44:48');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'specimen_stylesheet.css', '6', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'easytabs.js', '5', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'terminus-webfont.svg', '4', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'terminus-webfont.ttf', '3', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'terminus-webfont.woff', '2', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'terminus-demo.html', '1', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'generator_config.txt', '0', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'stylesheet.css', '7', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'terminus-webfont.eot', '8', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1125', 'grid_12-825-55-15.css', '9', '', '2014-07-18 06:44:36', '2014-07-18 06:44:36');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'autopia-webfont.eot', '9', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');
INSERT INTO `field_webfont_archive` (pages_id, data, sort, description, modified, created) VALUES('1128', 'generator_config.txt', '0', '', '2014-07-17 09:19:10', '2014-07-17 09:19:10');

INSERT INTO `fieldgroups` (id, name) VALUES('1', 'home') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('88', 'sitemap') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('83', 'basic-page') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('80', 'search') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('97', 'font') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('98', 'author') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('99', 'license') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);
INSERT INTO `fieldgroups` (id, name) VALUES('100', 'keyword') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name);

INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('2', '2', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('2', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '3', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '4', '2', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('4', '5', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('5', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('3', '92', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('80', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('1', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('99', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '105', '8', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '104', '3', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('100', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('98', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('83', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('83', '76', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('88', '1', '0', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('1', '76', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('98', '110', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '114', '9', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '101', '7', '{\"columnWidth\":28}') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '106', '6', '{\"columnWidth\":41,\"label\":\"comments\"}') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('99', '113', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '102', '5', '{\"columnWidth\":34}') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '100', '4', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '109', '2', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '1', '0', '{\"columnWidth\":60}') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);
INSERT INTO `fieldgroups_fields` (fieldgroups_id, fields_id, sort, data) VALUES('97', '103', '1', '') ON DUPLICATE KEY UPDATE fieldgroups_id=VALUES(fieldgroups_id), fields_id=VALUES(fields_id), sort=VALUES(sort), data=VALUES(data);

INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('103', 'FieldtypeURL', 'download_url', '0', 'Download URL', '{\"noRelative\":1,\"addRoot\":0,\"columnWidth\":40,\"required\":1,\"size\":0,\"maxlength\":1024,\"placeholder\":\"Project page or repository\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('104', 'FieldtypePage', 'related_fonts', '0', 'Related font(s)', '{\"derefAsPage\":0,\"columnWidth\":33,\"parent_id\":1006,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelectMultiple\",\"size\":10,\"addable\":1,\"template_id\":43,\"findPagesCode\":\"$allPages = $pages->find(\\\"template=font\\\");\\r\\n$relatedPages = $pages->find(\\\"related_fonts=$page\\\");\\r\\nforeach($relatedPages as $p){\\r\\n  $thisPage = wire($page);\\r\\n  $p->related_fonts->add($thisPage);\\r\\n  $p->save();\\r\\n}\\r\\nreturn $allPages;\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('105', 'FieldtypeFile', 'webfont_archive', '0', 'Webfont archive', '{\"description\":\"Archive containing webfonts and the related stylesheet.\\r\\nGenerate the archive on [Font Squirrel](http:\\/\\/www.fontsquirrel.com\\/tools\\/webfont-generator)\",\"extensions\":\"pdf gif jpg jpeg png css js woff otf ttf eot txt svg html\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"columnWidth\":31,\"required\":1,\"unzip\":1,\"descriptionRows\":1,\"collapsed\":5,\"fileSchema\":2}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('101', 'FieldtypePage', 'license', '0', 'License', '{\"derefAsPage\":0,\"columnWidth\":33,\"required\":1,\"parent_id\":1007,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelectMultiple\",\"size\":10,\"addable\":1,\"template_id\":45}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('100', 'FieldtypePage', 'authors', '0', 'Author(s), foundry', '{\"derefAsPage\":0,\"columnWidth\":33,\"required\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelectMultiple\",\"size\":10,\"addable\":1,\"template_id\":44}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"collapsed\":0,\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('102', 'FieldtypePage', 'keywords', '0', 'Keywords', '{\"derefAsPage\":0,\"columnWidth\":33,\"required\":1,\"parent_id\":1008,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelectMultiple\",\"size\":10,\"addable\":1,\"template_id\":46,\"description\":\"You can refer to VOX ATypI classification to choose keywords.\\r\\n[Image](..\\/..\\/..\\/site\\/templates\\/styles\\/images\\/vox.jpg) - [Wikipedia](http:\\/\\/en.wikipedia.org\\/wiki\\/VOX-ATypI_classification)\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('106', 'FieldtypeTextarea', 'comments', '0', 'Comments', '{\"textformatters\":[\"TextformatterMarkdownExtra\"],\"inputfieldClass\":\"InputfieldTextarea\",\"columnWidth\":66,\"rows\":5,\"description\":\"Markdown formatted\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('109', 'FieldtypeCheckbox', 'draft', '0', 'Draft', '{\"columnWidth\":20}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('110', 'FieldtypeURL', 'author_url', '0', 'Author url', '{\"noRelative\":1,\"addRoot\":0,\"size\":0,\"maxlength\":1024}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('112', 'FieldtypeTextarea', 'used_in', '0', 'Used in', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5,\"textformatters\":[\"TextformatterMarkdownExtra\"]}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('113', 'FieldtypeURL', 'license_url', '0', 'License url', '') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);
INSERT INTO `fields` (id, type, name, flags, label, data) VALUES('114', 'FieldtypeCropImage', 'in_use', '0', 'In use', '{\"description\":\"You can add url to the image description.\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldCropImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"thumbSetting\":\"thumbnail,250,200\",\"fileSchema\":2}') ON DUPLICATE KEY UPDATE id=VALUES(id), type=VALUES(type), name=VALUES(name), flags=VALUES(flags), label=VALUES(label), data=VALUES(data);

INSERT INTO `modules` (id, class, flags, data) VALUES('148', 'AdminThemeDefault', '2', '{\"colors\":\"classic\"}') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('149', 'ProcessExportProfile', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('150', 'FieldtypeCropImage', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('151', 'ProcessCropImage', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('152', 'InputfieldCropImage', '0', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);
INSERT INTO `modules` (id, class, flags, data) VALUES('153', 'JqueryMagnific', '1', '') ON DUPLICATE KEY UPDATE id=VALUES(id), class=VALUES(class), flags=VALUES(flags), data=VALUES(data);

INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1', '0', '1', 'home', '9', '2014-04-03 11:15:57', '41', '0000-00-00 00:00:00', '2', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('27', '1', '29', 'http404', '1035', '2014-03-02 23:25:09', '41', '2010-06-03 06:53:03', '3', '8') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1000', '1', '26', 'search', '1025', '2014-03-02 23:25:16', '41', '2010-09-06 05:05:28', '2', '1') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1006', '1', '29', 'fonts', '1', '2014-03-02 23:25:09', '41', '2013-08-23 23:22:50', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1007', '1', '29', 'licenses', '1', '2014-03-02 23:30:38', '41', '2013-08-23 23:37:31', '41', '4') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1008', '1', '29', 'keywords', '1', '2014-03-02 23:29:08', '41', '2013-08-23 23:38:08', '41', '5') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1009', '1', '29', 'authors', '1', '2014-03-02 23:25:09', '41', '2013-08-23 23:38:19', '41', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1120', '1007', '45', 'sil-open-font-license-version-1.1', '1', '2014-07-18 16:34:00', '41', '2014-04-03 19:09:01', '41', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1100', '1', '29', 'about', '1', '2014-03-02 23:25:09', '41', '2014-01-27 10:15:40', '41', '7') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1115', '1009', '44', 'charles-maze', '1', '2014-07-17 15:51:55', '41', '2014-04-03 19:09:01', '41', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1116', '1009', '44', 'coline-sunier', '1', '2014-07-18 10:46:45', '41', '2014-04-03 19:09:01', '41', '1') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1117', '1009', '44', 'alexandre-leray', '1', '2014-07-18 10:47:00', '41', '2014-04-03 19:09:01', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1118', '1009', '44', 'stephanie-vilayphiou', '1', '2014-07-18 10:47:12', '41', '2014-04-03 19:09:01', '41', '3') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1113', '22', '2', 'export-site-profile', '1', '2014-04-01 16:04:10', '41', '2014-04-01 16:04:10', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1119', '1008', '46', 'grotesque', '1', '2014-04-03 19:09:01', '41', '2014-04-03 19:09:01', '41', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1114', '1006', '43', 'dauphine', '1', '2014-07-24 10:25:44', '41', '2014-04-03 19:04:47', '41', '0') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1121', '7', '43', '1121_niklapolice', '8193', '2014-07-31 18:12:56', '41', '2014-07-15 16:41:13', '41', '1') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1122', '1009', '44', 'etienne-ozeray', '1', '2014-07-18 10:47:26', '41', '2014-07-15 16:45:31', '41', '4') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1123', '1009', '44', 'lucas-lejeune', '1', '2014-07-18 10:48:16', '41', '2014-07-15 16:45:31', '41', '5') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1124', '1008', '46', 'glitch', '1', '2014-07-15 16:45:31', '41', '2014-07-15 16:45:31', '41', '1') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1125', '7', '43', '1125_terminus', '8193', '2014-07-31 18:13:04', '41', '2014-07-17 11:52:14', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1126', '1008', '46', 'generative', '1', '2014-07-17 11:52:15', '41', '2014-07-17 11:52:15', '41', '2') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1127', '1008', '46', 'monospaced', '1', '2014-07-17 14:50:17', '41', '2014-07-17 14:50:17', '41', '3') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1128', '7', '43', '1128_autopia', '8193', '2014-07-31 18:13:11', '41', '2014-07-17 15:12:59', '41', '3') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1129', '1009', '44', 'antoine-gelgon', '1', '2014-07-17 15:52:22', '41', '2014-07-17 15:19:37', '41', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1130', '1008', '46', 'serif', '1', '2014-07-17 15:19:37', '41', '2014-07-17 15:19:37', '41', '4') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1131', '1008', '46', 'autotrace', '1', '2014-07-17 15:19:38', '41', '2014-07-17 15:19:38', '41', '5') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1132', '1009', '44', 'various', '1', '2014-07-18 14:41:32', '41', '2014-07-18 14:41:32', '41', '7') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1133', '1008', '46', 'bitmap', '1', '2014-07-18 14:41:32', '41', '2014-07-18 14:41:32', '41', '6') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);
INSERT INTO `pages` (id, parent_id, templates_id, name, status, modified, modified_users_id, created, created_users_id, sort) VALUES('1134', '3', '2', 'image-crop', '1', '2014-07-24 00:30:47', '41', '2014-07-24 00:30:47', '41', '8') ON DUPLICATE KEY UPDATE id=VALUES(id), parent_id=VALUES(parent_id), templates_id=VALUES(templates_id), name=VALUES(name), status=VALUES(status), modified=VALUES(modified), modified_users_id=VALUES(modified_users_id), created=VALUES(created), created_users_id=VALUES(created_users_id), sort=VALUES(sort);

INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('37', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('38', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('32', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('34', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('35', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('36', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('50', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('51', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('52', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('53', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('54', '2', '2011-09-06 12:10:09') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1006', '1', '2013-08-23 23:22:50') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1007', '1', '2013-08-23 23:37:31') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1008', '1', '2013-08-23 23:38:08') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1009', '1', '2013-08-23 23:38:19') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1119', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1118', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1117', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1116', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1115', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1100', '1', '2014-01-27 10:15:40') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1114', '1', '2014-04-03 19:04:47') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1120', '1', '2014-04-03 19:09:01') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1121', '2', '2014-07-31 18:12:56') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1122', '1', '2014-07-15 16:45:31') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1123', '1', '2014-07-15 16:45:31') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1124', '1', '2014-07-15 16:45:31') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1125', '2', '2014-07-31 18:13:04') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1126', '1', '2014-07-17 11:52:15') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1127', '1', '2014-07-17 14:50:17') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1128', '2', '2014-07-31 18:13:11') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1129', '1', '2014-07-17 15:19:37') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1130', '1', '2014-07-17 15:19:38') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1131', '1', '2014-07-17 15:19:38') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1132', '1', '2014-07-18 14:41:32') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);
INSERT INTO `pages_access` (pages_id, templates_id, ts) VALUES('1133', '1', '2014-07-18 14:41:32') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), templates_id=VALUES(templates_id), ts=VALUES(ts);

INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('2', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('3', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('3', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('7', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('22', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('22', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('28', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('28', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('29', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('30', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '2') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('31', '28') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('1006', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('1007', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('1008', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);
INSERT INTO `pages_parents` (pages_id, parents_id) VALUES('1009', '1') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), parents_id=VALUES(parents_id);

INSERT INTO `pages_sortfields` (pages_id, sortfield) VALUES('1007', '-name') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), sortfield=VALUES(sortfield);
INSERT INTO `pages_sortfields` (pages_id, sortfield) VALUES('1008', 'name') ON DUPLICATE KEY UPDATE pages_id=VALUES(pages_id), sortfield=VALUES(sortfield);

INSERT INTO `session_login_throttle` (name, attempts, last_attempt) VALUES('admin', '12', '1406814161') ON DUPLICATE KEY UPDATE name=VALUES(name), attempts=VALUES(attempts), last_attempt=VALUES(last_attempt);

INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"roles\":[37]}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('43', 'font', '97', '0', '60', '{\"sortfield\":\"-created\",\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('44', 'author', '98', '0', '0', '{\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('45', 'license', '99', '0', '0', '{\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
INSERT INTO `templates` (id, name, fieldgroups_id, flags, cache_time, data) VALUES('46', 'keyword', '100', '0', '0', '{\"slashUrls\":1}') ON DUPLICATE KEY UPDATE id=VALUES(id), name=VALUES(name), fieldgroups_id=VALUES(fieldgroups_id), flags=VALUES(flags), cache_time=VALUES(cache_time), data=VALUES(data);
