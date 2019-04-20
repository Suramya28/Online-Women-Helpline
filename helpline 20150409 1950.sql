-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema helpline
--

CREATE DATABASE IF NOT EXISTS helpline;
USE helpline;

--
-- Definition of table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `nm` varchar(40) NOT NULL,
  `l` varchar(45) NOT NULL,
  `c` int(30) unsigned NOT NULL,
  `ste` varchar(45) NOT NULL,
  `d` int(30) unsigned NOT NULL,
  `in` varchar(45) NOT NULL,
  `pro` varchar(45) NOT NULL,
  `cm` varchar(45) NOT NULL,
  PRIMARY KEY  (`nm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` (`nm`,`l`,`c`,`ste`,`d`,`in`,`pro`,`cm`) VALUES 
 ('meetu','hj',100,'UP',11,'D','gfkyu','hiik'),
 ('pl','huoo',1000,'UP',12,'Stalking','guuuioo','hio'),
 ('sddg','dfdhg',5433,'UP',12,'Domestic violence','er','ryj');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `q` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`q`) VALUES 
 ('jjncdk'),
 ('dff'),
 ('gh'),
 ('tiySIUC');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `police_register`
--

DROP TABLE IF EXISTS `police_register`;
CREATE TABLE `police_register` (
  `n` varchar(30) NOT NULL,
  `p` varchar(45) NOT NULL,
  `r` varchar(45) NOT NULL,
  `l` varchar(45) NOT NULL,
  `s` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_register`
--

/*!40000 ALTER TABLE `police_register` DISABLE KEYS */;
INSERT INTO `police_register` (`n`,`p`,`r`,`l`,`s`) VALUES 
 ('abc','bb','bhk','kjlk','UP');
/*!40000 ALTER TABLE `police_register` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `n` varchar(45) NOT NULL,
  `p` varchar(45) NOT NULL,
  `s` varchar(45) NOT NULL,
  `c` varchar(45) NOT NULL,
  `cn` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`n`,`p`,`s`,`c`,`cn`) VALUES 
 ('xyz','abc','UP','V',0),
 ('kjgekn','bjm','UP','V',0),
 ('j5t','fv','UP','V',0),
 ('CF','g','UP','V',0),
 ('Shreya','ggvh','UP','V',0),
 ('Sudha','gjjk','UP','V',98765),
 ('Sudha','gul','UP','V',94501),
 ('hb','h','UP','V',0),
 ('bhj','hf','UP','V',0),
 ('Shreya','hj','UP','V',9876),
 ('jbj','jh','UP','V',0),
 ('dty','kll','UP','V',987698),
 ('Shreya','n','UP','V',0),
 ('meetu','neetu','UP','V',100),
 ('hvhf','nj','UP','V',899),
 ('pl','pl','UP','V',1000),
 ('suramya','sdf','UP','V',0),
 ('suramya','shreya','UP','V',0),
 ('Shreya','suramya','UP','V',0),
 ('sfavgbgdrhr','vbfgh','UP','V',0),
 ('nxj','x','UP','V',0),
 ('abc','xy','UP','V',0),
 ('abc','xyz','UP','V',0);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
