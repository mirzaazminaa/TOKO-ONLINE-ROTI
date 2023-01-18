

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1","admin","$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626");



CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO bom_produk VALUES("B0001","M0002","P0001","Roti Sobek","2");
INSERT INTO bom_produk VALUES("B0001","M0001","P0001","Roti Sobek","4");
INSERT INTO bom_produk VALUES("B0001","M0004","P0001","Roti Sobek","3");
INSERT INTO bom_produk VALUES("B0002","M0001","P0002","Maryam","4");
INSERT INTO bom_produk VALUES("B0002","M0004","P0002","Maryam","3");
INSERT INTO bom_produk VALUES("B0002","M0003","P0002","Maryam","2");
INSERT INTO bom_produk VALUES("B0003","M0002","P0003","Kue tart coklat","2");
INSERT INTO bom_produk VALUES("B0003","M0003","P0003","Kue tart coklat","5");
INSERT INTO bom_produk VALUES("B0003","M0005","P0003","Kue tart coklat","5");



CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO customer VALUES("C0002","Rafi Akbar","a.rafy@gmail.com","rafi","$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.","0856748564");
INSERT INTO customer VALUES("C0003","Nagita Silvana","bambang@gmail.com","Nagita","$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C","087804616097");
INSERT INTO customer VALUES("C0004","Nadiya","nadiya@gmail.com","nadiya","$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG","0898765432");
INSERT INTO customer VALUES("C0005","tegar","tegardito02@gmail.com","Tega_r.dp","$2y$10$Jb.c.dpwvmgqntt8fQsBuedkYXWgu1zVX3/dhSc89akIFZtJhzgiO","081233219130");



CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`kode_bk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO inventory VALUES("M0001","Tepung","48","Kg","1000","2020-07-26");
INSERT INTO inventory VALUES("M0002","Pengembang","22","Kg","1000","2023-01-18");
INSERT INTO inventory VALUES("M0003","Cream","13","Kg","3000","2020-07-26");
INSERT INTO inventory VALUES("M0004","Keju","61","Kg","4000","2020-07-26");
INSERT INTO inventory VALUES("M0005","Coklat","0","Kg","5000","2020-07-27");



CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

INSERT INTO keranjang VALUES("16","C0003","P0002","Maryam","5","15000");
INSERT INTO keranjang VALUES("17","C0003","P0003","Kue tart coklat","2","100000");



CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO produk VALUES("P0001","Roti Sobek","5f1d915d27dc3.jpg","																								Roti Enak Sobek Sobek aww
																					","10000");
INSERT INTO produk VALUES("P0002","Maryam","5f1d9154715a4.jpg","				Roti araym
						","15000");
INSERT INTO produk VALUES("P0003","Kue tart coklat","5f1d924614831.jpg","Kuetar dengan varian rasa coklat enak dan lumer rasanya
			","100000");



CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO produksi VALUES("8","INV0001","C0002","P0003","Kue tart coklat","1","100000","Pesanan Baru","2020-07-27","Jawa Timur","Surabaya","Jl.Tanah Merah Indah 1","60129","2","1","0");
INSERT INTO produksi VALUES("9","INV0002","C0002","P0001","Roti Sobek","3","10000","0","2020-07-27","Jawa Barat","Bandung","Jl.Jati Nangor Blok C, 10","30712","1","0","0");
INSERT INTO produksi VALUES("10","INV0003","C0003","P0002","Maryam","2","15000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("11","INV0003","C0003","P0003","Kue tart coklat","1","100000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("12","INV0003","C0003","P0001","Roti Sobek","1","10000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("13","INV0004","C0004","P0002","Maryam","1","15000","0","2020-07-26","Jawa Timur","Sidoarjo","Jl.KH Syukur Blok C 18 A","50987","1","0","0");
INSERT INTO produksi VALUES("14","INV0005","C0005","P0001","Roti Sobek","1","10000","0","2323-01-17","malang","malang","sumbersekar, sumbersekar rt 02 rw 02","65151","1","0","0");
INSERT INTO produksi VALUES("15","INV0006","C0005","P0002","Maryam","1","15000","0","2323-01-17","malang","malang","sumbersekar, sumbersekar rt 02 rw 02","65151","1","0","0");
INSERT INTO produksi VALUES("16","INV0007","C0005","P0001","Roti Sobek","1","10000","0","2323-01-18","malang","malang","sumbersekar, sumbersekar rt 02 rw 02","65151","1","0","0");



;




CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  PRIMARY KEY (`id_report_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_omset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_prd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_profit`),
  UNIQUE KEY `kode_bom` (`kode_bom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


