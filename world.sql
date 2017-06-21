-- MySQL dump 10.10
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	5.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `City`
--
CREATE DATABASE world;

USE world;


DROP TABLE IF EXISTS `City`;
CREATE TABLE `City` (
  `ID` int(11) NOT NULL auto_increment,
  `Name` char(35) NOT NULL default '',
  `CountryCode` char(3) NOT NULL default '',
  `District` char(20) NOT NULL default '',
  `Population` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `City`
--


/*!40000 ALTER TABLE `City` DISABLE KEYS */;
LOCK TABLES `City` WRITE;
INSERT INTO `City` VALUES (35,'Alger','DZA','Alger',2168000),(36,'Oran','DZA','Oran',609823),(130,'Sydney','AUS','New South Wales',3276207),(131,'Melbourne','AUS','Victoria',2865329),(132,'Brisbane','AUS','Queensland',1291117),(133,'Perth','AUS','West Australia',1096829),(134,'Adelaide','AUS','South Australia',978100),(135,'Canberra','AUS','Capital Region',322723),(608,'Cairo','EGY','Kairo',6789479),(610,'Giza','EGY','Giza',2221868),(613,'Suez','EGY','Suez',417610),(617,'Luxor','EGY','Luxor',360503),(618,'Asyut','EGY','Asyut',343498),(713,'Soweto','ZAF','Gauteng',904165),(716,'Pretoria','ZAF','Gauteng',658630),(721,'Alberton','ZAF','Gauteng',410102),(724,'Benoni','ZAF','Gauteng',365467),(725,'Randburg','ZAF','Gauteng',341288),(939,'Jakarta','IDN','Jakarta Raya',9604900),(940,'Surabaya','IDN','East Java',2663820),(941,'Bandung','IDN','West Java',2429000),(942,'Medan','IDN','Sumatera Utara',1843919),(943,'Palembang','IDN','Sumatera Selatan',1222764),(944,'Tangerang','IDN','West Java',1198300),(945,'Semarang','IDN','Central Java',1104405),(947,'Malang','IDN','East Java',716862),(949,'Bekasi','IDN','West Java',644300),(950,'Padang','IDN','Sumatera Barat',534474),(951,'Surakarta','IDN','Central Java',518600),(954,'Denpasar','IDN','Bali',435000),(956,'Pontianak','IDN','Kalimantan Barat',409632),(957,'Samarinda','IDN','Kalimantan Timur',399175),(958,'Jambi','IDN','Jambi',385201),(959,'Depok','IDN','West Java',365200),(960,'Cimahi','IDN','West Java',344600),(962,'Manado','IDN','Sulawesi Utara',332288),(963,'Mataram','IDN','Nusa Tenggara Barat',306600),(1860,'Almaty','KAZ','Almaty Qalasy',1129400),(1862,'Shymkent','KAZ','South Kazakstan',360100),(1863,'Taraz','KAZ','Taraz',330100),(1864,'Astana','KAZ','Astana',311200),(1865,'?skemen','KAZ','East Kazakstan',311000),(1866,'Pavlodar','KAZ','Pavlodar',300500),(1890,'Shanghai','CHN','Shanghai',9696300),(1891,'Peking','CHN','Peking',7472000),(1892,'Chongqing','CHN','Chongqing',6351600),(1893,'Tianjin','CHN','Tianjin',5286800),(1894,'Wuhan','CHN','Hubei',4344600),(1895,'Harbin','CHN','Heilongjiang',4289800),(1896,'Shenyang','CHN','Liaoning',4265200),(1898,'Chengdu','CHN','Sichuan',3361500),(1900,'Changchun','CHN','Jilin',2812000),(1901,'Xi?an','CHN','Shaanxi',2761400),(1902,'Dalian','CHN','Liaoning',2697000),(1903,'Qingdao','CHN','Shandong',2596000),(1904,'Jinan','CHN','Shandong',2278100),(1905,'Hangzhou','CHN','Zhejiang',2190500),(1906,'Zhengzhou','CHN','Henan',2107200),(1908,'Taiyuan','CHN','Shanxi',1968400),(1909,'Kunming','CHN','Yunnan',1829500),(1910,'Changsha','CHN','Hunan',1809800),(1911,'Nanchang','CHN','Jiangxi',1691600),(1912,'Fuzhou','CHN','Fujian',1593800),(1913,'Lanzhou','CHN','Gansu',1565800),(1914,'Guiyang','CHN','Guizhou',1465200),(1915,'Ningbo','CHN','Zhejiang',1371200),(1916,'Hefei','CHN','Anhui',1369100),(1918,'Anshan','CHN','Liaoning',1200000),(1919,'Fushun','CHN','Liaoning',1200000),(1920,'Nanning','CHN','Guangxi',1161800),(1921,'Zibo','CHN','Shandong',1140000),(1922,'Qiqihar','CHN','Heilongjiang',1070000),(1923,'Jilin','CHN','Jilin',1040000),(1924,'Tangshan','CHN','Hebei',1040000),(1925,'Baotou','CHN','Inner Mongolia',980000),(1926,'Shenzhen','CHN','Guangdong',950500),(1927,'Hohhot','CHN','Inner Mongolia',916700),(1928,'Handan','CHN','Hebei',840000),(1929,'Wuxi','CHN','Jiangsu',830000),(1930,'Xuzhou','CHN','Jiangsu',810000),(1931,'Datong','CHN','Shanxi',800000),(1932,'Yichun','CHN','Heilongjiang',800000),(1933,'Benxi','CHN','Liaoning',770000),(1934,'Luoyang','CHN','Henan',760000),(1935,'Suzhou','CHN','Jiangsu',710000),(1936,'Xining','CHN','Qinghai',700200),(1937,'Huainan','CHN','Anhui',700000),(1938,'Jixi','CHN','Heilongjiang',683885),(1939,'Daqing','CHN','Heilongjiang',660000),(1940,'Fuxin','CHN','Liaoning',640000),(1942,'Liuzhou','CHN','Guangxi',610000),(1943,'Shantou','CHN','Guangdong',580000),(1944,'Jinzhou','CHN','Liaoning',570000),(1946,'Yinchuan','CHN','Ningxia',544500),(1947,'Changzhou','CHN','Jiangsu',530000),(1949,'Dandong','CHN','Liaoning',520000),(1950,'Hegang','CHN','Heilongjiang',520000),(1951,'Kaifeng','CHN','Henan',510000),(1952,'Jiamusi','CHN','Heilongjiang',493409),(1953,'Liaoyang','CHN','Liaoning',492559),(1954,'Hengyang','CHN','Hunan',487148),(1955,'Baoding','CHN','Hebei',483155),(1956,'Hunjiang','CHN','Jilin',482043),(1957,'Xinxiang','CHN','Henan',473762),(1958,'Huangshi','CHN','Hubei',457601),(1959,'Haikou','CHN','Hainan',454300),(1960,'Yantai','CHN','Shandong',452127),(1961,'Bengbu','CHN','Anhui',449245),(1962,'Xiangtan','CHN','Hunan',441968),(1963,'Weifang','CHN','Shandong',428522),(1964,'Wuhu','CHN','Anhui',425740),(1965,'Pingxiang','CHN','Jiangxi',425579),(1966,'Yingkou','CHN','Liaoning',421589),(1967,'Anyang','CHN','Henan',420332),(1968,'Panzhihua','CHN','Sichuan',415466),(1970,'Xiangfan','CHN','Hubei',410407),(1971,'Zhuzhou','CHN','Hunan',409924),(1972,'Jiaozuo','CHN','Henan',409100),(1973,'Wenzhou','CHN','Zhejiang',401871),(1975,'Zigong','CHN','Sichuan',393184),(1977,'Zaozhuang','CHN','Shandong',380846),(1978,'Yakeshi','CHN','Inner Mongolia',377869),(1979,'Yichang','CHN','Hubei',371601),(1980,'Zhenjiang','CHN','Jiangsu',368316),(1981,'Huaibei','CHN','Anhui',366549),(1983,'Guilin','CHN','Guangxi',364130),(1985,'Panjin','CHN','Liaoning',362773),(1986,'Yangquan','CHN','Shanxi',362268),(1987,'Jinxi','CHN','Liaoning',357052),(1988,'Liaoyuan','CHN','Jilin',354141),(1990,'Xianyang','CHN','Shaanxi',352125),(1991,'Tai?an','CHN','Shandong',350696),(1992,'Chifeng','CHN','Inner Mongolia',350077),(1993,'Shaoguan','CHN','Guangdong',350043),(1994,'Nantong','CHN','Jiangsu',343341),(1995,'Leshan','CHN','Sichuan',341128),(1996,'Baoji','CHN','Shaanxi',337765),(1997,'Linyi','CHN','Shandong',324720),(1998,'Tonghua','CHN','Jilin',324600),(1999,'Siping','CHN','Jilin',317223),(2000,'Changzhi','CHN','Shanxi',317144),(2001,'Tengzhou','CHN','Shandong',315083),(2002,'Chaozhou','CHN','Guangdong',313469),(2003,'Yangzhou','CHN','Jiangsu',312892),(2004,'Dongwan','CHN','Guangdong',308669),(2005,'Ma?anshan','CHN','Anhui',305421),(2006,'Foshan','CHN','Guangdong',303160),(2007,'Yueyang','CHN','Hunan',302800),(2008,'Xingtai','CHN','Hebei',302789),(2009,'Changde','CHN','Hunan',301276),(2482,'Bamako','MLI','Bamako',809552),(2698,'Maputo','MOZ','Maputo',1018938),(2699,'Matola','MOZ','Maputo',424662),(2700,'Beira','MOZ','Sofala',397368),(2701,'Nampula','MOZ','Nampula',303346),(2738,'Niamey','NER','Niamey',420000),(2741,'Lagos','NGA','Lagos',1518000),(2742,'Ibadan','NGA','Oyo & Osun',1432000),(2743,'Ogbomosho','NGA','Oyo & Osun',730000),(2744,'Kano','NGA','Kano & Jigawa',674100),(2745,'Oshogbo','NGA','Oyo & Osun',476800),(2746,'Ilorin','NGA','Kwara & Kogi',475800),(2747,'Abeokuta','NGA','Ogun',427400),(2749,'Zaria','NGA','Kaduna',379200),(2750,'Ilesha','NGA','Oyo & Osun',378400),(2751,'Onitsha','NGA','Anambra & Enugu & Eb',371900),(2752,'Iwo','NGA','Oyo & Osun',362000),(2754,'Abuja','NGA','Federal Capital Dist',350100),(2755,'Kaduna','NGA','Kaduna',342200),(2756,'Mushin','NGA','Lagos',333200),(2757,'Maiduguri','NGA','Borno & Yobe',320000),(2758,'Enugu','NGA','Anambra & Enugu & Eb',316100),(2759,'Ede','NGA','Oyo & Osun',307100),(2822,'Karachi','PAK','Sindh',9269265),(2823,'Lahore','PAK','Punjab',5063499),(2826,'Multan','PAK','Punjab',1182441),(2827,'Hyderabad','PAK','Sindh',1151274),(2829,'Peshawar','PAK','Nothwest Border Prov',988005),(2830,'Quetta','PAK','Baluchistan',560307),(2831,'Islamabad','PAK','Islamabad',524500),(2832,'Sargodha','PAK','Punjab',455360),(2833,'Sialkot','PAK','Punjab',417597),(2835,'Sukkur','PAK','Sindh',329176),(3162,'Lusaka','ZMB','Lusaka',1317000),(3163,'Ndola','ZMB','Copperbelt',329200),(3357,'Istanbul','TUR','Istanbul',8787958),(3358,'Ankara','TUR','Ankara',3038159),(3359,'Izmir','TUR','Izmir',2130359),(3360,'Adana','TUR','Adana',1131198),(3361,'Bursa','TUR','Bursa',1095842),(3362,'Gaziantep','TUR','Gaziantep',789056),(3363,'Konya','TUR','Konya',628364),(3365,'Antalya','TUR','Antalya',564914),(3367,'Kayseri','TUR','Kayseri',475657),(3368,'Eskisehir','TUR','Eskisehir',470781),(3369,'Sanliurfa','TUR','Sanliurfa',405905),(3370,'Samsun','TUR','Samsun',339871),(3371,'Malatya','TUR','Malatya',330312),(3580,'Moscow','RUS','Moscow (City)',8389200),(3585,'Samara','RUS','Samara',1156100),(3586,'Omsk','RUS','Omsk',1148900),(3587,'Kazan','RUS','Tatarstan',1101000),(3588,'Ufa','RUS','Ba?kortostan',1091200),(3591,'Perm','RUS','Perm',1009700),(3592,'Volgograd','RUS','Volgograd',993400),(3593,'Voronez','RUS','Voronez',907700),(3595,'Saratov','RUS','Saratov',874000),(3596,'Toljatti','RUS','Samara',722900),(3597,'Uljanovsk','RUS','Uljanovsk',667400),(3598,'Izevsk','RUS','Udmurtia',652800),(3599,'Krasnodar','RUS','Krasnodar',639000),(3600,'Jaroslavl','RUS','Jaroslavl',616700),(3601,'Habarovsk','RUS','Habarovsk',609400),(3603,'Irkutsk','RUS','Irkutsk',593700),(3604,'Barnaul','RUS','Altai',580100),(3606,'Penza','RUS','Penza',532200),(3607,'Rjazan','RUS','Rjazan',529900),(3608,'Orenburg','RUS','Orenburg',523600),(3609,'Lipetsk','RUS','Lipetsk',521000),(3611,'Tula','RUS','Tula',506100),(3612,'Tjumen','RUS','Tjumen',503400),(3613,'Kemerovo','RUS','Kemerovo',492700),(3614,'Astrahan','RUS','Astrahan',486100),(3615,'Tomsk','RUS','Tomsk',482100),(3616,'Kirov','RUS','Kirov',466200),(3617,'Ivanovo','RUS','Ivanovo',459200),(3619,'Brjansk','RUS','Brjansk',457400),(3620,'Tver','RUS','Tver',454900),(3621,'Kursk','RUS','Kursk',443500),(3625,'Murmansk','RUS','Murmansk',376300),(3627,'Kurgan','RUS','Kurgan',364700),(3628,'Arkangeli','RUS','Arkangeli',361800),(3629,'Sot?i','RUS','Krasnodar',358600),(3630,'Smolensk','RUS','Smolensk',353400),(3631,'Orjol','RUS','Orjol',344500),(3632,'Stavropol','RUS','Stavropol',343300),(3633,'Belgorod','RUS','Belgorod',342000),(3634,'Kaluga','RUS','Kaluga',339300),(3635,'Vladimir','RUS','Vladimir',337100),(3638,'Saransk','RUS','Mordva',314800),(3639,'Tambov','RUS','Tambov',312000),(3641,'T?ita','RUS','T?ita',309900),(3642,'Vologda','RUS','Vologda',302500);
UNLOCK TABLES;
/*!40000 ALTER TABLE `City` ENABLE KEYS */;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
CREATE TABLE `Country` (
  `Code` char(3) NOT NULL default '',
  `Name` char(52) NOT NULL default '',
  `Continent` enum('Asia','Europe','Africa','Oceania') NOT NULL default 'Asia',
  `SurfaceArea` float(10,2) NOT NULL default '0.00',
  `Population` int(11) NOT NULL default '0',
  `Capital` int(11) default NULL,
  PRIMARY KEY  (`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--


/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
LOCK TABLES `Country` WRITE;
INSERT INTO `Country` VALUES ('DZA','Algeria','Africa',2381741.00,31471000,35),('AUS','Australia','Oceania',7741220.00,18886000,135),('EGY','Egypt','Africa',1001449.00,68470000,608),('ZAF','South Africa','Africa',1221037.00,40377000,716),('ETH','Ethiopia','Africa',1104300.00,62565000,756),('IDN','Indonesia','Asia',1904569.00,212107000,939),('KAZ','Kazakstan','Asia',2724900.00,16223000,1864),('CHN','China','Asia',9572900.00,1277558000,1891),('MLI','Mali','Africa',1240192.00,11234000,2482),('MNG','Mongolia','Asia',1566500.00,2662000,2696),('MOZ','Mozambique','Africa',801590.00,19680000,2698),('NAM','Namibia','Africa',824292.00,1726000,2726),('NER','Niger','Africa',1267000.00,10730000,2738),('NGA','Nigeria','Africa',923768.00,111506000,2754),('PAK','Pakistan','Asia',796095.00,156483000,2831),('ZMB','Zambia','Africa',752618.00,9169000,3162),('TCD','Chad','Africa',1284000.00,7651000,3337),('TUR','Turkey','Asia',774815.00,66591000,3358),('RUS','Russian Federation','Europe',17075400.00,146934000,3580);
UNLOCK TABLES;
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;

--
-- Table structure for table `CountryLanguage`
--

DROP TABLE IF EXISTS `CountryLanguage`;
CREATE TABLE `CountryLanguage` (
  `CountryCode` char(3) NOT NULL default '',
  `Language` char(30) NOT NULL default '',
  `IsOfficial` enum('T','F') NOT NULL default 'F',
  `Percentage` float(4,1) NOT NULL default '0.0',
  PRIMARY KEY  (`CountryCode`,`Language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CountryLanguage`
--


/*!40000 ALTER TABLE `CountryLanguage` DISABLE KEYS */;
LOCK TABLES `CountryLanguage` WRITE;
INSERT INTO `CountryLanguage` VALUES ('DZA','Arabic','T',86.0),('AUS','English','T',81.2),('EGY','Arabic','T',98.8),('ZAF','Zulu','T',22.7),('ETH','Oromo','F',31.0),('IDN','Javanese','F',39.4),('KAZ','Kazakh','T',46.0),('CHN','Chinese','T',92.0),('MLI','Bambara','F',31.8),('MNG','Mongolian','T',78.8),('MOZ','Makua','F',27.8),('NAM','Ovambo','F',50.7),('NER','Hausa','F',53.1),('NGA','Joruba','F',21.4),('PAK','Punjabi','F',48.2),('ZMB','Bemba','F',29.7),('TCD','Sara','F',27.7),('TUR','Turkish','T',87.6),('RUS','Russian','T',86.6),('DZA','Berberi','F',14.0),('AUS','Italian','F',2.2),('EGY','Sinaberberi','F',0.0),('ZAF','Xhosa','T',17.7),('ETH','Amhara','F',30.0),('IDN','Sunda','F',15.8),('KAZ','Russian','F',34.7),('CHN','Zhuang','F',1.4),('MLI','Ful','F',13.9),('MNG','Kazakh','F',5.9),('MOZ','Tsonga','F',12.4),('NAM','Nama','F',12.4),('NGA','Hausa','F',21.1),('PAK','Pashto','F',13.1),('ZMB','Tongan','F',11.0),('TCD','Arabic','T',12.3),('TUR','Kurdish','F',10.6),('RUS','Tatar','F',3.2),('AUS','Greek','F',1.6),('ZAF','Afrikaans','T',14.3),('ETH','Tigrinja','F',7.2),('IDN','Malay','T',12.1),('KAZ','Ukrainian','F',5.0),('CHN','Mant?u','F',0.9),('MNG','Dorbet','F',2.7),('MOZ','Sena','F',9.4),('NAM','Kavango','F',9.7),('NER','Tamashek','F',10.4),('NGA','Ibo','F',18.1),('PAK','Sindhi','F',11.8),('ZMB','Nyanja','F',7.8),('TUR','Arabic','F',1.4),('RUS','Ukrainian','F',1.3),('ZAF','Northsotho','F',9.1),('ETH','Gurage','F',4.7),('IDN','Madura','F',4.3),('KAZ','German','F',3.1),('CHN','Hui','F',0.8),('MLI','Soninke','F',8.7),('MNG','Bajad','F',1.9),('MOZ','Lomwe','F',7.8),('NAM','Afrikaans','F',9.5),('NER','Ful','F',9.7),('NGA','Ful','F',11.3),('PAK','Saraiki','F',9.8),('ZMB','Lozi','F',6.4),('RUS','Chuvash','F',0.9),('AUS','Arabic','F',1.0),('ZAF','English','T',8.5),('ETH','Somali','F',4.1),('IDN','Minangkabau','F',2.4),('KAZ','Uzbek','F',2.3),('CHN','Miao','F',0.7),('MLI','Tamashek','F',7.3),('MNG','Buryat','F',1.7),('MOZ','Shona','F',6.5),('NAM','Herero','F',8.0),('NER','Kanuri','F',4.4),('NGA','Ibibio','F',5.6),('PAK','Urdu','T',7.6),('ZMB','Chewa','F',5.7),('TCD','Ouaddai','F',8.7),('RUS','Bashkir','F',0.7),('AUS','Vietnamese','F',0.8),('ZAF','Tswana','F',8.1),('ETH','Sidamo','F',3.2),('IDN','Batakki','F',2.2),('KAZ','Tatar','F',2.0),('CHN','Uighur','F',0.6),('MLI','Songhai','F',6.9),('MNG','Dariganga','F',1.4),('MOZ','Tswa','F',6.0),('NAM','Caprivi','F',4.7),('NGA','Kanuri','F',4.1),('PAK','Balochi','F',3.0),('ZMB','Nsenga','F',4.3),('TCD','Hadjarai','F',6.7),('RUS','Chechen','F',0.6),('ZAF','Southsotho','F',7.6),('ETH','Walaita','F',2.8),('IDN','Bugi','F',2.2),('CHN','Yi','F',0.6),('MOZ','Chuabo','F',5.7),('NAM','San','F',1.9),('NGA','Edo','F',3.3),('PAK','Hindko','F',2.4),('TCD','Tandjile','F',6.5),('RUS','Mordva','F',0.5),('AUS','German','F',0.6),('ZAF','Tsonga','F',4.3),('IDN','Banja','F',1.8),('CHN','Tujia','F',0.5),('MOZ','Ronga','F',3.7),('NAM','German','F',0.9),('NGA','Tiv','F',2.3),('PAK','Brahui','F',1.2),('TCD','Gorane','F',6.2),('RUS','Kazakh','F',0.4),('ZAF','Swazi','F',2.5),('IDN','Bali','F',1.7),('CHN','Mongolian','F',0.4),('MOZ','Marendje','F',3.5),('NGA','Ijo','F',1.8),('RUS','Avarian','F',0.4),('ZAF','Venda','F',2.2),('CHN','Tibetan','F',0.4),('MOZ','Nyanja','F',3.3),('NGA','Bura','F',1.6),('RUS','Mari','F',0.4),('ZAF','Ndebele','F',1.5),('CHN','Puyi','F',0.2),('RUS','Udmur','F',0.3),('CHN','Dong','F',0.2),('RUS','Belorussian','F',0.3);
UNLOCK TABLES;
/*!40000 ALTER TABLE `CountryLanguage` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

