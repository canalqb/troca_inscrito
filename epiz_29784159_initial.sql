-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.infinityfree.com
-- Tempo de geração: 19/01/2026 às 17:42
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
-- Banco de dados: `epiz_29784159_initial`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_airdrops_comentarios`
--

CREATE TABLE `bd_airdrops_comentarios` (
  `come_id` int(11) NOT NULL,
  `come_texto` text NOT NULL,
  `come_id_aird` text NOT NULL,
  `come_inserido` mediumtext NOT NULL,
  `come_autor` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_airdrops_comentarios`
--

INSERT INTO `bd_airdrops_comentarios` (`come_id`, `come_texto`, `come_id_aird`, `come_inserido`, `come_autor`) VALUES
(1, 'kkkkk', '1', '2021-09-25 20:52:53', '1'),
(9, 'LLLLLL\n', '1', '2021-09-27 14:13:18', '1'),
(15, 'kkkkk', '1', '2021-10-03 10:52:08', '1'),
(14, 'kkkkk', '1', '2021-10-03 10:48:47', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_batepapo`
--

CREATE TABLE `bd_batepapo` (
  `bate_id` int(11) NOT NULL,
  `bate_de` text NOT NULL,
  `bate_para` text NOT NULL,
  `bate_texto` text NOT NULL,
  `bate_enviado` text NOT NULL,
  `bate_depara` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_exchange`
--

CREATE TABLE `bd_exchange` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_login`
--

CREATE TABLE `bd_login` (
  `login_id` int(11) NOT NULL,
  `login_nome` text NOT NULL,
  `login_email` text NOT NULL,
  `login_senha` text NOT NULL,
  `login_nivel` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_login`
--

INSERT INTO `bd_login` (`login_id`, `login_nome`, `login_email`, `login_senha`, `login_nivel`) VALUES
(1, 'rodrigo', 'q', '1', '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_login_profile_dados`
--

CREATE TABLE `bd_login_profile_dados` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `sobrenome` text NOT NULL,
  `pais` text NOT NULL,
  `uf` text NOT NULL,
  `cidade` text NOT NULL,
  `rua` text NOT NULL,
  `imagem` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_login_profile_hash`
--

CREATE TABLE `bd_login_profile_hash` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `hash` text NOT NULL,
  `id_login` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_login_profile_social`
--

CREATE TABLE `bd_login_profile_social` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `link` text NOT NULL,
  `id_login` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_menu`
--

CREATE TABLE `bd_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_nome` text NOT NULL,
  `menu_link` text NOT NULL,
  `menu_nivel` text NOT NULL,
  `menu_feather` text NOT NULL,
  `menu_target` text NOT NULL,
  `menu_parente_id` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_menu`
--

INSERT INTO `bd_menu` (`menu_id`, `menu_nome`, `menu_link`, `menu_nivel`, `menu_feather`, `menu_target`, `menu_parente_id`) VALUES
(1, 'Airdrops', 'container.php', '3', '', '', '0'),
(2, 'Bot de telegram', 'container.php', '3', '', '', '1'),
(3, 'Bounty', 'container.php', '3', '', '', '1'),
(4, 'Competição', 'container.php', '3', '', '', '1'),
(5, 'Sorteios', 'container.php', '3', '', '', '1'),
(6, 'Sites Abertos', 'container.php', '3', '', '', '1'),
(7, 'Pré vendas de Moedas e tokens', 'container.php', '3', '', '', '1'),
(8, 'Mainnet Test', 'container.php', '3', '', '', '1'),
(9, 'Mineradoras', 'container.php', '3', '', '', '0'),
(10, 'Pools de mineração', 'container.php', '3', '', '', '9'),
(11, 'Mineradoras de Investimento Fixo', 'container.php', '3', '', '', '9'),
(12, 'Hypes - Realmente arriscados', 'container.php', '3', '', '', '9'),
(13, 'Aplicativos de mineração', 'container.php', '3', '', '', '9'),
(14, 'Formulários de Airdrops', 'container.php', '3', '', '', '1'),
(15, 'Carteiras - Wallet', 'container.php', '3', '', '', '0'),
(16, 'RPCs para Metamask e afins', 'container.php', '3', '', '', '15'),
(17, 'Web Wallet', 'container.php', '3', '', '', '15'),
(18, 'Windows Wallet', 'container.php', '3', '', '', '15'),
(19, 'Android Wallet', 'container.php', '3', '', '', '15'),
(20, 'Iphone Wallet', 'container.php', '3', '', '', '15'),
(21, 'Linux Wallet', 'container.php', '3', '', '', '15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_menu_perfil`
--

CREATE TABLE `bd_menu_perfil` (
  `perfil_id` int(11) NOT NULL,
  `perfil_menu` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perfil_link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perfil_nivel` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menu_feather` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `bd_menu_perfil`
--

INSERT INTO `bd_menu_perfil` (`perfil_id`, `perfil_menu`, `perfil_link`, `perfil_nivel`, `menu_feather`) VALUES
(1, 'Meu Perfil', '', '3', 'pie-chart'),
(2, 'Minhas Publicações', './perfil/public.php', '3', ''),
(3, 'Configurações', '', '2', ''),
(4, 'Ajuda', '', '3', ''),
(5, 'Minhas Carteiras', './perfil/carteira.php', '3', ''),
(6, 'Meus links de acompanhamento', '', '3', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_notification`
--

CREATE TABLE `bd_notification` (
  `not_id` int(11) NOT NULL,
  `not_inserido` datetime NOT NULL,
  `not_descricao` text NOT NULL,
  `not_texto` text NOT NULL,
  `not_link_externo` text NOT NULL,
  `not_perfil_origem` text NOT NULL,
  `not_perfil_destino` text NOT NULL,
  `not_feather` text NOT NULL,
  `not_class` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_notification`
--

INSERT INTO `bd_notification` (`not_id`, `not_inserido`, `not_descricao`, `not_texto`, `not_link_externo`, `not_perfil_origem`, `not_perfil_destino`, `not_feather`, `not_class`) VALUES
(1, '2021-09-15 07:04:00', 'Bem vindo ao esquema', 'Agora que você faz parte do nosso cotidiano, vamos todos lucrar juntos', 'http://airdropsqb.blogspot.com/', '1', '1', 'alert-circle', 'text-danger'),
(2, '2021-09-05 05:22:25', 'Ganhe ganhando', 'Continue ganhando sem deixar de ganhar ganhando ganharei ', 'http://www.google.com', '1', '2', 'alert-circle', 'text-danger');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_perfil_carteiras`
--

CREATE TABLE `bd_perfil_carteiras` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `hash` text NOT NULL,
  `idperfil` text NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_perfil_carteiras`
--

INSERT INTO `bd_perfil_carteiras` (`id`, `nome`, `hash`, `idperfil`, `comentario`) VALUES
(62, 'k', 'k', '2', 'k'),
(64, 'k1', 'k2', '1', 'k3'),
(65, 'l', 'l', '1', 'l');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_post`
--

CREATE TABLE `bd_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_mens` text NOT NULL,
  `post_start` date NOT NULL,
  `post_end` date NOT NULL,
  `post_distri` date NOT NULL,
  `post_value` text NOT NULL,
  `post_link1` text NOT NULL,
  `post_link2` text NOT NULL,
  `post_menu_id` text NOT NULL,
  `post_img` text NOT NULL,
  `post_yt` text NOT NULL,
  `post_autor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bd_post`
--

INSERT INTO `bd_post` (`post_id`, `post_title`, `post_mens`, `post_start`, `post_end`, `post_distri`, `post_value`, `post_link1`, `post_link2`, `post_menu_id`, `post_img`, `post_yt`, `post_autor`) VALUES
(1, 'Teste de Menu 1', 'Bla bla bla bla bla', '2021-11-01', '2021-11-02', '2021-11-03', '50000 DDS', 'https://www.algumacoisa.com', 'https://www.outracoisa.com', '3', '', 'http://www.youtube.com/embed/pgHr6luyjjs', '1'),
(2, 'Teste Menu 2', 'QB QB QB \r\nqb qb qb\r\nQB QB QB \r\nqb qb qb\r\nQB QB QB \r\nqb qb qb\r\nQB QB QB \r\nqb qb qb\r\nQB QB QB \r\nqb qb qb', '2021-11-04', '2021-11-05', '2021-11-06', '100000 DOGE', 'www.google.com', 'www.facebook.com', '3', 'https://png.pngtree.com/template/20190916/ourlarge/pngtree-bird-abstract-logo-vector-template-image_307443.jpg', '', '2'),
(3, 'Teste de menu 3', 'bla bla bla bla bla bla bla', '2021-11-01', '2021-11-03', '2021-11-05', '1 ZEN', 'www.google.com', 'www.facebook.com', '3', '', '', '1'),
(4, 'Teste Menu 4', 'Texto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\nTexto de Texto \r\n', '2021-10-01', '2021-10-02', '2021-10-03', '500 USDT', 'www.instagram.com', 'www.instagram.com', '3', 'https://png.pngtree.com/template/20190916/ourlarge/pngtree-bird-abstract-logo-vector-template-image_307443.jpg', 'http://www.youtube.com/embed/pgHr6luyjjs', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bd_token`
--

CREATE TABLE `bd_token` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `sigla` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vb_menu`
--

CREATE TABLE `vb_menu` (
  `id` int(11) NOT NULL,
  `menu` text NOT NULL,
  `link` text NOT NULL,
  `idmenu` text NOT NULL,
  `permissao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `vb_menu`
--

INSERT INTO `vb_menu` (`id`, `menu`, `link`, `idmenu`, `permissao`) VALUES
(1, 'Airdrops', 'www.google.com', '', '3'),
(2, 'Mineradoras', 'www.yahoo.com', '', '3'),
(3, 'Renda Passiva', '', '', '3'),
(4, 'Faucet', '', '', '3'),
(5, 'Competicao', '', '', '3'),
(6, 'Sorteios', '', '', '3'),
(7, 'Exchange', '', '', '3'),
(8, 'Wallets', '', '', '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL,
  `canal_nome` text NOT NULL,
  `canal_id` text NOT NULL,
  `canal_data` text NOT NULL,
  `canal_` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `y_apy`
--

CREATE TABLE `y_apy` (
  `id` int(11) NOT NULL,
  `APY` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `bd_airdrops_comentarios`
--
ALTER TABLE `bd_airdrops_comentarios`
  ADD PRIMARY KEY (`come_id`);

--
-- Índices de tabela `bd_batepapo`
--
ALTER TABLE `bd_batepapo`
  ADD PRIMARY KEY (`bate_id`);

--
-- Índices de tabela `bd_exchange`
--
ALTER TABLE `bd_exchange`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bd_login`
--
ALTER TABLE `bd_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Índices de tabela `bd_login_profile_dados`
--
ALTER TABLE `bd_login_profile_dados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bd_login_profile_hash`
--
ALTER TABLE `bd_login_profile_hash`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bd_login_profile_social`
--
ALTER TABLE `bd_login_profile_social`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bd_menu`
--
ALTER TABLE `bd_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Índices de tabela `bd_menu_perfil`
--
ALTER TABLE `bd_menu_perfil`
  ADD PRIMARY KEY (`perfil_id`);

--
-- Índices de tabela `bd_notification`
--
ALTER TABLE `bd_notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Índices de tabela `bd_perfil_carteiras`
--
ALTER TABLE `bd_perfil_carteiras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bd_post`
--
ALTER TABLE `bd_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Índices de tabela `bd_token`
--
ALTER TABLE `bd_token`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vb_menu`
--
ALTER TABLE `vb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `y_apy`
--
ALTER TABLE `y_apy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `bd_airdrops_comentarios`
--
ALTER TABLE `bd_airdrops_comentarios`
  MODIFY `come_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `bd_batepapo`
--
ALTER TABLE `bd_batepapo`
  MODIFY `bate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bd_exchange`
--
ALTER TABLE `bd_exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bd_login`
--
ALTER TABLE `bd_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `bd_login_profile_dados`
--
ALTER TABLE `bd_login_profile_dados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bd_login_profile_hash`
--
ALTER TABLE `bd_login_profile_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bd_login_profile_social`
--
ALTER TABLE `bd_login_profile_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bd_menu`
--
ALTER TABLE `bd_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `bd_menu_perfil`
--
ALTER TABLE `bd_menu_perfil`
  MODIFY `perfil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `bd_notification`
--
ALTER TABLE `bd_notification`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `bd_perfil_carteiras`
--
ALTER TABLE `bd_perfil_carteiras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `bd_post`
--
ALTER TABLE `bd_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `bd_token`
--
ALTER TABLE `bd_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vb_menu`
--
ALTER TABLE `vb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `y_apy`
--
ALTER TABLE `y_apy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
