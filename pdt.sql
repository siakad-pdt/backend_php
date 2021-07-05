/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - backend_pdt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`backend_pdt` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `backend_pdt`;

/*Table structure for table `announcement` */

DROP TABLE IF EXISTS `announcement`;

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_title` varchar(200) DEFAULT NULL,
  `announcement` text DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT 0,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `announcement` */

insert  into `announcement`(`announcement_id`,`announcement_title`,`announcement`,`isdel`,`createdAt`,`createdBy`) values 
(1,'Petunjuk Teknis Pelaksanaan Wisuda Tahun 2021','Petunjuk Teknis Pelaksanaan Wisuda Tahun 2021\r\n\r\n1. Sesuai Surat Edaran Rektor No 20/R/UEU/IV/2021 maka pelaksanaan wisuda Esa Unggul akan dilaksanakan pada bulan Oktober - November 2021 (Direncanakan lulusan TA 2019/1 pada minggu ke-1 Oktober, Lulusan TA 2019/2 pada minggu ke-3 Oktober, lulusan TA 2020/1 pada minggu ke-1 November dan lulusan TA 2020/2 pada minggu ke-3 November)\r\n2. Wisuda dilakukan secara offline (tatap muka) di GRAND BALLROOM Hotel PULLMAN, Podomoro City, Jl. Letjen S. Parman No.Kav 28, Jakarta Barat\r\n3. Pendaftaran wisuda akan dilakukan secara online (Google Form) dimulai bulan Juni - Agustus 2021, formulir akan dibagikan melalui fakultas, Web Universitas dan kampus Kebon Jeruk, kampus Tangerang dan kampus Bekasi\r\n4. Biaya pelaksanaan wisuda sebesar Rp. 2.500.000.\r\n5. Bagi lulusan yang sudah memberikan deposit sebesar Rp 1,5 juta, maka wajib mendaftar wisuda kembali dan membayar sisa uang wisuda\r\n6. Pendaftaran diwajibkan bagi semua lulusan yang akan mengikuti wisuda di bulan Oktober 2021\r\n7. Bagi yang berhalangan ikut Wisuda Oktober 2021 dikarenakan suatu hal, maka dapat menghubungi Panitia Wisuda Fakultas masing-masing',0,'2021-07-05 07:34:30','Dedi');

/*Table structure for table `krs` */

DROP TABLE IF EXISTS `krs`;

CREATE TABLE `krs` (
  `krs_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `matkul_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`krs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `krs` */

insert  into `krs`(`krs_id`,`user_id`,`matkul_id`) values 
(6,1,2),
(7,1,3);

/*Table structure for table `matakuliah` */

DROP TABLE IF EXISTS `matakuliah`;

CREATE TABLE `matakuliah` (
  `matkul_id` int(11) NOT NULL AUTO_INCREMENT,
  `matkul_name` varchar(255) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `hari_praktikum` varchar(20) DEFAULT NULL,
  `waktu_praktikum` time DEFAULT NULL,
  `sesi` varchar(255) DEFAULT NULL,
  `kurikulum` varchar(255) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT 0,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`matkul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `matakuliah` */

insert  into `matakuliah`(`matkul_id`,`matkul_name`,`sks`,`code`,`hari`,`waktu`,`hari_praktikum`,`waktu_praktikum`,`sesi`,`kurikulum`,`ruang`,`isdel`,`createdAt`,`updatedAt`) values 
(1,'Pemrosesan Data Tersebar',4,'UEU001','senin','08:00:00','senin','11:00:00','1','2018','201',0,'2021-07-05 01:36:28','2021-07-05 01:49:50'),
(2,'Kapita Selekta Informatika	',4,'UEU001','senin','08:00:00','senin','11:00:00','1','2018','201',0,'2021-07-05 01:36:28','2021-07-05 01:49:50'),
(3,'Arsitektur Berbasis Layanan	',4,'UEU001','senin','08:00:00','senin','11:00:00','1','2018','201',0,'2021-07-05 01:36:28','2021-07-05 01:49:50'),
(4,'Metodologi Penelitian	',4,'UEU001','senin','08:00:00','senin','11:00:00','1','2018','201',0,'2021-07-05 01:36:28','2021-07-05 01:49:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(200) DEFAULT NULL,
  `news` text DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT 0,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `news` */

insert  into `news`(`news_id`,`news_title`,`news`,`isdel`,`createdAt`,`createdBy`) values 
(1,'Pelayanan Online Biro Administrasi Pembelajaran','Sehubungan dengan Pemberitahuan BPSDM agar seluruh karyawan melakukan WFH, maka bersama ini layanan BAP akan dialihkan melalui zoom meeting/WA dengan link sebagai berikut: WA: 081932810537 (Euis) Link zoom\r\n',0,'2021-07-05 07:34:17','Dedi');

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `matkul_id` int(11) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`nilai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `nilai` */

insert  into `nilai`(`nilai_id`,`user_id`,`matkul_id`,`nilai`) values 
(1,1,1,'A'),
(2,1,2,'A');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `tempat_tglLahir` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tahun` varchar(10) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `dosen_pa` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`user_id`,`nim`,`password`,`full_name`,`jenis_kelamin`,`nik`,`agama`,`tempat_tglLahir`,`no_hp`,`email`,`tahun`,`fakultas`,`prodi`,`dosen_pa`,`createdAt`,`updatedAt`) values 
(1,'20180801002','$2y$10$Le4Kodb4U0aAK8SEWKGwEOHSnfGA4rRFGSEvL7E0Xe4z8GCCEu/QG','michelle','perempuan','2021051610023','budha','jakarta, 1 Januari 1999','081231547863','michelle@gmail.com','2018','Ilmu Komputer','Teknik Informatika','riya','2021-07-05 01:03:26','2021-07-05 02:51:24'),
(3,'20180801002','$2y$10$Le4Kodb4U0aAK8SEWKGwEOHSnfGA4rRFGSEvL7E0Xe4z8GCCEu/QG','michelle','perempuan','2021051610023','budha','jakarta, 1 Januari 1999','081231547863','michelle@gmail.com','2018','Ilmu Komputer','Teknik Informatika','riya','2021-07-05 02:51:20','2021-07-05 02:51:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
