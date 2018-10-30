-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 01:23 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enchers`
--

-- --------------------------------------------------------

--
-- Table structure for table `achat`
--

CREATE TABLE IF NOT EXISTS `achat` (
  `ID_AHCAT` int(11) NOT NULL AUTO_INCREMENT,
  `NBJETON` int(11) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `DATE_ACHAT` date DEFAULT NULL,
  PRIMARY KEY (`ID_AHCAT`),
  KEY `FK_ASSOCIATION_1` (`NBJETON`),
  KEY `FK_ASSOCIATION_2` (`EMAIL`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `achat`
--

INSERT INTO `achat` (`ID_AHCAT`, `NBJETON`, `EMAIL`, `DATE_ACHAT`) VALUES
(16, 2000, 'mohamed@marzouki.com', '2016-06-17'),
(17, 500, 'mohamed@marzouki.com', '2016-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `encher`
--

CREATE TABLE IF NOT EXISTS `encher` (
  `ID_ENCH` int(11) NOT NULL,
  `REF_PROD` varchar(30) NOT NULL,
  `DATE_DEB` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `NBJETONS` int(11) DEFAULT NULL,
  `STATUT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_ENCH`),
  KEY `FK_ASSOCIATION_6` (`REF_PROD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `PRIX_HIST` char(10) NOT NULL,
  `date_ecnhers` date NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `ID_ENCH` int(11) NOT NULL,
  PRIMARY KEY (`PRIX_HIST`,`EMAIL`,`ID_ENCH`),
  KEY `FK_ASSOCIATION_4` (`EMAIL`),
  KEY `FK_ASSOCIATION_5` (`ID_ENCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pack_jeton`
--

CREATE TABLE IF NOT EXISTS `pack_jeton` (
  `NBJETON` int(11) NOT NULL,
  `DESCRIP` varchar(100) DEFAULT NULL,
  `PRIX` float DEFAULT NULL,
  PRIMARY KEY (`NBJETON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pack_jeton`
--

INSERT INTO `pack_jeton` (`NBJETON`, `DESCRIP`, `PRIX`) VALUES
(300, 'mini', 3000),
(500, 'moyenne', 5000),
(700, 'big', 7000),
(1000, 'very big', 10000),
(2000, 'very very big', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `REF_PROD` varchar(30) NOT NULL,
  `DESC_PROD` varchar(1000) DEFAULT NULL,
  `IMAGE` varchar(60) DEFAULT NULL,
  `PRIX_PROD` float DEFAULT NULL,
  PRIMARY KEY (`REF_PROD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`REF_PROD`, `DESC_PROD`, `IMAGE`, `PRIX_PROD`) VALUES
('Apple iPad Air', 'Features:\r\nFace detection, Digital zoom, Self-timer, Digital image stabilization, Touch to focus, Geo tagging\r\nSettings:\r\nExposure compensation\r\nShooting Modes:\r\nPopupHigh Dynamic Range mode (HDR)', NULL, 9000),
('Apple iPad Air Mini', 'Features:\r\nAutofocus, Back-illuminated sensor (BSI)\r\nSoftware Features:\r\nFace detection, Digital zoom, Digital image stabilization, Touch to focus, Geo tagging\r\nSettings:\r\nExposure compensation\r\nShooting Modes:\r\nPopupHigh Dynamic Range mode (HDR)', NULL, 7000),
('Apple iPad Pro', 'Aperture size:\r\nF2.4\r\nHardware Features:\r\n[+]Autofocus, Back-illuminated sensor (BSI)\r\nSoftware Features:\r\n[+]Face detection, Self-timer, Touch to focus, Geo tagging\r\nSettings:\r\nExposure compensation\r\nShooting Modes:\r\nPopupBurst mode, Panorama\r\nCamcorder:\r\n1920x1080 (1080p HD) (30 fps)\r\nFeatures:\r\n[+]Time-lapse video, Digital image stabilization, Video calling, Video sharing', NULL, 10000),
('Iphone5', 'l size:\r\n1.4 μm\r\nHardware Features:\r\nSapphire crystal lens cover, Autofocus, Back-illuminated sensor (BSI)\r\nSoftware Features:\r\nFace detection, Digital zoom, Self-timer, Digital image stabilization, Touch to focus, Geo tagging\r\nSettings:\r\nExposure compensation\r\nShooting Modes:\r\nPopupHigh Dynamic Range mode (H', NULL, 8000),
('LG Stylus 2 Plus', 'GSM:\r\n850, 900, 1800, 1900 MHz\r\nUMTS:\r\n850, 900, 1900, 2100 MHz\r\nFDD LTE:\r\n900 (band 8), 1800 (band 3), 2100 (band 1), 2600 (band 7) MHz\r\nTDD LTE:\r\n1900 (band 39), 2300 (band 40), 2500 (band 41), 2600 (band 38) MHz', NULL, 2000),
('Samsung Galaxy Amp PrimeFOLLOW', 'Flash:\r\nLED\r\nHardware Features:\r\nAutofocus\r\nSoftware Features:\r\nDigital zoom, Self-timer, Geo tagging\r\nSettings:\r\nExposure compensation, ISO control, White balance presets\r\nShooting Modes:\r\nBurst mode, Panorama\r\nCamcorder:\r\n1280x720 (720p HD)\r\nFeatures:\r\nVideo calling\r\nFront-facing camera:\r\n2 megapixels', NULL, 5000),
('Samsung Galaxy S7 active', 'LED\r\nAperture size:\r\nF1.7\r\nPixel size:\r\n1.4 μm\r\nHardware Features:\r\nOptical image stabilization, Autofocus (Phase detection)\r\nSoftware Features:\r\nObject tracking, Smile detection, Self-timer, Geo tagging\r\nSettings:\r\nExposure compensation, ISO control, White balance presets\r\nShooting Modes:\r\nPopupHigh Dynamic Range mode (HDR), Panorama, Frames, Effects\r\nCamcorder:\r\n3840x2160 (4K) (30 fps), 1920x1080 (1080p HD) (60 fps), 1280x720 (720p HD)\r\nFeatures:\r\nHigh Dynamic Range mode (HDR), Picture-taking during video recording, Video calling, Video sharing\r\nFront-facing camera:\r\n5 megapixels', NULL, 7000),
('Samsung Galaxy Tab A 10.1 (201', '4.2\r\nWi-Fi:\r\n802.11 a, b, g, n, ac, dual-band\r\nUSB:\r\nUSB 2.0\r\nConnector:\r\nmicroUSB\r\nFeatures:\r\nMass storage device, USB charging\r\nPositioning:\r\nGPS, A-GPS, Glonass, BeiDou\r\nNavigation:\r\nYes\r\nOther:\r\nTethering, Computer sync, OTA sync', NULL, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `NIVEAU` int(11) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(60) DEFAULT NULL,
  KEY `FK_ASSOCIATION_3` (`EMAIL`),
  KEY `NIVEAU` (`NIVEAU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`NIVEAU`, `EMAIL`, `DESCRIPTION`) VALUES
(1, 'admin@admin.com', NULL),
(2, 'mohamed@marzouki.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `EMAIL` varchar(30) NOT NULL,
  `PW` varchar(30) DEFAULT NULL,
  `PSEUDO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`EMAIL`, `PW`, `PSEUDO`) VALUES
('admin@admin.com', 'admin', 'admin'),
('mohamed@marzouki.com', 'marzouki', 'mohamed');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `FK_ASSOCIATION_1` FOREIGN KEY (`NBJETON`) REFERENCES `pack_jeton` (`NBJETON`),
  ADD CONSTRAINT `FK_ASSOCIATION_2` FOREIGN KEY (`EMAIL`) REFERENCES `user` (`EMAIL`);

--
-- Constraints for table `encher`
--
ALTER TABLE `encher`
  ADD CONSTRAINT `FK_ASSOCIATION_6` FOREIGN KEY (`REF_PROD`) REFERENCES `produit` (`REF_PROD`);

--
-- Constraints for table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `FK_ASSOCIATION_4` FOREIGN KEY (`EMAIL`) REFERENCES `user` (`EMAIL`),
  ADD CONSTRAINT `FK_ASSOCIATION_5` FOREIGN KEY (`ID_ENCH`) REFERENCES `encher` (`ID_ENCH`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_ASSOCIATION_3` FOREIGN KEY (`EMAIL`) REFERENCES `user` (`EMAIL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
