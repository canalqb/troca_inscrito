-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.infinityfree.com
-- Tempo de geração: 19/01/2026 às 17:41
-- Versão do servidor: 11.4.9-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `epiz_29784159_yt`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `canais`
--

CREATE TABLE `canais` (
  `id` int(11) NOT NULL,
  `canal_id` text NOT NULL,
  `souinscrito` text NOT NULL,
  `datadeinscricao` text NOT NULL,
  `medesinscrevi` text NOT NULL,
  `datadedesinscricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `canais`
--

INSERT INTO `canais` (`id`, `canal_id`, `souinscrito`, `datadeinscricao`, `medesinscrevi`, `datadedesinscricao`) VALUES
(83, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UCLM-xqFo3GZzFk8m8GvAUGg', '17/08/2022 20:29', '', ''),
(84, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UCYEG4yvbw2SaUkKyvKmjO3Q', '17/08/2022 20:33', '', ''),
(85, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UC-vwKL89WkKZJdZF3yNFLCA', '17/08/2022 20:33', '', ''),
(86, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UCl0NMuQD6WkJLLoqYWqzpqA', '17/08/2022 20:33', '', ''),
(87, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '17/08/2022 20:37', '', ''),
(88, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '17/08/2022 20:39', '', ''),
(89, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCC11mv1VOAJ2ikJDqqgZl-w', '17/08/2022 20:39', '', ''),
(90, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCvggSh17K4F1Z8B0dvg5MYg', '17/08/2022 20:39', '', ''),
(91, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCYEG4yvbw2SaUkKyvKmjO3Q', '18/08/2022 13:28', '', ''),
(92, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCLM-xqFo3GZzFk8m8GvAUGg', '17/08/2022 20:40', '', ''),
(93, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCl0NMuQD6WkJLLoqYWqzpqA', '17/08/2022 20:40', '', ''),
(94, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCl0NMuQD6WkJLLoqYWqzpqA', '18/08/2022 04:16', '', ''),
(95, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '18/08/2022 04:16', '', ''),
(96, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UC-vwKL89WkKZJdZF3yNFLCA', '18/08/2022 04:16', '', ''),
(97, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCvggSh17K4F1Z8B0dvg5MYg', '18/08/2022 04:16', '', ''),
(98, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCLM-xqFo3GZzFk8m8GvAUGg', '18/08/2022 04:16', '', ''),
(99, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCYEG4yvbw2SaUkKyvKmjO3Q', '18/08/2022 04:16', '', ''),
(100, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UCC11mv1VOAJ2ikJDqqgZl-w', '18/08/2022 12:47', '', ''),
(101, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UCRCxEiMqjzDHyn9zeHEZneA', '18/08/2022 12:47', '', ''),
(102, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UCvggSh17K4F1Z8B0dvg5MYg', '18/08/2022 12:49', '', ''),
(103, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UCRCxEiMqjzDHyn9zeHEZneA', '18/08/2022 12:49', '', ''),
(104, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '18/08/2022 12:50', '', ''),
(105, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UCLM-xqFo3GZzFk8m8GvAUGg', '18/08/2022 12:50', '', ''),
(106, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UCC11mv1VOAJ2ikJDqqgZl-w', '18/08/2022 12:51', '', ''),
(107, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UCl0NMuQD6WkJLLoqYWqzpqA', '18/08/2022 12:51', '', ''),
(108, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UC-vwKL89WkKZJdZF3yNFLCA', '18/08/2022 12:51', '', ''),
(109, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UCRCxEiMqjzDHyn9zeHEZneA', '18/08/2022 12:55', '', ''),
(110, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCC11mv1VOAJ2ikJDqqgZl-w', '18/08/2022 13:08', '', ''),
(111, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UC-vwKL89WkKZJdZF3yNFLCA', '18/08/2022 13:08', '', ''),
(112, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCziIl6vMVTB3kaOVGhO-3-g', '18/08/2022 13:11', '', ''),
(113, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCYEG4yvbw2SaUkKyvKmjO3Q', '18/08/2022 13:13', '', ''),
(114, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCRCxEiMqjzDHyn9zeHEZneA', '18/08/2022 13:13', '', ''),
(115, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCLM-xqFo3GZzFk8m8GvAUGg', '18/08/2022 13:13', '', ''),
(116, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCvggSh17K4F1Z8B0dvg5MYg', '18/08/2022 13:13', '', ''),
(117, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UCl0NMuQD6WkJLLoqYWqzpqA', '18/08/2022 13:13', '', ''),
(118, 'UCziIl6vMVTB3kaOVGhO-3-g', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '18/08/2022 13:13', '', ''),
(122, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'UCRCxEiMqjzDHyn9zeHEZneA', '19/08/2022 04:18', '', ''),
(123, 'UC-vwKL89WkKZJdZF3yNFLCA', 'UC8jSsGgWm_yCV-cEUJVNr3w', '02/09/2022 20:05', '', ''),
(124, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'UC8jSsGgWm_yCV-cEUJVNr3w', '03/09/2022 18:28', '', ''),
(125, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UC8jSsGgWm_yCV-cEUJVNr3w', '03/09/2022 18:30', '', ''),
(126, 'UClyURQ-tvoNoVIyboVFfPsw', 'UC-vwKL89WkKZJdZF3yNFLCA', '08/09/2022 19:26', '', ''),
(127, 'UClyURQ-tvoNoVIyboVFfPsw', 'UCC11mv1VOAJ2ikJDqqgZl-w', '08/09/2022 19:28', '', ''),
(128, 'UClyURQ-tvoNoVIyboVFfPsw', 'UC8jSsGgWm_yCV-cEUJVNr3w', '08/09/2022 19:28', '', ''),
(129, 'UClyURQ-tvoNoVIyboVFfPsw', 'UC7Uiu9KYu0JBrfCuD7m2sXg', '08/09/2022 19:29', '', ''),
(130, 'UCvggSh17K4F1Z8B0dvg5MYg', 'UClyURQ-tvoNoVIyboVFfPsw', '19/09/2022 14:25', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chaveapi`
--

CREATE TABLE `chaveapi` (
  `id` int(11) NOT NULL,
  `APY` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `chaveapi`
--

INSERT INTO `chaveapi` (`id`, `APY`, `status`) VALUES
(1, 'AIzaSyCYYbzNF_8fU5XON90QNgRkjtfYFN5v4m8', ''),
(2, 'AIzaSyDBrCx06HCbOclJ5dfVKLeRVNMgQZ514sI', ''),
(3, 'AIzaSyCIM4EzNqi1in22f4Z3Ru3iYvLaY8tc3bo', ''),
(4, 'AIzaSyBjgiyd-kWdQZlH5wUcQy4l6AulN8xbRGE', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `canal_id` text NOT NULL,
  `canal_nome` text NOT NULL,
  `canal_imgP` text NOT NULL,
  `canal_imgM` text NOT NULL,
  `canal_imgG` text NOT NULL,
  `canal_referenciador` text NOT NULL,
  `canal_status` text NOT NULL,
  `canal_inscricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id_login`, `canal_id`, `canal_nome`, `canal_imgP`, `canal_imgM`, `canal_imgG`, `canal_referenciador`, `canal_status`, `canal_inscricao`) VALUES
(25, 'UCl0NMuQD6WkJLLoqYWqzpqA', 'Meu Paninho', 'https://yt3.ggpht.com/ytc/AMLnZu8wx7qItBHoXc4LGzjx98SWFLLT9dydCFvF9F3N=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu8wx7qItBHoXc4LGzjx98SWFLLT9dydCFvF9F3N=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu8wx7qItBHoXc4LGzjx98SWFLLT9dydCFvF9F3N=s800-c-k-c0x00ffffff-no-rj', '', 'S', '06/08/2022 02:55'),
(26, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'Vivi Fachini', 'https://yt3.ggpht.com/ytc/AMLnZu9p1pLimTsNvJvoJWjzp2Qm0O4iMXjteQBOKIQDk98=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu9p1pLimTsNvJvoJWjzp2Qm0O4iMXjteQBOKIQDk98=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu9p1pLimTsNvJvoJWjzp2Qm0O4iMXjteQBOKIQDk98=s800-c-k-c0x00ffffff-no-rj', '', 'S', '06/08/2022 02:56'),
(41, 'UC-vwKL89WkKZJdZF3yNFLCA', 'GotaFlor', 'https://yt3.ggpht.com/jhslBNqvNG7GSQRlYKZTSwjAYmBCcCmCYcc-qEgXl0ZK-M3gER3c-964GGlgBjdV_qjFcbrbmw=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/jhslBNqvNG7GSQRlYKZTSwjAYmBCcCmCYcc-qEgXl0ZK-M3gER3c-964GGlgBjdV_qjFcbrbmw=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/jhslBNqvNG7GSQRlYKZTSwjAYmBCcCmCYcc-qEgXl0ZK-M3gER3c-964GGlgBjdV_qjFcbrbmw=s800-c-k-c0x00ffffff-no-rj', '', 'S', '12/08/2022 01:18'),
(43, 'UCLM-xqFo3GZzFk8m8GvAUGg', 'CAUEZIN MIOR', 'https://yt3.ggpht.com/nO92C8_BC-8Xtnz_si50JWa8jEsNgGv7YjzjshKpnsHA6U5sfYSL3OGadrXHcYd0vpxKD9YcXA=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/nO92C8_BC-8Xtnz_si50JWa8jEsNgGv7YjzjshKpnsHA6U5sfYSL3OGadrXHcYd0vpxKD9YcXA=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/nO92C8_BC-8Xtnz_si50JWa8jEsNgGv7YjzjshKpnsHA6U5sfYSL3OGadrXHcYd0vpxKD9YcXA=s800-c-k-c0x00ffffff-no-rj', '', 'S', '15/08/2022 19:36'),
(44, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'PORTAL JOYCE PLAY', 'https://yt3.ggpht.com/ytc/AMLnZu-jX9yuyFA5fedcXbwyEg1-Hy8PXK_u2UT1JhvsGA=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu-jX9yuyFA5fedcXbwyEg1-Hy8PXK_u2UT1JhvsGA=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu-jX9yuyFA5fedcXbwyEg1-Hy8PXK_u2UT1JhvsGA=s800-c-k-c0x00ffffff-no-rj', '', 'S', '16/08/2022 05:05'),
(45, 'UCRCxEiMqjzDHyn9zeHEZneA', 'rodrigo pereira', 'https://yt3.ggpht.com/ytc/AMLnZu_5QyhEq_XOJKr17nS2vaCOMJZwH0iAsgIdTtaM=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu_5QyhEq_XOJKr17nS2vaCOMJZwH0iAsgIdTtaM=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu_5QyhEq_XOJKr17nS2vaCOMJZwH0iAsgIdTtaM=s800-c-k-c0x00ffffff-no-rj', '', 'S', '18/08/2022 11:52'),
(46, 'UCziIl6vMVTB3kaOVGhO-3-g', 'Soba Musik Só 9dades', 'https://yt3.ggpht.com/ukABPvfTJmK3-752Ldc-gOUQGRuJLVuyrcnln92y_YYZzTHnOXJtjHNk1zSvr8oEhPQwTz-w=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ukABPvfTJmK3-752Ldc-gOUQGRuJLVuyrcnln92y_YYZzTHnOXJtjHNk1zSvr8oEhPQwTz-w=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ukABPvfTJmK3-752Ldc-gOUQGRuJLVuyrcnln92y_YYZzTHnOXJtjHNk1zSvr8oEhPQwTz-w=s800-c-k-c0x00ffffff-no-rj', 'UCC11mv1VOAJ2ikJDqqgZl-w', 'S', '18/08/2022 13:08'),
(47, 'UCjOjA2infiUTiFioFCB9W3Q', 'ItinhuZ', 'https://yt3.ggpht.com/ytc/AMLnZu800R4GFN-Mqnp2yobdNLYk1rz6JD3nK5rjkrAW=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu800R4GFN-Mqnp2yobdNLYk1rz6JD3nK5rjkrAW=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu800R4GFN-Mqnp2yobdNLYk1rz6JD3nK5rjkrAW=s800-c-k-c0x00ffffff-no-rj', '', 'S', '31/08/2022 11:44'),
(48, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'DICASBACANA', 'https://yt3.ggpht.com/VCgQ1CirSgFKO9pZi56iHzRq3OUDIe7PPvRbCmbhxMhAwBYlIh-0_ZjCgzH9wtBn-UCfesU99O0=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/VCgQ1CirSgFKO9pZi56iHzRq3OUDIe7PPvRbCmbhxMhAwBYlIh-0_ZjCgzH9wtBn-UCfesU99O0=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/VCgQ1CirSgFKO9pZi56iHzRq3OUDIe7PPvRbCmbhxMhAwBYlIh-0_ZjCgzH9wtBn-UCfesU99O0=s800-c-k-c0x00ffffff-no-rj', '', 'S', '02/09/2022 19:20'),
(49, 'UCvggSh17K4F1Z8B0dvg5MYg', 'Sub4 2Sub', 'https://yt3.ggpht.com/VCqsm0lrwVSiCG1XDTzry9G0QUNVNlsOeSjgn3uf1vEFVqnyvR5GH4mRVFVdzVbEDlkTJ5ViKw=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/VCqsm0lrwVSiCG1XDTzry9G0QUNVNlsOeSjgn3uf1vEFVqnyvR5GH4mRVFVdzVbEDlkTJ5ViKw=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/VCqsm0lrwVSiCG1XDTzry9G0QUNVNlsOeSjgn3uf1vEFVqnyvR5GH4mRVFVdzVbEDlkTJ5ViKw=s800-c-k-c0x00ffffff-no-rj', '', 'S', '03/09/2022 18:32'),
(51, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'QBmemes', 'https://yt3.ggpht.com/ytc/AMLnZu8kZPyeLQHJw3XqNuMcQR5cJ_ZvOiP5rww45ioy4V39bmIyi5KcD1I1IjY5yW84=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu8kZPyeLQHJw3XqNuMcQR5cJ_ZvOiP5rww45ioy4V39bmIyi5KcD1I1IjY5yW84=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu8kZPyeLQHJw3XqNuMcQR5cJ_ZvOiP5rww45ioy4V39bmIyi5KcD1I1IjY5yW84=s800-c-k-c0x00ffffff-no-rj', '', 'S', '03/09/2022 18:39'),
(52, 'UClyURQ-tvoNoVIyboVFfPsw', 'Andreia Santoos', 'https://yt3.ggpht.com/eJCysIeoOrkntu9Fep6lpVOLryZbpMnw2IeH3dn9EEzwADP4PQhCqM-j0BIflSPi-sFcsdmYVg=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/eJCysIeoOrkntu9Fep6lpVOLryZbpMnw2IeH3dn9EEzwADP4PQhCqM-j0BIflSPi-sFcsdmYVg=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/eJCysIeoOrkntu9Fep6lpVOLryZbpMnw2IeH3dn9EEzwADP4PQhCqM-j0BIflSPi-sFcsdmYVg=s800-c-k-c0x00ffffff-no-rj', '', 'S', '08/09/2022 19:25'),
(53, 'UCvbD4u78MGqniRggdQTSmTg', 'Johnnz!', 'https://yt3.ggpht.com/LHxvOyOCMFhMkZrxFfmf3hH6egH-SmRVpMSjM8p10o1A1m3-Te6VLddjolk5tHx6Ih0qaAS4NA=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/LHxvOyOCMFhMkZrxFfmf3hH6egH-SmRVpMSjM8p10o1A1m3-Te6VLddjolk5tHx6Ih0qaAS4NA=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/LHxvOyOCMFhMkZrxFfmf3hH6egH-SmRVpMSjM8p10o1A1m3-Te6VLddjolk5tHx6Ih0qaAS4NA=s800-c-k-c0x00ffffff-no-rj', '', 'S', '13/09/2022 17:06'),
(54, 'UC_Y1KXCrHKT0rBGl4pHcrjg', 'ED JOGOS EX', 'https://yt3.ggpht.com/FcALV3kQ2eome8uQA-zUsGFWsx2y34lCZTaQ54M9PO2bna6ue56iDgTlseeuEf5wigpGQURPsg=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/FcALV3kQ2eome8uQA-zUsGFWsx2y34lCZTaQ54M9PO2bna6ue56iDgTlseeuEf5wigpGQURPsg=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/FcALV3kQ2eome8uQA-zUsGFWsx2y34lCZTaQ54M9PO2bna6ue56iDgTlseeuEf5wigpGQURPsg=s800-c-k-c0x00ffffff-no-rj', '', 'S', '18/09/2022 13:10'),
(55, 'UC0zgvmDhmj7HDK1Z97GbdoQ', 'CRAFT FF', 'https://yt3.ggpht.com/6of2OhKBh4rIgaBkYRkXNK2QH6ryN2BIu5zUiRYA8q83bFf2K7o3kGysJtzurlfDQmenIo4j=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/6of2OhKBh4rIgaBkYRkXNK2QH6ryN2BIu5zUiRYA8q83bFf2K7o3kGysJtzurlfDQmenIo4j=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/6of2OhKBh4rIgaBkYRkXNK2QH6ryN2BIu5zUiRYA8q83bFf2K7o3kGysJtzurlfDQmenIo4j=s800-c-k-c0x00ffffff-no-rj', '', 'S', '23/11/2022 21:15'),
(56, 'UCasYrc3F9_EVSWW1L0yyU0g', 'Mauricio Silva', 'https://yt3.ggpht.com/ytc/AMLnZu-hfpZo2RiZOa4DuaXgGllgg58N8o5LEnbmb-aTOg=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu-hfpZo2RiZOa4DuaXgGllgg58N8o5LEnbmb-aTOg=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/ytc/AMLnZu-hfpZo2RiZOa4DuaXgGllgg58N8o5LEnbmb-aTOg=s800-c-k-c0x00ffffff-no-rj', '', 'S', '10/12/2022 12:44'),
(57, 'UCm47_YVVgxLUv9791I5xGcw', 'Danilo', 'https://yt3.ggpht.com/nOZSuhKD4m6OJ2e0CvZsBFnQmmtpEr50jv2nOrINCZ8n58oki48gEOHvfh1r8RJgXDi9w-tsWQ=s88-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/nOZSuhKD4m6OJ2e0CvZsBFnQmmtpEr50jv2nOrINCZ8n58oki48gEOHvfh1r8RJgXDi9w-tsWQ=s240-c-k-c0x00ffffff-no-rj', 'https://yt3.ggpht.com/nOZSuhKD4m6OJ2e0CvZsBFnQmmtpEr50jv2nOrINCZ8n58oki48gEOHvfh1r8RJgXDi9w-tsWQ=s800-c-k-c0x00ffffff-no-rj', '', 'S', '21/01/2023 00:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `href` text NOT NULL,
  `target` text NOT NULL,
  `onclick` text NOT NULL,
  `logado` text NOT NULL,
  `indice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `href`, `target`, `onclick`, `logado`, `indice`) VALUES
(1, 'Minhas Inscrições', '', '', '', 'S', '0'),
(2, 'Meus Inscritos', '', '', '', 'S', '0'),
(4, 'Eu sigo', '', '', 'javascript:carregar2(\'./eusigo.php\');', 'S', '1'),
(5, 'Deixei de seguir', '', '', 'javascript:carregar2(\'./naosigo.php\');', 'S', '1'),
(6, 'Está me seguindo', '', '', 'javascript:carregar2(\'./mesegue.php\');', 'S', '2'),
(7, 'Deixou de me seguir', '', '', 'javascript:carregar2(\'./nmesegue.php\');', 'S', '2'),
(8, 'Login', '', '', 'javascript:carregar2(\'./loginX/login.php\');', 'N', 'L'),
(9, 'Logout', '', '', 'javascript:carregar2(\'./loginX/logout.php\');', 'S', 'L'),
(10, 'Ajuda', '', '', 'javascript:carregar2(\'./ajuda/faq1.php\');', 'SN', 'P'),
(12, 'Blog AirdropsQB', 'https://airdropsqb.blogspot.com', 'blank', '', 'SN', 'P'),
(14, 'Poste seus Vídeos', '', '', 'javascript:carregar2(\'./videos/videos.php\');', 'S', 'P'),
(15, 'Meus Pontos', '', '', 'javascript:carregar2(\'./corpo/pontos.php\');', 'S', 'P'),
(16, 'Grupo Telegram', 'https://t.me/+U-MWIszUU4U4YTEx', 'blank', '', 'S', 'P'),
(17, 'Grupo Facebook', 'https://www.facebook.com/groups/1sub4.2sub', 'blank', '', 'S', 'P');

-- --------------------------------------------------------

--
-- Estrutura para tabela `nav`
--

CREATE TABLE `nav` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `link` text NOT NULL,
  `canal` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `nav`
--

INSERT INTO `nav` (`id`, `nome`, `link`, `canal`, `img`) VALUES
(1, 'Binance Inivsta hoje mesmo', 'https://bit.ly/3kbT9DL', 'UCdOA_1KzXHIp3gmVyyYv2sg', 'https://s2.coinmarketcap.com/static/img/exchanges/64x64/270.png'),
(2, 'ZT-Bitcoin', 'https://bit.ly/2UqYBbD', 'UCdOA_1KzXHIp3gmVyyYv2sg', 'https://s2.coinmarketcap.com/static/img/exchanges/64x64/791.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `phase`
--

CREATE TABLE `phase` (
  `ID` int(11) NOT NULL,
  `PALAVRAS` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontosdocanal`
--

CREATE TABLE `pontosdocanal` (
  `id_login` int(11) NOT NULL,
  `canal_id` text NOT NULL,
  `tipoponto` text NOT NULL,
  `vtipoponto` text NOT NULL,
  `canal_inscricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pontosdocanal`
--

INSERT INTO `pontosdocanal` (`id_login`, `canal_id`, `tipoponto`, `vtipoponto`, `canal_inscricao`) VALUES
(31, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PC', '99999999999999999999999999', '15/08/2022 19:03'),
(32, 'UCLM-xqFo3GZzFk8m8GvAUGg', 'PC', '99999999999999999999999999', '15/08/2022 19:36'),
(33, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(34, 'UCt0LXfUIgPAv1NYgQlDdglg', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(39, 'UCl0NMuQD6WkJLLoqYWqzpqA', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(40, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(41, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(42, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PC', '99999999999999999999999999', '16/08/2022 05:05'),
(46, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PI', '2', '17/08/2022 20:36'),
(47, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'RPI', '-1', '17/08/2022 20:36'),
(48, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PD', '-4', '17/08/2022 20:37'),
(49, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'GD', '2', '17/08/2022 20:37'),
(50, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PD', '2', '17/08/2022 20:37'),
(51, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'RPI', '-1', '17/08/2022 20:37'),
(52, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PI', '2', '17/08/2022 20:39'),
(53, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'RPI', '-1', '17/08/2022 20:39'),
(54, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PI', '2', '17/08/2022 20:40'),
(55, 'UCLM-xqFo3GZzFk8m8GvAUGg', 'RPI', '-1', '17/08/2022 20:40'),
(56, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PI', '2', '17/08/2022 20:40'),
(57, 'UCl0NMuQD6WkJLLoqYWqzpqA', 'RPI', '-1', '17/08/2022 20:40'),
(58, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PD', '-4', '17/08/2022 20:41'),
(59, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'GD', '2', '17/08/2022 20:41'),
(60, 'UCRCxEiMqjzDHyn9zeHEZneA', 'PC', '99999999999999999999999999', '18/08/2022 11:52'),
(61, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PI', '2', '18/08/2022 12:47'),
(62, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'RPI', '-1', '18/08/2022 12:47'),
(63, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PI', '2', '18/08/2022 12:47'),
(64, 'UCRCxEiMqjzDHyn9zeHEZneA', 'RPI', '-1', '18/08/2022 12:47'),
(65, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:49'),
(66, 'UCRCxEiMqjzDHyn9zeHEZneA', 'RPI', '-1', '18/08/2022 12:49'),
(67, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:50'),
(68, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'RPI', '-1', '18/08/2022 12:50'),
(69, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:50'),
(70, 'UCLM-xqFo3GZzFk8m8GvAUGg', 'RPI', '-1', '18/08/2022 12:50'),
(71, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:51'),
(72, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'RPI', '-1', '18/08/2022 12:51'),
(73, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:51'),
(74, 'UCl0NMuQD6WkJLLoqYWqzpqA', 'RPI', '-1', '18/08/2022 12:51'),
(75, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '18/08/2022 12:51'),
(76, 'UC-vwKL89WkKZJdZF3yNFLCA', 'RPI', '-1', '18/08/2022 12:51'),
(77, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PI', '2', '18/08/2022 12:55'),
(78, 'UCRCxEiMqjzDHyn9zeHEZneA', 'RPI', '-1', '18/08/2022 12:55'),
(79, 'UCziIl6vMVTB3kaOVGhO-3-g', 'PC', '102', '18/08/2022 13:08'),
(80, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'PR', '10', '18/08/2022 13:08'),
(81, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PD', '-4', '18/08/2022 13:23'),
(82, 'UCziIl6vMVTB3kaOVGhO-3-g', 'GD', '2', '18/08/2022 13:23'),
(83, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PD', '2', '18/08/2022 13:28'),
(84, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'RPI', '-1', '18/08/2022 13:28'),
(85, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PD', '-4', '18/08/2022 13:29'),
(86, 'UCziIl6vMVTB3kaOVGhO-3-g', 'GD', '2', '18/08/2022 13:29'),
(87, 'UCjOjA2infiUTiFioFCB9W3Q', 'PC', '102', '31/08/2022 11:44'),
(88, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'PC', '102', '02/09/2022 19:20'),
(89, 'UC-vwKL89WkKZJdZF3yNFLCA', 'PI', '2', '02/09/2022 20:05'),
(90, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'RPI', '-1', '02/09/2022 20:05'),
(91, 'UCYEG4yvbw2SaUkKyvKmjO3Q', 'PI', '2', '03/09/2022 18:28'),
(92, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'RPI', '-1', '03/09/2022 18:28'),
(93, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PI', '2', '03/09/2022 18:30'),
(94, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'RPI', '-1', '03/09/2022 18:30'),
(95, 'UClyURQ-tvoNoVIyboVFfPsw', 'PC', '100', '08/09/2022 19:25'),
(96, 'UClyURQ-tvoNoVIyboVFfPsw', 'PI', '2', '08/09/2022 19:26'),
(97, 'UC-vwKL89WkKZJdZF3yNFLCA', 'RPI', '-1', '08/09/2022 19:26'),
(98, 'UClyURQ-tvoNoVIyboVFfPsw', 'PI', '2', '08/09/2022 19:28'),
(99, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'RPI', '-1', '08/09/2022 19:28'),
(100, 'UClyURQ-tvoNoVIyboVFfPsw', 'PI', '2', '08/09/2022 19:28'),
(101, 'UC8jSsGgWm_yCV-cEUJVNr3w', 'RPI', '-1', '08/09/2022 19:28'),
(102, 'UClyURQ-tvoNoVIyboVFfPsw', 'PI', '2', '08/09/2022 19:29'),
(103, 'UC7Uiu9KYu0JBrfCuD7m2sXg', 'RPI', '-1', '08/09/2022 19:29'),
(104, 'UCvbD4u78MGqniRggdQTSmTg', 'PC', '100', '13/09/2022 17:06'),
(105, 'UC_Y1KXCrHKT0rBGl4pHcrjg', 'PC', '100', '18/09/2022 13:10'),
(106, 'UCvggSh17K4F1Z8B0dvg5MYg', 'PI', '2', '19/09/2022 14:25'),
(107, 'UClyURQ-tvoNoVIyboVFfPsw', 'RPI', '-1', '19/09/2022 14:25'),
(108, 'UC0zgvmDhmj7HDK1Z97GbdoQ', 'PC', '100', '23/11/2022 21:15'),
(109, 'UCasYrc3F9_EVSWW1L0yyU0g', 'PC', '100', '10/12/2022 12:44'),
(110, 'UCm47_YVVgxLUv9791I5xGcw', 'PC', '100', '21/01/2023 00:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiposdepontos`
--

CREATE TABLE `tiposdepontos` (
  `id_ponto` int(11) NOT NULL,
  `Nome` text NOT NULL,
  `Sigla` text NOT NULL,
  `Valor` text NOT NULL,
  `Data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tiposdepontos`
--

INSERT INTO `tiposdepontos` (`id_ponto`, `Nome`, `Sigla`, `Valor`, `Data`) VALUES
(1, 'Cadastro', 'PC', '102', 0),
(2, 'Inscrições', 'PI', '2', 0),
(3, 'Desinscrever', 'PD', '-4', 0),
(4, 'Referenciar', 'PR', '10', 0),
(5, 'Desinscritos', 'GD', '2', 0),
(6, 'Pontos Pagos', 'PP', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `videoscanal`
--

CREATE TABLE `videoscanal` (
  `id` int(11) NOT NULL,
  `canal_id` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `videoscanal`
--

INSERT INTO `videoscanal` (`id`, `canal_id`, `link`) VALUES
(1, 'UCvggSh17K4F1Z8B0dvg5MYg', '3uIXq44IyGA'),
(2, 'UCC11mv1VOAJ2ikJDqqgZl-w', 'sLrcUHkha8A');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `canais`
--
ALTER TABLE `canais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chaveapi`
--
ALTER TABLE `chaveapi`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Índices de tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `pontosdocanal`
--
ALTER TABLE `pontosdocanal`
  ADD PRIMARY KEY (`id_login`);

--
-- Índices de tabela `tiposdepontos`
--
ALTER TABLE `tiposdepontos`
  ADD PRIMARY KEY (`id_ponto`);

--
-- Índices de tabela `videoscanal`
--
ALTER TABLE `videoscanal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `canais`
--
ALTER TABLE `canais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de tabela `chaveapi`
--
ALTER TABLE `chaveapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `phase`
--
ALTER TABLE `phase`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pontosdocanal`
--
ALTER TABLE `pontosdocanal`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de tabela `tiposdepontos`
--
ALTER TABLE `tiposdepontos`
  MODIFY `id_ponto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `videoscanal`
--
ALTER TABLE `videoscanal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
