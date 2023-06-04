CREATE TABLE `Penilangan` (
   `nomor_nota` int(100) NOT NULL,
   `tanggal_nota` date NOT NULL,
   `identitas_sopir` varchar(100) DEFAULT NULL,
   `kendaraan` int(100) DEFAULT NULL,
   `pelanggaran` varchar(100) DEFAULT NULL,
   `petugas_pemantau` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`nomor_nota`),
   KEY `fk_identitas_sopir` (`identitas_sopir`),
   KEY `fk_kendaraan` (`kendaraan`),
   KEY `fk_pelanggaran` (`pelanggaran`),
   KEY `fk_petugas_pemantau` (`petugas_pemantau`),
   CONSTRAINT `fk_identitas_sopir` FOREIGN KEY (`identitas_sopir`) REFERENCES `Identitas_Sopir` (`identitas`),
   CONSTRAINT `fk_kendaraan` FOREIGN KEY (`kendaraan`) REFERENCES `Kendaraan` (`nomor_kendaraan`),
   CONSTRAINT `fk_pelanggaran` FOREIGN KEY (`pelanggaran`) REFERENCES `Pelanggaran` (`kode_pelanggaran`),
   CONSTRAINT `fk_petugas_pemantau` FOREIGN KEY (`petugas_pemantau`) REFERENCES `Petugas_Pemantau` (`kode_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci