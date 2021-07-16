-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 05:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handi`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(25) NOT NULL,
  `judul_buku` varchar(254) NOT NULL,
  `penerbit_buku` varchar(254) NOT NULL,
  `penulis_buku` varchar(254) NOT NULL,
  `tahunTerbit_buku` year(4) NOT NULL,
  `halaman_buku` int(254) NOT NULL,
  `kategori_buku` varchar(254) NOT NULL,
  `sinopsis_buku` text NOT NULL,
  `waktuAdd_buku` datetime NOT NULL,
  `direktoriGambar_buku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `penerbit_buku`, `penulis_buku`, `tahunTerbit_buku`, `halaman_buku`, `kategori_buku`, `sinopsis_buku`, `waktuAdd_buku`, `direktoriGambar_buku`) VALUES
('00276', 'eu sem.', 'Libero Lacus Varius Corp.', 'Yuli Bradshaw', 2021, 90, 'lorem', 'erat, in consectetuer ipsum nunc id', '2021-12-12 20:19:16', 'amet, risus. Donec'),
('00957', 'urna convallis', 'Molestie Arcu Inc.', 'Coby Strickland', 2022, 11, 'fermentum', 'ad litora torquent', '2022-01-23 20:42:00', 'Phasellus elit'),
('01277', 'lorem ipsum', 'Egestas Rhoncus Proin Limited', 'Slade Rodriguez', 2022, 5, 'faucibus', 'placerat, orci lacus vestibulum', '2020-08-29 01:10:41', 'congue. In'),
('01455', 'ut, sem.', 'Ipsum Suspendisse Non Incorporated', 'Ivan Oneal', 2021, 84, 'Suspendisse', 'malesuada ut, sem. Nulla', '2022-02-01 23:15:47', 'fringilla, porttitor vulputate,'),
('01726', 'interdum feugiat.', 'Mauris Morbi Non Company', 'Harding Estrada', 2021, 87, 'Aliquam', 'mauris id sapien. Cras dolor dolor,', '2021-04-15 07:35:58', 'Quisque'),
('02117', 'at sem', 'Libero LLP', 'Carlos Munoz', 2021, 6, 'feugiat.', 'Proin', '2022-05-02 11:54:05', 'consequat enim diam'),
('02284', 'pede. Nunc', 'Risus Quisque Libero Industries', 'Yoshio Zimmerman', 2021, 24, 'Mauris', 'luctus felis', '2022-07-16 22:28:13', 'neque'),
('02317', 'consequat dolor', 'Tortor Nibh Corp.', 'Camden Hardy', 2022, 23, 'neque', 'amet', '2022-05-14 14:24:00', 'gravida.'),
('03002', 'pede sagittis', 'Convallis Corporation', 'Brady Langley', 2021, 37, 'sit', 'lorem fringilla ornare placerat, orci', '2020-12-15 15:22:32', 'at'),
('03097', 'erat vitae', 'Integer Institute', 'Colt Zimmerman', 2021, 73, 'mattis', 'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam', '2022-06-20 09:54:29', 'risus. Nulla'),
('03435', 'Vestibulum ante', 'Eu Neque Foundation', 'Gavin Winters', 2020, 64, 'eget', 'Donec dignissim magna a tortor.', '2021-03-07 13:36:27', 'lorem eu'),
('04008', 'urna. Nunc', 'Orci Donec Nibh Associates', 'Kato Walls', 2021, 99, 'Nunc', 'congue, elit', '2021-12-13 12:11:05', 'rutrum, justo. Praesent'),
('05199', 'orci. Ut', 'Ut Erat Sed Industries', 'Roth Jimenez', 2021, 97, 'auctor,', 'magna sed dui. Fusce aliquam, enim nec tempus', '2021-04-09 12:52:15', 'id,'),
('05402', 'adipiscing, enim', 'Sollicitudin Institute', 'Jack Stevens', 2022, 91, 'ut', 'adipiscing', '2021-05-01 16:52:56', 'orci.'),
('05883', 'et ultrices', 'A Magna Limited', 'Carter Barnett', 2022, 78, 'risus.', 'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,', '2022-04-26 00:56:38', 'nibh. Phasellus'),
('05916', 'faucibus ut,', 'Eros Nec Tellus Ltd', 'Abbot Newton', 2020, 42, 'sit', 'porta elit, a feugiat tellus lorem eu', '2021-09-26 08:39:22', 'ultrices, mauris'),
('07123', 'ut nisi', 'Eu LLP', 'Rooney Acosta', 2022, 41, 'aliquet', 'Integer aliquam adipiscing lacus. Ut nec urna', '2021-01-21 11:12:44', 'Phasellus at'),
('07792', 'sociis natoque', 'Congue Corp.', 'Erich Avery', 2022, 13, 'interdum.', 'cursus in, hendrerit', '2020-11-08 17:28:25', 'odio. Etiam'),
('07935', 'ornare. In', 'Dictum Mi Ac Corp.', 'Christian Morse', 2021, 38, 'iaculis', 'ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque', '2021-01-07 18:30:38', 'Nullam vitae'),
('08089', 'semper et,', 'Sit Amet Industries', 'Steel Reyes', 2022, 86, 'euismod', 'facilisis lorem tristique aliquet. Phasellus', '2022-05-21 23:39:31', 'velit. Cras lorem'),
('08449', 'Praesent luctus.', 'Tortor Nunc Commodo Corp.', 'Erich Blanchard', 2022, 28, 'tincidunt.', 'a neque. Nullam ut nisi a odio', '2021-12-21 14:47:19', 'ullamcorper'),
('08811', 'elit fermentum', 'Ligula Nullam PC', 'Garrett Bray', 2022, 78, 'augue', 'eu, eleifend nec, malesuada ut, sem. Nulla interdum.', '2020-08-12 23:35:46', 'dictum'),
('10505', 'risus. Duis', 'Ultricies Ornare Elit LLC', 'Holmes Lott', 2021, 61, 'Nam', 'mi lacinia', '2021-06-29 14:06:00', 'hymenaeos.'),
('11058', 'eget tincidunt', 'Risus Duis A Limited', 'Talon Hammond', 2022, 36, 'quam', 'blandit. Nam nulla', '2021-09-22 02:35:46', 'elit. Etiam laoreet,'),
('11593', 'Quisque imperdiet,', 'In LLC', 'Ahmed Parrish', 2021, 78, 'Quisque', 'risus varius', '2021-05-10 07:30:59', 'quis, pede.'),
('11670', 'porttitor tellus', 'Ligula Consectetuer Ltd', 'Graham Burris', 2021, 36, 'Mauris', 'elit fermentum', '2022-06-06 01:04:07', 'aliquet lobortis, nisi'),
('12209', 'urna, nec', 'Malesuada Vel Foundation', 'Tiger Ortiz', 2021, 80, 'lacus', 'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices', '2022-06-18 15:23:01', 'semper'),
('12240', 'ipsum cursus', 'Ac Corp.', 'Otto Vaughn', 2020, 5, 'elit,', 'nisi magna sed dui. Fusce aliquam, enim nec', '2021-06-14 09:47:15', 'neque'),
('12806', 'mus. Donec', 'Mauris Erat Incorporated', 'Barry Hudson', 2021, 53, 'lacus', 'lacus. Quisque imperdiet,', '2021-06-12 03:39:06', 'tincidunt. Donec'),
('13659', 'ut mi.', 'Urna Justo LLC', 'Lucius Duffy', 2021, 26, 'arcu.', 'pharetra.', '2021-06-04 19:40:56', 'diam vel arcu.'),
('13923', 'arcu. Aliquam', 'Luctus Ut Institute', 'Damian Santiago', 2021, 21, 'a', 'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque.', '2021-01-11 01:53:24', 'amet'),
('15277', 'dolor sit', 'Sed Dictum Industries', 'Cedric Glenn', 2020, 15, 'varius', 'Lorem ipsum dolor', '2022-01-04 10:29:17', 'elit erat vitae'),
('15330', 'ultrices posuere', 'Proin Ultrices Duis Corp.', 'Hedley Garner', 2021, 15, 'libero', 'odio. Etiam ligula', '2021-05-27 08:44:12', 'nec,'),
('15436', 'nascetur ridiculus', 'Dui Quis Accumsan Associates', 'Howard Hall', 2021, 24, 'gravida.', 'egestas blandit. Nam nulla magna, malesuada vel,', '2022-03-18 20:21:44', 'nisi'),
('16163', 'amet luctus', 'Auctor Quis Company', 'Marsden Church', 2022, 53, 'iaculis', 'risus. In mi pede,', '2022-04-11 07:04:47', 'est, mollis'),
('16539', 'sed, sapien.', 'Libero Est Congue Inc.', 'Isaac England', 2020, 67, 'congue', 'eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', '2021-06-18 16:23:32', 'nisi. Mauris nulla.'),
('16786', 'Nullam feugiat', 'Vestibulum Nec Company', 'Daniel Lynch', 2022, 81, 'Nulla', 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla', '2022-02-19 16:14:37', 'feugiat placerat velit.'),
('17383', 'sed, sapien.', 'Non Justo Incorporated', 'Kadeem Chang', 2022, 26, 'at', 'porttitor eros nec tellus. Nunc lectus pede,', '2021-01-11 07:46:49', 'enim commodo hendrerit.'),
('17430', 'Duis at', 'Integer Urna Vivamus Industries', 'Lionel Gould', 2020, 94, 'sem', 'non, luctus sit amet,', '2021-10-24 06:46:28', 'tempor'),
('17684', 'Praesent eu', 'Nullam Consulting', 'Phillip Moran', 2021, 90, 'faucibus.', 'a purus. Duis elementum, dui', '2022-03-13 07:06:15', 'fames ac'),
('17787', 'lacinia orci,', 'Sodales Elit Inc.', 'Harper Hopkins', 2020, 81, 'Proin', 'nascetur ridiculus mus. Donec dignissim magna a', '2022-06-21 07:53:38', 'Nullam'),
('18470', 'nec quam.', 'Mi Aliquam PC', 'Emerson Hays', 2022, 56, 'lectus', 'fames ac turpis egestas. Aliquam fringilla cursus', '2021-01-15 11:29:15', 'magna. Suspendisse'),
('19127', 'Nunc ac', 'Rutrum Industries', 'Alden Herrera', 2021, 13, 'justo.', 'Lorem', '2022-04-03 07:43:57', 'augue'),
('19160', 'id sapien.', 'Donec Dignissim PC', 'Mark Simpson', 2021, 22, 'et,', 'lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', '2021-04-04 18:03:48', 'faucibus. Morbi vehicula.'),
('20330', 'interdum feugiat.', 'Auctor Velit Eget Corp.', 'Brandon Salas', 2020, 60, 'metus.', 'quis, tristique', '2021-05-18 05:06:53', 'nec ante.'),
('23166', 'nonummy ipsum', 'Vulputate Nisi Sem Institute', 'Lars Leon', 2020, 72, 'Mauris', 'non justo. Proin non massa non ante bibendum ullamcorper.', '2020-08-23 22:31:23', 'aliquam'),
('23819', 'consequat purus.', 'Tempus Eu Foundation', 'Timon Frost', 2022, 61, 'senectus', 'tortor. Integer aliquam adipiscing lacus. Ut nec urna', '2020-11-06 12:35:49', 'eget, dictum'),
('25105', 'pede. Suspendisse', 'Suscipit Est Associates', 'Abel Jennings', 2022, 69, 'gravida', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', '2021-11-15 03:57:20', 'senectus et netus'),
('25286', 'Cum sociis', 'Eget Varius Ultrices Company', 'Len Workman', 2021, 20, 'sed', 'consequat nec, mollis vitae, posuere at, velit. Cras lorem', '2022-06-08 08:01:45', 'sociis natoque'),
('25525', 'semper egestas,', 'Nisl Inc.', 'Barry Cotton', 2022, 7, 'et', 'ligula. Aliquam erat volutpat. Nulla', '2022-03-18 18:26:45', 'Donec'),
('25714', 'eu turpis.', 'Lorem Corp.', 'Acton Conner', 2021, 13, 'lectus', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut', '2021-10-28 11:56:24', 'senectus'),
('26482', 'velit. Cras', 'Scelerisque Sed PC', 'Brody Crane', 2021, 93, 'ipsum.', 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.', '2021-09-25 14:28:47', 'ac'),
('27010', 'a feugiat', 'Consectetuer Industries', 'Curran Lancaster', 2022, 74, 'euismod', 'augue, eu tempor erat neque non quam.', '2022-05-01 17:31:40', 'consectetuer'),
('27477', 'sagittis. Nullam', 'Dolor Fusce Mi PC', 'Coby Thomas', 2020, 11, 'odio.', 'semper cursus. Integer mollis. Integer tincidunt', '2021-05-01 00:31:12', 'nulla magna, malesuada'),
('27560', 'diam nunc,', 'Duis Sit Foundation', 'Peter Gilmore', 2021, 1, 'id', 'eget massa. Suspendisse', '2021-12-29 02:47:36', 'Curabitur egestas'),
('28300', 'sit amet,', 'Lorem Vehicula Et LLP', 'Daquan Pate', 2022, 71, 'vel', 'ornare.', '2021-06-04 05:01:56', 'eu, accumsan sed,'),
('28386', 'ante blandit', 'Cras Interdum Nunc Incorporated', 'Ivan Brady', 2021, 18, 'Duis', 'pharetra. Nam ac nulla. In tincidunt congue', '2021-01-25 04:15:01', 'et netus et'),
('29770', 'tellus. Phasellus', 'Morbi Accumsan Ltd', 'Daquan Head', 2022, 95, 'Lorem', 'Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', '2021-10-22 02:40:45', 'est'),
('29911', 'laoreet lectus', 'Pellentesque Incorporated', 'Herman Duffy', 2021, 25, 'pede', 'eu tellus eu augue porttitor interdum. Sed', '2020-10-29 01:15:51', 'ac, eleifend'),
('29936', 'venenatis lacus.', 'Auctor Mauris Limited', 'Vernon Beasley', 2021, 39, 'Integer', 'mi lorem, vehicula et, rutrum', '2022-07-05 05:42:57', 'eleifend'),
('30466', 'odio, auctor', 'Facilisis Magna Consulting', 'Dillon Burks', 2021, 42, 'non', 'dictum sapien. Aenean massa. Integer vitae', '2021-04-01 10:39:14', 'Fusce mi'),
('30962', 'consectetuer adipiscing', 'Auctor Ltd', 'Odysseus Booth', 2020, 36, 'faucibus', 'arcu. Sed eu nibh vulputate mauris sagittis', '2021-05-02 07:35:47', 'eget, volutpat ornare,'),
('30970', 'molestie tortor', 'Ornare Fusce Mollis Company', 'Colton Middleton', 2022, 17, 'pellentesque', 'mollis vitae, posuere at,', '2021-09-28 05:00:18', 'Nunc sollicitudin'),
('31042', 'molestie dapibus', 'Phasellus Elit Pede PC', 'Harper Solis', 2022, 71, 'ut', 'enim. Etiam imperdiet dictum', '2021-09-23 04:48:34', 'risus varius orci,'),
('31078', 'neque tellus,', 'Faucibus Associates', 'Garrison Vaughan', 2020, 46, 'molestie.', 'lacinia vitae, sodales at, velit. Pellentesque', '2021-06-02 14:45:10', 'sodales nisi'),
('31531', 'sem semper', 'Leo Institute', 'Elmo David', 2022, 47, 'risus.', 'scelerisque neque. Nullam nisl. Maecenas malesuada', '2022-03-07 11:08:51', 'feugiat'),
('31871', 'non magna.', 'Magna Sed Dui Limited', 'Kasper Lambert', 2022, 75, 'eleifend', 'orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.', '2022-04-08 10:10:54', 'varius et, euismod'),
('32617', 'scelerisque neque', 'A Industries', 'Troy Farmer', 2022, 71, 'sed,', 'elit, pharetra ut, pharetra sed,', '2021-10-27 20:00:23', 'ligula. Nullam enim.'),
('32903', 'metus. In', 'Vulputate Limited', 'Aidan Williamson', 2021, 19, 'pede,', 'auctor. Mauris vel', '2022-06-08 17:23:41', 'blandit'),
('33645', 'lectus convallis', 'Eu Lacus Inc.', 'Richard Russo', 2021, 46, 'neque.', 'a ultricies adipiscing, enim mi tempor lorem, eget', '2021-10-18 06:35:28', 'posuere'),
('33864', 'id enim.', 'Aliquet Institute', 'Roth Horn', 2021, 65, 'purus', 'felis eget', '2022-02-14 01:11:01', 'volutpat. Nulla dignissim.'),
('34093', 'et ultrices', 'Etiam Ligula Tortor Company', 'Wing Duncan', 2022, 49, 'aliquet.', 'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', '2021-03-24 16:19:36', 'ut, sem.'),
('34148', 'ultrices posuere', 'Convallis Erat Eget LLP', 'Salvador Carney', 2021, 16, 'consectetuer,', 'Nunc sollicitudin commodo ipsum. Suspendisse non leo.', '2020-10-27 18:07:39', 'Vestibulum ante ipsum'),
('34690', 'ridiculus mus.', 'Sociis Natoque Industries', 'Aristotle Berry', 2021, 85, 'Ut', 'eget, dictum placerat, augue. Sed molestie. Sed id risus', '2021-12-22 04:06:55', 'porttitor eros nec'),
('35084', 'Curabitur egestas', 'Lacus Industries', 'Colin Slater', 2021, 95, 'montes,', 'euismod est arcu', '2022-06-09 06:24:59', 'dictum'),
('35551', 'augue id', 'Nullam Associates', 'Rogan Becker', 2021, 64, 'sociis', 'amet, faucibus ut, nulla.', '2021-08-26 21:47:10', 'amet, faucibus'),
('36368', 'arcu. Morbi', 'Adipiscing Lacus Ut Institute', 'Sylvester Weeks', 2021, 49, 'libero', 'fringilla ornare placerat, orci', '2022-04-18 12:50:54', 'cursus et,'),
('36641', 'ut mi.', 'Cursus Luctus Ltd', 'Gil Harrison', 2021, 41, 'elementum,', 'interdum. Curabitur dictum.', '2021-06-16 19:07:27', 'nibh'),
('36689', 'Duis sit', 'Egestas Aliquam Nec Company', 'Carl Madden', 2021, 57, 'ac,', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt', '2022-02-21 11:12:12', 'lobortis'),
('38027', 'eget, dictum', 'Suspendisse Sed Dolor Incorporated', 'Caldwell Nelson', 2020, 34, 'Morbi', 'ipsum. Suspendisse non leo.', '2020-10-26 08:11:12', 'quam.'),
('38544', 'Curae; Donec', 'Aliquet Proin LLP', 'Logan Bolton', 2021, 61, 'orci', 'leo. Cras vehicula', '2021-01-04 23:57:35', 'ac, fermentum vel,'),
('38778', 'Quisque varius.', 'Est Corporation', 'Flynn Walls', 2021, 61, 'Nullam', 'metus. Aenean sed pede nec ante', '2022-05-12 09:38:23', 'elit. Etiam'),
('39168', 'sollicitudin adipiscing', 'Ridiculus Mus Aenean Associates', 'Patrick Pace', 2021, 20, 'id,', 'augue, eu tempor erat neque non quam. Pellentesque habitant morbi', '2020-11-17 07:59:25', 'Phasellus'),
('39565', 'risus odio,', 'Odio Etiam Ligula Industries', 'Caleb Garrison', 2022, 13, 'hymenaeos.', 'erat vitae risus.', '2022-07-11 00:30:07', 'sem elit, pharetra'),
('40202', 'placerat, orci', 'Blandit Congue In LLP', 'Hamilton Dyer', 2021, 66, 'vulputate', 'nibh. Quisque nonummy ipsum non arcu.', '2022-05-21 17:44:44', 'in faucibus'),
('40343', 'ante, iaculis', 'Mauris Consulting', 'Eric Garza', 2021, 30, 'consequat', 'Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,', '2021-02-08 14:17:51', 'Proin sed turpis'),
('41420', 'at, libero.', 'Vulputate Ltd', 'Cooper Bryan', 2022, 59, 'Sed', 'vitae nibh. Donec est', '2022-04-24 10:48:11', 'id,'),
('42704', 'nibh. Donec', 'Vestibulum Neque Foundation', 'Lucius Lambert', 2021, 81, 'fringilla', 'dictum sapien. Aenean massa. Integer', '2020-08-13 13:20:48', 'mi'),
('43424', 'lacus. Mauris', 'Eget Dictum Consulting', 'Brandon Willis', 2020, 77, 'accumsan', 'scelerisque mollis. Phasellus libero mauris,', '2022-05-17 15:38:33', 'non magna. Nam'),
('43452', 'diam. Pellentesque', 'Gravida Sit Amet LLC', 'Honorato Petersen', 2022, 11, 'diam', 'cursus. Integer mollis.', '2020-11-03 19:09:14', 'ac mattis ornare,'),
('43490', 'ut, nulla.', 'Neque Sed Sem Institute', 'Wing Rivera', 2020, 29, 'dictum', 'sociosqu', '2021-11-24 13:39:39', 'dictum. Phasellus'),
('44151', 'tincidunt orci', 'Fringilla Corporation', 'August Harrington', 2021, 62, 'pede,', 'ut eros non enim commodo hendrerit. Donec porttitor tellus non', '2020-09-09 19:42:32', 'Sed'),
('44941', 'posuere cubilia', 'Donec Institute', 'Kane Mccullough', 2021, 30, 'penatibus', 'amet, consectetuer', '2021-09-12 16:42:49', 'lacus. Cras'),
('45041', 'tellus eu', 'Eu Turpis Nulla Institute', 'Russell King', 2021, 33, 'et', 'ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,', '2020-07-16 12:09:56', 'Phasellus in felis.'),
('45136', 'Quisque fringilla', 'Mauris Nulla Integer Limited', 'Erich Mckenzie', 2022, 83, 'consectetuer', 'non enim commodo hendrerit. Donec porttitor tellus non magna. Nam', '2021-09-27 23:40:25', 'eleifend vitae,'),
('47460', 'dolor. Donec', 'Aenean Sed Foundation', 'Colorado Newton', 2020, 22, 'velit', 'ligula', '2020-12-10 08:02:08', 'lobortis quam'),
('49289', 'parturient montes,', 'Libero Proin Foundation', 'Hakeem Moses', 2022, 54, 'viverra.', 'lorem vitae odio sagittis semper. Nam tempor diam', '2021-05-25 19:33:45', 'vulputate'),
('49642', 'sit amet', 'Massa Institute', 'Daquan Wilkins', 2022, 2, 'Duis', 'dui augue', '2022-05-26 22:34:54', 'aliquam eros'),
('50095', 'Donec nibh.', 'Adipiscing Non Industries', 'Reed Bailey', 2022, 36, 'dui.', 'pede nec', '2021-01-03 23:07:43', 'Cras eu tellus'),
('50126', 'tortor nibh', 'Sagittis Lobortis Mauris PC', 'Sawyer Barlow', 2022, 62, 'Phasellus', 'ac mattis semper, dui lectus rutrum urna, nec luctus', '2022-02-27 15:53:49', 'arcu. Vestibulum ante'),
('50712', 'Fusce feugiat.', 'Tellus PC', 'Brendan Stokes', 2022, 92, 'at', 'senectus et', '2020-08-13 05:06:44', 'consequat nec, mollis'),
('50817', 'porttitor vulputate,', 'Nonummy Ut Institute', 'Edan Bray', 2022, 34, 'ipsum.', 'Sed molestie.', '2022-04-22 17:40:10', 'dignissim magna'),
('51749', 'tempus eu,', 'Amet Associates', 'Wayne Stout', 2021, 13, 'ultricies', 'lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet', '2020-11-04 10:07:55', 'dui, semper'),
('51761', 'id, blandit', 'Leo In Lobortis Corporation', 'Salvador Harvey', 2022, 17, 'id', 'dignissim lacus.', '2022-06-01 06:58:55', 'Phasellus libero mauris,'),
('51792', 'nibh. Phasellus', 'Semper Tellus LLP', 'George Perez', 2021, 41, 'vitae', 'nonummy ultricies ornare,', '2021-10-08 08:58:07', 'erat vel'),
('53039', 'tempus risus.', 'Luctus Consulting', 'Laith Becker', 2021, 82, 'Cras', 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', '2021-04-28 18:08:32', 'et,'),
('53225', 'consectetuer, cursus', 'Maecenas Mi Felis Corp.', 'Benedict Dejesus', 2021, 72, 'diam', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-02-01 12:08:39', 'faucibus'),
('53248', 'Mauris quis', 'Dui Nec LLP', 'Ciaran Shepherd', 2021, 94, 'penatibus', 'nonummy', '2021-12-17 09:51:25', 'enim nec'),
('53772', 'Cum sociis', 'Habitant Morbi Tristique Inc.', 'Duncan Jennings', 2021, 73, 'tristique', 'ligula. Donec luctus aliquet odio. Etiam ligula', '2020-07-26 01:04:01', 'enim. Mauris quis'),
('53884', 'nulla ante,', 'Odio Incorporated', 'Cody Carr', 2021, 86, 'penatibus', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,', '2020-12-28 10:23:00', 'id risus quis'),
('55402', 'ac libero', 'Odio Aliquam LLC', 'Rooney Francis', 2021, 26, 'mauris.', 'enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum,', '2021-10-23 16:51:15', 'tincidunt orci'),
('55589', 'tortor at', 'Magnis Dis Foundation', 'Garrett Dunlap', 2020, 29, 'egestas', 'ut mi. Duis risus odio, auctor vitae, aliquet', '2021-02-16 12:18:05', 'Vivamus nisi.'),
('56795', 'ultrices posuere', 'Ligula Consectetuer PC', 'Abbot Jefferson', 2021, 17, 'sapien.', 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.', '2022-06-25 14:38:27', 'et, euismod'),
('57110', 'natoque penatibus', 'Nec Imperdiet Institute', 'Cody Wood', 2020, 26, 'id,', 'Sed malesuada augue ut', '2022-03-29 21:15:36', 'felis. Nulla tempor'),
('57167', 'nec urna', 'Mi Consulting', 'Marshall Baldwin', 2021, 90, 'placerat,', 'tempor lorem, eget mollis lectus pede et risus. Quisque libero', '2021-06-07 04:11:44', 'enim'),
('57260', 'ornare sagittis', 'A Associates', 'Colorado Thornton', 2022, 70, 'non,', 'purus, accumsan interdum libero', '2020-12-03 05:41:29', 'nascetur ridiculus'),
('58320', 'nec enim.', 'At Corp.', 'Martin Savage', 2020, 28, 'bibendum', 'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec', '2021-10-20 17:03:56', 'accumsan'),
('59332', 'tincidunt nibh.', 'Ut Foundation', 'Davis Harrison', 2020, 50, 'Ut', 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt', '2021-04-10 09:55:30', 'Nam nulla magna,'),
('59514', 'accumsan convallis,', 'Lorem Associates', 'Caleb Hicks', 2021, 24, 'natoque', 'auctor quis,', '2020-11-03 17:40:33', 'sapien.'),
('60060', 'metus facilisis', 'Mollis Phasellus LLP', 'Kenneth Hines', 2020, 11, 'Etiam', 'vel arcu. Curabitur ut odio vel est', '2021-04-25 20:50:47', 'Aenean'),
('60198', 'suscipit, est', 'Convallis Corporation', 'Logan Fitzpatrick', 2022, 29, 'at', 'magna. Suspendisse tristique', '2021-08-25 18:15:39', 'nec tellus.'),
('60427', 'ipsum nunc', 'A Purus Limited', 'Ulric Allison', 2021, 19, 'egestas.', 'Cras', '2020-12-06 23:08:48', 'nunc est, mollis'),
('62095', 'nisi dictum', 'Odio Auctor Consulting', 'Fuller Prince', 2022, 1, 'vitae,', 'Etiam vestibulum massa rutrum magna. Cras convallis', '2021-03-21 22:54:08', 'libero et tristique'),
('63472', 'egestas. Duis', 'Nunc Consulting', 'Jin Wynn', 2020, 26, 'fringilla.', 'vulputate mauris sagittis', '2021-05-04 09:36:09', 'massa. Vestibulum'),
('63933', 'cubilia Curae;', 'Lectus A Associates', 'Garth Morgan', 2020, 52, 'tincidunt', 'Nullam feugiat placerat velit. Quisque', '2021-10-08 03:12:00', 'Vestibulum ante ipsum'),
('64819', 'scelerisque neque.', 'Vel Est Tempor Industries', 'Colin Soto', 2022, 19, 'Aenean', 'Donec tincidunt. Donec vitae erat', '2022-06-02 15:07:59', 'quis'),
('65036', 'ante. Nunc', 'Quam Pellentesque Habitant PC', 'Tanner Glass', 2021, 68, 'sed', 'quis turpis vitae purus gravida', '2022-03-16 15:53:17', 'placerat,'),
('65257', 'mus. Donec', 'Lorem Inc.', 'George Goodman', 2021, 94, 'eros.', 'metus sit amet ante.', '2021-01-02 10:36:43', 'iaculis'),
('65369', 'Suspendisse aliquet', 'Tincidunt Ltd', 'Wallace Vega', 2021, 86, 'scelerisque', 'Mauris', '2020-08-02 05:51:15', 'nec enim.'),
('66529', 'malesuada ut,', 'Fusce Institute', 'Dane Whitley', 2021, 85, 'gravida', 'Sed congue, elit sed consequat auctor, nunc nulla vulputate', '2021-05-03 01:44:51', 'nulla. Cras'),
('67448', 'Fusce diam', 'Luctus Sit PC', 'Ulysses Shannon', 2022, 70, 'rhoncus.', 'arcu. Curabitur ut odio vel est tempor', '2021-07-24 02:15:32', 'sem'),
('67772', 'Nulla facilisis.', 'Interdum Nunc Sollicitudin Ltd', 'Owen Long', 2021, 2, 'viverra.', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,', '2021-10-16 07:29:51', 'nisi'),
('67785', 'mauris erat', 'Nec Urna Limited', 'Rigel Clements', 2022, 29, 'iaculis', 'justo nec ante. Maecenas mi felis, adipiscing fringilla,', '2021-10-24 00:55:33', 'et ultrices'),
('69232', 'Integer sem', 'Est Tempor Corporation', 'Michael Jones', 2022, 78, 'dictum', 'id, mollis nec, cursus a, enim.', '2020-07-28 06:10:58', 'egestas.'),
('69590', 'consectetuer, cursus', 'Lobortis Quis Industries', 'Paul Shepard', 2021, 71, 'eu', 'metus urna convallis erat, eget tincidunt dui augue eu tellus.', '2020-12-18 04:11:46', 'odio'),
('69824', 'placerat. Cras', 'Non Hendrerit Id Incorporated', 'Stone Porter', 2020, 8, 'ante', 'Vivamus rhoncus. Donec est.', '2020-10-16 00:40:19', 'faucibus'),
('69834', 'libero dui', 'Egestas Nunc Sed Institute', 'Dean French', 2021, 62, 'aliquet', 'Aenean euismod', '2020-11-27 18:17:16', 'ornare'),
('69851', 'diam. Pellentesque', 'Ipsum Donec Consulting', 'Clayton Ayala', 2022, 33, 'et,', 'a, facilisis non, bibendum sed, est. Nunc', '2020-09-18 02:35:20', 'auctor quis, tristique'),
('71351', 'ac tellus.', 'A Associates', 'Jerry Montoya', 2021, 46, 'eu', 'eget massa. Suspendisse', '2021-08-18 08:21:36', 'fermentum risus, at'),
('71858', 'odio. Phasellus', 'Lorem Ac Corporation', 'Troy Mills', 2020, 42, 'Aliquam', 'Duis a mi fringilla mi lacinia mattis. Integer eu lacus.', '2022-03-20 08:12:36', 'magnis'),
('73635', 'Fusce diam', 'Nam Nulla Magna Industries', 'Jared Camacho', 2021, 45, 'neque', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis', '2021-08-12 00:37:17', 'dolor sit amet,'),
('73776', 'libero at', 'Phasellus LLP', 'Michael Wilkinson', 2020, 42, 'nec', 'Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue', '2020-08-23 14:55:34', 'sed turpis'),
('74280', 'dis parturient', 'Aliquam Ltd', 'Adrian Wise', 2022, 38, 'eros.', 'nec, mollis vitae, posuere at, velit.', '2021-09-17 03:42:34', 'lectus rutrum'),
('74548', 'ligula elit,', 'Ligula Tortor Industries', 'Wang Jensen', 2022, 74, 'eget', 'Duis volutpat nunc sit amet metus. Aliquam', '2021-01-08 18:57:14', 'mauris ut mi.'),
('75747', 'hymenaeos. Mauris', 'Massa Non Ante Inc.', 'Brock Goff', 2021, 76, 'urna.', 'dictum', '2022-03-16 06:15:02', 'a neque.'),
('75969', 'a, facilisis', 'Aliquet Nec Consulting', 'Hakeem Snider', 2022, 66, 'vel,', 'nec urna et', '2020-07-16 19:49:32', 'fermentum metus. Aenean'),
('76512', 'at lacus.', 'Dapibus Id Blandit LLC', 'Eric Cruz', 2021, 22, 'Nam', 'nec ante blandit viverra. Donec tempus, lorem fringilla', '2021-11-09 03:43:42', 'cubilia'),
('77379', 'ante. Nunc', 'Fermentum Fermentum Company', 'Jackson Ingram', 2021, 54, 'orci,', 'sed sem egestas blandit.', '2022-07-11 20:36:30', 'Mauris ut quam'),
('77405', 'pellentesque. Sed', 'Egestas Associates', 'Asher Mayer', 2022, 21, 'nisi.', 'non, bibendum sed, est. Nunc laoreet lectus quis', '2022-06-06 22:35:39', 'Nulla eu neque'),
('77468', 'ridiculus mus.', 'Curae; Phasellus Company', 'Yoshio Kramer', 2021, 33, 'arcu.', 'neque sed', '2022-05-12 22:10:46', 'placerat,'),
('77604', 'ullamcorper, nisl', 'Ac Foundation', 'Rafael Ball', 2021, 75, 'sed,', 'amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque,', '2021-12-03 19:01:51', 'commodo hendrerit.'),
('81101', 'amet risus.', 'At Sem Molestie Corp.', 'Knox Snow', 2021, 69, 'Vestibulum', 'eu', '2021-03-16 01:21:36', 'Sed'),
('82395', 'fringilla. Donec', 'Laoreet PC', 'Kadeem Chandler', 2021, 29, 'posuere', 'cursus luctus, ipsum', '2021-07-31 19:31:40', 'adipiscing'),
('82601', 'magnis dis', 'Nec Corporation', 'Cooper Boyer', 2020, 14, 'aliquam', 'In nec orci.', '2022-04-03 18:58:16', 'Nam nulla'),
('82630', 'arcu iaculis', 'Eu Ltd', 'Colt Webb', 2020, 79, 'sagittis', 'iaculis odio. Nam interdum enim non nisi. Aenean eget', '2022-01-03 03:06:08', 'vel'),
('82781', 'Aenean egestas', 'Adipiscing Fringilla Porttitor Corp.', 'William West', 2021, 23, 'vulputate,', 'non, dapibus rutrum, justo. Praesent luctus.', '2020-10-22 03:11:25', 'sit'),
('83047', 'a mi', 'Fusce Mi Associates', 'Marshall Villarreal', 2021, 99, 'Donec', 'erat vel pede blandit', '2021-03-13 07:05:47', 'eget odio. Aliquam'),
('83249', 'sapien molestie', 'Luctus Et Ultrices Inc.', 'Michael Suarez', 2022, 19, 'Proin', 'dapibus rutrum, justo. Praesent luctus.', '2022-05-22 21:49:56', 'mauris sit'),
('83370', 'vulputate ullamcorper', 'Non Corp.', 'Lewis Hood', 2021, 4, 'gravida', 'molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', '2022-04-01 16:49:29', 'ipsum'),
('83636', 'amet ante.', 'Enim Non Foundation', 'Allistair Russo', 2022, 54, 'luctus', 'a, arcu. Sed et libero. Proin mi. Aliquam gravida', '2020-10-27 03:33:46', 'dolor dapibus'),
('83943', 'vitae, orci.', 'Consequat Consulting', 'August Alston', 2022, 82, 'justo.', 'sagittis felis. Donec tempor, est ac mattis semper, dui', '2020-12-25 10:38:11', 'pharetra'),
('85849', 'ullamcorper. Duis', 'Adipiscing Fringilla Foundation', 'Upton Levine', 2022, 31, 'nec', 'Fusce mi lorem, vehicula et, rutrum eu,', '2021-06-29 21:46:36', 'vitae odio'),
('85939', 'orci. Ut', 'Posuere Cubilia Curae; LLP', 'Paul Lamb', 2021, 1, 'Quisque', 'in magna. Phasellus dolor elit, pellentesque a, facilisis', '2021-05-13 16:06:19', 'ornare,'),
('86547', 'convallis, ante', 'Velit LLC', 'Hayden Ratliff', 2021, 79, 'vestibulum', 'Quisque porttitor eros', '2021-10-15 00:19:17', 'Class'),
('87356', 'mollis. Phasellus', 'Nonummy Consulting', 'Lane Velez', 2021, 19, 'posuere', 'egestas hendrerit neque. In ornare sagittis felis.', '2021-12-28 17:03:19', 'ornare placerat,'),
('87942', 'neque sed', 'Sem Institute', 'Joseph Adams', 2021, 28, 'dictum', 'ac, feugiat', '2020-10-01 09:38:50', 'Nullam enim.'),
('88518', 'Morbi sit', 'Libero Et Tristique Institute', 'Fuller Mcclain', 2021, 5, 'tincidunt.', 'libero et tristique pellentesque, tellus sem mollis', '2020-12-05 18:20:49', 'Duis at'),
('88561', 'malesuada fames', 'Magnis Institute', 'Aquila Snow', 2022, 100, 'egestas', 'semper rutrum. Fusce dolor quam, elementum at, egestas', '2021-12-14 23:28:36', 'Donec tempor, est'),
('89488', 'mollis. Phasellus', 'Risus Limited', 'Cairo Mueller', 2021, 57, 'neque.', 'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus', '2021-05-12 10:08:21', 'a,'),
('89638', 'convallis est,', 'Blandit Congue In Company', 'Graham Vincent', 2022, 79, 'eu', 'nisl. Quisque fringilla euismod', '2021-07-12 06:35:35', 'Maecenas ornare egestas'),
('89882', 'sodales elit', 'Proin Non Incorporated', 'Lawrence Vaughn', 2021, 81, 'nibh', 'commodo tincidunt nibh. Phasellus nulla.', '2022-07-02 17:49:18', 'Mauris'),
('90308', 'Fusce mi', 'Lectus Quis Massa LLC', 'Murphy Olsen', 2021, 4, 'ac', 'Nullam lobortis quam a felis ullamcorper viverra. Maecenas', '2020-12-12 11:11:25', 'odio.'),
('90452', 'ut, pharetra', 'Magna Lorem Ipsum Ltd', 'Upton Osborne', 2020, 36, 'fringilla.', 'eu enim. Etiam imperdiet dictum magna. Ut', '2020-12-12 14:05:43', 'sem. Pellentesque ut'),
('90882', 'non, hendrerit', 'Diam Sed Diam Ltd', 'Quinn Guerra', 2022, 57, 'natoque', 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', '2020-12-08 22:08:34', 'at auctor ullamcorper,'),
('90994', 'rutrum, justo.', 'Eu LLP', 'Upton Cruz', 2022, 27, 'magna.', 'ut, nulla. Cras eu tellus eu', '2020-12-31 20:13:00', 'odio, auctor'),
('91126', 'fermentum fermentum', 'Elementum Sem Limited', 'Eagan Mccarthy', 2021, 2, 'montes,', 'ridiculus mus.', '2022-03-17 23:42:41', 'mi'),
('91157', 'primis in', 'At Pretium Inc.', 'Stewart Cervantes', 2021, 41, 'vitae,', 'ac libero nec ligula consectetuer rhoncus. Nullam velit dui,', '2020-09-06 03:30:42', 'metus.'),
('91335', 'mauris sit', 'Vivamus LLC', 'Luke Barnett', 2021, 93, 'auctor', 'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet', '2022-05-02 20:37:13', 'nunc,'),
('91533', 'sit amet,', 'Eu Corp.', 'Zeph Rice', 2021, 44, 'malesuada', 'Cum', '2020-12-01 13:24:03', 'fringilla,'),
('92092', 'Duis volutpat', 'Erat Incorporated', 'Blaze Austin', 2020, 34, 'magna.', 'Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie', '2022-03-22 20:56:43', 'fermentum convallis'),
('92704', 'mattis. Integer', 'Cursus LLP', 'Caleb Wolf', 2021, 32, 'a,', 'augue, eu tempor erat neque non quam.', '2021-05-01 20:26:42', 'sed consequat'),
('92844', 'vitae, orci.', 'Vulputate Dui Nec Corporation', 'Marvin Townsend', 2021, 49, 'varius.', 'eleifend,', '2022-05-02 08:47:22', 'Aliquam'),
('92910', 'Maecenas ornare', 'Quisque Fringilla LLP', 'Cadman Ashley', 2022, 45, 'amet', 'Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien', '2020-10-11 08:20:06', 'velit. Cras'),
('93075', 'justo sit', 'Curabitur Consequat Associates', 'Slade Haynes', 2022, 92, 'felis,', 'Nam interdum', '2020-10-10 06:39:27', 'dictum magna. Ut'),
('93680', 'augue, eu', 'Cubilia Curae; Foundation', 'Cadman Melendez', 2020, 44, 'vel', 'Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.', '2022-06-07 19:55:40', 'quis turpis vitae'),
('93802', 'aliquet libero.', 'Dolor Dapibus Gravida Incorporated', 'Bruce Anderson', 2022, 61, 'consectetuer', 'molestie orci', '2020-12-03 04:09:45', 'ornare, libero'),
('94249', 'Aliquam ornare,', 'Ad Litora LLP', 'Lucian Hardin', 2022, 65, 'et', 'Sed diam lorem,', '2021-08-02 07:30:16', 'dui lectus rutrum'),
('94294', 'risus. Nulla', 'Mauris Ipsum Industries', 'Dieter Sanders', 2021, 97, 'egestas,', 'varius. Nam porttitor', '2022-05-16 02:13:09', 'auctor vitae, aliquet'),
('94514', 'cursus non,', 'Odio Tristique Pharetra Associates', 'Walter Gilbert', 2022, 76, 'euismod', 'Duis dignissim tempor', '2022-03-14 17:30:41', 'Phasellus nulla. Integer'),
('94840', 'a odio', 'Sed Company', 'Thane Turner', 2022, 81, 'massa', 'neque non quam. Pellentesque habitant morbi tristique', '2022-05-26 19:54:47', 'gravida nunc sed'),
('95992', 'Donec est.', 'Nunc Mauris Elit Consulting', 'Hamilton Deleon', 2022, 45, 'neque.', 'augue eu tellus. Phasellus elit pede, malesuada vel, venenatis', '2021-08-28 04:05:07', 'dapibus quam'),
('96154', 'cursus. Integer', 'Donec Fringilla Donec Limited', 'Dolan Mcguire', 2021, 40, 'mi', 'auctor odio a purus. Duis elementum, dui quis accumsan', '2022-01-12 06:31:54', 'nascetur'),
('96366', 'diam lorem,', 'Gravida Praesent Eu Corporation', 'Jonah Decker', 2022, 20, 'posuere', 'magna. Suspendisse tristique', '2022-06-13 17:52:52', 'non, vestibulum nec,'),
('96908', 'dolor vitae', 'Quisque Corporation', 'Aladdin Duncan', 2021, 7, 'est.', 'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero', '2021-02-17 03:20:56', 'metus facilisis lorem'),
('98044', 'Quisque ac', 'Tellus Eu Augue Inc.', 'Arsenio Patterson', 2021, 54, 'nisl', 'eu erat semper rutrum. Fusce dolor quam, elementum at,', '2021-08-19 12:32:27', 'augue porttitor'),
('98227', 'Donec porttitor', 'Mattis Consulting', 'Elvis Powell', 2022, 41, 'lacus.', 'lectus sit amet luctus vulputate, nisi sem semper', '2021-06-16 17:29:48', 'dolor'),
('98497', 'scelerisque mollis.', 'Eu Corp.', 'Hyatt Velazquez', 2020, 17, 'vulputate', 'eu eros. Nam consequat dolor vitae dolor. Donec', '2021-06-27 20:12:38', 'orci lacus'),
('99195', 'volutpat ornare,', 'Ante Blandit Associates', 'Carl Weber', 2021, 76, 'torquent', 'molestie tellus. Aenean', '2021-09-11 19:36:31', 'molestie arcu. Sed'),
('99636', 'mauris sapien,', 'Velit Company', 'Wallace Rhodes', 2022, 23, 'et', 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi', '2021-06-07 17:27:51', 'Sed dictum. Proin'),
('99711', 'eget, venenatis', 'Metus Aliquam Erat Associates', 'Jerome Silva', 2021, 24, 'at,', 'arcu. Curabitur ut odio vel est', '2020-10-02 06:07:20', 'in aliquet lobortis,'),
('A1.001.1', 'Pemrograman PHP', 'Tiga Serangkai', 'Anonymous', 2019, 55, 'Komputer', 'Sinopsis', '2021-07-11 14:22:48', ''),
('A1.001.2', 'Aasdasss', 'asdddd', 'asddd', 2019, 55, 'saddd', 'awedadw', '2021-07-16 14:13:43', ''),
('A1.001.3', 'asdddd', 'asddd', 'asddd', 2019, 32, 'asd', 'aaa', '2021-07-16 14:14:27', ''),
('A1.001.4', 'asddd', 'asdddss', 'asddd', 2000, 21, 'asd', 'asd', '2021-07-16 14:14:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `noRegistration_user` varchar(7) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `level_user` varchar(5) NOT NULL,
  `namaLengkap_user` varchar(255) NOT NULL,
  `jenisKelamin_user` char(1) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `noTelepon_user` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`noRegistration_user`, `password_user`, `level_user`, `namaLengkap_user`, `jenisKelamin_user`, `alamat_user`, `noTelepon_user`) VALUES
('0000001', 'admin', 'admin', 'Admin', 'L', 'Jln Popda RT 09 RW 07 Nusukan Banjarsari Surakarta 57135', '082324760750'),
('0000002', 'user', 'user', 'User', 'L', 'Jln Popda RT 09 RW 07 Nusukan Banjarsari Surakarta 57135', '082324760750'),
('0000003', 'sad', 'user', 'Syaharudin Ikhsan Majid', 'L', 'Jln Popda RT 09 RW 07 Nusukan Banjarsari Surakarta 57135', '082324760750'),
('0000004', '1234', 'user', 'resa', 'P', 'solp', '0982718213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`noRegistration_user`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
