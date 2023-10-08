-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jun-2023 às 22:45
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `php_shopping_cart`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `imagens_jogos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `nome`, `preco`, `descricao`, `imagens_jogos`) VALUES
(1, 'Ratchet & Clank', 12.99, 'PS4', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensRatchet.png\\\"'),
(2, 'The Last of Us: Part 1', 9.99, 'PS4', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensTheLast.png\\\"'),
(3, 'Marvels Spider-Man', 26.84, 'PS4', '\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensSpiderMan.png\\\"'),
(4, 'Terraria', 46.77, 'Nintendo Switch', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensTerraria.png\\\"'),
(5, 'The Legend of Zelda: Tears of the Kingdom', 59.99, 'Nintendo Switch', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagenszelda.png\\\"'),
(6, 'Shadow of the Colossus', 29.99, 'PS4', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensShadow.png\\\"'),
(7, 'Assassins Creed Valhalla', 24.99, 'PS5', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensAC.jpg\\\"'),
(8, 'The Rise of Tomb Raider', 10.00, 'Xbox One', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensTombRaider.png\\\"'),
(9, 'Detroit Become Human', 29.99, 'PS4', '\\\"C:UsersGuilherme CandeiasDesktopProjeto GameStuffimagensdetroit.png\\\"');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
