CREATE TABLE `Pelanggaran` (
   `kode_pelanggaran` varchar(100) NOT NULL,
   `tanggal_pelanggaran` timestamp NULL DEFAULT NULL,
   `lokasi` varchar(200) DEFAULT NULL,
   `catatan_pelanggaran` text DEFAULT NULL,
   `tindakan` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`kode_pelanggaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci