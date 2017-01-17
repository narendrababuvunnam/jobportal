-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: job_portal
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `jobseekerID` varchar(14) NOT NULL,
  `applicationID` varchar(14) NOT NULL,
  `jobprofileID` varchar(14) NOT NULL,
  `appliedondate` date NOT NULL,
  KEY `constraint_jobseekerID` (`jobseekerID`),
  KEY `constraint_jobprofileID` (`jobprofileID`),
  CONSTRAINT `constraint_jobprofileID` FOREIGN KEY (`jobprofileID`) REFERENCES `jobprofile` (`jobprofileID`),
  CONSTRAINT `constraint_jobseekerID` FOREIGN KEY (`jobseekerID`) REFERENCES `jobseeker` (`jobseekerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer` (
  `companyname` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `employerID` varchar(14) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`employerID`),
  KEY `username` (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobprofile`
--

DROP TABLE IF EXISTS `jobprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobprofile` (
  `title` varchar(18) NOT NULL,
  `description` varchar(150) NOT NULL,
  `requiredqualifications` varchar(100) NOT NULL,
  `prefferedqualifications` varchar(100) NOT NULL,
  `typeofjob` varchar(10) NOT NULL,
  `salaryrange` int(7) NOT NULL,
  `workauthorization` varchar(10) NOT NULL,
  `contactinfo` varchar(45) NOT NULL,
  `postedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employerID` varchar(14) NOT NULL,
  `jobprofileID` varchar(14) NOT NULL,
  PRIMARY KEY (`jobprofileID`),
  KEY `constraint_employerID` (`employerID`),
  CONSTRAINT `constraint_employerID` FOREIGN KEY (`employerID`) REFERENCES `employer` (`employerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobprofile`
--

LOCK TABLES `jobprofile` WRITE;
/*!40000 ALTER TABLE `jobprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobseeker` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(14) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `zipcode` int(5) DEFAULT NULL,
  `phonenumber` int(10) NOT NULL,
  `highesteducation` varchar(20) NOT NULL,
  `workexperience1` varchar(100) NOT NULL,
  `workexperience2` varchar(200) DEFAULT NULL,
  `workexperience3` varchar(100) DEFAULT NULL,
  `skills` varchar(60) NOT NULL,
  `certifications` varchar(40) DEFAULT NULL,
  `relocation` varchar(3) NOT NULL,
  `prefferedlocation` varchar(10) DEFAULT NULL,
  `jobseekerID` varchar(14) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`jobseekerID`),
  KEY `constraint_username` (`username`),
  CONSTRAINT `constraint_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker`
--

LOCK TABLES `jobseeker` WRITE;
/*!40000 ALTER TABLE `jobseeker` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `employerOrNot` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-14 10:35:06
