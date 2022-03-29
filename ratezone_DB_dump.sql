-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: ratezone_DB
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `course_code` int NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `overall_rating` double DEFAULT NULL,
  `effort_required` double DEFAULT NULL,
  `enjoyment_rating` double DEFAULT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (41091,'Pre-calculus',NULL,NULL,NULL),(410100,'Elementary Mathematics',NULL,NULL,NULL),(410101,'Calculus I',NULL,NULL,NULL),(410102,'Calculus II',NULL,NULL,NULL),(410103,'Biomathematics',NULL,NULL,NULL),(410105,'Applied Calculus',NULL,NULL,NULL),(410111,'Introductory Linear Algebra',NULL,NULL,NULL),(410115,'Finite Mathematics',NULL,NULL,NULL),(410211,'Calculus III',NULL,NULL,NULL),(410226,'Euclidean Plane Geometry',NULL,NULL,NULL),(410240,'Ordinary Differential Equations',NULL,NULL,NULL),(410250,'Introduction to the Foundations of Mathematics',NULL,NULL,NULL),(410261,'Introduction to Abstract Algebra I',NULL,NULL,NULL),(410262,'Introduction to Abstract Algebra II',NULL,NULL,NULL),(410313,'Applied Mathematical Analysis',NULL,NULL,NULL),(410315,'Mathematical Electromagnetic Theory',NULL,NULL,NULL),(410316,'Elements of Mathematical Modelling',NULL,NULL,NULL),(410325,'Combinatorics',NULL,NULL,NULL),(410326,'Graph Theory',NULL,NULL,NULL),(410327,'Theory of Numbers',NULL,NULL,NULL),(410329,'Introduction to Real Analysis',NULL,NULL,NULL),(410330,'Functions of Complex Variables',NULL,NULL,NULL),(410340,'Theory of Differential Equations',NULL,NULL,NULL),(410343,'Classical Mechanics',NULL,NULL,NULL),(410345,'Abstract Algebra',NULL,NULL,NULL),(410346,'Group Theory',NULL,NULL,NULL),(410352,'Numerical Analysis',NULL,NULL,NULL),(410354,'Methods in Applied Mathematics',NULL,NULL,NULL),(410355,'Operational Mathematics',NULL,NULL,NULL),(410361,'Theoretical Fluid Dynamics',NULL,NULL,NULL),(410362,'Computational Linear Algebra',NULL,NULL,NULL),(410363,'Advanced Linear Algebra',NULL,NULL,NULL),(410370,'Geometry I',NULL,NULL,NULL),(410375,'Introduction to Topology',NULL,NULL,NULL),(410401,'Analysis',NULL,NULL,NULL),(410402,'Set Theory',NULL,NULL,NULL),(410403,'Advanced Linesr Algebra',NULL,NULL,NULL),(410404,'Analysis of Functions of Several Variables',NULL,NULL,NULL),(410406,'Algebraic Coding Theory',NULL,NULL,NULL),(410407,'Tensor Analysis',NULL,NULL,NULL),(410408,'Topology',NULL,NULL,NULL),(410409,'Geometry II',NULL,NULL,NULL),(410410,'Theory of Relativity',NULL,NULL,NULL),(410412,'Theory of Elasticity',NULL,NULL,NULL),(410415,'Partial Differential Equations',NULL,NULL,NULL),(410416,'Mathematical Modelling',NULL,NULL,NULL),(410420,'Introduction to Dynamical Systems and Chaos',NULL,NULL,NULL),(410438,'Applications of Graph Theory',NULL,NULL,NULL),(410440,'Integral Equations',NULL,NULL,NULL),(410450,'Ring Theory',NULL,NULL,NULL),(410454,'Advanced Methods in Applied Mathematics',NULL,NULL,NULL),(410468,'Numerical Ordinary Differential Equations',NULL,NULL,NULL),(410469,'Numerical Partial Differential Equations',NULL,NULL,NULL),(410470,'Calculus of Variations',NULL,NULL,NULL),(410480,'Differential Geometry',NULL,NULL,NULL),(410481,'Functional Analysis',NULL,NULL,NULL),(410485,'Finite Planes',NULL,NULL,NULL),(410495,'Mathematical Logic',NULL,NULL,NULL),(418106,'Fortran',NULL,NULL,NULL),(418108,'Computers and their Applications',NULL,NULL,NULL),(418111,'Discrete Mathematics',NULL,NULL,NULL),(418123,'Introduction to Computers',NULL,NULL,NULL),(418126,'Computer Programming',NULL,NULL,NULL),(418141,'Computer Programming I',NULL,NULL,NULL),(418142,'Computer Programming II',NULL,NULL,NULL),(418201,'Data Structures and Algorithms',NULL,NULL,NULL),(418211,'Theory of Computation I',NULL,NULL,NULL),(418220,'Programming in C and UNIX',NULL,NULL,NULL),(418221,'Computer Systems',NULL,NULL,NULL),(418222,'Systems Programming Laboratory',NULL,NULL,NULL),(418223,'Systems Programming',NULL,NULL,NULL),(418301,'Algorithm Design and Analysis',NULL,NULL,NULL),(418311,'Numerical Computation',NULL,NULL,NULL),(418315,'Theory of Computation II',NULL,NULL,NULL),(418321,'Operating Systems',NULL,NULL,NULL),(418322,'Computer Architecture',NULL,NULL,NULL),(418331,'Computer Network',NULL,NULL,NULL),(418335,'Web Programming',NULL,NULL,NULL),(418346,'Declarative Programming',NULL,NULL,NULL),(418347,'Compiler Design',NULL,NULL,NULL),(418365,'Artificial Intelligence',NULL,NULL,NULL),(418390,'Software Engineering',NULL,NULL,NULL),(418391,'Fundamentals of Cloud Computing',NULL,NULL,NULL),(418415,'Information Theory and Cryptography',NULL,NULL,NULL),(418416,'Modeling and Performance Evaluation',NULL,NULL,NULL),(418425,'Distributed and Parallel Systems',NULL,NULL,NULL),(418426,'Embedded Microprocessor Systems',NULL,NULL,NULL),(418427,'Computer Security and Privacy',NULL,NULL,NULL),(418455,'Computer Graphics',NULL,NULL,NULL),(418466,'Introduction to Machine Learning',NULL,NULL,NULL),(418470,'Database Systems',NULL,NULL,NULL),(418475,'Distributed Database Systems',NULL,NULL,NULL),(418490,'Project',NULL,NULL,NULL),(418491,'Capstone Project I',NULL,NULL,NULL),(418492,'Capstone Project II',NULL,NULL,NULL),(418496,'Topics in Computer Science I',NULL,NULL,NULL),(418497,'Topics in Computer Science II',NULL,NULL,NULL),(1830101,'Introduction to IS',NULL,NULL,NULL),(1830115,'Computing Foundations',NULL,NULL,NULL),(1830210,'Computational Methods',NULL,NULL,NULL),(1830240,'Programming & Problem Solving',NULL,NULL,NULL),(1830241,'Data Structures',NULL,NULL,NULL),(1830253,'Technical Writing',NULL,NULL,NULL),(1830321,'Database Systems I',NULL,NULL,NULL),(1830331,'IS Theory & Practice',NULL,NULL,NULL),(1830340,'Web Programsming',NULL,NULL,NULL),(1830350,'Networks & Telecommunication',NULL,NULL,NULL),(1830353,'Information Security Systems',NULL,NULL,NULL),(1830357,'Operating Systems & File System Organization',NULL,NULL,NULL),(1830363,'Computer Organization',NULL,NULL,NULL),(1830380,'Introduction to Management IS',NULL,NULL,NULL),(1830423,'Internet Databases',NULL,NULL,NULL),(1830440,'Web Programming II',NULL,NULL,NULL),(1830470,'Multimedia Design & Scripting',NULL,NULL,NULL),(1830471,'Interactive 3D Graphics Modeling',NULL,NULL,NULL),(1830472,'Introduction to VRML',NULL,NULL,NULL),(1830475,'Geographical Information Systems',NULL,NULL,NULL),(1830480,'IS Development',NULL,NULL,NULL),(1830482,'Web Management',NULL,NULL,NULL),(1830495,'Internship',NULL,NULL,NULL),(1830499,'Capstone Project',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `dept_code` int NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `overall_rating` double DEFAULT NULL,
  `adminstrative_support` double DEFAULT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (410,'Mathematics',0,NULL),(418,'Computer Science',0,NULL),(480,'Statistic',0,NULL),(1612,'Computer Engineering',0,NULL),(1830,'Information Science',0,NULL);
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Faculty`
--

DROP TABLE IF EXISTS `Faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `dept_code` int NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `overall_rating` double DEFAULT NULL,
  `teaching_quality` double DEFAULT NULL,
  `exams_difficulty` double DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `faculty_deptCode_FK` (`dept_code`),
  CONSTRAINT `faculty_deptCode_FK` FOREIGN KEY (`dept_code`) REFERENCES `Department` (`dept_code`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Faculty`
--

LOCK TABLES `Faculty` WRITE;
/*!40000 ALTER TABLE `Faculty` DISABLE KEYS */;
INSERT INTO `Faculty` VALUES (1,418,'Adel','Aljomah',2.714285714,2.357142857,2.642857142),(2,418,'Ayman','Alawadhi',NULL,NULL,NULL),(3,418,'Bader','Albader',NULL,NULL,NULL),(4,418,'Bader','Albdaiwi',NULL,NULL,NULL),(5,418,'Fawaz','Alazemi',4.291666666,4.541666666,4.208333333),(6,418,'Hamdi','Yahyaoui',3.7,3.7,3.15),(7,418,'Hamid','Alhamadi',3.875,3.625,2.9375),(8,418,'Hazem','Raafat',2.235294117,1.764705882,2.588235294),(9,418,'Hosam','AboElfotoh',2.105263157,2.157894736,4.315789473),(10,418,'Husain','Ibraheem',3.684210526,3.894736842,3.894736842),(11,418,'Hussain','Almohri',4.538461538,4.846153846,3.692307692),(12,418,'Khalil','Abdullah',2.166666666,1.666666666,3.166666666),(13,418,'Maha','Alabduljaleel',2.75,2.25,3.45),(14,418,'Mansour','Abdulaziz',3.722222222,4.166666666,3.833333333),(15,418,'Mohammad','Almutawa',4.388888888,4.111111111,2.833333333),(16,418,'Mohammad','Rashed Almulla',NULL,NULL,NULL),(17,418,'Mohammad','Smaoui',4.857142857,4.785714285,2.642857142),(18,418,'Mohammed','Ali Almulla',1.538461538,1.307692307,3.384615384),(19,418,'Naser','AlDuaij',3.947368421,3.842105263,3.947368421),(20,418,'Salman','Aladwani',NULL,NULL,NULL),(21,418,'Saud','Aldarmi',NULL,NULL,NULL),(22,418,'Zaid','Hussain',4.066666666,4.066666666,3.266666666),(23,418,'Ali','Alshammeri',NULL,NULL,NULL),(24,418,'Amani','Alshaher',NULL,NULL,NULL),(25,418,'Amro','Khattab',NULL,NULL,NULL),(26,418,'Asmaa','Alotaibi',NULL,NULL,NULL),(27,418,'Fatma','Albdaiwi',NULL,NULL,NULL),(28,418,'Galal','Elhusseini',NULL,NULL,NULL),(29,418,'Lulwa','Alshebeeb',NULL,NULL,NULL),(30,418,'Mahammad','Suoud',NULL,NULL,NULL),(31,418,'Nourah','Alateeqi',NULL,NULL,NULL),(32,418,'Rena','Alzaid',NULL,NULL,NULL),(33,418,'Sulaiman','Alkhazi',NULL,NULL,NULL),(34,1612,'Abbas','Fairouz',NULL,NULL,NULL),(35,1612,'Abdulaziz','Boujarwah',NULL,NULL,NULL),(36,1612,'Abdullah','Almutawa',NULL,NULL,NULL),(37,1612,'Abdullah','Alshaibani',NULL,NULL,NULL),(38,1612,'Ameer','Mohammed',NULL,NULL,NULL),(39,1612,'Ammar','Alhusaini',NULL,NULL,NULL),(40,1612,'Anastasios','Dimitriou',NULL,NULL,NULL),(41,1612,'Anwar','Alyatama',NULL,NULL,NULL),(42,1612,'Asaad','Alrashed',NULL,NULL,NULL),(43,1612,'Asmaa','Alsumait',NULL,NULL,NULL),(44,1612,'Ayed','Salman',NULL,NULL,NULL),(45,1612,'Buthainah','Alkazemi',NULL,NULL,NULL),(46,1612,'Ebrahim','Alrashed',NULL,NULL,NULL),(47,1612,'Eman','Alotaibi',NULL,NULL,NULL),(48,1612,'Faridah','Ali',NULL,NULL,NULL),(49,1612,'Fatma','Alali',NULL,NULL,NULL),(50,1612,'Fawaz','Alanzi',NULL,NULL,NULL),(51,1612,'Hamed','Alazmi',NULL,NULL,NULL),(52,1612,'Imtiaz','Ahmed',NULL,NULL,NULL),(53,1612,'Jassim','Aljuraidan',NULL,NULL,NULL),(54,1612,'Khaled','Alsaqabi',NULL,NULL,NULL),(55,1612,'Khaled','Alzamel',NULL,NULL,NULL),(56,1612,'Khaled','Hadi',NULL,NULL,NULL),(57,1612,'Lulwa','Alhubail',NULL,NULL,NULL),(58,1612,'Maha','Faisal',NULL,NULL,NULL),(59,1612,'Mahmoud','Bennaser',NULL,NULL,NULL),(60,1612,'Mansour','Jaragh',NULL,NULL,NULL),(61,1612,'Maytham','Safar',NULL,NULL,NULL),(62,1612,'Mehmet','Karaata',NULL,NULL,NULL),(63,1612,'Mohammad','Alfailakawi',NULL,NULL,NULL),(64,1612,'Mohammad','Alkandari',NULL,NULL,NULL),(65,1612,'Mohammad','Allaho',NULL,NULL,NULL),(66,1612,'Mohammad','Alshayeji',NULL,NULL,NULL),(67,1612,'Mohammad','Awad',NULL,NULL,NULL),(68,1612,'Mohammad','Jeragh',NULL,NULL,NULL),(69,1612,'Munirah','Almatouq',NULL,NULL,NULL),(70,1612,'Reem','Albaghli',NULL,NULL,NULL),(71,1612,'Sabah','Alfedaghi',NULL,NULL,NULL),(72,1612,'Saeed','Abed',NULL,NULL,NULL),(73,1612,'Sami','Habib',NULL,NULL,NULL),(74,1612,'Shouq','Alsubaihi',NULL,NULL,NULL),(75,1612,'Sobeeh','Almukhaizim',NULL,NULL,NULL),(76,1612,'Sultan','Alharbi',NULL,NULL,NULL),(77,1830,'Abdullah','Almutairi',NULL,NULL,NULL),(78,1830,'Aseel','Almonaies',NULL,NULL,NULL),(79,1830,'Bader','Ali',NULL,NULL,NULL),(80,1830,'Bader','Alkhazi',NULL,NULL,NULL),(81,1830,'Dari','Alhuwail',NULL,NULL,NULL),(82,1830,'Eiman','Alshammari',NULL,NULL,NULL),(83,1830,'Fatemah','Husain',NULL,NULL,NULL),(84,1830,'Fatima','Boujarwah',NULL,NULL,NULL),(85,1830,'Hanady','Abdulsalam',NULL,NULL,NULL),(86,1830,'Helal','Alhammadi',NULL,NULL,NULL),(87,1830,'Kalim','Qureshi',NULL,NULL,NULL),(88,1830,'Kassem','Saleh',NULL,NULL,NULL),(89,1830,'Loulwah','Alsumait',NULL,NULL,NULL),(90,1830,'Naelah','Aldabbous',NULL,NULL,NULL),(91,1830,'Omar','Alibrahim',NULL,NULL,NULL),(92,1830,'Paul','Manuel',NULL,NULL,NULL),(93,1830,'Ranya','Alawadhi',NULL,NULL,NULL),(94,1830,'Safaa','Zaman',NULL,NULL,NULL),(95,1830,'Sana','Buhamra',NULL,NULL,NULL),(96,1830,'Shaikha','Alduaij',NULL,NULL,NULL),(97,1830,'Zahraa','Marafie',NULL,NULL,NULL),(98,1830,'Zainab','Aljazzaf',NULL,NULL,NULL),(99,1830,'Zainab','Almeraj',NULL,NULL,NULL),(100,1830,'Aisha','Al-Houti',NULL,NULL,NULL),(101,1830,'Altaf','Al-Farhan',NULL,NULL,NULL),(102,1830,'Aseel','Al-Qemlas',NULL,NULL,NULL),(103,1830,'Eman','Al-Roumi',NULL,NULL,NULL),(104,1830,'Fatma','Al-Rashed',NULL,NULL,NULL),(105,1830,'Heba','Al-Turki',NULL,NULL,NULL),(106,1830,'Latifa','Salem',NULL,NULL,NULL),(107,1830,'Maryam','Alotaibi',NULL,NULL,NULL),(108,1830,'Sabah','Al-Madani',NULL,NULL,NULL),(109,410,'Hani','Farran',NULL,NULL,NULL),(110,410,'Ismail','Taqi',NULL,NULL,NULL),(111,410,'Marian','Deaconescu',NULL,NULL,NULL),(112,410,'Michael','Johnson',NULL,NULL,NULL),(113,410,'Nejib','Smaoui',NULL,NULL,NULL),(114,410,'Salem','Al-Yaqoub',NULL,NULL,NULL),(115,410,'Abdullah','Alazemi',NULL,NULL,NULL),(116,410,'Ahmad','Karaballi',NULL,NULL,NULL),(117,410,'Albert','Borbely',NULL,NULL,NULL),(118,410,'Ali ','Kanso',NULL,NULL,NULL),(119,410,'Anton','Betten',NULL,NULL,NULL),(120,410,'Aurelian','Bejancu',NULL,NULL,NULL),(121,410,'Bader ','Al-Shammary',NULL,NULL,NULL),(122,410,'Boudjemaa','Anchouche',NULL,NULL,NULL),(123,410,'Boumediene','Chentouf',NULL,NULL,NULL),(124,410,'Fares','Alazemi',NULL,NULL,NULL),(125,410,'Fathi','Saidi',NULL,NULL,NULL),(126,410,'Fuat','Gurcan',NULL,NULL,NULL),(127,410,'Khaled','Qazaqzeh',NULL,NULL,NULL),(128,410,'Khalifa','Es-Sebaiy',NULL,NULL,NULL),(129,410,'Latif','Hanna',NULL,NULL,NULL),(130,410,'Mamad','Ghebleh',NULL,NULL,NULL),(131,410,'Milica','Anđelić',NULL,NULL,NULL),(132,410,'Zafer','Mahmud',NULL,NULL,NULL),(133,410,'Abdulaziz','Alsenafi',NULL,NULL,NULL),(134,410,'Abdullah','Alshammari',NULL,NULL,NULL),(135,410,'Abdelhameed','Abdo',NULL,NULL,NULL),(136,410,'Ahood','Al-Jasser',NULL,NULL,NULL),(137,410,'Ameena','Alzaidan',NULL,NULL,NULL),(138,410,'Hamid','Said',NULL,NULL,NULL),(139,410,'Hessah','Al-Motairi',NULL,NULL,NULL),(140,410,'Kyriakos','Papadopoulos',NULL,NULL,NULL),(141,410,'Maryam','Alkandari',NULL,NULL,NULL),(142,410,'Mishari','Al-Foraih',NULL,NULL,NULL),(143,410,'Saleh','Baqer',NULL,NULL,NULL),(144,410,'Abdulrahman','Mubarak',NULL,NULL,NULL),(145,410,'Adnan','Al-Sayed',NULL,NULL,NULL),(146,410,'Alaa','Alqaderi',NULL,NULL,NULL),(147,410,'Amal','Alrashdan',NULL,NULL,NULL),(148,410,'Ayman','EzzElarab',NULL,NULL,NULL),(149,410,'Baba','Amoro',NULL,NULL,NULL),(150,410,'Hameed','Al-Fahad',NULL,NULL,NULL),(151,410,'Maale','Al-Motairi',NULL,NULL,NULL),(152,410,'Mayada','Yousif',NULL,NULL,NULL),(153,410,'Muna','Aljazzaf',NULL,NULL,NULL),(154,410,'Rayouf','Alsahli',NULL,NULL,NULL),(155,410,'Samer','Al-Sahhar',NULL,NULL,NULL),(156,410,'Shorouq','Al-Ghunaim',NULL,NULL,NULL),(157,410,'Wafa','Abdulrahman',NULL,NULL,NULL),(158,410,'Yousef','Alenazi',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor`
--

DROP TABLE IF EXISTS `Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professor` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `phd_from` varchar(255) DEFAULT NULL,
  `prof_rank` varchar(50) NOT NULL,
  `research_area` varchar(255) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  KEY `prof_fid_FK` (`faculty_id`),
  CONSTRAINT `prof_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES (1,'Bristol University','Assistant Professor','Computer networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/default-profile.png'),(2,'Boston University','Assistant Professor','Computer networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Ayman-copy.jpg'),(3,'Oregon State University','Assistant Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Bader_Al-Bader.jpg'),(4,'NULL','Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/bader-copy.jpeg'),(5,'Oregon State University','Assistant Professor','Computer Architecture','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/fawaz.jpg'),(6,'Laval University','Associate Professor','Service Oriented Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Hamdi.jpg'),(7,'Virginia Tech','Associate Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/hamid.png'),(8,'University of Waterloo','Professor','Machine Learning','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/hazem-copy.jpeg'),(9,'University of Waterloo','Associate Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Hossam.jpg'),(10,'Kansas State University','Assistant Professor','Programming Languages','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/husain-copy.jpg'),(11,'Virginia Tech','Associate Professor','Security','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almohri-copy.png'),(12,'Case Western Reserve University','Assistant Professor','Software Engineering','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Khalil.jpg'),(13,'University of California','Assistant Professor','High-Performance Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/maha.jpeg'),(14,'George Mason University','Assistant Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/m1.jpg'),(15,'University of Colorado','Assistant Professor','Pervasive Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almutawa.jpg'),(16,'Essex University','Assistant Professor','Pervasive Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Almulla-R-1.jpg'),(17,'McGill University','Assistant Professor','Bioinformatics','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/samaoui-copy.jpg'),(18,'McGill University','Professor','Artificial Intelligence','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almulla.jpg'),(19,'Columbia University','Assistant Professor','Operating Systems','https://www.cs.ku.edu.kw/wp-content/uploads/2020/08/NaserAlDuaij.jpg'),(20,'University of Kent','Assistant Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/default-profile.png'),(21,'The University of York','Assistant Professor','Databases','https://www.cs.ku.edu.kw/wp-content/uploads/2020/10/Saud-1.jpg'),(22,'Oregon State University','Associate Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/zaid.jpg'),(34,'Texas A&M University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw170396.jpg'),(35,'University of Miami','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147692.jpg'),(36,'Syracuse University','Associate Professor','',NULL),(37,'Purdue University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw233288.jpg'),(38,'University of Virginia','Assistant Professor','Computer Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147701.jpg'),(39,'NULL','Assistant Professor','',NULL),(34,'Texas A&M University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw170396.jpg'),(35,'University of Miami','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147692.jpg'),(36,'Syracuse University','Associate Professor','',NULL),(37,'Purdue University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw233288.jpg'),(38,'University of Virginia','Assistant Professor','Computer Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147701.jpg'),(39,'NULL','Assistant Professor','',NULL),(40,'University of California','Professor','Theoretical Computer Science:Computer and Network Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146842.png'),(41,'Georgia Institute of Technology','Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147672.jpg'),(42,'University of Southern California','Professor','Computer Architecture','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147674.jpg'),(43,'Concordia University','Associate Professor','Human Computer Interaction',NULL),(44,'Syracuse University','Professor','Data Mining:Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146844.jpg'),(45,'NULL','Assistant Professor','',NULL),(46,'University of Southern California','Associate Professor','Computer Networks',NULL),(47,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw110696.jpg'),(48,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201884.jpg'),(49,'NULL','Assistant Professor','',NULL),(50,'Rensselaer Polytechnic Institute','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146849.jpg'),(51,'University of Washington','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109916.jpg'),(52,'Syracuse University','Professor','Parallel and Distributed Computing','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201881.jpg'),(53,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147429.jpg'),(54,'North Carolina State University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201883.jpg'),(55,'NULL','Assistant Professor','',NULL),(56,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw110698.jpg'),(57,'NULL','Assistant Professor','',NULL),(58,'NULL','Assistant Professor','',NULL),(59,'University of Massachusetts Amherst','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201885.jpg'),(60,'New Mexico State University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147665.jpg'),(61,'University of Southern California','Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109661.jpg'),(62,'The University of Iowa','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201882.jpg'),(63,'University of Wisconsin-Madison','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw118248.jpg'),(64,'Virginia Tech','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146848.png'),(65,'NULL','Assistant Professor','Data Mining:Artificial Intelligence',NULL),(66,'University of Southern California','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109719.jpg'),(67,'University of Waterloo','Associate Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146846.jpg'),(68,'Syracuse University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201886.jpg'),(69,'NULL','Assistant Professor','',NULL),(70,'University of Colorado Boulder','Assistant Professor','Human Computer Interaction:Software Engineering',NULL),(71,'Northwestern University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109660.jpg'),(72,'Concordia University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw108782.jpg'),(73,'University of Southern California','Professor','',NULL),(74,'University of California Irvine','Assistant Professor','',NULL),(75,'Yale University','Associate Professor','Computer Architecture','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147697.jpg'),(76,'NULL','Assistant Professor','',NULL),(77,'University of Florida','Assistant Professor','Machine Learning',NULL),(78,'Queen\'s university','Assistant Professor','Web Applications and Services',NULL),(79,'McGill University','Assistant Professor','Distributed Systems',NULL),(80,'University of Michigan','Assistant Professor','Software Quality and Testing',NULL),(81,'University of Maryland','Associate Professor','Health Informatics',NULL),(82,'George Mason University','Assistant Professor','Data Mining',NULL),(83,'George Mason University','Assistant Professor','Artificial Intelligence',NULL),(84,'Georgia Institute of Technology','Assistant Professor','Health Informatics',NULL),(85,'Queen’s University','Associate Professor','Data Mining',NULL),(86,'Virginia Tech','Associate Professor','Fuzzy Logic',NULL),(87,'Mororan Institute of Technology','Associate Professor','Distributed Computing',NULL),(88,'University of Ottawa','Professor','',NULL),(89,'George Mason University','Assistant Professor','Data mining:Machine Learning',NULL),(90,'Newcastle University','Assistant Professor','Wireless Communications',NULL),(91,'Southern Methodist University','Assistant Professor','Security',NULL),(92,'University of Newcastle','Professor','Graph Algorithms',NULL),(93,'Southern Methodist University','Assistant Professor','Security',NULL),(94,'University of Waterloo','Assistant Professor','Intrusion Detection Systems',NULL),(95,'University of Wyoming','Professor','Statistics',NULL),(96,'University of Maryland','Assistant Professor','Data Mining:Cyber Security:Health Informatics',NULL),(97,'University of California Irvine','Assistant Professor','Internet-of-Things',NULL),(98,'The University of Western Ontario','Assistant Professor','Web Services',NULL),(99,'University of Waterloo','Assistant Professor','Computer Graphics:Human Computer Interaction',NULL),(109,'University of Southampton','Professor','Differential Geometry & Topology','https://lh5.googleusercontent.com/67g7-rzNIyh6XEL6agb68wiPnMhbhNJhla8LgvBKLbjGKn-_4LVOYmnFVQxdk8iPWQ9x3hyiGgQPOGy2S0RLA5gEpMLEx6d5bnamWBWQlrQZpM9y=w1280'),(110,'University of North Texas','Professor','Partial Differential Equations','https://lh5.googleusercontent.com/mInLPsSJrkRo8mjvH2YFx7-BU82lH5mPtO54bNKeAQt_Z984BQ3p-mTMtPyiQFC_pwWITOV9oq2dvMq_hLj6fneN3lEgnJ3Et9dm6KMcIQUw4Fjp=w1280'),(111,'Bucharest University','Professor','Algebra & Group Theory','https://lh3.googleusercontent.com/9lHLlLhpQOO0bLXx6igaa5zrEXHeNGzhjlfudJHsQnTbQOHwrIP0PHa2Dqts2Fu95WWejBgpU-btxhiUxoLKc1gaynoWSpYP_Vr-EPeSBiCp7VLq=w1280'),(112,'University of Wisconsin-Madison','Professor','Numerical approximation theory','https://lh6.googleusercontent.com/potBRCECfZUa0C9imI1xh2rtMwYsXvmRzgnEiaYefisdc9JeLwIXqMsr_RGCJOLvyoZffYV2gyIYCzX8S6mq_wZkWvrTj_rnv5Awm6QfVTZIn03W=w1280'),(113,'Arizona State University','Professor','Dynamical Systems','https://lh6.googleusercontent.com/FWdgCT4yEidXd7VRWrJoQRpscQD6TluzAw7UgSjKH2rLmiA8tTaa0bzZXd0BQr4zQr9J7fgAHISpHr7oFT8ZW0im1nh2DtYs8yguMYgXqtRQ01RD=w1280'),(114,'Virginia Polytechnic Institute and State University','Professor','Mathematical Programming and Combinatorial Optimization','https://lh3.googleusercontent.com/u9JznVjMde6xayP9bHCA8efKb6W9xo4QdBL33wNwyDr2fzODPu1Mx2Hp412To7rbIt13XpYGJk3BYMTYybNgka6KOHWmRaN0G4tD9TgjIJoT_iho=w1280'),(115,'Colorado State University','Associate Professor','Spectral Graph Theory','https://lh6.googleusercontent.com/SdQy_WCcaT2X_0VPlN6ONvHh7hShHEiDYbUURrOMuio-B-F55xqPUcgVw1FMeqXj0YVaanQEQjf3hKX45OJPvtLk0eq-eQ319faen4NG734s5b6f=w1280'),(116,'University of Paris','Associate Professor','Applied Mathematics','https://lh3.googleusercontent.com/jlf71caljrEkIUiRa2yPbqoan3Y0KX15ROQ1CPaodUM9H38-ZIlNBUyDucTTZb4dghmyvG6pxNWZ2Ls6gbYgzFITs9AcfPLiic_uLQe4yEXDsq1e=w1280'),(117,'University of Notre Dame','Associate Professor','Diffrential Geometry','https://lh3.googleusercontent.com/C2IH-DYTq6n74dw-VVzXu6PATSKdbq0rHMHT8jA78ZCi1rs_psSJxrTpJ52oo7Xn74r7ZcbOGQzVfqPNxWsDhjY3yPFSrfehyzt1hE-VDDiHuP6u=w1280'),(118,'University of London','Associate Professor','Cryptography','https://lh4.googleusercontent.com/ITGZOtxNMrcSSuzMCH83-EUmPkBIY_0jk0nOMBYMJypiK3VMgluTAZI_LhXmyBaY8sR1AGATzKNh1443DcZ8O0kEoi0bWkx4L7ya7Ljm--MjRyeH=w1280'),(119,'Bayreuth University','Associate Professor','Combinatorics','https://lh3.googleusercontent.com/FviLDdZ-0l6KLLsHs6idyJiwwKTB04o2ruWb4WPYPbVPJp0rX1R0NZaMzSRlOXdzRwH0oes8CmexvMh_x8OhDoM1ZTaGsQ7LBgY7i0Fo-_n8B0mA4WQq-iDHEaJbo07O=w1280'),(120,'Cambridge University','Associate Professor','Broad Area: Approximation Theory','https://lh3.googleusercontent.com/xE1zK9bvjJgWqQjPwvW0vd4_4CyA4x1qbUl5mWE70NiBJtzi1fbMfl6I7V0Q4I70v4KkBhqNJLIL0DY_QpLnBGtKtmAXDiTQ89LFhroiQuG7CfAF=w1280'),(121,'Colorado State University','Associate Professor','Combinatorial Optimization','https://lh4.googleusercontent.com/otXEteYDvlApKyiwtYS2cl8XIBr7UJ9YvMhn0mn5ipUGzbBOtK6PSG03DRy8mMi4GqjbF9H8dZ-i2dqHT55z1NNSiZ-PlMvNHH9nK4J7-jDWGcHO=w1280'),(122,'Paris-Sud University','Associate Professor','Differential Geometry & Harmonic Analysis','https://lh6.googleusercontent.com/3hq3gIGFz2glysMHUiBz-DtvafqkDIJOtjyy0bkwUB1WCZnq6JpwcdGbUihTY3bBBWQysiDCrAFgPF2TsNzHdzL5JBMq5bi0TWXQ8GJGk3aF1SoZ=w1280'),(123,'INRIA-Lorraine and University of Metz','Associate Professor','Control of Partial Differential Equations','https://lh6.googleusercontent.com/gaL0_CgCDvFsJ8xrkahoa9TMDMQ1aEdVNxKNBbVWtjJZjeyypBdRXs_Ekbw0UB60ncPiZCUA9XK-XSCWMRsIOwZ6vdQubwntHPuebqoZYD2ovlOs=w1280'),(124,'London School of Economics and Political Science','Associate Professor','Financial Mathematics','https://lh4.googleusercontent.com/SplLTXOAiFExxfu1QRfCwxFTF1WC6C7mzJNgwLRmQnFW8Z2sO1Yiaj_OHSg9XrznmtA--0S7uRd9h1Zx0vNIY3A2CUv4FkEq1J2oaHBw0vgUrRxZ=w1280'),(125,'University of Maryland','Associate Professor','Functional analysis and applications: Best Approximation Theory','https://lh5.googleusercontent.com/vMmXC3a9fu2s7dHeRJQdXvw_d6XTR5IYfx9Z1V1UNqDRMNNz1L7Cr-qmnevE9PybWSjMBSFxfAHC9iMbt3cPNuaDzPMk7FjWE1krcLWgGiC6lgTp=w1280'),(126,'The University of Leeds','Associate Professor','Fluid Dynamics','https://lh3.googleusercontent.com/R2UP1wU_TMhiCYiynCAAZp222xHEdYm3L8GI3fnW7IN7fy11cs8t2aeCaA8smVmVTqvCif1oBOGjYP_VFYPqI94xLeWc1zbTeYKci_xPuDMAkYFb=w1280'),(127,'Louisiana State University','Associate Professor','Low Dimensional Topology- Knot Theory','https://lh5.googleusercontent.com/CVwWuutPycfajDJU2OyP6lvAgabNxuETKoQbdLbuq-u1oIwv9Z15JRByBDEh-_T_eYNXJtqwNYibAz4SqeWrlniaOGcNkPg2Lm3_mLfq1K7O9Pot=w1280'),(128,'Pantheon-Sorbonne University','Associate Professor','Gaussian processes','https://lh5.googleusercontent.com/mXOpA163nJfxPUOIW9k2zifE0Igf5MydwautFXXaKoRt_eBgPyv__vS4LHe_l2oQJXIwRlUhj2ui0HkLzNXzjJEtLBS9a29HHLhZzO0Ciu3wwrw-=w1280'),(129,'Birmingham University England','Associate Professor','Computational Linear Algebra','https://lh3.googleusercontent.com/sA-kdmMFxXPfn3j7HLcKqMouO7atYnE17xGpO5F--SCGQ55pAyB95o1PeW1h_2PCTq1ivXYWkzo71H-7p8bDb2qzRMyb7-ADBaidEy2YBa9L1wiq=w1280'),(130,'Simon Fraser University','Associate Professor','Graph Theory','https://lh6.googleusercontent.com/IT-pWOxRgpPpbEj4pKiATNY2eN-KRFUYcGqjqR-EhLoP2CrecrUSXAQL1GKwbr1jwsnvI9ig2Ow1aN1ys44tct_FM3csD5loP4u7TYZPbR-BtG40=w1280'),(131,'University of Aveiro','Associate Professor','Spectral Graph Theory','https://lh6.googleusercontent.com/YHhfOeLZ-UoIFvgK9ojSu1YL8m46gGjTPGJVOCKIspwyX9CgOWkjJ7m987WyldJrOR17EgQr7r-4z7LAS0KDp3J5c2xs_8YijDCe3m2VIWbJndcB=w1280'),(132,'Cambridge University','Associate Professor','Algebraic Topology','https://lh6.googleusercontent.com/9A7dM_M5lOdp7vqs6hZTNRIaT2bHCfI_hID8BuUWeKvte7zDa0xucdin5sE3-ook7vLEYeZNh32aaFsFZMC7W5kOAcwwBkFi0GEzmmvT9nVewq1u=w1280'),(133,'Case Western Reserve University','Assistant Professor','Agent-based modeling','https://lh4.googleusercontent.com/v1V_qk-V07vysis413scQMqRyK86I-G9PQStzfwi-FhX9BrIPgZC-ykyQG5SmH7jwbAHvc4RzCwobmiI0v9wT2WE3Y-CMfYDUzTMe_rlZrw_LZys=w1280'),(134,'University of Oxford','Assistant Professor','Applied mathematics: mathematical modeling','https://lh4.googleusercontent.com/Q-5pikbHtoMkONN-shQMhticaZIWb6haM95N3uqw_wmpIQRw_M2-3tzKJhViDB6jwTnnZmVoF-GTKln1RJwMmOga7CI0wNZxFCyc9F3oCNoEWSEC=w1280'),(135,'Università degli Studi di Bari Aldo Moro','Assistant Professor','Numerical solutions of ill-posed problems','https://lh3.googleusercontent.com/Ryn5x6nIconwtoX13yBZOUTpyMa2EBUE31AXmUl0xhxt9eKRd2dmdtjCbzlqDh90PcoJ2c_7NKARfKDbSkvz4V9qCReg6BU41Ha6RwPoApo1XnYL=w1280'),(136,'NULL','Assistant Professor','Reaction diffusion','https://lh6.googleusercontent.com/DqSAOFT-JUCU3e3fdZGsZNJ_XCGEQiOVJDcil2weaWE3PVZD-2JcO7TDppBCjO6FLduahwgXPz8RAla6YRHbdSUWDyS-6nAFI4ESBcpcYfYGuA4q=w1280'),(137,'Banger University','Assistant Professor','Fuzzy sets','https://lh5.googleusercontent.com/uWa71U3ESdAw18DITPfFO11IZrmWQPE72cfbxg6TZdvXPeRu1hJtdktow2R-RFAyl7N1G7WE8dftfGgwcCyytGyczKilVsnsgNjs4QfXrAJbT4cH=w1280'),(138,'Stony Brook University.','Assistant Professor','Applied Analysis','https://lh4.googleusercontent.com/riXLOIXW8JmrL74Ta1AieLbY6ZmYJkI8t3uulzPkaGLErusWzwVF1du_By9un6t_F3AjpuXMccyPBtSecrT9u8fe4i4yycEdLQ97xCr7Dqhfx8r4=w1280'),(139,'NULL','Assistant Professor','Financial Mathematics','https://lh5.googleusercontent.com/-zCwQtL_k0IgIV22LCGWYaFHvSVc3aVMzqejuG0DJAuNabuNAM_SAzvN9MngB_ledpKAfCCI9K6bN2I3XfUPGFyRG57_s8jgWXMUKrVKL0N_dYDS=w1280'),(140,'University of Birmingham','Assistant Professor','Topology and Its Applications in Order Theory and Set Theory','https://lh6.googleusercontent.com/uLlqX-u03C7wtyyzmR7Vmwvny8FqAAGlbfjgxj1Q3W2qypPERjWgBi9CABRzuaVgivmVJ4aO7X_pDXqfVw2AeEK8NfB3p9osIjEhjMv6m7s_4sfG=w1280'),(141,'Imperial College','Assistant Professor','Algebraic Geometric Code Theory','https://lh3.googleusercontent.com/tXZe4LVztLNZuW1N8vzBOJxNbL0s8SDSsvYHH2GDchG62-0UyTAdQCQzqz0SOSOavAhOhjuIDY3QqvN1qy--dj0RMQXF05l4Dk4RlMT4VP0X1NFk=w1280'),(142,'University of Manchester','Assistant Professor','Financial Mathematics','https://lh3.googleusercontent.com/tXZe4LVztLNZuW1N8vzBOJxNbL0s8SDSsvYHH2GDchG62-0UyTAdQCQzqz0SOSOavAhOhjuIDY3QqvN1qy--dj0RMQXF05l4Dk4RlMT4VP0X1NFk=w1280'),(143,'University of Edinburgh','Assistant Professor','Physical applied mathematics','https://lh5.googleusercontent.com/jVSvqnu3OyIjygHAxVLcxgtlDodQqW9sqM0V5zY7GKOGmBamrxfbGp-N4ZoUu0hFmIr665lch58IDGNjBdpcSL1YTelrCALwpwWkjG0oEwwzxhdGRWgczaLqLhUV-uQlww=w1280');
/*!40000 ALTER TABLE `Professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teaching_Assistant`
--

DROP TABLE IF EXISTS `Teaching_Assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teaching_Assistant` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `masters_from` varchar(50) NOT NULL,
  UNIQUE KEY `ta_fac_UK` (`faculty_id`),
  CONSTRAINT `TA_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teaching_Assistant`
--

LOCK TABLES `Teaching_Assistant` WRITE;
/*!40000 ALTER TABLE `Teaching_Assistant` DISABLE KEYS */;
INSERT INTO `Teaching_Assistant` VALUES (23,'Kuwait University'),(24,'Kuwait University'),(25,'Kuwait University'),(26,'Kuwait University'),(27,'Kuwait University'),(28,'Kuwait University'),(29,'Kuwait University'),(30,'University of Massachusetts'),(31,'Kuwait University'),(32,'Kuwait University'),(33,'Kuwait University'),(100,'NULL'),(101,'NULL'),(102,'NULL'),(103,'NULL'),(104,'NULL'),(105,'NULL'),(106,'NULL'),(107,'NULL'),(108,'NULL'),(144,'NULL'),(145,'Portland State University'),(146,'Kuwait University'),(147,'Kuwait University'),(148,'Kuwait University'),(149,'Kuwait University'),(150,'Kuwait University'),(151,'NULL'),(152,'NULL'),(153,'NULL'),(154,'NULL'),(155,'NULL'),(156,'NULL'),(157,'NULL'),(158,'Kuwait University');
/*!40000 ALTER TABLE `Teaching_Assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `passw` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `user_level` int NOT NULL DEFAULT '0',
  `discarded_rev_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email_UK` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add auth group',1,'add_authgroup'),(2,'Can change auth group',1,'change_authgroup'),(3,'Can delete auth group',1,'delete_authgroup'),(4,'Can view auth group',1,'view_authgroup'),(5,'Can add auth group permissions',2,'add_authgrouppermissions'),(6,'Can change auth group permissions',2,'change_authgrouppermissions'),(7,'Can delete auth group permissions',2,'delete_authgrouppermissions'),(8,'Can view auth group permissions',2,'view_authgrouppermissions'),(9,'Can add auth permission',3,'add_authpermission'),(10,'Can change auth permission',3,'change_authpermission'),(11,'Can delete auth permission',3,'delete_authpermission'),(12,'Can view auth permission',3,'view_authpermission'),(13,'Can add auth user',4,'add_authuser'),(14,'Can change auth user',4,'change_authuser'),(15,'Can delete auth user',4,'delete_authuser'),(16,'Can view auth user',4,'view_authuser'),(17,'Can add auth user groups',5,'add_authusergroups'),(18,'Can change auth user groups',5,'change_authusergroups'),(19,'Can delete auth user groups',5,'delete_authusergroups'),(20,'Can view auth user groups',5,'view_authusergroups'),(21,'Can add auth user user permissions',6,'add_authuseruserpermissions'),(22,'Can change auth user user permissions',6,'change_authuseruserpermissions'),(23,'Can delete auth user user permissions',6,'delete_authuseruserpermissions'),(24,'Can view auth user user permissions',6,'view_authuseruserpermissions'),(25,'Can add course',7,'add_course'),(26,'Can change course',7,'change_course'),(27,'Can delete course',7,'delete_course'),(28,'Can view course',7,'view_course'),(29,'Can add department',8,'add_department'),(30,'Can change department',8,'change_department'),(31,'Can delete department',8,'delete_department'),(32,'Can view department',8,'view_department'),(33,'Can add dept generalcomments',9,'add_deptgeneralcomments'),(34,'Can change dept generalcomments',9,'change_deptgeneralcomments'),(35,'Can delete dept generalcomments',9,'delete_deptgeneralcomments'),(36,'Can view dept generalcomments',9,'view_deptgeneralcomments'),(37,'Can add django admin log',10,'add_djangoadminlog'),(38,'Can change django admin log',10,'change_djangoadminlog'),(39,'Can delete django admin log',10,'delete_djangoadminlog'),(40,'Can view django admin log',10,'view_djangoadminlog'),(41,'Can add django content type',11,'add_djangocontenttype'),(42,'Can change django content type',11,'change_djangocontenttype'),(43,'Can delete django content type',11,'delete_djangocontenttype'),(44,'Can view django content type',11,'view_djangocontenttype'),(45,'Can add django migrations',12,'add_djangomigrations'),(46,'Can change django migrations',12,'change_djangomigrations'),(47,'Can delete django migrations',12,'delete_djangomigrations'),(48,'Can view django migrations',12,'view_djangomigrations'),(49,'Can add django session',13,'add_djangosession'),(50,'Can change django session',13,'change_djangosession'),(51,'Can delete django session',13,'delete_djangosession'),(52,'Can view django session',13,'view_djangosession'),(53,'Can add faculty',14,'add_faculty'),(54,'Can change faculty',14,'change_faculty'),(55,'Can delete faculty',14,'delete_faculty'),(56,'Can view faculty',14,'view_faculty'),(57,'Can add faculty course',15,'add_facultycourse'),(58,'Can change faculty course',15,'change_facultycourse'),(59,'Can delete faculty course',15,'delete_facultycourse'),(60,'Can view faculty course',15,'view_facultycourse'),(61,'Can add faculty miscellaneous',16,'add_facultymiscellaneous'),(62,'Can change faculty miscellaneous',16,'change_facultymiscellaneous'),(63,'Can delete faculty miscellaneous',16,'delete_facultymiscellaneous'),(64,'Can view faculty miscellaneous',16,'view_facultymiscellaneous'),(65,'Can add faculty personality',17,'add_facultypersonality'),(66,'Can change faculty personality',17,'change_facultypersonality'),(67,'Can delete faculty personality',17,'delete_facultypersonality'),(68,'Can view faculty personality',17,'view_facultypersonality'),(69,'Can add faculty workload',18,'add_facultyworkload'),(70,'Can change faculty workload',18,'change_facultyworkload'),(71,'Can delete faculty workload',18,'delete_facultyworkload'),(72,'Can view faculty workload',18,'view_facultyworkload'),(73,'Can add professor',19,'add_professor'),(74,'Can change professor',19,'change_professor'),(75,'Can delete professor',19,'delete_professor'),(76,'Can view professor',19,'view_professor'),(77,'Can add similar courses',20,'add_similarcourses'),(78,'Can change similar courses',20,'change_similarcourses'),(79,'Can delete similar courses',20,'delete_similarcourses'),(80,'Can view similar courses',20,'view_similarcourses'),(81,'Can add similar faculty',21,'add_similarfaculty'),(82,'Can change similar faculty',21,'change_similarfaculty'),(83,'Can delete similar faculty',21,'delete_similarfaculty'),(84,'Can view similar faculty',21,'view_similarfaculty'),(85,'Can add teaching assistant',22,'add_teachingassistant'),(86,'Can change teaching assistant',22,'change_teachingassistant'),(87,'Can delete teaching assistant',22,'delete_teachingassistant'),(88,'Can view teaching assistant',22,'view_teachingassistant'),(89,'Can add user course rev',23,'add_usercourserev'),(90,'Can change user course rev',23,'change_usercourserev'),(91,'Can delete user course rev',23,'delete_usercourserev'),(92,'Can view user course rev',23,'view_usercourserev'),(93,'Can add user dept',24,'add_userdept'),(94,'Can change user dept',24,'change_userdept'),(95,'Can delete user dept',24,'delete_userdept'),(96,'Can view user dept',24,'view_userdept'),(97,'Can add user faculty rev',25,'add_userfacultyrev'),(98,'Can change user faculty rev',25,'change_userfacultyrev'),(99,'Can delete user faculty rev',25,'delete_userfacultyrev'),(100,'Can view user faculty rev',25,'view_userfacultyrev'),(101,'Can add log entry',26,'add_logentry'),(102,'Can change log entry',26,'change_logentry'),(103,'Can delete log entry',26,'delete_logentry'),(104,'Can view log entry',26,'view_logentry'),(105,'Can add permission',27,'add_permission'),(106,'Can change permission',27,'change_permission'),(107,'Can delete permission',27,'delete_permission'),(108,'Can view permission',27,'view_permission'),(109,'Can add group',28,'add_group'),(110,'Can change group',28,'change_group'),(111,'Can delete group',28,'delete_group'),(112,'Can view group',28,'view_group'),(113,'Can add user',29,'add_user'),(114,'Can change user',29,'change_user'),(115,'Can delete user',29,'delete_user'),(116,'Can view user',29,'view_user'),(117,'Can add content type',30,'add_contenttype'),(118,'Can change content type',30,'change_contenttype'),(119,'Can delete content type',30,'delete_contenttype'),(120,'Can view content type',30,'view_contenttype'),(121,'Can add session',31,'add_session'),(122,'Can change session',31,'change_session'),(123,'Can delete session',31,'delete_session'),(124,'Can view session',31,'view_session'),(125,'Can add user queue',32,'add_userqueue'),(126,'Can change user queue',32,'change_userqueue'),(127,'Can delete user queue',32,'delete_userqueue'),(128,'Can view user queue',32,'view_userqueue');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_level` int NOT NULL DEFAULT '0',
  `discarded_rev_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$RYX2M3QRvoQM50MwUwZ5qC$quSW/Vx3JmzmypdKl2gJAKxH5xF7EKIvH4cr70lwZA0=','2022-03-29 08:11:11.870267',1,'ratezone22','','','ratezone22@gmail.com',1,1,'2022-03-23 17:01:34.453761',0,0),(2,'pbkdf2_sha256$320000$gdB3gUdHX1WVkNda3OPKBk$Ydy1AkpTzZ0eRs125CkcCc3iNsJNnkhLa+GN/o21Y1k=',NULL,1,'moe_scrum','Mohamad','Salman','moe@gmail.com',0,1,'2022-03-23 17:02:35.000000',0,0),(3,'pbkdf2_sha256$320000$8DToGIq4gwoHjb8y1vkpRD$AdiyrZvQY6Cxw+RvYm01R4YkLnTtZyC8SGYzrwSEA1M=',NULL,0,'dummy1','','','',0,1,'2022-03-26 13:54:12.764420',0,0),(4,'pbkdf2_sha256$320000$EIPL0lYPryxz4XDzYiKkBY$IzmZ8Pa2cSqZWnQhi3zlzFPi2q5/w+9vX01ijDjKK7M=',NULL,0,'dummy2','','','',0,1,'2022-03-26 13:54:26.674506',0,0),(5,'pbkdf2_sha256$320000$sQfZj83ixNEEDMf3vCp5eK$OAoYePnG/FnFlGMGKN36lBkrtmsy4lC1yxUH+ftV/vM=',NULL,0,'dummy3','','','',0,1,'2022-03-26 13:54:33.183527',0,0),(6,'pbkdf2_sha256$320000$GabItj3NhOQfJJMmf9weuS$5O2QCMaS61yyL2VkT3hHe7LklHd6B7O3ZqnftjjOGes=',NULL,0,'dummy4','','','',0,1,'2022-03-26 13:54:39.954960',0,0),(7,'pbkdf2_sha256$320000$hXWz6mWo2akOSa4xQ5Pc4m$spEZipplPJObAtGMXvLjS9A4dCxpB3uvRiKO0z2GMpw=',NULL,0,'dummy5','','','',0,1,'2022-03-26 13:55:13.791592',0,0),(8,'pbkdf2_sha256$320000$3bOjVaTsZlvR6YaT8zBoek$r5zH60ImNGaanoKel7CXjcXHgvNLHRuPhIftnTiKP6E=',NULL,0,'dummy6','','','',0,1,'2022-03-26 13:55:22.050955',0,0),(9,'pbkdf2_sha256$320000$JIZrAXAVgdm4vcK3sqQSgI$0ttDdU9p0OCyyKUW9CLx4OaxgwJr840tjEa8trCdVR0=',NULL,0,'dummy7','','','',0,1,'2022-03-28 22:16:17.822302',0,0),(10,'pbkdf2_sha256$320000$hXQDrHy4KWwxtdVnmAl9vA$mI5srC6pbX/9QEJyMDZrtSEdsbxImgxBEUWM06GegHE=',NULL,0,'dummy8','','','',0,1,'2022-03-28 22:16:29.121956',0,0),(11,'pbkdf2_sha256$320000$eyAnvy0j8wzNRFS9E0XtSM$ZszEdAFgiW2bgkOyn7Ld73wTTKhD13ZoVLl5sSDAMUY=',NULL,0,'dummy9','','','',0,1,'2022-03-28 22:16:39.822134',0,0),(12,'pbkdf2_sha256$320000$VcUYG6n4dinyK2hapDidMY$hUG3PPFQNdC1r3dFAKLFhUlmtDRkD+G839t/zjXNYoE=',NULL,0,'dummy10','','','',0,1,'2022-03-28 22:17:30.162139',0,0),(13,'pbkdf2_sha256$320000$4VPiPDyU6nqr02wzZPvrPi$AwfAN1R1jrgZfWFiq/P7fxGGsbD9hHY0RKBZPHDpXOU=',NULL,0,'dummy11','','','',0,1,'2022-03-28 22:17:39.594385',0,0),(14,'pbkdf2_sha256$320000$SFnCKnUXoJ500iJkNJFftD$3cLYc02tgoFW6FK7GhvVfpe6KjQBIJzpBdNbd9R52XU=',NULL,0,'dummy12','','','',0,1,'2022-03-28 22:18:12.529987',0,0),(15,'pbkdf2_sha256$320000$VzZNGeBhaa7u9Tk67ZsDp8$NRX+6j1WejlHVgoipmvo+JG6Q1p8vrvv3gQd4T7b478=',NULL,0,'dummy13','','','',0,1,'2022-03-28 22:19:04.565933',0,0),(16,'pbkdf2_sha256$320000$94n2mQbiGf6v8MGT894Jdh$vZuoW7MDPSV0DlgaNHJfzl4rO/3j721e1EAwi3LoicQ=',NULL,0,'dummy14','','','',0,1,'2022-03-28 22:19:23.161968',0,0),(17,'pbkdf2_sha256$320000$Cxp6v0KgxiFU4meVqwPb9k$YYRURs62C2Nn2ZdtCeLV9R39hf9mURSx/3Rsvn89abA=',NULL,0,'dummy15','','','',0,1,'2022-03-28 22:19:36.822497',0,0),(18,'pbkdf2_sha256$320000$O4yrbzPSMBYQcmJWviln7H$BG620G8BTS4th8AHTxTZkMTQxrS7Ax75ntQQ6bi/NNo=',NULL,0,'dummy16','','','',0,1,'2022-03-28 22:19:56.474083',0,0),(19,'pbkdf2_sha256$320000$nj0fsALHZrYNgCQN1eE3Lp$M4eVBYjy4NGNp9iNZIXW9l2syp8vV900zqovCFtUEdg=',NULL,0,'dummy17','','','',0,1,'2022-03-28 22:20:14.322090',0,0),(20,'pbkdf2_sha256$320000$wVIf4bKXr3xjjb2yhG7aYN$vGgdi8LOLvLXEltjUcFVkn5ZY17k1B7E6AVC5KYyXUo=',NULL,0,'dummy18','','','',0,1,'2022-03-28 22:20:23.362166',0,0),(21,'pbkdf2_sha256$320000$RHv3seeF4Wqvymd3uXi7NZ$krOnyK76cOrCYRqr/arGjE06QfRqdTn62pOFfTTXyI8=',NULL,0,'dummy19','','','',0,1,'2022-03-28 22:21:13.922382',0,0),(22,'pbkdf2_sha256$320000$g236fE5hGWuUnpc5wRBefO$pC0qLj11hf+iFeQGM8kuVlkLZD5osOQk6f6JtDg5Wh0=',NULL,0,'dummy20','','','',0,1,'2022-03-28 22:22:37.542061',0,0),(23,'pbkdf2_sha256$320000$ihz8nVQnkhsfsfmvHiGgVA$67IAtJDWqGvkfosfl0/rtr5TK4/toIGaiUxR/2sXspI=',NULL,0,'dummy21','','','',0,1,'2022-03-28 22:22:53.610311',0,0),(24,'pbkdf2_sha256$320000$5L48eKxPDeXZvz6BVVGvH6$r2guEFv5n3aZUmU2OsCzJGrV049t2/d5kemNlCGGZhY=',NULL,0,'dummy22','','','',0,1,'2022-03-28 22:23:12.362110',0,0),(25,'pbkdf2_sha256$320000$jaRGWEOro6cxy5bmwULAda$38nHBstHuVmvYYcTONDhjOQgf9kKgPITtDJt2utt70c=',NULL,0,'dummy23','','','',0,1,'2022-03-28 22:23:25.891986',0,0),(26,'pbkdf2_sha256$320000$zpXi6Ld1AHGiOoXcnMFY8Y$CMGc47K9cRmK7AeqCDOsHjqcBI8RfgaQTjazmvBi2g8=',NULL,0,'dummy24','','','',0,1,'2022-03-28 22:23:37.022373',0,0),(27,'pbkdf2_sha256$320000$qz7UtSVeklP4COwXdhESEe$sOWXTVxhQrhMjglHuvzE/IAZi7v3KyT5Vy74lACgx8g=',NULL,0,'dummy25','','','',0,1,'2022-03-28 22:23:55.061964',0,0),(28,'pbkdf2_sha256$320000$tn7B4YXSeHkjmGvZcYlMEu$dQ0takqetuoq7ey83TYjPjlCxOO7u2BmciFJNg9rGWk=','2022-03-29 19:22:45.155810',0,'omar23','omar','','omarzak2323@gmail.com',0,1,'2022-03-29 03:14:40.405237',0,0),(29,'pbkdf2_sha256$320000$llCF2kn8V7bH9LEhbkAXDu$d7CZXiSIlyrxNx7q4LKGzIR6l7XUUZggk/vMBojmBPo=',NULL,0,'technoking','techno','','techno@gmail.com',0,1,'2022-03-29 06:06:20.864874',0,0);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_generalComments`
--

DROP TABLE IF EXISTS `dept_generalComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_generalComments` (
  `dept_code` int NOT NULL,
  `general_comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`general_comment`),
  KEY `deptGeneralCom_deptcode_FK` (`dept_code`),
  CONSTRAINT `deptGeneralCom_deptcode_FK` FOREIGN KEY (`dept_code`) REFERENCES `Department` (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_generalComments`
--

LOCK TABLES `dept_generalComments` WRITE;
/*!40000 ALTER TABLE `dept_generalComments` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_generalComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-23 17:02:36.025030','2','moe_scrum',1,'[{\"added\": {}}]',29,1),(2,'2022-03-23 17:03:00.638076','2','moe_scrum',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',29,1),(3,'2022-03-26 13:54:13.001897','3','dummy1',1,'[{\"added\": {}}]',29,1),(4,'2022-03-26 13:54:26.904553','4','dummy2',1,'[{\"added\": {}}]',29,1),(5,'2022-03-26 13:54:33.419410','5','dummy3',1,'[{\"added\": {}}]',29,1),(6,'2022-03-26 13:54:40.188694','6','dummy4',1,'[{\"added\": {}}]',29,1),(7,'2022-03-26 13:55:14.023782','7','dummy5',1,'[{\"added\": {}}]',29,1),(8,'2022-03-26 13:55:22.282601','8','dummy6',1,'[{\"added\": {}}]',29,1),(9,'2022-03-26 16:07:02.111209','2','moe_scrum',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Superuser status\"]}}]',29,1),(10,'2022-03-28 22:16:18.054277','9','dummy7',1,'[{\"added\": {}}]',29,1),(11,'2022-03-28 22:16:29.362445','10','dummy8',1,'[{\"added\": {}}]',29,1),(12,'2022-03-28 22:16:40.052372','11','dummy9',1,'[{\"added\": {}}]',29,1),(13,'2022-03-28 22:17:30.391850','12','dummy10',1,'[{\"added\": {}}]',29,1),(14,'2022-03-28 22:17:39.825635','13','dummy11',1,'[{\"added\": {}}]',29,1),(15,'2022-03-28 22:18:12.759296','14','dummy12',1,'[{\"added\": {}}]',29,1),(16,'2022-03-28 22:19:04.795772','15','dummy13',1,'[{\"added\": {}}]',29,1),(17,'2022-03-28 22:19:23.401366','16','dummy14',1,'[{\"added\": {}}]',29,1),(18,'2022-03-28 22:19:37.051616','17','dummy15',1,'[{\"added\": {}}]',29,1),(19,'2022-03-28 22:19:56.713306','18','dummy16',1,'[{\"added\": {}}]',29,1),(20,'2022-03-28 22:20:14.553749','19','dummy17',1,'[{\"added\": {}}]',29,1),(21,'2022-03-28 22:20:23.591920','20','dummy18',1,'[{\"added\": {}}]',29,1),(22,'2022-03-28 22:21:14.152868','21','dummy19',1,'[{\"added\": {}}]',29,1),(23,'2022-03-28 22:22:37.773916','22','dummy20',1,'[{\"added\": {}}]',29,1),(24,'2022-03-28 22:22:53.842091','23','dummy21',1,'[{\"added\": {}}]',29,1),(25,'2022-03-28 22:23:12.592473','24','dummy22',1,'[{\"added\": {}}]',29,1),(26,'2022-03-28 22:23:26.132536','25','dummy23',1,'[{\"added\": {}}]',29,1),(27,'2022-03-28 22:23:37.264103','26','dummy24',1,'[{\"added\": {}}]',29,1),(28,'2022-03-28 22:23:55.301929','27','dummy25',1,'[{\"added\": {}}]',29,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (26,'admin','logentry'),(28,'auth','group'),(27,'auth','permission'),(29,'auth','user'),(30,'contenttypes','contenttype'),(1,'main','authgroup'),(2,'main','authgrouppermissions'),(3,'main','authpermission'),(4,'main','authuser'),(5,'main','authusergroups'),(6,'main','authuseruserpermissions'),(7,'main','course'),(8,'main','department'),(9,'main','deptgeneralcomments'),(10,'main','djangoadminlog'),(11,'main','djangocontenttype'),(12,'main','djangomigrations'),(13,'main','djangosession'),(14,'main','faculty'),(15,'main','facultycourse'),(16,'main','facultymiscellaneous'),(17,'main','facultypersonality'),(18,'main','facultyworkload'),(19,'main','professor'),(20,'main','similarcourses'),(21,'main','similarfaculty'),(22,'main','teachingassistant'),(23,'main','usercourserev'),(24,'main','userdept'),(25,'main','userfacultyrev'),(32,'main','userqueue'),(31,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-23 16:34:26.597437'),(2,'auth','0001_initial','2022-03-23 16:34:27.444514'),(3,'admin','0001_initial','2022-03-23 16:34:27.673187'),(4,'admin','0002_logentry_remove_auto_add','2022-03-23 16:34:27.687743'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-23 16:34:27.703770'),(6,'contenttypes','0002_remove_content_type_name','2022-03-23 16:34:27.833446'),(7,'auth','0002_alter_permission_name_max_length','2022-03-23 16:34:27.920871'),(8,'auth','0003_alter_user_email_max_length','2022-03-23 16:34:27.957868'),(9,'auth','0004_alter_user_username_opts','2022-03-23 16:34:27.970631'),(10,'auth','0005_alter_user_last_login_null','2022-03-23 16:34:28.050703'),(11,'auth','0006_require_contenttypes_0002','2022-03-23 16:34:28.056497'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-23 16:34:28.069484'),(13,'auth','0008_alter_user_username_max_length','2022-03-23 16:34:28.158680'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-23 16:34:28.252507'),(15,'auth','0010_alter_group_name_max_length','2022-03-23 16:34:28.283341'),(16,'auth','0011_update_proxy_permissions','2022-03-23 16:34:28.296302'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-23 16:34:28.406116'),(18,'main','0001_initial','2022-03-23 16:34:28.438276'),(19,'main','0002_auto_20220318_0716','2022-03-23 16:34:28.458714'),(20,'main','0003_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_course','2022-03-23 16:34:28.490130'),(21,'sessions','0001_initial','2022-03-23 16:34:28.555688'),(22,'main','0004_userqueue','2022-03-29 04:16:21.385482');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('93er9aj8vyx00q2rc110z1g02k9fr8v9','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1nX4Mh:BEkcqHzGbpAEsL5W6TpjcVXU_XwbtoxmkXeFyJMx1Cs','2022-04-06 17:01:43.642162'),('fjumtm4xpa8fnumiuiz94eyszpnb246g','.eJxVjEEOwiAQRe_C2hA6gAwu3XsGwjATqRqalHZlvLtt0oVu_3vvv1XK61LT2mVOI6uLAlSn35FyeUrbCT9yu0-6TG2ZR9K7og_a9W1ieV0P9--g5l63mmJA7zefAgJiHApb68iEM9iBHfkSSTJYIRO9WCrEGR04JGAyUNTnCwlTOF0:1nZHQT:N2JoAMHnalZTszIuU2TAOv6qKK_ADR7STAyvVE2lSRo','2022-04-12 19:22:45.165958'),('q3ecq42xjh2fpa1ofhdi9rrxezte9zs0','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1nY8vR:EKyOVTDblLtR-xheWVcH7A9BDyeseAV2kEjmWbZCiUA','2022-04-09 16:06:01.312425');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_course`
--

DROP TABLE IF EXISTS `faculty_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_course` (
  `faculty_id` int NOT NULL,
  `dept_code` int NOT NULL,
  UNIQUE KEY `faculty_id` (`faculty_id`,`dept_code`),
  KEY `facultyCourse_dCode_FK` (`dept_code`),
  CONSTRAINT `facultyCourse_dCode_FK` FOREIGN KEY (`dept_code`) REFERENCES `Department` (`dept_code`),
  CONSTRAINT `facultyCourse_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_course`
--

LOCK TABLES `faculty_course` WRITE;
/*!40000 ALTER TABLE `faculty_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_miscellaneous`
--

DROP TABLE IF EXISTS `faculty_miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_miscellaneous` (
  `faculty_id` int NOT NULL,
  `miscellaneous` varchar(50) NOT NULL,
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`miscellaneous`),
  KEY `facMiscellaneous_fid_FK` (`faculty_id`),
  KEY `facMiscellaneous_uid_FK` (`uid`),
  KEY `facMiscellaneous_rid_FK` (`rid`),
  CONSTRAINT `facMiscellaneous_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `facMiscellaneous_rid_FK` FOREIGN KEY (`rid`) REFERENCES `user_faculty_rev` (`review_id`),
  CONSTRAINT `facMiscellaneous_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_miscellaneous`
--

LOCK TABLES `faculty_miscellaneous` WRITE;
/*!40000 ALTER TABLE `faculty_miscellaneous` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_personality`
--

DROP TABLE IF EXISTS `faculty_personality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_personality` (
  `faculty_id` int NOT NULL,
  `personality` varchar(50) NOT NULL,
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`personality`),
  KEY `facPersonality_fid_FK` (`faculty_id`),
  KEY `facPersonality_uid_FK` (`uid`),
  KEY `facPersonality_rid_FK` (`rid`),
  CONSTRAINT `facPersonality_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `facPersonality_rid_FK` FOREIGN KEY (`rid`) REFERENCES `user_faculty_rev` (`review_id`),
  CONSTRAINT `facPersonality_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_personality`
--

LOCK TABLES `faculty_personality` WRITE;
/*!40000 ALTER TABLE `faculty_personality` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_personality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_workload`
--

DROP TABLE IF EXISTS `faculty_workload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_workload` (
  `faculty_id` int NOT NULL,
  `workload` varchar(50) NOT NULL,
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`workload`),
  KEY `facWorkload_fid_FK` (`faculty_id`),
  KEY `facWorkload_uid_FK` (`uid`),
  KEY `facWorkload_rid_FK` (`rid`),
  CONSTRAINT `facWorkload_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `facWorkload_rid_FK` FOREIGN KEY (`rid`) REFERENCES `user_faculty_rev` (`review_id`),
  CONSTRAINT `facWorkload_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_workload`
--

LOCK TABLES `faculty_workload` WRITE;
/*!40000 ALTER TABLE `faculty_workload` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_workload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `similar_courses`
--

DROP TABLE IF EXISTS `similar_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `similar_courses` (
  `course_code` int NOT NULL,
  `similar_course` int NOT NULL DEFAULT '0',
  UNIQUE KEY `course_code` (`course_code`,`similar_course`),
  CONSTRAINT `similarcourses_pid_FK` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `similar_courses`
--

LOCK TABLES `similar_courses` WRITE;
/*!40000 ALTER TABLE `similar_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `similar_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `similar_faculty`
--

DROP TABLE IF EXISTS `similar_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `similar_faculty` (
  `fid` int NOT NULL,
  `similar_faculty` int NOT NULL DEFAULT '0',
  UNIQUE KEY `fid` (`fid`,`similar_faculty`),
  CONSTRAINT `similarFaculty_fid_FK` FOREIGN KEY (`fid`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `similar_faculty`
--

LOCK TABLES `similar_faculty` WRITE;
/*!40000 ALTER TABLE `similar_faculty` DISABLE KEYS */;
INSERT INTO `similar_faculty` VALUES (1,8),(1,12),(1,13),(5,10),(5,11),(5,14),(5,19),(6,7),(6,10),(6,14),(6,15),(6,19),(6,22),(7,6),(7,10),(7,15),(7,22),(8,1),(8,12),(8,13),(8,18),(9,13),(10,5),(10,6),(10,7),(10,11),(10,14),(10,19),(10,22),(11,5),(11,10),(11,14),(11,22),(12,1),(12,8),(12,13),(12,18),(13,1),(13,8),(13,9),(13,12),(13,18),(14,5),(14,6),(14,10),(14,11),(14,19),(14,22),(15,6),(15,7),(15,17),(15,22),(17,15),(17,22),(18,8),(18,12),(18,13),(19,5),(19,6),(19,10),(19,14),(19,22),(22,6),(22,7),(22,10),(22,11),(22,14),(22,15),(22,17),(22,19);
/*!40000 ALTER TABLE `similar_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course_rev`
--

DROP TABLE IF EXISTS `user_course_rev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_course_rev` (
  `faculty_id` int NOT NULL,
  `review_id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `c_code` int DEFAULT NULL,
  `overall_rating` int NOT NULL DEFAULT '1',
  `upvotes` int NOT NULL DEFAULT '0',
  `downvotes` int NOT NULL DEFAULT '0',
  `report_count` int NOT NULL DEFAULT '0',
  `semester_period` varchar(50) DEFAULT ' ',
  `student_thoughts` varchar(500) DEFAULT NULL,
  `course_tag` varchar(50) NOT NULL DEFAULT '',
  `enjoyment_rating` int NOT NULL DEFAULT '1',
  `effort_required` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`review_id`),
  KEY `userCourse_fid_FK` (`faculty_id`),
  KEY `userCourse_uid_FK` (`uid`),
  KEY `userCourse_cid_FK` (`c_code`),
  CONSTRAINT `userCourse_cid_FK` FOREIGN KEY (`c_code`) REFERENCES `Course` (`course_code`),
  CONSTRAINT `userCourse_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `userCourse_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course_rev`
--

LOCK TABLES `user_course_rev` WRITE;
/*!40000 ALTER TABLE `user_course_rev` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_course_rev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dept`
--

DROP TABLE IF EXISTS `user_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dept` (
  `uid` int NOT NULL,
  `dept_code` int NOT NULL,
  UNIQUE KEY `uid` (`uid`,`dept_code`),
  KEY `userDept_deptCode_FK` (`dept_code`),
  CONSTRAINT `userDept_deptCode_FK` FOREIGN KEY (`dept_code`) REFERENCES `Department` (`dept_code`),
  CONSTRAINT `userDept_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dept`
--

LOCK TABLES `user_dept` WRITE;
/*!40000 ALTER TABLE `user_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_faculty_rev`
--

DROP TABLE IF EXISTS `user_faculty_rev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_faculty_rev` (
  `faculty_id` int NOT NULL,
  `review_id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `c_code` int DEFAULT NULL,
  `overall_rating` int NOT NULL DEFAULT '1',
  `difficulty_rating` int NOT NULL DEFAULT '1',
  `upvotes` int NOT NULL DEFAULT '0',
  `downvotes` int NOT NULL DEFAULT '0',
  `report_count` int NOT NULL DEFAULT '0',
  `semester_period` varchar(50) NOT NULL DEFAULT '',
  `student_thoughts` varchar(255) NOT NULL DEFAULT '',
  `teaching_quality` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`review_id`),
  KEY `userFaculty_fid_FK` (`faculty_id`),
  KEY `userFaculty_uid_FK` (`uid`),
  KEY `userFaculty_cid_FK` (`c_code`),
  CONSTRAINT `userFaculty_cid_FK` FOREIGN KEY (`c_code`) REFERENCES `Course` (`course_code`),
  CONSTRAINT `userFaculty_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `userFaculty_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_faculty_rev`
--

LOCK TABLES `user_faculty_rev` WRITE;
/*!40000 ALTER TABLE `user_faculty_rev` DISABLE KEYS */;
INSERT INTO `user_faculty_rev` VALUES (1,1,2,NULL,3,3,0,0,0,'','',2),(5,2,2,NULL,4,4,0,0,0,'','',5),(7,3,2,NULL,4,5,0,0,0,'','',3),(8,4,2,NULL,2,3,0,0,0,'','',2),(9,5,2,NULL,1,5,0,0,0,'','',1),(10,6,2,NULL,4,4,0,0,0,'','',4),(11,7,2,NULL,4,4,0,0,0,'','',4),(12,8,2,NULL,1,4,0,0,0,'','',1),(14,9,2,NULL,4,5,0,0,0,'','',4),(17,10,2,NULL,4,5,0,0,0,'','',4),(18,11,2,NULL,3,4,0,0,0,'','',1),(19,12,2,NULL,4,5,0,0,0,'','',4),(5,13,3,NULL,4,5,0,0,0,'','',5),(6,14,3,NULL,3,3,0,0,0,'','',4),(7,15,3,NULL,5,5,0,0,0,'','',5),(8,16,3,NULL,2,1,0,0,0,'','',2),(9,17,3,NULL,1,5,0,0,0,'','',1),(10,18,3,NULL,4,5,0,0,0,'','',4),(11,19,3,NULL,3,5,0,0,0,'','',5),(12,20,3,NULL,3,1,0,0,0,'','',2),(13,21,3,NULL,2,5,0,0,0,'','',1),(15,22,3,NULL,5,3,0,0,0,'','',5),(17,23,3,NULL,5,2,0,0,0,'','',5),(18,24,3,NULL,1,5,0,0,0,'','',1),(19,25,3,NULL,4,4,0,0,0,'','',4),(22,26,3,NULL,5,4,0,0,0,'','',5),(6,27,4,NULL,4,3,0,0,0,'','',4),(7,28,4,NULL,5,1,0,0,0,'','',5),(8,29,4,NULL,3,4,0,0,0,'','',1),(9,30,4,NULL,1,5,0,0,0,'','',1),(10,31,4,NULL,3,4,0,0,0,'','',4),(11,32,4,NULL,5,3,0,0,0,'','',5),(12,33,4,NULL,4,2,0,0,0,'','',2),(13,34,4,NULL,1,3,0,0,0,'','',1),(14,35,4,NULL,5,4,0,0,0,'','',5),(15,36,4,NULL,5,1,0,0,0,'','',5),(17,37,4,NULL,5,1,0,0,0,'','',5),(18,38,4,NULL,1,3,0,0,0,'','',1),(19,39,4,NULL,5,3,0,0,0,'','',5),(5,40,5,NULL,4,4,0,0,0,'','',5),(6,41,5,NULL,1,5,0,0,0,'','',1),(7,42,5,NULL,3,3,0,0,0,'','',4),(8,43,5,NULL,3,4,0,0,0,'','',2),(9,44,5,NULL,5,1,0,0,0,'','',5),(10,45,5,NULL,4,3,0,0,0,'','',4),(13,46,5,NULL,2,3,0,0,0,'','',1),(14,47,5,NULL,4,4,0,0,0,'','',5),(15,48,5,NULL,5,3,0,0,0,'','',5),(17,49,5,NULL,5,3,0,0,0,'','',5),(19,50,5,NULL,2,5,0,0,0,'','',3),(22,51,5,NULL,4,3,0,0,0,'','',4),(5,52,6,NULL,4,4,0,0,0,'','',4),(6,53,6,NULL,4,2,0,0,0,'','',4),(7,54,6,NULL,5,2,0,0,0,'','',4),(8,55,6,NULL,1,2,0,0,0,'','',1),(9,56,6,NULL,1,5,0,0,0,'','',1),(10,57,6,NULL,4,5,0,0,0,'','',4),(11,58,6,NULL,4,4,0,0,0,'','',4),(12,59,6,NULL,2,4,0,0,0,'','',2),(13,60,6,NULL,2,4,0,0,0,'','',2),(14,61,6,NULL,4,4,0,0,0,'','',4),(15,62,6,NULL,5,1,0,0,0,'','',5),(17,63,6,NULL,5,2,0,0,0,'','',5),(18,64,6,NULL,1,3,0,0,0,'','',1),(19,65,6,NULL,3,4,0,0,0,'','',3),(22,66,6,NULL,4,3,0,0,0,'','',4),(1,67,7,NULL,1,3,0,0,0,'','',1),(5,68,7,NULL,5,5,0,0,0,'','',4),(6,69,7,NULL,4,2,0,0,0,'','',4),(7,70,7,NULL,3,3,0,0,0,'','',3),(8,71,7,NULL,2,3,0,0,0,'','',1),(9,72,7,NULL,1,4,0,0,0,'','',1),(10,73,7,NULL,3,5,0,0,0,'','',5),(11,74,7,NULL,4,3,0,0,0,'','',5),(12,75,7,NULL,2,4,0,0,0,'','',1),(13,76,7,NULL,2,3,0,0,0,'','',1),(14,77,7,NULL,3,4,0,0,0,'','',3),(15,78,7,NULL,4,3,0,0,0,'','',2),(17,79,7,NULL,5,3,0,0,0,'','',4),(18,80,7,NULL,1,3,0,0,0,'','',1),(19,81,7,NULL,4,4,0,0,0,'','',4),(22,82,7,NULL,4,3,0,0,0,'','',4),(5,83,8,NULL,5,4,0,0,0,'','',5),(6,84,8,NULL,4,2,0,0,0,'','',4),(7,85,8,NULL,5,2,0,0,0,'','',5),(9,86,8,NULL,1,5,0,0,0,'','',1),(11,87,8,NULL,5,4,0,0,0,'','',5),(12,88,8,NULL,2,2,0,0,0,'','',2),(13,89,8,NULL,3,3,0,0,0,'','',2),(14,90,8,NULL,4,3,0,0,0,'','',5),(15,91,8,NULL,4,2,0,0,0,'','',5),(17,92,8,NULL,5,1,0,0,0,'','',5),(18,93,8,NULL,1,2,0,0,0,'','',1),(19,94,8,NULL,5,5,0,0,0,'','',5),(22,95,8,NULL,5,2,0,0,0,'','',5),(1,96,9,NULL,2,3,0,0,0,'','',1),(5,97,9,NULL,4,5,0,0,0,'','',5),(6,98,9,NULL,3,3,0,0,0,'','',4),(7,99,9,NULL,3,3,0,0,0,'','',3),(8,100,9,NULL,2,2,0,0,0,'','',1),(9,101,9,NULL,1,5,0,0,0,'','',1),(10,102,9,NULL,4,4,0,0,0,'','',4),(11,103,9,NULL,5,4,0,0,0,'','',5),(12,104,9,NULL,2,3,0,0,0,'','',1),(13,105,9,NULL,4,3,0,0,0,'','',3),(14,106,9,NULL,3,4,0,0,0,'','',3),(15,107,9,NULL,4,2,0,0,0,'','',3),(17,108,9,NULL,5,2,0,0,0,'','',5),(18,109,9,NULL,1,3,0,0,0,'','',1),(19,110,9,NULL,4,4,0,0,0,'','',4),(22,111,9,NULL,4,4,0,0,0,'','',4),(1,112,10,NULL,5,3,0,0,0,'','',5),(5,113,10,NULL,5,4,0,0,0,'','',5),(6,114,10,NULL,5,3,0,0,0,'','',4),(8,115,10,NULL,4,3,0,0,0,'','',4),(9,116,10,NULL,4,4,0,0,0,'','',3),(10,117,10,NULL,1,4,0,0,0,'','',2),(11,118,10,NULL,5,3,0,0,0,'','',5),(13,119,10,NULL,3,4,0,0,0,'','',2),(19,120,10,NULL,5,3,0,0,0,'','',5),(22,121,10,NULL,3,3,0,0,0,'','',3),(1,122,11,NULL,1,3,0,0,0,'','',1),(5,123,11,NULL,5,5,0,0,0,'','',5),(6,124,11,NULL,4,3,0,0,0,'','',4),(7,125,11,NULL,3,4,0,0,0,'','',3),(8,126,11,NULL,2,3,0,0,0,'','',1),(9,127,11,NULL,3,5,0,0,0,'','',3),(10,128,11,NULL,4,5,0,0,0,'','',4),(11,129,11,NULL,5,5,0,0,0,'','',5),(12,130,11,NULL,1,4,0,0,0,'','',1),(13,131,11,NULL,5,4,0,0,0,'','',4),(14,132,11,NULL,3,5,0,0,0,'','',4),(15,133,11,NULL,4,3,0,0,0,'','',3),(17,134,11,NULL,5,3,0,0,0,'','',5),(18,135,11,NULL,1,3,0,0,0,'','',1),(19,136,11,NULL,5,4,0,0,0,'','',4),(22,137,11,NULL,5,4,0,0,0,'','',3),(1,138,12,NULL,3,2,0,0,0,'','',3),(5,139,12,NULL,4,5,0,0,0,'','',4),(6,140,12,NULL,3,3,0,0,0,'','',3),(7,141,12,NULL,3,2,0,0,0,'','',2),(9,142,12,NULL,1,5,0,0,0,'','',1),(10,143,12,NULL,4,2,0,0,0,'','',3),(13,144,12,NULL,3,1,0,0,0,'','',3),(14,145,12,NULL,5,4,0,0,0,'','',5),(19,146,12,NULL,1,4,0,0,0,'','',1),(1,147,13,NULL,5,1,0,0,0,'','',5),(5,148,13,NULL,5,2,0,0,0,'','',4),(6,149,13,NULL,4,3,0,0,0,'','',4),(9,150,13,NULL,1,4,0,0,0,'','',2),(10,151,13,NULL,5,1,0,0,0,'','',5),(13,152,13,NULL,3,3,0,0,0,'','',2),(19,153,13,NULL,1,2,0,0,0,'','',1),(22,154,13,NULL,4,2,0,0,0,'','',4),(1,155,14,NULL,2,3,0,0,0,'','',1),(5,156,14,NULL,5,4,0,0,0,'','',5),(6,157,14,NULL,3,2,0,0,0,'','',3),(7,158,14,NULL,4,3,0,0,0,'','',3),(8,159,14,NULL,2,2,0,0,0,'','',1),(9,160,14,NULL,4,5,0,0,0,'','',4),(10,161,14,NULL,4,5,0,0,0,'','',4),(11,162,14,NULL,5,2,0,0,0,'','',5),(12,163,14,NULL,2,3,0,0,0,'','',1),(13,164,14,NULL,4,3,0,0,0,'','',3),(14,165,14,NULL,3,4,0,0,0,'','',3),(15,166,14,NULL,4,3,0,0,0,'','',3),(17,167,14,NULL,5,2,0,0,0,'','',5),(18,168,14,NULL,1,3,0,0,0,'','',1),(19,169,14,NULL,5,4,0,0,0,'','',5),(22,170,14,NULL,4,4,0,0,0,'','',5),(1,171,15,NULL,1,2,0,0,0,'','',1),(5,172,15,NULL,3,5,0,0,0,'','',5),(6,173,15,NULL,4,4,0,0,0,'','',3),(7,174,15,NULL,4,3,0,0,0,'','',4),(8,175,15,NULL,2,2,0,0,0,'','',2),(9,176,15,NULL,4,5,0,0,0,'','',3),(10,177,15,NULL,3,3,0,0,0,'','',4),(11,178,15,NULL,5,3,0,0,0,'','',5),(12,179,15,NULL,3,4,0,0,0,'','',3),(13,180,15,NULL,5,4,0,0,0,'','',5),(14,181,15,NULL,4,5,0,0,0,'','',4),(15,182,15,NULL,4,4,0,0,0,'','',4),(17,183,15,NULL,5,3,0,0,0,'','',5),(18,184,15,NULL,3,3,0,0,0,'','',1),(19,185,15,NULL,5,4,0,0,0,'','',5),(22,186,15,NULL,4,4,0,0,0,'','',4),(1,187,16,NULL,1,3,0,0,0,'','',1),(5,188,16,NULL,4,4,0,0,0,'','',4),(6,189,16,NULL,4,3,0,0,0,'','',4),(7,190,16,NULL,3,3,0,0,0,'','',3),(8,191,16,NULL,2,2,0,0,0,'','',2),(9,192,16,NULL,2,2,0,0,0,'','',3),(10,193,16,NULL,3,5,0,0,0,'','',3),(11,194,16,NULL,5,4,0,0,0,'','',5),(12,195,16,NULL,2,3,0,0,0,'','',2),(13,196,16,NULL,3,3,0,0,0,'','',4),(14,197,16,NULL,3,3,0,0,0,'','',3),(15,198,16,NULL,4,4,0,0,0,'','',4),(17,199,16,NULL,4,3,0,0,0,'','',4),(18,200,16,NULL,1,4,0,0,0,'','',2),(19,201,16,NULL,5,3,0,0,0,'','',5),(22,202,16,NULL,4,3,0,0,0,'','',4),(5,203,17,NULL,3,5,0,0,0,'','',3),(6,204,17,NULL,5,4,0,0,0,'','',5),(7,205,17,NULL,5,3,0,0,0,'','',5),(8,206,17,NULL,2,5,0,0,0,'','',2),(9,207,17,NULL,2,5,0,0,0,'','',3),(13,208,17,NULL,3,3,0,0,0,'','',1),(14,209,17,NULL,5,4,0,0,0,'','',5),(15,210,17,NULL,5,4,0,0,0,'','',5),(17,211,17,NULL,5,4,0,0,0,'','',5),(1,212,18,NULL,3,4,0,0,0,'','',3),(5,213,18,NULL,4,5,0,0,0,'','',5),(6,214,18,NULL,4,3,0,0,0,'','',4),(7,215,18,NULL,3,2,0,0,0,'','',2),(9,216,18,NULL,2,3,0,0,0,'','',2),(10,217,18,NULL,5,4,0,0,0,'','',5),(13,218,18,NULL,3,4,0,0,0,'','',2),(14,219,18,NULL,5,4,0,0,0,'','',5),(15,220,18,NULL,4,1,0,0,0,'','',3),(19,221,18,NULL,4,5,0,0,0,'','',4),(22,222,18,NULL,3,4,0,0,0,'','',3),(1,223,19,NULL,4,2,0,0,0,'','',3),(5,224,19,NULL,5,2,0,0,0,'','',5),(9,225,19,NULL,2,5,0,0,0,'','',2),(10,226,19,NULL,3,4,0,0,0,'','',3),(13,227,19,NULL,1,3,0,0,0,'','',1),(14,228,19,NULL,5,2,0,0,0,'','',5),(19,229,19,NULL,4,3,0,0,0,'','',4),(22,230,19,NULL,4,2,0,0,0,'','',5),(6,231,20,NULL,5,4,0,0,0,'','',5),(18,232,20,NULL,4,4,0,0,0,'','',4),(5,233,21,NULL,3,4,0,0,0,'','',5),(6,234,21,NULL,3,4,0,0,0,'','',3),(15,235,21,NULL,4,5,0,0,0,'','',5),(5,236,22,NULL,5,5,0,0,0,'','',5),(8,237,22,NULL,1,1,0,0,0,'','',1),(10,238,22,NULL,4,3,0,0,0,'','',3),(14,239,22,NULL,1,2,0,0,0,'','',5),(5,240,23,NULL,5,3,0,0,0,'','',5),(6,241,23,NULL,4,4,0,0,0,'','',4),(8,242,23,NULL,4,4,0,0,0,'','',4),(10,243,23,NULL,4,4,0,0,0,'','',4),(15,244,23,NULL,4,4,0,0,0,'','',4),(1,245,24,NULL,5,3,0,0,0,'','',5),(5,246,24,NULL,4,4,0,0,0,'','',3),(13,247,24,NULL,2,5,0,0,0,'','',2),(15,248,24,NULL,5,2,0,0,0,'','',4),(19,249,24,NULL,4,5,0,0,0,'','',3),(5,250,25,NULL,5,5,0,0,0,'','',5),(8,251,25,NULL,1,1,0,0,0,'','',1),(5,252,26,NULL,3,4,0,0,0,'','',4),(13,253,26,NULL,1,5,0,0,0,'','',1),(14,254,26,NULL,3,3,0,0,0,'','',3),(15,255,26,NULL,5,3,0,0,0,'','',5),(1,256,27,NULL,2,2,0,0,0,'','',1),(5,257,27,NULL,5,4,0,0,0,'','',4),(6,258,27,NULL,3,3,0,0,0,'','',3),(7,259,27,NULL,4,3,0,0,0,'','',4),(8,260,27,NULL,3,2,0,0,0,'','',2),(9,261,27,NULL,3,4,0,0,0,'','',3),(10,262,27,NULL,4,4,0,0,0,'','',5),(11,263,27,NULL,4,4,0,0,0,'','',5),(12,264,27,NULL,2,4,0,0,0,'','',2),(13,265,27,NULL,3,3,0,0,0,'','',4),(14,266,27,NULL,3,5,0,0,0,'','',4),(15,267,27,NULL,4,3,0,0,0,'','',4),(17,268,27,NULL,5,3,0,0,0,'','',5),(18,269,27,NULL,1,4,0,0,0,'','',1),(19,270,27,NULL,5,4,0,0,0,'','',4),(22,271,27,NULL,4,4,0,0,0,'','',4);
/*!40000 ALTER TABLE `user_faculty_rev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_queue`
--

DROP TABLE IF EXISTS `user_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_queue` (
  `uid` int NOT NULL,
  `fid` int NOT NULL,
  UNIQUE KEY `uid` (`uid`,`fid`),
  KEY `useq_fid_FK` (`fid`),
  CONSTRAINT `useq_fid_FK` FOREIGN KEY (`fid`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `userq_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_queue`
--

LOCK TABLES `user_queue` WRITE;
/*!40000 ALTER TABLE `user_queue` DISABLE KEYS */;
INSERT INTO `user_queue` VALUES (1,13),(28,14),(28,17),(28,19);
/*!40000 ALTER TABLE `user_queue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 21:10:08
