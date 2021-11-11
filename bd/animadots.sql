-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Nov-2021 às 01:11
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `animadots`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adocao`
--

CREATE TABLE `adocao` (
  `id_adocao` int(4) NOT NULL,
  `data_criacao_adocao` date NOT NULL,
  `data_modificacao_adocao` date NOT NULL,
  `status_adocao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animalId_animal` int(4) NOT NULL,
  `internautaId_internauta` int(4) NOT NULL,
  `funcionarioId_funcionario` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(4) NOT NULL,
  `nome_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raca_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade_animal` int(2) NOT NULL,
  `vacinado_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `castrado_animal` bit(2) NOT NULL,
  `vermifugado_animal` bit(2) NOT NULL,
  `especie_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porte_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deficiencia_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adotado_animal` bit(2) NOT NULL,
  `notas_animal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(3) NOT NULL,
  `nome_funcionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg_funcionario` int(9) NOT NULL,
  `cpf_funcionario` int(11) NOT NULL,
  `telefone_funcionario` int(11) NOT NULL,
  `login_funcionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha_funcionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_funcionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `internauta`
--

CREATE TABLE `internauta` (
  `id_internauta` int(4) NOT NULL,
  `nome_internauta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg_internauta` int(9) NOT NULL,
  `cpf_internauta` int(11) NOT NULL,
  `telefone_internauta` int(11) NOT NULL,
  `email_internauta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_internauta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residencia_internauta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferenciaAnimal_internauta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
