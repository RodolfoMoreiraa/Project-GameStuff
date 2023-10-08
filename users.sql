-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jun-2023 às 08:59
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'rodrigo123', '$2y$10$uC4ZYPE.mJmkJNhYloZG1OpiU0RMH3QE9ku8WWz2VD51dwmWgRDaW', 'user'),
(2, 'tiago', '$2y$10$iu0ywN5HG8qe05AP4hzD.OdrW8uqjr1MPkm3f0LiVYu9juFd7hfKS', 'user'),
(3, 'Candeias', '$2y$10$LS2tERSx91vXUz9DlG/ImumEVejByr8J1aTgbCDopF42POT82p3oi', 'user'),
(4, 'john doe', '$2y$10$SRg6sqKD2FGNedqnRlC/5ufg3ccnB9ABU00XILsB5a5qvSDbtm51O', 'user'),
(5, 'mac', '$2y$10$9XThVWIQEMtllaMsQnl7OO.GepqZgfx7N6oGsyyF1MYKfdJn6otDi', 'user'),
(6, 'mefwef', '$2y$10$Z6nUZnm70pGlJEu06zA5U.w1MnlTDvEisRVlA3pEFKQnyCLT562nm', 'user'),
(7, 'ruda', 'ruda123abc', 'admin'),
(8, 'candeias', 'candeias123abc', 'user'),
(9, 'joaopaulo', '$2y$10$st37LAm/mvgTB.gm.OtRkeMF9GRHX32I2MwkAO8de40ORDNRkr8r6', 'user'),
(10, 'ze', '$2y$10$4s7d0m/iJX1u2Q7bg7g3mO2K75XaUDpkPUMHI8DaA/Y94gDecvgaS', 'user'),
(11, 'candeias1234', '$2y$10$sfElzNk0pKDGkx4EvcQO8Okunf1S8Ee9VKMTBkGTSBtmbR/Rer4Lm', 'user'),
(12, 'tomas', '$2y$10$hbBjxnob0Op1JvrSwtpCgOUTiQOD066pQQmMC6v822SyImR4nQAzu', 'user');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
