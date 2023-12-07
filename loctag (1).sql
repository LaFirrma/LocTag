-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/11/2023 às 00:49
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loctag`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(40) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `datanasc` varchar(20) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `genero` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `datanasc`, `telefone`, `email`, `estado`, `cidade`, `genero`) VALUES
('472.289.662-36', 'Ana Maria Gomes', '1970-12-08', '(11) 991233322', 'anagomes23@gmail.com', 'SP', 'Campinas', 'F'),
('167.479.688-91', 'Paulo José Soares', '1984-11-10', '(21) 991223456', 'paulojosesr@gmail.com', 'RJ', 'Buzios', 'M'),
('950.354.167-04', 'Jaqueline Fonseca', '1968-05-20', '(27) 994101234', 'fonsecajaqueline@gmail.com', 'ES', 'Vitoria', 'M'),
('502.611.499-70', 'Antônio Carlos Sobrinho', '2000-09-11', '(11) 999101234', 'carlossobrinhoant@gmail.com', 'SP', 'Louvera', 'M'),
('818.486.103-60', 'Leonardo de Freitas', '1970-08-09', '(31) 98791-1713', 'freitasleo@gmail.com', 'MG', 'Belo Horizonte', 'M'),
('316.326.525-10', 'Maria Antônia Rodrigues', '1974-08-07', '(27) 991235567', 'antoniamariard@gmail.com', 'ES', 'Vila Velha', 'F'),
('404.612.902-60', 'Roberta de Sá', '2010-10-09', '(21) 99215-7646', 'saroberta17@gmail.com', 'RJ', 'Cabo Frio', 'F'),
('829.015.534-43', 'Pedro de Oliveira', '1950-09-08', '(21) 97924-5172', 'oliveira24@gmail.com', 'RJ', 'Arraial do Cabo', 'M'),
('514.257.555-50', 'Marcelo Nogueira', '1968-03-28', '(31) 99297-8242', 'marcelongr@gmail.com', 'MG', 'Itau', 'M'),
('834.363.325-34', 'Paulo Albuquerque', '1981-02-25', '(11) 99440-5185', 'albuquerquepaulo@gmail.com', 'SP', 'Sao Paulo', 'M'),
('139.217.039-72', 'Paula de Castro Almeida', '1998-02-06', '(71) 97122-8736', 'paulacastroalmeida@gmail.com', 'BH', 'Salvador', 'F');

-- --------------------------------------------------------

--
-- Estrutura para tabela `loc`
--

CREATE TABLE `loc` (
  `coordenada` varchar(50) NOT NULL,
  `cep` varchar(30) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `rua` varchar(40) DEFAULT NULL,
  `numero` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `loc`
--

INSERT INTO `loc` (`coordenada`, `cep`, `estado`, `cidade`, `bairro`, `rua`, `numero`) VALUES
('-69.945459378399252', '13024-001', 'São Paulo', 'Campinas', 'Cambui', 'Av Cel Silva Telles', 47),
('-69.953884865344310', '13100-200', 'São Paulo', 'Campinas', 'Jardim Guarani', 'Av Imperatriz Dona Teresa Cristina', 11),
('-69.934631582114758', '13024-045', 'São Paulo', 'Campinas', 'Cambui', 'Av Orosimbo Maia', 2600),
('-70.207045685318402', '01234-010', 'São Paulo', 'São Paulo', 'Pacaembu', 'Praça Charles Miller', 0),
('-63.880421982599138', '300110', 'Minas Gerais', 'Belo Horizonte', 'Lourdes', 'Av do contorno', 7315),
('-66.145914337642444', '22021-001', 'Rio de Janeiro', 'Rio de Janeiro', 'Copacabana', 'Av Atlantica', 1702),
('-70.11057359893282', '13299-602', 'São Paulo', 'Itupeva', 'Jardim Alegre', 'Estr Serra Azul', 1000),
('-70.205833797700918', '05001-200', 'São Paulo', 'São Paulo', 'Agua Branca', 'Av Francisco Matarazzo', 200),
('-69.91957889067515', '13092-902', 'São Paulo', 'Campinas', 'Vila Brandina', 'Av Iguatemi', 777),
('-70.20616240319894', '01310-200', 'São Paulo', 'São Paulo', 'Bela Vista', 'Av Paulista', 1578),
('-55.51203301546017', '45810-000', 'Bahia', 'Porto Seguro', 'Centro', 'Travessa Augusto Borges', 52);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
