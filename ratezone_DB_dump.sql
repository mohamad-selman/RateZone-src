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
INSERT INTO `Department` VALUES (200,'Law',NULL,NULL),(310,'Arabic Language And Literature',NULL,NULL),(320,'English Language And Literature',NULL,NULL),(330,'History',NULL,NULL),(360,'Philosophy',NULL,NULL),(380,'Mass Communication',NULL,NULL),(390,'French Language & Culture',NULL,NULL),(410,'Mathematics',NULL,NULL),(418,'Computer Science',NULL,NULL),(420,'Chemistry',NULL,NULL),(430,'Physics',NULL,NULL),(460,'Earth and Environmental Sciences',NULL,NULL),(464,'Marine Science',NULL,NULL),(480,'Statistics and Operations Research',NULL,NULL),(490,'Biological Sciences',NULL,NULL),(600,'Preliminary Engineering Studie',NULL,NULL),(610,'Electrical Engineering',NULL,NULL),(612,'Computer Engineering',NULL,NULL),(620,'Civil Engineering',NULL,NULL),(630,'Mechanical Engineering',NULL,NULL),(640,'Chemical Engineering',NULL,NULL),(650,'Petroleum Engineering',NULL,NULL),(660,'Industrial Engineering',NULL,NULL),(810,'Educational Planning & Administration',NULL,NULL),(820,'Educational Foundations',NULL,NULL),(830,'Educational Psychology',NULL,NULL),(840,'Curriculum and Instruction',NULL,NULL),(1011,'Management and Marketing',NULL,NULL),(1012,'Finance & Financial Institutions',NULL,NULL),(1013,'Information Systems and Operations Management',NULL,NULL),(1020,'Accounting',NULL,NULL),(1030,'Economics',NULL,NULL),(1060,'Public Adminstration',NULL,NULL),(1340,'Geography',NULL,NULL),(1350,'Psychology',NULL,NULL),(1360,'Political Sciences',NULL,NULL),(1370,'Sociology',NULL,NULL),(1380,'Information Studies',NULL,NULL),(1610,'Architecture',NULL,NULL),(1620,'Visual Communication and Interiors',NULL,NULL),(1810,'Communication Disorders',NULL,NULL),(1820,'Food Science and Nutrition',NULL,NULL),(1830,'Information Science',NULL,NULL),(1850,'Environmental Technology',NULL,NULL),(9988,'Language Center',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Faculty`
--

LOCK TABLES `Faculty` WRITE;
/*!40000 ALTER TABLE `Faculty` DISABLE KEYS */;
INSERT INTO `Faculty` VALUES (1,418,'Adel','Aljomah',2.714285714,2.357142857,2.642857142),(2,418,'Ayman','Alawadhi',NULL,NULL,NULL),(3,418,'Bader','Albader',NULL,NULL,NULL),(4,418,'Bader','Albdaiwi',NULL,NULL,NULL),(5,418,'Fawaz','Alazemi',4.291666666,4.541666666,4.208333333),(6,418,'Hamdi','Yahyaoui',3.7,3.7,3.15),(7,418,'Hamid','Alhamadi',3.875,3.625,2.9375),(8,418,'Hazem','Raafat',2.235294117,1.764705882,2.588235294),(9,418,'Hosam','AboElfotoh',2.105263157,2.157894736,4.315789473),(10,418,'Husain','Ibraheem',3.684210526,3.894736842,3.894736842),(11,418,'Hussain','Almohri',4.538461538,4.846153846,3.692307692),(12,418,'Khalil','Abdullah',2.166666666,1.666666666,3.166666666),(13,418,'Maha','Alabduljaleel',2.75,2.25,3.45),(14,418,'Mansour','Abdulaziz',3.722222222,4.166666666,3.833333333),(15,418,'Mohammad','Almutawa',4.388888888,4.111111111,2.833333333),(16,418,'Mohammad','Rashed Almulla',NULL,NULL,NULL),(17,418,'Mohammad','Smaoui',4.857142857,4.785714285,2.642857142),(18,418,'Mohammed','Ali Almulla',1.538461538,1.307692307,3.384615384),(19,418,'Naser','AlDuaij',3.947368421,3.842105263,3.947368421),(20,418,'Salman','Aladwani',NULL,NULL,NULL),(21,418,'Saud','Aldarmi',NULL,NULL,NULL),(22,418,'Zaid','Hussain',4.066666666,4.066666666,3.266666666),(23,418,'Ali','Alshammeri',NULL,NULL,NULL),(24,418,'Amani','Alshaher',NULL,NULL,NULL),(25,418,'Amro','Khattab',NULL,NULL,NULL),(26,418,'Asmaa','Alotaibi',NULL,NULL,NULL),(27,418,'Fatma','Albdaiwi',NULL,NULL,NULL),(28,418,'Galal','Elhusseini',NULL,NULL,NULL),(29,418,'Lulwa','Alshebeeb',NULL,NULL,NULL),(30,418,'Mahammad','Suoud',NULL,NULL,NULL),(31,418,'Nourah','Alateeqi',NULL,NULL,NULL),(32,418,'Rena','Alzaid',NULL,NULL,NULL),(33,418,'Sulaiman','Alkhazi',NULL,NULL,NULL),(34,612,'Abbas','Fairouz',NULL,NULL,NULL),(35,612,'Abdulaziz','Boujarwah',NULL,NULL,NULL),(36,612,'Abdullah','Almutawa',NULL,NULL,NULL),(37,612,'Abdullah','Alshaibani',NULL,NULL,NULL),(38,612,'Ameer','Mohammed',NULL,NULL,NULL),(39,612,'Ammar','Alhusaini',NULL,NULL,NULL),(40,612,'Anastasios','Dimitriou',NULL,NULL,NULL),(41,612,'Anwar','Alyatama',NULL,NULL,NULL),(42,612,'Asaad','Alrashed',NULL,NULL,NULL),(43,612,'Asmaa','Alsumait',NULL,NULL,NULL),(44,612,'Ayed','Salman',NULL,NULL,NULL),(45,612,'Buthainah','Alkazemi',NULL,NULL,NULL),(46,612,'Ebrahim','Alrashed',NULL,NULL,NULL),(47,612,'Eman','Alotaibi',NULL,NULL,NULL),(48,612,'Faridah','Ali',NULL,NULL,NULL),(49,612,'Fatma','Alali',NULL,NULL,NULL),(50,612,'Fawaz','Alanzi',NULL,NULL,NULL),(51,612,'Hamed','Alazmi',NULL,NULL,NULL),(52,612,'Imtiaz','Ahmed',NULL,NULL,NULL),(53,612,'Jassim','Aljuraidan',NULL,NULL,NULL),(54,612,'Khaled','Alsaqabi',NULL,NULL,NULL),(55,612,'Khaled','Alzamel',NULL,NULL,NULL),(56,612,'Khaled','Hadi',NULL,NULL,NULL),(57,612,'Lulwa','Alhubail',NULL,NULL,NULL),(58,612,'Maha','Faisal',NULL,NULL,NULL),(59,612,'Mahmoud','Bennaser',NULL,NULL,NULL),(60,612,'Mansour','Jaragh',NULL,NULL,NULL),(61,612,'Maytham','Safar',NULL,NULL,NULL),(62,612,'Mehmet','Karaata',NULL,NULL,NULL),(63,612,'Mohammad','Alfailakawi',NULL,NULL,NULL),(64,612,'Mohammad','Alkandari',NULL,NULL,NULL),(65,612,'Mohammad','Allaho',NULL,NULL,NULL),(66,612,'Mohammad','Alshayeji',NULL,NULL,NULL),(67,612,'Mohammad','Awad',NULL,NULL,NULL),(68,612,'Mohammad','Jeragh',NULL,NULL,NULL),(69,612,'Munirah','Almatouq',NULL,NULL,NULL),(70,612,'Reem','Albaghli',NULL,NULL,NULL),(71,612,'Sabah','Alfedaghi',NULL,NULL,NULL),(72,612,'Saeed','Abed',NULL,NULL,NULL),(73,612,'Sami','Habib',NULL,NULL,NULL),(74,612,'Shouq','Alsubaihi',NULL,NULL,NULL),(75,612,'Sobeeh','Almukhaizim',NULL,NULL,NULL),(76,612,'Sultan','Alharbi',NULL,NULL,NULL),(77,1830,'Abdullah','Almutairi',NULL,NULL,NULL),(78,1830,'Aseel','Almonaies',NULL,NULL,NULL),(79,1830,'Bader','Ali',NULL,NULL,NULL),(80,1830,'Bader','Alkhazi',NULL,NULL,NULL),(81,1830,'Dari','Alhuwail',NULL,NULL,NULL),(82,1830,'Eiman','Alshammari',NULL,NULL,NULL),(83,1830,'Fatemah','Husain',NULL,NULL,NULL),(84,1830,'Fatima','Boujarwah',NULL,NULL,NULL),(85,1830,'Hanady','Abdulsalam',NULL,NULL,NULL),(86,1830,'Helal','Alhammadi',NULL,NULL,NULL),(87,1830,'Kalim','Qureshi',NULL,NULL,NULL),(88,1830,'Kassem','Saleh',NULL,NULL,NULL),(89,1830,'Loulwah','Alsumait',NULL,NULL,NULL),(90,1830,'Naelah','Aldabbous',NULL,NULL,NULL),(91,1830,'Omar','Alibrahim',NULL,NULL,NULL),(92,1830,'Paul','Manuel',NULL,NULL,NULL),(93,1830,'Ranya','Alawadhi',NULL,NULL,NULL),(94,1830,'Safaa','Zaman',NULL,NULL,NULL),(95,1830,'Sana','Buhamra',NULL,NULL,NULL),(96,1830,'Shaikha','Alduaij',NULL,NULL,NULL),(97,1830,'Zahraa','Marafie',NULL,NULL,NULL),(98,1830,'Zainab','Aljazzaf',NULL,NULL,NULL),(99,1830,'Zainab','Almeraj',NULL,NULL,NULL),(100,1830,'Aisha','Al-Houti',NULL,NULL,NULL),(101,1830,'Altaf','Al-Farhan',NULL,NULL,NULL),(102,1830,'Aseel','Al-Qemlas',NULL,NULL,NULL),(103,1830,'Eman','Al-Roumi',NULL,NULL,NULL),(104,1830,'Fatma','Al-Rashed',NULL,NULL,NULL),(105,1830,'Heba','Al-Turki',NULL,NULL,NULL),(106,1830,'Latifa','Salem',NULL,NULL,NULL),(107,1830,'Maryam','Alotaibi',NULL,NULL,NULL),(108,1830,'Sabah','Al-Madani',NULL,NULL,NULL),(109,410,'Hani','Farran',NULL,NULL,NULL),(110,410,'Ismail','Taqi',NULL,NULL,NULL),(111,410,'Marian','Deaconescu',NULL,NULL,NULL),(112,410,'Michael','Johnson',NULL,NULL,NULL),(113,410,'Nejib','Smaoui',NULL,NULL,NULL),(114,410,'Salem','Al-Yaqoub',NULL,NULL,NULL),(115,410,'Abdullah','Alazemi',NULL,NULL,NULL),(116,410,'Ahmad','Karaballi',NULL,NULL,NULL),(117,410,'Albert','Borbely',NULL,NULL,NULL),(118,410,'Ali ','Kanso',NULL,NULL,NULL),(119,410,'Anton','Betten',NULL,NULL,NULL),(120,410,'Aurelian','Bejancu',NULL,NULL,NULL),(121,410,'Bader ','Al-Shammary',NULL,NULL,NULL),(122,410,'Boudjemaa','Anchouche',NULL,NULL,NULL),(123,410,'Boumediene','Chentouf',NULL,NULL,NULL),(124,410,'Fares','Alazemi',NULL,NULL,NULL),(125,410,'Fathi','Saidi',NULL,NULL,NULL),(126,410,'Fuat','Gurcan',NULL,NULL,NULL),(127,410,'Khaled','Qazaqzeh',NULL,NULL,NULL),(128,410,'Khalifa','Es-Sebaiy',NULL,NULL,NULL),(129,410,'Latif','Hanna',NULL,NULL,NULL),(130,410,'Mamad','Ghebleh',NULL,NULL,NULL),(131,410,'Milica','Anđelić',NULL,NULL,NULL),(132,410,'Zafer','Mahmud',NULL,NULL,NULL),(133,410,'Abdulaziz','Alsenafi',NULL,NULL,NULL),(134,410,'Abdullah','Alshammari',NULL,NULL,NULL),(135,410,'Abdelhameed','Abdo',NULL,NULL,NULL),(136,410,'Ahood','Al-Jasser',NULL,NULL,NULL),(137,410,'Ameena','Alzaidan',NULL,NULL,NULL),(138,410,'Hamid','Said',NULL,NULL,NULL),(139,410,'Hessah','Al-Motairi',NULL,NULL,NULL),(140,410,'Kyriakos','Papadopoulos',NULL,NULL,NULL),(141,410,'Maryam','Alkandari',NULL,NULL,NULL),(142,410,'Mishari','Al-Foraih',NULL,NULL,NULL),(143,410,'Saleh','Baqer',NULL,NULL,NULL),(144,410,'Abdulrahman','Mubarak',NULL,NULL,NULL),(145,410,'Adnan','Al-Sayed',NULL,NULL,NULL),(146,410,'Alaa','Alqaderi',NULL,NULL,NULL),(147,410,'Amal','Alrashdan',NULL,NULL,NULL),(148,410,'Ayman','EzzElarab',NULL,NULL,NULL),(149,410,'Baba','Amoro',NULL,NULL,NULL),(150,410,'Hameed','Al-Fahad',NULL,NULL,NULL),(151,410,'Maale','Al-Motairi',NULL,NULL,NULL),(152,410,'Mayada','Yousif',NULL,NULL,NULL),(153,410,'Muna','Aljazzaf',NULL,NULL,NULL),(154,410,'Rayouf','Alsahli',NULL,NULL,NULL),(155,410,'Samer','Al-Sahhar',NULL,NULL,NULL),(156,410,'Shorouq','Al-Ghunaim',NULL,NULL,NULL),(157,410,'Wafa','Abdulrahman',NULL,NULL,NULL),(158,410,'Yousef','Alenazi',NULL,NULL,NULL),(159,640,'Abdulwahab','AlMusallam',NULL,NULL,NULL),(160,640,'Taher','AlSahhaf',NULL,NULL,NULL),(161,640,'Amir','AlHaddad',NULL,NULL,NULL),(162,640,'Hisham','Ettoouney',NULL,NULL,NULL),(163,640,'Mohammed','Riazi',NULL,NULL,NULL),(164,640,'Haitham','Lababidi',NULL,NULL,NULL),(165,640,'Ghazi','AlEnzi',NULL,NULL,NULL),(166,640,'Sami','Ali',NULL,NULL,NULL),(167,640,'Tareq','AlBahri',NULL,NULL,NULL),(168,640,'Yousef','AlRoomi',NULL,NULL,NULL),(169,640,'Mousa','Abuorabi',NULL,NULL,NULL),(170,640,'Rasheed','AlAmeeri',NULL,NULL,NULL),(171,640,'Khawla','AlShayji',NULL,NULL,NULL),(172,640,'Fadhel','Aziz',NULL,NULL,NULL),(173,640,'Fahad','AlFadhli',NULL,NULL,NULL),(174,640,'Osama','AlRashed',NULL,NULL,NULL),(175,640,'Bader','AlBusairi',NULL,NULL,NULL),(176,640,'Hamida','AlRamadhan',NULL,NULL,NULL),(177,640,'Jaber','AlJuaidiyah',NULL,NULL,NULL),(178,640,'Salem','AlKanaimsh',NULL,NULL,NULL),(179,640,'Aisha','AlObaid',NULL,NULL,NULL),(180,640,'Sulaiman','AlQallaf',NULL,NULL,NULL),(181,640,'Essam','AlRouqbah',NULL,NULL,NULL),(182,620,'Hasan','AlSanad',NULL,NULL,NULL),(183,620,'Hashem','AlTabtabai',NULL,NULL,NULL),(184,620,'Humayun','Kabir',NULL,NULL,NULL),(185,620,'Husain','AlKhaiat',NULL,NULL,NULL),(186,620,'Jaber','Almedeij',NULL,NULL,NULL),(187,620,'Jamal','AlDuaij',NULL,NULL,NULL),(188,620,'Khaldoun','Rahal',NULL,NULL,NULL),(189,620,'Mohamed','AbdelRohman',NULL,NULL,NULL),(190,620,'Mohamed','Hamoda',NULL,NULL,NULL),(191,620,'Nabil','Kartam',NULL,NULL,NULL),(192,620,'Nabil','Zaghloul',NULL,NULL,NULL),(193,620,'Nabil','Ismael',NULL,NULL,NULL),(194,620,'Nayef','AlMutairi',NULL,NULL,NULL),(195,620,'Abdalrahman','Alsulaili',NULL,NULL,NULL),(196,620,'Anwar','AlYaqout',NULL,NULL,NULL),(197,620,'Fahad','AlRukaibi',NULL,NULL,NULL),(198,620,'Hasan','Hasan',NULL,NULL,NULL),(199,620,'Jasem','AlHumoud',NULL,NULL,NULL),(200,620,'Khaled','AlRasheed',NULL,NULL,NULL),(201,620,'Moetaz','Elhawary',NULL,NULL,NULL),(202,620,'Mohamad','AlKhalidi',NULL,NULL,NULL),(203,620,'Rawa','Aljarallah',NULL,NULL,NULL),(204,620,'Sharaf','AlKheder',NULL,NULL,NULL),(205,620,'Abdulhamid','Khudada',NULL,NULL,NULL),(206,620,'Abdullah','AlMutairi',NULL,NULL,NULL),(207,620,'Abdullah','Alsumaiei',NULL,NULL,NULL),(208,620,'Ahmad','AlNaseem',NULL,NULL,NULL),(209,620,'Ahmad','AlRushaidan',NULL,NULL,NULL),(210,620,'Ahmed','Khalafallah',NULL,NULL,NULL),(211,620,'Alanood','Alkhaled',NULL,NULL,NULL),(212,620,'Ammar','BenNakhi',NULL,NULL,NULL),(213,620,'Ammar','AlSayegh',NULL,NULL,NULL),(214,620,'Anwar','AlIbrahim',NULL,NULL,NULL),(215,620,'Aref','Alzaabi',NULL,NULL,NULL),(216,620,'Duaij','AlRukaibi',NULL,NULL,NULL),(217,620,'Ebrahim','Jumaen',NULL,NULL,NULL),(218,620,'Fares','Aljeeran',NULL,NULL,NULL),(219,620,'Hanouf','AlHamaidi',NULL,NULL,NULL),(220,620,'Khaled','AlSaleh',NULL,NULL,NULL),(221,620,'Manal','AlFadhala',NULL,NULL,NULL),(222,620,'Mohammad','BouShahri',NULL,NULL,NULL),(223,620,'Mohammad','Alattar',NULL,NULL,NULL),(224,620,'Mohammed','AlYagout',NULL,NULL,NULL),(225,620,'Muhammad','Chaudhary',NULL,NULL,NULL),(226,620,'Najah','AbdulRaheem',NULL,NULL,NULL),(227,620,'Nawaf','Alotaibi',NULL,NULL,NULL),(228,620,'Nourah','Almashan',NULL,NULL,NULL),(229,620,'Omar','AlSaleh',NULL,NULL,NULL),(230,620,'Ruqaya','Alsabah',NULL,NULL,NULL),(231,620,'Saleh','Ali',NULL,NULL,NULL),(232,620,'Waleed','AlAbdullah',NULL,NULL,NULL),(233,620,'Waleed','Eid',NULL,NULL,NULL),(234,620,'Fawzi','AlKandari',NULL,NULL,NULL),(235,610,'Abdallah','Cherri',NULL,NULL,NULL),(236,610,'Ali','AlMutairi',NULL,NULL,NULL),(237,610,'Ayman','AlZayed',NULL,NULL,NULL),(238,610,'Mahmoud','Habib',NULL,NULL,NULL),(239,610,'Malek','Hussain',NULL,NULL,NULL),(240,610,'Mohamed','Hassan',NULL,NULL,NULL),(241,610,'Mohamed','Zribi',NULL,NULL,NULL),(242,610,'Moustafa','Ghannam',NULL,NULL,NULL),(243,610,'Naif','AlMutairi',NULL,NULL,NULL),(244,610,'Naser','AlMutairi',NULL,NULL,NULL),(245,610,'Abdulazeez','AlOmar',NULL,NULL,NULL),(246,610,'Ali','AlKandary',NULL,NULL,NULL),(247,610,'Husain','Kamal',NULL,NULL,NULL),(248,610,'Meshal','AlShaher',NULL,NULL,NULL),(249,610,'Mohammad','Landolsi',NULL,NULL,NULL),(250,610,'Mohammed','Baidas',NULL,NULL,NULL),(251,610,'Muthana','AlRifai',NULL,NULL,NULL),(252,610,'Nabil','Khachab',NULL,NULL,NULL),(253,610,'Saleh','Alshamali',NULL,NULL,NULL),(254,610,'Mohammad','AlMulla',NULL,NULL,NULL),(255,610,'Abdullah','Alazemi',NULL,NULL,NULL),(256,610,'Abdullah','AlQallaf',NULL,NULL,NULL),(257,610,'Abeer','Almaimouni',NULL,NULL,NULL),(258,610,'Adil','AlZamil',NULL,NULL,NULL),(259,610,'Ahmad','BouShahri',NULL,NULL,NULL),(260,610,'Ali','Hajjiah',NULL,NULL,NULL),(261,610,'Bader','AlDalali',NULL,NULL,NULL),(262,610,'Fahad','AlAjmi',NULL,NULL,NULL),(263,610,'Hamad','Alroughani',NULL,NULL,NULL),(264,610,'Hussain','Hussain',NULL,NULL,NULL),(265,610,'Mishal','AlGharabally',NULL,NULL,NULL),(266,610,'Mohammad','Alsaffar',NULL,NULL,NULL),(267,610,'Mohammad','Safar',NULL,NULL,NULL),(268,610,'Muna','Albasman',NULL,NULL,NULL),(269,610,'Osama','AlNaseem',NULL,NULL,NULL),(270,610,'Qutaiba','Razouqi',NULL,NULL,NULL),(271,610,'Rashad','Mohammedeen',NULL,NULL,NULL),(272,610,'Sadeq','Alnasur',NULL,NULL,NULL),(273,610,'Sultan','Alanzi',NULL,NULL,NULL),(274,610,'Yaser','Abdulraheem',NULL,NULL,NULL),(275,660,'Majid','Aldaihani',NULL,NULL,NULL),(276,660,'Mohammed','Darwish',NULL,NULL,NULL),(277,660,'Ali','Allahverdi',NULL,NULL,NULL),(278,660,'Mehmet','Savsar',NULL,NULL,NULL),(279,660,'Abdulrahman','Alenezi',NULL,NULL,NULL),(280,660,'Esra','Aleisa',NULL,NULL,NULL),(281,660,'Fawaz','Abdulmalek',NULL,NULL,NULL),(282,660,'Khaled','AlKhaledi',NULL,NULL,NULL),(283,660,'Mohammed','AlKhedher',NULL,NULL,NULL),(284,660,'Abdullah','AlIbrahim',NULL,NULL,NULL),(285,660,'Ayed','AlMutairi',NULL,NULL,NULL),(286,660,'Humoud','Alsabah',NULL,NULL,NULL),(287,660,'Jawad','AlHashemi',NULL,NULL,NULL),(288,660,'Khaled','AlAli',NULL,NULL,NULL),(289,660,'Mohammad','AlZayed',NULL,NULL,NULL),(290,660,'Rufaidah','AlMaian',NULL,NULL,NULL),(291,630,'Ahmed','Elkholy',NULL,NULL,NULL),(292,630,'Ahmet','Yigit',NULL,NULL,NULL),(293,630,'Andreas','Christoforou',NULL,NULL,NULL),(294,630,'Esam','Alawadhi',NULL,NULL,NULL),(295,630,'Fuad','Alasfour',NULL,NULL,NULL),(296,630,'Jamal','Alhajji',NULL,NULL,NULL),(297,630,'Khaled','AlFadhala',NULL,NULL,NULL),(298,630,'Khalid','Alhazza',NULL,NULL,NULL),(299,630,'Mohammed','AlAnsary',NULL,NULL,NULL),(300,630,'Abdulazim','Falah',NULL,NULL,NULL),(301,630,'Ammar','Alsairafi',NULL,NULL,NULL),(302,630,'Emad','Khorshid',NULL,NULL,NULL),(303,630,'Majed','AlMajeed',NULL,NULL,NULL),(304,630,'Mohammed','AlAjmi',NULL,NULL,NULL),(305,630,'Mohammed','Alfares',NULL,NULL,NULL),(306,630,'Osama','Ibrahim',NULL,NULL,NULL),(307,630,'Osama','Alyousif',NULL,NULL,NULL),(308,630,'Osamah','AlHawaj',NULL,NULL,NULL),(309,630,'Raed','Bourisli',NULL,NULL,NULL),(310,630,'Sami','AlFahed',NULL,NULL,NULL),(311,630,'Sorour','Alotaibi',NULL,NULL,NULL),(312,630,'Abdullah','AlShyiea',NULL,NULL,NULL),(313,630,'Abdullah','Alazemi',NULL,NULL,NULL),(314,630,'Abdullah','Abdullah',NULL,NULL,NULL),(315,630,'Adel','AlShayji',NULL,NULL,NULL),(316,630,'Adnan','Mustafa',NULL,NULL,NULL),(317,630,'Alia','Marafie',NULL,NULL,NULL),(318,630,'Ammar','Bahman',NULL,NULL,NULL),(319,630,'Asad','AlIbrahim',NULL,NULL,NULL),(320,630,'Bader','Alshriaan',NULL,NULL,NULL),(321,630,'Fatma','Madouh',NULL,NULL,NULL),(322,630,'Jasem','Baroon',NULL,NULL,NULL),(323,630,'Khaled','AlGhanem',NULL,NULL,NULL),(324,630,'Mohamad','AlKandari',NULL,NULL,NULL),(325,630,'Mohammad','Alalaimi',NULL,NULL,NULL),(326,630,'Mohammad','Alostad',NULL,NULL,NULL),(327,630,'Mohammed','AlRifai',NULL,NULL,NULL),(328,630,'Nawaf','AlJuwayhel',NULL,NULL,NULL),(329,630,'Nawaf','AlMutawa',NULL,NULL,NULL),(330,630,'Saad','Alabduljalil',NULL,NULL,NULL),(331,630,'Shikha','Ebrahim',NULL,NULL,NULL),(332,630,'Souhaila','AlMutawa',NULL,NULL,NULL),(333,630,'Sulaiman','AlYaqout',NULL,NULL,NULL),(334,650,'Adel','Elsharkawy',NULL,NULL,NULL),(335,650,'Ali','Garrouch',NULL,NULL,NULL),(336,650,'Eissa','AlSafran',NULL,NULL,NULL),(337,650,'Ibrahim','Nashawi',NULL,NULL,NULL),(338,650,'Abdullah','Ebrahim',NULL,NULL,NULL),(339,650,'Abdullah','Alajmi',NULL,NULL,NULL),(340,650,'Adel','Malallah',NULL,NULL,NULL),(341,650,'Fuad','Qasem',NULL,NULL,NULL),(342,650,'Jalal','Owayed',NULL,NULL,NULL),(343,650,'Meshal','Algharaib',NULL,NULL,NULL),(344,650,'Osamah','Alomair',NULL,NULL,NULL),(345,650,'Talal','AlBazali',NULL,NULL,NULL),(346,650,'Fahad','Almudairis',NULL,NULL,NULL),(347,650,'Faisal','Aladwani',NULL,NULL,NULL),(348,650,'Feras','AlRuhaimani',NULL,NULL,NULL),(349,650,'Hassan','AlKandari',NULL,NULL,NULL),(350,650,'Khadhr','Altarabulsi',NULL,NULL,NULL),(351,650,'Mabkhout','AlDousari',NULL,NULL,NULL),(352,650,'Mohammad','Aldousari',NULL,NULL,NULL),(353,650,'Salah','Almudhhi',NULL,NULL,NULL),(354,650,'Yousef','Hashem',NULL,NULL,NULL),(355,480,'Emad-Eldin','Aly',NULL,NULL,NULL),(356,480,'Shahariar','Huda',NULL,NULL,NULL),(357,480,'Ahmad','Soltani',NULL,NULL,NULL),(358,480,'Lakdere','Benkherouf',NULL,NULL,NULL),(359,480,'Mohamed','Ghitany',NULL,NULL,NULL),(360,480,'Talal','Alkhamis',NULL,NULL,NULL),(361,480,'Dhaifalla','AlMutairi',NULL,NULL,NULL),(362,480,'Fahimah','AlAwadhi',NULL,NULL,NULL),(363,480,'Rym','M\'Hallah',NULL,NULL,NULL),(364,480,'Shafiqah','AlAwadhi',NULL,NULL,NULL),(365,480,'Mohamed','Habib',NULL,NULL,NULL),(366,480,'Noriah','AlKandari',NULL,NULL,NULL),(367,480,'Reem','AlJarallah',NULL,NULL,NULL),(368,480,'Fatemah','AlQallaf',NULL,NULL,NULL),(369,480,'Suja','Aboukhamseen',NULL,NULL,NULL),(370,480,'Jamal','AlSaleh',NULL,NULL,NULL),(371,480,'Intesar','AlMudahka',NULL,NULL,NULL),(372,480,'Laila','AlKhalfan',NULL,NULL,NULL),(373,480,'Fatemah','Almathkour',NULL,NULL,NULL),(374,480,'Ahmad','Alothman',NULL,NULL,NULL),(375,480,'Mai','Alfahad',NULL,NULL,NULL),(376,480,'Hajar','Alkhezi',NULL,NULL,NULL),(377,480,'Maddah','Abdulfattah',NULL,NULL,NULL),(378,480,'Ahmed','AbuAjwa',NULL,NULL,NULL),(379,480,'Seham','Ahmed',NULL,NULL,NULL),(380,480,'Abdullah','AlSuwaine',NULL,NULL,NULL),(381,480,'Khalidah','AlShijari',NULL,NULL,NULL),(382,480,'Reem','AlSahly',NULL,NULL,NULL),(383,480,'Munirah','AlSharrah',NULL,NULL,NULL),(384,480,'Munirah','AlZubairan',NULL,NULL,NULL),(385,480,'Rajaa','AlSuraij',NULL,NULL,NULL),(386,480,'Huda','Husain',NULL,NULL,NULL),(387,480,'Dalal','AlHulail',NULL,NULL,NULL),(388,480,'Fatma','AlHusaini',NULL,NULL,NULL),(389,480,'Dalal','Boushahri',NULL,NULL,NULL),(390,480,'Barbra','Atieh',NULL,NULL,NULL),(391,480,'Dalal','AlBinwan',NULL,NULL,NULL),(392,420,'Ali','Bumajdad',NULL,NULL,NULL),(393,420,'Entesar','AlHetlani',NULL,NULL,NULL),(394,420,'Fakhreia','AlSagheer',NULL,NULL,NULL),(395,420,'Fouzi','Mouffouk',NULL,NULL,NULL),(396,420,'Nader','AlJalal',NULL,NULL,NULL),(397,420,'Nouria','AlAwadi',NULL,NULL,NULL),(398,420,'Saleh','AlMousawi',NULL,NULL,NULL),(399,420,'AbdulHadi','BuOlayan',NULL,NULL,NULL),(400,420,'Abdullah','Alhendal',NULL,NULL,NULL),(401,420,'Ali','Husain',NULL,NULL,NULL),(402,420,'Fayez','AlMukhaizeem',NULL,NULL,NULL),(403,420,'Mohammad','BinSabt',NULL,NULL,NULL),(404,420,'Mousa','AlNoaimi',NULL,NULL,NULL),(405,420,'Nadia','Shuaib',NULL,NULL,NULL),(406,430,'Madan','Sharma',NULL,NULL,NULL),(407,430,'Ali','Rakhshani',NULL,NULL,NULL),(408,430,'Ameenah','Farhan',NULL,NULL,NULL),(409,430,'Suhail','Rezee',NULL,NULL,NULL),(410,430,'Peter','Lajko',NULL,NULL,NULL),(411,430,'Abdulmuhsen','Ali',NULL,NULL,NULL),(412,430,'Elias','Vagenas',NULL,NULL,NULL),(413,430,'Belal','Salameh',NULL,NULL,NULL),(414,430,'Rayner','Guzman',NULL,NULL,NULL),(415,430,'Kourosh','Alfrousheh',NULL,NULL,NULL),(416,430,'Abdelkhaleq','Alsmadi',NULL,NULL,NULL),(417,430,'Tareq','AlRefae',NULL,NULL,NULL),(418,430,'Nasser','Demir',NULL,NULL,NULL),(419,430,'Hala','AlJassar',NULL,NULL,NULL),(420,430,'Ahmad','AlJassar',NULL,NULL,NULL),(421,430,'Fatemah','AlDouseri',NULL,NULL,NULL),(422,430,'Panos','Kokkalis',NULL,NULL,NULL),(423,430,'Majed','Alotaibi',NULL,NULL,NULL),(424,430,'Afshin','Hadipour',NULL,NULL,NULL),(425,430,'Ruqayyah','Askar',NULL,NULL,NULL),(426,430,'Alaa','Alfailakawi',NULL,NULL,NULL),(427,430,'Bedoor','Alkurtass',NULL,NULL,NULL),(428,430,'Abdullah','AlMulla',NULL,NULL,NULL),(429,430,'Wafaa','Mahdi',NULL,NULL,NULL),(430,430,'Edwin','Anil',NULL,NULL,NULL),(431,430,'Mohammad','Ali',NULL,NULL,NULL),(432,430,'Hameed','Ramadhan',NULL,NULL,NULL),(433,430,'Djenane','Khalil',NULL,NULL,NULL),(434,430,'Jehan','AlModhaian',NULL,NULL,NULL),(435,430,'Maryam','Murad',NULL,NULL,NULL),(436,430,'Sunny','Thomas',NULL,NULL,NULL),(437,430,'Suji','Zachariah',NULL,NULL,NULL),(438,430,'Susan','AlMansour',NULL,NULL,NULL),(439,430,'Yousef','Humadi',NULL,NULL,NULL),(440,490,'Mohammed','Abaza',NULL,NULL,NULL),(441,490,'Ghanim','Al-Abbadi',NULL,NULL,NULL),(442,490,'Amani','Al-Adsani',NULL,NULL,NULL),(443,490,'Abbas','Alameer',NULL,NULL,NULL),(444,490,'Abrar','Al-Ansary',NULL,NULL,NULL),(445,490,'Husain','Al-Awadhi',NULL,NULL,NULL),(446,490,'Dhia','Al-Bader',NULL,NULL,NULL),(447,490,'Eman','Al-Baker',NULL,NULL,NULL),(448,490,'Suzanne','Al-Bustan',NULL,NULL,NULL),(449,490,'Mashael','Al-Dabbous',NULL,NULL,NULL),(450,490,'Jazi','Al-Enezi',NULL,NULL,NULL),(451,490,'Soaad','Alfaqaan',NULL,NULL,NULL),(452,490,'Lulowah','Al-Ghaith',NULL,NULL,NULL),(453,490,'Dunia','Al-Gharabally',NULL,NULL,NULL),(454,490,'Hasan','Alhaddad',NULL,NULL,NULL),(455,490,'Bader','Alhajeri',NULL,NULL,NULL),(456,490,'Bader','Al-Hamar',NULL,NULL,NULL),(457,490,'Redha','Al-Hasan',NULL,NULL,NULL),(458,490,'Jaser','Aljaser',NULL,NULL,NULL),(459,490,'Wafa','Al-Kandari',NULL,NULL,NULL),(460,490,'Abdulaziz','Alkhamis',NULL,NULL,NULL),(461,490,'Fahad','Al-Khayyat',NULL,NULL,NULL),(462,490,'Dina','Al-Mailem',NULL,NULL,NULL),(463,490,'Naemah','Al-Mansour',NULL,NULL,NULL),(464,490,'Ibrahim','Almasoud',NULL,NULL,NULL),(465,490,'Suad','Al-Mazrooei',NULL,NULL,NULL),(466,490,'Mohammad','Almishwat',NULL,NULL,NULL),(467,490,'Maryam','Almohaisen',NULL,NULL,NULL),(468,490,'Awatef','Al-Mutairi',NULL,NULL,NULL),(469,490,'Majed','Alnaqeeb',NULL,NULL,NULL),(470,490,'Khaled','Al-Qattan',NULL,NULL,NULL),(471,490,'Maryam','Al-Rashid',NULL,NULL,NULL),(472,490,'Jasem','Al-Rubaian',NULL,NULL,NULL),(473,490,'Amal','Al-Saffar',NULL,NULL,NULL),(474,490,'Esmaeil','Al-Saleh',NULL,NULL,NULL),(475,490,'Sana','AlSaleh',NULL,NULL,NULL),(476,490,'Haya','AlSammar',NULL,NULL,NULL),(477,490,'Nedaa','AlSarraf',NULL,NULL,NULL),(478,490,'Shorooq','Al-Sawan',NULL,NULL,NULL),(479,490,'Amani','Al-Zaidan',NULL,NULL,NULL),(480,490,'Sheikha','Al-Zarban',NULL,NULL,NULL),(481,490,'Hussain','Bahbahani',NULL,NULL,NULL),(482,490,'Abdelmajeed','Bahman',NULL,NULL,NULL),(483,490,'Nasmah','Bastaki',NULL,NULL,NULL),(484,490,'Ahlam','Bouariky',NULL,NULL,NULL),(485,490,'Mona','Dashti',NULL,NULL,NULL),(486,490,'Narjes','Dashti',NULL,NULL,NULL),(487,490,'Rawan','Edan',NULL,NULL,NULL),(488,490,'Ameena','Haider',NULL,NULL,NULL),(489,490,'Mohammed','Haider',NULL,NULL,NULL),(490,490,'Lamya','Hayat',NULL,NULL,NULL),(491,490,'Sarah','Jasem',NULL,NULL,NULL),(492,490,'Huda','Mahmoud',NULL,NULL,NULL),(493,490,'Yousef','Mater',NULL,NULL,NULL),(494,490,'Mohammed','Morad',NULL,NULL,NULL),(495,490,'Alanoud','Rawdhan',NULL,NULL,NULL),(496,490,'Amina','Redha',NULL,NULL,NULL),(497,490,'Abdelmajeed','Safar',NULL,NULL,NULL),(498,490,'Hamad','Yadikar',NULL,NULL,NULL),(499,490,'Jamillah','Zamoon',NULL,NULL,NULL),(500,460,'Firyal','Bourabee',NULL,NULL,NULL),(501,460,'Jasem','AlAwadhi',NULL,NULL,NULL),(502,460,'Fawzia','AlRuwaih',NULL,NULL,NULL),(503,460,'Mohammad','AlSarawi',NULL,NULL,NULL),(504,460,'Michael','Duane',NULL,NULL,NULL),(505,460,'Fowzia','Abdullah',NULL,NULL,NULL),(506,460,'Ali','AlMishwat',NULL,NULL,NULL),(507,460,'Adeeba','AlHurban',NULL,NULL,NULL),(508,460,'Arafat','AlShuaibi',NULL,NULL,NULL),(509,460,'Abbas','Saleh',NULL,NULL,NULL),(510,460,'Zainab','AlMusallam',NULL,NULL,NULL),(511,460,'Redha','Mohammad',NULL,NULL,NULL),(512,460,'Mariam','AlKuwairan',NULL,NULL,NULL),(513,460,'Dhari','AlKanderi',NULL,NULL,NULL),(514,460,'Mohammad','Abotalib',NULL,NULL,NULL),(515,460,'Yaqoub','AlRefaei',NULL,NULL,NULL),(516,460,'Mohammed','Naqi',NULL,NULL,NULL),(517,460,'Abdullah','Husain',NULL,NULL,NULL),(518,460,'Reem','AlAwadhi',NULL,NULL,NULL),(519,460,'Najeeb','AlAdwani',NULL,NULL,NULL),(520,460,'Ohood','AlSalem',NULL,NULL,NULL),(521,460,'Naseer','AlQattan',NULL,NULL,NULL),(522,9988,'Amal','Khalaf',NULL,NULL,NULL),(523,9988,'Maryam','Ahmad',NULL,NULL,NULL),(524,9988,'Hadeel','AlMutairi',NULL,NULL,NULL),(525,9988,'Fatima','Hussain',NULL,NULL,NULL),(526,9988,'Jennifer','Baran',NULL,NULL,NULL),(527,9988,'Saud','AlAbdullah',NULL,NULL,NULL),(528,9988,'Malek','AlHussain',NULL,NULL,NULL),(529,9988,'Duha','AlAskar',NULL,NULL,NULL),(530,9988,'Noha','AlAteeqi',NULL,NULL,NULL),(531,9988,'Amina','Idriss',NULL,NULL,NULL),(532,9988,'Ahmad','Alkout',NULL,NULL,NULL),(533,9988,'Latifa','Alwazzan',NULL,NULL,NULL),(534,9988,'Faye','Alghuniem',NULL,NULL,NULL),(535,9988,'Shaimaa','AlAwadhi',NULL,NULL,NULL),(536,9988,'Nadia','Alshaiji',NULL,NULL,NULL),(537,9988,'Abbas','Alshammari',NULL,NULL,NULL),(538,9988,'Kamil','Shahrstan',NULL,NULL,NULL),(539,9988,'Nancy','Schoenfeld',NULL,NULL,NULL),(540,9988,'Fahad','Aletaibey',NULL,NULL,NULL),(541,9988,'Nour','AlGharabali',NULL,NULL,NULL),(542,9988,'Zainab','Alsaleh',NULL,NULL,NULL),(543,9988,'Salwa','BenNaji',NULL,NULL,NULL),(544,9988,'Jumanah','Alsughayer',NULL,NULL,NULL),(545,9988,'Eihab','Alenezi',NULL,NULL,NULL),(546,9988,'Haifa','Alsarraf',NULL,NULL,NULL),(547,9988,'Dalal','Albaker',NULL,NULL,NULL),(548,9988,'Harold','Walker',NULL,NULL,NULL),(549,9988,'Manal','Almansour',NULL,NULL,NULL),(550,9988,'Asmaa','Alotaibi',NULL,NULL,NULL),(551,9988,'Sayed Ahmad','AlMousawi',NULL,NULL,NULL),(552,9988,'Mohammad','Abdulkareem',NULL,NULL,NULL),(553,9988,'Osamah','Alattar',NULL,NULL,NULL),(554,9988,'Anfal','Gholam',NULL,NULL,NULL),(555,9988,'Maryam','AlFadhli',NULL,NULL,NULL),(556,9988,'Shaima','Kohari',NULL,NULL,NULL),(557,9988,'Sundus','Alsabah',NULL,NULL,NULL),(558,9988,'Abdulrada','BenSalem',NULL,NULL,NULL),(559,9988,'Kuttiyil','Mathew',NULL,NULL,NULL),(560,9988,'Aliaa','Busaakhar',NULL,NULL,NULL),(561,9988,'Nourah','AlMajeed',NULL,NULL,NULL),(562,9988,'Lulwa','Alkhammash',NULL,NULL,NULL),(563,9988,'Fatema','Alhallal',NULL,NULL,NULL),(564,9988,'Mariam','AlShehab',NULL,NULL,NULL),(565,9988,'Albatool','AlGharabally',NULL,NULL,NULL),(566,9988,'Ali','Alyousufi',NULL,NULL,NULL),(567,9988,'Priya','Koshy',NULL,NULL,NULL),(568,9988,'Reem','Alturkeit',NULL,NULL,NULL),(569,9988,'Eiman','Alshammari',NULL,NULL,NULL),(570,9988,'Safa','Hayat',NULL,NULL,NULL),(571,9988,'Raheel','Alqadiri',NULL,NULL,NULL),(572,9988,'Fajer','AlFarsi',NULL,NULL,NULL),(573,9988,'Fatimah','Hassan',NULL,NULL,NULL),(574,9988,'Dalal','Baithon',NULL,NULL,NULL),(575,9988,'Nour','Bushehri',NULL,NULL,NULL),(576,9988,'Elizabeth','Jones',NULL,NULL,NULL),(577,9988,'Eiman','Alblooshi',NULL,NULL,NULL),(578,9988,'Sundus','Sulaiman',NULL,NULL,NULL),(579,9988,'Nadia','Dehrab',NULL,NULL,NULL),(580,9988,'Anwar','Aladwani',NULL,NULL,NULL),(581,9988,'Emad','Dorra',NULL,NULL,NULL),(582,9988,'Virginia','Bastaki',NULL,NULL,NULL),(583,9988,'Ian','Pond',NULL,NULL,NULL),(584,9988,'Safaa','Alsalim',NULL,NULL,NULL),(585,9988,'Hasan','Ebrahim',NULL,NULL,NULL),(586,9988,'Saleh','Almutairi',NULL,NULL,NULL),(587,9988,'Sunita','Sethi',NULL,NULL,NULL),(588,9988,'Shayma','Altattan',NULL,NULL,NULL),(589,9988,'Hala','Alsammar',NULL,NULL,NULL),(590,9988,'Ghadah','Alqenai',NULL,NULL,NULL),(591,9988,'Zahour','Alshammari',NULL,NULL,NULL),(592,9988,'Eedah','Almutairy',NULL,NULL,NULL),(593,9988,'Hessa','Alumairi',NULL,NULL,NULL),(594,9988,'Bazzah','Almudhaf',NULL,NULL,NULL),(595,9988,'Fatima','Alali',NULL,NULL,NULL),(596,9988,'Amal','Alhunaidi',NULL,NULL,NULL),(597,9988,'Dana','Akasha',NULL,NULL,NULL),(598,9988,'Aisha','AlEssa',NULL,NULL,NULL),(599,9988,'Dina','Alawdah',NULL,NULL,NULL),(600,9988,'Sarah','Khaja',NULL,NULL,NULL),(601,9988,'Sarah','Akbar',NULL,NULL,NULL),(602,9988,'Ebtihaj','Alzaabi',NULL,NULL,NULL),(603,9988,'Faten','Nuseibah',NULL,NULL,NULL),(604,9988,'Saad','Alshammari',NULL,NULL,NULL),(605,620,'Amani','BuQammaz',NULL,NULL,NULL),(606,620,'Ebrahim','Alali',NULL,NULL,NULL),(607,620,'Ahmad','Alyoussef',NULL,NULL,NULL),(608,620,'Bandar','AlMutairi',NULL,NULL,NULL),(609,620,'Musaed','Alrashidi',NULL,NULL,NULL),(610,420,'Hayat','Marafie',NULL,NULL,NULL),(611,420,'Mohammed','Hasan',NULL,NULL,NULL),(612,420,'Fatima','Alomran',NULL,NULL,NULL),(613,420,'Amal','Alazemi',NULL,NULL,NULL),(614,420,'Othman','AlFulaig',NULL,NULL,NULL),(615,420,'Najeeb','Alsalim',NULL,NULL,NULL),(616,420,'Ahmed','Karimi',NULL,NULL,NULL),(617,420,'Abrar','Alrashed',NULL,NULL,NULL),(618,420,'Abdulrahman','Alazemi',NULL,NULL,NULL),(619,420,'Najat','Alshatti',NULL,NULL,NULL),(620,420,'Dhuha','AlWahaib',NULL,NULL,NULL),(621,420,'Saad','Makhseed',NULL,NULL,NULL),(622,430,'Sayed','Razee',NULL,NULL,NULL),(623,420,'Hicham','Dib',NULL,NULL,NULL),(624,420,'Sundus','Alawadi',NULL,NULL,NULL),(625,420,'Shekhah','AlKandari',NULL,NULL,NULL),(626,420,'Nabeela','Aman',NULL,NULL,NULL),(627,420,'Abdelzaher','Elassar',NULL,NULL,NULL),(628,420,'Mariam','Abdullah',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language_Instructor`
--

DROP TABLE IF EXISTS `Language_Instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Language_Instructor` (
  `faculty_id` int NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  CONSTRAINT `languageInstructor_faculty_facultyid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language_Instructor`
--

LOCK TABLES `Language_Instructor` WRITE;
/*!40000 ALTER TABLE `Language_Instructor` DISABLE KEYS */;
INSERT INTO `Language_Instructor` VALUES (523,NULL),(524,NULL),(525,NULL),(526,NULL),(527,NULL),(528,NULL),(529,NULL),(530,NULL),(531,NULL),(532,NULL),(533,NULL),(534,NULL),(535,NULL),(536,NULL),(537,NULL),(538,NULL),(539,NULL),(540,NULL),(541,NULL),(542,NULL),(543,NULL),(544,NULL),(545,NULL),(546,NULL),(547,NULL),(548,NULL),(549,NULL),(550,NULL),(551,NULL),(552,NULL),(553,NULL),(554,NULL),(555,NULL),(556,NULL),(557,NULL),(558,NULL),(559,NULL),(560,NULL),(561,NULL),(562,NULL),(563,NULL),(564,NULL),(565,NULL),(566,NULL),(567,NULL),(568,NULL),(569,NULL),(570,NULL),(571,NULL),(572,NULL),(573,NULL),(574,NULL),(575,NULL),(576,NULL),(577,NULL),(578,NULL),(579,NULL),(580,NULL),(581,NULL),(582,NULL),(583,NULL),(584,NULL),(585,NULL),(586,NULL),(587,NULL),(588,NULL),(589,NULL),(590,NULL),(591,NULL),(592,NULL),(593,NULL),(594,NULL),(595,NULL),(596,NULL),(597,NULL),(598,NULL),(599,NULL),(600,NULL),(601,NULL),(602,NULL),(603,NULL),(604,NULL);
/*!40000 ALTER TABLE `Language_Instructor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES (1,'Bristol University','Assistant Professor','Computer networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/default-profile.png'),(2,'Boston University','Assistant Professor','Computer networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Ayman-copy.jpg'),(3,'Oregon State University','Assistant Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Bader_Al-Bader.jpg'),(4,'NULL','Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/bader-copy.jpeg'),(5,'Oregon State University','Assistant Professor','Computer Architecture','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/fawaz.jpg'),(6,'Laval University','Associate Professor','Service Oriented Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Hamdi.jpg'),(7,'Virginia Tech','Associate Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/hamid.png'),(8,'University of Waterloo','Professor','Machine Learning','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/hazem-copy.jpeg'),(9,'University of Waterloo','Associate Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Hossam.jpg'),(10,'Kansas State University','Assistant Professor','Programming Languages','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/husain-copy.jpg'),(11,'Virginia Tech','Associate Professor','Security','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almohri-copy.png'),(12,'Case Western Reserve University','Assistant Professor','Software Engineering','https://www.cs.ku.edu.kw/wp-content/uploads/2020/07/Khalil.jpg'),(13,'University of California','Assistant Professor','High-Performance Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/maha.jpeg'),(14,'George Mason University','Assistant Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/m1.jpg'),(15,'University of Colorado','Assistant Professor','Pervasive Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almutawa.jpg'),(16,'Essex University','Assistant Professor','Pervasive Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/Almulla-R-1.jpg'),(17,'McGill University','Assistant Professor','Bioinformatics','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/samaoui-copy.jpg'),(18,'McGill University','Professor','Artificial Intelligence','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/almulla.jpg'),(19,'Columbia University','Assistant Professor','Operating Systems','https://www.cs.ku.edu.kw/wp-content/uploads/2020/08/NaserAlDuaij.jpg'),(20,'University of Kent','Assistant Professor','Computer Networks','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/default-profile.png'),(21,'The University of York','Assistant Professor','Databases','https://www.cs.ku.edu.kw/wp-content/uploads/2020/10/Saud-1.jpg'),(22,'Oregon State University','Associate Professor','Parallel Computing','https://www.cs.ku.edu.kw/wp-content/uploads/2020/04/zaid.jpg'),(34,'Texas A&M University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw170396.jpg'),(35,'University of Miami','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147692.jpg'),(36,'Syracuse University','Associate Professor','',NULL),(37,'Purdue University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw233288.jpg'),(38,'University of Virginia','Assistant Professor','Computer Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147701.jpg'),(39,'NULL','Assistant Professor','',NULL),(34,'Texas A&M University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw170396.jpg'),(35,'University of Miami','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147692.jpg'),(36,'Syracuse University','Associate Professor','',NULL),(37,'Purdue University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw233288.jpg'),(38,'University of Virginia','Assistant Professor','Computer Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147701.jpg'),(39,'NULL','Assistant Professor','',NULL),(40,'University of California','Professor','Theoretical Computer Science:Computer and Network Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146842.png'),(41,'Georgia Institute of Technology','Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147672.jpg'),(42,'University of Southern California','Professor','Computer Architecture','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147674.jpg'),(43,'Concordia University','Associate Professor','Human Computer Interaction',NULL),(44,'Syracuse University','Professor','Data Mining:Security','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146844.jpg'),(45,'NULL','Assistant Professor','',NULL),(46,'University of Southern California','Associate Professor','Computer Networks',NULL),(47,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw110696.jpg'),(48,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201884.jpg'),(49,'NULL','Assistant Professor','',NULL),(50,'Rensselaer Polytechnic Institute','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146849.jpg'),(51,'University of Washington','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109916.jpg'),(52,'Syracuse University','Professor','Parallel and Distributed Computing','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201881.jpg'),(53,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147429.jpg'),(54,'North Carolina State University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201883.jpg'),(55,'NULL','Assistant Professor','',NULL),(56,'NULL','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw110698.jpg'),(57,'NULL','Assistant Professor','',NULL),(58,'NULL','Assistant Professor','',NULL),(59,'University of Massachusetts Amherst','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201885.jpg'),(60,'New Mexico State University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147665.jpg'),(61,'University of Southern California','Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109661.jpg'),(62,'The University of Iowa','Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201882.jpg'),(63,'University of Wisconsin-Madison','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw118248.jpg'),(64,'Virginia Tech','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146848.png'),(65,'NULL','Assistant Professor','Data Mining:Artificial Intelligence',NULL),(66,'University of Southern California','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109719.jpg'),(67,'University of Waterloo','Associate Professor','Computer Networks','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw146846.jpg'),(68,'Syracuse University','Assistant Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw201886.jpg'),(69,'NULL','Assistant Professor','',NULL),(70,'University of Colorado Boulder','Assistant Professor','Human Computer Interaction:Software Engineering',NULL),(71,'Northwestern University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw109660.jpg'),(72,'Concordia University','Associate Professor','','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw108782.jpg'),(73,'University of Southern California','Professor','',NULL),(74,'University of California Irvine','Assistant Professor','',NULL),(75,'Yale University','Associate Professor','Computer Architecture','http://kuwebcont.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw147697.jpg'),(76,'NULL','Assistant Professor','',NULL),(77,'University of Florida','Assistant Professor','Machine Learning',NULL),(78,'Queen\'s university','Assistant Professor','Web Applications and Services',NULL),(79,'McGill University','Assistant Professor','Distributed Systems',NULL),(80,'University of Michigan','Assistant Professor','Software Quality and Testing',NULL),(81,'University of Maryland','Associate Professor','Health Informatics',NULL),(82,'George Mason University','Assistant Professor','Data Mining',NULL),(83,'George Mason University','Assistant Professor','Artificial Intelligence',NULL),(84,'Georgia Institute of Technology','Assistant Professor','Health Informatics',NULL),(85,'Queen’s University','Associate Professor','Data Mining',NULL),(86,'Virginia Tech','Associate Professor','Fuzzy Logic',NULL),(87,'Mororan Institute of Technology','Associate Professor','Distributed Computing',NULL),(88,'University of Ottawa','Professor','',NULL),(89,'George Mason University','Assistant Professor','Data mining:Machine Learning',NULL),(90,'Newcastle University','Assistant Professor','Wireless Communications',NULL),(91,'Southern Methodist University','Assistant Professor','Security',NULL),(92,'University of Newcastle','Professor','Graph Algorithms',NULL),(93,'Southern Methodist University','Assistant Professor','Security',NULL),(94,'University of Waterloo','Assistant Professor','Intrusion Detection Systems',NULL),(95,'University of Wyoming','Professor','Statistics',NULL),(96,'University of Maryland','Assistant Professor','Data Mining:Cyber Security:Health Informatics',NULL),(97,'University of California Irvine','Assistant Professor','Internet-of-Things',NULL),(98,'The University of Western Ontario','Assistant Professor','Web Services',NULL),(99,'University of Waterloo','Assistant Professor','Computer Graphics:Human Computer Interaction',NULL),(109,'University of Southampton','Professor','Differential Geometry & Topology','https://lh5.googleusercontent.com/67g7-rzNIyh6XEL6agb68wiPnMhbhNJhla8LgvBKLbjGKn-_4LVOYmnFVQxdk8iPWQ9x3hyiGgQPOGy2S0RLA5gEpMLEx6d5bnamWBWQlrQZpM9y=w1280'),(110,'University of North Texas','Professor','Partial Differential Equations','https://lh5.googleusercontent.com/mInLPsSJrkRo8mjvH2YFx7-BU82lH5mPtO54bNKeAQt_Z984BQ3p-mTMtPyiQFC_pwWITOV9oq2dvMq_hLj6fneN3lEgnJ3Et9dm6KMcIQUw4Fjp=w1280'),(111,'Bucharest University','Professor','Algebra & Group Theory','https://lh3.googleusercontent.com/9lHLlLhpQOO0bLXx6igaa5zrEXHeNGzhjlfudJHsQnTbQOHwrIP0PHa2Dqts2Fu95WWejBgpU-btxhiUxoLKc1gaynoWSpYP_Vr-EPeSBiCp7VLq=w1280'),(112,'University of Wisconsin-Madison','Professor','Numerical approximation theory','https://lh6.googleusercontent.com/potBRCECfZUa0C9imI1xh2rtMwYsXvmRzgnEiaYefisdc9JeLwIXqMsr_RGCJOLvyoZffYV2gyIYCzX8S6mq_wZkWvrTj_rnv5Awm6QfVTZIn03W=w1280'),(113,'Arizona State University','Professor','Dynamical Systems','https://lh6.googleusercontent.com/FWdgCT4yEidXd7VRWrJoQRpscQD6TluzAw7UgSjKH2rLmiA8tTaa0bzZXd0BQr4zQr9J7fgAHISpHr7oFT8ZW0im1nh2DtYs8yguMYgXqtRQ01RD=w1280'),(114,'Virginia Polytechnic Institute and State University','Professor','Mathematical Programming and Combinatorial Optimization','https://lh3.googleusercontent.com/u9JznVjMde6xayP9bHCA8efKb6W9xo4QdBL33wNwyDr2fzODPu1Mx2Hp412To7rbIt13XpYGJk3BYMTYybNgka6KOHWmRaN0G4tD9TgjIJoT_iho=w1280'),(115,'Colorado State University','Associate Professor','Spectral Graph Theory','https://lh6.googleusercontent.com/SdQy_WCcaT2X_0VPlN6ONvHh7hShHEiDYbUURrOMuio-B-F55xqPUcgVw1FMeqXj0YVaanQEQjf3hKX45OJPvtLk0eq-eQ319faen4NG734s5b6f=w1280'),(116,'University of Paris','Associate Professor','Applied Mathematics','https://lh3.googleusercontent.com/jlf71caljrEkIUiRa2yPbqoan3Y0KX15ROQ1CPaodUM9H38-ZIlNBUyDucTTZb4dghmyvG6pxNWZ2Ls6gbYgzFITs9AcfPLiic_uLQe4yEXDsq1e=w1280'),(117,'University of Notre Dame','Associate Professor','Diffrential Geometry','https://lh3.googleusercontent.com/C2IH-DYTq6n74dw-VVzXu6PATSKdbq0rHMHT8jA78ZCi1rs_psSJxrTpJ52oo7Xn74r7ZcbOGQzVfqPNxWsDhjY3yPFSrfehyzt1hE-VDDiHuP6u=w1280'),(118,'University of London','Associate Professor','Cryptography','https://lh4.googleusercontent.com/ITGZOtxNMrcSSuzMCH83-EUmPkBIY_0jk0nOMBYMJypiK3VMgluTAZI_LhXmyBaY8sR1AGATzKNh1443DcZ8O0kEoi0bWkx4L7ya7Ljm--MjRyeH=w1280'),(119,'Bayreuth University','Associate Professor','Combinatorics','https://lh3.googleusercontent.com/FviLDdZ-0l6KLLsHs6idyJiwwKTB04o2ruWb4WPYPbVPJp0rX1R0NZaMzSRlOXdzRwH0oes8CmexvMh_x8OhDoM1ZTaGsQ7LBgY7i0Fo-_n8B0mA4WQq-iDHEaJbo07O=w1280'),(120,'Cambridge University','Associate Professor','Broad Area: Approximation Theory','https://lh3.googleusercontent.com/xE1zK9bvjJgWqQjPwvW0vd4_4CyA4x1qbUl5mWE70NiBJtzi1fbMfl6I7V0Q4I70v4KkBhqNJLIL0DY_QpLnBGtKtmAXDiTQ89LFhroiQuG7CfAF=w1280'),(121,'Colorado State University','Associate Professor','Combinatorial Optimization','https://lh4.googleusercontent.com/otXEteYDvlApKyiwtYS2cl8XIBr7UJ9YvMhn0mn5ipUGzbBOtK6PSG03DRy8mMi4GqjbF9H8dZ-i2dqHT55z1NNSiZ-PlMvNHH9nK4J7-jDWGcHO=w1280'),(122,'Paris-Sud University','Associate Professor','Differential Geometry & Harmonic Analysis','https://lh6.googleusercontent.com/3hq3gIGFz2glysMHUiBz-DtvafqkDIJOtjyy0bkwUB1WCZnq6JpwcdGbUihTY3bBBWQysiDCrAFgPF2TsNzHdzL5JBMq5bi0TWXQ8GJGk3aF1SoZ=w1280'),(123,'INRIA-Lorraine and University of Metz','Associate Professor','Control of Partial Differential Equations','https://lh6.googleusercontent.com/gaL0_CgCDvFsJ8xrkahoa9TMDMQ1aEdVNxKNBbVWtjJZjeyypBdRXs_Ekbw0UB60ncPiZCUA9XK-XSCWMRsIOwZ6vdQubwntHPuebqoZYD2ovlOs=w1280'),(124,'London School of Economics and Political Science','Associate Professor','Financial Mathematics','https://lh4.googleusercontent.com/SplLTXOAiFExxfu1QRfCwxFTF1WC6C7mzJNgwLRmQnFW8Z2sO1Yiaj_OHSg9XrznmtA--0S7uRd9h1Zx0vNIY3A2CUv4FkEq1J2oaHBw0vgUrRxZ=w1280'),(125,'University of Maryland','Associate Professor','Functional analysis and applications: Best Approximation Theory','https://lh5.googleusercontent.com/vMmXC3a9fu2s7dHeRJQdXvw_d6XTR5IYfx9Z1V1UNqDRMNNz1L7Cr-qmnevE9PybWSjMBSFxfAHC9iMbt3cPNuaDzPMk7FjWE1krcLWgGiC6lgTp=w1280'),(126,'The University of Leeds','Associate Professor','Fluid Dynamics','https://lh3.googleusercontent.com/R2UP1wU_TMhiCYiynCAAZp222xHEdYm3L8GI3fnW7IN7fy11cs8t2aeCaA8smVmVTqvCif1oBOGjYP_VFYPqI94xLeWc1zbTeYKci_xPuDMAkYFb=w1280'),(127,'Louisiana State University','Associate Professor','Low Dimensional Topology- Knot Theory','https://lh5.googleusercontent.com/CVwWuutPycfajDJU2OyP6lvAgabNxuETKoQbdLbuq-u1oIwv9Z15JRByBDEh-_T_eYNXJtqwNYibAz4SqeWrlniaOGcNkPg2Lm3_mLfq1K7O9Pot=w1280'),(128,'Pantheon-Sorbonne University','Associate Professor','Gaussian processes','https://lh5.googleusercontent.com/mXOpA163nJfxPUOIW9k2zifE0Igf5MydwautFXXaKoRt_eBgPyv__vS4LHe_l2oQJXIwRlUhj2ui0HkLzNXzjJEtLBS9a29HHLhZzO0Ciu3wwrw-=w1280'),(129,'Birmingham University England','Associate Professor','Computational Linear Algebra','https://lh3.googleusercontent.com/sA-kdmMFxXPfn3j7HLcKqMouO7atYnE17xGpO5F--SCGQ55pAyB95o1PeW1h_2PCTq1ivXYWkzo71H-7p8bDb2qzRMyb7-ADBaidEy2YBa9L1wiq=w1280'),(130,'Simon Fraser University','Associate Professor','Graph Theory','https://lh6.googleusercontent.com/IT-pWOxRgpPpbEj4pKiATNY2eN-KRFUYcGqjqR-EhLoP2CrecrUSXAQL1GKwbr1jwsnvI9ig2Ow1aN1ys44tct_FM3csD5loP4u7TYZPbR-BtG40=w1280'),(131,'University of Aveiro','Associate Professor','Spectral Graph Theory','https://lh6.googleusercontent.com/YHhfOeLZ-UoIFvgK9ojSu1YL8m46gGjTPGJVOCKIspwyX9CgOWkjJ7m987WyldJrOR17EgQr7r-4z7LAS0KDp3J5c2xs_8YijDCe3m2VIWbJndcB=w1280'),(132,'Cambridge University','Associate Professor','Algebraic Topology','https://lh6.googleusercontent.com/9A7dM_M5lOdp7vqs6hZTNRIaT2bHCfI_hID8BuUWeKvte7zDa0xucdin5sE3-ook7vLEYeZNh32aaFsFZMC7W5kOAcwwBkFi0GEzmmvT9nVewq1u=w1280'),(133,'Case Western Reserve University','Assistant Professor','Agent-based modeling','https://lh4.googleusercontent.com/v1V_qk-V07vysis413scQMqRyK86I-G9PQStzfwi-FhX9BrIPgZC-ykyQG5SmH7jwbAHvc4RzCwobmiI0v9wT2WE3Y-CMfYDUzTMe_rlZrw_LZys=w1280'),(134,'University of Oxford','Assistant Professor','Applied mathematics: mathematical modeling','https://lh4.googleusercontent.com/Q-5pikbHtoMkONN-shQMhticaZIWb6haM95N3uqw_wmpIQRw_M2-3tzKJhViDB6jwTnnZmVoF-GTKln1RJwMmOga7CI0wNZxFCyc9F3oCNoEWSEC=w1280'),(135,'Università degli Studi di Bari Aldo Moro','Assistant Professor','Numerical solutions of ill-posed problems','https://lh3.googleusercontent.com/Ryn5x6nIconwtoX13yBZOUTpyMa2EBUE31AXmUl0xhxt9eKRd2dmdtjCbzlqDh90PcoJ2c_7NKARfKDbSkvz4V9qCReg6BU41Ha6RwPoApo1XnYL=w1280'),(136,'NULL','Assistant Professor','Reaction diffusion','https://lh6.googleusercontent.com/DqSAOFT-JUCU3e3fdZGsZNJ_XCGEQiOVJDcil2weaWE3PVZD-2JcO7TDppBCjO6FLduahwgXPz8RAla6YRHbdSUWDyS-6nAFI4ESBcpcYfYGuA4q=w1280'),(137,'Banger University','Assistant Professor','Fuzzy sets','https://lh5.googleusercontent.com/uWa71U3ESdAw18DITPfFO11IZrmWQPE72cfbxg6TZdvXPeRu1hJtdktow2R-RFAyl7N1G7WE8dftfGgwcCyytGyczKilVsnsgNjs4QfXrAJbT4cH=w1280'),(138,'Stony Brook University.','Assistant Professor','Applied Analysis','https://lh4.googleusercontent.com/riXLOIXW8JmrL74Ta1AieLbY6ZmYJkI8t3uulzPkaGLErusWzwVF1du_By9un6t_F3AjpuXMccyPBtSecrT9u8fe4i4yycEdLQ97xCr7Dqhfx8r4=w1280'),(139,'NULL','Assistant Professor','Financial Mathematics','https://lh5.googleusercontent.com/-zCwQtL_k0IgIV22LCGWYaFHvSVc3aVMzqejuG0DJAuNabuNAM_SAzvN9MngB_ledpKAfCCI9K6bN2I3XfUPGFyRG57_s8jgWXMUKrVKL0N_dYDS=w1280'),(140,'University of Birmingham','Assistant Professor','Topology and Its Applications in Order Theory and Set Theory','https://lh6.googleusercontent.com/uLlqX-u03C7wtyyzmR7Vmwvny8FqAAGlbfjgxj1Q3W2qypPERjWgBi9CABRzuaVgivmVJ4aO7X_pDXqfVw2AeEK8NfB3p9osIjEhjMv6m7s_4sfG=w1280'),(141,'Imperial College','Assistant Professor','Algebraic Geometric Code Theory','https://lh3.googleusercontent.com/tXZe4LVztLNZuW1N8vzBOJxNbL0s8SDSsvYHH2GDchG62-0UyTAdQCQzqz0SOSOavAhOhjuIDY3QqvN1qy--dj0RMQXF05l4Dk4RlMT4VP0X1NFk=w1280'),(142,'University of Manchester','Assistant Professor','Financial Mathematics','https://lh3.googleusercontent.com/tXZe4LVztLNZuW1N8vzBOJxNbL0s8SDSsvYHH2GDchG62-0UyTAdQCQzqz0SOSOavAhOhjuIDY3QqvN1qy--dj0RMQXF05l4Dk4RlMT4VP0X1NFk=w1280'),(143,'University of Edinburgh','Assistant Professor','Physical applied mathematics','https://lh5.googleusercontent.com/jVSvqnu3OyIjygHAxVLcxgtlDodQqW9sqM0V5zY7GKOGmBamrxfbGp-N4ZoUu0hFmIr665lch58IDGNjBdpcSL1YTelrCALwpwWkjG0oEwwzxhdGRWgczaLqLhUV-uQlww=w1280'),(160,NULL,'Professor',NULL,NULL),(161,NULL,'Professor',NULL,NULL),(162,NULL,'Professor',NULL,NULL),(163,NULL,'Professor',NULL,NULL),(164,NULL,'Professor',NULL,NULL),(165,NULL,'Professor',NULL,NULL),(166,NULL,'Professor',NULL,NULL),(167,NULL,'Professor',NULL,NULL),(168,NULL,'Professor',NULL,NULL),(169,NULL,'Professor',NULL,NULL),(170,NULL,'Associate Professor',NULL,NULL),(171,NULL,'Associate Professor',NULL,NULL),(172,NULL,'Associate Professor',NULL,NULL),(173,NULL,'Associate Professor',NULL,NULL),(174,NULL,'Associate Professor',NULL,NULL),(175,NULL,'Assistant Professor',NULL,NULL),(176,NULL,'Assistant Professor',NULL,NULL),(177,NULL,'Assistant Professor',NULL,NULL),(178,NULL,'Assistant Professor',NULL,NULL),(179,NULL,'Assistant Professor',NULL,NULL),(180,NULL,'Assistant Professor',NULL,NULL),(181,NULL,'Assistant Professor',NULL,NULL),(182,NULL,'Professor',NULL,NULL),(183,NULL,'Professor',NULL,NULL),(184,NULL,'Professor',NULL,NULL),(185,NULL,'Professor',NULL,NULL),(186,NULL,'Professor',NULL,NULL),(187,NULL,'Professor',NULL,NULL),(188,NULL,'Professor',NULL,NULL),(189,NULL,'Professor',NULL,NULL),(190,NULL,'Professor',NULL,NULL),(191,NULL,'Professor',NULL,NULL),(192,NULL,'Professor',NULL,NULL),(193,NULL,'Professor',NULL,NULL),(194,NULL,'Professor',NULL,NULL),(195,NULL,'Associate Professor',NULL,NULL),(196,NULL,'Associate Professor',NULL,NULL),(197,NULL,'Associate Professor',NULL,NULL),(198,NULL,'Associate Professor',NULL,NULL),(199,NULL,'Associate Professor',NULL,NULL),(200,NULL,'Associate Professor',NULL,NULL),(201,NULL,'Associate Professor',NULL,NULL),(202,NULL,'Associate Professor',NULL,NULL),(203,NULL,'Associate Professor',NULL,NULL),(204,NULL,'Associate Professor',NULL,NULL),(205,NULL,'Assistant Professor',NULL,NULL),(206,NULL,'Assistant Professor',NULL,NULL),(207,NULL,'Assistant Professor',NULL,NULL),(208,NULL,'Assistant Professor',NULL,NULL),(209,NULL,'Assistant Professor',NULL,NULL),(210,NULL,'Assistant Professor',NULL,NULL),(211,NULL,'Assistant Professor',NULL,NULL),(212,NULL,'Assistant Professor',NULL,NULL),(213,NULL,'Assistant Professor',NULL,NULL),(214,NULL,'Assistant Professor',NULL,NULL),(215,NULL,'Assistant Professor',NULL,NULL),(216,NULL,'Assistant Professor',NULL,NULL),(217,NULL,'Assistant Professor',NULL,NULL),(218,NULL,'Assistant Professor',NULL,NULL),(219,NULL,'Assistant Professor',NULL,NULL),(220,NULL,'Assistant Professor',NULL,NULL),(221,NULL,'Assistant Professor',NULL,NULL),(222,NULL,'Assistant Professor',NULL,NULL),(223,NULL,'Assistant Professor',NULL,NULL),(224,NULL,'Assistant Professor',NULL,NULL),(225,NULL,'Assistant Professor',NULL,NULL),(226,NULL,'Assistant Professor',NULL,NULL),(227,NULL,'Assistant Professor',NULL,NULL),(228,NULL,'Assistant Professor',NULL,NULL),(229,NULL,'Assistant Professor',NULL,NULL),(230,NULL,'Assistant Professor',NULL,NULL),(231,NULL,'Assistant Professor',NULL,NULL),(232,NULL,'Assistant Professor',NULL,NULL),(233,NULL,'Assistant Professor',NULL,NULL),(234,NULL,'Assistant Professor',NULL,NULL),(235,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218216.jpeg'),(236,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218967.png'),(237,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218943.jpeg'),(238,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219083.jpg'),(239,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/COEP/EngineeringPrograms/ElecEng/FacultyMembers/Professor/KUW218944'),(240,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219081.jpg'),(241,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218957.jpg'),(242,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219084.jpg'),(243,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219082.jpg'),(244,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219087.jpg'),(245,NULL,'Associate Professor',NULL,NULL),(246,NULL,'Associate Professor',NULL,NULL),(247,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219096.jpg'),(248,NULL,'Associate Professor',NULL,NULL),(249,NULL,'Associate Professor',NULL,NULL),(250,NULL,'Associate Professor',NULL,NULL),(251,NULL,'Associate Professor',NULL,NULL),(252,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219099.jpg'),(253,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219101.jpg'),(254,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219131.jpg'),(255,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219104.jpg'),(256,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219106.jpg'),(257,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219108.jpg'),(258,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219111.jpg'),(259,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219115.jpg'),(260,NULL,'Assistant Professor',NULL,NULL),(261,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218219.jpeg'),(262,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219118.jpg'),(263,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219120.jpg'),(264,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219122.jpg'),(265,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219124.jpg'),(266,NULL,'Assistant Professor',NULL,NULL),(267,NULL,'Assistant Professor',NULL,NULL),(268,NULL,'Assistant Professor',NULL,NULL),(269,NULL,'Assistant Professor',NULL,NULL),(270,NULL,'Assistant Professor',NULL,NULL),(271,NULL,'Assistant Professor',NULL,NULL),(272,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218225.jpeg'),(273,NULL,'Assistant Professor',NULL,NULL),(274,NULL,'Assistant Professor',NULL,NULL),(275,NULL,'Professor',NULL,NULL),(276,NULL,'Professor',NULL,NULL),(277,NULL,'Professor',NULL,NULL),(278,NULL,'Professor',NULL,NULL),(279,NULL,'Associate Professor',NULL,NULL),(280,NULL,'Associate Professor',NULL,NULL),(281,NULL,'Associate Professor',NULL,NULL),(282,NULL,'Associate Professor',NULL,NULL),(283,NULL,'Associate Professor',NULL,NULL),(284,NULL,'Assistant Professor',NULL,NULL),(285,NULL,'Assistant Professor',NULL,NULL),(286,NULL,'Assistant Professor',NULL,NULL),(287,NULL,'Assistant Professor',NULL,NULL),(288,NULL,'Assistant Professor',NULL,NULL),(289,NULL,'Assistant Professor',NULL,NULL),(290,NULL,'Assistant Professor',NULL,NULL),(291,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219262.jpg'),(292,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219260.jpg'),(293,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219258.jpg'),(294,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219264.jpg'),(295,NULL,'Professor',NULL,NULL),(296,NULL,'Professor',NULL,NULL),(297,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219284.jpg'),(298,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218686.jpeg'),(299,NULL,'Professor',NULL,NULL),(300,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218688.jpeg'),(301,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218690.jpeg'),(302,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218692.jpeg'),(303,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219295.jpg'),(304,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219297.jpg'),(305,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219299.jpg'),(306,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219304.jpg'),(307,NULL,'Associate Professor',NULL,NULL),(308,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219307.jpg'),(309,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219313.jpg'),(310,NULL,'Associate Professor',NULL,NULL),(311,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219318.jpg'),(312,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219329.jpg'),(313,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219331.jpg'),(314,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219333.jpg'),(315,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219335.jpg'),(316,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219337.jpg'),(317,NULL,'Assistant Professor',NULL,NULL),(318,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw218682.jpeg'),(319,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219341.jpg'),(320,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219343.jpg'),(321,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219345.jpg'),(322,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219347.jpg'),(323,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219349.jpg'),(324,NULL,'Assistant Professor',NULL,NULL),(325,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219354.jpg'),(326,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219356.jpg'),(327,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219358.jpg'),(328,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219367.jpg'),(329,NULL,'Assistant Professor',NULL,NULL),(330,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219370.jpg'),(331,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219372.jpg'),(332,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219824.jpg'),(333,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw219826.jpg'),(334,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217989.jpg'),(335,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw215665.png'),(336,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw215877.jpeg'),(337,NULL,'Professor',NULL,NULL),(338,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw216469.jpeg'),(339,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw216674.jpeg'),(340,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217754.jpg'),(341,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217752.jpg'),(342,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217788.jpg'),(343,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217790.jpg'),(344,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217968.jpeg'),(345,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217762.jpg'),(346,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217800.jpg'),(347,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217796.jpg'),(348,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217751.jpg'),(349,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217797.jpg'),(350,NULL,'Assistant Professor',NULL,NULL),(351,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw216672.jpeg'),(352,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217994.jpg'),(353,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/coep/documents/ku_content/kuw217801.jpg'),(354,NULL,'Assistant Professor',NULL,NULL),(355,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275031835749/people/faculty-members/emad-eldin-aly/emad.gif?height=200&width=135'),(356,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275033570566/people/faculty-members/shahariar-huda/shaharaiar.gif?height=200&width=135'),(357,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275039985821/people/faculty-members/ahmad-soltani/ahmad.gif?height=200&width=135'),(358,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275032633579/people/faculty-members/lakdere-benkherouf/lakdere1.jpg'),(359,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275032892524/people/faculty-members/mohamed-ghitany/ghitany.jpg?height=200&width=145'),(360,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275030860276/people/faculty-members/talal-alkhamis/talal.gif?height=200&width=135'),(361,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1348137106790/people/faculty-members/Al-Mutairi-Dhaifalla-Khalid/Dhaif.jpg?height=200&width=182'),(362,NULL,'Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275030689003/people/faculty-members/fahimah-al-awadhi/fahimah.gif'),(363,NULL,'Professor',NULL,NULL),(364,NULL,'Professor',NULL,NULL),(365,NULL,'Associate Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275033287610/people/faculty-members/mohamed-gamal/jamal_habib.gif'),(366,NULL,'Associate Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275030754646/people/faculty-members/noriah-m-a-al-kandari/noriah.gif?height=200&width=136'),(367,NULL,'Associate Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1462870426386/people/faculty-members/reem-abdulla-al-jarallah/Scan1.jpg?height=200&width=144'),(368,NULL,'Associate Professor',NULL,NULL),(369,NULL,'Associate Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1275030638446/people/faculty-members/suja-m-aboukhamseen/suja.gif'),(370,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1395124136868/people/faculty-members/jamal-al-saleh/alsaleh.PNG?height=200&width=134'),(371,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1488270001245/people/faculty-members/intesar-al-mudahakha/intesar.jpg?height=200&width=141'),(372,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1395559716581/people/faculty-members/https-sites-google-com-site-statisticsandor-people-faculty-members-laila-lhalfan/photo.PNG?height=200&width=140'),(373,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1488270054664/people/faculty-members/almazkour-fatemah-b/mazko.png?height=192&width=200'),(374,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1538386986877/people/faculty-members/ahmad-alothman/alothman.jpg?height=200&width=135'),(375,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1542612492497/people/faculty-members/maialfahad/20181119_102200%20%28Small%29.jpg?height=200&width=138'),(376,NULL,'Assistant Professor',NULL,'https://sites.google.com/site/statisticsandor/_/rsrc/1578987789677/people/faculty-members/hajar-m-alkhezi/Photo.png?height=200&width=133'),(392,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/cos/documents/document/kuw068612.jpg'),(393,NULL,'Professor',NULL,NULL),(394,NULL,'Professor',NULL,NULL),(395,NULL,'Associate Professor',NULL,NULL),(396,NULL,'Professor',NULL,NULL),(397,NULL,'Professor',NULL,NULL),(398,NULL,'Professor',NULL,NULL),(399,NULL,'Professor',NULL,NULL),(400,NULL,'Professor',NULL,NULL),(401,NULL,'Associate Professor',NULL,NULL),(402,NULL,'Professor',NULL,NULL),(403,NULL,'Professor',NULL,NULL),(404,NULL,'Professor',NULL,NULL),(405,NULL,'Professor',NULL,NULL),(406,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055777.jpg'),(407,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055837.png'),(408,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055840.jpg'),(409,NULL,'Associate Professor',NULL,NULL),(410,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055861.jpg'),(411,NULL,'Associate Professor',NULL,NULL),(412,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055866.jpg'),(413,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055865.jpg'),(414,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/p_rayner_roberto.png'),(415,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055874.jpg'),(416,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055876.jpg'),(417,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw055873.jpg'),(418,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw095594.jpg'),(419,NULL,'Associate Professor',NULL,NULL),(420,NULL,'Assistant Professor',NULL,NULL),(421,NULL,'Assistant Professor',NULL,NULL),(422,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw093702.jpg'),(423,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw177442.jpg'),(424,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/physcfaculty/documents/ku_content/kuw228075.jpg'),(425,NULL,'Assistant Professor',NULL,NULL),(426,NULL,'Assistant Professor',NULL,NULL),(427,NULL,'Assistant Professor',NULL,NULL),(440,NULL,'Professor',NULL,NULL),(441,NULL,'Associate Professor',NULL,NULL),(442,NULL,'Assistant Professor',NULL,NULL),(443,NULL,'Assistant Professor',NULL,NULL),(444,NULL,'Assistant Professor',NULL,NULL),(445,NULL,'Professor',NULL,NULL),(446,NULL,'Associate Professor',NULL,NULL),(447,NULL,'Assistant Professor',NULL,NULL),(448,NULL,'Professor',NULL,NULL),(449,NULL,'Assistant Professor',NULL,NULL),(450,NULL,'Assistant Professor',NULL,NULL),(451,NULL,'Assistant Professor',NULL,NULL),(452,NULL,'Assistant Professor',NULL,NULL),(453,NULL,'Assistant Professor',NULL,NULL),(454,NULL,'Assistant Professor',NULL,NULL),(455,NULL,'Associate Professor',NULL,NULL),(456,NULL,'Assistant Professor',NULL,NULL),(457,NULL,'Professor',NULL,NULL),(458,NULL,'Assistant Professor',NULL,NULL),(459,NULL,'Associate Professor',NULL,NULL),(460,NULL,'Assistant Professor',NULL,NULL),(461,NULL,'Assistant Professor',NULL,NULL),(462,NULL,'Professor',NULL,NULL),(463,NULL,'Assistant Professor',NULL,NULL),(464,NULL,'Assistant Professor',NULL,NULL),(465,NULL,'Assistant Professor',NULL,NULL),(466,NULL,'Assistant Professor',NULL,NULL),(467,NULL,'Assistant Professor',NULL,NULL),(468,NULL,'Assistant Professor',NULL,NULL),(469,NULL,'Associate Professor',NULL,NULL),(470,NULL,'Professor',NULL,NULL),(471,NULL,'Assistant Professor',NULL,NULL),(472,NULL,'Associate Professor',NULL,NULL),(473,NULL,'Assistant Professor',NULL,NULL),(474,NULL,'Associate Professor',NULL,NULL),(475,NULL,'Assistant Professor',NULL,NULL),(476,NULL,'Assistant Professor',NULL,NULL),(477,NULL,'Associate Professor',NULL,NULL),(478,NULL,'Assistant Professor',NULL,NULL),(479,NULL,'Assistant Professor',NULL,NULL),(480,NULL,'Assistant Professor',NULL,NULL),(481,NULL,'Associate Professor',NULL,NULL),(482,NULL,'Assistant Professor',NULL,NULL),(483,NULL,'Assistant Professor',NULL,NULL),(484,NULL,'Assistant Professor',NULL,NULL),(485,NULL,'Assistant Professor',NULL,NULL),(486,NULL,'Professor',NULL,NULL),(487,NULL,'Assistant Professor',NULL,NULL),(488,NULL,'Assistant Professor',NULL,NULL),(489,NULL,'Assistant Professor',NULL,NULL),(490,NULL,'Associate Professor',NULL,NULL),(491,NULL,'Assistant Professor',NULL,NULL),(492,NULL,'Professor',NULL,NULL),(493,NULL,'Assistant Professor',NULL,NULL),(494,NULL,'Assistant Professor',NULL,NULL),(495,NULL,'Assistant Professor',NULL,NULL),(496,NULL,'Associate Professor',NULL,NULL),(497,NULL,'Professor',NULL,NULL),(498,NULL,'Assistant Professor',NULL,NULL),(499,NULL,'Assistant Professor',NULL,NULL),(500,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199774.jpg'),(501,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199568.png'),(502,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199569.jpeg'),(503,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199570.png'),(504,NULL,'Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199571.jpg'),(505,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199572.jpg'),(506,NULL,'Associate Professor',NULL,NULL),(507,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199574.png'),(508,NULL,'Associate Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199775.jpg'),(509,NULL,'Assistant Professor',NULL,NULL),(510,NULL,'Assistant Professor',NULL,NULL),(511,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199776.jpeg'),(512,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199777.jpg'),(513,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199778.jpg'),(514,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199779.jpg'),(515,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199780.jpeg'),(516,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199781.jpeg'),(517,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199782.jpeg'),(518,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199783.jpeg'),(519,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw241349.jpg'),(520,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199785.jpeg'),(521,NULL,'Assistant Professor',NULL,'http://kuweb.ku.edu.kw/cs/groups/ees/documents/ku_content/kuw199786.jpeg'),(605,NULL,'Assistant Professor',NULL,'https://www.kfas.org/media/6f4800cb-efd2-4f42-88f6-a3acd6ae5836/RvjWFA/Board-of-Directors/Dr.-Amani-Sulaiman-Buqammaz2.jpg'),(606,NULL,'Assistant Professor',NULL,NULL),(607,NULL,'Assistant Professor',NULL,NULL),(608,NULL,'Assistant Professor',NULL,NULL),(609,NULL,'Assistant Professor',NULL,NULL),(610,NULL,'Assistant Professor',NULL,NULL),(611,NULL,'Assistant Professor',NULL,NULL),(612,NULL,'Assistant Professor',NULL,NULL),(613,NULL,'Assistant Professor',NULL,NULL),(614,NULL,'Assistant Professor',NULL,NULL),(615,NULL,'Assistant Professor',NULL,NULL),(616,NULL,'Assistant Professor',NULL,NULL),(617,NULL,'Assistant Professor',NULL,NULL),(618,NULL,'Assistant Professor',NULL,NULL),(619,NULL,'Assistant Professor',NULL,NULL),(620,NULL,'Assistant Professor',NULL,NULL),(621,NULL,'Assistant Professor',NULL,NULL),(622,NULL,'Assistant Professor',NULL,NULL);
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
  `masters_from` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  UNIQUE KEY `ta_fac_UK` (`faculty_id`),
  CONSTRAINT `TA_fid_FK` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teaching_Assistant`
--

LOCK TABLES `Teaching_Assistant` WRITE;
/*!40000 ALTER TABLE `Teaching_Assistant` DISABLE KEYS */;
INSERT INTO `Teaching_Assistant` VALUES (23,'Kuwait University',NULL),(24,'Kuwait University',NULL),(25,'Kuwait University',NULL),(26,'Kuwait University',NULL),(27,'Kuwait University',NULL),(28,'Kuwait University',NULL),(29,'Kuwait University',NULL),(30,'University of Massachusetts',NULL),(31,'Kuwait University',NULL),(32,'Kuwait University',NULL),(33,'Kuwait University',NULL),(100,'NULL',NULL),(101,'NULL',NULL),(102,'NULL',NULL),(103,'NULL',NULL),(104,'NULL',NULL),(105,'NULL',NULL),(106,'NULL',NULL),(107,'NULL',NULL),(108,'NULL',NULL),(144,'NULL',NULL),(145,'Portland State University',NULL),(146,'Kuwait University',NULL),(147,'Kuwait University',NULL),(148,'Kuwait University',NULL),(149,'Kuwait University',NULL),(150,'Kuwait University',NULL),(151,'NULL',NULL),(152,'NULL',NULL),(153,'NULL',NULL),(154,'NULL',NULL),(155,'NULL',NULL),(156,'NULL',NULL),(157,'NULL',NULL),(158,'Kuwait University',NULL),(378,NULL,NULL),(379,NULL,NULL),(380,NULL,NULL),(381,NULL,NULL),(382,NULL,NULL),(383,NULL,NULL),(384,NULL,NULL),(385,NULL,NULL),(386,NULL,NULL),(387,NULL,NULL),(388,NULL,NULL),(389,NULL,NULL),(390,NULL,NULL),(391,NULL,NULL),(428,NULL,NULL),(429,NULL,NULL),(430,NULL,NULL),(431,NULL,NULL),(432,NULL,NULL),(433,NULL,NULL),(434,NULL,NULL),(435,NULL,NULL),(436,NULL,NULL),(437,NULL,NULL),(438,NULL,NULL),(439,NULL,NULL),(468,NULL,NULL),(623,NULL,NULL),(624,NULL,NULL),(625,NULL,NULL),(626,NULL,NULL),(627,NULL,NULL),(628,NULL,NULL);
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
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailaddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`),
  CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailaddress`
--

LOCK TABLES `account_emailaddress` WRITE;
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
INSERT INTO `account_emailaddress` VALUES (1,'selman.mohamad@cs.ku.edu.kw',1,1,32),(2,'mo7amadsalman2012@gmail.com',1,1,33);
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailconfirmation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`),
  CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailconfirmation`
--

LOCK TABLES `account_emailconfirmation` WRITE;
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add auth group',1,'add_authgroup'),(2,'Can change auth group',1,'change_authgroup'),(3,'Can delete auth group',1,'delete_authgroup'),(4,'Can view auth group',1,'view_authgroup'),(5,'Can add auth group permissions',2,'add_authgrouppermissions'),(6,'Can change auth group permissions',2,'change_authgrouppermissions'),(7,'Can delete auth group permissions',2,'delete_authgrouppermissions'),(8,'Can view auth group permissions',2,'view_authgrouppermissions'),(9,'Can add auth permission',3,'add_authpermission'),(10,'Can change auth permission',3,'change_authpermission'),(11,'Can delete auth permission',3,'delete_authpermission'),(12,'Can view auth permission',3,'view_authpermission'),(13,'Can add auth user',4,'add_authuser'),(14,'Can change auth user',4,'change_authuser'),(15,'Can delete auth user',4,'delete_authuser'),(16,'Can view auth user',4,'view_authuser'),(17,'Can add auth user groups',5,'add_authusergroups'),(18,'Can change auth user groups',5,'change_authusergroups'),(19,'Can delete auth user groups',5,'delete_authusergroups'),(20,'Can view auth user groups',5,'view_authusergroups'),(21,'Can add auth user user permissions',6,'add_authuseruserpermissions'),(22,'Can change auth user user permissions',6,'change_authuseruserpermissions'),(23,'Can delete auth user user permissions',6,'delete_authuseruserpermissions'),(24,'Can view auth user user permissions',6,'view_authuseruserpermissions'),(25,'Can add course',7,'add_course'),(26,'Can change course',7,'change_course'),(27,'Can delete course',7,'delete_course'),(28,'Can view course',7,'view_course'),(29,'Can add department',8,'add_department'),(30,'Can change department',8,'change_department'),(31,'Can delete department',8,'delete_department'),(32,'Can view department',8,'view_department'),(33,'Can add dept generalcomments',9,'add_deptgeneralcomments'),(34,'Can change dept generalcomments',9,'change_deptgeneralcomments'),(35,'Can delete dept generalcomments',9,'delete_deptgeneralcomments'),(36,'Can view dept generalcomments',9,'view_deptgeneralcomments'),(37,'Can add django admin log',10,'add_djangoadminlog'),(38,'Can change django admin log',10,'change_djangoadminlog'),(39,'Can delete django admin log',10,'delete_djangoadminlog'),(40,'Can view django admin log',10,'view_djangoadminlog'),(41,'Can add django content type',11,'add_djangocontenttype'),(42,'Can change django content type',11,'change_djangocontenttype'),(43,'Can delete django content type',11,'delete_djangocontenttype'),(44,'Can view django content type',11,'view_djangocontenttype'),(45,'Can add django migrations',12,'add_djangomigrations'),(46,'Can change django migrations',12,'change_djangomigrations'),(47,'Can delete django migrations',12,'delete_djangomigrations'),(48,'Can view django migrations',12,'view_djangomigrations'),(49,'Can add django session',13,'add_djangosession'),(50,'Can change django session',13,'change_djangosession'),(51,'Can delete django session',13,'delete_djangosession'),(52,'Can view django session',13,'view_djangosession'),(53,'Can add faculty',14,'add_faculty'),(54,'Can change faculty',14,'change_faculty'),(55,'Can delete faculty',14,'delete_faculty'),(56,'Can view faculty',14,'view_faculty'),(57,'Can add faculty course',15,'add_facultycourse'),(58,'Can change faculty course',15,'change_facultycourse'),(59,'Can delete faculty course',15,'delete_facultycourse'),(60,'Can view faculty course',15,'view_facultycourse'),(61,'Can add faculty miscellaneous',16,'add_facultymiscellaneous'),(62,'Can change faculty miscellaneous',16,'change_facultymiscellaneous'),(63,'Can delete faculty miscellaneous',16,'delete_facultymiscellaneous'),(64,'Can view faculty miscellaneous',16,'view_facultymiscellaneous'),(65,'Can add faculty personality',17,'add_facultypersonality'),(66,'Can change faculty personality',17,'change_facultypersonality'),(67,'Can delete faculty personality',17,'delete_facultypersonality'),(68,'Can view faculty personality',17,'view_facultypersonality'),(69,'Can add faculty workload',18,'add_facultyworkload'),(70,'Can change faculty workload',18,'change_facultyworkload'),(71,'Can delete faculty workload',18,'delete_facultyworkload'),(72,'Can view faculty workload',18,'view_facultyworkload'),(73,'Can add professor',19,'add_professor'),(74,'Can change professor',19,'change_professor'),(75,'Can delete professor',19,'delete_professor'),(76,'Can view professor',19,'view_professor'),(77,'Can add similar courses',20,'add_similarcourses'),(78,'Can change similar courses',20,'change_similarcourses'),(79,'Can delete similar courses',20,'delete_similarcourses'),(80,'Can view similar courses',20,'view_similarcourses'),(81,'Can add similar faculty',21,'add_similarfaculty'),(82,'Can change similar faculty',21,'change_similarfaculty'),(83,'Can delete similar faculty',21,'delete_similarfaculty'),(84,'Can view similar faculty',21,'view_similarfaculty'),(85,'Can add teaching assistant',22,'add_teachingassistant'),(86,'Can change teaching assistant',22,'change_teachingassistant'),(87,'Can delete teaching assistant',22,'delete_teachingassistant'),(88,'Can view teaching assistant',22,'view_teachingassistant'),(89,'Can add user course rev',23,'add_usercourserev'),(90,'Can change user course rev',23,'change_usercourserev'),(91,'Can delete user course rev',23,'delete_usercourserev'),(92,'Can view user course rev',23,'view_usercourserev'),(93,'Can add user dept',24,'add_userdept'),(94,'Can change user dept',24,'change_userdept'),(95,'Can delete user dept',24,'delete_userdept'),(96,'Can view user dept',24,'view_userdept'),(97,'Can add user faculty rev',25,'add_userfacultyrev'),(98,'Can change user faculty rev',25,'change_userfacultyrev'),(99,'Can delete user faculty rev',25,'delete_userfacultyrev'),(100,'Can view user faculty rev',25,'view_userfacultyrev'),(101,'Can add log entry',26,'add_logentry'),(102,'Can change log entry',26,'change_logentry'),(103,'Can delete log entry',26,'delete_logentry'),(104,'Can view log entry',26,'view_logentry'),(105,'Can add permission',27,'add_permission'),(106,'Can change permission',27,'change_permission'),(107,'Can delete permission',27,'delete_permission'),(108,'Can view permission',27,'view_permission'),(109,'Can add group',28,'add_group'),(110,'Can change group',28,'change_group'),(111,'Can delete group',28,'delete_group'),(112,'Can view group',28,'view_group'),(113,'Can add user',29,'add_user'),(114,'Can change user',29,'change_user'),(115,'Can delete user',29,'delete_user'),(116,'Can view user',29,'view_user'),(117,'Can add content type',30,'add_contenttype'),(118,'Can change content type',30,'change_contenttype'),(119,'Can delete content type',30,'delete_contenttype'),(120,'Can view content type',30,'view_contenttype'),(121,'Can add session',31,'add_session'),(122,'Can change session',31,'change_session'),(123,'Can delete session',31,'delete_session'),(124,'Can view session',31,'view_session'),(125,'Can add user queue',32,'add_userqueue'),(126,'Can change user queue',32,'change_userqueue'),(127,'Can delete user queue',32,'delete_userqueue'),(128,'Can view user queue',32,'view_userqueue'),(129,'Can add user watch course',33,'add_userwatchcourse'),(130,'Can change user watch course',33,'change_userwatchcourse'),(131,'Can delete user watch course',33,'delete_userwatchcourse'),(132,'Can view user watch course',33,'view_userwatchcourse'),(133,'Can add user watch faculty',34,'add_userwatchfaculty'),(134,'Can change user watch faculty',34,'change_userwatchfaculty'),(135,'Can delete user watch faculty',34,'delete_userwatchfaculty'),(136,'Can view user watch faculty',34,'view_userwatchfaculty'),(137,'Can add site',35,'add_site'),(138,'Can change site',35,'change_site'),(139,'Can delete site',35,'delete_site'),(140,'Can view site',35,'view_site'),(141,'Can add email address',36,'add_emailaddress'),(142,'Can change email address',36,'change_emailaddress'),(143,'Can delete email address',36,'delete_emailaddress'),(144,'Can view email address',36,'view_emailaddress'),(145,'Can add email confirmation',37,'add_emailconfirmation'),(146,'Can change email confirmation',37,'change_emailconfirmation'),(147,'Can delete email confirmation',37,'delete_emailconfirmation'),(148,'Can view email confirmation',37,'view_emailconfirmation'),(149,'Can add social account',38,'add_socialaccount'),(150,'Can change social account',38,'change_socialaccount'),(151,'Can delete social account',38,'delete_socialaccount'),(152,'Can view social account',38,'view_socialaccount'),(153,'Can add social application',39,'add_socialapp'),(154,'Can change social application',39,'change_socialapp'),(155,'Can delete social application',39,'delete_socialapp'),(156,'Can view social application',39,'view_socialapp'),(157,'Can add social application token',40,'add_socialtoken'),(158,'Can change social application token',40,'change_socialtoken'),(159,'Can delete social application token',40,'delete_socialtoken'),(160,'Can view social application token',40,'view_socialtoken'),(161,'Can add django site',41,'add_djangosite'),(162,'Can change django site',41,'change_djangosite'),(163,'Can delete django site',41,'delete_djangosite'),(164,'Can view django site',41,'view_djangosite'),(165,'Can add socialaccount socialaccount',42,'add_socialaccountsocialaccount'),(166,'Can change socialaccount socialaccount',42,'change_socialaccountsocialaccount'),(167,'Can delete socialaccount socialaccount',42,'delete_socialaccountsocialaccount'),(168,'Can view socialaccount socialaccount',42,'view_socialaccountsocialaccount'),(169,'Can add socialaccount socialapp',43,'add_socialaccountsocialapp'),(170,'Can change socialaccount socialapp',43,'change_socialaccountsocialapp'),(171,'Can delete socialaccount socialapp',43,'delete_socialaccountsocialapp'),(172,'Can view socialaccount socialapp',43,'view_socialaccountsocialapp'),(173,'Can add socialaccount socialapp sites',44,'add_socialaccountsocialappsites'),(174,'Can change socialaccount socialapp sites',44,'change_socialaccountsocialappsites'),(175,'Can delete socialaccount socialapp sites',44,'delete_socialaccountsocialappsites'),(176,'Can view socialaccount socialapp sites',44,'view_socialaccountsocialappsites'),(177,'Can add socialaccount socialtoken',45,'add_socialaccountsocialtoken'),(178,'Can change socialaccount socialtoken',45,'change_socialaccountsocialtoken'),(179,'Can delete socialaccount socialtoken',45,'delete_socialaccountsocialtoken'),(180,'Can view socialaccount socialtoken',45,'view_socialaccountsocialtoken'),(181,'Can add account emailaddress',46,'add_accountemailaddress'),(182,'Can change account emailaddress',46,'change_accountemailaddress'),(183,'Can delete account emailaddress',46,'delete_accountemailaddress'),(184,'Can view account emailaddress',46,'view_accountemailaddress'),(185,'Can add account emailconfirmation',47,'add_accountemailconfirmation'),(186,'Can change account emailconfirmation',47,'change_accountemailconfirmation'),(187,'Can delete account emailconfirmation',47,'delete_accountemailconfirmation'),(188,'Can view account emailconfirmation',47,'view_accountemailconfirmation'),(189,'Can add language instructor',48,'add_languageinstructor'),(190,'Can change language instructor',48,'change_languageinstructor'),(191,'Can delete language instructor',48,'delete_languageinstructor'),(192,'Can view language instructor',48,'view_languageinstructor'),(193,'Can add user',49,'add_user'),(194,'Can change user',49,'change_user'),(195,'Can delete user',49,'delete_user'),(196,'Can view user',49,'view_user'),(197,'Can add user react courserev',50,'add_userreactcourserev'),(198,'Can change user react courserev',50,'change_userreactcourserev'),(199,'Can delete user react courserev',50,'delete_userreactcourserev'),(200,'Can view user react courserev',50,'view_userreactcourserev'),(201,'Can add user react facultyrev',51,'add_userreactfacultyrev'),(202,'Can change user react facultyrev',51,'change_userreactfacultyrev'),(203,'Can delete user react facultyrev',51,'delete_userreactfacultyrev'),(204,'Can view user react facultyrev',51,'view_userreactfacultyrev'),(205,'Can add student',52,'add_student'),(206,'Can change student',52,'change_student'),(207,'Can delete student',52,'delete_student'),(208,'Can view student',52,'view_student');
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
  `major` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$RYX2M3QRvoQM50MwUwZ5qC$quSW/Vx3JmzmypdKl2gJAKxH5xF7EKIvH4cr70lwZA0=','2022-04-12 08:12:53.233930',1,'ratezone22','','','ratezone22@gmail.com',1,1,'2022-03-23 17:01:34.453761',0,0,NULL),(2,'pbkdf2_sha256$320000$gdB3gUdHX1WVkNda3OPKBk$Ydy1AkpTzZ0eRs125CkcCc3iNsJNnkhLa+GN/o21Y1k=',NULL,1,'moe_scrum','Mohamad','Salman','moe@gmail.com',0,1,'2022-03-23 17:02:35.000000',0,0,NULL),(3,'pbkdf2_sha256$320000$8DToGIq4gwoHjb8y1vkpRD$AdiyrZvQY6Cxw+RvYm01R4YkLnTtZyC8SGYzrwSEA1M=','2022-04-04 05:30:51.813427',0,'dummy1','','','',0,1,'2022-03-26 13:54:12.764420',0,0,NULL),(4,'pbkdf2_sha256$320000$EIPL0lYPryxz4XDzYiKkBY$IzmZ8Pa2cSqZWnQhi3zlzFPi2q5/w+9vX01ijDjKK7M=',NULL,0,'dummy2','','','',0,1,'2022-03-26 13:54:26.674506',0,0,NULL),(5,'pbkdf2_sha256$320000$sQfZj83ixNEEDMf3vCp5eK$OAoYePnG/FnFlGMGKN36lBkrtmsy4lC1yxUH+ftV/vM=',NULL,0,'dummy3','','','',0,1,'2022-03-26 13:54:33.183527',0,0,NULL),(6,'pbkdf2_sha256$320000$GabItj3NhOQfJJMmf9weuS$5O2QCMaS61yyL2VkT3hHe7LklHd6B7O3ZqnftjjOGes=',NULL,0,'dummy4','','','',0,1,'2022-03-26 13:54:39.954960',0,0,NULL),(7,'pbkdf2_sha256$320000$hXWz6mWo2akOSa4xQ5Pc4m$spEZipplPJObAtGMXvLjS9A4dCxpB3uvRiKO0z2GMpw=',NULL,0,'dummy5','','','',0,1,'2022-03-26 13:55:13.791592',0,0,NULL),(8,'pbkdf2_sha256$320000$3bOjVaTsZlvR6YaT8zBoek$r5zH60ImNGaanoKel7CXjcXHgvNLHRuPhIftnTiKP6E=',NULL,0,'dummy6','','','',0,1,'2022-03-26 13:55:22.050955',0,0,NULL),(9,'pbkdf2_sha256$320000$JIZrAXAVgdm4vcK3sqQSgI$0ttDdU9p0OCyyKUW9CLx4OaxgwJr840tjEa8trCdVR0=',NULL,0,'dummy7','','','',0,1,'2022-03-28 22:16:17.822302',0,0,NULL),(10,'pbkdf2_sha256$320000$hXQDrHy4KWwxtdVnmAl9vA$mI5srC6pbX/9QEJyMDZrtSEdsbxImgxBEUWM06GegHE=',NULL,0,'dummy8','','','',0,1,'2022-03-28 22:16:29.121956',0,0,NULL),(11,'pbkdf2_sha256$320000$eyAnvy0j8wzNRFS9E0XtSM$ZszEdAFgiW2bgkOyn7Ld73wTTKhD13ZoVLl5sSDAMUY=',NULL,0,'dummy9','','','',0,1,'2022-03-28 22:16:39.822134',0,0,NULL),(12,'pbkdf2_sha256$320000$VcUYG6n4dinyK2hapDidMY$hUG3PPFQNdC1r3dFAKLFhUlmtDRkD+G839t/zjXNYoE=',NULL,0,'dummy10','','','',0,1,'2022-03-28 22:17:30.162139',0,0,NULL),(13,'pbkdf2_sha256$320000$4VPiPDyU6nqr02wzZPvrPi$AwfAN1R1jrgZfWFiq/P7fxGGsbD9hHY0RKBZPHDpXOU=',NULL,0,'dummy11','','','',0,1,'2022-03-28 22:17:39.594385',0,0,NULL),(14,'pbkdf2_sha256$320000$SFnCKnUXoJ500iJkNJFftD$3cLYc02tgoFW6FK7GhvVfpe6KjQBIJzpBdNbd9R52XU=',NULL,0,'dummy12','','','',0,1,'2022-03-28 22:18:12.529987',0,0,NULL),(15,'pbkdf2_sha256$320000$VzZNGeBhaa7u9Tk67ZsDp8$NRX+6j1WejlHVgoipmvo+JG6Q1p8vrvv3gQd4T7b478=',NULL,0,'dummy13','','','',0,1,'2022-03-28 22:19:04.565933',0,0,NULL),(16,'pbkdf2_sha256$320000$94n2mQbiGf6v8MGT894Jdh$vZuoW7MDPSV0DlgaNHJfzl4rO/3j721e1EAwi3LoicQ=',NULL,0,'dummy14','','','',0,1,'2022-03-28 22:19:23.161968',0,0,NULL),(17,'pbkdf2_sha256$320000$Cxp6v0KgxiFU4meVqwPb9k$YYRURs62C2Nn2ZdtCeLV9R39hf9mURSx/3Rsvn89abA=',NULL,0,'dummy15','','','',0,1,'2022-03-28 22:19:36.822497',0,0,NULL),(18,'pbkdf2_sha256$320000$O4yrbzPSMBYQcmJWviln7H$BG620G8BTS4th8AHTxTZkMTQxrS7Ax75ntQQ6bi/NNo=',NULL,0,'dummy16','','','',0,1,'2022-03-28 22:19:56.474083',0,0,NULL),(19,'pbkdf2_sha256$320000$nj0fsALHZrYNgCQN1eE3Lp$M4eVBYjy4NGNp9iNZIXW9l2syp8vV900zqovCFtUEdg=',NULL,0,'dummy17','','','',0,1,'2022-03-28 22:20:14.322090',0,0,NULL),(20,'pbkdf2_sha256$320000$wVIf4bKXr3xjjb2yhG7aYN$vGgdi8LOLvLXEltjUcFVkn5ZY17k1B7E6AVC5KYyXUo=',NULL,0,'dummy18','','','',0,1,'2022-03-28 22:20:23.362166',0,0,NULL),(21,'pbkdf2_sha256$320000$RHv3seeF4Wqvymd3uXi7NZ$krOnyK76cOrCYRqr/arGjE06QfRqdTn62pOFfTTXyI8=',NULL,0,'dummy19','','','',0,1,'2022-03-28 22:21:13.922382',0,0,NULL),(22,'pbkdf2_sha256$320000$g236fE5hGWuUnpc5wRBefO$pC0qLj11hf+iFeQGM8kuVlkLZD5osOQk6f6JtDg5Wh0=',NULL,0,'dummy20','','','',0,1,'2022-03-28 22:22:37.542061',0,0,NULL),(23,'pbkdf2_sha256$320000$ihz8nVQnkhsfsfmvHiGgVA$67IAtJDWqGvkfosfl0/rtr5TK4/toIGaiUxR/2sXspI=',NULL,0,'dummy21','','','',0,1,'2022-03-28 22:22:53.610311',0,0,NULL),(24,'pbkdf2_sha256$320000$5L48eKxPDeXZvz6BVVGvH6$r2guEFv5n3aZUmU2OsCzJGrV049t2/d5kemNlCGGZhY=',NULL,0,'dummy22','','','',0,1,'2022-03-28 22:23:12.362110',0,0,NULL),(25,'pbkdf2_sha256$320000$jaRGWEOro6cxy5bmwULAda$38nHBstHuVmvYYcTONDhjOQgf9kKgPITtDJt2utt70c=',NULL,0,'dummy23','','','',0,1,'2022-03-28 22:23:25.891986',0,0,NULL),(26,'pbkdf2_sha256$320000$zpXi6Ld1AHGiOoXcnMFY8Y$CMGc47K9cRmK7AeqCDOsHjqcBI8RfgaQTjazmvBi2g8=',NULL,0,'dummy24','','','',0,1,'2022-03-28 22:23:37.022373',0,0,NULL),(27,'pbkdf2_sha256$320000$qz7UtSVeklP4COwXdhESEe$sOWXTVxhQrhMjglHuvzE/IAZi7v3KyT5Vy74lACgx8g=',NULL,0,'dummy25','','','',0,1,'2022-03-28 22:23:55.061964',0,0,NULL),(28,'pbkdf2_sha256$320000$tn7B4YXSeHkjmGvZcYlMEu$dQ0takqetuoq7ey83TYjPjlCxOO7u2BmciFJNg9rGWk=','2022-04-11 08:00:41.354740',0,'omar23','omar','','omarzak2323@gmail.com',0,1,'2022-03-29 03:14:40.405237',0,0,NULL),(30,'pbkdf2_sha256$320000$uqe4idYd5LRgizO0OiiqiR$0ypu12AVRzPigeapBPIxKOxtj4necCvHl5q7gg+TMJ0=','2022-04-08 16:23:01.134249',0,'TechnoKing','techno','','techno@gmail.com',0,1,'2022-04-04 08:57:28.090854',0,0,NULL),(31,'pbkdf2_sha256$320000$zzLwlo8GDp9g1KtCNsG9VL$6JLIBBGnEZmkNIMCcqCuYavutRe942dMyE+08AmSIpk=','2022-04-12 08:13:26.506245',0,'m','Mohamad','','mohamad.selman@sci.ku.edu.kw',0,1,'2022-04-12 08:13:21.484324',0,0,NULL),(32,'!7vHWjsiTsIueqkj9OPkr1VvEKmlGacwvwP3xJyBC','2022-04-17 08:04:19.626607',0,'mohamad','MOHAMAD  ','SELMAN','selman.mohamad@cs.ku.edu.kw',0,1,'2022-04-16 21:39:21.198644',0,0,NULL),(33,'!dHACmZ0Dw3RgPc4rNTvbzzcNNumlMDQcxnLtwm95','2022-04-17 08:08:06.427314',0,'mohamad9','Mohamad','Salman','mo7amadsalman2012@gmail.com',0,1,'2022-04-17 08:08:06.362228',0,0,NULL),(34,'pbkdf2_sha256$320000$Jq9QNV0hZ0ogS1eYetOI1o$f0LNAOSYwWqvRvJj9O6IghXpFvYJv/YnJBIdaKYtlWs=','2022-04-17 11:09:51.808317',0,'aziz','aziz','','2152135999@cs.ku.edu.kw',0,1,'2022-04-17 11:09:37.830962',0,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-23 17:02:36.025030','2','moe_scrum',1,'[{\"added\": {}}]',29,1),(2,'2022-03-23 17:03:00.638076','2','moe_scrum',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',29,1),(3,'2022-03-26 13:54:13.001897','3','dummy1',1,'[{\"added\": {}}]',29,1),(4,'2022-03-26 13:54:26.904553','4','dummy2',1,'[{\"added\": {}}]',29,1),(5,'2022-03-26 13:54:33.419410','5','dummy3',1,'[{\"added\": {}}]',29,1),(6,'2022-03-26 13:54:40.188694','6','dummy4',1,'[{\"added\": {}}]',29,1),(7,'2022-03-26 13:55:14.023782','7','dummy5',1,'[{\"added\": {}}]',29,1),(8,'2022-03-26 13:55:22.282601','8','dummy6',1,'[{\"added\": {}}]',29,1),(9,'2022-03-26 16:07:02.111209','2','moe_scrum',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Superuser status\"]}}]',29,1),(10,'2022-03-28 22:16:18.054277','9','dummy7',1,'[{\"added\": {}}]',29,1),(11,'2022-03-28 22:16:29.362445','10','dummy8',1,'[{\"added\": {}}]',29,1),(12,'2022-03-28 22:16:40.052372','11','dummy9',1,'[{\"added\": {}}]',29,1),(13,'2022-03-28 22:17:30.391850','12','dummy10',1,'[{\"added\": {}}]',29,1),(14,'2022-03-28 22:17:39.825635','13','dummy11',1,'[{\"added\": {}}]',29,1),(15,'2022-03-28 22:18:12.759296','14','dummy12',1,'[{\"added\": {}}]',29,1),(16,'2022-03-28 22:19:04.795772','15','dummy13',1,'[{\"added\": {}}]',29,1),(17,'2022-03-28 22:19:23.401366','16','dummy14',1,'[{\"added\": {}}]',29,1),(18,'2022-03-28 22:19:37.051616','17','dummy15',1,'[{\"added\": {}}]',29,1),(19,'2022-03-28 22:19:56.713306','18','dummy16',1,'[{\"added\": {}}]',29,1),(20,'2022-03-28 22:20:14.553749','19','dummy17',1,'[{\"added\": {}}]',29,1),(21,'2022-03-28 22:20:23.591920','20','dummy18',1,'[{\"added\": {}}]',29,1),(22,'2022-03-28 22:21:14.152868','21','dummy19',1,'[{\"added\": {}}]',29,1),(23,'2022-03-28 22:22:37.773916','22','dummy20',1,'[{\"added\": {}}]',29,1),(24,'2022-03-28 22:22:53.842091','23','dummy21',1,'[{\"added\": {}}]',29,1),(25,'2022-03-28 22:23:12.592473','24','dummy22',1,'[{\"added\": {}}]',29,1),(26,'2022-03-28 22:23:26.132536','25','dummy23',1,'[{\"added\": {}}]',29,1),(27,'2022-03-28 22:23:37.264103','26','dummy24',1,'[{\"added\": {}}]',29,1),(28,'2022-03-28 22:23:55.301929','27','dummy25',1,'[{\"added\": {}}]',29,1),(29,'2022-04-04 08:56:57.269341','29','technoking',3,'',29,1),(30,'2022-04-16 21:28:53.216384','1','example.com',3,'',35,1),(31,'2022-04-16 21:30:25.872477','2','ratezone.io',1,'[{\"added\": {}}]',35,1),(32,'2022-04-16 21:38:30.431336','1','Ratezone',1,'[{\"added\": {}}]',39,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (36,'account','emailaddress'),(37,'account','emailconfirmation'),(26,'admin','logentry'),(28,'auth','group'),(27,'auth','permission'),(29,'auth','user'),(30,'contenttypes','contenttype'),(46,'main','accountemailaddress'),(47,'main','accountemailconfirmation'),(1,'main','authgroup'),(2,'main','authgrouppermissions'),(3,'main','authpermission'),(4,'main','authuser'),(5,'main','authusergroups'),(6,'main','authuseruserpermissions'),(7,'main','course'),(8,'main','department'),(9,'main','deptgeneralcomments'),(10,'main','djangoadminlog'),(11,'main','djangocontenttype'),(12,'main','djangomigrations'),(13,'main','djangosession'),(41,'main','djangosite'),(14,'main','faculty'),(15,'main','facultycourse'),(16,'main','facultymiscellaneous'),(17,'main','facultypersonality'),(18,'main','facultyworkload'),(48,'main','languageinstructor'),(19,'main','professor'),(20,'main','similarcourses'),(21,'main','similarfaculty'),(42,'main','socialaccountsocialaccount'),(43,'main','socialaccountsocialapp'),(44,'main','socialaccountsocialappsites'),(45,'main','socialaccountsocialtoken'),(52,'main','student'),(22,'main','teachingassistant'),(49,'main','user'),(23,'main','usercourserev'),(24,'main','userdept'),(25,'main','userfacultyrev'),(32,'main','userqueue'),(50,'main','userreactcourserev'),(51,'main','userreactfacultyrev'),(33,'main','userwatchcourse'),(34,'main','userwatchfaculty'),(31,'sessions','session'),(35,'sites','site'),(38,'socialaccount','socialaccount'),(39,'socialaccount','socialapp'),(40,'socialaccount','socialtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-23 16:34:26.597437'),(2,'auth','0001_initial','2022-03-23 16:34:27.444514'),(3,'admin','0001_initial','2022-03-23 16:34:27.673187'),(4,'admin','0002_logentry_remove_auto_add','2022-03-23 16:34:27.687743'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-23 16:34:27.703770'),(6,'contenttypes','0002_remove_content_type_name','2022-03-23 16:34:27.833446'),(7,'auth','0002_alter_permission_name_max_length','2022-03-23 16:34:27.920871'),(8,'auth','0003_alter_user_email_max_length','2022-03-23 16:34:27.957868'),(9,'auth','0004_alter_user_username_opts','2022-03-23 16:34:27.970631'),(10,'auth','0005_alter_user_last_login_null','2022-03-23 16:34:28.050703'),(11,'auth','0006_require_contenttypes_0002','2022-03-23 16:34:28.056497'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-23 16:34:28.069484'),(13,'auth','0008_alter_user_username_max_length','2022-03-23 16:34:28.158680'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-23 16:34:28.252507'),(15,'auth','0010_alter_group_name_max_length','2022-03-23 16:34:28.283341'),(16,'auth','0011_update_proxy_permissions','2022-03-23 16:34:28.296302'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-23 16:34:28.406116'),(18,'main','0001_initial','2022-03-23 16:34:28.438276'),(19,'main','0002_auto_20220318_0716','2022-03-23 16:34:28.458714'),(20,'main','0003_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_course','2022-03-23 16:34:28.490130'),(21,'sessions','0001_initial','2022-03-23 16:34:28.555688'),(22,'main','0004_userqueue','2022-03-29 04:16:21.385482'),(23,'main','0005_userwatchcourse_userwatchfaculty','2022-04-08 09:33:07.902236'),(24,'account','0001_initial','2022-04-16 21:28:01.317270'),(25,'account','0002_email_max_length','2022-04-16 21:28:01.355419'),(26,'sites','0001_initial','2022-04-16 21:28:01.393372'),(27,'sites','0002_alter_domain_unique','2022-04-16 21:28:01.426729'),(28,'socialaccount','0001_initial','2022-04-16 21:28:02.321919'),(29,'socialaccount','0002_token_max_lengths','2022-04-16 21:28:02.413891'),(30,'socialaccount','0003_extra_data_default_dict','2022-04-16 21:28:02.432692'),(31,'main','0002_djangosite_socialaccountsocialaccount_socialaccountsocialapp_socialaccountsocialappsites_socialaccou','2022-04-20 14:39:32.193017'),(32,'main','0003_accountemailaddress_accountemailconfirmation_and_more','2022-04-20 14:39:32.212418'),(33,'main','0003_accountemailaddress_accountemailconfirmation_languageinstructor_user','2022-04-21 22:30:42.710273'),(34,'main','0004_userreactcourserev_userreactfacultyrev','2022-04-21 22:30:42.731901'),(35,'main','0005_merge_20220422_0130','2022-04-21 22:30:42.739470'),(36,'main','0005_auto_20220422_0331','2022-04-22 00:59:10.078013'),(37,'main','0006_merge_20220422_0358','2022-04-22 00:59:10.086681');
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
INSERT INTO `django_session` VALUES ('31nmukb9w96155at08cbowqzc9imp7bt','.eJxVjEEOwiAURO_C2jTwK1jc2Ys0w-cbGhuaWFgZ7y41XehuZt7MvNSEWtJUN3lOc1RX1ZM6_YYB_JC8EyzLHndgXmsu3bdz4K27NSe5zIwyr3k8Vn9XCVtqPxS894JIAZbZnTmIRrQRRjujgxgrdHcMIivaNE2mt94zBicX6EG9PwnyPR0:1nfzqz:-REtwJ7H0cWmw__V-M6eXrx7c2rH4jTu4CqfIhZXOhI','2022-05-01 08:01:53.243621'),('5elomjc9jd7k57ii472d9qbmioomqjdz','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1neBRZ:JUy48-kIXMDdiYdUmXEqcKBGmHNa-kwUZs9CuZYRa78','2022-04-26 08:00:09.061402'),('93er9aj8vyx00q2rc110z1g02k9fr8v9','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1nX4Mh:BEkcqHzGbpAEsL5W6TpjcVXU_XwbtoxmkXeFyJMx1Cs','2022-04-06 17:01:43.642162'),('9whbm4qmdo9xadr2nuqlwj2q3fwq631a','eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sIldpY2xmTnVsMGZsMiJdfQ:1niKwS:Ev_ZjxQsRxXZmsulGJMjTUDwib_SQafyseav6N94Wt8','2022-05-07 18:57:12.710923'),('con3ud0pvp2qxse6py3tx8riieabppj3','.eJxVjEEOwiAQRe_C2hA6gAwu3XsGwjATqRqalHZlvLtt0oVu_3vvv1XK61LT2mVOI6uLAlSn35FyeUrbCT9yu0-6TG2ZR9K7og_a9W1ieV0P9--g5l63mmJA7zefAgJiHApb68iEM9iBHfkSSTJYIRO9WCrEGR04JGAyUNTnCwlTOF0:1ndor1:lrEgodaarMAh6FEWtslDPx53TDCMKDcmtPK5yWG0PWU','2022-04-25 07:52:55.243416'),('g9vcynro24tqow9pgzhah2ahc5xwc54t','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1ncvwQ:GzolFRkgmUVWS3dvsBm29BY73wiBfhl_ELntZANGBgk','2022-04-22 21:14:50.289752'),('gba77gxehdf0ryw4qohn3bjo3cp84rmm','.eJxVjDsOwjAQBe_iGlnrb7KU9DmDtf7hALKlOKkQdyeRUkD7Zua9maNtLW7raXFzZFemBLv8jp7CM9WDxAfVe-Oh1XWZPT8UftLOpxbT63a6fweFetlriiJLVMOAYJXJCtGAAqUtGBgJUwpaEMjs9Wil9kg6Cb0TCwFFDsQ-X9NCNws:1neBeQ:4xuVzTwjHz2LNfIGL88EhOXFd_RwICLN0_hCsbo3hh4','2022-04-26 08:13:26.512466'),('j9zf8647bi3l4peztgsvwff7kuoibyov','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1ncvux:4gjb5CwK9oxyRT_wSkcU5v2Lwew6f3Bodidh_QZ-1Bc','2022-04-22 21:13:19.977795'),('q3ecq42xjh2fpa1ofhdi9rrxezte9zs0','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1nY8vR:EKyOVTDblLtR-xheWVcH7A9BDyeseAV2kEjmWbZCiUA','2022-04-09 16:06:01.312425'),('ukixld6miheqvwbeous0jpr9khzg2zcp','.eJxVjEEOwiAQRe_C2hA6gAwu3XsGwjATqRqalHZlvLtt0oVu_3vvv1XK61LT2mVOI6uLAlSn35FyeUrbCT9yu0-6TG2ZR9K7og_a9W1ieV0P9--g5l63mmJA7zefAgJiHApb68iEM9iBHfkSSTJYIRO9WCrEGR04JGAyUNTnCwlTOF0:1ndoyX:DRHO3j4_CxJOov96furzNqSzEnnNDQ8NeaLIh0vh5ZE','2022-04-25 08:00:41.361639'),('vypwtb0e7qecnxtwl1xu6wn1jse3eq7w','.eJxVjMEOgyAQRP9lz40RwUW8tT9CFlgjKcVEoZem_15tvHicNzPvA-T9UnOxb17jFDlYflFMMOaa0g0s1TLbuvFqY4ARpIQLdOSfnI-GUjpwc_qa_-ast-a-J84leipxyY_zdVHNtM27xw3KK4Vdqw2KIFrRORSDREdCyEGZqWXsiYIODnsdhGNUmk3PjEZPRPD9AYlFR4Y:1nfzx0:NcRAxfQKUHzQfJJ4EOkV1hxOiip9JJTd9OBnGy5SefU','2022-05-01 08:08:06.435341'),('we4y4rvcgr8u5z7d38eihc59wd6yhb9e','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1ndjDs:vOLY96TrhCKJFUbFRrIHFtGxkYwUf0vP_WBqqGbLbuY','2022-04-25 01:52:08.826425'),('x28tbzw02lf5gxgnlk7r1j8id6mbmgf3','.eJxVjMsOwiAQRf-FtSED5dG6dO83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mzUOL0u0VMD647oDvWW5Op1XWZo9wVedAur434eTncv4OCvXxr43xksoRg0NsRfNIwIA8qGnSRM-dxyoDMbAGcV5oUpuw18DDprFm8P_gEOH4:1ndhcj:inh3c7G-rwfJP9OE6G3s56LqBnPsES7v1DEXksA0e6g','2022-04-25 00:09:41.078383');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'ratezone.io','Ratezone');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
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
-- Table structure for table `main_student`
--

DROP TABLE IF EXISTS `main_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_student` (
  `user_id` int NOT NULL,
  `user_level` int NOT NULL,
  `discarded_rev_count` int NOT NULL,
  `major` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `main_student_user_id_32abd1a3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_student`
--

LOCK TABLES `main_student` WRITE;
/*!40000 ALTER TABLE `main_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_student` ENABLE KEYS */;
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
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialaccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialaccount`
--

LOCK TABLES `socialaccount_socialaccount` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
INSERT INTO `socialaccount_socialaccount` VALUES (1,'google','114028698197103353397','2022-04-17 08:04:19.605368','2022-04-16 21:39:21.220571','{\"id\": \"114028698197103353397\", \"email\": \"selman.mohamad@cs.ku.edu.kw\", \"verified_email\": true, \"name\": \"MOHAMAD SELMAN\", \"given_name\": \"MOHAMAD  \", \"family_name\": \"SELMAN\", \"picture\": \"https://lh3.googleusercontent.com/a/AATXAJxZRKQO-o0XiBOPxvsuV6yRenh4m9axuEdxkYZX=s96-c\", \"locale\": \"en\", \"hd\": \"cs.ku.edu.kw\"}',32),(2,'google','107916205562970477646','2022-04-17 08:08:06.397911','2022-04-17 08:08:06.397941','{\"id\": \"107916205562970477646\", \"email\": \"mo7amadsalman2012@gmail.com\", \"verified_email\": true, \"name\": \"Mohamad Salman\", \"given_name\": \"Mohamad\", \"family_name\": \"Salman\", \"picture\": \"https://lh3.googleusercontent.com/a-/AOh14GgZi0oHPCiDaGGTmtXkg5sASpaPqupomMGzGbJ_9Q=s96-c\", \"locale\": \"en\"}',33);
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialapp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp`
--

LOCK TABLES `socialaccount_socialapp` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
INSERT INTO `socialaccount_socialapp` VALUES (1,'google','Ratezone','964541019607-hq3ljmar04nl1m251jhnm4li2dl31ivq.apps.googleusercontent.com','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','');
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp_sites`
--

DROP TABLE IF EXISTS `socialaccount_socialapp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `socialapp_id` int NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`),
  CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

LOCK TABLES `socialaccount_socialapp_sites` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` DISABLE KEYS */;
INSERT INTO `socialaccount_socialapp_sites` VALUES (1,1,1);
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialtoken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int NOT NULL,
  `app_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`),
  CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialtoken`
--

LOCK TABLES `socialaccount_socialtoken` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_faculty_rev`
--

LOCK TABLES `user_faculty_rev` WRITE;
/*!40000 ALTER TABLE `user_faculty_rev` DISABLE KEYS */;
INSERT INTO `user_faculty_rev` VALUES (1,1,2,NULL,3,3,0,0,0,'','',2),(5,2,2,NULL,4,4,0,0,0,'','',5),(7,3,2,NULL,4,5,0,0,0,'','',3),(8,4,2,NULL,2,3,0,0,0,'','',2),(9,5,2,NULL,1,5,0,0,0,'','',1),(10,6,2,NULL,4,4,0,0,0,'','',4),(11,7,2,NULL,4,4,0,0,0,'','',4),(12,8,2,NULL,1,4,0,0,0,'','',1),(14,9,2,NULL,4,5,0,0,0,'','',4),(17,10,2,NULL,4,5,0,0,0,'','',4),(18,11,2,NULL,3,4,0,0,0,'','',1),(19,12,2,NULL,4,5,0,0,0,'','',4),(5,13,3,NULL,4,5,0,0,0,'','',5),(6,14,3,NULL,3,3,0,0,0,'','',4),(7,15,3,NULL,5,5,0,0,0,'','',5),(8,16,3,NULL,2,1,0,0,0,'','',2),(9,17,3,NULL,1,5,0,0,0,'','',1),(10,18,3,NULL,4,5,0,0,0,'','',4),(11,19,3,NULL,3,5,0,0,0,'','',5),(12,20,3,NULL,3,1,0,0,0,'','',2),(13,21,3,NULL,2,5,0,0,0,'','',1),(15,22,3,NULL,5,3,0,0,0,'','',5),(17,23,3,NULL,5,2,0,0,0,'','',5),(18,24,3,NULL,1,5,0,0,0,'','',1),(19,25,3,NULL,4,4,0,0,0,'','',4),(22,26,3,NULL,5,4,0,0,0,'','',5),(6,27,4,NULL,4,3,0,0,0,'','',4),(7,28,4,NULL,5,1,0,0,0,'','',5),(8,29,4,NULL,3,4,0,0,0,'','',1),(9,30,4,NULL,1,5,0,0,0,'','',1),(10,31,4,NULL,3,4,0,0,0,'','',4),(11,32,4,NULL,5,3,0,0,0,'','',5),(12,33,4,NULL,4,2,0,0,0,'','',2),(13,34,4,NULL,1,3,0,0,0,'','',1),(14,35,4,NULL,5,4,0,0,0,'','',5),(15,36,4,NULL,5,1,0,0,0,'','',5),(17,37,4,NULL,5,1,0,0,0,'','',5),(18,38,4,NULL,1,3,0,0,0,'','',1),(19,39,4,NULL,5,3,0,0,0,'','',5),(5,40,5,NULL,4,4,0,0,0,'','',5),(6,41,5,NULL,1,5,0,0,0,'','',1),(7,42,5,NULL,3,3,0,0,0,'','',4),(8,43,5,NULL,3,4,0,0,0,'','',2),(9,44,5,NULL,5,1,0,0,0,'','',5),(10,45,5,NULL,4,3,0,0,0,'','',4),(13,46,5,NULL,2,3,0,0,0,'','',1),(14,47,5,NULL,4,4,0,0,0,'','',5),(15,48,5,NULL,5,3,0,0,0,'','',5),(17,49,5,NULL,5,3,0,0,0,'','',5),(19,50,5,NULL,2,5,0,0,0,'','',3),(22,51,5,NULL,4,3,0,0,0,'','',4),(5,52,6,NULL,4,4,0,0,0,'','',4),(6,53,6,NULL,4,2,0,0,0,'','',4),(7,54,6,NULL,5,2,0,0,0,'','',4),(8,55,6,NULL,1,2,0,0,0,'','',1),(9,56,6,NULL,1,5,0,0,0,'','',1),(10,57,6,NULL,4,5,0,0,0,'','',4),(11,58,6,NULL,4,4,0,0,0,'','',4),(12,59,6,NULL,2,4,0,0,0,'','',2),(13,60,6,NULL,2,4,0,0,0,'','',2),(14,61,6,NULL,4,4,0,0,0,'','',4),(15,62,6,NULL,5,1,0,0,0,'','',5),(17,63,6,NULL,5,2,0,0,0,'','',5),(18,64,6,NULL,1,3,0,0,0,'','',1),(19,65,6,NULL,3,4,0,0,0,'','',3),(22,66,6,NULL,4,3,0,0,0,'','',4),(1,67,7,NULL,1,3,0,0,0,'','',1),(5,68,7,NULL,5,5,0,0,0,'','',4),(6,69,7,NULL,4,2,0,0,0,'','',4),(7,70,7,NULL,3,3,0,0,0,'','',3),(8,71,7,NULL,2,3,0,0,0,'','',1),(9,72,7,NULL,1,4,0,0,0,'','',1),(10,73,7,NULL,3,5,0,0,0,'','',5),(11,74,7,NULL,4,3,0,0,0,'','',5),(12,75,7,NULL,2,4,0,0,0,'','',1),(13,76,7,NULL,2,3,0,0,0,'','',1),(14,77,7,NULL,3,4,0,0,0,'','',3),(15,78,7,NULL,4,3,0,0,0,'','',2),(17,79,7,NULL,5,3,0,0,0,'','',4),(18,80,7,NULL,1,3,0,0,0,'','',1),(19,81,7,NULL,4,4,0,0,0,'','',4),(22,82,7,NULL,4,3,0,0,0,'','',4),(5,83,8,NULL,5,4,0,0,0,'','',5),(6,84,8,NULL,4,2,0,0,0,'','',4),(7,85,8,NULL,5,2,0,0,0,'','',5),(9,86,8,NULL,1,5,0,0,0,'','',1),(11,87,8,NULL,5,4,0,0,0,'','',5),(12,88,8,NULL,2,2,0,0,0,'','',2),(13,89,8,NULL,3,3,0,0,0,'','',2),(14,90,8,NULL,4,3,0,0,0,'','',5),(15,91,8,NULL,4,2,0,0,0,'','',5),(17,92,8,NULL,5,1,0,0,0,'','',5),(18,93,8,NULL,1,2,0,0,0,'','',1),(19,94,8,NULL,5,5,0,0,0,'','',5),(22,95,8,NULL,5,2,0,0,0,'','',5),(1,96,9,NULL,2,3,0,0,0,'','',1),(5,97,9,NULL,4,5,0,0,0,'','',5),(6,98,9,NULL,3,3,0,0,0,'','',4),(7,99,9,NULL,3,3,0,0,0,'','',3),(8,100,9,NULL,2,2,0,0,0,'','',1),(9,101,9,NULL,1,5,0,0,0,'','',1),(10,102,9,NULL,4,4,0,0,0,'','',4),(11,103,9,NULL,5,4,0,0,0,'','',5),(12,104,9,NULL,2,3,0,0,0,'','',1),(13,105,9,NULL,4,3,0,0,0,'','',3),(14,106,9,NULL,3,4,0,0,0,'','',3),(15,107,9,NULL,4,2,0,0,0,'','',3),(17,108,9,NULL,5,2,0,0,0,'','',5),(18,109,9,NULL,1,3,0,0,0,'','',1),(19,110,9,NULL,4,4,0,0,0,'','',4),(22,111,9,NULL,4,4,0,0,0,'','',4),(1,112,10,NULL,5,3,0,0,0,'','',5),(5,113,10,NULL,5,4,0,0,0,'','',5),(6,114,10,NULL,5,3,0,0,0,'','',4),(8,115,10,NULL,4,3,0,0,0,'','',4),(9,116,10,NULL,4,4,0,0,0,'','',3),(10,117,10,NULL,1,4,0,0,0,'','',2),(11,118,10,NULL,5,3,0,0,0,'','',5),(13,119,10,NULL,3,4,0,0,0,'','',2),(19,120,10,NULL,5,3,0,0,0,'','',5),(22,121,10,NULL,3,3,0,0,0,'','',3),(1,122,11,NULL,1,3,0,0,0,'','',1),(5,123,11,NULL,5,5,0,0,0,'','',5),(6,124,11,NULL,4,3,0,0,0,'','',4),(7,125,11,NULL,3,4,0,0,0,'','',3),(8,126,11,NULL,2,3,0,0,0,'','',1),(9,127,11,NULL,3,5,0,0,0,'','',3),(10,128,11,NULL,4,5,0,0,0,'','',4),(11,129,11,NULL,5,5,0,0,0,'','',5),(12,130,11,NULL,1,4,0,0,0,'','',1),(13,131,11,NULL,5,4,0,0,0,'','',4),(14,132,11,NULL,3,5,0,0,0,'','',4),(15,133,11,NULL,4,3,0,0,0,'','',3),(17,134,11,NULL,5,3,0,0,0,'','',5),(18,135,11,NULL,1,3,0,0,0,'','',1),(19,136,11,NULL,5,4,0,0,0,'','',4),(22,137,11,NULL,5,4,0,0,0,'','',3),(1,138,12,NULL,3,2,0,0,0,'','',3),(5,139,12,NULL,4,5,0,0,0,'','',4),(6,140,12,NULL,3,3,0,0,0,'','',3),(7,141,12,NULL,3,2,0,0,0,'','',2),(9,142,12,NULL,1,5,0,0,0,'','',1),(10,143,12,NULL,4,2,0,0,0,'','',3),(13,144,12,NULL,3,1,0,0,0,'','',3),(14,145,12,NULL,5,4,0,0,0,'','',5),(19,146,12,NULL,1,4,0,0,0,'','',1),(1,147,13,NULL,5,1,0,0,0,'','',5),(5,148,13,NULL,5,2,0,0,0,'','',4),(6,149,13,NULL,4,3,0,0,0,'','',4),(9,150,13,NULL,1,4,0,0,0,'','',2),(10,151,13,NULL,5,1,0,0,0,'','',5),(13,152,13,NULL,3,3,0,0,0,'','',2),(19,153,13,NULL,1,2,0,0,0,'','',1),(22,154,13,NULL,4,2,0,0,0,'','',4),(1,155,14,NULL,2,3,0,0,0,'','',1),(5,156,14,NULL,5,4,0,0,0,'','',5),(6,157,14,NULL,3,2,0,0,0,'','',3),(7,158,14,NULL,4,3,0,0,0,'','',3),(8,159,14,NULL,2,2,0,0,0,'','',1),(9,160,14,NULL,4,5,0,0,0,'','',4),(10,161,14,NULL,4,5,0,0,0,'','',4),(11,162,14,NULL,5,2,0,0,0,'','',5),(12,163,14,NULL,2,3,0,0,0,'','',1),(13,164,14,NULL,4,3,0,0,0,'','',3),(14,165,14,NULL,3,4,0,0,0,'','',3),(15,166,14,NULL,4,3,0,0,0,'','',3),(17,167,14,NULL,5,2,0,0,0,'','',5),(18,168,14,NULL,1,3,0,0,0,'','',1),(19,169,14,NULL,5,4,0,0,0,'','',5),(22,170,14,NULL,4,4,0,0,0,'','',5),(1,171,15,NULL,1,2,0,0,0,'','',1),(5,172,15,NULL,3,5,0,0,0,'','',5),(6,173,15,NULL,4,4,0,0,0,'','',3),(7,174,15,NULL,4,3,0,0,0,'','',4),(8,175,15,NULL,2,2,0,0,0,'','',2),(9,176,15,NULL,4,5,0,0,0,'','',3),(10,177,15,NULL,3,3,0,0,0,'','',4),(11,178,15,NULL,5,3,0,0,0,'','',5),(12,179,15,NULL,3,4,0,0,0,'','',3),(13,180,15,NULL,5,4,0,0,0,'','',5),(14,181,15,NULL,4,5,0,0,0,'','',4),(15,182,15,NULL,4,4,0,0,0,'','',4),(17,183,15,NULL,5,3,0,0,0,'','',5),(18,184,15,NULL,3,3,0,0,0,'','',1),(19,185,15,NULL,5,4,0,0,0,'','',5),(22,186,15,NULL,4,4,0,0,0,'','',4),(1,187,16,NULL,1,3,0,0,0,'','',1),(5,188,16,NULL,4,4,0,0,0,'','',4),(6,189,16,NULL,4,3,0,0,0,'','',4),(7,190,16,NULL,3,3,0,0,0,'','',3),(8,191,16,NULL,2,2,0,0,0,'','',2),(9,192,16,NULL,2,2,0,0,0,'','',3),(10,193,16,NULL,3,5,0,0,0,'','',3),(11,194,16,NULL,5,4,0,0,0,'','',5),(12,195,16,NULL,2,3,0,0,0,'','',2),(13,196,16,NULL,3,3,0,0,0,'','',4),(14,197,16,NULL,3,3,0,0,0,'','',3),(15,198,16,NULL,4,4,0,0,0,'','',4),(17,199,16,NULL,4,3,0,0,0,'','',4),(18,200,16,NULL,1,4,0,0,0,'','',2),(19,201,16,NULL,5,3,0,0,0,'','',5),(22,202,16,NULL,4,3,0,0,0,'','',4),(5,203,17,NULL,3,5,0,0,0,'','',3),(6,204,17,NULL,5,4,0,0,0,'','',5),(7,205,17,NULL,5,3,0,0,0,'','',5),(8,206,17,NULL,2,5,0,0,0,'','',2),(9,207,17,NULL,2,5,0,0,0,'','',3),(13,208,17,NULL,3,3,0,0,0,'','',1),(14,209,17,NULL,5,4,0,0,0,'','',5),(15,210,17,NULL,5,4,0,0,0,'','',5),(17,211,17,NULL,5,4,0,0,0,'','',5),(1,212,18,NULL,3,4,0,0,0,'','',3),(5,213,18,NULL,4,5,0,0,0,'','',5),(6,214,18,NULL,4,3,0,0,0,'','',4),(7,215,18,NULL,3,2,0,0,0,'','',2),(9,216,18,NULL,2,3,0,0,0,'','',2),(10,217,18,NULL,5,4,0,0,0,'','',5),(13,218,18,NULL,3,4,0,0,0,'','',2),(14,219,18,NULL,5,4,0,0,0,'','',5),(15,220,18,NULL,4,1,0,0,0,'','',3),(19,221,18,NULL,4,5,0,0,0,'','',4),(22,222,18,NULL,3,4,0,0,0,'','',3),(1,223,19,NULL,4,2,0,0,0,'','',3),(5,224,19,NULL,5,2,0,0,0,'','',5),(9,225,19,NULL,2,5,0,0,0,'','',2),(10,226,19,NULL,3,4,0,0,0,'','',3),(13,227,19,NULL,1,3,0,0,0,'','',1),(14,228,19,NULL,5,2,0,0,0,'','',5),(19,229,19,NULL,4,3,0,0,0,'','',4),(22,230,19,NULL,4,2,0,0,0,'','',5),(6,231,20,NULL,5,4,0,0,0,'','',5),(18,232,20,NULL,4,4,0,0,0,'','',4),(5,233,21,NULL,3,4,0,0,0,'','',5),(6,234,21,NULL,3,4,0,0,0,'','',3),(15,235,21,NULL,4,5,0,0,0,'','',5),(5,236,22,NULL,5,5,0,0,0,'','',5),(8,237,22,NULL,1,1,0,0,0,'','',1),(10,238,22,NULL,4,3,0,0,0,'','',3),(14,239,22,NULL,1,2,0,0,0,'','',5),(5,240,23,NULL,5,3,0,0,0,'','',5),(6,241,23,NULL,4,4,0,0,0,'','',4),(8,242,23,NULL,4,4,0,0,0,'','',4),(10,243,23,NULL,4,4,0,0,0,'','',4),(15,244,23,NULL,4,4,0,0,0,'','',4),(1,245,24,NULL,5,3,0,0,0,'','',5),(5,246,24,NULL,4,4,0,0,0,'','',3),(13,247,24,NULL,2,5,0,0,0,'','',2),(15,248,24,NULL,5,2,0,0,0,'','',4),(19,249,24,NULL,4,5,0,0,0,'','',3),(5,250,25,NULL,5,5,0,0,0,'','',5),(8,251,25,NULL,1,1,0,0,0,'','',1),(5,252,26,NULL,3,4,0,0,0,'','',4),(13,253,26,NULL,1,5,0,0,0,'','',1),(14,254,26,NULL,3,3,0,0,0,'','',3),(15,255,26,NULL,5,3,0,0,0,'','',5),(1,256,27,NULL,2,2,0,0,0,'','',1),(5,257,27,NULL,5,4,0,0,0,'','',4),(6,258,27,NULL,3,3,0,0,0,'','',3),(7,259,27,NULL,4,3,0,0,0,'','',4),(8,260,27,NULL,3,2,0,0,0,'','',2),(9,261,27,NULL,3,4,0,0,0,'','',3),(10,262,27,NULL,4,4,0,0,0,'','',5),(11,263,27,NULL,4,4,0,0,0,'','',5),(12,264,27,NULL,2,4,0,0,0,'','',2),(13,265,27,NULL,3,3,0,0,0,'','',4),(14,266,27,NULL,3,5,0,0,0,'','',4),(15,267,27,NULL,4,3,0,0,0,'','',4),(17,268,27,NULL,5,3,0,0,0,'','',5),(18,269,27,NULL,1,4,0,0,0,'','',1),(19,270,27,NULL,5,4,0,0,0,'','',4),(22,271,27,NULL,4,4,0,0,0,'','',4),(19,272,28,NULL,4,3,0,0,0,'','Inspires me to be better!',5),(19,273,28,NULL,5,4,0,0,0,'','Be discipline and pay attention during his lectures. He is more than happy to help if you reach out. Very supportive',5),(5,274,28,NULL,4,3,0,0,0,'','Great lecturer!',4),(11,275,28,NULL,3,3,0,0,0,'','Great lecturer',5),(113,276,28,NULL,4,4,0,0,0,'','Great ......',5),(17,277,28,NULL,4,2,0,0,0,'','I love Ulna ....',5),(14,278,28,NULL,3,3,0,0,0,'','passionate',3),(14,279,28,NULL,3,3,0,0,0,'','passionate',3),(14,280,28,NULL,3,3,0,0,0,'','passionate',3),(14,281,28,NULL,3,3,0,0,0,'','passionate',3);
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
INSERT INTO `user_queue` VALUES (1,1),(1,5),(28,5),(1,11),(28,11),(30,11),(28,14),(1,15),(28,15),(28,17),(28,19),(30,19),(1,113),(28,131);
/*!40000 ALTER TABLE `user_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_react_courseRev`
--

DROP TABLE IF EXISTS `user_react_courseRev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_react_courseRev` (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  `upvote` int DEFAULT NULL,
  `downvote` int DEFAULT NULL,
  UNIQUE KEY `uid` (`uid`,`rid`),
  KEY `userReactCourseRev_rid_FK` (`rid`),
  CONSTRAINT `userReactCourseRev_rid_FK` FOREIGN KEY (`rid`) REFERENCES `user_course_rev` (`review_id`),
  CONSTRAINT `userReactCourseRev_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_react_courseRev`
--

LOCK TABLES `user_react_courseRev` WRITE;
/*!40000 ALTER TABLE `user_react_courseRev` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_react_courseRev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_react_facultyRev`
--

DROP TABLE IF EXISTS `user_react_facultyRev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_react_facultyRev` (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  `upvote` int DEFAULT NULL,
  `downvote` int DEFAULT NULL,
  UNIQUE KEY `uid` (`uid`,`rid`),
  KEY `userReactFacRev_rid_FK` (`rid`),
  CONSTRAINT `userReactFacRev_rid_FK` FOREIGN KEY (`rid`) REFERENCES `user_faculty_rev` (`review_id`),
  CONSTRAINT `userReactFacRev_uid_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_react_facultyRev`
--

LOCK TABLES `user_react_facultyRev` WRITE;
/*!40000 ALTER TABLE `user_react_facultyRev` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_react_facultyRev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_watch_course`
--

DROP TABLE IF EXISTS `user_watch_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_watch_course` (
  `uid` int NOT NULL,
  `cid` int NOT NULL,
  UNIQUE KEY `uid` (`uid`,`cid`),
  KEY `course_watchC_FK` (`cid`),
  CONSTRAINT `course_watchC_FK` FOREIGN KEY (`cid`) REFERENCES `Course` (`course_code`),
  CONSTRAINT `user_watchC_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_watch_course`
--

LOCK TABLES `user_watch_course` WRITE;
/*!40000 ALTER TABLE `user_watch_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_watch_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_watch_faculty`
--

DROP TABLE IF EXISTS `user_watch_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_watch_faculty` (
  `uid` int NOT NULL,
  `fid` int NOT NULL,
  UNIQUE KEY `uid` (`uid`,`fid`),
  KEY `faculty_watchF_FK` (`fid`),
  CONSTRAINT `faculty_watchF_FK` FOREIGN KEY (`fid`) REFERENCES `Faculty` (`faculty_id`),
  CONSTRAINT `user_watchF_FK` FOREIGN KEY (`uid`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_watch_faculty`
--

LOCK TABLES `user_watch_faculty` WRITE;
/*!40000 ALTER TABLE `user_watch_faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_watch_faculty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25  0:24:13
