-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.30 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных DB
CREATE DATABASE IF NOT EXISTS `DB` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DB`;

-- Дамп структуры для таблица DB.data
CREATE TABLE IF NOT EXISTS `data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `video` varchar(512) DEFAULT NULL,
  `description` varchar(1222) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `uses` varchar(512) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- Дамп данных таблицы DB.data: ~8 rows (приблизительно)
INSERT INTO `data` (`id`, `name`, `video`, `description`, `uses`, `type`) VALUES
	(1, 'Термометр', 'https://www.youtube.com/embed/csROFXo5N_g', 'И твердые, и жидкие, и газообразные вещества при нагревании способны расширяться. Коэффициент расширения помогает нам определять, на сколько увеличился объем вещества, когда мы нагрели его на 1 градус. Коэффициент расширения воды меньше чем у воздуха, именно поэтому воздух сильнее реагирует на изменение температуры. Воздух, который находится внутри бутылки, находясь в теплом помещении, нагревается быстрее чем вода, за счет этого расширяется и выталкивает воду. Поэтому вода поднимается по трубочке. Чем тоньше трубочка, тем больше и быстрее будет подниматься вода.\r\n\r\nТак же при необходимости, можно нанести на термометр градуировку. Для этого пригодится купленный термометр. Его нужно будет поставить рядом с нашим термометром и, наблюдая изменение температуры, наносить значения на бутылку.', 'Стеклянная бутылка;Трубочка;Крышка для бутылки с отверстием;Пластилин;Вода;Краситель', 'thermal'),
	(2, 'Насос', 'https://www.youtube.com/embed/rNuohLxAe-I', 'При горении свечки воздух в стакане будет нагреваться, а значит расширяться. Лишний появившийся объем воздуха выходит из стакана. После потухании свечки, воздух начинает остужаться, его давления начинает не хватать для уравновешивания давления за стаканом. Вода, находившаяся под стаканом испытывает меньшее давление, чем вода за стаканом. Поэтому она вгоняется во внутрь стакана. То есть она не втягивается, а наоборот вгоняется в стакан. ', 'тарелка;стакан;спички;свечка;вода ( для удобства, ее можно подкрасить)', 'thermal'),
	(3, '"Гонки на корабликах"', 'https://www.youtube.com/embed/naGpNgnmpdA', 'Кораблик будет следовать за направлением шарика. Это происходит из-за того, что до начала эксперимента и шарик, и кораблик не имеют электрического заряда. Выполнив трение шарика об ткань или волосы мы заряжаем шарик положительно. Когда мы подносим шар к кораблику, свободные электроны бумаги под действием поля, которое создалось зарядом шара, переместятся в ближайшую часть к шарику, тем самым зарядят эту часть отрицательно. Так как разноименные заряды притягиваются друг другу, то и шарик с корабликом притягиваются. Сила трения воды не имеет большого значения, а кораблик легкий, поэтому его легко привести в движение.', 'тазик с водой;лист бумаги;воздушный шарик;шерстяная или другая хорошо электризуемая ткань', 'electric'),
	(4, 'Генератор', 'https://www.youtube.com/embed/aNHOvggKEns', 'Как мы знаем, чтобы был электрический ток, нужно создать электрическое поле. Гвозди сделаны из цинка и они послужат отрицательными электродами, а медь будет положительным электродом. В кислой среде уксуса у цинковой поверхности будут выделяться электроны, а медь будет их притягивать к себе. И если мы замкнем последние ячейки светодиодом, электроны пройдут через него, а значит он загорится. ', 'сосуд для замораживания льда;гвозди;медная проволока;уксус;светодиод', 'electric'),
	(5, 'Спички и магнит', 'https://www.youtube.com/embed/uOCackzYHRQ', 'При производстве спичек в их состав добавляют оксид железа. Если бы у нас был очень сильный магнит, то они притягивались бы и в обычном состоянии. После сгорании кончика спички сгорят и вещества, которые ослабляют тяготение магнита. А железо из кончика спички никуда не исчезает, поэтому спичка с легкостью притягивается к магниту.', 'неодимовый магнит;спички', 'electromagnetic'),
	(6, 'Электромагнит', 'https://www.youtube.com/embed/w1Dm8X_2Azg', 'После присоединения концов медной проволоки и клемм батарейки через медную катушку начинает протекать электрический ток. Из-за этого возникает магнитное поле, которое заставляет притягиваться металлические предметы. ', 'гвоздь;медная проволока;батарейка;булавки или скрепки ', 'electromagnetic'),
	(7, 'Солнечное затмение', 'https://www.youtube.com/embed/o_xg0qF9pYk', 'Если расположить шар между лампой и глобусом, мы будем наблюдать тень на «Земле». Это и есть Солнечное затмение. Если присмотреться, то центральная часть тени темнее, края светлее. В темной части тени будет наблюдаться полное затмение Солнца, а в более светлых – частная. В остальных, светлых местах затмение не будет наблюдаться.', 'глобус;шар, меньше чем глобус;проволока;настольная лампа', 'light'),
	(8, 'Лунное затмение', 'https://www.youtube.com/embed/tbowvOGK3I4', 'Если поместить за глобусом, то «Луна» останется в тени «Земли». Так как Луна сама не является источником света, а только отражает лучи Солнца, в тени она не сможет отражать свет. Из-за этого происходит Лунное затмение. ', 'глобус;шар, меньше чем глобус;проволока;настольная лампа', 'light');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
