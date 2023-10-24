/* 
Tablas exportadas:
-autor
-cliente
-cliente_log_i
-cliente_log_u
-cliente_log_d
-editorial
-libro
-libro_tema
-pedido
-pedido_libro
-pedido_libro_log_i
-pedido_libro_log_u
-pedido_libro_log_d
-sector
-tema
*/
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.6.51-log

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
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Oscar Wilde','1854-10-16 00:00:00','1900-11-30 00:00:00'),(2,'George Orwell','1903-06-21 00:00:00','1950-01-21 00:00:00'),(3,'George R. R. Martin','1948-09-20 00:00:00',NULL),(4,'Franz Kafka','1883-07-03 00:00:00','1924-07-03 00:00:00'),(5,'Charles Dickens','1812-02-07 00:00:00','1870-06-09 00:00:00'),(6,'Stephen King','1947-09-21 00:00:00',NULL),(7,'Jorge Luis Borges','1899-08-24 00:00:00','1986-06-14 00:00:00'),(8,'J.R.R. Tolkien','1892-01-03 00:00:00','1973-09-02 00:00:00'),(9,'Philip K. Dick','1928-12-16 00:00:00','1982-03-02 00:00:00'),(10,'Charles Darwin','1809-02-12 00:00:00','1882-04-19 00:00:00'),(11,'J. K. Rowling','1965-07-31 00:00:00',NULL),(12,'Julio Cortazar','1914-08-26 00:00:00','1984-02-12 00:00:00'),(13,'Agatha Christie','1890-09-15 00:00:00','1976-01-12 00:00:00'),(14,'Julio Verne','1828-02-08 00:00:00','1905-03-24 00:00:00'),(15,'William Shakespere','1564-04-01 00:00:00','1616-04-23 00:00:00');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','Perez','38682179','Reconquista 2001','25972678','cojufru-1070@yopmail.com','2010-12-12 00:00:00','1990-12-05 00:00:00',NULL),(2,'Maria','Garcia','50226918','Acassuso 98','36117703','joudattu-7156@yopmail.com','2010-12-15 00:00:00','1991-01-18 00:00:00',NULL),(3,'Jose','Martinez','31909829','Acevedo 34','26255402','preuyoo-8175@yopmail.com','2010-11-25 00:00:00','1980-04-01 00:00:00',NULL),(4,'Manuel','Sanchez','70956009','Agrelo 768','41878003','hapuna-8836@yopmail.com','2010-11-05 00:00:00','2000-12-03 00:00:00',NULL),(5,'Carmen','Gomez','93251717','Azcuénaga 123','34597088','gracrimme@yopmail.com','2010-10-06 00:00:00','1999-11-04 00:00:00',NULL),(6,'Jesus','Fernandez','33467376','Boeri 912','41256868','prullei@yopmail.com','2010-10-27 00:00:00','1989-10-17 00:00:00',NULL),(7,'Miguel','Moreno','97609125','Cajaravilla 4543','25591127','prefilleriwe-4756@yopmail.com','2010-09-12 00:00:00','1990-07-15 00:00:00',NULL),(8,'Dolores','Jimenez','89841694','Campillo 4564','37869336','fragammoicenno-2337@yopmail.com','2010-09-15 00:00:00','1991-04-19 00:00:00',NULL),(9,'Javier','Perez','26960822','Copérnico 786','37101563','zukoteireho-8190@yopmail.com','2010-08-12 00:00:00','1999-09-21 00:00:00',NULL),(10,'Antonio','Rodriguez','22603909','Cuyo 123','33187971','tuzejoubrise-2168@yopmail.com','2010-08-19 00:00:00','2000-07-27 00:00:00',NULL),(11,'Ana','Navarro','36078531','Dekay 6756','40584415','goissaufaweusse-4000@yopmail.com','2010-07-17 00:00:00','1980-05-29 00:00:00',NULL),(12,'Carlos','Ruiz','60905483','Desaguadero 675','41442445','nulleseihoiffo-1755@yopmail.com','2010-07-17 00:00:00','1995-11-20 00:00:00',NULL),(13,'Maria','Diaz','64175485','Ensenada	 312','35489786','grebuwusute-9187@yopmail.com','2010-06-15 00:00:00','1992-04-17 00:00:00',NULL),(14,'Alejandro','Serrano','83453054','Floresta 677','33247776','trezelafeiso-4713@yopmail.com','2010-06-02 00:00:00','1990-03-19 00:00:00',NULL),(15,'Cristina','Saez','71475220','Galicia 563','26133977','bruvareuceiwa-3839@yopmail.com','2010-05-01 00:00:00','1990-01-12 00:00:00',NULL),(16,'Juana','Saez','71475220','Galicia 563','26133977','bruvareuceiwa-3839@yopmail.com','2010-05-01 00:00:00','1990-01-12 00:00:00',NULL),(17,'Juana','Saez','71475220','Galicia 563','26133977','bruvareuceiwa-3839@yopmail.com','2010-05-01 00:00:00','1990-01-12 00:00:00',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente_log_d`
--

LOCK TABLES `cliente_log_d` WRITE;
/*!40000 ALTER TABLE `cliente_log_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_log_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente_log_i`
--

LOCK TABLES `cliente_log_i` WRITE;
/*!40000 ALTER TABLE `cliente_log_i` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_log_i` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente_log_u`
--

LOCK TABLES `cliente_log_u` WRITE;
/*!40000 ALTER TABLE `cliente_log_u` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_log_u` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Planeta','12345678'),(2,'Espasa','23456789'),(3,'Booket','34567890'),(4,'Planeta Comic','45678901'),(5,'Tusquets Editores','56789012'),(6,'Martinez Roca','67890123'),(7,'Croosbooks','78901234'),(8,'Libros Disney','89012345'),(9,'Paidos','90123456'),(10,'GeoPlaneta','01234567'),(11,'Austral Editorial','09876543'),(12,'Minotauro','98765432'),(13,'Editorial Ariel','87654321'),(14,'Deusto','76543210'),(15,'Diana','65432109'),(16,'kanghoo','3333333');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'El Principe Feliz',1,1,'1888-01-01 00:00:00','El Príncipe Feliz es la historia de una majestuosa estatua que domina una ciudad',2000,3),(2,'El gigante egoista',1,2,'1888-05-01 00:00:00','Los niños del pueblo juegan en el amplio jardin de la casa de un Gigante',4000,7),(3,'1984',2,3,'1949-06-08 00:00:00','1984 de George Orwell es una novela de distopía cuya trama ocurre en Oceanía',4500,2),(4,'Revelion en la Granja',2,4,'1945-08-17 00:00:00','Los animales de la granja de los Jones se sublevan contra sus dueños humanos y los vencen',5000,9),(5,'Juego de tronos',3,5,'1996-08-01 00:00:00','La trama se sitúa en un mundo ficticio con elementos fantásticos, como dragones y poderes',3000,2),(6,'Fuego y sangre',3,6,'2018-11-20 00:00:00','Fuego y Sangre es un libro escrito por George R. R. Martin que narra la historia completa de la Casa Targaryen',6500,14),(7,'La metamorfosis',4,7,'1915-01-01 00:00:00','“La metamorfosis” narra de forma magistral la transformación de Gregorio Samsa de comerciante a un monstruoso insecto.',1500,15),(8,'La condena',4,8,'1913-01-01 00:00:00','Antes de entrar en la cárcel, Mark Cobden (Sean Bean) era un ciudadano respetable, padre de familia y profesor.',7000,8),(9,'Tiempos difíciles',5,9,'1884-08-12 00:00:00','La historia se centra en Thomas Gradgring quien educa a sus hijos bajo un régimen bastante autoritario prohibiendo el uso de la imaginación',5000,6),(10,'Cuento de Navidad',5,10,'1843-12-19 00:00:00','Narra la historia de como un ser malo, huraño y mezquino, Ebenezer Scrooge, cambió merced a un milagro de navidad',3600,3),(11,'It',6,11,'1986-09-15 00:00:00','Varios niños de una pequeña ciudad del estado de Maine se alían para combatir a una entidad diabólica',5600,12),(12,'El resplandor',6,12,'1977-01-28 00:00:00','Jack Torrance se convierte en cuidador de invierno en el Hotel Overlook, en Colorado, con la esperanza de vencer su bloqueo con la escritura',10000,12),(13,'Ficciones',7,13,'1944-01-01 00:00:00','Pensé en un laberinto, en un sinuoso laberinto creciente que abarcara el pasado y el porvenir y que implicara de algún modo los astros',4500,11),(14,'El fin',7,14,'1953-01-01 00:00:00','Alude al fin de la vida de Martín Fierro',7400,9),(15,'El hobbit',8,15,'1937-09-21 00:00:00','La aventura cuenta el viaje de Bilbo Bolsón, quien se ve arrastrado a una épica búsqueda que le llevará a reclamar el reino que años atrás perdieron los enanos',1500,1);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `libro_tema`
--

LOCK TABLES `libro_tema` WRITE;
/*!40000 ALTER TABLE `libro_tema` DISABLE KEYS */;
INSERT INTO `libro_tema` VALUES (1,8),(2,9),(3,8),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),(11,16),(11,1),(12,16),(13,16),(14,16),(15,16),(11,7);
/*!40000 ALTER TABLE `libro_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2023-01-12 00:00:00','2023-02-19 00:00:00',1),(2,'2023-02-15 00:00:00','2023-03-01 00:00:00',2),(3,'2023-03-02 00:00:00','2023-03-29 00:00:00',3),(4,'2023-05-06 00:00:00','2023-05-30 00:00:00',4),(5,'2023-06-07 00:00:00','2023-06-28 00:00:00',5),(6,'2023-06-04 00:00:00','2023-07-01 00:00:00',6),(7,'2023-07-01 00:00:00','2023-08-04 00:00:00',7),(8,'2023-07-12 00:00:00','2023-07-29 00:00:00',8),(9,'2023-08-10 00:00:00','2023-08-30 00:00:00',9),(10,'2023-08-19 00:00:00','2023-09-28 00:00:00',10),(11,'2023-08-29 00:00:00','2023-09-10 00:00:00',11),(12,'2023-08-20 00:00:00','2023-09-12 00:00:00',12),(13,'2023-08-29 00:00:00','2023-09-30 00:00:00',13),(14,'2023-08-26 00:00:00','2023-09-20 00:00:00',14),(15,'2032-09-01 00:00:00','2023-09-27 00:00:00',15);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_libro`
--

LOCK TABLES `pedido_libro` WRITE;
/*!40000 ALTER TABLE `pedido_libro` DISABLE KEYS */;
INSERT INTO `pedido_libro` VALUES (1,1),(1,2),(2,4),(3,3),(3,2),(4,6),(5,7),(5,9),(6,1),(7,1),(7,15),(8,14),(9,13),(9,9),(9,10),(10,11),(11,15),(12,14),(13,11),(14,7),(15,11),(15,2),(15,9);
/*!40000 ALTER TABLE `pedido_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_libro_log_d`
--

LOCK TABLES `pedido_libro_log_d` WRITE;
/*!40000 ALTER TABLE `pedido_libro_log_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_libro_log_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_libro_log_i`
--

LOCK TABLES `pedido_libro_log_i` WRITE;
/*!40000 ALTER TABLE `pedido_libro_log_i` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_libro_log_i` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_libro_log_u`
--

LOCK TABLES `pedido_libro_log_u` WRITE;
/*!40000 ALTER TABLE `pedido_libro_log_u` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_libro_log_u` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'A1','Mostrador 1er piso'),(2,'A2','Estantes salida'),(3,'A3','Estantes entrada'),(4,'B1','Pared 1er Piso'),(5,'B2','Bodega Subsuelo'),(6,'B3','Bodega 2do Piso'),(7,'C1','Mostrador 2do piso'),(8,'C2','Bodega 3er piso'),(9,'C3','Mostrador pta. baja'),(10,'D1','Estantes 1er Piso'),(11,'D2','Estantes 2do Piso'),(12,'D3','Estantes 3er Piso'),(13,'E1','Pared 2do Piso'),(14,'E2','Pared 3er Piso'),(15,'E3','Pared pta. Baja');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Terror','Miedo'),(2,'Psicologico','psicologia'),(3,'Romance','amoroso'),(4,'Hitorico','Historia mundial'),(5,'Pocicial','Ficcion policial'),(6,'Aventura','Miedo'),(7,'Fantastico','Sobreantural'),(8,'Ciencia Ficcion','Ciencia Ficcion'),(9,'Infantil','Cuentos'),(10,'Cocina','Recetas'),(11,'Poesia','poesis antugua'),(12,'Biografia','Autobiografias'),(13,'Misterio','Enigmas'),(14,'Religion','Religion'),(15,'Ciencia','Tesis Cientifica'),(16,'Ficcion','Ficcion');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-04 17:05:33
