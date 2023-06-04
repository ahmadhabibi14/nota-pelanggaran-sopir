CREATE TABLE `Alamat` (
   `kode_alamat` varchar(50) NOT NULL,
   `detail_alamat` varchar(300) DEFAULT NULL,
   `kota` varchar(50) DEFAULT NULL,
   `propinsi` varchar(50) DEFAULT NULL,
   `kode_pos` varchar(30) DEFAULT NULL,
   PRIMARY KEY (`kode_alamat`),
   KEY `fk_kota` (`kota`),
   KEY `fk_propinsi` (`propinsi`),
   CONSTRAINT `fk_kota` FOREIGN KEY (`kota`) REFERENCES `Kota` (`kode_kota`),
   CONSTRAINT `fk_propinsi` FOREIGN KEY (`propinsi`) REFERENCES `Propinsi` (`kode_propinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci 