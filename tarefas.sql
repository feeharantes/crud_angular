-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2016 at 07:37 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `tarefa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tarefa`;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tarefa` (
  `tarefa_id` int(255) NOT NULL AUTO_INCREMENT,
  `tarefa_nome` varchar(255) NOT NULL,
  PRIMARY KEY (`tarefa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `tarefa` (`tarefa_id`, `tarefa_nome`) VALUES
(1, 'Varrer Casa'),
(2, 'Arrumar Cozinha'),
(3, 'Dobrar Coberta'),
(4, 'Pendurar Toalha'),
(5, 'Abrir Janela');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
