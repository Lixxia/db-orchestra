-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dborchestra
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Table structure for table `Brass`
--

DROP TABLE IF EXISTS `Brass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instrument_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clef` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_Brass_myPlayer_1` (`player_id`),
  CONSTRAINT `fk_Brass_myPlayer_1` FOREIGN KEY (`player_id`) REFERENCES `Players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brass`
--

LOCK TABLES `Brass` WRITE;
/*!40000 ALTER TABLE `Brass` DISABLE KEYS */;
INSERT INTO `Brass` VALUES (1,'Horn','F','Bass',1,1),(2,'Horn','F','Bass',2,2),(3,'Trumpet','B♭','Treble',3,3),(4,'Trumpet','B♭','Treble',4,4),(5,'French Horn','F','Bass',1,36),(6,'French Horn','F','Bass',2,37),(7,'French Horn','F','Bass',3,38),(8,'French Horn','F','Bass',4,39),(9,'French Horn','F','Bass',5,40),(10,'French Horn','F','Bass',6,41),(11,'French Horn','F','Bass',7,42),(12,'Trumpet','B♭','Treble',1,43),(13,'Trumpet','B♭','Treble',2,44),(14,'Trumpet','B♭','Treble',3,45),(15,'Trumpet','B♭','Treble',4,46),(16,'Trumpet','B♭','Treble',5,47),(17,'Trombone','B♭','Tenor',1,48),(18,'Trombone','B♭','Tenor',2,49),(19,'Trombone','B♭','Tenor',3,50),(20,'Trombone','B♭','Tenor',4,51),(21,'Tuba','F','Bass',1,52),(22,'Tuba','C','Bass',2,53),(23,'Tuba','B♭','Bass',3,54),(24,'French Horn','F','Bass',1,146),(25,'French Horn','F','Bass',2,147),(26,'French Horn','F','Bass',3,148),(27,'French Horn','F','Bass',4,149),(28,'French Horn','F','Bass',5,150),(29,'French Horn','F','Bass',6,160),(30,'French Horn','F','Bass',7,161),(31,'Trumpet','B♭','Treble',1,162),(32,'Trumpet','B♭','Treble',2,163),(33,'Trumpet','B♭','Treble',3,164),(34,'Trumpet','B♭','Treble',4,165),(35,'Trumpet','B♭','Treble',5,166),(36,'Trombone','B♭','Tenor',1,167),(37,'Trombone','B♭','Tenor',2,168),(38,'Trombone','B♭','Tenor',3,169),(39,'Trombone','B♭','Tenor',4,170),(40,'Tuba','F','Bass',1,171);
/*!40000 ALTER TABLE `Brass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Keyboard`
--

DROP TABLE IF EXISTS `Keyboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Keyboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) DEFAULT NULL,
  `clef` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_Keyboard_myPlayer_2` (`player_id`),
  CONSTRAINT `fk_Keyboard_myPlayer_2` FOREIGN KEY (`player_id`) REFERENCES `Players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Keyboard`
--

LOCK TABLES `Keyboard` WRITE;
/*!40000 ALTER TABLE `Keyboard` DISABLE KEYS */;
INSERT INTO `Keyboard` VALUES (1,'Harpsichord','Treble',12),(2,'Piano','Treble',71),(3,'Celesta','Grand Staff',72),(4,'Pipe Organ','Grand Staff',73),(5,'Piano','Treble',187);
/*!40000 ALTER TABLE `Keyboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orchestra`
--

DROP TABLE IF EXISTS `Orchestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orchestra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `num_players` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orchestra`
--

LOCK TABLES `Orchestra` WRITE;
/*!40000 ALTER TABLE `Orchestra` DISABLE KEYS */;
INSERT INTO `Orchestra` VALUES (1,'The Babylonian','Chamber',35,'Baroque'),(2,'New York Philharmonic','Philharmonic',109,'Modern'),(3,'Charleston Symphony Orchestra','Symphonic',113,'Classical');
/*!40000 ALTER TABLE `Orchestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Percussion`
--

DROP TABLE IF EXISTS `Percussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Percussion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_Percussion_myPlayer_3` (`player_id`),
  CONSTRAINT `fk_Percussion_myPlayer_3` FOREIGN KEY (`player_id`) REFERENCES `Players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Percussion`
--

LOCK TABLES `Percussion` WRITE;
/*!40000 ALTER TABLE `Percussion` DISABLE KEYS */;
INSERT INTO `Percussion` VALUES (1,'Timpani','Auxillary',13),(2,'Timpani','Auxillary',74),(3,'Snare Drum','Auxillary',75),(4,'Tenor Drum','Auxillary',76),(5,'Bass Drum','Auxillary',77),(6,'Cymbals','Auxillary',78),(7,'Tam-tam','Auxillary',79),(8,'Triangle','Tuned',80),(9,'Xylophone','Tuned',81),(10,'Vibraphone','Tuned',82),(11,'Timpani','Auxillary',188),(12,'Snare Drum','Auxillary',189),(13,'Tenor Drum','Auxillary',190),(14,'Bass Drum','Auxillary',191),(15,'Cymbals','Auxillary',192),(16,'Tam-tam','Auxillary',193),(17,'Triangle','Tuned',194),(18,'Xylophone','Tuned',195),(19,'Vibraphone','Tuned',196);
/*!40000 ALTER TABLE `Percussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `orchestra_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_Players_myOrchestra_4` (`orchestra_id`),
  CONSTRAINT `fk_Players_myOrchestra_4` FOREIGN KEY (`orchestra_id`) REFERENCES `Orchestra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Players`
--

LOCK TABLES `Players` WRITE;
/*!40000 ALTER TABLE `Players` DISABLE KEYS */;
INSERT INTO `Players` VALUES (1,'Jasmine','Strong','JasmineJStrong@einrot.com','985-685-2510',1),(2,'Joseph','Keith','JosephTKeith@teleworm.us','775-426-0146',1),(3,'Domenica','Montgomery','DomenicaMMontgomery@gustr.com','802-453-3494',1),(4,'Peter','Martin','PeterTMartin@fleckens.hu','716-526-9446',1),(5,'Wallace','Corrales','WallaceRCorrales@einrot.com','253-256-2829',1),(6,'Nancy','Bell','NancyGBell@superrito.com','305-261-9704',1),(7,'James','Davis','JamesTDavis@armyspy.com','201-456-9416',1),(8,'Lonny','Hauck','LonnyAHauck@superrito.com','715-214-7981',1),(9,'Kathy','Batts','KathyEBatts@cuvox.de','713-324-6899',1),(10,'Ignacio','Parnell','IgnacioCParnell@armyspy.com','401-417-8274',1),(11,'Deanna','Mazzella','DeannaWMazzella@fleckens.hu','214-579-0546',1),(12,'Gary','Purcell','GaryTPurcell@armyspy.com','985-375-6343',1),(13,'Richard','Hale','RichardHHale@dayrep.com','830-238-3099',1),(14,'Albert','Mullis','AlbertMMullis@jourrapide.com','229-740-9374',1),(15,'Audrey','Becerra','AudreyFBecerra@rhyta.com','716-853-4331',1),(16,'Ruben','Copper','RubenSCopper@fleckens.hu','806-795-7512',1),(17,'Betty','Piazza','BettyDPiazza@dayrep.com','614-719-1036',1),(18,'Mark','Killeen','MarkOKilleen@cuvox.de','218-245-3490',1),(19,'Randall','Hein','RandallFHein@rhyta.com','301-314-7808',1),(20,'Maria','Johnston','MariaLJohnston@cuvox.de','909-290-0035',1),(21,'William','Grady','WilliamCGrady@einrot.com','618-968-9384',1),(22,'Stephen','Hinkle','StephenJHinkle@armyspy.com','253-375-0634',1),(23,'Anne','Cochran','AnneWCochran@jourrapide.com','903-216-3845',1),(24,'Yesenia','Macias','YeseniaJMacias@jourrapide.com','315-677-2254',1),(25,'Jenny','Murphy','JennyRMurphy@gustr.com','857-814-8136',1),(26,'Christine','Flanagan','ChristineEFlanagan@superrito.com','509-283-9401',1),(27,'Diane','Jenkins','DianeBJenkins@rhyta.com','510-759-7449',1),(28,'Eileen','Griego','EileenMGriego@jourrapide.com','570-604-0936',1),(29,'Michael','Fuller','MichaelDFuller@cuvox.de','618-907-1130',1),(30,'Ericka','Benitez','ErickaLBenitez@gustr.com','951-710-4002',1),(31,'Kimberley','Konrad','KimberleyWKonrad@fleckens.hu','503-487-9228',1),(32,'John','Manns','JohnEManns@teleworm.us','919-309-8202',1),(33,'Peter','Miller','PeterEMiller@cuvox.de','720-684-1575',1),(34,'Jacob','Moffett','JacobNMoffett@cuvox.de','818-613-4909',1),(35,'Devon','Oakes','DevonCOakes@armyspy.com','919-201-8354',1),(36,'Roy','Harris','RoyLHarris@jourrapide.com','304-650-6304',2),(37,'Frances','Vinson','FrancesAVinson@dayrep.com','812-673-3008',2),(38,'Sherlene','Dodson','SherleneGDodson@armyspy.com','918-966-3703',2),(39,'Sam','Brouillard','SamABrouillard@superrito.com','608-287-7852',2),(40,'Mattie','Smith','MattieFSmith@superrito.com','509-523-4206',2),(41,'Adam','Knight','AdamMKnight@rhyta.com','586-883-1850',2),(42,'Heather','King','HeatherDKing@rhyta.com','623-932-5597',2),(43,'Joshua','White','JoshuaRWhite@fleckens.hu','701-257-6654',2),(44,'Isaac','Newman','IsaacPNewman@superrito.com','212-839-2550',2),(45,'Patrick','James','PatrickNJames@armyspy.com','720-310-1796',2),(46,'Kenneth','Robinson','KennethMRobinson@teleworm.us','313-841-0687',2),(47,'Andrew','Dick','AndrewLDick@teleworm.us','573-438-8990',2),(48,'Richard','Kosinski','RichardMKosinski@jourrapide.com','513-989-6905',2),(49,'John','Walker','JohnPWalker@fleckens.hu','580-758-8580',2),(50,'Josiah','Trotter','JosiahMTrotter@rhyta.com','281-325-8074',2),(51,'Kala','Womack','KalaTWomack@gustr.com','606-785-7368',2),(52,'Donna','Taylor','DonnaJTaylor@jourrapide.com','804-829-2210',2),(53,'Roberta','Terrell','RobertaJTerrell@fleckens.hu','702-612-0416',2),(54,'Henry','Singer','HenryESinger@superrito.com','631-741-2758',2),(55,'Joan','Middlebrooks','JoanSMiddlebrooks@cuvox.de','301-445-4502',2),(56,'Florence','Bell','FlorenceABell@fleckens.hu','870-454-9744',2),(57,'Sergio','Peck','SergioJPeck@cuvox.de','501-464-1871',2),(58,'Betty','Lambert','BettyRLambert@einrot.com','302-406-5658',2),(59,'Tiffiny','Edwards','TiffinyTEdwards@dayrep.com','907-389-0965',2),(60,'Scott','Cox','ScottKCox@cuvox.de','217-827-5381',2),(61,'Steven','Silvas','StevenMSilvas@dayrep.com','781-448-6644',2),(62,'Lawrence','Fountain','LawrenceLFountain@gustr.com','708-393-3345',2),(63,'Marian','Hicks','MarianCHicks@jourrapide.com','732-247-1413',2),(64,'Gary','Stamey','GaryEStamey@teleworm.us','781-233-2717',2),(65,'Julie','Rojas','JulieJRojas@jourrapide.com','806-372-0229',2),(66,'James','Page','JamesAPage@dayrep.com','325-446-3742',2),(67,'Kelli','Harding','KelliJHarding@fleckens.hu','419-318-8530',2),(68,'Vikki','Branch','VikkiRBranch@teleworm.us','507-864-7004',2),(69,'Angel','Oneal','AngelDOneal@einrot.com','802-349-1990',2),(70,'Charles','Carrion','CharlesRCarrion@teleworm.us','919-820-9954',2),(71,'Leon','Dillard','LeonSDillard@dayrep.com','310-813-9338',2),(72,'Randall','Niemann','RandallDNiemann@armyspy.com','661-236-6305',2),(73,'Walter','Book','WalterTBook@teleworm.us','502-428-5923',2),(74,'Flora','Jones','FloraBJones@dayrep.com','562-686-8466',2),(75,'Alison','Coston','AlisonDCoston@cuvox.de','571-201-7598',2),(76,'Shelly','Drake','ShellyPDrake@jourrapide.com','828-897-1493',2),(77,'Don','Avery','DonSAvery@einrot.com','925-521-9382',2),(78,'Arnold','Spaulding','ArnoldJSpaulding@cuvox.de','281-346-2914',2),(79,'Sean','Rodriguez','SeanVRodriguez@superrito.com','309-582-3008',2),(80,'John','McKenzie','JohnJMcKenzie@einrot.com','605-627-6209',2),(81,'James','Coleman','JamesMColeman@teleworm.us','781-443-9959',2),(82,'Patricia','Norman','PatriciaENorman@superrito.com','337-830-7696',2),(83,'Miguel','Ross','MiguelRRoss@rhyta.com','907-270-5661',2),(84,'Julie','Burke','JulieJBurke@armyspy.com','917-231-1616',2),(85,'Robert','Collins','RobertCCollins@dayrep.com','917-281-4984',2),(86,'Douglas','Jason','DouglasJJason@teleworm.us','504-825-6774',2),(87,'Joseph','Hillard','JosephMHillard@armyspy.com','479-725-5859',2),(88,'Christie','Sink','ChristieJSink@dayrep.com','210-328-1123',2),(89,'Ellen','White','EllenTWhite@teleworm.us','919-595-3398',2),(90,'Drusilla','Aiello','DrusillaRAiello@teleworm.us','310-537-8198',2),(91,'Carla','Dalzell','CarlaDDalzell@cuvox.de','320-295-6775',2),(92,'Howard','O\'Connor','HowardMOConnor@einrot.com','949-424-2266',2),(93,'Daniel','McEachern','DanielLMcEachern@einrot.com','217-530-3583',2),(94,'Dawn','Garcia','DawnDGarcia@cuvox.de','907-329-4532',2),(95,'Odette','Best','OdetteGBest@rhyta.com','513-695-1828',2),(96,'Marissa','Watkins','MarissaWWatkins@dayrep.com','228-455-6044',2),(97,'Stephanie','Barry','StephanieRBarry@einrot.com','401-767-6081',2),(98,'Harvey','Fisher','HarveyAFisher@dayrep.com','912-539-7275',2),(99,'Bessie','Farr','BessieWFarr@fleckens.hu','320-592-3873',2),(100,'Donald','Pearcy','DonaldDPearcy@superrito.com','305-369-9159',2),(101,'Frederick','Hogan','FrederickBHogan@armyspy.com','931-535-2000',2),(102,'Randall','Balas','RandallDBalas@superrito.com','617-542-2844',2),(103,'Rachel','Davis','RachelJDavis@dayrep.com','561-435-6854',2),(104,'Andrew','Ames','AndrewMAmes@superrito.com','484-603-7267',2),(105,'Adam','Rodriguez','AdamCRodriguez@fleckens.hu','912-709-7531',2),(106,'Alfredo','Turner','AlfredoATurner@fleckens.hu','541-767-8324',2),(107,'Dona','McCloud','DonaMMcCloud@jourrapide.com','301-997-0758',2),(108,'Judy','Dominique','JudyRDominique@jourrapide.com','208-547-7415',2),(109,'Michael','Wallen','MichaelJWallen@rhyta.com','786-553-2868',2),(110,'Warren','Griffin','WarrenAGriffin@fleckens.hu','404-848-6276',2),(111,'Seth','Clarke','SethFClarke@superrito.com','509-688-8043',2),(112,'Joan','Gallant','JoanCGallant@jourrapide.com','262-246-7592',2),(113,'Ann','Kuhn','AnnTKuhn@cuvox.de','512-985-1699',2),(114,'Cornelius','Jordan','CorneliusLJordan@gustr.com','513-759-1077',2),(115,'Jacob','Mikels','JacobBMikels@einrot.com','918-542-7862',2),(116,'Jimmy','Schultz','JimmyCSchultz@jourrapide.com','253-262-6112',2),(117,'Tessie','Frazier','TessieDFrazier@einrot.com','801-412-7349',2),(118,'Edna','Worthington','EdnaAWorthington@armyspy.com','510-808-4935',2),(119,'William','Alonzo','WilliamMAlonzo@gustr.com','740-966-1981',2),(120,'Linda','Nelson','LindaJNelson@gustr.com','512-339-4108',2),(121,'Cesar','Hill','CesarMHill@cuvox.de','989-282-5436',2),(122,'Amber','Hammond','AmberHHammond@einrot.com','214-616-9486',2),(123,'Cassandra','Sanchez','CassandraDSanchez@superrito.com','314-786-4637',2),(124,'Anthony','Williams','AnthonyCWilliams@jourrapide.com','580-772-9365',2),(125,'Vernon','Cheek','VernonCCheek@armyspy.com','646-475-7704',2),(126,'Rickie','Morgan','RickieJMorgan@dayrep.com','865-470-0561',2),(127,'Denise','Springer','DeniseLSpringer@fleckens.hu','559-827-5607',2),(128,'Elizabeth','Carty','ElizabethFCarty@dayrep.com','973-739-2770',2),(129,'Christine','Williams','ChristineRWilliams@superrito.com','217-820-6087',2),(130,'Kevin','Dickerson','KevinCDickerson@jourrapide.com','509-997-5590',2),(131,'Fred','Allen','FredFAllen@dayrep.com','504-245-2334',2),(132,'Katie','Buckner','KatieBBuckner@jourrapide.com','901-898-3949',2),(133,'Charles','Day','CharlesSDay@teleworm.us','614-246-7469',2),(134,'Michael','Wilson','MichaelPWilson@armyspy.com','732-485-2788',2),(135,'Kourtney','Hall','KourtneyDHall@fleckens.hu','603-571-3397',2),(136,'Larry','Raleigh','LarryMRaleigh@einrot.com','701-755-5942',2),(137,'Marvin','Kelly','MarvinPKelly@armyspy.com','702-794-4061',2),(138,'Juli','Mason','JuliJMason@einrot.com','301-741-1600',2),(139,'George','Whitehead','GeorgeKWhitehead@armyspy.com','302-314-6723',2),(140,'Christopher','Garrett','ChristopherCGarrett@dayrep.com','312-378-5310',2),(141,'Ruby','Atkins','RubyRAtkins@cuvox.de','407-907-7522',2),(142,'Lillie','Russell','LillieJRussell@einrot.com','314-330-9986',2),(143,'Alicia','Taylor','AliciaRTaylor@gustr.com','978-292-6277',2),(144,'Paul','Singh','PaulJSingh@cuvox.de','978-413-6111',2),(145,'Kevin','Arce','KevinBArce@superrito.com','708-993-5349',2),(146,'Terry','Skillman','TerrySSkillman@superrito.com','520-546-1640',3),(147,'Kristen','Sweat','KristenCSweat@fleckens.hu','617-648-3877',3),(148,'Salvador','Wilson','SalvadorEWilson@armyspy.com','626-381-4554',3),(149,'James','Watanabe','JamesSWatanabe@gustr.com','407-423-4020',3),(150,'Antonio','Broderick','AntonioJBroderick@einrot.com','909-632-1165',3),(151,'Gail','Moreland','GailWMoreland@teleworm.us','540-845-2920',3),(152,'Sharlene','Norwood','SharleneSNorwood@rhyta.com','901-369-4459',3),(153,'Roy','Ponce','RoyNPonce@rhyta.com','402-620-6644',3),(154,'Sidney','Deutsch','SidneyCDeutsch@einrot.com','352-563-8570',3),(155,'Ruth','Yohe','RuthDYohe@jourrapide.com','910-297-2329',3),(156,'Thomas','Brake','ThomasCBrake@armyspy.com','513-296-2206',3),(157,'Erik','Coy','ErikLCoy@superrito.com','217-552-5723',3),(158,'William','Kaplan','WilliamLKaplan@armyspy.com','405-521-6820',3),(159,'Maureen','Salvo','MaureenDSalvo@jourrapide.com','828-410-1589',3),(160,'Richard','Perez','RichardCPerez@superrito.com','785-965-6793',3),(161,'Jon','Crites','JonNCrites@jourrapide.com','214-360-6429',3),(162,'Shirley','Clark','ShirleyAClark@gustr.com','707-891-0019',3),(163,'Edward','Holmes','EdwardSHolmes@armyspy.com','513-290-2260',3),(164,'Kristy','Brown','KristyJBrown@rhyta.com','843-663-2423',3),(165,'Alicia','Burke','AliciaHBurke@rhyta.com','704-443-1304',3),(166,'Robert','Say','RobertRSay@rhyta.com','858-485-7650',3),(167,'Winifred','Rodriquez','WinifredFRodriquez@armyspy.com','207-745-9554',3),(168,'Floretta','Ohl','FlorettaBOhl@teleworm.us','620-273-7189',3),(169,'Pamela','Howard','PamelaCHoward@armyspy.com','206-923-2711',3),(170,'David','Plascencia','DavidSPlascencia@fleckens.hu','276-995-4363',3),(171,'Richard','Behler','RichardTBehler@rhyta.com','508-539-9772',3),(172,'Heather','Tharpe','HeatherRTharpe@einrot.com','816-425-0111',3),(173,'Fannie','Dillard','FannieCDillard@armyspy.com','618-229-4539',3),(174,'Lanny','Aleshire','LannyJAleshire@gustr.com','318-870-8689',3),(175,'Nichole','Taylor','NicholeGTaylor@jourrapide.com','954-693-2300',3),(176,'Ashley','Brown','AshleyABrown@dayrep.com','770-730-9293',3),(177,'Wayne','Rambo','WayneMRambo@fleckens.hu','281-454-9245',3),(178,'Donald','Czech','DonaldBCzech@einrot.com','815-396-6212',3),(179,'Marsha','Dunlap','MarshaADunlap@superrito.com','973-482-3651',3),(180,'Kate','Burns','KateGBurns@teleworm.us','401-793-6614',3),(181,'Robert','Soderlund','RobertSSoderlund@einrot.com','270-336-5996',3),(182,'Marjorie','Jones','MarjorieEJones@fleckens.hu','321-662-0585',3),(183,'Lawrence','Purkey','LawrenceLPurkey@fleckens.hu','904-534-6149',3),(184,'Robin','White','RobinMWhite@rhyta.com','361-701-7096',3),(185,'Ernest','Schulte','ErnestGSchulte@fleckens.hu','626-403-7137',3),(186,'Nolan','Brooks','NolanCBrooks@superrito.com','910-740-9003',3),(187,'Bonnie','Jacobson','BonnieRJacobson@teleworm.us','518-724-6547',3),(188,'Christine','Baker','ChristineVBaker@fleckens.hu','402-589-1595',3),(189,'Nicholas','Hyder','NicholasJHyder@gustr.com','541-687-8122',3),(190,'Sharon','Wu','SharonMWu@einrot.com','217-829-4238',3),(191,'Gloria','Woodside','GloriaWWoodside@rhyta.com','989-274-7204',3),(192,'Jamie','Cannella','JamieBCannella@teleworm.us','435-979-0916',3),(193,'Harry','Losoya','HarryNLosoya@gustr.com','937-542-2995',3),(194,'Michelle','Perez','MichelleLPerez@teleworm.us','510-664-2040',3),(195,'Donna','Alonzo','DonnaWAlonzo@cuvox.de','218-352-7011',3),(196,'Ivelisse','Bertram','IvelisseMBertram@dayrep.com','509-896-5837',3),(197,'Irma','Gregg','IrmaQGregg@armyspy.com','602-234-8363',3),(198,'Karen','Vandyke','KarenCVandyke@teleworm.us','215-626-9155',3),(199,'Susanne','Wile','SusanneTWile@dayrep.com','770-264-9998',3),(200,'Jonathan','Flores','JonathanPFlores@dayrep.com','240-426-8496',3),(201,'Kyle','McMillan','KyleJMcMillan@superrito.com','662-444-5040',3),(202,'Philip','Lawson','PhilipILawson@rhyta.com','606-678-6033',3),(203,'Kenneth','Lyons','KennethMLyons@einrot.com','614-276-4636',3),(204,'Clifford','Bouton','CliffordMBouton@einrot.com','401-338-3158',3),(205,'Robert','Grigsby','RobertBGrigsby@superrito.com','405-747-1256',3),(206,'Jesse','Flores','JesseMFlores@einrot.com','502-443-2410',3),(207,'William','Goehring','WilliamEGoehring@jourrapide.com','662-427-9090',3),(208,'Hannelore','Dreyer','HanneloreGDreyer@armyspy.com','305-210-4610',3),(209,'Blaine','Scarborough','BlaineIScarborough@teleworm.us','605-780-9778',3),(210,'Marie','Henderson','MarieCHenderson@teleworm.us','765-936-6979',3),(211,'Mildred','Bettis','MildredEBettis@dayrep.com','228-701-1868',3),(212,'Linda','Mayfield','LindaMMayfield@cuvox.de','301-904-0046',3),(213,'Victoria','Mosqueda','VictoriaDMosqueda@teleworm.us','267-223-2504',3),(214,'Daryl','Wadsworth','DarylRWadsworth@teleworm.us','469-550-5320',3),(215,'Betty','Perez','BettyDPerez@armyspy.com','502-857-0528',3),(216,'Tara','John','TaraJJohn@teleworm.us','312-423-6055',3),(217,'Catherine','Wafer','CatherineRWafer@dayrep.com','360-807-0495',3),(218,'Carol','Albright','CarolAAlbright@einrot.com','563-210-7908',3),(219,'Theresa','Arnold','TheresaJArnold@dayrep.com','718-888-6266',3),(220,'Warren','Staples','WarrenCStaples@fleckens.hu','303-929-3040',3),(221,'Billy','Lopez','BillyFLopez@fleckens.hu','805-535-0192',3),(222,'Carolyn','Hoose','CarolynJHoose@rhyta.com','612-880-6740',3),(223,'Christina','Ross','ChristinaPRoss@cuvox.de','830-984-6631',3),(224,'Sarah','Barker','SarahRBarker@rhyta.com','563-535-1338',3),(225,'Kathleen','Wolverton','KathleenRWolverton@fleckens.hu','619-219-3965',3),(226,'James','Carlson','JamesECarlson@dayrep.com','919-865-8122',3),(227,'Kari','Alford','KariRAlford@cuvox.de','408-282-0768',3),(228,'Billy','Bennett','BillyVBennett@superrito.com','732-613-2642',3),(229,'Manuel','Nunez','ManuelBNunez@gustr.com','469-733-0686',3),(230,'Travis','Tapp','TravisCTapp@jourrapide.com','815-730-6500',3),(231,'Russell','Hansen','RussellJHansen@einrot.com','917-990-4049',3),(232,'William','Lewellen','WilliamMLewellen@dayrep.com','858-410-0980',3),(233,'Sue','Galvez','SueCGalvez@rhyta.com','570-319-6360',3),(234,'John','Izzo','JohnDIzzo@teleworm.us','406-733-7286',3),(235,'James','Ostrander','JamesTOstrander@armyspy.com','417-206-3754',3),(236,'Irene','Rudolph','IreneCRudolph@armyspy.com','806-637-4667',3),(237,'Bryon','Wojtowicz','BryonLWojtowicz@jourrapide.com','352-797-3705',3),(238,'Nancy','Brown','NancyRBrown@jourrapide.com','209-230-6998',3),(239,'Mary','McGowan','MarySMcGowan@dayrep.com','513-526-5503',3),(240,'Naomi','White','NaomiKWhite@fleckens.hu','732-510-7497',3),(241,'Joshua','McElroy','JoshuaSMcElroy@einrot.com','318-793-0883',3),(242,'Derrick','Chappell','DerrickTChappell@cuvox.de','760-279-2682',3),(243,'Vera','Kleckner','VeraWKleckner@cuvox.de','432-235-6792',3),(244,'Wayne','Washington','WayneEWashington@fleckens.hu','352-568-3446',3),(245,'Joanna','Riggs','JoannaRRiggs@cuvox.de','518-370-4964',3),(246,'Rita','Hirt','RitaPHirt@dayrep.com','501-398-2913',3),(247,'Julianna','Williams','JuliannaJWilliams@jourrapide.com','267-497-2832',3),(248,'Alma','Conway','AlmaJConway@einrot.com','262-243-9812',3),(249,'Melody','Phifer','MelodyCPhifer@teleworm.us','718-683-1484',3),(250,'Margaret','Coleman','MargaretPColeman@superrito.com','270-302-0145',3),(251,'Dixie','Peer','DixieSPeer@jourrapide.com','814-682-3373',3),(252,'Annie','Palmer','AnnieRPalmer@teleworm.us','734-374-2754',3),(253,'Dennis','Robicheaux','DennisCRobicheaux@dayrep.com','260-761-1726',3),(254,'Jan','White','JanTWhite@cuvox.de','901-789-6681',3),(255,'Michael','Roman','MichaelERoman@dayrep.com','213-467-5439',3),(256,'Walter','McInerney','WalterTMcInerney@armyspy.com','641-948-2685',3),(257,'Karen','Quigley','KarenXQuigley@teleworm.us','325-998-1137',3),(258,'Winnifred','Sayer','WinnifredESayer@superrito.com','863-801-9588',3),(259,'Matthew','Hinds','MatthewLHinds@rhyta.com','410-327-3035',3),(260,'Carlos','Hart','CarlosCHart@jourrapide.com','631-227-7869',3),(261,'Vernon','Douglass','VernonBDouglass@cuvox.de','314-646-1172',3),(262,'Heather','Barker','HeatherWBarker@teleworm.us','573-694-8464',3),(263,'Michael','Reber','MichaelMReber@cuvox.de','310-293-2505',3),(264,'Joyce','Marsh','JoyceAMarsh@superrito.com','609-735-6291',3),(265,'Robert','Sanchez','RobertCSanchez@superrito.com','402-597-5940',3),(266,'Alice','McLeod','AliceJMcLeod@rhyta.com','806-337-6684',3),(267,'Robert','Bradwell','RobertSBradwell@einrot.com','917-480-7870',3),(268,'Frank','Baldwin','FrankJBaldwin@armyspy.com','714-342-6842',3),(269,'Nathaniel','Meadows','NathanielBMeadows@gustr.com','607-717-3503',3),(270,'Eric','Stinnett','EricAStinnett@jourrapide.com','724-902-1857',3),(271,'Becky','Salinas','BeckyRSalinas@dayrep.com','775-636-1261',3),(272,'Jeffrey','Taylor','JeffreyLTaylor@dayrep.com','805-295-4186',3),(273,'Raul','Poe','RaulLPoe@fleckens.hu','617-241-7844',3),(274,'Glenn','Little','GlennMLittle@dayrep.com','207-226-9212',3),(275,'Christy','McKenzie','ChristyJMcKenzie@superrito.com','520-577-2981',3),(276,'Steven','Weeks','StevenRWeeks@armyspy.com','973-578-1437',3),(277,'Huey','Anderson','HueyLAnderson@gustr.com','443-280-9061',3),(278,'Krystal','Guy','KrystalPGuy@armyspy.com','701-274-8611',3),(279,'Treva','Cross','TrevaACross@cuvox.de','360-229-5462',3),(280,'Geoffrey','Stevenson','GeoffreyCStevenson@teleworm.us','321-329-6627',3),(281,'Lisa','Bateman','LisaKBateman@armyspy.com','925-335-4421',3),(282,'Connie','Martin','ConnieCMartin@dayrep.com','716-537-8990',3),(283,'Charles','Schneider','CharlesMSchneider@jourrapide.com','260-427-8726',3),(284,'Antonia','Liu','AntoniaLLiu@dayrep.com','704-777-7371',3),(285,'Carol','Hamilton','CarolAHamilton@teleworm.us','516-739-7405',3),(286,'Dustin','Vance','DustinRVance@jourrapide.com','818-735-7117',3),(287,'Tracy','Lopez','TracyBLopez@rhyta.com','239-745-7266',3),(288,'Barbara','Johnson','BarbaraJJohnson@cuvox.de','614-891-2021',3),(289,'Sherry','Giardina','SherryFGiardina@dayrep.com','330-445-1522',3),(290,'Johnathan','Overholt','JohnathanMOverholt@rhyta.com','425-828-5552',3),(291,'Hans','Prange','HansAPrange@teleworm.us','773-592-8075',3),(292,'Tracy','Jarrell','TracyWJarrell@armyspy.com','931-285-5807',3),(293,'Devora','Johnson','DevoraEJohnson@superrito.com','337-626-2878',3),(294,'Roy','Cox','RoyJCox@dayrep.com','206-972-6171',3),(295,'Peggy','Flanagan','PeggyVFlanagan@superrito.com','781-609-2531',3),(296,'Nena','Cox','NenaJCox@dayrep.com','501-862-9674',3),(297,'Gary','Kent','GaryCKent@dayrep.com','925-915-9739',3),(298,'Lorraine','Ross','LorraineJRoss@cuvox.de','912-497-3835',3),(299,'Jeff','Highsmith','JeffMHighsmith@jourrapide.com','772-250-6773',3),(300,'Frances','Knudsen','FrancesJKnudsen@jourrapide.com','207-490-6386',3),(301,'Aspen','Olmsted','ewlrakl@ejwarlk.com','888-821-2313',3);
/*!40000 ALTER TABLE `Players` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger update_players before insert on Players
for each row begin
set @id = new.orchestra_id;
update Orchestra
set num_players = num_players + 1
where id = @id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger update_players_del after delete on Players
for each row begin
set @id = old.orchestra_id;
update Orchestra
set num_players = num_players - 1
where id = @id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SymphonicString`
--

DROP TABLE IF EXISTS `SymphonicString`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SymphonicString` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `clef` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_SymphonicString_myPlayer_5` (`player_id`),
  CONSTRAINT `fk_SymphonicString_myPlayer_5` FOREIGN KEY (`player_id`) REFERENCES `Players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SymphonicString`
--

LOCK TABLES `SymphonicString` WRITE;
/*!40000 ALTER TABLE `SymphonicString` DISABLE KEYS */;
INSERT INTO `SymphonicString` VALUES (1,'Violin','First Violinists',1,'Treble',14),(2,'Violin','First Violinists',2,'Treble',15),(3,'Violin','First Violinists',3,'Treble',16),(4,'Violin','First Violinists',4,'Treble',17),(5,'Violin','First Violinists',5,'Treble',18),(6,'Violin','Second Violinists',1,'Treble',19),(7,'Violin','Second Violinists',2,'Treble',20),(8,'Violin','Second Violinists',3,'Treble',21),(9,'Violin','Second Violinists',4,'Treble',22),(10,'Violin','Second Violinists',5,'Treble',23),(11,'Viola','Violists',1,'Alto',24),(12,'Viola','Violists',2,'Alto',25),(13,'Viola','Violists',3,'Alto',26),(14,'Viola','Violists',4,'Alto',27),(15,'Viola','Violists',5,'Alto',28),(16,'Viola','Violists',6,'Alto',29),(17,'Violoncello','Cellists',1,'Bass',30),(18,'Violoncello','Cellists',2,'Bass',31),(19,'Violoncello','Cellists',3,'Bass',32),(20,'Violoncello','Cellists',4,'Bass',33),(21,'String Bass','Bassists',1,'Bass',34),(22,'Theorbo','Lutes',1,'Alto',35),(23,'Harp','Harpists',1,'Grand Staff',83),(24,'Harp','Harpists',2,'Grand Staff',84),(25,'Violin','First Violinists',1,'Treble',86),(26,'Violin','First Violinists',2,'Treble',87),(27,'Violin','First Violinists',3,'Treble',88),(28,'Violin','First Violinists',4,'Treble',89),(29,'Violin','First Violinists',5,'Treble',90),(30,'Violin','First Violinists',6,'Treble',91),(31,'Violin','First Violinists',7,'Treble',92),(32,'Violin','First Violinists',8,'Treble',93),(33,'Violin','First Violinists',9,'Treble',94),(34,'Violin','First Violinists',10,'Treble',95),(35,'Violin','First Violinists',11,'Treble',96),(36,'Violin','First Violinists',12,'Treble',97),(37,'Violin','First Violinists',13,'Treble',98),(38,'Violin','First Violinists',14,'Treble',99),(39,'Violin','First Violinists',15,'Treble',100),(40,'Violin','First Violinists',16,'Treble',101),(41,'Violin','Second Violinists',1,'Treble',102),(42,'Violin','Second Violinists',2,'Treble',103),(43,'Violin','Second Violinists',3,'Treble',104),(44,'Violin','Second Violinists',4,'Treble',105),(45,'Violin','Second Violinists',5,'Treble',106),(46,'Violin','Second Violinists',6,'Treble',107),(47,'Violin','Second Violinists',7,'Treble',108),(48,'Violin','Second Violinists',8,'Treble',109),(49,'Violin','Second Violinists',9,'Treble',110),(50,'Violin','Second Violinists',10,'Treble',111),(51,'Violin','Second Violinists',11,'Treble',112),(52,'Violin','Second Violinists',12,'Treble',113),(53,'Violin','Second Violinists',13,'Treble',114),(54,'Violin','Second Violinists',14,'Treble',115),(55,'Viola','Violists',1,'Alto',116),(56,'Viola','Violists',2,'Alto',117),(57,'Viola','Violists',3,'Alto',118),(58,'Viola','Violists',4,'Alto',119),(59,'Viola','Violists',5,'Alto',120),(60,'Viola','Violists',6,'Alto',121),(61,'Viola','Violists',7,'Alto',122),(62,'Viola','Violists',8,'Alto',123),(63,'Viola','Violists',9,'Alto',124),(64,'Viola','Violists',10,'Alto',125),(65,'Viola','Violists',11,'Alto',126),(66,'Viola','Violists',12,'Alto',127),(67,'Cello','Cellists',1,'Bass',128),(68,'Cello','Cellists',2,'Bass',129),(69,'Cello','Cellists',3,'Bass',130),(70,'Cello','Cellists',4,'Bass',131),(71,'Cello','Cellists',5,'Bass',132),(72,'Cello','Cellists',6,'Bass',133),(73,'Cello','Cellists',7,'Bass',134),(74,'Cello','Cellists',8,'Bass',135),(75,'Cello','Cellists',9,'Bass',136),(76,'Cello','Cellists',10,'Bass',137),(77,'Double Bass','Bassists',1,'Bass',138),(78,'Double Bass','Bassists',2,'Bass',139),(79,'Double Bass','Bassists',3,'Bass',140),(80,'Double Bass','Bassists',4,'Bass',141),(81,'Double Bass','Bassists',5,'Bass',142),(82,'Double Bass','Bassists',6,'Bass',143),(83,'Double Bass','Bassists',7,'Bass',144),(84,'Double Bass','Bassists',8,'Bass',145),(85,'Harp','Harpists',1,'Grand Staff',197),(86,'Harp','Harpists',2,'Grand Staff',198),(87,'Violin','First Violinists',1,'Treble',199),(88,'Violin','First Violinists',2,'Treble',200),(89,'Violin','First Violinists',3,'Treble',201),(90,'Violin','First Violinists',4,'Treble',202),(91,'Violin','First Violinists',5,'Treble',203),(92,'Violin','First Violinists',6,'Treble',204),(93,'Violin','First Violinists',7,'Treble',205),(94,'Violin','First Violinists',8,'Treble',206),(95,'Violin','First Violinists',9,'Treble',207),(96,'Violin','First Violinists',10,'Treble',208),(97,'Violin','First Violinists',11,'Treble',209),(98,'Violin','First Violinists',12,'Treble',210),(99,'Violin','First Violinists',13,'Treble',211),(100,'Violin','First Violinists',14,'Treble',212),(101,'Violin','First Violinists',15,'Treble',213),(102,'Violin','First Violinists',16,'Treble',214),(103,'Violin','Second Violinists',1,'Treble',215),(104,'Violin','Second Violinists',2,'Treble',216),(105,'Violin','Second Violinists',3,'Treble',217),(106,'Violin','Second Violinists',4,'Treble',218),(107,'Violin','Second Violinists',5,'Treble',219),(108,'Violin','Second Violinists',6,'Treble',220),(109,'Violin','Second Violinists',7,'Treble',221),(110,'Violin','Second Violinists',8,'Treble',222),(111,'Violin','Second Violinists',9,'Treble',223),(112,'Violin','Second Violinists',10,'Treble',224),(113,'Violin','Second Violinists',11,'Treble',225),(114,'Violin','Second Violinists',12,'Treble',226),(115,'Violin','Second Violinists',13,'Treble',227),(116,'Violin','Second Violinists',14,'Treble',228),(117,'Viola','Violists',1,'Alto',229),(118,'Viola','Violists',2,'Alto',230),(119,'Viola','Violists',3,'Alto',231),(120,'Viola','Violists',4,'Alto',232),(121,'Viola','Violists',5,'Alto',233),(122,'Viola','Violists',6,'Alto',234),(123,'Viola','Violists',7,'Alto',235),(124,'Viola','Violists',8,'Alto',236),(125,'Viola','Violists',9,'Alto',237),(126,'Viola','Violists',10,'Alto',238),(127,'Viola','Violists',11,'Alto',239),(128,'Viola','Violists',12,'Alto',240),(129,'Cello','Cellists',1,'Bass',241),(130,'Cello','Cellists',2,'Bass',242),(131,'Cello','Cellists',3,'Bass',243),(132,'Cello','Cellists',4,'Bass',244),(133,'Cello','Cellists',5,'Bass',245),(134,'Cello','Cellists',6,'Bass',246),(135,'Cello','Cellists',7,'Bass',247),(136,'Cello','Cellists',8,'Bass',248),(137,'Cello','Cellists',9,'Bass',249),(138,'Cello','Cellists',10,'Bass',250),(139,'Double Bass','Bassists',1,'Bass',251),(140,'Double Bass','Bassists',2,'Bass',252),(141,'Double Bass','Bassists',3,'Bass',253),(142,'Double Bass','Bassists',4,'Bass',254),(143,'Double Bass','Bassists',5,'Bass',255),(144,'Double Bass','Bassists',6,'Bass',256),(145,'Double Bass','Bassists',7,'Bass',257),(146,'Double Bass','Bassists',8,'Bass',258);
/*!40000 ALTER TABLE `SymphonicString` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Woodwind`
--

DROP TABLE IF EXISTS `Woodwind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Woodwind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) DEFAULT NULL,
  `clef` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_Woodwind_myPlayer_6` (`player_id`),
  CONSTRAINT `fk_Woodwind_myPlayer_6` FOREIGN KEY (`player_id`) REFERENCES `Players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Woodwind`
--

LOCK TABLES `Woodwind` WRITE;
/*!40000 ALTER TABLE `Woodwind` DISABLE KEYS */;
INSERT INTO `Woodwind` VALUES (1,'Flute','Treble',5),(2,'Oboe','Treble',6),(3,'Flute','Treble',7),(4,'Flute','Treble',8),(5,'Oboe','Treble',9),(6,'Bassoon','Bass',10),(7,'Bassoon','Bass',11),(8,'Flute','Treble',55),(9,'Flute','Treble',56),(10,'Flute','Treble',57),(11,'Piccolo','Treble',58),(12,'Oboe','Treble',59),(13,'Oboe','Treble',60),(14,'Oboe','Treble',61),(15,'Oboe','Treble',62),(16,'Clarinet','Soprano',63),(17,'Clarinet','Soprano',64),(18,'Bass Clarinet','Bass',65),(19,'Bassoon','Bass',66),(20,'Bassoon','Bass',67),(21,'Bassoon','Bass',68),(22,'Contrabassoon','Bass',69),(23,'Saxophone','Treble',70),(24,'Flute','Treble',173),(25,'Flute','Treble',174),(26,'Flute','Treble',175),(27,'Piccolo','Treble',176),(28,'Oboe','Treble',177),(29,'Oboe','Treble',178),(30,'Oboe','Treble',179),(31,'Oboe','Treble',180),(32,'Clarinet','Soprano',181),(33,'Clarinet','Soprano',182),(34,'Bass Clarinet','Bass',183),(35,'Bassoon','Bass',184),(36,'Bassoon','Bass',185),(37,'Contrabassoon','Bass',186);
/*!40000 ALTER TABLE `Woodwind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_evolutions`
--

DROP TABLE IF EXISTS `play_evolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_evolutions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apply_script` text,
  `revert_script` text,
  `state` varchar(255) DEFAULT NULL,
  `last_problem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_evolutions`
--

LOCK TABLES `play_evolutions` WRITE;
/*!40000 ALTER TABLE `play_evolutions` DISABLE KEYS */;
INSERT INTO `play_evolutions` VALUES (1,'2e8d8b9e1e0c4e84645319d3a20addcc553b7743','2014-11-20 02:26:41','create table Brass (\nid                        integer auto_increment not null,\ninstrument                varchar(255),\ninstrument_key            varchar(255),\nclef                      varchar(255),\nseat                      integer,\nplayer_id                 integer,\nconstraint pk_Brass primary key (id))\n;\n\ncreate table Keyboard (\nid                        integer auto_increment not null,\ninstrument                varchar(255),\nclef                      varchar(255),\nplayer_id                 integer,\nconstraint pk_Keyboard primary key (id))\n;\n\ncreate table Orchestra (\nid                        integer auto_increment not null,\nname                      varchar(255),\ntype                      varchar(255),\nnum_players               integer,\nstyle                     varchar(255),\nconstraint pk_Orchestra primary key (id))\n;\n\ncreate table Percussion (\nid                        integer auto_increment not null,\ninstrument                varchar(255),\ntype                      varchar(255),\nplayer_id                 integer,\nconstraint pk_Percussion primary key (id))\n;\n\ncreate table Players (\nid                        integer auto_increment not null,\nfirst_name                varchar(255),\nlast_name                 varchar(255),\nemail                     varchar(255),\ntelephone                 varchar(255),\norchestra_id              integer,\nconstraint pk_Players primary key (id))\n;\n\ncreate table SymphonicString (\nid                        integer auto_increment not null,\ninstrument                varchar(255),\nsection                   varchar(255),\nseat                      integer,\nclef                      varchar(255),\nplayer_id                 integer,\nconstraint pk_SymphonicString primary key (id))\n;\n\ncreate table Woodwind (\nid                        integer auto_increment not null,\ninstrument                varchar(255),\nclef                      varchar(255),\nplayer_id                 integer,\nconstraint pk_Woodwind primary key (id))\n;\n\nalter table Brass add constraint fk_Brass_myPlayer_1 foreign key (player_id) references Players (id) on delete restrict on update restrict;\ncreate index ix_Brass_myPlayer_1 on Brass (player_id);\nalter table Keyboard add constraint fk_Keyboard_myPlayer_2 foreign key (player_id) references Players (id) on delete restrict on update restrict;\ncreate index ix_Keyboard_myPlayer_2 on Keyboard (player_id);\nalter table Percussion add constraint fk_Percussion_myPlayer_3 foreign key (player_id) references Players (id) on delete restrict on update restrict;\ncreate index ix_Percussion_myPlayer_3 on Percussion (player_id);\nalter table Players add constraint fk_Players_myOrchestra_4 foreign key (orchestra_id) references Orchestra (id) on delete restrict on update restrict;\ncreate index ix_Players_myOrchestra_4 on Players (orchestra_id);\nalter table SymphonicString add constraint fk_SymphonicString_myPlayer_5 foreign key (player_id) references Players (id) on delete restrict on update restrict;\ncreate index ix_SymphonicString_myPlayer_5 on SymphonicString (player_id);\nalter table Woodwind add constraint fk_Woodwind_myPlayer_6 foreign key (player_id) references Players (id) on delete restrict on update restrict;\ncreate index ix_Woodwind_myPlayer_6 on Woodwind (player_id);','SET FOREIGN_KEY_CHECKS=0;\n\ndrop table Brass;\n\ndrop table Keyboard;\n\ndrop table Orchestra;\n\ndrop table Percussion;\n\ndrop table Players;\n\ndrop table SymphonicString;\n\ndrop table Woodwind;\n\nSET FOREIGN_KEY_CHECKS=1;','applied','');
/*!40000 ALTER TABLE `play_evolutions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-20 10:58:52
