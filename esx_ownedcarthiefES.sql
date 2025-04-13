-- Añadir columnas al sistema de propiedad de vehículos
ALTER TABLE `owned_vehicles` ADD `security` int(1) NOT NULL DEFAULT '0' COMMENT 'Nivel del sistema de alarma' AFTER `owner`;
ALTER TABLE `owned_vehicles` ADD `alarmactive` int(1) NOT NULL DEFAULT '0' COMMENT 'Estado del sistema de alarma' AFTER `security`;

-- Crear tabla para vehículos empeñados
CREATE TABLE `pawnshop_vehicles` (
	`owner` varchar(30) DEFAULT NULL,
	`security` int(1) NOT NULL DEFAULT '0' COMMENT 'Nivel del sistema de alarma',
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`price` int(15) NOT NULL,
	`expiration` int(15) NOT NULL,

	PRIMARY KEY (`plate`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insertar ítems relacionados con el robo y las alarmas
INSERT INTO `items` (name, label, weight) VALUES
	('hammerwirecutter', 'Martillo y cortador de alambre', 1),
	('unlockingtool', 'Herramientas de robo (Ilegal)', 1),
	('jammer', 'Bloqueador de señal (Ilegal)', 1),
	('alarminterface', 'Interfaz del sistema de alarma', 1),
	('alarm1', 'Sistema de alarma básico con altavoz', 1),
	('alarm2', 'Módulo de enlace de emergencia', 1),
	('alarm3', 'Módulo de posicionamiento GPS continuo', 1)
;
