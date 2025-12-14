/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - kyc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kyc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kyc`;

/*Table structure for table `bank_statement` */

DROP TABLE IF EXISTS `bank_statement`;

CREATE TABLE `bank_statement` (
  `Account_No` varchar(10000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Mobile` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(1000) DEFAULT NULL,
  `Amount` int(255) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `userhash` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_statement` */

insert  into `bank_statement`(`Account_No`,`Name`,`Email`,`Mobile`,`Aadhar`,`Amount`,`Date`,`status`,`userhash`) values ('353880191327','user2','user2@gmail.com','8877445566','887744556699',1000,'2024-07-31 15:07:36',NULL,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',5000,'2024-07-31 15:09:17',NULL,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',4000,'2024-07-31 15:09:43',NULL,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',2500,'2024-07-31 15:20:19','Debited',NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',2000,'2024-07-31 15:20:53','Debited',NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',5000,'2024-07-31 15:33:45','Credited',NULL),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10000,'2024-07-31 16:41:40','Credited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2000,'2024-07-31 16:44:49','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',4000,'2024-07-31 16:45:18','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2500,'2024-07-31 16:46:10','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',1500,'2024-07-31 16:46:35','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10002,'2024-07-31 16:47:00','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10002,'2024-07-31 16:47:00','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10000,'2024-08-08 15:53:19','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',15000,'2024-08-08 15:53:50','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',35000,'2024-08-08 15:54:40','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',35000,'2024-08-08 15:54:40','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10000,'2024-08-08 15:56:33','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10004,'2024-08-08 15:56:49','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10004,'2024-08-08 15:58:41','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10004,'2024-08-08 15:58:41','Debited','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',4000,'2024-11-13 10:49:19','Credited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',2000,'2024-11-13 10:49:44','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',1000,'2024-11-13 10:51:20','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',50000,'2024-11-13 10:51:53','Credited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',30000,'2024-11-13 10:52:17','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',30000,'2024-11-13 10:52:17','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',70000,'2024-11-13 10:52:52','Credited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',30000,'2024-11-13 10:53:42','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',30000,'2024-11-13 10:53:42','Debited','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',200000,'2024-12-20 16:24:25','Credited','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',20000,'2024-12-20 16:24:44','Debited','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',20000,'2024-12-20 16:24:44','Debited','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',20000,'2024-12-20 16:25:28','Debited','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',20000,'2024-12-20 16:25:28','Debited','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('676289864636','user1','user1@gmail.com','9874563214','123456789012',100,'2025-04-05 14:22:25','Debited','b822f99a7142e909d1b0df5b7f73270e083a1900bc11003d8e4dfcf5f53f7f5e');

/*Table structure for table `banktable` */

DROP TABLE IF EXISTS `banktable`;

CREATE TABLE `banktable` (
  `bankid` varchar(1000) DEFAULT NULL,
  `Bank_name` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `mobile` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `Status` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `banktable` */

insert  into `banktable`(`bankid`,`Bank_name`,`contact`,`mobile`,`address`,`Status`) values ('SbiIivfNiC','Sbi','sbi@gmail.com','9977665544','hyd','Approved'),('icici2PdDaH7','icici','axis@gmail.com','9988776655','hyd','Approved');

/*Table structure for table `credit` */

DROP TABLE IF EXISTS `credit`;

CREATE TABLE `credit` (
  `Account_No` varchar(10000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Mobile` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(1000) DEFAULT NULL,
  `Amount` int(255) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL,
  `userhash` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `credit` */

insert  into `credit`(`Account_No`,`Name`,`Email`,`Mobile`,`Aadhar`,`Amount`,`Date`,`userhash`) values ('353880191328','user1','user1@gmail.com','9874563214','123456789012',65246,'2024-07-26 18:13:16',NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',31354,'2024-07-31 12:00:52',NULL),('353880191326','user5','user5@gmail.com','9874563277','123456789077',34992,'2024-07-31 16:40:27','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',21000,'2024-11-13 10:49:19','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',160000,'2024-12-20 16:24:25','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Father_Name` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(10000) DEFAULT NULL,
  `mobile` varchar(1000) DEFAULT NULL,
  `gender` varchar(1000) DEFAULT NULL,
  `Dob` varchar(1000) DEFAULT NULL,
  `Mop` varchar(1000) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `Bank` varchar(1000) DEFAULT NULL,
  `Ifscode` varchar(1000) DEFAULT NULL,
  `Account_No` varchar(10000) DEFAULT NULL,
  `Account_Created` varchar(10000) DEFAULT NULL,
  `user-hash` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`Name`,`Email`,`Father_Name`,`Aadhar`,`mobile`,`gender`,`Dob`,`Mop`,`Address`,`Bank`,`Ifscode`,`Account_No`,`Account_Created`,`user-hash`) values ('user1','user1@gmail.com','User','123456789012','9874563214','male','2024-07-08','single','hyderabad 90-1-1234','Sbi','SBI52287','676289864636','2024-07-25 12:21:27',NULL),('user2','user2@gmail.com','user2father','887744556699','8877445566','female','2024-07-08','single','hyderabad 90-1-1234','sbi','SBI52287','676289864636','2024-07-25 12:21:27',NULL),('user5','user5@gmail.com','User5','123456789077','9874563277','male','2024-07-02','single','hyderabad 90-1-1234','SBI','SBI52287','676289864636','2024-07-31 16:38:58','2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('user10','Un20@gmail.com','1abcdef','123456789012','9977665544','male','2024-11-04','single','hyderabad','SBI','SBI82312','138681765734','2024-11-12 18:50:31','4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('shiva','shiva@gmail.com','venkates','234567898654','9977665549','male','2024-11-10','single','hyderabad','SBI','SBI41527','161738206028','2024-11-13 10:45:47','85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('Sandeep','sandeep@gmail.com','sandy','123456789009','8965478965','male','2025-04-25','single','AP','SBI','pending','pending','2025-04-04 15:53:29','ab87ee6a8522957fe49978487c67f30fc0decc9c0658523d98f03ad629017c15');

/*Table structure for table `debit` */

DROP TABLE IF EXISTS `debit`;

CREATE TABLE `debit` (
  `Account_No` varchar(10000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Mobile` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(1000) DEFAULT NULL,
  `Amount` int(255) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL,
  `kyc` double(10,2) DEFAULT NULL,
  `total_bal` double(10,2) DEFAULT NULL,
  `userhash` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `debit` */

insert  into `debit`(`Account_No`,`Name`,`Email`,`Mobile`,`Aadhar`,`Amount`,`debit`,`Date`,`kyc`,`total_bal`,`userhash`) values ('353880191328','user1','user1@gmail.com','9874563214','123456789012',2500,'Debited','2024-07-30 13:27:31',NULL,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',300,'Debited','2024-07-30 13:28:08',NULL,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',9000,'Debited','2024-07-30 13:36:36',NULL,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',4500,'Debited','2024-07-30 15:30:33',NULL,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',10002,'Debited','2024-07-30 15:37:35',0.00,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',10002,'Debited','2024-07-30 15:38:22',200.04,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',10002,'Debited','2024-07-30 15:47:20',200.04,NULL,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',10002,'Debited','2024-07-30 15:51:12',200.04,10202.04,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',15000,'Debited','2024-07-30 16:41:46',300.00,14700.00,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',12000,'Debited','2024-07-30 16:56:34',240.00,11760.00,NULL),('353880191328','user1','user1@gmail.com','9874563214','123456789012',2500,'Debited','2024-07-30 17:01:50',0.00,2500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',1000,'Debited','2024-07-31 12:01:10',0.00,1000.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',5000,'Debited','2024-07-31 15:09:17',0.00,5000.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',4000,'Debited','2024-07-31 15:09:43',0.00,4000.00,NULL),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2000,'Debited','2024-07-31 16:42:21',0.00,2000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2000,'Debited','2024-07-31 16:42:48',0.00,2000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2000,'Debited','2024-07-31 16:43:26',0.00,2000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',2000,'Debited','2024-07-31 16:44:49',0.00,2000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',4000,'Debited','2024-07-31 16:45:18',0.00,4000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10000,'Debited','2024-08-08 15:53:19',0.00,10000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',15000,'Debited','2024-08-08 15:53:50',300.00,14700.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10004,'Debited','2024-08-08 15:56:49',200.08,9803.92,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',10004,'Debited','2024-08-08 15:58:41',200.08,9803.92,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',2000,'Debited','2024-11-13 10:49:44',0.00,2000.00,'85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('676289864636','user1','user1@gmail.com','9874563214','123456789012',100,'Debited','2025-04-05 14:22:25',0.00,100.00,'b822f99a7142e909d1b0df5b7f73270e083a1900bc11003d8e4dfcf5f53f7f5e');

/*Table structure for table `kyc1` */

DROP TABLE IF EXISTS `kyc1`;

CREATE TABLE `kyc1` (
  `Account_No` varchar(10000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(1000) DEFAULT NULL,
  `id_proof` varchar(100) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kyc1` */

insert  into `kyc1`(`Account_No`,`Name`,`Email`,`Aadhar`,`id_proof`,`Date`) values ('353880191328','user1','user1@gmail.com','123456789012','ÿØÿà\0JFIF\0,,\0\0ÿá\0bExif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0J\0\0\0\0\0\0\0R(\0\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-07-30 16:56:46'),('353880191327','user2','user2@gmail.com','887744556699','ÿØÿà\0JFIF\0,,\0\0ÿá\0bExif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0J\0\0\0\0\0\0\0R(\0\0\0\0\0\0\0\0\0\0\0\0\0\0','2024-07-31 14:54:10'),('353880191326','user5','user5@gmail.com','123456789077','ÿØÿà\0JFIF\0\0d\0d\0\0ÿÛ\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7ÿÛ\0C\n\n\n\r\r','2024-07-31 16:47:07'),('353880191326','user5','user5@gmail.com','123456789077','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0$\0\0+\0\0\0Péœ’\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0tÞfx\0\0¬qIDATx^ìÝ\r|Õ¡','2024-08-08 15:55:04'),('353880191326','user5','user5@gmail.com','123456789077','ÿØÿà\0JFIF\0,,\0\0ÿá\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÛ\0C\0		','2024-08-08 15:58:55'),('161738206028','shiva','shiva@gmail.com','234567898654','Our core Java programming tutorial is designed for students and working professionals. Java is an ob','2024-11-13 10:52:31'),('161738206028','shiva','shiva@gmail.com','234567898654','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0$\0\0+\0\0\0Péœ’\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0tÞfx\0\0¬qIDATx^ìÝ\r|Õ¡','2024-11-13 10:53:56');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `Account_No` varchar(10000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Mobile` varchar(1000) DEFAULT NULL,
  `Aadhar` varchar(1000) DEFAULT NULL,
  `Amount` bigint(255) DEFAULT NULL,
  `Toaccount_No` varchar(1000) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL,
  `kyc` double(10,2) DEFAULT NULL,
  `total_bal` double(10,2) DEFAULT NULL,
  `userhash` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`Account_No`,`Name`,`Email`,`Mobile`,`Aadhar`,`Amount`,`Toaccount_No`,`Date`,`kyc`,`total_bal`,`userhash`) values ('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:22:55',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:24:46',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:25:38',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:30:27',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'50','2024-07-31 12:35:28',0.00,50.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'50','2024-07-31 12:38:08',0.00,50.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'500','2024-07-31 12:38:36',0.00,500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'500','2024-07-31 12:39:01',0.00,500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:39:28',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'200','2024-07-31 12:41:00',0.00,200.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'3000','2024-07-31 12:42:25',0.00,3000.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:47:46',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:49:12',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:49:40',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:50:00',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:50:35',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 12:56:23',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'200','2024-07-31 12:56:53',0.00,200.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'500','2024-07-31 13:00:35',0.00,500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'200','2024-07-31 13:03:54',0.00,200.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'200','2024-07-31 13:07:01',0.00,200.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 13:10:04',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 13:11:48',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 13:12:34',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 13:13:43',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'100','2024-07-31 13:14:33',0.00,100.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'500','2024-07-31 13:44:16',0.00,500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'1245','2024-07-31 14:53:39',0.00,1245.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'10002','2024-07-31 14:54:00',200.04,9801.96,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191327,'2500','2024-07-31 15:18:05',0.00,2500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'2500','2024-07-31 15:19:53',0.00,2500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'2500','2024-07-31 15:20:19',0.00,2500.00,NULL),('353880191327','user2','user2@gmail.com','8877445566','887744556699',353880191328,'2000','2024-07-31 15:20:53',0.00,2000.00,NULL),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191327,'2500','2024-07-31 16:45:36',0.00,2500.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191327,'2500','2024-07-31 16:46:10',0.00,2500.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191327,'1500','2024-07-31 16:46:35',0.00,1500.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191327,'10002','2024-07-31 16:47:00',200.04,9801.96,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191328,'35000','2024-08-08 15:54:40',700.00,34300.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('353880191326','user5','user5@gmail.com','9874563277','123456789077',353880191327,'10000','2024-08-08 15:56:33',0.00,10000.00,'2a12a5923de4cf6666f1e89ca01b065eec143477a6efa563b072311ca3c58cf3'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',676289864636,'1000','2024-11-13 10:51:20',0.00,1000.00,'85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',676289864636,'30000','2024-11-13 10:52:17',600.00,29400.00,'85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('161738206028','shiva','shiva@gmail.com','9977665544','234567898654',138681765734,'30000','2024-11-13 10:53:42',600.00,29400.00,'85ab9f059496380ceb46df4a7b0529d59358d4e0abca5d7c1a7a27da99baf5a4'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',676289864636,'20000','2024-12-20 16:24:44',400.00,19600.00,'4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5'),('138681765734','user10','Un20@gmail.com','9977665544','123456789012',676289864636,'20000','2024-12-20 16:25:28',400.00,19600.00,'4b25317489d27352da13c6a189828f7e4ff65f377587d9fdd5f8b0e04caee5a5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
