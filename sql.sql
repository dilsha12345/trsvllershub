/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.10-MariaDB : Database - travelershub
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travelershub` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `travelershub`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category_id`,`Vehicle`) values (1,'cycle'),(2,'bike');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `Chat_id` int(50) NOT NULL AUTO_INCREMENT,
  `Sender_id` varchar(50) DEFAULT NULL,
  `Receiver` varchar(50) DEFAULT NULL,
  `Message` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`Chat_id`,`Sender_id`,`Receiver`,`Message`,`Date`) values (14,'3','1','wqefrtyui','2022-02-19 12:53:27'),(13,'3','1','','2022-02-19 12:53:24'),(12,'3','2','wehjk','2022-02-19 12:50:29'),(11,'3','2','hellooo','2022-02-19 12:40:12'),(10,'3','7','sdfgh','2022-02-19 12:29:38'),(9,'7','1','hellooooooo','2022-02-19 12:26:32'),(15,'3','1','dfghjkl;','2022-02-19 12:54:31'),(16,'3','1','sdfghjkl;','2022-02-19 12:54:36'),(17,'3','2','helloooooooo','2022-02-19 12:55:01'),(18,'8','36','hello','2022-02-19 15:42:56'),(19,'9','36','hiiii','2022-02-19 15:43:06'),(20,'9','36','hello','2022-02-19 15:45:17'),(21,'9','36','helloooooooooo','2022-02-19 16:50:00'),(22,'9','36','dwafegfthj','2022-02-19 16:58:03'),(23,'9','36','hiiiii','2022-02-23 09:13:24');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `Complaint_id` int(50) NOT NULL AUTO_INCREMENT,
  `User_id` varchar(50) DEFAULT NULL,
  `Complaint` varchar(50) DEFAULT NULL,
  `Reply` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`Complaint_id`,`User_id`,`Complaint`,`Reply`,`Date`) values (1,'1','slow drive','ok','2022-02-10'),(2,'2','hloo','hai','2022-02-10'),(3,'2','hloo','tgyhb','2022-02-10'),(4,'2','hloo','ok','2022-02-10'),(5,'2','hloo','sxcvb','2022-02-10'),(6,'5','no','pending','2022-02-10'),(7,'4','hello','pending','2022-02-10'),(8,'6','tyuerjhrjt','pending','2022-02-10'),(9,'1','dfg','pending','2022-02-11');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `Feedback_id` int(50) NOT NULL AUTO_INCREMENT,
  `Trip_id` varchar(50) DEFAULT NULL,
  `User_id` varchar(50) DEFAULT NULL,
  `Feedback` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`Feedback_id`,`Trip_id`,`User_id`,`Feedback`,`Date`) values (1,'1','2','I LIKEED','2022-02-10');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `File_id` int(50) NOT NULL AUTO_INCREMENT,
  `Trip_id` varchar(50) DEFAULT NULL,
  `Files` varchar(500) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`File_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`File_id`,`Trip_id`,`Files`,`Date`) values (1,'1','static/c63658e8-d6b9-4672-99ec-5e55ce74dae8Calculate.png','2022-02-10'),(2,'2','static/fb63357e-a239-40c9-8652-47dcde6f2422Menudrvn.png','2022-02-10'),(3,'2','static/b6415c5c-ea7f-4a27-b334-0f01ce40333aperson (2).png','2022-02-10'),(4,'1','static/6d45a5cf-cd22-4233-a169-2b0db6570fe9eng.jpeg','2022-02-10'),(5,'6','static/be926c72-c192-4e52-b904-77d831e20327CO4Pgrm4.png','2022-02-10'),(6,'6','static/0f213cc5-2194-4181-bb7d-1d52fdd91108','2022-02-10'),(7,'3','static/bd338a86-2d51-49ed-ac65-c147f8ac7df22.PNG','2022-02-18');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values (1,'Fathimath ','Fathimath ','user'),(2,'admin','admin','admin'),(3,'Basil','Basil','user'),(4,'user','user','user'),(5,'Maneesha','Maneesha','user'),(6,'Babu','Babu','user'),(7,'aki','aki','reject'),(8,'user1','user1','user'),(9,'anu','anu','user'),(10,'ammu','ammu','user');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `Request_id` int(50) NOT NULL AUTO_INCREMENT,
  `Trips_id` varchar(50) DEFAULT NULL,
  `User_id` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`Request_id`,`Trips_id`,`User_id`,`Status`,`Date`,`category_id`) values (36,'16','8','accept','2022-02-19 15:44:15',2),(35,'15','9','pending','2022-02-19 15:36:17',1),(34,'15','9','accept','2022-02-19 15:18:57',1),(33,'14','3','pending','2022-02-19 15:14:11',1);

/*Table structure for table `trips` */

DROP TABLE IF EXISTS `trips`;

CREATE TABLE `trips` (
  `Trips_id` int(50) NOT NULL AUTO_INCREMENT,
  `User_id` int(50) DEFAULT NULL,
  `Place` varchar(50) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Tripstartdate` varchar(50) DEFAULT NULL,
  `Tripenddate` varchar(50) DEFAULT NULL,
  `Starttime` varchar(50) DEFAULT NULL,
  `Startplace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Trips_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `trips` */

insert  into `trips`(`Trips_id`,`User_id`,`Place`,`category_id`,`Description`,`Tripstartdate`,`Tripenddate`,`Starttime`,`Startplace`) values (16,9,'vvv','2','dfghjkl','sdfghjl','dfghjkl;','fghjk','dfghjkl'),(15,8,'kochi','1','asdfgthu','13-06-2023','20-06-2023','11','fghj');

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Age` varchar(50) DEFAULT NULL,
  `Place` varchar(50) DEFAULT NULL,
  `Phoneno:` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Idproof` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

insert  into `userregistration`(`user_id`,`login_id`,`Firstname`,`Lastname`,`Address`,`Age`,`Place`,`Phoneno:`,`Email`,`Idproof`,`Status`,`Gender`) values (9,10,'ammu','Doe','wedfghjk','25','kochi','7034832674','s@gmail.com','1.PNG','pending','female'),(8,9,'anu','a','fdff','22','ekm','2563201478','a@gmail.com','','pending','female');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
