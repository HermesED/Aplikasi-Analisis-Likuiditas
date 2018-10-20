/*
Navicat MySQL Data Transfer

Source Server         : ayamsehat
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : dblikuid

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-08-11 17:22:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for grup
-- ----------------------------
DROP TABLE IF EXISTS `grup`;
CREATE TABLE `grup` (
  `id_grup` varchar(2) NOT NULL,
  `nm_grup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_grup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grup
-- ----------------------------
INSERT INTO `grup` VALUES ('1', 'AKTIVA');
INSERT INTO `grup` VALUES ('2', 'KEWAJIBAN');
INSERT INTO `grup` VALUES ('3', 'EKUITAS');
INSERT INTO `grup` VALUES ('4', 'PENDAPATAN');
INSERT INTO `grup` VALUES ('5', 'BIAYA POKOK PENJUALAN');
INSERT INTO `grup` VALUES ('6', 'BEBAN');

-- ----------------------------
-- Table structure for list_akun
-- ----------------------------
DROP TABLE IF EXISTS `list_akun`;
CREATE TABLE `list_akun` (
  `id_akun` varchar(4) NOT NULL DEFAULT '',
  `nama_akun` varchar(200) DEFAULT NULL,
  `id_sub_grup` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_akun`),
  KEY `idsubgrup` (`id_sub_grup`),
  KEY `id_akun` (`id_akun`,`id_sub_grup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of list_akun
-- ----------------------------
INSERT INTO `list_akun` VALUES ('101', 'KAS DAN SETARA KAS', '10');
INSERT INTO `list_akun` VALUES ('102', 'PIUTANG USAHA', '10');
INSERT INTO `list_akun` VALUES ('103', 'PIUTANG WESEL', '10');
INSERT INTO `list_akun` VALUES ('104', 'PIUTANG KARYAWAN', '10');
INSERT INTO `list_akun` VALUES ('105', 'PERSEDIAAN', '10');
INSERT INTO `list_akun` VALUES ('106', 'PERSEKOT BIAYA', '10');
INSERT INTO `list_akun` VALUES ('107', 'INVESTASI JANGKA PENDEK', '10');
INSERT INTO `list_akun` VALUES ('108', 'PERLENGKAPAN', '10');
INSERT INTO `list_akun` VALUES ('121', 'TANAH', '12');
INSERT INTO `list_akun` VALUES ('122', 'BANGUNAN / GEDUNG', '12');
INSERT INTO `list_akun` VALUES ('123', 'MESIN', '12');
INSERT INTO `list_akun` VALUES ('124', 'KENDARAAN', '12');
INSERT INTO `list_akun` VALUES ('125', 'PERALATAN KANTOR', '12');
INSERT INTO `list_akun` VALUES ('126', 'INVESTASI JANGKA PANJANG', '12');
INSERT INTO `list_akun` VALUES ('211', 'UTANG USAHA', '21');
INSERT INTO `list_akun` VALUES ('212', 'UTANG WESEL JANGKA PENDEK', '21');
INSERT INTO `list_akun` VALUES ('213', 'UTANG UPAH KARYAWAN', '21');
INSERT INTO `list_akun` VALUES ('214', 'UTANG BUNGA', '21');
INSERT INTO `list_akun` VALUES ('215', 'UTANG PAJAK PENJUALAN', '21');
INSERT INTO `list_akun` VALUES ('216', 'UTANG LAIN-LAIN', '21');
INSERT INTO `list_akun` VALUES ('221', 'UTANG BANK', '22');
INSERT INTO `list_akun` VALUES ('311', 'MODAL PEMILIK', '31');
INSERT INTO `list_akun` VALUES ('411', 'PENJUALAN', '41');
INSERT INTO `list_akun` VALUES ('412', 'PENDAPATAN SEWA', '41');
INSERT INTO `list_akun` VALUES ('511', 'HARGA POKOK PENJUALAN', '51');
INSERT INTO `list_akun` VALUES ('611', 'BEBAN UMUM DAN ADMINISTRASI', '61');
INSERT INTO `list_akun` VALUES ('612', 'BEBAN GAJI KARYAWAN', '61');
INSERT INTO `list_akun` VALUES ('613', 'BEBAN KONSUMSI KARYAWAN', '61');
INSERT INTO `list_akun` VALUES ('614', 'BEBAN LISTRIK', '61');
INSERT INTO `list_akun` VALUES ('615', 'BEBAN AIR', '61');
INSERT INTO `list_akun` VALUES ('616', 'BEBAN TELEPON', '61');
INSERT INTO `list_akun` VALUES ('617', 'BEBAN PEMELIHARAAN', '61');
INSERT INTO `list_akun` VALUES ('618', 'BEBAN PERLENGKAPAN', '61');
INSERT INTO `list_akun` VALUES ('619', 'BEBAN TAK TERDUGA', '61');
INSERT INTO `list_akun` VALUES ('620', 'BEBAN LAIN-LAIN', '61');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('USR01', 'Hermes', 'ayam123', 'A');
INSERT INTO `login` VALUES ('USR02', 'AyamSehat', 'ayamsehat', 'U');
INSERT INTO `login` VALUES ('USR03', 'Eveline', 'evelineyunus', 'P');

-- ----------------------------
-- Table structure for neraca
-- ----------------------------
DROP TABLE IF EXISTS `neraca`;
CREATE TABLE `neraca` (
  `kode` varchar(11) NOT NULL,
  `id_akun` varchar(4) DEFAULT NULL,
  `id_sub_grup` varchar(2) DEFAULT NULL,
  `id_periode` varchar(5) DEFAULT NULL,
  `nominal` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`kode`),
  KEY `id_akun` (`id_akun`),
  KEY `kdsubgrup` (`id_sub_grup`),
  KEY `idperiode` (`id_periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of neraca
-- ----------------------------
INSERT INTO `neraca` VALUES ('KDP20140001', '101', '10', 'P2014', '301271515');
INSERT INTO `neraca` VALUES ('KDP20140002', '102', '10', 'P2014', '29274426');
INSERT INTO `neraca` VALUES ('KDP20140003', '103', '10', 'P2014', '52358316');
INSERT INTO `neraca` VALUES ('KDP20140004', '104', '10', 'P2014', '3247268');
INSERT INTO `neraca` VALUES ('KDP20140005', '105', '10', 'P2014', '12213780');
INSERT INTO `neraca` VALUES ('KDP20140006', '106', '10', 'P2014', '4243130');
INSERT INTO `neraca` VALUES ('KDP20140007', '107', '10', 'P2014', '2471453');
INSERT INTO `neraca` VALUES ('KDP20140008', '108', '10', 'P2014', '2803400');
INSERT INTO `neraca` VALUES ('KDP20140009', '121', '12', 'P2014', '52631590');
INSERT INTO `neraca` VALUES ('KDP20140010', '122', '12', 'P2014', '853876911');
INSERT INTO `neraca` VALUES ('KDP20140011', '123', '12', 'P2014', '57816900');
INSERT INTO `neraca` VALUES ('KDP20140012', '124', '12', 'P2014', '313073107');
INSERT INTO `neraca` VALUES ('KDP20140013', '125', '12', 'P2014', '58041015');
INSERT INTO `neraca` VALUES ('KDP20140014', '126', '12', 'P2014', '52430000');
INSERT INTO `neraca` VALUES ('KDP20140015', '211', '21', 'P2014', '371357243');
INSERT INTO `neraca` VALUES ('KDP20140016', '212', '21', 'P2014', '345800');
INSERT INTO `neraca` VALUES ('KDP20140017', '213', '21', 'P2014', '2423500');
INSERT INTO `neraca` VALUES ('KDP20140018', '214', '21', 'P2014', '335672');
INSERT INTO `neraca` VALUES ('KDP20140019', '215', '21', 'P2014', '6245278');
INSERT INTO `neraca` VALUES ('KDP20140020', '216', '21', 'P2014', '1672921');
INSERT INTO `neraca` VALUES ('KDP20140021', '221', '22', 'P2014', '780175250');
INSERT INTO `neraca` VALUES ('KDP20140022', '311', '31', 'P2014', '473609043');
INSERT INTO `neraca` VALUES ('KDP20140023', '411', '41', 'P2014', '1763249538');
INSERT INTO `neraca` VALUES ('KDP20140024', '412', '41', 'P2014', '28183467');
INSERT INTO `neraca` VALUES ('KDP20140025', '611', '61', 'P2014', '2275231');
INSERT INTO `neraca` VALUES ('KDP20140026', '612', '61', 'P2014', '51472128');
INSERT INTO `neraca` VALUES ('KDP20140027', '613', '61', 'P2014', '5520362');
INSERT INTO `neraca` VALUES ('KDP20140028', '614', '61', 'P2014', '4257179');
INSERT INTO `neraca` VALUES ('KDP20140029', '615', '61', 'P2014', '1218689');
INSERT INTO `neraca` VALUES ('KDP20140030', '616', '61', 'P2014', '2727548');
INSERT INTO `neraca` VALUES ('KDP20140031', '617', '61', 'P2014', '10257259');
INSERT INTO `neraca` VALUES ('KDP20140032', '618', '61', 'P2014', '363278346');
INSERT INTO `neraca` VALUES ('KDP20140033', '619', '61', 'P2014', '5271834');
INSERT INTO `neraca` VALUES ('KDP20140034', '620', '61', 'P2014', '4418541');
INSERT INTO `neraca` VALUES ('KDP20140035', '511', '51', 'P2014', '964197373');
INSERT INTO `neraca` VALUES ('KDP20150001', '101', '10', 'P2015', '231238524');
INSERT INTO `neraca` VALUES ('KDP20150002', '102', '10', 'P2015', '60241458');
INSERT INTO `neraca` VALUES ('KDP20150003', '103', '10', 'P2015', '82155276');
INSERT INTO `neraca` VALUES ('KDP20150004', '104', '10', 'P2015', '6842257');
INSERT INTO `neraca` VALUES ('KDP20150005', '105', '10', 'P2015', '43275248');
INSERT INTO `neraca` VALUES ('KDP20150006', '106', '10', 'P2015', '7856300');
INSERT INTO `neraca` VALUES ('KDP20150007', '107', '10', 'P2015', '7180420');
INSERT INTO `neraca` VALUES ('KDP20150008', '108', '10', 'P2015', '4318725');
INSERT INTO `neraca` VALUES ('KDP20150009', '121', '12', 'P2015', '130285696');
INSERT INTO `neraca` VALUES ('KDP20150010', '122', '12', 'P2015', '768489220');
INSERT INTO `neraca` VALUES ('KDP20150011', '123', '12', 'P2015', '52035210');
INSERT INTO `neraca` VALUES ('KDP20150012', '124', '12', 'P2015', '250458486');
INSERT INTO `neraca` VALUES ('KDP20150013', '125', '12', 'P2015', '52236914');
INSERT INTO `neraca` VALUES ('KDP20150014', '126', '12', 'P2015', '83432444');
INSERT INTO `neraca` VALUES ('KDP20150015', '211', '21', 'P2015', '402357243');
INSERT INTO `neraca` VALUES ('KDP20150016', '212', '21', 'P2015', '605800');
INSERT INTO `neraca` VALUES ('KDP20150017', '213', '21', 'P2015', '6423500');
INSERT INTO `neraca` VALUES ('KDP20150018', '214', '21', 'P2015', '835672');
INSERT INTO `neraca` VALUES ('KDP20150019', '215', '21', 'P2015', '12245278');
INSERT INTO `neraca` VALUES ('KDP20150020', '216', '21', 'P2015', '3672921');
INSERT INTO `neraca` VALUES ('KDP20150021', '221', '22', 'P2015', '890175251');
INSERT INTO `neraca` VALUES ('KDP20150022', '311', '31', 'P2015', '326362681');
INSERT INTO `neraca` VALUES ('KDP20150023', '411', '41', 'P2015', '1550864541');
INSERT INTO `neraca` VALUES ('KDP20150024', '412', '41', 'P2015', '43267368');
INSERT INTO `neraca` VALUES ('KDP20150025', '611', '61', 'P2015', '3428850');
INSERT INTO `neraca` VALUES ('KDP20150026', '612', '61', 'P2015', '71654850');
INSERT INTO `neraca` VALUES ('KDP20150027', '613', '61', 'P2015', '6825518');
INSERT INTO `neraca` VALUES ('KDP20150028', '614', '61', 'P2015', '5194521');
INSERT INTO `neraca` VALUES ('KDP20150029', '615', '61', 'P2015', '2838019');
INSERT INTO `neraca` VALUES ('KDP20150030', '616', '61', 'P2015', '3626751');
INSERT INTO `neraca` VALUES ('KDP20150031', '617', '61', 'P2015', '7291350');
INSERT INTO `neraca` VALUES ('KDP20150032', '618', '61', 'P2015', '286187582');
INSERT INTO `neraca` VALUES ('KDP20150033', '619', '61', 'P2015', '6528363');
INSERT INTO `neraca` VALUES ('KDP20150034', '620', '61', 'P2015', '5226462');
INSERT INTO `neraca` VALUES ('KDP20150035', '511', '51', 'P2015', '825286168');
INSERT INTO `neraca` VALUES ('KDP20160001', '101', '10', 'P2016', '151124682');
INSERT INTO `neraca` VALUES ('KDP20160002', '102', '10', 'P2016', '89147342');
INSERT INTO `neraca` VALUES ('KDP20160003', '103', '10', 'P2016', '132341932');
INSERT INTO `neraca` VALUES ('KDP20160004', '104', '10', 'P2016', '12624468');
INSERT INTO `neraca` VALUES ('KDP20160005', '105', '10', 'P2016', '62525232');
INSERT INTO `neraca` VALUES ('KDP20160006', '106', '10', 'P2016', '10361543');
INSERT INTO `neraca` VALUES ('KDP20160007', '107', '10', 'P2016', '12117450');
INSERT INTO `neraca` VALUES ('KDP20160008', '108', '10', 'P2016', '7123900');
INSERT INTO `neraca` VALUES ('KDP20160009', '121', '12', 'P2016', '245278313');
INSERT INTO `neraca` VALUES ('KDP20160010', '122', '12', 'P2016', '691640298');
INSERT INTO `neraca` VALUES ('KDP20160011', '123', '12', 'P2016', '46831689');
INSERT INTO `neraca` VALUES ('KDP20160012', '124', '12', 'P2016', '200366789');
INSERT INTO `neraca` VALUES ('KDP20160013', '125', '12', 'P2016', '47013222');
INSERT INTO `neraca` VALUES ('KDP20160014', '126', '12', 'P2016', '121352757');
INSERT INTO `neraca` VALUES ('KDP20160015', '211', '21', 'P2016', '421357243');
INSERT INTO `neraca` VALUES ('KDP20160016', '212', '21', 'P2016', '805800');
INSERT INTO `neraca` VALUES ('KDP20160017', '213', '21', 'P2016', '10423500');
INSERT INTO `neraca` VALUES ('KDP20160018', '214', '21', 'P2016', '1135672');
INSERT INTO `neraca` VALUES ('KDP20160019', '215', '21', 'P2016', '17245278');
INSERT INTO `neraca` VALUES ('KDP20160020', '216', '21', 'P2016', '13672921');
INSERT INTO `neraca` VALUES ('KDP20160021', '221', '22', 'P2016', '960175252');
INSERT INTO `neraca` VALUES ('KDP20160022', '311', '31', 'P2016', '286412072');
INSERT INTO `neraca` VALUES ('KDP20160023', '411', '41', 'P2016', '1417432379');
INSERT INTO `neraca` VALUES ('KDP20160024', '412', '41', 'P2016', '52378153');
INSERT INTO `neraca` VALUES ('KDP20160025', '611', '61', 'P2016', '4261358');
INSERT INTO `neraca` VALUES ('KDP20160026', '612', '61', 'P2016', '101734155');
INSERT INTO `neraca` VALUES ('KDP20160027', '613', '61', 'P2016', '10738090');
INSERT INTO `neraca` VALUES ('KDP20160028', '614', '61', 'P2016', '6272913');
INSERT INTO `neraca` VALUES ('KDP20160029', '615', '61', 'P2016', '2427560');
INSERT INTO `neraca` VALUES ('KDP20160030', '616', '61', 'P2016', '4245823');
INSERT INTO `neraca` VALUES ('KDP20160031', '617', '61', 'P2016', '4853450');
INSERT INTO `neraca` VALUES ('KDP20160032', '618', '61', 'P2016', '218382246');
INSERT INTO `neraca` VALUES ('KDP20160033', '619', '61', 'P2016', '8923628');
INSERT INTO `neraca` VALUES ('KDP20160034', '620', '61', 'P2016', '6258835');
INSERT INTO `neraca` VALUES ('KDP20160035', '511', '51', 'P2016', '734945232');
INSERT INTO `neraca` VALUES ('KDP20170001', '101', '10', 'P2017', '101764128');
INSERT INTO `neraca` VALUES ('KDP20170002', '102', '10', 'P2017', '129635280');
INSERT INTO `neraca` VALUES ('KDP20170003', '103', '10', 'P2017', '192241870');
INSERT INTO `neraca` VALUES ('KDP20170004', '104', '10', 'P2017', '23674120');
INSERT INTO `neraca` VALUES ('KDP20170005', '105', '10', 'P2017', '102803321');
INSERT INTO `neraca` VALUES ('KDP20170006', '106', '10', 'P2017', '14537099');
INSERT INTO `neraca` VALUES ('KDP20170007', '107', '10', 'P2017', '22394830');
INSERT INTO `neraca` VALUES ('KDP20170008', '108', '10', 'P2017', '12803321');
INSERT INTO `neraca` VALUES ('KDP20170009', '121', '12', 'P2017', '302631590');
INSERT INTO `neraca` VALUES ('KDP20170010', '122', '12', 'P2017', '622476268');
INSERT INTO `neraca` VALUES ('KDP20170011', '123', '12', 'P2017', '42148520');
INSERT INTO `neraca` VALUES ('KDP20170012', '124', '12', 'P2017', '160293431');
INSERT INTO `neraca` VALUES ('KDP20170013', '125', '12', 'P2017', '42311900');
INSERT INTO `neraca` VALUES ('KDP20170014', '126', '12', 'P2017', '152430000');
INSERT INTO `neraca` VALUES ('KDP20170015', '211', '21', 'P2017', '501357243');
INSERT INTO `neraca` VALUES ('KDP20170016', '212', '21', 'P2017', '2305800');
INSERT INTO `neraca` VALUES ('KDP20170017', '213', '21', 'P2017', '16423500');
INSERT INTO `neraca` VALUES ('KDP20170018', '214', '21', 'P2017', '2135672');
INSERT INTO `neraca` VALUES ('KDP20170019', '215', '21', 'P2017', '26245278');
INSERT INTO `neraca` VALUES ('KDP20170020', '216', '21', 'P2017', '42672921');
INSERT INTO `neraca` VALUES ('KDP20170021', '221', '22', 'P2017', '1080175250');
INSERT INTO `neraca` VALUES ('KDP20170022', '311', '31', 'P2017', '148077659');
INSERT INTO `neraca` VALUES ('KDP20170023', '411', '41', 'P2017', '1220279450');
INSERT INTO `neraca` VALUES ('KDP20170024', '412', '41', 'P2017', '68547234');
INSERT INTO `neraca` VALUES ('KDP20170025', '611', '61', 'P2017', '5138200');
INSERT INTO `neraca` VALUES ('KDP20170026', '612', '61', 'P2017', '121359253');
INSERT INTO `neraca` VALUES ('KDP20170027', '613', '61', 'P2017', '13205820');
INSERT INTO `neraca` VALUES ('KDP20170028', '614', '61', 'P2017', '7454658');
INSERT INTO `neraca` VALUES ('KDP20170029', '615', '61', 'P2017', '3438478');
INSERT INTO `neraca` VALUES ('KDP20170030', '616', '61', 'P2017', '5217356');
INSERT INTO `neraca` VALUES ('KDP20170031', '617', '61', 'P2017', '3923200');
INSERT INTO `neraca` VALUES ('KDP20170032', '618', '61', 'P2017', '113644623');
INSERT INTO `neraca` VALUES ('KDP20170033', '619', '61', 'P2017', '12460676');
INSERT INTO `neraca` VALUES ('KDP20170034', '620', '61', 'P2017', '8536269');
INSERT INTO `neraca` VALUES ('KDP20170035', '511', '51', 'P2017', '634236578');

-- ----------------------------
-- Table structure for periode
-- ----------------------------
DROP TABLE IF EXISTS `periode`;
CREATE TABLE `periode` (
  `id_periode` varchar(5) NOT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of periode
-- ----------------------------
INSERT INTO `periode` VALUES ('P2014', '2014-01-01', '2014-12-31', '2014');
INSERT INTO `periode` VALUES ('P2015', '2015-01-01', '2015-12-31', '2015');
INSERT INTO `periode` VALUES ('P2016', '2016-01-01', '2016-12-31', '2016');
INSERT INTO `periode` VALUES ('P2017', '2017-01-01', '2017-12-31', '2017');

-- ----------------------------
-- Table structure for sub_grup
-- ----------------------------
DROP TABLE IF EXISTS `sub_grup`;
CREATE TABLE `sub_grup` (
  `id_sub_grup` varchar(2) NOT NULL,
  `nm_sub_grup` varchar(100) DEFAULT NULL,
  `id_grup` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_sub_grup`),
  KEY `idgrup` (`id_grup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sub_grup
-- ----------------------------
INSERT INTO `sub_grup` VALUES ('10', 'AKTIVA LANCAR', '1');
INSERT INTO `sub_grup` VALUES ('12', 'AKTIVA TETAP', '1');
INSERT INTO `sub_grup` VALUES ('13', 'INVESTASI', '1');
INSERT INTO `sub_grup` VALUES ('14', 'HARTA TIDAK BERWUJUD', '1');
INSERT INTO `sub_grup` VALUES ('21', 'KEWAJIBAN LANCAR', '2');
INSERT INTO `sub_grup` VALUES ('22', 'KEWAJIBAN TIDAK LANCAR', '2');
INSERT INTO `sub_grup` VALUES ('31', 'MODAL', '3');
INSERT INTO `sub_grup` VALUES ('41', 'PENDAPATAN JASA', '4');
INSERT INTO `sub_grup` VALUES ('51', 'HARGA POKOK PENJUALAN', '5');
INSERT INTO `sub_grup` VALUES ('61', 'BEBAN-BEBAN', '6');

-- ----------------------------
-- Table structure for tbkategori
-- ----------------------------
DROP TABLE IF EXISTS `tbkategori`;
CREATE TABLE `tbkategori` (
  `id_kategori` varchar(255) NOT NULL,
  `nm_kategori` varchar(255) DEFAULT NULL,
  KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbkategori
-- ----------------------------
INSERT INTO `tbkategori` VALUES ('KTG0001', 'ASURANSI');
INSERT INTO `tbkategori` VALUES ('KTG0002', 'BANK');
INSERT INTO `tbkategori` VALUES ('KTG0003', 'BUMNS');
INSERT INTO `tbkategori` VALUES ('KTG0004', 'CORPORATE');
INSERT INTO `tbkategori` VALUES ('KTG0005', 'CUSTOMER GOODS');
INSERT INTO `tbkategori` VALUES ('KTG0006', 'ELEKTRONIK');
INSERT INTO `tbkategori` VALUES ('KTG0007', 'GOVERNMENT');
INSERT INTO `tbkategori` VALUES ('KTG0008', 'KOMUNITAS');
INSERT INTO `tbkategori` VALUES ('KTG0009', 'OTOMOTIF');
INSERT INTO `tbkategori` VALUES ('KTG0010', 'PEMBIAYAAN');
INSERT INTO `tbkategori` VALUES ('KTG0011', 'RETAIL');
INSERT INTO `tbkategori` VALUES ('KTG0012', 'RUMAH SAKIT');
INSERT INTO `tbkategori` VALUES ('KTG0013', 'TELEKOMUNIKASI');
INSERT INTO `tbkategori` VALUES ('KTG0014', 'TOURS AND TRAVEL');
INSERT INTO `tbkategori` VALUES ('KTG0015', 'HOTEL');
INSERT INTO `tbkategori` VALUES ('KTG0016', 'DISTRIBUTOR');
INSERT INTO `tbkategori` VALUES ('KTG0017', 'SUPPLIER');
INSERT INTO `tbkategori` VALUES ('KTG0018', 'KREDITUR');

-- ----------------------------
-- Table structure for tbperusahaan
-- ----------------------------
DROP TABLE IF EXISTS `tbperusahaan`;
CREATE TABLE `tbperusahaan` (
  `id_perusahaan` varchar(15) NOT NULL,
  `id_kategori` varchar(7) DEFAULT NULL,
  `nm_perusahaan` varchar(255) DEFAULT NULL,
  `alamatpt` varchar(255) DEFAULT NULL,
  `tlp1` varchar(20) DEFAULT NULL,
  `tlp2` varchar(20) DEFAULT NULL,
  `tlp3` varchar(20) DEFAULT NULL,
  `fax1` varchar(20) DEFAULT NULL,
  `fax2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_perusahaan`),
  KEY `kdktg` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbperusahaan
-- ----------------------------
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010001', 'KTG0001', 'PT. Asuransi Jasa Indonesia (Persero)', 'Jl. DR. Sam Ratulangi No. 132 Makassar', '0411-873888', '0411-873666', null, '0411-854888', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010002', 'KTG0001', 'PT. Asuransi Rama Satria Wibawa', 'Gedung Menara Makassar Lt.V Jl. Nusantara No.1 Makassar', '0411-3634771', null, null, '0411-3634852', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010003', 'KTG0001', 'PT. Asuransi QBE Pool Indonesia', 'Pusat Pertokoan Karebosi Jl. Ahmad Yani No.37 I Makassar 90174', '0411-317978', null, null, '0411-3610343', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010004', 'KTG0001', 'PT. Prudential Life Assurance', 'Jl. H.R. Rasuna Said Kav B-9. Kuningan, Jakarta Selatan 12910', '021-5207811', null, null, '021-5200078', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010005', 'KTG0001', 'PT. ASKES (PERSERO) KAB.Gowa', 'Jl. DR.Wahidin Sudiro Husodo No.48', '0411-866536', null, null, '411840892', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010006', 'KTG0001', 'PT. Asuransi Sinar Mas ', 'Jl. KH. Fachruddin No.18, Jakarta 10250', '021-3902141', null, null, '021-3926534', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010007', 'KTG0001', 'PT. Prudential Life Assurance', 'Jl. Cendrawasih SP2, Timika - Papua 99910', '0901-321847', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010008', 'KTG0001', 'Bumiputera Asuransi Jiwa Bersama', 'Jl. Pramuka Raya Kav. 151 Jakarta Timur 13320', '021-8579484', null, null, '021-8579487', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010009', 'KTG0001', 'Bumiputera Asuransi Jiwa Bersama', 'JL. Jend. Sudirman No. 60 Makassar', '0411-871912', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010010', 'KTG0001', 'PT. Asuransi Expor Indonesia [Persero]', 'Jl. AP. Pettarani Ruko Diamond No. 15 Makassar', '0411-455036', null, null, '0411-456203', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010011', 'KTG0001', 'PT. Asuransi Expor Indonesia [Persero]', 'Jl. Mappaodang No. 130 Makassar ', '0411-8112619', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010012', 'KTG0001', 'Jiwasraya', 'Jl. DR. Sam Ratulangi No.9 Makassar', '0411-872072', null, null, '0411-875112', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010013', 'KTG0001', 'PT. Asuransi umum Bumiputeramuda 1967', 'Jl. Masjid raya No. 70 Blok D-10 Makassar 90132', '0411-458501', null, null, '0411-4588507', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010014', 'KTG0001', 'PT. Asuransi Tri Pakarta', 'Jl. Dr. Sam Ratulangi No. 7 Blok A-1 Makassar 90113', '0411-8111400', '0411-831910 ', null, '0411-8111300', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010015', 'KTG0001', 'PT. Staco Jasapratama (General Insurance)', 'Jl. Karunrung No. 1F', '0411-311951', null, null, '0411-317336', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010016', 'KTG0001', 'PT. Prudential Life Assurance', 'Jl. Sungai Saddang Plaza Latanete C 17 Makassar', '0411-3625054', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010017', 'KTG0001', 'PT. Asuransi Sinar Mas ', 'Jl. Bawakaraeng No. 67 Makassar ', '0411-3634284', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010018', 'KTG0001', 'Asuransi Megalife ', 'Jl. Ahmad Yani No. 43', '0411-3613650', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010019', 'KTG0001', 'Asuransi Binagria Upakara', 'Jl. Arief Rate No. 39 Makassar ', '0411-857575', null, null, '0411-854749', null);
INSERT INTO `tbperusahaan` VALUES ('ASURKTG00010020', 'KTG0001', 'Allianz Life ', 'Jl. Maccini Baru 45 GH Makassar', '0411-438786', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020001', 'KTG0002', 'Bank Buana Indonesia PT TBK', 'Jl. Sulawesi No.83 Makassar', '0411-321421', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020002', 'KTG0002', 'Bank Central Asia, Tbk', 'Jl. Lamongrejo No.85 Lamongan', '0322-321591', null, null, '0322-321586', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020003', 'KTG0002', 'Bank CIMB NIAGA', 'Jl. Lembong No. 7 Bandung 40111', '022-4233360', null, null, '022-4209484', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020004', 'KTG0002', 'Bank CIMB NIAGA', 'Jl. Pangeran Diponegoro N0. 53 D Samarinda 75112', '0541-739100', null, null, '0541-739101', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020005', 'KTG0002', 'Bank CIMB Niaga Tbk', 'Jl. Jend. A. Yani No.15 A Sidoarjo 61251', '031-8961157', null, null, '031-8957869', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020006', 'KTG0002', 'Bank Danamon', 'Jl. Sultan Hasanuddin No. 50 Pare-Pare', '0421-22325', null, null, '0421-22111', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020007', 'KTG0002', 'Bank Danamon', 'Jl. Callakara No. 15 Sidrap', '0421-90546', null, null, '0421-90546', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020008', 'KTG0002', 'Bank Danamon Simpan Pinjam', 'Jl. Veteran Selatan No. 45 D Makassar', '0411-832051', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020009', 'KTG0002', 'Bank Ekonomi', null, '411332002', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020010', 'KTG0002', 'Bank Internasional Indonesia', 'Jl. Mangga Dua Raya Jakarta 10730', '021-26508500', null, null, '021-26508502', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020011', 'KTG0002', 'Bank Internasional Indonesia', 'Jl. M.H. Thamrin No. 51 Jakarta 10350', '021-3928282', null, null, '021-3927030', '021-3923388');
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020012', 'KTG0002', 'Bank Internasional Indonesia PT TBK', 'Jl. Kajaolalido No. 6 Makassar 90111', '0411-316292', '0411-3628515', null, '0411-330648', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020013', 'KTG0002', 'Bank Mandiri (Persero) Tbk', 'Jl. Batu Ceper No. 19 DEF Jakarta 10120', '021-3500229', null, null, '021-3512435', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020014', 'KTG0002', 'Bank Mandiri (Persero) Tbk', 'Jl. R.A. Kartini No. 12 - 14 (Lantai 1) Makassar 90111', '0411-325640', null, null, '0411-310956', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020015', 'KTG0002', 'Bank Mandiri (Persero) Tbk', 'Jl. R.A. Kartini No. 19-Lantai 4 Makassar 90111', '0411-3629097', null, null, '0411-3629095', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020016', 'KTG0002', 'Bank Mandiri (Persero) Tbk', 'Jl. Andi Djemma No. 123 Makassar', '0471-21313', '0471-23672', '0471-326824', '0471-23671', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020017', 'KTG0002', 'Bank Mandiri (Persero) Tbk', 'Jl. RA. Kartini No.19, 4th Floor Makassar 90111', '62 411-3629097', null, null, '62 411-3629095', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020018', 'KTG0002', 'Bank Mandiri Syariah', 'Jl. Piere Tandean Kompleks Ruko Mega Mas Blok I D1 No.28 Boulevard Manado 95115', '0431-879444', null, null, '0431-879492', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020019', 'KTG0002', 'Bank Maspion Indonesia', 'Jl. Jend. A Yani 11-12 Makassar', '0411-3655138', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020020', 'KTG0002', 'Bank Mega', 'Jl. HM. Dg. Patompo, Makassar', '0411-8118900', null, null, '0411-8118902', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020021', 'KTG0002', 'Bank Muamalat Indonesia PT TBK', 'Jl. Dr. Sam Ratulangi 72 Makassar', '0411-832777', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020022', 'KTG0002', 'Bank Negara Indonesia (Persero) Tbk', 'Jl. Brawijaya No. 17 Kediri', '0354-681656', null, null, '0354-681578', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020023', 'KTG0002', 'Bank Negara Indonesia (Persero) Tbk', 'Jl. Pengayoman, Ruko Saphire No. 1-2 Lt 2-3 Makassar', '0411-420334', null, null, '0411-420339', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020024', 'KTG0002', 'Bank Rakyat Indonesia (PERSERO), Tbk', 'Jl. Jend. Sudirman Kav. 44-46, Jakarta 10210', '021-5758836', null, null, '021-5742559', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020025', 'KTG0002', 'Bank Sinarmas', 'Jl. JA. Suprapto 40 Ruko B3 Malang ', '0341-336060', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020026', 'KTG0002', 'Bank Sinarmas', 'Kompleks Pasifik Permai Blok F No. 7-8, Jayapura ', '0967-550410', null, null, '0967-550411', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020027', 'KTG0002', 'ABN Amro Bank NV', 'Jl. Sultan Hasanuddin No. 57 Makassar', '0411-330888', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020028', 'KTG0002', 'Bank Arta Graha Internasional PT TBK', 'Jl. Jend A Yani No.35 ABCD Makassar', '0411-332181', '0411-318345', null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020029', 'KTG0002', 'Bank Ata Pusara', 'Jl. Jend A Yani No.35 AD Makassar', '0411-316900', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020030', 'KTG0002', 'Bank Bukopin', 'Jl. Brigjen Slamet Riyadi No. 2 Makassar', '0411-320740', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020031', 'KTG0002', 'Bank Central Asia', 'Jl. Jend. A Yani No. 31 Makassar', '0411-319208', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020032', 'KTG0002', 'Bank Danamon Indonesia PT Indonesia', 'Jl. Jend. A Yani No. 11 Makassar', '0411-333050', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020033', 'KTG0002', 'Bank Danamon Indonesia PT TBK', 'Jl. Sulawesi Butung Makassar', '0411-317752', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020034', 'KTG0002', 'Bank Danamon Syariah', 'Jl. Sulawesi Pasar Butung BI S/1 Makassar', '0411-322449', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020035', 'KTG0002', 'Bank Ekonomi Raharja', 'Jl. DR. Wahidin Sudirohusodo No.42 Makassar', '0411-332002', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020036', 'KTG0002', 'Bank Eksekutif Internasional PT TBK', 'Jl. Sulawesi No. 59-61 Makassar', '0411-330033', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020037', 'KTG0002', 'Bank Mayapada International', 'Jl. Jend A Yani 25 A-B RT 02/03 Makassar', '0411-3655050', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020038', 'KTG0002', 'Bank Mega PT TBK', 'Jl. Jend A Yani 7 Makassar', '411323232', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020039', 'KTG0002', 'Bank Mufti', 'Jl. Raya Poros UP Maros', '0411-550771', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020040', 'KTG0002', 'Bank Negara Indonesia PT Persero TBK', 'Jl. Jend. Sudirman 1 Makassar', '0411-315065', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020041', 'KTG0002', 'Bank Negara Indonesia Syariah', 'Jl. Gunung Bulusaraung 2-2-A Makassar', '411328663', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020042', 'KTG0002', 'Bank Niaga PT Tbk', 'Jl. Jend. A Yani 33 Makassar', '0411-318718', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020043', 'KTG0002', 'Bank NISP PT Tbk', 'Jl. Jend. A Yani 21 Makassar', '0411-350101', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020044', 'KTG0002', 'Bank Panin PT Tbk', 'Jl. Dr. Sam Ratulangi 20 Ged Bank Panin Makassar', '0411-858449', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020045', 'KTG0002', 'Bank Pasar', 'Jl. Sultan Hasanuddin 96 Makassar', '0411-886456', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020046', 'KTG0002', 'Bank Pasar Panca Dasa Dharma', 'Jl. Gunung Bawakaraeng 47-A Makassar', '0411-319405', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020047', 'KTG0002', 'Bank Pembangunan Daerah Sulawesi Selatan', 'Jl. Dr. Sam Ratulangi BI A-2/7 Ruko Ratulangi', '0411-859171', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020048', 'KTG0002', 'Bank Perkreditan Rakyat', 'Jl. Sultan Hasanuddin Komp. Ruko Graha Satelit Blok A No. 2', '0411-860464', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020049', 'KTG0002', 'Bank Permata PT Tbk', 'Jl. Jend Sudirman 12 Makassar', '0411-325410', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020050', 'KTG0002', 'Bank Pikko PT Tbk', 'Jl. Sulawesi 50 Makassar', '0411-315918', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020051', 'KTG0002', 'Bank Rakyat Indonesia PT Persero Tbk', 'Jl. Jend. A Yani 8 Makassar', '0411-312931', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020052', 'KTG0002', 'Bank Rakyat Indonesia Syariah', 'Jl. Perintis Kemerdekaan Komp. Puri Kencana Sari BI A/1', '0411-589035', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020053', 'KTG0002', 'Bank Standard Chartered', 'Jl. Jend. Sudirman No. 70 Makassar 90113', '0411-871551', null, null, '0411-871552', null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020054', 'KTG0002', 'Bank Sul-Sel', 'Jl. Hos Cokroaminoto Sungguminasa', '0411-8220423', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020055', 'KTG0002', 'Bank Syariah Mandiri', 'Jl. Dr Sam Ratulangi VII BI C/1-2 Makassar', '0411-833070', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020056', 'KTG0002', 'Bank Syariah Niaga Madani', 'Jl. Lanto Daeng Pasewang 25 B RT 01/02 Maricaya Makassar', '0411-854291', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020057', 'KTG0002', 'Bank Tabungan Negara Cab Panakkukang', 'Jl. Letjen Hertasning Blk.1 No.2 Kassi-Kassi Rappocini Makassar 90222', '0411-868833', '0411-868831', null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020058', 'KTG0002', 'Bank Tabungan Negara PT Persero', 'Jl. Kajaolalido 4 Makassar', '0411-316011', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020059', 'KTG0002', 'Bank Tabungan Negara Syariah PT Tbk', 'Jl. Boulevard Ruko Jasper II/34 Makassar', '0411-422333', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020060', 'KTG0002', 'Bank Tabungan Pensiunan Nasional', 'Jl. Gunung Bawakaraeng 170-176 Makassar', '0411-449013', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020061', 'KTG0002', 'Bank Utama', 'Jl. Sulawesi Makassar', '0411-331077', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('BANKKTG00020062', 'KTG0002', 'PD Bank Pasar KMUP', 'Kompi Makassar Mall 4', '0411-311383', null, null, null, null);
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170001', 'KTG0017', 'Jual Kayu', 'Jl. Borong Raya, Antang, Manggala, Makassar, 90233', '085395051623', '085256593849', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170002', 'KTG0017', 'UD. Arini', 'Jl. Ujung Bori Lama No.10 A, Antang, Manggala, Makassar, 90234', '0411-5037077', '0411-511398', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170003', 'KTG0017', 'UD. Sinar Bila', 'Jl. Borong Raya No.112, Borong, Manggala, Makassar', '085340838799', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170004', 'KTG0017', 'Karya Teknik Kusen Dan Las', 'Jl. Abdullah Daeng Sirua, Tamamaung, Panakkukang, Makassar, 90231', '081355995099', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170005', 'KTG0017', 'Kembang Deasy', 'Jl.14 Februari, Manado', '', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170006', 'KTG0017', 'DeTaman Florist', 'Jl. Veteran Utara No.142, Gaddong, Bontoala, Makassar, 90151', '085299100100', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170007', 'KTG0017', 'Karangan Bunga Makassar', 'Jl. Gunung Latimojong No.61, Lariang Bangi, Makassar 90157', '08114443702', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170008', 'KTG0017', 'Delia Florist', 'Jl. G. Bawakaraeng No.57, Gaddong, Bontoala, Makassar, 90156', '0411-3651500', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170009', 'KTG0017', 'Toko Bunga Dewi Florist', 'Jl. Lamuru No.38, Bontoala Tua, Bontoala, Makassar, 90156', '085242412025', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170010', 'KTG0017', 'Diana Flower', 'Jl. Bulu Salaka No.18, Lariang Bangi, Kapasa, Tamalanrea, Makassar 90111', '081355288805', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170011', 'KTG0017', 'Kings Florist', 'Kompleks Ruko Latimojong Indah, Jl. Gunung Latimojong Blok A No.36, Gaddong, Bontoala, Makassar, 90141', '0811468338', '', '', '', '');
INSERT INTO `tbperusahaan` VALUES ('SUPPKTG00170012', 'KTG0017', 'Grandpa Orchid Florist', 'Jl. Gunung Latimojong No.57 C, Lariang Bangi, Makassar, 90157', '04113635638', '', '', '', '');

-- ----------------------------
-- Table structure for tbpic
-- ----------------------------
DROP TABLE IF EXISTS `tbpic`;
CREATE TABLE `tbpic` (
  `id_pic` varchar(11) NOT NULL,
  `nama_pic` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `hp1` char(20) DEFAULT NULL,
  `hp2` char(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_perusahaan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pic`),
  KEY `idpt` (`id_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbpic
-- ----------------------------
INSERT INTO `tbpic` VALUES ('PIC0001', 'Bpk. Dimas', null, '811418857', null, null, 'BANKKTG00020001');
INSERT INTO `tbpic` VALUES ('PIC0002', 'Setiyo Prinaryani', 'Pimpinan KCP', null, null, 'setiyo_prinaryani@bca.co.id', 'BANKKTG00020002');
INSERT INTO `tbpic` VALUES ('PIC0003', 'Arliandri Lesmana ', 'Mortgage Businness & Sales ', '85624877800', null, 'arliandri.lesmana@cimbniaga.co.id', 'BANKKTG00020003');
INSERT INTO `tbpic` VALUES ('PIC0004', 'Ajeng Theresia Eryani', 'Consumer Finance Manager ', '81319462612', '81952416312', 'ajeng.theresia@cimbniaga.co.id', 'BANKKTG00020004');
INSERT INTO `tbpic` VALUES ('PIC0005', 'Made Yuni Mahartini', 'Funding Division Head Special Lending East Area', '81331858999', null, 'madeyuni@cimbniaga.co.id', 'BANKKTG00020005');
INSERT INTO `tbpic` VALUES ('PIC0006', 'Aryana Rosa ', 'Business Manager', '8124284879', null, null, 'BANKKTG00020006');
INSERT INTO `tbpic` VALUES ('PIC0007', 'Afrihandy', null, '81241149989', null, null, 'BANKKTG00020007');
INSERT INTO `tbpic` VALUES ('PIC0008', 'Bpk. Bahtiar', null, '81242421717', null, null, 'BANKKTG00020008');
INSERT INTO `tbpic` VALUES ('PIC0009', 'Bpk. Hendri', null, null, null, null, 'BANKKTG00020009');
INSERT INTO `tbpic` VALUES ('PIC0010', 'Endah Dwi Julita K', 'Consumer Rick Collection', '81807784242', null, null, 'BANKKTG00020010');
INSERT INTO `tbpic` VALUES ('PIC0011', 'Francisca Maureen', 'Head of Xpay ', null, null, null, 'BANKKTG00020011');
INSERT INTO `tbpic` VALUES ('PIC0012', 'Ivan Yudha Lesmana ', 'Xpay Exhibition Coordinator', '8161321434', null, 'IYLesmana@bankbii.com', 'BANKKTG00020011');
INSERT INTO `tbpic` VALUES ('PIC0013', 'Gregorius Kaparang', 'ULB Area Coordinator Manager', '811597282', null, 'gkaparang@bankbii.com', 'BANKKTG00020012');
INSERT INTO `tbpic` VALUES ('PIC0014', 'Bpk. Ade', null, '81355970112', null, null, 'BANKKTG00020012');
INSERT INTO `tbpic` VALUES ('PIC0015', 'Bintang Baskoro', 'Customer Service CO. Jakarta Baru Cerper', null, null, 'jkt_Batuceper@bankmandiri.co.id', 'BANKKTG00020013');
INSERT INTO `tbpic` VALUES ('PIC0016', 'Mulyono Guyadi', 'Credit Comp & Legal Adm', '8124202615', null, 'rco.makassar@bankmandiri.co.id', 'BANKKTG00020014');
INSERT INTO `tbpic` VALUES ('PIC0017', 'Yanto Subroto', 'Deputy Regional Manager', null, null, 'yanto.subroto@bankmandiri.co.id', 'BANKKTG00020015');
INSERT INTO `tbpic` VALUES ('PIC0018', 'Rosnawati Sinapati', 'Sales Officer', '81354631777', null, null, 'BANKKTG00020016');
INSERT INTO `tbpic` VALUES ('PIC0019', 'Insanul Kamilsah D', 'LCR Supervisor', '81524005182', null, null, 'BANKKTG00020016');
INSERT INTO `tbpic` VALUES ('PIC0020', 'Sugiamin, SE', 'Assistant Vice President Regional Office X', '811872337', null, 'mktmgr10.makassar@bankmandiri.co.id', 'BANKKTG00020017');
INSERT INTO `tbpic` VALUES ('PIC0021', 'Kartika Soetopo', 'Sharia Funding Executive', '81356088996', null, null, 'BANKKTG00020018');
INSERT INTO `tbpic` VALUES ('PIC0022', 'Bpk. Wiliam', null, '0411-5095326', null, null, 'BANKKTG00020019');
INSERT INTO `tbpic` VALUES ('PIC0023', 'Shienny P. Felicia', 'Treasury Officer', null, null, null, 'BANKKTG00020020');
INSERT INTO `tbpic` VALUES ('PIC0024', 'Yong Yong Che', 'Treasury Officer', '0411-5026262', null, null, 'BANKKTG00020020');
INSERT INTO `tbpic` VALUES ('PIC0025', 'Ibu Rina', null, '8124222473', null, null, 'BANKKTG00020021');
INSERT INTO `tbpic` VALUES ('PIC0026', 'Arti Wirawati', null, null, null, null, 'BANKKTG00020022');
INSERT INTO `tbpic` VALUES ('PIC0027', 'Eka Agustiyanti', null, null, null, 'ekhaeleven@yahoo.com', 'BANKKTG00020023');
INSERT INTO `tbpic` VALUES ('PIC0028', 'Anita Retnani', 'Kepala Bagian', null, null, 'anita_retrani@bri.co.id', 'BANKKTG00020024');
INSERT INTO `tbpic` VALUES ('PIC0029', 'William', 'Sub - Branch Manager', '8123055338', null, null, 'BANKKTG00020025');
INSERT INTO `tbpic` VALUES ('PIC0030', 'Martina M. Pararik', 'Relation Officer', '8114801815', null, 'ro027@banksinarmas.com', 'BANKKTG00020026');
INSERT INTO `tbpic` VALUES ('PIC0031', 'Bp. Pamuadji', 'Branch Manager', null, null, null, 'ASURKTG00010001');
INSERT INTO `tbpic` VALUES ('PIC0032', 'Abdul Musyawir', null, '8124268632', null, null, 'ASURKTG00010002');
INSERT INTO `tbpic` VALUES ('PIC0033', 'Saiman Sutanto', null, '811418828', '0411-2418828', null, 'ASURKTG00010003');
INSERT INTO `tbpic` VALUES ('PIC0034', 'Franche', 'Financial Advisor', '21241177500', '0411-2358500', 'franche76@yahoo.com', 'ASURKTG00010004');
INSERT INTO `tbpic` VALUES ('PIC0035', 'Yenk Bali', 'Associate Unit Manager', null, null, 'yenk_bali@yahoo.com', 'ASURKTG00010004');
INSERT INTO `tbpic` VALUES ('PIC0036', 'Anisah Nurfitri Dewi', 'Unit Artikasari', '81128024224', null, 'niesah_pru@yahoo.co.id', 'ASURKTG00010004');
INSERT INTO `tbpic` VALUES ('PIC0037', 'ST.Aminah Muin', 'Asst. Manager', '81342452062', null, 'tri-muin@yahoo.com', 'ASURKTG00010005');
INSERT INTO `tbpic` VALUES ('PIC0038', 'Julia Siti Utami', 'Senior Marketing Manager', '88812340501', null, 'utami@sinarmas.co.id', 'ASURKTG00010006');
INSERT INTO `tbpic` VALUES ('PIC0039', 'Blessing A. Rompi, DR, SP.B', null, '81344336902', null, null, 'ASURKTG00010007');
INSERT INTO `tbpic` VALUES ('PIC0040', 'Asri Mulyani', 'Consultant', '8158807262', null, 'eks_jakarta@bumiputera.com', 'ASURKTG00010008');
INSERT INTO `tbpic` VALUES ('PIC0041', 'Mr. Mukhsin / Ms. Yanti', 'Leader / Sec', null, null, null, 'ASURKTG00010009');
INSERT INTO `tbpic` VALUES ('PIC0042', 'Muh. Aswandy', '', '085395051623', '', '', 'SUPPKTG00170001');
INSERT INTO `tbpic` VALUES ('PIC0043', 'Bpk. Herman', '081393545883', '', '', '', 'SUPPKTG00170002');
INSERT INTO `tbpic` VALUES ('PIC0044', 'Michel Christian Roring', 'Owner Usaha', '', '', '', 'SUPPKTG00170005');

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id_transaksi` varchar(15) NOT NULL DEFAULT '',
  `tgl_transaksi` varchar(100) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `id_akun` varchar(3) DEFAULT NULL,
  `nm_akun` varchar(200) DEFAULT NULL,
  `debit` int(255) DEFAULT NULL,
  `kredit` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `kdtrxneraca` (`kode`),
  KEY `kdtrxakun` (`id_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES ('201807300001', '30/07/2018', 'KDP20140036', '109', 'AKTIVA APA SAJA', '2000', '0');
