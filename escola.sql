-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Dez-2020 Ã s 15:17
-- VersÃ£o do servidor: 10.1.13-AlexandreDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofuncio`
--

CREATE TABLE `cargofuncio` (
  `codfuncionario` int(11) NOT NULL,
  `codcargo` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargofuncio`
--

INSERT INTO `cargofuncio` (`codfuncionario`, `codcargo`, `dataentrada`, `datasaida`) VALUES
(1, 1, '2011-03-03', '2015-05-04'),
(1, 4, '2009-06-11', '2016-07-12'),
(1, 6, '2012-09-30', '0000-00-00'),
(4, 2, '2014-11-08', '0000-00-00'),
(4, 1, '2011-10-09', '0000-00-00'),
(4, 2, '2017-04-09', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `codcargo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`codcargo`, `nome`) VALUES
(1, 'Professor'),
(2, 'Coordenador de informatica'),
(3, 'Coordenador de rh'),
(4, 'Coordenador de ensino medio'),
(5, 'Coordenador de biblioteca'),
(6, 'Coordenador de pedagogico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncionario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncionario`, `nome`, `data`) VALUES
(1, 'Amanda', '2010-03-01'),
(2, 'Carlos', '2011-02-02'),
(3, 'Agda', '2012-04-03'),
(4, 'Cintia', '2013-07-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargofuncio`
--
ALTER TABLE `cargofuncio`
  ADD KEY `codfuncionario` (`codfuncionario`),
  ADD KEY `codcargo` (`codcargo`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`codcargo`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncionario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `codcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofuncio`
  ADD CONSTRAINT `cargofuncio_ibfk_1` FOREIGN KEY (`codfuncionario`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofuncio_ibfk_2` FOREIGN KEY (`codcargo`) REFERENCES `cargos` (`codcargo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

