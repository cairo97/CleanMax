-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: CleanMax
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` int(10) DEFAULT NULL,
  `servico_id` int(12) DEFAULT NULL,
  `placa` varchar(12) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servico` (`servico_id`),
  KEY `fk_cliente` (`cliente_id`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_servico` FOREIGN KEY (`servico_id`) REFERENCES `servico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
INSERT INTO `agendamento` VALUES (25,'2017-12-15',2,4,'asdasda','Pendente',13),(29,'2018-03-02',4,7,'asdasd','Pendente',10),(34,'1645-12-05',3,4,'dftg','Pendente',6);
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `dataNascimento` date NOT NULL,
  `celular` varchar(25) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (6,'Rafael','123','sd','2000-01-24','123','123','123'),(8,'Gestor do Clean Max','12345678','adm','1912-10-04','(81)9857-4875','(81) 3254-6554','874.646.516-51'),(10,'Moises','123123','moy.souza@gmail.com','1999-02-01','(54)6574-8674','(67) 4674-5656','564.564.564-56'),(11,'Caio Brito','123123','caio@gmail.com','1999-10-10','(81)0922-3019','(81) 0923-0001','000.111.111-23'),(12,'Francisco do Nascimento','123456','fnascimento@gmail.com','1981-08-12','(81)9888-2012','(81) 9888-1212','111.000.222-12'),(13,'adm','123','moy.souza@gmail.com','1956-02-12','(56)4564-5645','(56) 4564-5645','564.564.564-56'),(14,'Chefe Rafael','12','sd','2123-12-12','(65)4654-6546','(65) 4654-6546','465.465.465-46');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` VALUES (14,'Gerente'),(15,'Lavador'),(17,'Administrador');
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Moyyseis Miranda','123','moy','1991-12-12','(15)1654-6546','(65) 6546-5465','656.546.546-54'),(2,'Mestre Rafaell','123','rafa@gmail.com','1992-09-12','(45)6465-4654','(54) 6546-5465','564.654.654-65');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `tipoVeiculo_id` int(11) DEFAULT NULL,
  `tipoServico_id` int(11) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tipoVeiculo` (`tipoVeiculo_id`),
  KEY `fk_tipoServico` (`tipoServico_id`),
  CONSTRAINT `fk_tipoServico` FOREIGN KEY (`tipoServico_id`) REFERENCES `tipoServico` (`id`),
  CONSTRAINT `fk_tipoVeiculo` FOREIGN KEY (`tipoVeiculo_id`) REFERENCES `tipoVeiculo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (3,'Carro Grande porte',14,11,100),(4,'Carro pequeno porte',14,6,15),(7,'Moto Pequena',2,1,12.55);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoServico`
--

DROP TABLE IF EXISTS `tipoServico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoServico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoServico`
--

LOCK TABLES `tipoServico` WRITE;
/*!40000 ALTER TABLE `tipoServico` DISABLE KEYS */;
INSERT INTO `tipoServico` VALUES (1,'Simples'),(6,'Completo'),(7,'Polimento'),(11,'Completo com polimento');
/*!40000 ALTER TABLE `tipoServico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoVeiculo`
--

DROP TABLE IF EXISTS `tipoVeiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoVeiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoVeiculo`
--

LOCK TABLES `tipoVeiculo` WRITE;
/*!40000 ALTER TABLE `tipoVeiculo` DISABLE KEYS */;
INSERT INTO `tipoVeiculo` VALUES (2,'Moto'),(13,'Caminhao'),(14,'Carro');
/*!40000 ALTER TABLE `tipoVeiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-14 20:41:37