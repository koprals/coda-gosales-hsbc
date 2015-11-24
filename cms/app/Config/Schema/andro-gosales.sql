-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2015 pada 08.22
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `andro-gosales`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `fullname`, `password`, `status`, `created`, `modified`) VALUES
(1, 'admins', 'Murdianto', '06bac9a5c873bb82d43a13dda7c83380b74d851f', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `sort` int(2) DEFAULT NULL,
  `superOnly` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `url`, `sort`, `superOnly`, `status`) VALUES
(1, 'Dashboard', 'Home/Index', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_submenus`
--

DROP TABLE IF EXISTS `cms_submenus`;
CREATE TABLE IF NOT EXISTS `cms_submenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_menu_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL DEFAULT 'djarum super mild',
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `site_domain` varchar(255) NOT NULL DEFAULT 'coda-technology.dev',
  `web_url` varchar(255) NOT NULL DEFAULT 'http://webmld.coda-technology.dev/',
  `wap_url` varchar(255) NOT NULL DEFAULT 'http://mld.coda-technology.dev/',
  `cms_url` varchar(255) NOT NULL,
  `path_content` varchar(255) NOT NULL DEFAULT 'D:/xampp/htdocs/mld-web/contents/',
  `path_webroot` varchar(255) NOT NULL,
  `facebook_app_id` varchar(255) NOT NULL,
  `facebook_app_secret` varchar(255) NOT NULL,
  `bucket_name` varchar(255) DEFAULT NULL,
  `aws_host` varchar(255) DEFAULT NULL,
  `aws_host_url` varchar(255) DEFAULT NULL,
  `aws_access_key` varchar(255) DEFAULT NULL,
  `aws_secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `site_description`, `site_keywords`, `site_domain`, `web_url`, `wap_url`, `cms_url`, `path_content`, `path_webroot`, `facebook_app_id`, `facebook_app_secret`, `bucket_name`, `aws_host`, `aws_host_url`, `aws_access_key`, `aws_secret_key`) VALUES
(1, 'SPK Kenaikan Jabatan', 'SPK Kenaikan Jabatan', 'Hello World', 'SPK', 'localhost', 'http://localhost/coda-gosales-hsbc/cms/', 'http://localhost/coda-gosales-hsbc/cms/', 'http://localhost/coda-gosales-hsbc/cms/', 'http://localhost/coda-gosales-hsbc/app/webroot/contents/', '', '', '', NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
