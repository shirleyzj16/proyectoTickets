-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para ticket
CREATE DATABASE IF NOT EXISTS `ticket` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ticket`;

-- Volcando estructura para tabla ticket.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ticket.categories: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Concierto', '2021-07-20 18:03:37', '2021-07-20 18:03:38'),
	(2, 'Teatro', '2021-07-20 18:03:48', '2021-07-20 18:03:49'),
	(3, 'Deporte', '2021-07-20 18:03:58', '2021-07-20 18:03:59');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla ticket.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_event_id_foreign` (`event_id`),
  CONSTRAINT `clients_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ticket.clients: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `nombre_completo`, `numero_telefono`, `correo`, `cantidad`, `precio_total`, `event_id`, `created_at`, `updated_at`) VALUES
	(1, 'Isaac', '8888', 'sacalpizar@gmail.com', 2, '30', 1, '2021-07-21 00:17:07', '2021-07-21 00:17:07');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Volcando estructura para tabla ticket.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_evento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `categories_id` bigint(20) unsigned NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_categories_id_foreign` (`categories_id`),
  CONSTRAINT `events_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ticket.events: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `nombre_evento`, `precio`, `cantidad`, `categories_id`, `imagen`, `descripcion`, `lugar`, `fecha`, `hora`, `tipo`, `publico`, `created_at`, `updated_at`) VALUES
	(1, 'AC/DC', '15.00', 148, 1, 'event-photo-1626825932.jpg', 'Concierto para mayores de edad.', 'San José', '2021-08-10', '20:00:00', 'Pago', 'Adulto', '2021-07-21 00:05:32', '2021-07-21 00:17:07'),
	(2, 'Hamlet', '00.00', 100, 2, 'event-photo-1626826012.jpg', 'Obra para toda la familia.', 'Alajuela', '2021-08-10', '12:30:00', 'Gratuito', 'General', '2021-07-21 00:06:52', '2021-07-21 00:06:52'),
	(3, 'Basketball', '00.00', 50, 3, 'event-photo-1626826178.jpg', 'Campeonato juvenil.', 'Limón', '2021-11-09', '09:30:00', 'Gratuito', 'General', '2021-07-21 00:09:38', '2021-07-21 00:09:38'),
	(4, 'Football', '00.00', 50, 3, 'event-photo-1626826286.jpg', 'Partido entre Puntarenas y Cartago.', 'Puntarenas', '2021-07-10', '08:30:00', 'Gratuito', 'General', '2021-07-21 00:11:26', '2021-07-21 00:11:26'),
	(5, 'U2', '25.00', 100, 1, 'event-photo-1626826383.jpg', 'Concierto para todas las edades.', 'Cartago', '2021-07-10', '20:30:00', 'Gratuito', 'General', '2021-07-21 00:13:03', '2021-07-21 00:13:03'),
	(6, 'Romeo y Julieta', '10.00', 75, 2, 'event-photo-1626826478.jpg', 'Obra para mayores de edad.', 'San José', '2021-09-20', '13:30:00', 'Pago', 'Adulto', '2021-07-21 00:14:38', '2021-07-21 00:14:38');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Volcando estructura para tabla ticket.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ticket.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2021_07_13_205431_create_categories_table', 1),
	(3, '2021_08_28_035407_create_event_ticket', 1),
	(4, '2021_09_19_015228_create_clients_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla ticket.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ticket.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Juan', 'juan@gmail.com', NULL, '$2y$10$8vCf039FuF80MrkcrprUXexZfFnThA89JZL4AaRdveePGNfBJfYOa', NULL, '2021-07-21 00:04:34', '2021-07-21 00:04:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
