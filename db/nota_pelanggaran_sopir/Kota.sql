CREATE TABLE `Kota` (
   `kode_kota` varchar(50) NOT NULL,
   `nama_kota` varchar(250) DEFAULT NULL,
   `propinsi` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`kode_kota`),
   KEY `propinsi` (`propinsi`),
   CONSTRAINT `Kota_ibfk_1` FOREIGN KEY (`propinsi`) REFERENCES `Propinsi` (`kode_propinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_c