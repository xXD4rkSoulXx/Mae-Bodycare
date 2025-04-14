-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Abr-2025 às 16:33
-- Versão do servidor: 8.2.0
-- versão do PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mae_bodycare`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `phoneNumber` int NOT NULL,
  `mensage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contacts`
--

INSERT INTO `contacts` (`idcontact`, `name`, `email`, `phoneNumber`, `mensage`) VALUES
(1, 'teste', 'teste@hotmail.com', 999999999, 'teste'),
(2, 'teste2', 'teste2@hotmail.com', 999999998, 'teste2'),
(3, 'teste3', 'teste3@hotmail.com', 999999997, 'teste3'),
(4, 'test4', 'tes%te@hotmail', 999999996, 'teste4'),
(5, 'test4', 'tes%te@hotmail', 999999996, 'teste4'),
(6, 'teste5', 'test/e@hotmail', 999999995, 'teste5'),
(7, 'teste5', 'test/e@hotmail', 999999995, 'teste5'),
(8, 'teste6', 'tes/te@hotmail', 999999994, 'teste'),
(9, 'teste7', 'test/e@hotmail', 999999993, 'teste7'),
(10, 'teste7', 'teste/7@e', 999999299, 'teste7'),
(11, 'teste7', 'teste/7@e', 999999299, 'teste7'),
(12, 'teste8', 'tes_te@hot-mail.cd', 943827372, 'teste8'),
(13, 'teste8', 'tes_te@hot-mail.cd', 943827372, 'teste8'),
(14, 'teste9', 'teste9@gmail.com', 951231231, 'teste9'),
(15, 'teste10', 'teste10@hotmail.com', 921231234, 'teste10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
