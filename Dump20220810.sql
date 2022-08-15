CREATE DATABASE  IF NOT EXISTS `sati` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sati`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sati
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `encuesta`
--

DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuesta` (
  `id` int NOT NULL,
  `sati` int DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `proy` int DEFAULT NULL,
  `tiem` int DEFAULT NULL,
  `ause` int DEFAULT NULL,
  `sanc` int DEFAULT NULL,
  `jefe` int DEFAULT NULL,
  `sueld` int DEFAULT NULL,
  `rota` int DEFAULT NULL,
  `TRABAJADORES_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_TRABAJADORES_TRABAJADORES_idx` (`TRABAJADORES_ID`),
  CONSTRAINT `fk_TRABAJADORES_TRABAJADORES` FOREIGN KEY (`TRABAJADORES_ID`) REFERENCES `trabajadores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (1,81,41,5,7,7,1,5,5000,5,28),(2,89,43,6,8,1,2,5,4000,8,100),(3,55,45,5,5,2,1,3,4000,6,67),(4,21,NULL,3,1,10,4,3,2500,4,36),(5,NULL,33,NULL,NULL,8,5,NULL,NULL,NULL,53),(6,21,24,1,3,1,3,1,1500,6,26),(7,71,35,7,5,4,5,4,4000,1,112),(8,80,42,6,7,9,4,4,5000,8,95),(9,86,33,5,7,2,2,5,5000,5,27),(10,94,37,8,6,9,3,2,4000,12,70),(11,22,33,2,2,7,3,2,2500,10,41),(12,NULL,NULL,NULL,NULL,7,NULL,NULL,5000,13,85),(13,12,49,3,3,7,2,4,1500,12,81),(14,91,45,9,6,10,4,1,4000,12,10),(15,92,45,10,7,6,4,3,5000,9,52),(16,32,25,3,3,3,3,4,1500,3,125),(17,24,41,2,1,6,0,5,1500,12,19),(18,89,29,5,7,4,1,4,3000,13,117),(19,80,46,7,6,8,1,1,4000,5,38),(20,NULL,NULL,9,4,4,3,NULL,3000,10,120),(21,70,25,10,4,3,2,2,3000,10,91),(22,83,45,8,8,NULL,2,NULL,3000,1,121),(23,19,38,2,3,0,0,5,1500,1,7),(24,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,5,94),(25,29,25,5,2,7,3,4,1500,7,118),(26,92,40,8,6,4,2,3,5000,3,21),(27,29,42,2,3,6,5,2,1500,7,123),(28,17,49,3,1,2,2,1,1500,13,97),(29,18,31,1,NULL,7,0,NULL,1500,6,92),(30,68,48,5,6,1,2,3,3000,9,73),(31,97,47,10,8,10,3,2,5000,5,90),(32,75,27,5,6,6,0,5,4000,14,20),(33,27,31,2,2,9,1,4,1500,11,116),(34,88,29,10,4,0,5,4,4000,3,30),(35,83,32,10,5,5,4,2,5000,14,8),(36,78,32,9,4,10,2,1,4000,6,119),(37,89,NULL,8,4,NULL,3,3,5000,6,44),(38,45,28,4,1,9,2,2,1500,7,40),(39,72,34,9,8,4,4,1,3000,11,12),(40,46,50,5,5,3,1,5,3000,1,49),(41,83,34,9,4,4,1,3,5000,14,75),(42,75,33,8,5,4,2,5,5000,4,43),(43,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74),(44,73,40,9,8,8,3,4,5000,15,31),(45,76,NULL,NULL,7,NULL,4,NULL,3000,NULL,22),(46,12,NULL,NULL,3,10,NULL,1,NULL,NULL,63),(47,26,38,6,NULL,NULL,5,4,NULL,10,114),(48,72,41,8,5,10,1,5,3000,11,33),(49,97,46,NULL,NULL,6,NULL,NULL,4000,7,89),(50,83,38,8,4,9,4,3,5000,15,59),(51,90,50,9,4,5,5,2,5000,15,110),(52,88,25,9,4,NULL,NULL,5,NULL,10,48),(53,11,29,1,2,10,1,5,1500,1,66),(54,NULL,NULL,5,4,8,NULL,NULL,3000,11,102),(55,85,29,9,6,8,4,1,4000,6,46),(56,76,44,9,5,7,NULL,NULL,4000,4,109),(57,44,42,5,4,8,4,4,5000,11,98),(58,96,43,8,6,2,2,1,5000,3,42),(59,23,29,5,2,3,2,3,1500,3,2),(60,60,33,4,2,7,1,1,2500,9,93),(61,21,39,6,5,7,0,3,3000,10,72),(62,18,34,2,2,3,2,1,2500,11,68),(63,86,47,9,5,9,2,2,3000,15,13),(64,87,48,8,8,9,4,5,5000,2,86),(65,25,41,2,3,2,3,5,2500,3,5),(66,87,36,6,6,10,1,3,5000,6,14),(67,17,26,2,3,1,4,4,1500,1,107),(68,NULL,35,6,6,NULL,NULL,2,3000,11,18),(69,48,38,5,1,8,4,1,2500,2,104),(70,83,35,10,NULL,NULL,0,3,5000,12,25),(71,83,41,6,6,7,1,3,5000,5,82),(72,26,39,2,1,2,0,1,1500,2,3),(73,74,37,9,5,3,5,2,3000,11,6),(74,83,47,6,8,7,0,4,4000,9,1),(75,90,37,6,7,4,0,5,4000,7,69),(76,46,24,NULL,NULL,9,2,4,2500,14,61),(77,71,33,6,6,4,4,4,4000,6,111),(78,46,35,5,2,7,1,1,2500,5,34),(79,90,47,6,6,0,2,2,4000,11,57),(80,15,44,2,2,3,4,4,1500,2,115),(81,46,43,5,3,2,4,5,2500,3,76),(82,26,34,1,2,4,5,5,2500,15,51),(83,74,47,10,7,5,3,5,3000,7,62),(84,41,41,4,2,1,3,1,2500,6,103),(85,27,24,5,1,4,4,5,1500,9,54),(86,91,50,9,7,3,2,4,4000,1,78),(87,73,46,9,8,4,1,4,3000,9,4),(88,71,39,10,4,5,3,1,3000,8,106),(89,80,NULL,6,6,0,3,1,NULL,8,29),(90,42,22,4,2,2,1,4,2500,10,83),(91,73,37,9,7,0,5,5,4000,11,124),(92,88,44,7,4,5,5,3,4000,14,79),(93,85,31,9,8,10,1,5,5000,14,32),(94,78,40,9,5,6,2,2,3000,9,65),(95,71,45,10,5,4,3,2,4000,11,35),(96,89,49,8,7,10,1,5,3000,9,50),(97,95,50,10,8,2,2,5,4000,9,101),(98,31,31,3,3,1,2,3,2500,14,16),(99,89,48,5,8,8,2,1,3000,8,84),(100,76,NULL,10,NULL,1,1,4,4000,15,80),(101,89,27,10,6,10,1,4,3000,9,108),(102,86,38,6,6,7,5,4,4000,7,9),(103,93,47,7,6,7,4,5,4000,15,47),(104,27,NULL,NULL,3,1,0,NULL,1500,NULL,58),(105,95,44,8,6,1,5,2,5000,15,87),(106,76,36,5,7,8,3,2,5000,6,15),(107,25,42,2,2,9,2,1,1500,7,55),(108,79,46,9,4,0,1,3,3000,8,96),(109,NULL,49,NULL,1,9,0,NULL,1500,8,45),(110,99,27,7,7,6,5,2,5000,9,105),(111,71,40,7,8,10,2,3,4000,5,122),(112,74,33,9,5,5,5,1,3000,5,99),(113,70,47,10,7,9,5,5,3000,15,113),(114,23,42,1,3,5,3,2,1500,9,56),(115,71,33,5,7,0,2,1,4000,12,77),(116,89,27,9,5,10,5,1,5000,8,11),(117,97,44,9,6,10,5,4,4000,14,60),(118,77,45,9,5,5,0,4,3000,4,39),(119,75,50,7,7,10,5,2,3000,3,23),(120,73,29,5,7,8,5,1,4000,6,88),(121,81,42,10,6,10,5,5,4000,4,64),(122,46,31,5,3,6,0,2,2500,9,24),(123,99,NULL,7,7,5,NULL,NULL,4000,4,17),(124,NULL,NULL,5,7,6,2,2,5000,6,71),(125,10,48,3,1,6,1,4,1500,12,37);
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores` (
  `ID` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES (1,'Emi Humphrey',936689878,'emihumphrey9053@entelgy.com'),(2,'Gareth Oneil',958713842,'garethoneil@entelgy.com'),(3,'Aphrodite Jackson',931457584,'aphroditejackson@entelgy.com'),(4,'Kamal Bird',968758377,'kamalbird1770@entelgy.com'),(5,'Xandra Harrell',949483828,'xandraharrell@entelgy.com'),(6,'Ryder Whitehead',936523413,'ryderwhitehead4188@entelgy.com'),(7,'Sean Best',942332265,'seanbest6926@entelgy.com'),(8,'Ezekiel Hayes',935970658,'ezekielhayes9807@entelgy.com'),(9,'Zane Erickson',991393377,'zaneerickson@entelgy.com'),(10,'Nigel Warren',980662568,'nigelwarren5086@entelgy.com'),(11,'Ulysses Palmer',965743300,'ulyssespalmer5428@entelgy.com'),(12,'Russell Munoz',965484420,'russellmunoz2224@entelgy.com'),(13,'Cassidy Winters',966246068,'cassidywinters@entelgy.com'),(14,'Bevis Bean',935242563,'bevisbean@entelgy.com'),(15,'Geraldine Perez',924028262,'geraldineperez3548@entelgy.com'),(16,'Gary Moran',906928733,'garymoran6129@entelgy.com'),(17,'Moses Hudson',933647319,'moseshudson7333@entelgy.com'),(18,'Dillon Clarke',940644577,'dillonclarke6434@entelgy.com'),(19,'Josephine Moses',952681415,'josephinemoses@entelgy.com'),(20,'Molly Whitley',936157527,'mollywhitley@entelgy.com'),(21,'Kessie Stephens',911576512,'kessiestephens6629@entelgy.com'),(22,'Linus Mcgowan',961501028,'linusmcgowan@entelgy.com'),(23,'Ursa Robles',974782314,'ursarobles7840@entelgy.com'),(24,'Sasha Sandoval',940764483,'sashasandoval@entelgy.com'),(25,'Rogan Duffy',974474721,'roganduffy@entelgy.com'),(26,'Hollee Combs',977232865,'holleecombs478@entelgy.com'),(27,'Oleg Greer',908510873,'oleggreer5316@entelgy.com'),(28,'Jolene Evans',972431826,'joleneevans3221@entelgy.com'),(29,'Brandon Estrada',947434466,'brandonestrada6450@entelgy.com'),(30,'Abra Wagner',922174644,'abrawagner1894@entelgy.com'),(31,'Silas Buckley',988747857,'silasbuckley@entelgy.com'),(32,'Yuli Mayer',906861644,'yulimayer4663@entelgy.com'),(33,'Armando Merrill',975137592,'armandomerrill@entelgy.com'),(34,'Cora Manning',943896547,'coramanning9577@entelgy.com'),(35,'Emmanuel Hubbard',933671541,'emmanuelhubbard@entelgy.com'),(36,'Alden Weaver',907515947,'aldenweaver1551@entelgy.com'),(37,'Heidi Riddle',981637863,'heidiriddle@entelgy.com'),(38,'Andrew Neal',926185572,'andrewneal8071@entelgy.com'),(39,'Jaquelyn Mcbride',941422363,'jaquelynmcbride8283@entelgy.com'),(40,'Alfreda Lee',910604359,'alfredalee@entelgy.com'),(41,'Xavier Stein',995240878,'xavierstein@entelgy.com'),(42,'Alec Heath',910172742,'alecheath@entelgy.com'),(43,'Whoopi Casey',945885314,'whoopicasey@entelgy.com'),(44,'Uta Mclean',937551787,'utamclean@entelgy.com'),(45,'Cheryl O\'donnell',954124168,'cherylodonnell4703@entelgy.com'),(46,'Idola Kerr',995252378,'idolakerr7256@entelgy.com'),(47,'Neil Christensen',986736421,'neilchristensen@entelgy.com'),(48,'Sylvester Brewer',964628146,'sylvesterbrewer1527@entelgy.com'),(49,'Venus Henry',997641462,'venushenry7303@entelgy.com'),(50,'Zeus Goodman',903435356,'zeusgoodman7563@entelgy.com'),(51,'Jemima Meyer',983221381,'jemimameyer4895@entelgy.com'),(52,'Hyatt Maldonado',919435278,'hyattmaldonado@entelgy.com'),(53,'Ursa Camacho',978204372,'ursacamacho3391@entelgy.com'),(54,'Faith Bender',958348576,'faithbender@entelgy.com'),(55,'Ora Ratliff',948824876,'oraratliff6149@entelgy.com'),(56,'Chantale Foley',931026202,'chantalefoley8270@entelgy.com'),(57,'Murphy Johns',931671626,'murphyjohns@entelgy.com'),(58,'Winter Flores',967251632,'winterflores4013@entelgy.com'),(59,'Kadeem Payne',953279189,'kadeempayne@entelgy.com'),(60,'Alyssa Hardin',920328120,'alyssahardin8766@entelgy.com'),(61,'Raya Good',994175924,'rayagood@entelgy.com'),(62,'Anjolie Bonner',937787181,'anjoliebonner@entelgy.com'),(63,'Jordan Osborn',995422563,'jordanosborn@entelgy.com'),(64,'Hilda Wade',956151437,'hildawade2905@entelgy.com'),(65,'Chaim Wells',915551005,'chaimwells3759@entelgy.com'),(66,'Ryder Wilson',904842844,'ryderwilson@entelgy.com'),(67,'Tana Miller',922545614,'tanamiller@entelgy.com'),(68,'Teegan Brady',926274632,'teeganbrady@entelgy.com'),(69,'Caesar Kent',938776515,'caesarkent910@entelgy.com'),(70,'Fitzgerald Middleton',942784372,'fitzgeraldmiddleton@entelgy.com'),(71,'Jordan Powell',981369837,'jordanpowell7699@entelgy.com'),(72,'Xander Orr',946567825,'xanderorr3918@entelgy.com'),(73,'Lilah Sexton',902147623,'lilahsexton@entelgy.com'),(74,'Allistair Pearson',935455325,'allistairpearson8990@entelgy.com'),(75,'Hollee Vazquez',951714278,'holleevazquez9750@entelgy.com'),(76,'Nash Hendricks',905286482,'nashhendricks@entelgy.com'),(77,'Vera Richards',913108661,'verarichards8026@entelgy.com'),(78,'Chandler Woodard',976862667,'chandlerwoodard@entelgy.com'),(79,'Galena Guy',942732676,'galenaguy@entelgy.com'),(80,'Alisa Smith',951806690,'alisasmith8742@entelgy.com'),(81,'Odessa Mathis',945330377,'odessamathis4088@entelgy.com'),(82,'Brynn Nash',995159716,'brynnnash656@entelgy.com'),(83,'Montana Leach',982875436,'montanaleach@entelgy.com'),(84,'Chancellor Woods',905251284,'chancellorwoods658@entelgy.com'),(85,'Fritz Anthony',947528465,'fritzanthony6189@entelgy.com'),(86,'Wang Randall',923538737,'wangrandall5187@entelgy.com'),(87,'Brenden Dillon',986033224,'brendendillon@entelgy.com'),(88,'Tatiana Chang',941945110,'tatianachang6694@entelgy.com'),(89,'Malachi Wolf',929793275,'malachiwolf@entelgy.com'),(90,'Drake Dodson',937674477,'drakedodson@entelgy.com'),(91,'Germane Benson',914336883,'germanebenson9145@entelgy.com'),(92,'Hiroko Ayers',938581322,'hirokoayers751@entelgy.com'),(93,'Latifah Ayala',930267327,'latifahayala@entelgy.com'),(94,'Kay Vang',983041721,'kayvang@entelgy.com'),(95,'Sylvia Wheeler',961620155,'sylviawheeler8424@entelgy.com'),(96,'Anne Little',914820936,'annelittle@entelgy.com'),(97,'Sydnee Farley',912773528,'sydneefarley1150@entelgy.com'),(98,'Adam Velazquez',994955724,'adamvelazquez@entelgy.com'),(99,'Leroy Palmer',947277583,'leroypalmer5841@entelgy.com'),(100,'Jenette Adkins',963313415,'jenetteadkins@entelgy.com'),(101,'Peter Santos',962825646,'petersantos@entelgy.com'),(102,'Nathan Kim',965339933,'nathankim@entelgy.com'),(103,'Colt Owens',916433358,'coltowens1764@entelgy.com'),(104,'Leilani Price',960267777,'leilaniprice@entelgy.com'),(105,'Brielle Suarez',952685029,'briellesuarez@entelgy.com'),(106,'Dora Savage',917224628,'dorasavage730@entelgy.com'),(107,'Maya Bailey',952580615,'mayabailey@entelgy.com'),(108,'Cameron Kinney',957654603,'cameronkinney365@entelgy.com'),(109,'Luke Bruce',962945127,'lukebruce3480@entelgy.com'),(110,'Maite Marquez',923622385,'maitemarquez4666@entelgy.com'),(111,'Irene Bowers',996806873,'irenebowers1022@entelgy.com'),(112,'Roanna Preston',971574511,'roannapreston@entelgy.com'),(113,'Kiona Bishop',910807254,'kionabishop6359@entelgy.com'),(114,'Herrod Buck',936376877,'herrodbuck5765@entelgy.com'),(115,'Sonya O\'brien',914366526,'sonyaobrien@entelgy.com'),(116,'Madonna Kemp',989983284,'madonnakemp@entelgy.com'),(117,'Leslie Beck',961641876,'lesliebeck5328@entelgy.com'),(118,'Eugenia Hutchinson',924448693,'eugeniahutchinson@entelgy.com'),(119,'Raphael Velez',914048724,'raphaelvelez5930@entelgy.com'),(120,'Harriet Lawson',978664237,'harrietlawson7222@entelgy.com'),(121,'Charity Sullivan',927145751,'charitysullivan@entelgy.com'),(122,'Tanek Blackburn',944121224,'tanekblackburn@entelgy.com'),(123,'Tatum Cole',936036624,'tatumcole6817@entelgy.com'),(124,'Brian Bryan',947339366,'brianbryan2917@entelgy.com'),(125,'Jasmine Brown',993767387,'jasminebrown3893@entelgy.com');
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sati'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10 17:56:13
