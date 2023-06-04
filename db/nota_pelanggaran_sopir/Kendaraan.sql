CREATE TABLE `Kendaraan` (
   `nomor_kendaraan` int(100) NOT NULL,
   `warna` varchar(70) DEFAULT NULL,
   `tahun` year(4) DEFAULT NULL,
   `tipe` varchar(100) DEFAULT NULL,
   `nomor_lambung` varchar(100) DEFAULT NULL,
   `supervisor_area` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`nomor_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci