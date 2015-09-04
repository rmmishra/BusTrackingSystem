/*
SQLyog Community v11.28 (64 bit)
MySQL - 5.0.45-community-nt : Database - gpsdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gpsdata` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gpsdata`;

/*Table structure for table `bus_data` */

DROP TABLE IF EXISTS `bus_data`;

CREATE TABLE `bus_data` (
  `busno` varchar(30) default NULL,
  `name` varchar(30) default NULL,
  `cost` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus_data` */

insert  into `bus_data`(`busno`,`name`,`cost`) values ('1006','ibus','10000000'),('1007','IBUS','12012012');

/*Table structure for table `bus_info` */

DROP TABLE IF EXISTS `bus_info`;

CREATE TABLE `bus_info` (
  `bno` int(11) default NULL,
  `gpsno` int(11) default NULL,
  `Driver_name` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus_info` */

insert  into `bus_info`(`bno`,`gpsno`,`Driver_name`) values (4001,1001,'Mohan'),(4002,1002,'Madhav'),(4003,1003,'Anjani'),(4004,1004,'Angad'),(4005,1005,'Anand'),(4006,1006,'Abhi');

/*Table structure for table `bus_loc` */

DROP TABLE IF EXISTS `bus_loc`;

CREATE TABLE `bus_loc` (
  `from_loc` varchar(30) default NULL,
  `to_loc` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus_loc` */

/*Table structure for table `bus_stop` */

DROP TABLE IF EXISTS `bus_stop`;

CREATE TABLE `bus_stop` (
  `stop_no` int(11) default NULL,
  `stop_name` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus_stop` */

insert  into `bus_stop`(`stop_no`,`stop_name`) values (1,'Choitram'),(2,'Dwarkapuri'),(3,'Vishnupuri'),(4,'Bhawarkua'),(5,'Holkar'),(6,'Navlakha'),(7,'Indra Pratima'),(8,'GPO'),(9,'MY Hospital'),(10,'IRCTSC'),(11,'Geeta Bhawan'),(12,'Palasia'),(13,'LIG'),(14,'C21'),(15,'Vijaynagar');

/*Table structure for table `driver_info` */

DROP TABLE IF EXISTS `driver_info`;

CREATE TABLE `driver_info` (
  `dno` varchar(20) default NULL,
  `dname` varchar(30) default NULL,
  `dfname` varchar(30) default NULL,
  `address` varchar(50) default NULL,
  `voteridno` varchar(30) default NULL,
  `mobile` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `driver_info` */

insert  into `driver_info`(`dno`,`dname`,`dfname`,`address`,`voteridno`,`mobile`) values ('D2001','Mohan','Abhinandan das','123 ramnager\r\nIndore','Y1123','999393635'),('D2002','Madhav raj','abhishek','neta nagar indore','X1142','9993936123'),('D2003','Anjani','Abhinandan','ChandanNagar','Y1144','9993936123'),('D2004','Angad','Abhinav','LaxmiNagar','Y1155','9993936123'),('D2005','Anand','Anav','Sita Nagar','Y1158','999391233'),('D2006','Abhi','Abhinandan','45 ram Nagar\r\nindore','Y1112','999391213'),('D1234','RamBharose','Chalachal','SwargDham','G4567','9874561235');

/*Table structure for table `gpslocation` */

DROP TABLE IF EXISTS `gpslocation`;

CREATE TABLE `gpslocation` (
  `gpsid` varchar(20) default NULL,
  `lat` varchar(30) default NULL,
  `lon` varchar(30) default NULL,
  `location` varchar(40) default NULL,
  `root` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gpslocation` */

insert  into `gpslocation`(`gpsid`,`lat`,`lon`,`location`,`root`) values ('1001','45.123458','77.45874','bhawarkua','Choitram_TO_Vijaynagar'),('1003','25.123458','17.45874','bhawarkua',NULL),('1002','25.123458','17.45874','bhawarkua',NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uid` varchar(30) default NULL,
  `pass` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`uid`,`pass`) values ('admin','manager'),('admin','123'),('hum','chandramukhi');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
