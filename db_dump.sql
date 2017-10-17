# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.17)
# Database: gloud1
# Generation Time: 2017-10-17 02:01:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `insert_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `fname`, `lname`, `insert_at`)
VALUES
	(5,'user5@mail.com','$2y$13$Hlis.vXeaUDeG52857diqeXWUuGRbgT3Qww0oJJIEfvNqr5PaplUu','First Name - 5','Last Name - 5','2017-10-16 23:50:14'),
	(6,'user6@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 6','Last Name - 6','2017-10-16 23:50:14'),
	(7,'user7@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 7','Last Name - 7','2017-10-16 23:50:14'),
	(8,'user8@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 8','Last Name - 8','2017-10-16 23:50:14'),
	(9,'user9@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 9','Last Name - 9','2017-10-16 23:50:14'),
	(10,'user10@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 10','Last Name - 10','2017-10-16 23:50:14'),
	(11,'user11@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 11','Last Name - 11','2017-10-16 23:50:14'),
	(12,'user12@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 12','Last Name - 12','2017-10-16 23:50:14'),
	(13,'user13@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 13','Last Name - 13','2017-10-16 23:50:14'),
	(14,'user14@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 14','Last Name - 14','2017-10-16 23:50:14'),
	(15,'user15@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 15','Last Name - 15','2017-10-16 23:50:14'),
	(16,'user16@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 16','Last Name - 16','2017-10-16 23:50:14'),
	(17,'user17@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 17','Last Name - 17','2017-10-16 23:50:14'),
	(18,'user18@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 18','Last Name - 18','2017-10-16 23:50:14'),
	(19,'user19@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 19','Last Name - 19','2017-10-16 23:50:14'),
	(20,'user20@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 20','Last Name - 20','2017-10-16 23:50:14'),
	(21,'user21@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 21','Last Name - 21','2017-10-16 23:50:14'),
	(22,'user22@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 22','Last Name - 22','2017-10-16 23:50:14'),
	(23,'user23@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 23','Last Name - 23','2017-10-16 23:50:14'),
	(24,'user24@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 24','Last Name - 24','2017-10-16 23:50:14'),
	(25,'user25@mail.com','$2y$13$YRIk/I/YIj0os5fMGgX0MOseIHjqEqLWj6Jy3.zNFY.0tbRXyYDLK','First Name - 25','Last Name - 25','2017-10-16 23:50:14'),
	(26,'user26@mail.com','$2y$13$Hlis.vXeaUDeG52857diqeXWUuGRbgT3Qww0oJJIEfvNqr5PaplUu','First Name - 26','Last Name - 26','2017-10-16 23:50:14'),
	(27,'user27@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 27','Last Name - 27','2017-10-16 23:50:14'),
	(28,'user28@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 28','Last Name - 28','2017-10-16 23:50:14'),
	(29,'user29@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 29','Last Name - 29','2017-10-16 23:50:14'),
	(30,'user30@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 30','Last Name - 30','2017-10-16 23:50:14'),
	(31,'user31@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 31','Last Name - 31','2017-10-16 23:50:14'),
	(32,'user32@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 32','Last Name - 32','2017-10-16 23:50:14'),
	(33,'user33@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 33','Last Name - 33','2017-10-16 23:50:14'),
	(34,'user34@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 34','Last Name - 34','2017-10-16 23:50:14'),
	(35,'user35@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 35','Last Name - 35','2017-10-16 23:50:14'),
	(36,'user36@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 36','Last Name - 36','2017-10-16 23:50:14'),
	(37,'user37@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 37','Last Name - 37','2017-10-16 23:50:14'),
	(38,'user38@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 38','Last Name - 38','2017-10-16 23:50:14'),
	(39,'user39@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 39','Last Name - 39','2017-10-16 23:50:14'),
	(40,'user40@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 40','Last Name - 40','2017-10-16 23:50:14'),
	(41,'user41@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 41','Last Name - 41','2017-10-16 23:50:14'),
	(42,'user42@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 42','Last Name - 42','2017-10-16 23:50:14'),
	(43,'user43@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 43','Last Name - 43','2017-10-16 23:50:14'),
	(44,'user44@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 44','Last Name - 44','2017-10-16 23:50:14'),
	(45,'user45@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 45','Last Name - 45','2017-10-16 23:50:14'),
	(46,'user46@mail.com','$2y$13$YRIk/I/YIj0os5fMGgX0MOseIHjqEqLWj6Jy3.zNFY.0tbRXyYDLK','First Name - 46','Last Name - 46','2017-10-16 23:50:14'),
	(47,'user47@mail.com','$2y$13$Hlis.vXeaUDeG52857diqeXWUuGRbgT3Qww0oJJIEfvNqr5PaplUu','First Name - 47','Last Name - 47','2017-10-16 23:50:14'),
	(48,'user48@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 48','Last Name - 48','2017-10-16 23:50:14'),
	(49,'user49@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 49','Last Name - 49','2017-10-16 23:50:14'),
	(50,'user50@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 50','Last Name - 50','2017-10-16 23:50:14'),
	(51,'user51@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 51','Last Name - 51','2017-10-16 23:50:14'),
	(52,'user52@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 52','Last Name - 52','2017-10-16 23:50:14'),
	(53,'user53@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 53','Last Name - 53','2017-10-16 23:50:14'),
	(54,'user54@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 54','Last Name - 54','2017-10-16 23:50:14'),
	(55,'user55@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 55','Last Name - 55','2017-10-16 23:50:14'),
	(56,'user56@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 56','Last Name - 56','2017-10-16 23:50:14'),
	(57,'user57@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 57','Last Name - 57','2017-10-16 23:50:14'),
	(58,'user58@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 58','Last Name - 58','2017-10-16 23:50:14'),
	(59,'user59@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 59','Last Name - 59','2017-10-16 23:50:14'),
	(60,'user60@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 60','Last Name - 60','2017-10-16 23:50:14'),
	(61,'user61@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 61','Last Name - 61','2017-10-16 23:50:14'),
	(62,'user62@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 62','Last Name - 62','2017-10-16 23:50:14'),
	(63,'user63@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 63','Last Name - 63','2017-10-16 23:50:14'),
	(64,'user64@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 64','Last Name - 64','2017-10-16 23:50:14'),
	(65,'user65@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 65','Last Name - 65','2017-10-16 23:50:14'),
	(66,'user66@mail.com','$2y$13$t.XADKkIxZR0MkzwbUlmRu1AO22DTyD7ck4tn2ShZBbO9jFn5kJ2.','First Name - 66','Last Name - 66','2017-10-16 23:50:14'),
	(67,'aamir.softtech@gmail.com','$2y$13$7.5RTSb8QlwlrPvKxgOZx.kdN9tmxgQ30y1Nc9gMcy8y3ffztNo6K','Aamir','Rasheed','2017-10-17 01:28:14'),
	(68,'aamir.softtech@gmail.com','$2y$13$.kIr/vfP2xyLK11PHQ/QpeXtFuSY24k3v.q5xEzt2x0o28S4zieda','Aamir','Rasheed','2017-10-17 01:31:41'),
	(69,'aamir.softtech@gmail.com','$2y$13$Xl3R2wl6.bLDFdvKFrcKpueFZKrHxUxxeXDqcCRI.6IiimsrrX2xG','Aamir','Rasheed','2017-10-17 01:48:34'),
	(70,'aamir.softtech@gmail.com','$2y$13$dpha4RY.lKPWwD3PP2D2OOvghAQpP72WCdm4Rb7gtg95Lb4/fssOm','Aamir','Rasheed','2017-10-17 02:00:44'),
	(71,'aamir.softtech@gmail.com','$2y$13$q2J3kFQIQLRpIGckgsbinep5f7usP3BtumV8gPqFdG7T5A/8b5shC','Aamir','Rasheed','2017-10-17 03:28:20'),
	(72,'aamir.softtech@gmail.com','$2y$13$h11vtAjLO5K/kxmD4gZuc.0rPFgXbtFboqtH.ZYaSX5gTg4C.QD22','Aamir','Rasheed','2017-10-17 03:28:40'),
	(73,'aamir.softtech@gmail.com','$2y$13$6en2O7vTQQ0Hp1Xix6Y1aOM9mtu/F8XGbU4r/Pve2CsLgFGv03P8W','Aamir','Rasheed','2017-10-17 03:28:47'),
	(74,'a@b.c','$2y$13$oDO81zwn4TpHfIvcWgt6/e31ckeSTz/0JDzQYrgJnnK4F5LplHvZO','Aaa','Bbb','2017-10-17 03:31:22'),
	(75,'aamir.softtech@gmail.com','$2y$13$ezWB2xgYUOuc.hjl1Ed2rOqLiehch/9iX0RIeDev5ufmWeOd62ZhC','Aamir','Rasheed','2017-10-17 03:54:25'),
	(76,'aamir.softtech@gmail.com','$2y$13$r8f1NTaKbbp2L3XODPM.r.YU06U3pKY/lB.cNz6ObIQR07zfG0r0q','sadfasd','asdfads','2017-10-17 03:56:40'),
	(77,'aamir.softtech@gmail.com','$2y$13$hX0uns2J1UXrNq1gWwlSt.tW.zxcrijTaSxtwCFOgScYsdVhy.uFu','sdfadsfadfa','asdfasfasf','2017-10-17 04:00:48'),
	(78,'user1@mail.com','$2y$13$X3OMuY8vvZm.1fTInweanOrtXdchZGNn2HZI6JYBM.rCXzWD0U/vi','First Name - 1','Last Name - 1','2017-10-17 04:03:09'),
	(79,'aamir.softtech@gmail.com','$2y$13$dCQfuCJVOfxgUdo4OXlBEeEWDsVYDJoNP7WTcAq3kb8UOWPYfqCx6','sadfasfafasf','sadfadsfasfasfsaf','2017-10-17 04:03:50'),
	(80,'aamir.softtech@gmail.com','$2y$13$QJXs90fiQ7fLTA.39bEIvOaNu3Akrwbtn46MDHyfSGKK/6kV1LI5i','dsafasfasfa','sadfasdfasfasfa','2017-10-17 04:06:45'),
	(81,'aamir.softtech@gmail.com','$2y$13$Oh6RnsTw1vMDwPJE2X5s6eREpaMunBKDELMkoqcc8TZtd.y7Y/zeG','dsafasfasfa','sadfasdfasfasfa','2017-10-17 04:07:14'),
	(82,'aamir.softtech@gmail.com','$2y$13$JM4RjxnwxzlJnLcbW2Fxi.vRqHGpen4He6Ssf78Ui4IKbyft2KNha','dsafasfasfa','sadfasdfasfasfa','2017-10-17 04:07:24'),
	(83,'aamir.softtech@gmail.com','$2y$13$j6asdJwKeHE/rUylxmQ6JOfRE.W2P8nE7vqtFmip.uiFrPTPsDr1u','asdfasdf','sadfadsfasdfa','2017-10-17 04:07:31'),
	(84,'aamir.softtech@gmail.com','$2y$13$eDfxDzetAJOQAUVsq9yYHeYhQ.XYwBek0ubR09SMlk93RtQmJPvIO','asdfasdf','sadfadsf','2017-10-17 04:08:29'),
	(85,'aamir.softtech@gmail.com','$2y$13$q04n0Iohzifxrm3rpcCh4OrhQzooDPR2zLEOlZD91hzV/hgQGTOu6','asdfasdf','sadfadsf','2017-10-17 04:08:37'),
	(86,'aamir.softtech@gmail.com','$2y$13$60RsLBT7.wxIge7SSSJ8q.MAsIRiGs4ENdHrlj.uMch7YNOWMV88a','adfasfas','asdfasdfas','2017-10-17 04:17:58'),
	(87,'aamir.softtech@gmail.com','$2y$13$CqnjFJTIAejQ62EtixZXEeDSvJZyEfSKgWrKMj/ctvB44sk70Qcuq','sadfadsfasfasfas','sadfadsf','2017-10-17 04:19:57');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `biUsers` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	IF NEW.insert_at IS NULL THEN
		SET NEW.insert_at=NOW();
	END IF;
END */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
