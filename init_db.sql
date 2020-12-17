-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: cuci_in
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,3,'Karah Agung Street','2020-10-26 23:52:28','2020-10-26 23:52:28',NULL),(2,3,'Karah Agung Street','2020-10-26 23:53:44','2020-10-26 23:53:44',NULL),(3,4,'Karah Agung Street','2020-10-28 06:20:35','2020-10-28 06:20:35',NULL),(4,4,'Karah Agung Street','2020-10-28 06:22:43','2020-10-28 06:22:43',NULL),(5,4,'Karah Agung Street','2020-11-12 09:58:10','2020-11-12 09:58:10',NULL),(6,10,'Karah Agung Street','2020-11-23 22:58:22','2020-11-23 22:58:22',NULL),(7,10,'Karah test Agung Street','2020-11-27 23:26:43','2020-11-27 23:26:43',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laundry_types`
--

DROP TABLE IF EXISTS `laundry_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laundry_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laundry_types`
--

LOCK TABLES `laundry_types` WRITE;
/*!40000 ALTER TABLE `laundry_types` DISABLE KEYS */;
INSERT INTO `laundry_types` VALUES (1,'basic','2020-10-26 23:58:50','2020-10-27 00:05:29','2020-10-27 00:05:29'),(2,'express','2020-10-27 00:05:45','2020-10-27 00:05:45',NULL),(3,'test','2020-11-10 05:35:50','2020-11-10 05:36:24','2020-11-10 05:36:24'),(4,'Laundry Sepatu','2020-11-12 09:58:33','2020-11-12 09:58:33',NULL);
/*!40000 ALTER TABLE `laundry_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2020_10_08_123111_create_laundry_types_table',1),(8,'2020_10_08_134017_create_transactions_table',1),(9,'2020_10_08_150419_add_column_laundry_type_on_transaction_table',1),(10,'2020_10_08_151236_create_outlets_table',1),(11,'2020_10_09_062127_cuci_migration',1),(12,'2020_10_09_063937_create_customers_table',1),(13,'2020_10_09_065155_create_owners_table',1),(14,'2020_10_09_073328_drop_manhours_migration',1),(15,'2020_10_10_092743_add_remember_token_on_user_table',1),(16,'2020_10_12_072933_add_column_user_id_on_customer_table',1),(17,'2020_10_12_074642_drop_column_price_on_laundry_type',1),(18,'2020_10_12_074750_edit_colomn_laundry_type_id_on_transaction',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('04b9b93ffd378487caa6805485ba699c87c35d66d5b50caeb578be2a05d8b9f26565cf02ab28e9b2',10,1,'Personal Access Token','[]',0,'2020-12-02 00:49:39','2020-12-02 00:49:39','2021-12-02 07:49:39'),('0552bde72b480195fa176d5a73f33d1ca23209d3de546f1def2ff276f6e6bf11f16ce961fa01eef3',10,1,'Personal Access Token','[]',0,'2020-11-14 01:44:05','2020-11-14 01:44:05','2021-11-14 08:44:05'),('0930aec4aaf3cf478394eac6e2f8091e40c257f314b2e5ed7541f57a98bbf57ac57ad3c270c588f2',10,1,'Personal Access Token','[]',0,'2020-11-13 01:53:55','2020-11-13 01:53:55','2021-11-13 08:53:55'),('0a9d2ae480763128e8fa9c4a423c8a5404d28a4879f0f7a3ccfde2b9ecb77539f8dea0ac350a05de',10,1,'Personal Access Token','[]',0,'2020-12-02 00:44:32','2020-12-02 00:44:32','2021-12-02 07:44:32'),('0b5892f054d2b9888ce662c076cf6b70e146589fbff0da867b374916c000d9075b1a6ed55764c563',10,1,'Personal Access Token','[]',0,'2020-11-28 09:47:42','2020-11-28 09:47:42','2021-11-28 16:47:42'),('0b7954001f19ba5ea4ed5da524cc1a467f5e0ecb1f03f1b9e0ead637a052ae077202300aca583d44',10,1,'Personal Access Token','[]',0,'2020-11-27 04:12:07','2020-11-27 04:12:07','2021-11-27 11:12:07'),('0df498a6fb920ad2f9630d01c3cc7c2e39d66b7adcb2db27674802037032aeca05817b52373b4ece',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:29','2020-11-28 08:14:29','2021-11-28 15:14:29'),('1254294eb0d1af73245eb74d334062e38e84205add77c9aa1681b064e7377e92acf216b8cf71d91a',10,1,'Personal Access Token','[]',0,'2020-11-19 22:55:08','2020-11-19 22:55:08','2021-11-20 05:55:08'),('128e5f57e1057284a8b952acc6bf955de635fb9343dc5e12afef724806fde7a442065b42779781fe',10,1,'Personal Access Token','[]',0,'2020-11-28 09:45:41','2020-11-28 09:45:41','2021-11-28 16:45:41'),('13ede9636a8e1da6ef9d0432534e6dc8ed86495bdbb6754265310ca85079702475d83857ea1fe40c',10,1,'Personal Access Token','[]',0,'2020-11-20 02:19:25','2020-11-20 02:19:25','2021-11-20 09:19:25'),('1413382b1b859326252510c1d419fb503504acf6bc448981b590e00976f5b32461b816f17cf8c768',10,1,'Personal Access Token','[]',0,'2020-12-01 03:15:51','2020-12-01 03:15:51','2021-12-01 10:15:51'),('1427589c138959a012848005788862d95a91c4ceca5cebe76bec13a114069d10ae94dd4d0222fae2',10,1,'Personal Access Token','[]',0,'2020-11-20 04:58:58','2020-11-20 04:58:58','2021-11-20 11:58:58'),('18c0f85278f03fdf606330a5c42ff7ab2f065b9e18d0dbe5c25c03321847f6d45245d3864799e993',10,1,'Personal Access Token','[]',0,'2020-11-27 04:48:36','2020-11-27 04:48:36','2021-11-27 11:48:36'),('1924154add34c7207965a3fd259e2cdc0f662c71536685c4798cb824a1db02502f158c4e2a2767f1',10,1,'Personal Access Token','[]',0,'2020-12-03 00:37:35','2020-12-03 00:37:35','2021-12-03 07:37:35'),('1ac33cb04a41bd31bbc5eba79e90c9a95935570b107ea692616f10329494c4de0b2f96199d136ae3',10,1,'Personal Access Token','[]',0,'2020-12-01 22:04:18','2020-12-01 22:04:18','2021-12-02 05:04:18'),('1bc811178f44347be985ad600a7e34a058830810700d0ad2723e3867b1bfa7c2c56f0e9505e4445f',10,1,'Personal Access Token','[]',0,'2020-12-01 03:23:01','2020-12-01 03:23:01','2021-12-01 10:23:01'),('1cc74cfe40be926f0f6cf157c8d824cf4e69c9cd08dde6b2d5acb099197f4d023ec68148661591a7',10,1,'Personal Access Token','[]',0,'2020-11-30 04:57:24','2020-11-30 04:57:24','2021-11-30 11:57:24'),('1d0bdf2a234533f935ff6d50e7505b06ddda93d740d3d871f8d6459ad7c94a9fdbce8e5c154025e3',10,1,'Personal Access Token','[]',0,'2020-11-23 22:57:53','2020-11-23 22:57:53','2021-11-24 05:57:53'),('1e5ddcdd9bb966636cf6d09d3512e318ebe4028eda278bb0fd2c5bb5d5f17ac9b2eb6fa08ad6953c',10,1,'Personal Access Token','[]',0,'2020-12-02 06:34:34','2020-12-02 06:34:34','2021-12-02 13:34:34'),('222e0d636e97c94fe46a7b994eab6e9f7454256ff118973f8666171b5edb580ba9ac4ab2677e1d31',10,1,'Personal Access Token','[]',0,'2020-12-02 00:46:34','2020-12-02 00:46:34','2021-12-02 07:46:34'),('22e2a0fe3b2efc55073575706be2cf464e36505c1e82f1b4621e39d023e9b3b33698ab4fac8199c0',10,1,'Personal Access Token','[]',1,'2020-11-28 10:16:33','2020-11-28 10:16:33','2021-11-28 17:16:33'),('23b43674c0eedaac7e8455ad716b7ec81e0f44db0fbf153460e9fedb4f50b0d95fac8cc7ea255610',10,1,'Personal Access Token','[]',0,'2020-11-20 00:50:51','2020-11-20 00:50:51','2021-11-20 07:50:51'),('2703a11dbe193da66a5d07280904277e63ff0c7c03c4ac3f6c3e36f64267401a0e30e7d4737c4f11',1,1,'Personal Access Token','[]',0,'2020-10-14 06:15:53','2020-10-14 06:15:53','2021-10-14 13:15:53'),('27866dc2dd42bdbf27fafba1aa5d415854f0a92b22606395d0c05ff0b3e715e9a27b5bd364d72852',10,1,'Personal Access Token','[]',0,'2020-11-20 01:09:49','2020-11-20 01:09:49','2021-11-20 08:09:49'),('2a06d70bd587e7cbd9a7270f3057a96fc470d8c0307c63a55fe4d5fb7f24ade32a122a35ea8357d8',10,1,'Personal Access Token','[]',0,'2020-11-27 06:17:20','2020-11-27 06:17:20','2021-11-27 13:17:20'),('2a06fe125cb36f044115ce9de099ea22a4f4c9d20dffbc55984d2d4df9783ba4c98bdc8e00ba73a2',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:29','2020-11-28 08:14:29','2021-11-28 15:14:29'),('2d973a879bdd232ec59ad5a31e83552be6302d08493c4270636f31d939d5ba32e7cf462162d9598e',10,1,'Personal Access Token','[]',0,'2020-11-20 05:03:52','2020-11-20 05:03:52','2021-11-20 12:03:52'),('3016b885e001e8b18a2a4a22c0e5f04c2714427414547d5ebf84704234410465d4599535ea90a254',10,1,'Personal Access Token','[]',0,'2020-11-19 04:19:20','2020-11-19 04:19:20','2021-11-19 11:19:20'),('3196456ea18827919b3c720f46bc0d142bfbe2b8e8451ae6d9ea7e09cfa417d6c303ad2ee3c30f38',10,1,'Personal Access Token','[]',0,'2020-11-27 04:54:54','2020-11-27 04:54:54','2021-11-27 11:54:54'),('327a03bf940573985d0f7ae5e006e0d9168af39ccc8696bae4247781ebc59e0557620b2752a3d6f1',10,1,'Personal Access Token','[]',1,'2020-12-04 02:28:18','2020-12-04 02:28:18','2021-12-04 09:28:18'),('3381816793ce74a5f03110473696ceb7df54f4797613c0f981d5cd63f2ec04c8734a2f462705b62f',4,1,'Personal Access Token','[]',0,'2020-10-26 23:31:41','2020-10-26 23:31:41','2021-10-27 06:31:41'),('3392f0885f419d20d3711cc32ccc07ae135c7761b22abcf90161f15f14d591bade2a513b59a5cfa2',10,1,'Personal Access Token','[]',0,'2020-11-27 06:50:02','2020-11-27 06:50:02','2021-11-27 13:50:02'),('3678ced6f0d690e76f1eba897c4687c4cee4c6563b17d426c18b39f50ff6ad57f47761a845c29939',10,1,'Personal Access Token','[]',0,'2020-11-19 02:24:13','2020-11-19 02:24:13','2021-11-19 09:24:13'),('3c68a20701c55880e20fb7e619491d55eb8571b92008d5fe7389f0b2c9d90f5a4ce9b5fb4b65d6ac',10,1,'Personal Access Token','[]',0,'2020-11-20 03:49:02','2020-11-20 03:49:02','2021-11-20 10:49:02'),('3d9383ab957830b71b769de7c345121ae25869163aa25c9301d22b0b9363beab618bd0f7d5d5e005',10,1,'Personal Access Token','[]',0,'2020-11-19 22:31:08','2020-11-19 22:31:08','2021-11-20 05:31:08'),('3de2154ce39c3629e0c4dee703815ee6cacc9a1d0beac2f98e617a08b74978390b3c53821ecf3ad8',10,1,'Personal Access Token','[]',0,'2020-11-14 02:25:32','2020-11-14 02:25:32','2021-11-14 09:25:32'),('3e2b7622a7c8d65d1da5614bf480df5d1487399bc058fc78a529597c9a6f5a33f57abdd09b9972de',10,1,'Personal Access Token','[]',0,'2020-12-01 03:20:35','2020-12-01 03:20:35','2021-12-01 10:20:35'),('3e3da78c83cb2bd8ae7fc3e32216df44f19279a95865fcd6b459dcc96b2687313e7de06d0f31ae68',10,1,'Personal Access Token','[]',0,'2020-11-19 23:08:23','2020-11-19 23:08:23','2021-11-20 06:08:23'),('3eb242a8d19b0adcbf5ad3a4eefe1f4617b01d6837e79a3d36ab833e8c4a35f3c728147dca8c0f6c',10,1,'Personal Access Token','[]',0,'2020-11-28 09:43:00','2020-11-28 09:43:00','2021-11-28 16:43:00'),('40cb0adadba023191ceab79bcea7e61283ab02adce608c0b8391147d3f1cb5627e6b88ac5be5b2c7',10,1,'Personal Access Token','[]',0,'2020-11-19 22:31:13','2020-11-19 22:31:13','2021-11-20 05:31:13'),('42954aebbea2507309ccf721c0d19ebc9a04440677bb6a4775df706b1f77b973914b430604f980ed',10,1,'Personal Access Token','[]',0,'2020-11-27 06:24:00','2020-11-27 06:24:00','2021-11-27 13:24:00'),('42fa4b7431f60f241c69be67bd332be4174cc6c387c08cdc4fba5ead62fb4faf3fb27c602054baa2',4,1,'Personal Access Token','[]',0,'2020-10-26 23:32:59','2020-10-26 23:32:59','2021-10-27 06:32:59'),('430368692a831041926108be287b926835bcc06ed0ef600308308829c23455a0d680e5f132849fc3',10,1,'Personal Access Token','[]',0,'2020-11-28 08:40:28','2020-11-28 08:40:28','2021-11-28 15:40:28'),('43f4a16227e1acf0d3192c9800a112509f9f4057e45506faf7a7ec60732b5ee9a45c4963a51cc3c1',10,1,'Personal Access Token','[]',0,'2020-11-20 00:49:00','2020-11-20 00:49:00','2021-11-20 07:49:00'),('4469ba3418ebddd0e7c5be13f240a966d4e40d1add1330296b68253de4c0ed591944e7580ab8e601',9,1,'Personal Access Token','[]',0,'2020-11-10 05:37:48','2020-11-10 05:37:48','2021-11-10 12:37:48'),('448a1c3963e0406eafac3db12a80feb1c62b8c8a09b1b6732dcf8aec55beef488a4817d009ea9998',10,1,'Personal Access Token','[]',0,'2020-11-19 23:08:45','2020-11-19 23:08:45','2021-11-20 06:08:45'),('468e257fdffe96db509327dd1b837239abbe98809e19c4ab6209caf5cad8cc39046a1bfb00a3e010',4,1,'Personal Access Token','[]',0,'2020-10-26 23:30:02','2020-10-26 23:30:02','2021-10-27 06:30:02'),('46d8081be78b064d1bfb0a69dc47de1436e4fc2b475dd8568de5d8819496e2858c7f86b06855270b',10,1,'Personal Access Token','[]',0,'2020-11-27 04:21:48','2020-11-27 04:21:48','2021-11-27 11:21:48'),('4743cc008cc76859da6ff0e984dacf487096b66d04e0b4cb6fe154722ef634a5853cefbbf5429b96',10,1,'Personal Access Token','[]',0,'2020-11-15 06:29:33','2020-11-15 06:29:33','2021-11-15 13:29:33'),('47e53c7befd2340279355bdd652cd00e76d3e38a797a7742c30a48ccc002363e3d9d9be83ce039ef',10,1,'Personal Access Token','[]',0,'2020-11-20 02:12:50','2020-11-20 02:12:50','2021-11-20 09:12:50'),('4928a3438bca7a1afd78035857ac9ee7a0adf624d9e84c41bfbf09fea25bf7459f0201f0bfaa03d2',10,1,'Personal Access Token','[]',0,'2020-12-02 00:53:24','2020-12-02 00:53:24','2021-12-02 07:53:24'),('4a7c1a8e97f1f354826b66712c67bf133904f62c09e54657c0c13a06858d68f684969ec1364d6c3f',10,1,'Personal Access Token','[]',0,'2020-11-19 22:51:31','2020-11-19 22:51:31','2021-11-20 05:51:31'),('4d152d104289a5fc21afa1d26f6346c8d4b87cfb6763b378b83cd222ec9fcc64f0a1eeb0a7b9b551',10,1,'Personal Access Token','[]',0,'2020-11-20 00:51:14','2020-11-20 00:51:14','2021-11-20 07:51:14'),('4d1831e66d7813a034f41d9e3025f605f78dfd93c4df7a643d144d8d13f628bd65546b90a43d946d',10,1,'Personal Access Token','[]',0,'2020-11-28 09:43:01','2020-11-28 09:43:01','2021-11-28 16:43:01'),('506a8beba4b3127e6d18e72d427911eea657036a90479d8cbad7ca6cf5c22f40cf662ed7c36a26a7',10,1,'Personal Access Token','[]',0,'2020-12-01 03:20:06','2020-12-01 03:20:06','2021-12-01 10:20:06'),('54a8b9d7f93e340ecf662967d81533bc4b4866d67cfac40d2d5f67f9d6fec8d1ba43d439ee262416',10,1,'Personal Access Token','[]',0,'2020-11-28 09:44:15','2020-11-28 09:44:15','2021-11-28 16:44:15'),('56f8b6948bfa9a16a020e57f6b667a4614b63d708ef6a974ef5244ab9b894b81c89b6a63a75debc0',10,1,'Personal Access Token','[]',0,'2020-11-27 04:25:52','2020-11-27 04:25:52','2021-11-27 11:25:52'),('598ef8b6b44c5e835c4d44a1f197b8cc3146ccf89a308dfbfcf2d795d7e01e1bfd91d11efffc64a9',10,1,'Personal Access Token','[]',0,'2020-11-12 09:56:25','2020-11-12 09:56:25','2021-11-12 16:56:25'),('59a1f1bd0b95e04235aefa4c190c58c5fad4aac03f5d2c6e7030e82061a0a189480a8f1c5af6bbaf',10,1,'Personal Access Token','[]',0,'2020-11-19 04:21:11','2020-11-19 04:21:11','2021-11-19 11:21:11'),('5b4ac77032c1cb1c1f9f5ae5faab23ae6064ff88347b0e9918789645a34b47024ffcae473bbec486',10,1,'Personal Access Token','[]',0,'2020-11-14 02:33:57','2020-11-14 02:33:57','2021-11-14 09:33:57'),('5b83979045804054418f7b0f6d5b98916039e8b3a793618011e19aceb7b28989c76860117e3f7476',10,1,'Personal Access Token','[]',0,'2020-11-28 10:09:10','2020-11-28 10:09:10','2021-11-28 17:09:10'),('5b8d7bf589a3836273d8c26a9388de6738d363cc37c45e38c0847aad10197d6991e035009b8d0fcd',10,1,'Personal Access Token','[]',0,'2020-11-14 02:18:36','2020-11-14 02:18:36','2021-11-14 09:18:36'),('5c7f6c255946c943c990f41b3c02ae818955f118c02a09f5d383062a2fa475e77e08e981e7ad5d3d',10,1,'Personal Access Token','[]',1,'2020-12-02 00:54:36','2020-12-02 00:54:36','2021-12-02 07:54:36'),('5cfa5ea6fe4540e7380c597c7332f9f6a2fed8681fff8320bc51e8f4b2e9c1cffaf6b8251bcc95ea',4,1,'Personal Access Token','[]',0,'2020-10-26 23:37:27','2020-10-26 23:37:27','2021-10-27 06:37:27'),('5d61d093631020d643378d28c6aa51c8cdafce8da6bcd75c35e7b86e6813d0076c1eb80d21c41f90',4,1,'Personal Access Token','[]',0,'2020-11-28 03:08:54','2020-11-28 03:08:54','2021-11-28 10:08:54'),('5d9b7372bf0a952b9bb0e9a927cc1a61fc19d20a4b6c171c9f144ae7c52b65a0375e1d1c4c468375',4,1,'Personal Access Token','[]',0,'2020-11-27 23:23:49','2020-11-27 23:23:49','2021-11-28 06:23:49'),('5f6993d950790531626c97be27d2896682f166f55532254e8e80b35659d9ab086f8b238fcb0e9366',10,1,'Personal Access Token','[]',0,'2020-11-28 09:40:50','2020-11-28 09:40:50','2021-11-28 16:40:50'),('5fab413c4204328aa534821ab2a6220bee5cc27c69e8b19e01793a66f740c698be54a7b2a1ce3166',14,1,'Personal Access Token','[]',0,'2020-11-19 07:55:23','2020-11-19 07:55:23','2021-11-19 14:55:23'),('6013ac1b47b7378f41583336caf2fea8f2d8e7e6bfbef79f50678d1a15d3df68575b067f8c91e6e6',10,1,'Personal Access Token','[]',0,'2020-11-19 22:30:51','2020-11-19 22:30:51','2021-11-20 05:30:51'),('626128ab76748037cf5c97990834a9fe334d494797adb9877af923bd65c8e26baf614df6ae65c11c',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:29','2020-11-28 08:14:29','2021-11-28 15:14:29'),('6510d8281771901626d0c848d1460c3fdf5d439aae6c6eaba3b76fa7238722568e1821946a4cd8a9',10,1,'Personal Access Token','[]',1,'2020-12-01 21:59:48','2020-12-01 21:59:48','2021-12-02 04:59:48'),('6717896ba8961759771753c0c24febfce5fc2e435d8969f03d8c5ffbfe262fde258647c3fb943514',4,1,'Personal Access Token','[]',0,'2020-10-26 23:46:58','2020-10-26 23:46:58','2021-10-27 06:46:58'),('692a87dd9e229abedeb839d74c59ae8e3d1f3d21976f7a9dc9d7f83676889912aa9b6458cae0a73d',10,1,'Personal Access Token','[]',0,'2020-11-27 04:47:33','2020-11-27 04:47:33','2021-11-27 11:47:33'),('6cad2f4f3b20429e36d4c33de78eb5374e27106bc7bfd5948740e91e7a6eb53ff5deb7f14d645cf0',10,1,'Personal Access Token','[]',0,'2020-12-01 03:25:46','2020-12-01 03:25:46','2021-12-01 10:25:46'),('6d65738e0c8c2e562cdd67c22f7ea227e474a350ea85386aa0f225287ddfb91f30e99b234117bfa0',10,1,'Personal Access Token','[]',0,'2020-11-27 23:39:40','2020-11-27 23:39:40','2021-11-28 06:39:40'),('7010434bbbe57bec3ebf5a4bca10d8a1474cf56ad4f8225afc0f0458e6cb35542b161a91defd48be',10,1,'Personal Access Token','[]',0,'2020-11-27 06:17:20','2020-11-27 06:17:20','2021-11-27 13:17:20'),('715a1f545a941715e53839fdc73cc6b64247e5bc15473a4dfbae9e25249646f755eb49c43a19efca',10,1,'Personal Access Token','[]',0,'2020-11-19 04:18:52','2020-11-19 04:18:52','2021-11-19 11:18:52'),('72f2edcf3fb9d3cfe36386ef42b5e82bac651c570a8e8ae658c3b8fe69754e012effc6052a65b90f',4,1,'Personal Access Token','[]',0,'2020-11-10 05:29:47','2020-11-10 05:29:47','2021-11-10 12:29:47'),('7463ea7db8cd849b0771dfa3165e54244df206ee0471a62102b83a141ef231ed6f08bbb3730c42df',10,1,'Personal Access Token','[]',0,'2020-12-01 03:18:04','2020-12-01 03:18:04','2021-12-01 10:18:04'),('763fac58aecd7d2c9c4dd3ea6c3f12f71c661fdb242de5eec0f10fc8bfb22c3925f3a2ed1e137415',10,1,'Personal Access Token','[]',0,'2020-11-28 10:07:23','2020-11-28 10:07:23','2021-11-28 17:07:23'),('783286dde6be1401f3026554d24df12b278096e6606b2240f974b86719c369f745fb09fe72f8f78c',10,1,'Personal Access Token','[]',0,'2020-11-12 23:31:12','2020-11-12 23:31:12','2021-11-13 06:31:12'),('793ece27bf8e5ace26c4a2201c9caeb6ee39036f77c40a9e8e1c630492defc2d08ab6535f9ddbfa1',10,1,'Personal Access Token','[]',0,'2020-12-03 00:45:16','2020-12-03 00:45:16','2021-12-03 07:45:16'),('7ecac0d18acbd795338f4aa01b6fc04cca424beb1c076773a0dee9e30a5afb0e3f6f0f5d0a56b3cf',1,1,'Personal Access Token','[]',0,'2020-10-14 06:11:27','2020-10-14 06:11:27','2021-10-14 13:11:27'),('7f485d6dfa3d4447a794e6ee5f4eb01397f4bd40e2c23b9475ac00ac5327c8039fd4948f8cf11363',10,1,'Personal Access Token','[]',0,'2020-11-20 02:21:09','2020-11-20 02:21:09','2021-11-20 09:21:09'),('80699db300c52f354b5bc224521e5b0e55622ea9e818ab616f388f6742ee2813239e780e38bd33bc',10,1,'Personal Access Token','[]',0,'2020-11-20 05:13:45','2020-11-20 05:13:45','2021-11-20 12:13:45'),('84557cb79d0fb582499f05532cdebc6fe3da7d7d9cd2f287646a3e44a1256e4fce3f1c7620f82e14',10,1,'Personal Access Token','[]',0,'2020-11-28 10:05:53','2020-11-28 10:05:53','2021-11-28 17:05:53'),('84be817b37bd53a84e94d3e319bd9c07a782a671c9c2d8edbb0a8e72edf35ade3de2f1d3efb733b2',10,1,'Personal Access Token','[]',0,'2020-11-28 03:09:12','2020-11-28 03:09:12','2021-11-28 10:09:12'),('863efaa64acb93b6afadcaa4fe2ac9af7205ceeec97d042e749759727717399cb23fb872d74c5d96',10,1,'Personal Access Token','[]',0,'2020-11-27 04:52:17','2020-11-27 04:52:17','2021-11-27 11:52:17'),('87bb7d8f124b3df89ff31dbe6ab01a46571b1b215615f26bbf3a5959408e9f8edb4915315e897f3b',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:29','2020-11-28 08:14:29','2021-11-28 15:14:29'),('8ac298b413e222a08d6301c7a1b290e08de664d292fafcb943043ad7faa0320973c01406f6d6d676',10,1,'Personal Access Token','[]',0,'2020-11-20 02:16:17','2020-11-20 02:16:17','2021-11-20 09:16:17'),('8b6f2bdfccbc8a6593f2af3349e62469ded6d22e65c1d46f0bc37bb98f7c867639c04f3c5e7c0ea1',10,1,'Personal Access Token','[]',0,'2020-12-03 00:27:09','2020-12-03 00:27:09','2021-12-03 07:27:09'),('8d18cb4f11696b19217d18393526ecbdcacb7b495900a05c77a549e7f05d157308ba587c085f4ce1',10,1,'Personal Access Token','[]',0,'2020-11-20 02:13:46','2020-11-20 02:13:46','2021-11-20 09:13:46'),('8d635f21abd14047525cd1a3ff0c38ea97118dc1c442184adcade8d772061ae88275e9ab3f994776',10,1,'Personal Access Token','[]',0,'2020-11-19 22:45:04','2020-11-19 22:45:04','2021-11-20 05:45:04'),('90647476373e661762dada1d0ff72f5139b1fccdcea40a76a29877fbc3a52a4e739bfdb2e8c891df',10,1,'Personal Access Token','[]',1,'2020-12-02 03:35:11','2020-12-02 03:35:11','2021-12-02 10:35:11'),('92b65d591407391f4f270840063991494bb117035fc5ad68536705da42ddae8660be9b44b4df5d24',10,1,'Personal Access Token','[]',0,'2020-12-03 00:47:09','2020-12-03 00:47:09','2021-12-03 07:47:09'),('96c1e5ef2c1d066abdd0380011c1f5311be3d1ec3cf60faa993f86d25a435125f86ba9ceeac91fc8',10,1,'Personal Access Token','[]',0,'2020-12-02 00:41:12','2020-12-02 00:41:12','2021-12-02 07:41:12'),('9755c7bb98a7c9f161d44564d88aabf01fc1251a7235faf6f727f6023322366ce9e392c5844ebccc',10,1,'Personal Access Token','[]',0,'2020-11-19 22:47:34','2020-11-19 22:47:34','2021-11-20 05:47:34'),('9c025547acf667ec58b86a497ecdb9bba8fd1067075e8546b0338d4edfed20d4bbee691519c45239',10,1,'Personal Access Token','[]',0,'2020-12-02 00:46:03','2020-12-02 00:46:03','2021-12-02 07:46:03'),('9c5f77f354198920feb375a3e53d6cc9f58032e7c253c2f4d7d38110695eced70ab2d1b2cdaff951',10,1,'Personal Access Token','[]',0,'2020-12-01 21:59:47','2020-12-01 21:59:47','2021-12-02 04:59:47'),('9edf1afcac9878e5f28d622987445723b231137aa142f5ced36c5def216053910449d9329dded8a3',10,1,'Personal Access Token','[]',0,'2020-11-13 02:49:29','2020-11-13 02:49:29','2021-11-13 09:49:29'),('9f223289164ed4fddd5be381e932ce3218ea6039085175567b01db995f377e9e607e90c670dbe52d',10,1,'Personal Access Token','[]',0,'2020-11-20 00:47:59','2020-11-20 00:47:59','2021-11-20 07:47:59'),('a10e0ed20ab3f9a5fa6cff9ddcf937b724ae412732e154c6fb0db863f4aa84176b66da41a470a79d',10,1,'Personal Access Token','[]',0,'2020-11-28 09:43:00','2020-11-28 09:43:00','2021-11-28 16:43:00'),('a2f45d48dd9b94b8aaea5dfebe94d18601ce14ad1f2dc6e58cd797fa8757f1545987a1ac3eee2edd',10,1,'Personal Access Token','[]',0,'2020-11-19 22:53:14','2020-11-19 22:53:14','2021-11-20 05:53:14'),('a790fed17a903b1213143a3f4d9ec398285f9d2aeb24baf30f43b28dc0f29845e6d10880f7d77cfd',10,1,'Personal Access Token','[]',0,'2020-11-14 02:38:10','2020-11-14 02:38:10','2021-11-14 09:38:10'),('a8b7580d9a102b1a5f5973eb0c7281a2d9f54c5a871f3d23d9a979f1d811c0252b914463dfcd12f0',10,1,'Personal Access Token','[]',0,'2020-11-20 02:14:40','2020-11-20 02:14:40','2021-11-20 09:14:40'),('aa20142f8724aacd6aaa8aeecab0820ed34aeef4ad4259a2cd7513698017124cfee4dbc15a3c3114',1,1,'Personal Access Token','[]',0,'2020-10-14 06:54:25','2020-10-14 06:54:25','2021-10-14 13:54:25'),('ab6e48aeeafb5006fb925b6fa0cb2178c47f87b91f053b8a5640d66b3c6f23385a53b945d5fe710b',10,1,'Personal Access Token','[]',0,'2020-11-20 04:58:57','2020-11-20 04:58:57','2021-11-20 11:58:57'),('abfb2b4cbbc163eaf843aa50d990f3410b01dce48369937326f56ef934ad50f27c96ab89e4a9879b',10,1,'Personal Access Token','[]',0,'2020-11-27 06:12:08','2020-11-27 06:12:08','2021-11-27 13:12:08'),('acc2a9c34223443709f6fe384953a8ce00bee92c7c7d99d8c40c1df6e1d31b8ef8300f64111a0a8c',4,1,'Personal Access Token','[]',1,'2020-10-26 23:36:11','2020-10-26 23:36:11','2021-10-27 06:36:11'),('b26c34a9228465d0e944dc5fa04e901622b9b64d583775ed09a1d96c75addd179d56e354a8424455',10,1,'Personal Access Token','[]',0,'2020-11-14 02:41:57','2020-11-14 02:41:57','2021-11-14 09:41:57'),('b5841d29737f744d1d65217798e27df4ed641caccf204b1cdea6f5522525e756d89aa4e1543d257b',10,1,'Personal Access Token','[]',0,'2020-12-02 00:37:38','2020-12-02 00:37:38','2021-12-02 07:37:38'),('b6853fc31c25285a47a953a2236dc2f8e6a840bfdf1420697a4b600870c2494e5eb61036f3c2b776',10,1,'Personal Access Token','[]',0,'2020-11-28 09:41:34','2020-11-28 09:41:34','2021-11-28 16:41:34'),('b6c919810660993a9399f32113cd8e5f45155814a12a1842b29c38b4dd6348731431de5df7209a6d',10,1,'Personal Access Token','[]',0,'2020-11-27 04:48:38','2020-11-27 04:48:38','2021-11-27 11:48:38'),('b7f9248b299ab5e433bfceeeb65537d4a5a8c0539363729d7e81633d49df37c2ed6a4d04caf158de',10,1,'Personal Access Token','[]',0,'2020-12-02 00:29:50','2020-12-02 00:29:50','2021-12-02 07:29:50'),('b8ceca61055abd0ef3d4ef6bc2f041ba18707812da654caa50836a137da8dc848c586dc33d650f5d',10,1,'Personal Access Token','[]',0,'2020-12-02 00:50:53','2020-12-02 00:50:53','2021-12-02 07:50:53'),('be75eb903574d6f0bc9b2addb9bbf352fbb1d0a40e316159e23546f64ff0d6b3b58751b8051b03e5',10,1,'Personal Access Token','[]',0,'2020-12-02 06:37:25','2020-12-02 06:37:25','2021-12-02 13:37:25'),('beada9cb1fc46cf1bac6d70d655c5bb700314bdf8c07fbd9d60d82030d00d34d555a2dfd5f911636',10,1,'Personal Access Token','[]',0,'2020-11-14 01:33:46','2020-11-14 01:33:46','2021-11-14 08:33:46'),('c12ede540b46edd4e9a9686b32fd0e98cd89b298234ea95620109e14ad04da1cf5c6c8db008fa37d',10,1,'Personal Access Token','[]',0,'2020-12-04 02:28:18','2020-12-04 02:28:18','2021-12-04 09:28:18'),('c222596fd21dad2df5178e9981cdefad1be154c6ab022a82a4242c849b3774c487ef8fa2775d26dc',10,1,'Personal Access Token','[]',0,'2020-11-27 06:53:36','2020-11-27 06:53:36','2021-11-27 13:53:36'),('c2fdcf31cd65f42f26b54b45bc663edca761bb87dba7fa13ffac46c5987c5de515ced418195e1377',10,1,'Personal Access Token','[]',1,'2020-12-03 00:47:48','2020-12-03 00:47:48','2021-12-03 07:47:48'),('c355ffc3fd22e54a8c875cc168ed5dce0fef0bc5ef0003b4eb8d8b741630e352c96a03a42528a354',10,1,'Personal Access Token','[]',0,'2020-11-28 09:42:57','2020-11-28 09:42:57','2021-11-28 16:42:57'),('c4878c2b66fb74402dd4453ce6b3236fe7a76d1cd3c12d419bf8c7e209b632ccc5c0be22cfa5b0d6',10,1,'Personal Access Token','[]',0,'2020-12-01 02:47:26','2020-12-01 02:47:26','2021-12-01 09:47:26'),('c59163d026058090d33229c186117bf76ea75c37acd9f7afb0c287a86a9515de22b627d3f952d04e',10,1,'Personal Access Token','[]',0,'2020-11-27 23:20:55','2020-11-27 23:20:55','2021-11-28 06:20:55'),('c86da3048a060bdc70d00b2b8c3f0c4bd6a39c61415d4310296d8a1d67fb6b16c213d1c13fb2537e',10,1,'Personal Access Token','[]',0,'2020-11-27 06:51:41','2020-11-27 06:51:41','2021-11-27 13:51:41'),('cc2d0dc194e2dc1d3bc6a729d7514be29d32717d37721a4ea79f0823e456e6c72327d9ef92276230',10,1,'Personal Access Token','[]',0,'2020-11-20 00:55:24','2020-11-20 00:55:24','2021-11-20 07:55:24'),('cd1d5ad1e69ddddaaadf2fe7765785fdf47da773b37ee8795393bde4658fc22e6b402b653fdf4495',10,1,'Personal Access Token','[]',0,'2020-11-14 23:29:44','2020-11-14 23:29:44','2021-11-15 06:29:44'),('cd8f18f447ec5f83397c337cf049d71f7bb574da47daee40eec2e971aec9fa7fe4a90c4690cf0776',10,1,'Personal Access Token','[]',0,'2020-11-27 02:55:17','2020-11-27 02:55:17','2021-11-27 09:55:17'),('d17bae5b5a67c8a6b0174619bf612381c3048502ea7cc4daa814a8047840f59a705905bed97e1212',10,1,'Personal Access Token','[]',0,'2020-11-19 22:42:41','2020-11-19 22:42:41','2021-11-20 05:42:41'),('d20a275375be5363ebbb2fd73c7c5b849fa752605a32757fa40c552fcdeb0d9dba61d6d4da66e898',10,1,'Personal Access Token','[]',0,'2020-11-28 09:57:13','2020-11-28 09:57:13','2021-11-28 16:57:13'),('d48adca1d6c900ba047681dc0aa3ca3185961e5a89c41eb6635c4ad418a87c76432abea3be93ebfd',10,1,'Personal Access Token','[]',0,'2020-12-01 03:26:07','2020-12-01 03:26:07','2021-12-01 10:26:07'),('d59c5e027be4ffc76acd2b3415dc33b222900b755c9aa94a26c707d65bbfd3f2285a3a12caece1f0',10,1,'Personal Access Token','[]',1,'2020-12-01 22:01:03','2020-12-01 22:01:03','2021-12-02 05:01:03'),('da983fc7e3fd9de3f71b81fab91c8ae382260044ab9c1e81f43a272e5a481cae3a7f8301a3e7f457',10,1,'Personal Access Token','[]',0,'2020-11-19 22:51:46','2020-11-19 22:51:46','2021-11-20 05:51:46'),('dac7133f0508bd36f75ab8617587665798c5b9dabe46df06c1d9e6fe9f9f448d0d9c830fdad4de30',10,1,'Personal Access Token','[]',0,'2020-12-01 03:01:42','2020-12-01 03:01:42','2021-12-01 10:01:42'),('daccbb8eaa0745d56c522c7a24506a3ff2b2a417efdc3227147cd7e2bf8894ace283c1b536a17246',10,1,'Personal Access Token','[]',0,'2020-11-28 09:46:40','2020-11-28 09:46:40','2021-11-28 16:46:40'),('dbd84967d364fe5058d7a5da578637cfad84e8342cae8ebf665b60d54759f54bb9136d4bfc626fee',10,1,'Personal Access Token','[]',0,'2020-11-20 05:46:32','2020-11-20 05:46:32','2021-11-20 12:46:32'),('deb0cce8eff4bfb13e6f2b9ebd97de56a44ee8c897774abdafb18e3c27e1b35924edf4e49734b5f3',10,1,'Personal Access Token','[]',0,'2020-11-28 09:56:41','2020-11-28 09:56:41','2021-11-28 16:56:41'),('df95c2a53ef936f1080ceaa4458a512cbd4852bd094ab7f77b068a36de38d4659766cf880ea73dc8',10,1,'Personal Access Token','[]',0,'2020-11-20 00:47:07','2020-11-20 00:47:07','2021-11-20 07:47:07'),('e075a6556f174a1a8a8efd47520cbe909025011c65d570823f3a31684069ed38b052376b0d36c174',10,1,'Personal Access Token','[]',0,'2020-11-19 04:29:29','2020-11-19 04:29:29','2021-11-19 11:29:29'),('e14a94565cbdb9d6d1e922a56c86bb5520b1aae1c919d4580f838a136be0847a84d2eb870630e054',10,1,'Personal Access Token','[]',0,'2020-11-28 10:08:03','2020-11-28 10:08:03','2021-11-28 17:08:03'),('e504287f83abe403b5211926891c292091bdf8270cc077ff6e2168a02a6551f317a28ef4acad7787',10,1,'Personal Access Token','[]',0,'2020-12-02 00:43:41','2020-12-02 00:43:41','2021-12-02 07:43:41'),('e53d127348154ff6f08cd36985af8271bea5a84796e0c57ea697c608f7615e0ba14f34663f6ee50f',10,1,'Personal Access Token','[]',0,'2020-11-14 03:13:25','2020-11-14 03:13:25','2021-11-14 10:13:25'),('e6507f5c0a4b4204339f7fa69090d846e27e9e989c69ce75b51d759ace4dee97b14a536b95961a25',10,1,'Personal Access Token','[]',1,'2020-11-28 10:27:32','2020-11-28 10:27:32','2021-11-28 17:27:32'),('e80beacf69ccd6430db819939fc21531b60bd88e6dd98d53c80550e186b8e4d3611106bea5dd93ec',10,1,'Personal Access Token','[]',1,'2020-11-12 09:55:02','2020-11-12 09:55:02','2021-11-12 16:55:02'),('e8c7b54f2abe6812d012535241dc0fb998ac1927d23f8e92bfd16ccc215cb816f19a08a6e427871d',4,1,'Personal Access Token','[]',1,'2020-10-26 23:36:59','2020-10-26 23:36:59','2021-10-27 06:36:59'),('eb0a0f8e38504bb9fd1d3b833b741515f83017b45184ae311031a4d1fc6bf1deeba99602d471336e',10,1,'Personal Access Token','[]',0,'2020-11-19 04:16:52','2020-11-19 04:16:52','2021-11-19 11:16:52'),('ec3a4eeb90fa57573b230c0b4bd9f3c8a02a74902886afaaa42de11d5994d34319d37263734aa348',10,1,'Personal Access Token','[]',0,'2020-12-02 06:42:34','2020-12-02 06:42:34','2021-12-02 13:42:34'),('ed067e431730c24ee78a43928e72b1df22e1fa767539383ded8a94ad1d279dd6fcdc9302d7a28b17',10,1,'Personal Access Token','[]',0,'2020-11-28 09:52:36','2020-11-28 09:52:36','2021-11-28 16:52:36'),('ef08ae868c3dcc3304b98d3b930913240054d8834690b171ec489a1a10d43e0e64adb9c5f910993a',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:44','2020-11-28 08:14:44','2021-11-28 15:14:44'),('ef8b3596e358644ff9e3776d0bdf301c497f87f4d22681ebbc014ed6807c9bc944c30ac2898fc281',10,1,'Personal Access Token','[]',0,'2020-11-27 06:53:13','2020-11-27 06:53:13','2021-11-27 13:53:13'),('f38009b77bf03e0a539c54ed15d302b77bd414fd87b928a21a61e90aa5aa4df45d77081ba33fb5b3',10,1,'Personal Access Token','[]',0,'2020-11-20 00:49:41','2020-11-20 00:49:41','2021-11-20 07:49:41'),('f487d550789555d70f1fe603140fac0422ee21da4f9d68b548b4f3e43816aa2b4ad1e9d9913b986a',10,1,'Personal Access Token','[]',0,'2020-11-28 08:14:28','2020-11-28 08:14:28','2021-11-28 15:14:28'),('f51c599f205b6063fba714f32233877038f1825ccdb0330b5c48c8d964317878c4609ac08fbb9270',10,1,'Personal Access Token','[]',0,'2020-12-01 03:03:53','2020-12-01 03:03:53','2021-12-01 10:03:53'),('f59aaceebb6dd65008d8e020f9a81cdcc0baaa4e128488e47e2736d65db63420059f58e746a671e8',10,1,'Personal Access Token','[]',0,'2020-12-02 06:35:07','2020-12-02 06:35:07','2021-12-02 13:35:07'),('f84ea9976c23019d687987a09945e487acc68d80da4f8bf0a10225676f1101a65df2684e9ce8d8ca',10,1,'Personal Access Token','[]',0,'2020-11-20 02:18:01','2020-11-20 02:18:01','2021-11-20 09:18:01'),('fbd344afa701697261988fb30cdccb417e244c09431304cce6b68005bf1a374fdc6a6340797cf442',1,1,'Personal Access Token','[]',0,'2020-10-23 01:40:50','2020-10-23 01:40:50','2021-10-23 08:40:50'),('fd965b836736c9569baf5e282ed9da86895a5ae74f7ae21a4ddd249b36bcc64c81bdebcf39e316c0',10,1,'Personal Access Token','[]',0,'2020-11-27 06:53:27','2020-11-27 06:53:27','2021-11-27 13:53:27'),('fee0c8e5da8a931dbed51a270c20f7278ad6e2f3711eef3d256d8a9f4611de6defe7dfb46ea3b201',10,1,'Personal Access Token','[]',0,'2020-11-19 22:41:51','2020-11-19 22:41:51','2021-11-20 05:41:51');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','qQ7Pip9DXtEeqwrPRimORXdZ2w7fEHaBgiNhBByn',NULL,'http://localhost',1,0,0,'2020-10-13 19:14:23','2020-10-13 19:14:23'),(2,NULL,'Laravel Password Grant Client','Q8d2bM2d7cMBY1OCUXV7CFQh9IqBHyUCh2TlA4Bc','users','http://localhost',0,1,0,'2020-10-13 19:14:23','2020-10-13 19:14:23');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-13 19:14:23','2020-10-13 19:14:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outlets`
--

DROP TABLE IF EXISTS `outlets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outlets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `laundry_type` json NOT NULL,
  `manhours` json NOT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outlets`
--

LOCK TABLES `outlets` WRITE;
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
INSERT INTO `outlets` VALUES (1,'Izumi Laundry','Rock Bottom','123123',5.00,'1','7',3,'2020-10-27 00:19:41','2020-10-27 00:22:54','2020-10-27 00:22:54'),(2,'Sagiri Laundry','Bikini Bottom','123123123',4.80,'2','4',3,'2020-10-27 00:23:17','2020-10-27 00:23:17',NULL),(3,'Dunno Laundry','Bikini Bottom','123123123',4.80,'2','4',7,'2020-10-28 06:26:42','2020-10-28 06:26:42',NULL),(4,'Izumi Laundry','Rock Bottom','123123',5.00,'1','7',6,'2020-11-10 05:33:41','2020-11-10 05:34:59',NULL),(5,'Test Laundry','Bikini Bottom','012301230',4.80,'2','4',10,'2020-11-12 10:00:05','2020-11-12 10:00:05',NULL),(6,'Zekamashi Laundry','Hakone Fukuoka','097978',5.00,'2','8',9,'2020-11-30 05:00:27','2020-11-30 05:00:27',NULL);
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,3,'2020-10-14 06:37:07','2020-10-14 06:37:07',NULL),(2,3,'2020-10-14 06:38:45','2020-10-14 06:38:45',NULL),(3,3,'2020-10-14 06:41:05','2020-10-14 06:41:05',NULL),(4,3,'2020-10-14 06:54:17','2020-10-14 06:54:17',NULL),(5,3,'2020-10-14 06:54:29','2020-10-14 06:54:29',NULL),(6,3,'2020-10-23 01:40:59','2020-10-23 01:40:59',NULL),(7,4,'2020-10-28 06:25:45','2020-10-28 06:25:45',NULL),(8,6,'2020-11-10 05:33:08','2020-11-10 05:33:08',NULL),(9,10,'2020-11-12 09:57:07','2020-11-12 09:57:07',NULL),(10,3,'2020-11-14 01:33:36','2020-11-14 01:33:36',NULL);
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `po_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `laundry_type` json NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `outlet_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'LNDRY-2020/10/00001','Bikini Bottom 5',NULL,NULL,'2',NULL,4,2,'2020-10-27 01:00:00','2020-10-27 01:00:00',NULL),(2,'LNDRY-2020/10/00002','Bikini Bottom 5',1000,4.00,'2','drying',4,2,'2020-10-27 01:04:18','2020-10-28 06:33:25',NULL),(3,'LNDRY-2020/10/00003','Bikini Bottom 10',NULL,NULL,'2',NULL,4,3,'2020-10-28 06:28:09','2020-10-28 06:34:23','2020-10-28 06:34:23'),(4,'LNDRY-2020/11/00004','Bikini Bottom 10',1000000,4.00,'2','lagi dicuci',4,3,'2020-11-10 05:38:30','2020-11-12 10:01:29','2020-11-12 10:01:29'),(5,'LNDRY-2020/11/00005','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-12 10:00:57','2020-11-12 10:00:57',NULL),(6,'LNDRY-2020/11/00006','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-23 01:58:08','2020-11-23 01:58:08',NULL),(7,'LNDRY-2020/11/00007','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-23 22:56:41','2020-11-23 22:56:41',NULL),(8,'LNDRY-2020/11/00008','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-23 22:59:01','2020-11-23 22:59:01',NULL),(9,'LNDRY-2020/11/00009','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-23 22:59:06','2020-11-23 22:59:06',NULL),(10,'LNDRY-2020/11/00010','Bikini Bottom 10',NULL,NULL,'2',NULL,4,5,'2020-11-23 22:59:08','2020-11-23 22:59:08',NULL),(11,'LNDRY-2020/11/00011','Bikini Bottom 1022',NULL,NULL,'2',NULL,4,3,'2020-11-23 23:00:21','2020-11-28 03:06:09','2020-11-28 03:06:09'),(12,'LNDRY-2020/11/00012','Bikini Bottom 1022',NULL,NULL,'2',NULL,10,3,'2020-11-23 23:01:51','2020-11-28 03:06:11','2020-11-28 03:06:11'),(13,'LNDRY-2020/11/00013','Bikini 3Bottom 102212',NULL,NULL,'2',NULL,4,3,'2020-11-27 23:29:26','2020-11-28 03:06:23','2020-11-28 03:06:23'),(14,'LNDRY-2020/11/00014','Bikini 3Bottom 102212',NULL,NULL,'2',NULL,4,3,'2020-11-27 23:29:48','2020-11-28 03:06:25','2020-11-28 03:06:25'),(15,'LNDRY-2020/11/00015','Bikini 3Bottom 102212',NULL,NULL,'2',NULL,4,3,'2020-11-28 03:08:31','2020-11-28 03:08:31',NULL),(16,'LNDRY-2020/11/00016','Bikini 3Bottom 102212',NULL,NULL,'2',NULL,4,3,'2020-11-28 03:09:36','2020-11-28 03:09:36',NULL),(17,'LNDRY-2020/11/00017','test street',NULL,NULL,'2',NULL,10,3,'2020-11-28 03:09:54','2020-11-28 03:09:54',NULL),(18,'LNDRY-2020/11/00018','test home street',NULL,NULL,'2',NULL,10,3,'2020-11-28 03:10:58','2020-11-28 03:10:58',NULL),(19,'LNDRY-2020/11/00019','Shinchon Chome 16',10000,40000.00,'2','washing',10,6,'2020-11-30 05:01:21','2020-12-01 08:10:52',NULL),(20,'LNDRY-2020/11/00020','Shibuya Chome 232',20000,100000.00,'2','washing',10,6,'2020-11-30 05:01:57','2020-12-01 08:11:50',NULL),(21,'LNDRY-2020/11/00021','Shibuya Chome 232',10000,50000.00,'2','washing',10,6,'2020-11-30 05:02:08','2020-12-01 08:12:55',NULL),(22,'LNDRY-2020/11/00022','Kansai Street Chome 13',30000,60000.00,'2','washing',10,6,'2020-11-30 05:02:33','2020-12-01 08:13:45',NULL),(23,'LNDRY-2020/12/00023','Tohoku Street 1890',NULL,NULL,'2',NULL,10,6,'2020-12-01 01:39:20','2020-12-01 01:39:20',NULL),(24,'LNDRY-2020/12/00024','Tohoku Street 1890',NULL,NULL,'2',NULL,10,6,'2020-12-02 23:03:08','2020-12-02 23:03:08',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andro Aprila Adiputra','sekigahara','androaprila13@gmail.com','081818181','$2y$10$xF3NV6BhbU7UMacNLQzT6ObxeApaw93FN9b1YzaYYrG6fQOveBfmi',NULL,'2020-10-14 06:09:58','2020-10-14 06:09:58',NULL),(4,'Andro Aprila Adiputra','sekigahara1','androaprila134@gmail.com','0818181812','$2y$10$2Q8GKSo2R5XHwUp.r3KCG.GfnIU1Ye/78uQCmmtPoI2K9QYdLh6/S',NULL,'2020-10-26 23:29:23','2020-10-26 23:29:23',NULL),(6,'Andro Aprila Adiputra','sekigahara123','androaprila34@gmail.com','08181818','$2y$10$qmWaS8BUXDyDHjSm0Kz84O2dGTUDEvN4irGS.APFboGb0QzrWqLSO',NULL,'2020-10-26 23:30:51','2020-10-26 23:30:51',NULL),(8,'Andro','123123','test@gmail.com','08181818123','$2y$10$Oommxb1.ZIqs.LCeaeB7VO6J/ZcJ6I6g7HQA6y6oH6ls7.RgVkOQa',NULL,'2020-11-10 05:29:11','2020-11-10 05:29:11',NULL),(9,'Andro','12312311','test123@gmail.com','081818181232','$2y$10$i1rGAZTa0JKvK5DVmcfPceA3SjRoXYajo94FYpMOIb/iK4gpfooCy',NULL,'2020-11-10 05:37:06','2020-11-10 05:37:06',NULL),(10,'Shimakaze','zekamashi123','shimakaze@gmail.com','0812121341','$2y$10$Sgrez9SdT3TMkkuQ4bhGNOgP37tkWmCCZzakwV1SOMs8dHrnQHAs.',NULL,'2020-11-12 09:54:38','2020-11-12 09:54:38',NULL),(13,'Shimakaze','zekamashi1234','shimakaze1@gmail.com','08121213412','$2y$10$dgayXOdHAW8iZuZm0W0Vk.isDN4rX/uEGPW9cxVKPyOAelc9yR5Ry',NULL,'2020-11-19 07:08:20','2020-11-19 07:08:20',NULL),(14,'kashimakaze','kashima123','kashima@gmail.com','4232234234','$2y$10$LpPa0AZY/NvV39JrH3piqONvm7cWEGXcFRr5AuzOdPfCNnCu0ug4C',NULL,'2020-11-19 07:55:13','2020-11-19 07:55:13',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-16 17:56:13
