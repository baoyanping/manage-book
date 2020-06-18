CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `library`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` varchar(10) NOT NULL COMMENT '�鱾ID',
  `bookname` varchar(30) DEFAULT NULL COMMENT '�鱾����',
  `author` varchar(20) DEFAULT NULL COMMENT '�鱾����',
  `publisher` varchar(30) DEFAULT NULL COMMENT '������',
  `price` int(11) DEFAULT NULL COMMENT '�鱾�۸�',
  `category` varchar(10) DEFAULT NULL COMMENT '�鱾��Ŀ',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�鼮���ݿ�';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('000001','Java���ļ���','�� S. ��˹����','��е��ҵ������',119,'�����',20,'��JAVA���ļ���������8�棩��2011����ӹ�ҵ����������ͼ�飬�������˹������Gary Cornell���������JavaSE6ƽ̨������ȫ����£�������Javaƽ̨��׼��(JavaSE/J2SE)��ȫ������֪ʶ���ṩ�˴��������Ҿ���ʵ�������Ӧ��ʵ����','3'),('000002','C++PrimaerPlus','Stephen Prata','�й��ʵ������',99,'�����',15,'��JAVA���ļ���������8�棩��2011����ӹ�ҵ����������ͼ�飬�������˹������Gary Cornell���������JavaSE6ƽ̨������ȫ����£�������Javaƽ̨��׼��(JavaSE/J2SE)��ȫ������֪ʶ���ṩ�˴��������Ҿ���ʵ�������Ӧ��ʵ����','3'),('000003','�㷨�������ž���','�����','�廪��ѧ������',50,'�����',15,'��JAVA���ļ���������8�棩��2011����ӹ�ҵ����������ͼ�飬�������˹������Gary Cornell���������JavaSE6ƽ̨������ȫ����£�������Javaƽ̨��׼��(JavaSE/J2SE)��ȫ������֪ʶ���ṩ�˴��������Ҿ���ʵ�������Ӧ��ʵ����','3'),('000004','������������ͳ��','ʢ�� лʽǧ �˳���','�ߵȽ���������',38,'��ѧ��',15,'��JAVA���ļ���������8�棩��2011����ӹ�ҵ����������ͼ�飬�������˹������Gary Cornell���������JavaSE6ƽ̨������ȫ����£�������Javaƽ̨��׼��(JavaSE/J2SE)��ȫ������֪ʶ���ṩ�˴��������Ҿ���ʵ�������Ӧ��ʵ����','1'),('000005','���ݽṹ(C���԰�)','��ε�� ��ΰ��','�廪��ѧ������',29,'�����',8,'��JAVA���ļ���������8�棩��2011����ӹ�ҵ����������ͼ�飬�������˹������Gary Cornell���������JavaSE6ƽ̨������ȫ����£�������Javaƽ̨��׼��(JavaSE/J2SE)��ȫ������֪ʶ���ṩ�˴��������Ҿ���ʵ�������Ӧ��ʵ����','3');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iolog`
--

DROP TABLE IF EXISTS `iolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iolog` (
  `bookid` varchar(10) DEFAULT NULL,
  `readerid` varchar(45) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `borrowtime` varchar(45) NOT NULL,
  `borrowday` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`borrowtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iolog`
--

LOCK TABLES `iolog` WRITE;
/*!40000 ALTER TABLE `iolog` DISABLE KEYS */;
INSERT INTO `iolog` VALUES ('000001','1',-1,'2018��01��18�� 17ʱ46��24��',14,1),('000001','1',-1,'2018��01��18�� 17ʱ46��37��',7,1),('000001','1',1,'2018��01��18�� 17ʱ48��43��',NULL,1),('000001','1',1,'2018��01��18�� 17ʱ49��03��',NULL,1);
/*!40000 ALTER TABLE `iolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reader` (
  `username` varchar(50) NOT NULL COMMENT '�����û���',
  `password` varchar(45) DEFAULT NULL COMMENT '��������',
  `name` varchar(45) DEFAULT NULL COMMENT '��������',
  `sex` varchar(45) DEFAULT NULL COMMENT '�����Ա�',
  `status` int(11) DEFAULT NULL COMMENT '����״̬(1.���� -1.������)',
  `mail` varchar(45) DEFAULT NULL COMMENT '��������',
  `tel` varchar(45) DEFAULT NULL COMMENT '���ߵ绰',
  `grade` int(11) DEFAULT '-1' COMMENT '�����꼶',
  `classnum` int(11) DEFAULT '-1' COMMENT '���߰༶',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���߱�';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES ('1','123456','����','����',1,'����','����',1,1);
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempadd`
--

DROP TABLE IF EXISTS `tempadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempadd` (
  `id` varchar(10) NOT NULL,
  `bookname` varchar(30) DEFAULT NULL COMMENT '�鱾����',
  `author` varchar(20) DEFAULT NULL COMMENT '�鱾����',
  `publisher` varchar(30) DEFAULT NULL COMMENT '������',
  `price` int(11) DEFAULT NULL COMMENT '�鱾�۸�',
  `category` varchar(10) DEFAULT NULL COMMENT '�鱾��Ŀ',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempadd`
--

LOCK TABLES `tempadd` WRITE;
/*!40000 ALTER TABLE `tempadd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user` varchar(15) NOT NULL COMMENT '�û���',
  `password` varchar(25) DEFAULT NULL COMMENT '�û�����',
  `name` varchar(20) DEFAULT NULL COMMENT '�û���ʵ����',
  `sex` varchar(5) DEFAULT NULL COMMENT '�û��Ա�',
  `department` varchar(45) DEFAULT NULL COMMENT '�û�����',
  `tel` varchar(20) DEFAULT NULL COMMENT '�û��绰',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123456','123456','����','��','ͼ���','12345678901');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'library'
--

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 21:05:06
