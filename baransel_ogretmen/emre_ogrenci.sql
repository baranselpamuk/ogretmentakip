SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `baranselpamuk12`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolum`
--

CREATE TABLE IF NOT EXISTS `bolum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `bolum`
--

INSERT INTO `bolum` (`id`, `adi`) VALUES
(3, 'Software Engineering'),
(2, 'Computer Engineering');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE IF NOT EXISTS `dersler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hoca_id` int(11) NOT NULL,
  `kredi` int(11) NOT NULL,
  `vize_yuz` int(11) NOT NULL,
  `final_yuz` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`id`, `kodu`, `isim`, `hoca_id`, `kredi`, `vize_yuz`, `final_yuz`) VALUES
(11, 'dede12', 'dsd', 2, 3, 50, 50),
(10, 'math101', 'cal 1', 2, 3, 40, 60),
(9, 'SEng102', 'Software bilmemne', 2, 4, 40, 60),
(12, 'de222', 'sdsd', 2, 2, 30, 70),
(13, 'ee34', 'eee', 2, 4, 50, 50),
(14, 'ddd', 'edede', 2, 4, 50, 50);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hoca`
--

CREATE TABLE IF NOT EXISTS `hoca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `soyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `hoca`
--

INSERT INTO `hoca` (`id`, `adi`, `soyadi`, `sifre`, `kadi`) VALUES
(1, 'Behnam', 'Rahnama', '123', 'behnam'),
(2, 'Ferhun', 'Yorgancıoğlu', 'deneme', 'ferhun');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE IF NOT EXISTS `ogrenci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_no` int(11) NOT NULL,
  `bolum` int(11) NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `telnumara` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `secme_ders_Adeti` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`id`, `isim`, `soyad`, `ogrenci_no`, `bolum`, `adres`, `telnumara`, `sifre`, `secme_ders_Adeti`) VALUES
(1, 'emre', 'uzun', 115044, 3, 'Kıbrıs', '000000000000', 'deneme', 6),
(2, 'ahmet', 'mehmet', 115000, 2, 'adresi yok', '99999999999', '12345', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci_dersler`
--

CREATE TABLE IF NOT EXISTS `ogrenci_dersler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kod_id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  `vize` int(11) NOT NULL,
  `final` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Tablo döküm verisi `ogrenci_dersler`
--

INSERT INTO `ogrenci_dersler` (`id`, `kod_id`, `ogrenci_id`, `vize`, `final`) VALUES
(58, 13, 1, 0, 0),
(57, 12, 1, 0, 0),
(56, 10, 1, 0, 0),
(55, 14, 1, 0, 0),
(54, 9, 1, 50, 70);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
