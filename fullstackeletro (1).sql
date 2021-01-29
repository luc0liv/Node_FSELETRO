-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2021 às 16:56
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstackeletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(11) NOT NULL,
  `nomecat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_cat`, `nomecat`) VALUES
(1, 'fogão'),
(2, 'geladeira'),
(5, 'micro-ondas'),
(6, 'lava louças'),
(7, 'lavadora'),
(8, 'aspirador de pó');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id_contato` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` int(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `msg` text NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id_contato`, `nome`, `telefone`, `email`, `msg`, `data`) VALUES
(1, 'Luciana Oliveira da Cunha', 0, '', 'Testando...', '2020-11-03 17:07:01'),
(5, 'Vania Nunes', 0, '', 'Testando 2', '2020-11-03 17:21:50'),
(7, 'Pedro Carvalho', 0, '', 'Testando 123', '2020-11-03 17:23:22'),
(8, 'Luiza Sousa', 2112345689, 'lulusousa@hotmail.com', 'oioi', '2020-11-03 17:26:51'),
(9, 'Luiza Sousa', 2112345689, 'lulusousa@hotmail.com', 'oioi', '2020-11-03 17:33:59'),
(10, 'Luciana Oliveira da Cunha', 2147483647, 'luoliveiradacunha@gmail.com', 'oie', '2020-11-21 22:25:54'),
(11, '', 0, '', '', '2020-12-05 20:48:16'),
(12, '', 0, '', '', '2020-12-05 21:45:41'),
(13, 'Luciana Oliveira da Cunha', 2112345678, 'lucoliv.mkt.digital@gmail.com', 'Testando...', '2020-12-05 21:45:57'),
(14, 'Marina Silva', 2123234455, 'marina@gmail.com', 'Olá', '2020-12-05 21:48:14'),
(15, 'Laura ', 2112345678, 'll@gmail.com', 'Testando...', '2020-12-20 01:10:02'),
(16, 'Maria ', 2134566543, 'maria@gmail.com', 'Oie', '2021-01-21 20:38:29'),
(17, 'Maria ', 2134566543, 'maria@gmail.com', 'Oie', '2021-01-21 20:38:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `nomecliente` varchar(30) NOT NULL,
  `endereço` text NOT NULL,
  `telefone` int(12) NOT NULL,
  `escolhaproduto` varchar(50) NOT NULL,
  `preço` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valortotal` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `nomecliente`, `endereço`, `telefone`, `escolhaproduto`, `preço`, `quantidade`, `valortotal`) VALUES
(2, 'Rita Sousa', 'Rua dos pássaros, 12', 12345678, 'Micro-ondas Electrolux', '847.97', 2, NULL),
(3, 'Rita Sousa', 'Rua dos pássaros, 12', 12345678, 'Micro-ondas Electrolux', '847.97', 2, NULL),
(7, 'Maria Silva', 'Rua Trinta, 30', 2134566543, 'Refrigerador Consul Domest', '9519.90', 2, NULL),
(9, 'Maria Silva', 'rua quinze', 2134566543, 'Micro-ondas LG Solo', '2899.00', 2, NULL),
(21, 'Luciana Oliveira', 'Rua dos bobos', 2112345689, 'Geladeira Continental', '2899.00', 2, '0.00'),
(22, 'João Silva', 'Rua 123', 1134567656, 'Geladeira Continental', '2899.00', 3, '0.00'),
(23, 'Felipe Matos', 'Rua 765', 2147483647, 'Geladeira Continental', '2899.00', 2, '0.00'),
(24, 'Felipe Matos', 'Rua 765', 2147483647, 'Geladeira Continental', '2899.00', 2, '0.00'),
(25, 'Felipe Matos', 'Rua 765', 2147483647, 'Geladeira Continental', '2899.00', 2, '0.00'),
(26, 'Felipe Matos', 'Rua 765', 2147483647, 'Geladeira Continental', '2899.00', 2, '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idprodut` int(11) NOT NULL,
  `nomeproduto` varchar(50) NOT NULL,
  `descrição` text NOT NULL,
  `preço` decimal(8,2) NOT NULL,
  `preço_venda` decimal(10,2) NOT NULL,
  `nomeimagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodut`, `nomeproduto`, `descrição`, `preço`, `preço_venda`, `nomeimagem`) VALUES
(1, 'Fogão 4 Bocas Electrolux Preto - ', 'Acendimento Automático 52LPV', '1499.00', '1187.10', 'imgs/fogaoelectrolux.jpg'),
(2, 'Fogão 5 Bocas Consul CFS5 VAR', ' Acendimento Automático Inox', '1999.90', '1439.10', 'imgs/fogaoconsul.jpg'),
(3, 'Geladeira Brastemp', 'Frost Free Evox', '9519.90', '4949.10', 'imgs/geladeirabrastemp.jpg'),
(4, 'Refrigerador Consul Domest', '2 Portas 437 Litros Platinum Frost Free 220v', '3999.00', '3039.05', 'imgs/geladeiraconsul.jpg'),
(5, 'Geladeira Continental', 'Geladeira/Refrigerador  Frost Free', '2899.00', '1880.10', 'imgs/geladeiracontinental.jpg'),
(6, 'Micro-ondas Brastemp', ' 20 Litros com Funções Pré-preparo Inox Espelhado', '599.02', '539.12', 'imgs/microBrastemp.jpg'),
(7, 'Micro-ondas Electrolux', ' com Painel Integrado 31L MI41S - 220 Volts', '847.97', '763.17', 'imgs/microEletrolux.jpg'),
(8, 'Micro-ondas LG Solo', ' 30 Litros Prata MS3095 110V', '625.96', '539.10', 'imgs/microLG.jpg'),
(9, 'Lava Louças Brastemp', '8 Serviços Compacta Prata com Ciclo Pesado', '2899.00', '1880.10', 'imgs/lavaloucasBrastemp.jpg'),
(10, 'Lava louças philco', 'Lava louças Philco - 8 Serviços.', '2599.00', '1844.91', 'imgs/lavaloucasPhilco.jpg'),
(11, 'Lavadora de Roupas Brastemp BWK12A9 ', '12Kg - Cesto Inox 12 Programas de Lavagem', '2599.00', '1853.10', 'imgs/lavadoraBrastemp.jpg'),
(12, 'Lavadora de Roupas Midea Storm Wash', 'LFA11X1 - Inverter 11kg Cesto Inox 16 Programas de Lavagem', '3499.00', '2699.10', 'imgs/lavadoraMidea.jpg'),
(13, 'Aspirador de pó Vertical Philco 1000W', 'com Filtro Hepa Ph1100 Rapid Turbo Pas02c', '200.00', '170.91', 'imgs/aspirador2.jpg'),
(14, 'Aspirador de pó Britânia', '1250W BAS1430', '249.90', '189.90', 'imgs/aspirador1.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_categoria`
--

CREATE TABLE `produto_categoria` (
  `id_prod_cat` int(11) NOT NULL,
  `idprodut` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto_categoria`
--

INSERT INTO `produto_categoria` (`id_prod_cat`, `idprodut`, `id_cat`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 6),
(10, 10, 6),
(11, 11, 7),
(12, 12, 7),
(13, 13, 8),
(14, 14, 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `valorunit_idx` (`preço`),
  ADD KEY `in_nomeproduto` (`escolhaproduto`) USING BTREE;

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodut`),
  ADD KEY `preço_idx` (`preço`),
  ADD KEY `nomeproduto_idx` (`nomeproduto`) USING BTREE;

--
-- Índices para tabela `produto_categoria`
--
ALTER TABLE `produto_categoria`
  ADD PRIMARY KEY (`id_prod_cat`),
  ADD KEY `idprodut` (`idprodut`),
  ADD KEY `id_cat` (`id_cat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idprodut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `produto_categoria`
--
ALTER TABLE `produto_categoria`
  MODIFY `id_prod_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_nomeproduto` FOREIGN KEY (`escolhaproduto`) REFERENCES `produtos` (`nomeproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_preço` FOREIGN KEY (`preço`) REFERENCES `produtos` (`preço`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto_categoria`
--
ALTER TABLE `produto_categoria`
  ADD CONSTRAINT `produto_categoria_ibfk_1` FOREIGN KEY (`idprodut`) REFERENCES `produtos` (`idprodut`),
  ADD CONSTRAINT `produto_categoria_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categorias` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
