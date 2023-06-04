CREATE TABLE `Identitas_Sopir` (
   `identitas` varchar(100) NOT NULL,
   `nama` varchar(250) NOT NULL,
   `alamat` varchar(50) DEFAULT NULL,
   `no_sim` varchar(100) DEFAULT NULL,
   `sex` varchar(50) DEFAULT NULL,
   `tanggal_lahir` date DEFAULT '2000-10-17',
   `tinggi_badan` int(50) DEFAULT NULL,
   `berat_badan` int(50) DEFAULT NULL,
   PRIMARY KEY (`identitas`),
   KEY `fk_alamat` (`alamat`),
   CONSTRAINT `fk_alamat` FOREIGN KEY (`alamat`) REFERENCES `Alamat` (`kode_alamat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci