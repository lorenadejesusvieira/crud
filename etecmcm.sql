-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Ago-2019 às 15:15
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etecmcm`
--
CREATE DATABASE IF NOT EXISTS `etecmcm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etecmcm`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `rm` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`rm`, `nome`, `idade`, `email`, `telefone`, `cidade`) VALUES
(1, 'LORENA', 15, 'loreninhamega12@gmail.com', '952043680', 'Mauá'),
(2, 'Olívia', 16, 'oliviasamann@gmail.com', '928273452', 'Ribeirão Pires'),
(3, 'Millena', 17, 'millena@gmail.com', '945830912', 'Santo André'),
(4, 'Maria Eduarda', 18, 'dudinha@gmail.com', '908672346', 'Rio Grande da Serra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `cod` int(11) NOT NULL,
  `curso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`cod`, `curso`) VALUES
(1, 'INFORMÁTICA PARA INTERNET'),
(2, 'ADMINISTRAÇÃO'),
(3, 'CONTABILIDADE'),
(4, 'QUÍMICA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `matricula` int(11) NOT NULL,
  `datamat` date NOT NULL,
  `rm_aluno` int(11) NOT NULL,
  `cod_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`matricula`, `datamat`, `rm_aluno`, `cod_curso`) VALUES
(1, '2019-08-05', 1, 1),
(2, '2019-08-06', 2, 2),
(3, '2019-08-07', 3, 3),
(4, '2019-08-08', 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`rm`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `rm_aluno` (`rm_aluno`,`cod_curso`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `rm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`rm_aluno`) REFERENCES `alunos` (`rm`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
