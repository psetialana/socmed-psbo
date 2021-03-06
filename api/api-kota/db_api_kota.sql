-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2013 at 09:56 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_api_kota`
--

-- --------------------------------------------------------

--
-- Table structure for table `dlmbg_api_reg`
--

CREATE TABLE IF NOT EXISTS `dlmbg_api_reg` (
  `id_api_reg` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `api_key` varchar(50) NOT NULL,
  PRIMARY KEY (`id_api_reg`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dlmbg_api_reg`
--

INSERT INTO `dlmbg_api_reg` (`id_api_reg`, `email`, `api_key`) VALUES
(1, 'gedesumawijaya@gmail.com', 'd2ba5ac651d985a7fad886044d92b5cd');

-- --------------------------------------------------------

--
-- Table structure for table `dlmbg_lokasi`
--

CREATE TABLE IF NOT EXISTS `dlmbg_lokasi` (
  `id` int(10) NOT NULL,
  `id_prov` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlmbg_lokasi`
--

INSERT INTO `dlmbg_lokasi` (`id`, `id_prov`, `nama`) VALUES
(11, 0, 'Renon'),
(12, 0, 'Sumatera Utara\r'),
(13, 0, 'Sumatera Barat\r'),
(14, 0, 'Riau\r'),
(15, 0, 'Jambi\r'),
(16, 0, 'Sumatera Selatan\r'),
(17, 0, 'Bengkulu\r'),
(18, 0, 'Lampung\r'),
(19, 0, 'Kepulauan Bangka Belitung\r'),
(21, 0, 'Kepulauan Riau\r'),
(31, 0, 'Dki Jakarta\r'),
(32, 0, 'Jawa Barat\r'),
(33, 0, 'Jawa Tengah\r'),
(34, 0, 'Di Yogyakarta\r'),
(35, 0, 'Jawa Timur\r'),
(36, 0, 'Banten\r'),
(51, 0, 'Bali\r'),
(52, 0, 'Nusa Tenggara Barat\r'),
(53, 0, 'Nusa Tenggara Timur\r'),
(61, 0, 'Kalimantan Barat\r'),
(62, 0, 'Kalimantan Tengah\r'),
(63, 0, 'Kalimantan Selatan\r'),
(64, 0, 'Kalimantan Timur\r'),
(65, 0, 'Kalimantan Utara\r'),
(71, 0, 'Sulawesi Utara\r'),
(72, 0, 'Sulawesi Tengah\r'),
(73, 0, 'Sulawesi Selatan\r'),
(74, 0, 'Sulawesi Tenggara\r'),
(75, 0, 'Gorontalo\r'),
(76, 0, 'Sulawesi Barat\r'),
(81, 0, 'Maluku\r'),
(82, 0, 'Maluku Utara\r'),
(91, 0, 'Papua Barat\r'),
(94, 0, 'Papua'),
(1101, 11, 'Kab. Simeulue\r'),
(1102, 11, 'Kab. Aceh Singkil\r'),
(1103, 11, 'Kab. Aceh Selatan\r'),
(1104, 11, 'Kab. Aceh Tenggara\r'),
(1105, 11, 'Kab. Aceh Timur\r'),
(1106, 11, 'Kab. Aceh Tengah\r'),
(1107, 11, 'Kab. Aceh Barat\r'),
(1108, 11, 'Kab. Aceh Besar\r'),
(1109, 11, 'Kab. Pidie\r'),
(1110, 11, 'Kab. Bireuen\r'),
(1111, 11, 'Kab. Aceh Utara\r'),
(1112, 11, 'Kab. Aceh Barat Daya\r'),
(1113, 11, 'Kab. Gayo Lues\r'),
(1114, 11, 'Kab. Aceh Tamiang\r'),
(1115, 11, 'Kab. Nagan Raya\r'),
(1116, 11, 'Kab. Aceh Jaya\r'),
(1117, 11, 'Kab. Bener Meriah\r'),
(1118, 11, 'Kab. Pidie Jaya\r'),
(1171, 11, 'Kota Banda Aceh\r'),
(1172, 11, 'Kota Sabang\r'),
(1173, 11, 'Kota Langsa\r'),
(1174, 11, 'Kota Lhokseumawe\r'),
(1175, 11, 'Kota Subulussalam\r'),
(1201, 12, 'Kab. Nias\r'),
(1202, 12, 'Kab. Mandailing Natal\r'),
(1203, 12, 'Kab. Tapanuli Selatan\r'),
(1204, 12, 'Kab. Tapanuli Tengah\r'),
(1205, 12, 'Kab. Tapanuli Utara\r'),
(1206, 12, 'Kab. Toba Samosir\r'),
(1207, 12, 'Kab. Labuhan Batu\r'),
(1208, 12, 'Kab. Asahan\r'),
(1209, 12, 'Kab. Simalungun\r'),
(1210, 12, 'Kab. Dairi\r'),
(1211, 12, 'Kab. Karo\r'),
(1212, 12, 'Kab. Deli Serdang\r'),
(1213, 12, 'Kab. Langkat\r'),
(1214, 12, 'Kab. Nias Selatan\r'),
(1215, 12, 'Kab. Humbang Hasundutan\r'),
(1216, 12, 'Kab. Pakpak Bharat\r'),
(1217, 12, 'Kab. Samosir\r'),
(1218, 12, 'Kab. Serdang Bedagai\r'),
(1219, 12, 'Kab. Batu Bara\r'),
(1220, 12, 'Kab. Padang Lawas Utara\r'),
(1221, 12, 'Kab. Padang Lawas\r'),
(1222, 12, 'Kab. Labuhan Batu Selatan\r'),
(1223, 12, 'Kab. Labuhan Batu Utara\r'),
(1224, 12, 'Kab. Nias Utara\r'),
(1225, 12, 'Kab. Nias Barat\r'),
(1271, 12, 'Kota Sibolga\r'),
(1272, 12, 'Kota Tanjung Balai\r'),
(1273, 12, 'Kota Pematang Siantar\r'),
(1274, 12, 'Kota Tebing Tinggi\r'),
(1275, 12, 'Kota Medan\r'),
(1276, 12, 'Kota Binjai\r'),
(1277, 12, 'Kota Padangsidimpuan\r'),
(1278, 12, 'Kota Gunungsitoli\r'),
(1301, 13, 'Kab. Kepulauan Mentawai\r'),
(1302, 13, 'Kab. Pesisir Selatan\r'),
(1303, 13, 'Kab. Solok\r'),
(1304, 13, 'Kab. Sijunjung\r'),
(1305, 13, 'Kab. Tanah Datar\r'),
(1306, 13, 'Kab. Padang Pariaman\r'),
(1307, 13, 'Kab. Agam\r'),
(1308, 13, 'Kab. Lima Puluh Kota\r'),
(1309, 13, 'Kab. Pasaman\r'),
(1310, 13, 'Kab. Solok Selatan\r'),
(1311, 13, 'Kab. Dharmasraya\r'),
(1312, 13, 'Kab. Pasaman Barat\r'),
(1371, 13, 'Kota Padang\r'),
(1372, 13, 'Kota Solok\r'),
(1373, 13, 'Kota Sawah Lunto\r'),
(1374, 13, 'Kota Padang Panjang\r'),
(1375, 13, 'Kota Bukittinggi\r'),
(1376, 13, 'Kota Payakumbuh\r'),
(1377, 13, 'Kota Pariaman\r'),
(1401, 14, 'Kab. Kuantan Singingi\r'),
(1402, 14, 'Kab. Indragiri Hulu\r'),
(1403, 14, 'Kab. Indragiri Hilir\r'),
(1404, 14, 'Kab. Pelalawan\r'),
(1405, 14, 'Kab. S I A K\r'),
(1406, 14, 'Kab. Kampar\r'),
(1407, 14, 'Kab. Rokan Hulu\r'),
(1408, 14, 'Kab. Bengkalis\r'),
(1409, 14, 'Kab. Rokan Hilir\r'),
(1410, 14, 'Kab. Kepulauan Meranti\r'),
(1471, 14, 'Kota Pekanbaru\r'),
(1473, 14, 'Kota D U M A I\r'),
(1501, 15, 'Kab. Kerinci\r'),
(1502, 15, 'Kab. Merangin\r'),
(1503, 15, 'Kab. Sarolangun\r'),
(1504, 15, 'Kab. Batang Hari\r'),
(1505, 15, 'Kab. Muaro Jambi\r'),
(1506, 15, 'Kab. Tanjung Jabung Timur\r'),
(1507, 15, 'Kab. Tanjung Jabung Barat\r'),
(1508, 15, 'Kab. Tebo\r'),
(1509, 15, 'Kab. Bungo\r'),
(1571, 15, 'Kota Jambi\r'),
(1572, 15, 'Kota Sungai Penuh\r'),
(1601, 16, 'Kab. Ogan Komering Ulu\r'),
(1602, 16, 'Kab. Ogan Komering Ilir\r'),
(1603, 16, 'Kab. Muara Enim\r'),
(1604, 16, 'Kab. Lahat\r'),
(1605, 16, 'Kab. Musi Rawas\r'),
(1606, 16, 'Kab. Musi Banyuasin\r'),
(1607, 16, 'Kab. Banyu Asin\r'),
(1608, 16, 'Kab. Ogan Komering Ulu Selatan\r'),
(1609, 16, 'Kab. Ogan Komering Ulu Timur\r'),
(1610, 16, 'Kab. Ogan Ilir\r'),
(1611, 16, 'Kab. Empat Lawang\r'),
(1671, 16, 'Kota Palembang\r'),
(1672, 16, 'Kota Prabumulih\r'),
(1673, 16, 'Kota Pagar Alam\r'),
(1674, 16, 'Kota Lubuklinggau\r'),
(1701, 17, 'Kab. Bengkulu Selatan\r'),
(1702, 17, 'Kab. Rejang Lebong\r'),
(1703, 17, 'Kab. Bengkulu Utara\r'),
(1704, 17, 'Kab. Kaur\r'),
(1705, 17, 'Kab. Seluma\r'),
(1706, 17, 'Kab. Mukomuko\r'),
(1707, 17, 'Kab. Lebong\r'),
(1708, 17, 'Kab. Kepahiang\r'),
(1709, 17, 'Kab. Bengkulu Tengah\r'),
(1771, 17, 'Kota Bengkulu\r'),
(1801, 18, 'Kab. Lampung Barat\r'),
(1802, 18, 'Kab. Tanggamus\r'),
(1803, 18, 'Kab. Lampung Selatan\r'),
(1804, 18, 'Kab. Lampung Timur\r'),
(1805, 18, 'Kab. Lampung Tengah\r'),
(1806, 18, 'Kab. Lampung Utara\r'),
(1807, 18, 'Kab. Way Kanan\r'),
(1808, 18, 'Kab. Tulangbawang\r'),
(1809, 18, 'Kab. Pesawaran\r'),
(1810, 18, 'Kab. Pringsewu\r'),
(1811, 18, 'Kab. Mesuji\r'),
(1812, 18, 'Kab. Tulang Bawang Barat\r'),
(1813, 18, 'Kab. Pesisir Barat\r'),
(1871, 18, 'Kota Bandar Lampung\r'),
(1872, 18, 'Kota Metro\r'),
(1901, 19, 'Kab. Bangka\r'),
(1902, 19, 'Kab. Belitung\r'),
(1903, 19, 'Kab. Bangka Barat\r'),
(1904, 19, 'Kab. Bangka Tengah\r'),
(1905, 19, 'Kab. Bangka Selatan\r'),
(1906, 19, 'Kab. Belitung Timur\r'),
(1971, 19, 'Kota Pangkal Pinang\r'),
(2101, 21, 'Kab. Karimun\r'),
(2102, 21, 'Kab. Bintan\r'),
(2103, 21, 'Kab. Natuna\r'),
(2104, 21, 'Kab. Lingga\r'),
(2105, 21, 'Kab. Kepulauan Anambas\r'),
(2171, 21, 'Kota B A T A M\r'),
(2172, 21, 'Kota Tanjung Pinang\r'),
(3101, 31, 'Kab. Kepulauan Seribu\r'),
(3171, 31, 'Kota Jakarta Selatan\r'),
(3172, 31, 'Kota Jakarta Timur\r'),
(3173, 31, 'Kota Jakarta Pusat\r'),
(3174, 31, 'Kota Jakarta Barat\r'),
(3175, 31, 'Kota Jakarta Utara\r'),
(3201, 32, 'Kab. Bogor\r'),
(3202, 32, 'Kab. Sukabumi\r'),
(3203, 32, 'Kab. Cianjur\r'),
(3204, 32, 'Kab. Bandung\r'),
(3205, 32, 'Kab. Garut\r'),
(3206, 32, 'Kab. Tasikmalaya\r'),
(3207, 32, 'Kab. Ciamis\r'),
(3208, 32, 'Kab. Kuningan\r'),
(3209, 32, 'Kab. Cirebon\r'),
(3210, 32, 'Kab. Majalengka\r'),
(3211, 32, 'Kab. Sumedang\r'),
(3212, 32, 'Kab. Indramayu\r'),
(3213, 32, 'Kab. Subang\r'),
(3214, 32, 'Kab. Purwakarta\r'),
(3215, 32, 'Kab. Karawang\r'),
(3216, 32, 'Kab. Bekasi\r'),
(3217, 32, 'Kab. Bandung Barat\r'),
(3218, 32, 'Kab. Pangandaran\r'),
(3271, 32, 'Kota Bogor\r'),
(3272, 32, 'Kota Sukabumi\r'),
(3273, 32, 'Kota Bandung\r'),
(3274, 32, 'Kota Cirebon\r'),
(3275, 32, 'Kota Bekasi\r'),
(3276, 32, 'Kota Depok\r'),
(3277, 32, 'Kota Cimahi\r'),
(3278, 32, 'Kota Tasikmalaya\r'),
(3279, 32, 'Kota Banjar\r'),
(3301, 33, 'Kab. Cilacap\r'),
(3302, 33, 'Kab. Banyumas\r'),
(3303, 33, 'Kab. Purbalingga\r'),
(3304, 33, 'Kab. Banjarnegara\r'),
(3305, 33, 'Kab. Kebumen\r'),
(3306, 33, 'Kab. Purworejo\r'),
(3307, 33, 'Kab. Wonosobo\r'),
(3308, 33, 'Kab. Magelang\r'),
(3309, 33, 'Kab. Boyolali\r'),
(3310, 33, 'Kab. Klaten\r'),
(3311, 33, 'Kab. Sukoharjo\r'),
(3312, 33, 'Kab. Wonogiri\r'),
(3313, 33, 'Kab. Karanganyar\r'),
(3314, 33, 'Kab. Sragen\r'),
(3315, 33, 'Kab. Grobogan\r'),
(3316, 33, 'Kab. Blora\r'),
(3317, 33, 'Kab. Rembang\r'),
(3318, 33, 'Kab. Pati\r'),
(3319, 33, 'Kab. Kudus\r'),
(3320, 33, 'Kab. Jepara\r'),
(3321, 33, 'Kab. Demak\r'),
(3322, 33, 'Kab. Semarang\r'),
(3323, 33, 'Kab. Temanggung\r'),
(3324, 33, 'Kab. Kendal\r'),
(3325, 33, 'Kab. Batang\r'),
(3326, 33, 'Kab. Pekalongan\r'),
(3327, 33, 'Kab. Pemalang\r'),
(3328, 33, 'Kab. Tegal\r'),
(3329, 33, 'Kab. Brebes\r'),
(3371, 33, 'Kota Magelang\r'),
(3372, 33, 'Kota Surakarta\r'),
(3373, 33, 'Kota Salatiga\r'),
(3374, 33, 'Kota Semarang\r'),
(3375, 33, 'Kota Pekalongan\r'),
(3376, 33, 'Kota Tegal\r'),
(3401, 34, 'Kab. Kulon Progo\r'),
(3402, 34, 'Kab. Bantul\r'),
(3403, 34, 'Kab. Gunung Kidul\r'),
(3404, 34, 'Kab. Sleman\r'),
(3471, 34, 'Kota Yogyakarta\r'),
(3501, 35, 'Kab. Pacitan\r'),
(3502, 35, 'Kab. Ponorogo\r'),
(3503, 35, 'Kab. Trenggalek\r'),
(3504, 35, 'Kab. Tulungagung\r'),
(3505, 35, 'Kab. Blitar\r'),
(3506, 35, 'Kab. Kediri\r'),
(3507, 35, 'Kab. Malang\r'),
(3508, 35, 'Kab. Lumajang\r'),
(3509, 35, 'Kab. Jember\r'),
(3510, 35, 'Kab. Banyuwangi\r'),
(3511, 35, 'Kab. Bondowoso\r'),
(3512, 35, 'Kab. Situbondo\r'),
(3513, 35, 'Kab. Probolinggo\r'),
(3514, 35, 'Kab. Pasuruan\r'),
(3515, 35, 'Kab. Sidoarjo\r'),
(3516, 35, 'Kab. Mojokerto\r'),
(3517, 35, 'Kab. Jombang\r'),
(3518, 35, 'Kab. Nganjuk\r'),
(3519, 35, 'Kab. Madiun\r'),
(3520, 35, 'Kab. Magetan\r'),
(3521, 35, 'Kab. Ngawi\r'),
(3522, 35, 'Kab. Bojonegoro\r'),
(3523, 35, 'Kab. Tuban\r'),
(3524, 35, 'Kab. Lamongan\r'),
(3525, 35, 'Kab. Gresik\r'),
(3526, 35, 'Kab. Bangkalan\r'),
(3527, 35, 'Kab. Sampang\r'),
(3528, 35, 'Kab. Pamekasan\r'),
(3529, 35, 'Kab. Sumenep\r'),
(3571, 35, 'Kota Kediri\r'),
(3572, 35, 'Kota Blitar\r'),
(3573, 35, 'Kota Malang\r'),
(3574, 35, 'Kota Probolinggo\r'),
(3575, 35, 'Kota Pasuruan\r'),
(3576, 35, 'Kota Mojokerto\r'),
(3577, 35, 'Kota Madiun\r'),
(3578, 35, 'Kota Surabaya\r'),
(3579, 35, 'Kota Batu\r'),
(3601, 36, 'Kab. Pandeglang\r'),
(3602, 36, 'Kab. Lebak\r'),
(3603, 36, 'Kab. Tangerang\r'),
(3604, 36, 'Kab. Serang\r'),
(3671, 36, 'Kota Tangerang\r'),
(3672, 36, 'Kota Cilegon\r'),
(3673, 36, 'Kota Serang\r'),
(3674, 36, 'Kota Tangerang Selatan\r'),
(5101, 51, 'Kab. Jembrana\r'),
(5102, 51, 'Kab. Tabanan\r'),
(5103, 51, 'Kab. Badung\r'),
(5104, 51, 'Kab. Gianyar\r'),
(5105, 51, 'Kab. Klungkung\r'),
(5106, 51, 'Kab. Bangli\r'),
(5107, 51, 'Kab. Karang Asem\r'),
(5108, 51, 'Kab. Buleleng\r'),
(5171, 51, 'Kota Denpasar\r'),
(5201, 52, 'Kab. Lombok Barat\r'),
(5202, 52, 'Kab. Lombok Tengah\r'),
(5203, 52, 'Kab. Lombok Timur\r'),
(5204, 52, 'Kab. Sumbawa\r'),
(5205, 52, 'Kab. Dompu\r'),
(5206, 52, 'Kab. Bima\r'),
(5207, 52, 'Kab. Sumbawa Barat\r'),
(5208, 52, 'Kab. Lombok Utara\r'),
(5271, 52, 'Kota Mataram\r'),
(5272, 52, 'Kota Bima\r'),
(5301, 53, 'Kab. Sumba Barat\r'),
(5302, 53, 'Kab. Sumba Timur\r'),
(5303, 53, 'Kab. Kupang\r'),
(5304, 53, 'Kab. Timor Tengah Selatan\r'),
(5305, 53, 'Kab. Timor Tengah Utara\r'),
(5306, 53, 'Kab. Belu\r'),
(5307, 53, 'Kab. Alor\r'),
(5308, 53, 'Kab. Lembata\r'),
(5309, 53, 'Kab. Flores Timur\r'),
(5310, 53, 'Kab. Sikka\r'),
(5311, 53, 'Kab. Ende\r'),
(5312, 53, 'Kab. Ngada\r'),
(5313, 53, 'Kab. Manggarai\r'),
(5314, 53, 'Kab. Rote Ndao\r'),
(5315, 53, 'Kab. Manggarai Barat\r'),
(5316, 53, 'Kab. Sumba Tengah\r'),
(5317, 53, 'Kab. Sumba Barat Daya\r'),
(5318, 53, 'Kab. Nagekeo\r'),
(5319, 53, 'Kab. Manggarai Timur\r'),
(5320, 53, 'Kab. Sabu Raijua\r'),
(5371, 53, 'Kota Kupang\r'),
(6101, 61, 'Kab. Sambas\r'),
(6102, 61, 'Kab. Bengkayang\r'),
(6103, 61, 'Kab. Landak\r'),
(6104, 61, 'Kab. Pontianak\r'),
(6105, 61, 'Kab. Sanggau\r'),
(6106, 61, 'Kab. Ketapang\r'),
(6107, 61, 'Kab. Sintang\r'),
(6108, 61, 'Kab. Kapuas Hulu\r'),
(6109, 61, 'Kab. Sekadau\r'),
(6110, 61, 'Kab. Melawi\r'),
(6111, 61, 'Kab. Kayong Utara\r'),
(6112, 61, 'Kab. Kubu Raya\r'),
(6171, 61, 'Kota Pontianak\r'),
(6172, 61, 'Kota Singkawang\r'),
(6201, 62, 'Kab. Kotawaringin Barat\r'),
(6202, 62, 'Kab. Kotawaringin Timur\r'),
(6203, 62, 'Kab. Kapuas\r'),
(6204, 62, 'Kab. Barito Selatan\r'),
(6205, 62, 'Kab. Barito Utara\r'),
(6206, 62, 'Kab. Sukamara\r'),
(6207, 62, 'Kab. Lamandau\r'),
(6208, 62, 'Kab. Seruyan\r'),
(6209, 62, 'Kab. Katingan\r'),
(6210, 62, 'Kab. Pulang Pisau\r'),
(6211, 62, 'Kab. Gunung Mas\r'),
(6212, 62, 'Kab. Barito Timur\r'),
(6213, 62, 'Kab. Murung Raya\r'),
(6271, 62, 'Kota Palangka Raya\r'),
(6301, 63, 'Kab. Tanah Laut\r'),
(6302, 63, 'Kab. Kota Baru\r'),
(6303, 63, 'Kab. Banjar\r'),
(6304, 63, 'Kab. Barito Kuala\r'),
(6305, 63, 'Kab. Tapin\r'),
(6306, 63, 'Kab. Hulu Sungai Selatan\r'),
(6307, 63, 'Kab. Hulu Sungai Tengah\r'),
(6308, 63, 'Kab. Hulu Sungai Utara\r'),
(6309, 63, 'Kab. Tabalong\r'),
(6310, 63, 'Kab. Tanah Bumbu\r'),
(6311, 63, 'Kab. Balangan\r'),
(6371, 63, 'Kota Banjarmasin\r'),
(6372, 63, 'Kota Banjar Baru\r'),
(6401, 64, 'Kab. Paser\r'),
(6402, 64, 'Kab. Kutai Barat\r'),
(6403, 64, 'Kab. Kutai Kartanegara\r'),
(6404, 64, 'Kab. Kutai Timur\r'),
(6405, 64, 'Kab. Berau\r'),
(6409, 64, 'Kab. Penajam Paser Utara\r'),
(6471, 64, 'Kota Balikpapan\r'),
(6472, 64, 'Kota Samarinda\r'),
(6474, 64, 'Kota Bontang\r'),
(6501, 65, 'Kab. Malinau\r'),
(6502, 65, 'Kab. Bulungan\r'),
(6503, 65, 'Kab. Tana Tidung\r'),
(6504, 65, 'Kab. Nunukan\r'),
(6571, 65, 'Kota Tarakan\r'),
(7101, 71, 'Kab. Bolaang Mongondow\r'),
(7102, 71, 'Kab. Minahasa\r'),
(7103, 71, 'Kab. Kepulauan Sangihe\r'),
(7104, 71, 'Kab. Kepulauan Talaud\r'),
(7105, 71, 'Kab. Minahasa Selatan\r'),
(7106, 71, 'Kab. Minahasa Utara\r'),
(7107, 71, 'Kab. Bolaang Mongondow Utara\r'),
(7108, 71, 'Kab. Siau Tagulandang Biaro\r'),
(7109, 71, 'Kab. Minahasa Tenggara\r'),
(7110, 71, 'Kab. Bolaang Mongondow Selatan\r'),
(7111, 71, 'Kab. Bolaang Mongondow Timur\r'),
(7171, 71, 'Kota Manado\r'),
(7172, 71, 'Kota Bitung\r'),
(7173, 71, 'Kota Tomohon\r'),
(7174, 71, 'Kota Kotamobagu\r'),
(7201, 72, 'Kab. Banggai Kepulauan\r'),
(7202, 72, 'Kab. Banggai\r'),
(7203, 72, 'Kab. Morowali\r'),
(7204, 72, 'Kab. Poso\r'),
(7205, 72, 'Kab. Donggala\r'),
(7206, 72, 'Kab. Toli-toli\r'),
(7207, 72, 'Kab. Buol\r'),
(7208, 72, 'Kab. Parigi Moutong\r'),
(7209, 72, 'Kab. Tojo Una-una\r'),
(7210, 72, 'Kab. Sigi\r'),
(7271, 72, 'Kota Palu\r'),
(7301, 73, 'Kab. Kepulauan Selayar\r'),
(7302, 73, 'Kab. Bulukumba\r'),
(7303, 73, 'Kab. Bantaeng\r'),
(7304, 73, 'Kab. Jeneponto\r'),
(7305, 73, 'Kab. Takalar\r'),
(7306, 73, 'Kab. Gowa\r'),
(7307, 73, 'Kab. Sinjai\r'),
(7308, 73, 'Kab. Maros\r'),
(7309, 73, 'Kab. Pangkajene Dan Kepulauan\r'),
(7310, 73, 'Kab. Barru\r'),
(7311, 73, 'Kab. Bone\r'),
(7312, 73, 'Kab. Soppeng\r'),
(7313, 73, 'Kab. Wajo\r'),
(7314, 73, 'Kab. Sidenreng Rappang\r'),
(7315, 73, 'Kab. Pinrang\r'),
(7316, 73, 'Kab. Enrekang\r'),
(7317, 73, 'Kab. Luwu\r'),
(7318, 73, 'Kab. Tana Toraja\r'),
(7322, 73, 'Kab. Luwu Utara\r'),
(7325, 73, 'Kab. Luwu Timur\r'),
(7326, 73, 'Kab. Toraja Utara\r'),
(7371, 73, 'Kota Makassar\r'),
(7372, 73, 'Kota Parepare\r'),
(7373, 73, 'Kota Palopo\r'),
(7401, 74, 'Kab. Buton\r'),
(7402, 74, 'Kab. Muna\r'),
(7403, 74, 'Kab. Konawe\r'),
(7404, 74, 'Kab. Kolaka\r'),
(7405, 74, 'Kab. Konawe Selatan\r'),
(7406, 74, 'Kab. Bombana\r'),
(7407, 74, 'Kab. Wakatobi\r'),
(7408, 74, 'Kab. Kolaka Utara\r'),
(7409, 74, 'Kab. Buton Utara\r'),
(7410, 74, 'Kab. Konawe Utara\r'),
(7471, 74, 'Kota Kendari\r'),
(7472, 74, 'Kota Baubau\r'),
(7501, 75, 'Kab. Boalemo\r'),
(7502, 75, 'Kab. Gorontalo\r'),
(7503, 75, 'Kab. Pohuwato\r'),
(7504, 75, 'Kab. Bone Bolango\r'),
(7505, 75, 'Kab. Gorontalo Utara\r'),
(7571, 75, 'Kota Gorontalo\r'),
(7601, 76, 'Kab. Majene\r'),
(7602, 76, 'Kab. Polewali Mandar\r'),
(7603, 76, 'Kab. Mamasa\r'),
(7604, 76, 'Kab. Mamuju\r'),
(7605, 76, 'Kab. Mamuju Utara\r'),
(8101, 81, 'Kab. Maluku Tenggara Barat\r'),
(8102, 81, 'Kab. Maluku Tenggara\r'),
(8103, 81, 'Kab. Maluku Tengah\r'),
(8104, 81, 'Kab. Buru\r'),
(8105, 81, 'Kab. Kepulauan Aru\r'),
(8106, 81, 'Kab. Seram Bagian Barat\r'),
(8107, 81, 'Kab. Seram Bagian Timur\r'),
(8108, 81, 'Kab. Maluku Barat Daya\r'),
(8109, 81, 'Kab. Buru Selatan\r'),
(8171, 81, 'Kota Ambon\r'),
(8172, 81, 'Kota Tual\r'),
(8201, 82, 'Kab. Halmahera Barat\r'),
(8202, 82, 'Kab. Halmahera Tengah\r'),
(8203, 82, 'Kab. Kepulauan Sula\r'),
(8204, 82, 'Kab. Halmahera Selatan\r'),
(8205, 82, 'Kab. Halmahera Utara\r'),
(8206, 82, 'Kab. Halmahera Timur\r'),
(8207, 82, 'Kab. Pulau Morotai\r'),
(8271, 82, 'Kota Ternate\r'),
(8272, 82, 'Kota Tidore Kepulauan\r'),
(9101, 91, 'Kab. Fakfak\r'),
(9102, 91, 'Kab. Kaimana\r'),
(9103, 91, 'Kab. Teluk Wondama\r'),
(9104, 91, 'Kab. Teluk Bintuni\r'),
(9105, 91, 'Kab. Manokwari\r'),
(9106, 91, 'Kab. Sorong Selatan\r'),
(9107, 91, 'Kab. Sorong\r'),
(9108, 91, 'Kab. Raja Ampat\r'),
(9109, 91, 'Kab. Tambrauw\r'),
(9110, 91, 'Kab. Maybrat\r'),
(9171, 91, 'Kota Sorong\r'),
(9401, 94, 'Kab. Merauke\r'),
(9402, 94, 'Kab. Jayawijaya\r'),
(9403, 94, 'Kab. Jayapura\r'),
(9404, 94, 'Kab. Nabire\r'),
(9408, 94, 'Kab. Kepulauan Yapen\r'),
(9409, 94, 'Kab. Biak Numfor\r'),
(9410, 94, 'Kab. Paniai\r'),
(9411, 94, 'Kab. Puncak Jaya\r'),
(9412, 94, 'Kab. Mimika\r'),
(9413, 94, 'Kab. Boven Digoel\r'),
(9414, 94, 'Kab. Mappi\r'),
(9415, 94, 'Kab. Asmat\r'),
(9416, 94, 'Kab. Yahukimo\r'),
(9417, 94, 'Kab. Pegunungan Bintang\r'),
(9418, 94, 'Kab. Tolikara\r'),
(9419, 94, 'Kab. Sarmi\r'),
(9420, 94, 'Kab. Keerom\r'),
(9426, 94, 'Kab. Waropen\r'),
(9427, 94, 'Kab. Supiori\r'),
(9428, 94, 'Kab. Mamberamo Raya\r'),
(9429, 94, 'Kab. Nduga\r'),
(9430, 94, 'Kab. Lanny Jaya\r'),
(9431, 94, 'Kab. Mamberamo Tengah\r'),
(9432, 94, 'Kab. Yalimo\r'),
(9433, 94, 'Kab. Puncak\r'),
(9434, 94, 'Kab. Dogiyai\r'),
(9435, 94, 'Kab. Intan Jaya\r'),
(9436, 94, 'Kab. Deiyai\r'),
(9471, 94, 'Kota Jayapura');
