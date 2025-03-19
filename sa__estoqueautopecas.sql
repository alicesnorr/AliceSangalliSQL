-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/03/2025 às 21:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sa__estoqueautopecas`
--
CREATE DATABASE IF NOT EXISTS `sa__estoqueautopecas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sa__estoqueautopecas`;

DELIMITER $$
--
-- Procedimentos
--
DROP PROCEDURE IF EXISTS `AtualizarQuantidadeItemPedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AtualizarQuantidadeItemPedido` (IN `codProduto` INT, IN `numPedido` INT, IN `novaQtde` INT)   BEGIN
    UPDATE item_de_pedido 
    SET qtde = novaQtde 
    WHERE cod_produto = codProduto 
    AND num_pedido = numPedido; 
END$$

DROP PROCEDURE IF EXISTS `InserirItemPedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirItemPedido` (IN `codProduto` INT, IN `numPedido` INT, IN `qtde` INT)   BEGIN 
    INSERT INTO item_de_pedido (cod_produto, num_pedido, qtde)
    VALUES (codProduto, numPedido, qtde); 
END$$

DROP PROCEDURE IF EXISTS `ObterItensPedidoComDetalhesProduto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObterItensPedidoComDetalhesProduto` (IN `numPedido` INT)   BEGIN
    SELECT ip.cod_produto, p.nome, p.valor, ip.qtde
    FROM item_de_pedido ip
    JOIN produto p ON ip.cod_produto = p.cod_produto
    WHERE ip.num_pedido = numPedido;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `cod_cliente` int(50) NOT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `cnpj`, `cpf`, `email`, `endereco`, `nome`, `telefone`) VALUES
(1, NULL, '123.456.789-01', 'joao.silva@email.com', 'Rua da Paz', 'João Silva', '(11) 98765-4321'),
(2, NULL, '123.456.789-02', 'maria.oliveira@email.com', 'Avenida Paulista', 'Maria Oliveira', '(11) 98765-4322'),
(3, NULL, '123.456.789-03', 'carlos.souza@email.com', 'Rua Augusta', 'Carlos Souza', '(11) 98765-4323'),
(4, NULL, '123.456.789-04', 'ana.costa@email.com', 'Rua das Flores', 'Ana Costa', '(11) 98765-4324'),
(5, NULL, '123.456.789-05', 'pedro.santos@email.com', 'Rua XV de Novembro', 'Pedro Santos', '(11) 98765-4325'),
(6, NULL, '123.456.789-06', 'luciana.pereira@email.com', 'Avenida Rio Branco', 'Luciana Pereira', '(11) 98765-4326'),
(7, NULL, '123.456.789-07', 'felipe.almeida@email.com', 'Rua dos Três Irmãos', 'Felipe Almeida', '(11) 98765-4327'),
(8, NULL, '123.456.789-08', 'renata.lima@email.com', 'Rua Jardim Botânico', 'Renata Lima', '(11) 98765-4328'),
(9, NULL, '123.456.789-09', 'ricardo.martins@email.com', 'Rua das Acácias', 'Ricardo Martins', '(11) 98765-4329'),
(10, NULL, '123.456.789-10', 'tatiane.ferreira@email.com', 'Avenida Brigadeiro Faria Lima', 'Tatiane Ferreira', '(11) 98765-4330'),
(11, NULL, '123.456.789-11', 'jose.carvalho@email.com', 'Rua dos Três Corações', 'José Carvalho', '(11) 98765-4331'),
(12, NULL, '123.456.789-12', 'fernanda.silva@email.com', 'Rua do Comércio', 'Fernanda Silva', '(11) 98765-4332'),
(13, NULL, '123.456.789-13', 'ricardo.costa@email.com', 'Avenida Santos Dumont', 'Ricardo Costa', '(11) 98765-4333'),
(14, NULL, '123.456.789-14', 'julia.almeida@email.com', 'Rua Barão de Itapetininga', 'Júlia Almeida', '(11) 98765-4334'),
(15, NULL, '123.456.789-15', 'fernando.souza@email.com', 'Rua da Consolação', 'Fernando Souza', '(11) 98765-4335'),
(16, NULL, '123.456.789-16', 'mariana.pinto@email.com', 'Rua do Rócio', 'Mariana Pinto', '(11) 98765-4336'),
(17, NULL, '123.456.789-17', 'luis.mendes@email.com', 'Avenida Morumbi', 'Luís Mendes', '(11) 98765-4337'),
(18, NULL, '123.456.789-18', 'paula.oliveira@email.com', 'Rua São João', 'Paula Oliveira', '(11) 98765-4338'),
(19, NULL, '123.456.789-19', 'gabriel.fernandes@email.com', 'Rua do Pácio', 'Gabriel Fernandes', '(11) 98765-4339'),
(20, NULL, '123.456.789-20', 'aline.rocha@email.com', 'Rua dos Três Irmãos', 'Aline Rocha', '(11) 98765-4340'),
(21, NULL, '123.456.789-21', 'eduardo.nunes@email.com', 'Rua Professor Lafayette', 'Eduardo Nunes', '(11) 98765-4341'),
(22, NULL, '123.456.789-22', 'isabel.costa@email.com', 'Rua da Lapa', 'Isabel Costa', '(11) 98765-4342'),
(23, NULL, '123.456.789-23', 'marcio.ribeiro@email.com', 'Avenida Washington Luís', 'Marcio Ribeiro', '(11) 98765-4343'),
(24, NULL, '123.456.789-24', 'luciano.almeida@email.com', 'Rua Padre João', 'Luciano Almeida', '(11) 98765-4344'),
(25, NULL, '123.456.789-25', 'claudia.ramos@email.com', 'Rua do Catete', 'Cláudia Ramos', '(11) 98765-4345'),
(26, '12.345.678/0001-01', NULL, 'oficina.saojorge@email.com', 'Rua 9 de Julho', 'Oficina São Jorge', '(11) 98765-4321'),
(27, '12.345.678/0001-02', NULL, 'oficina.docarro@email.com', 'Avenida dos Bandeirantes', 'Oficina do Carro', '(11) 98765-4322'),
(28, '12.345.678/0001-03', NULL, 'oficina.central@email.com', 'Rua Dr. Arnaldo', 'Oficina Central', '(11) 98765-4323'),
(29, '12.345.678/0001-04', NULL, 'oficina.autorepair@email.com', 'Rua do Jacaré', 'Oficina Auto Repair', '(11) 98765-4324'),
(30, '12.345.678/0001-05', NULL, 'oficina.express@email.com', 'Rua dos Três Irmãos', 'Oficina Express', '(11) 98765-4325'),
(31, '12.345.678/0001-06', NULL, 'oficina.automais@email.com', 'Avenida Francisco Matarazzo', 'Oficina Auto Mais', '(11) 98765-4326'),
(32, '12.345.678/0001-07', NULL, 'oficina.domecanico@email.com', 'Rua Barão de Limeira', 'Oficina do Mecânico', '(11) 98765-4327'),
(33, '12.345.678/0001-08', NULL, 'oficina.dopovo@email.com', 'Rua Cardoso Pimentel', 'Oficina do Povo', '(11) 98765-4328'),
(34, '12.345.678/0001-09', NULL, 'oficina.prime@email.com', 'Avenida Marquês de São Vicente', 'Oficina Prime', '(11) 98765-4329'),
(35, '12.345.678/0001-10', NULL, 'oficina.elite@email.com', 'Rua Xavier de Toledo', 'Oficina Elite', '(11) 98765-4330'),
(36, '12.345.678/0001-11', NULL, 'oficina.car@email.com', 'Rua Frei Caneca', 'Oficina Car', '(11) 98765-4331'),
(37, '12.345.678/0001-12', NULL, 'oficina.domotor@email.com', 'Rua dos Universitários', 'Oficina do Motor', '(11) 98765-4332'),
(38, '12.345.678/0001-13', NULL, 'oficina.total@email.com', 'Avenida Pompeia', 'Oficina Total', '(11) 98765-4333'),
(39, '12.345.678/0001-14', NULL, 'oficina.topcar@email.com', 'Rua Haddock Lobo', 'Oficina Top Car', '(11) 98765-4334'),
(40, '12.345.678/0001-15', NULL, 'oficina.auto360@email.com', 'Rua do Mangue', 'Oficina Auto 360', '(11) 98765-4335'),
(41, '12.345.678/0001-16', NULL, 'oficina.dosul@email.com', 'Rua Alagoas', 'Oficina do Sul', '(11) 98765-4336'),
(42, '12.345.678/0001-17', NULL, 'oficina.motorshow@email.com', 'Avenida Rebouças', 'Oficina Motor Show', '(11) 98765-4337'),
(43, '12.345.678/0001-18', NULL, 'oficina.rio@email.com', 'Rua dos Três Corações', 'Oficina Rio', '(11) 98765-4338'),
(44, '12.345.678/0001-19', NULL, 'oficina.fast@email.com', 'Rua Antônio de Barros', 'Oficina Fast', '(11) 98765-4339'),
(45, '12.345.678/0001-20', NULL, 'oficina.motorline@email.com', 'Rua do Sol', 'Oficina Motor Line', '(11) 98765-4340'),
(46, '12.345.678/0001-21', NULL, 'oficina.carcenter@email.com', 'Rua do Coqueiro', 'Oficina Car Center', '(11) 98765-4341'),
(47, '12.345.678/0001-22', NULL, 'oficina.docentro@email.com', 'Rua da Paz', 'Oficina do Centro', '(11) 98765-4342'),
(48, '12.345.678/0001-23', NULL, 'oficina.autoservice@email.com', 'Avenida Brigadeiro Faria Lima', 'Oficina Auto Service', '(11) 98765-4343'),
(49, '12.345.678/0001-24', NULL, 'oficina.dolitoral@email.com', 'Rua das Palmeiras', 'Oficina do Litoral', '(11) 98765-4344'),
(50, '12.345.678/0001-25', NULL, 'oficina.nova@email.com', 'Rua Catumbi', 'Oficina Nova', '(11) 98765-4345');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
CREATE TABLE `fabricante` (
  `cod_fabricante` int(50) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fabricante`
--

INSERT INTO `fabricante` (`cod_fabricante`, `cnpj`, `endereco`, `nome`, `telefone`) VALUES
(1, '12.345.678/0001-01', 'Av. das Nações, 123', 'Monroe', '1234-5678'),
(2, '23.456.789/0001-02', 'Rua dos Jacarandás, 456', 'LonaFlex', '2345-6789'),
(3, '34.567.890/0001-03', 'Alameda das Flores, 789', 'Tecfil', '3456-7890'),
(4, '45.678.901/0001-04', 'Travessa dos Lírios, 101', 'Petronas', '4567-8901'),
(5, '56.789.012/0001-05', 'Rua do Sol, 202', 'Bosch', '5678-9012'),
(6, '67.890.123/0001-06', 'Av. das Palmeiras, 303', 'Pirelli', '6789-0123'),
(7, '78.901.234/0001-07', 'Rua das Orquídeas, 404', 'Gates', '7890-1234'),
(8, '89.012.345/0001-08', 'Alameda das Acácias, 505', 'Marelli', '8901-2345'),
(9, '90.123.456/0001-09', 'Travessa dos Cravos, 606', 'Fremax', '9012-3456'),
(10, '12.234.567/0001-10', 'Rua das Magnólias, 707', 'Sampel', '1234-5670'),
(11, '23.345.678/0001-11', 'Av. dos Girassóis, 808', 'NGK', '2345-6781'),
(12, '34.456.789/0001-12', 'Rua dos Pinheiros, 909', 'Schadek', '3456-7892'),
(13, '45.567.890/0001-13', 'Travessa das Rosas, 1010', 'DS', '4567-8903'),
(14, '56.678.901/0001-14', 'Rua das Américas, 1111', 'Tanclick', '5678-9014'),
(15, '67.789.012/0001-15', 'Av. dos Hibiscos, 1212', 'FMaster', '6789-0125'),
(16, '78.890.123/0001-16', 'Rua das Gardênias, 1313', 'Pioneiro', '7890-1236'),
(17, '89.901.234/0001-17', 'Travessa das Tulipas, 1414', 'Hella', '8901-2347'),
(18, '90.012.345/0001-18', 'Rua dos Cedros, 1515', 'Cabovel', '9012-3458'),
(19, '12.123.456/0001-19', 'Av. das Hortênsias, 1616', 'Mastra', '1234-5679'),
(20, '23.234.567/0001-20', 'Travessa dos Ipês, 1717', 'Jamaica', '2345-6780'),
(21, '34.345.678/0001-21', 'Rua das Araucárias, 1818', 'Sabo', '3456-7891'),
(22, '45.456.789/0001-22', 'Av. dos Ciprestes, 1919', 'Nakata', '4567-8902'),
(23, '56.567.890/0001-23', 'Travessa dos Manacás, 2020', 'Luk', '5678-9013'),
(24, '67.678.901/0001-24', 'Rua dos Jasmins, 2121', 'Elring', '6789-0124'),
(25, '78.789.012/0001-25', 'Av. das Bromélias, 2222', 'AutoImpact', '7890-1235'),
(26, '89.890.123/0001-26', 'Rua das Mimosas, 2323', 'Wega', '8901-2346'),
(27, '90.901.234/0001-27', 'Travessa dos Lírios, 2424', 'Eaton', '9012-3457'),
(28, '12.012.345/0001-28', 'Av. dos Eucaliptos, 2525', 'MTE', '1234-5671'),
(29, '23.123.456/0001-29', 'Rua das Margaridas, 2626', 'Mahle Metal Leve', '2345-6782'),
(30, '34.234.567/0001-30', 'Travessa das Oliveiras, 2727', 'Efrari', '3456-7893'),
(31, '45.345.678/0001-31', 'Av. dos Jacarés, 2828', 'General Motors', '4567-8904'),
(32, '56.456.789/0001-32', 'Rua dos Leões, 2929', 'Borilli', '5678-9015'),
(33, '67.567.890/0001-33', 'Travessa dos Elefantes, 3030', 'Continental', '6789-0126'),
(34, '78.678.901/0001-34', 'Av. dos Tigres, 3131', 'Grazzi', '7890-1237'),
(35, '89.789.012/0001-35', 'Rua dos Lobos, 3232', 'Mann', '8901-2348'),
(36, '90.890.123/0001-36', 'Travessa das Raposas, 3333', '3-RHO', '9012-3459'),
(37, '12.901.234/0001-37', 'Av. das Águias, 3434', 'Denso', '1234-5672'),
(38, '23.012.345/0001-38', 'Rua dos Gaviões, 3535', 'Molas Brusque', '2345-6783'),
(39, '45.234.567/0001-40', 'Av. dos Tucanos, 3737', 'TRW', '4567-8905'),
(40, '56.345.678/0001-41', 'Rua dos Colibris, 3838', 'Visconde', '5678-9016');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_de_pedido`
--

DROP TABLE IF EXISTS `item_de_pedido`;
CREATE TABLE `item_de_pedido` (
  `cod_produto` int(11) NOT NULL,
  `num_pedido` int(11) NOT NULL,
  `qtde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_de_pedido`
--

INSERT INTO `item_de_pedido` (`cod_produto`, `num_pedido`, `qtde`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 2, 3),
(4, 3, 2),
(5, 4, 4),
(6, 5, 1),
(7, 6, 5),
(8, 6, 2),
(9, 7, 3),
(10, 8, 1),
(11, 8, 4),
(12, 9, 2),
(13, 10, 3),
(14, 10, 1),
(15, 11, 5),
(16, 12, 2),
(17, 13, 3),
(18, 14, 1),
(19, 14, 4),
(20, 15, 2),
(21, 16, 6),
(22, 17, 1),
(23, 18, 2),
(24, 18, 4),
(25, 19, 3),
(26, 20, 2),
(27, 21, 5),
(28, 22, 3),
(29, 23, 2),
(30, 24, 4),
(31, 25, 1),
(32, 26, 3),
(33, 27, 2),
(34, 28, 5),
(35, 29, 3),
(36, 30, 4),
(37, 31, 2),
(38, 32, 5),
(39, 33, 3),
(40, 34, 1),
(41, 35, 4),
(42, 36, 2),
(43, 37, 3),
(44, 38, 1),
(45, 39, 2),
(46, 40, 4),
(47, 41, 3),
(48, 42, 1),
(49, 43, 2),
(50, 44, 5),
(51, 45, 3),
(52, 46, 2),
(53, 47, 4),
(54, 48, 1),
(55, 49, 3),
(56, 50, 2),
(57, 1, 1),
(58, 2, 4),
(59, 3, 3),
(60, 4, 2),
(61, 5, 5),
(62, 6, 1),
(63, 7, 2),
(64, 8, 3),
(65, 9, 1),
(66, 10, 4),
(67, 11, 2),
(68, 12, 5),
(69, 13, 3),
(70, 14, 1),
(71, 15, 4),
(72, 16, 2),
(73, 17, 3),
(74, 18, 1),
(75, 19, 2),
(76, 20, 5),
(77, 21, 3),
(78, 22, 4),
(79, 23, 2),
(80, 24, 1),
(81, 25, 5),
(82, 26, 3),
(83, 27, 2),
(84, 28, 4),
(85, 29, 1),
(86, 30, 3),
(87, 31, 2),
(88, 32, 5),
(89, 33, 4),
(90, 34, 3),
(91, 35, 2),
(92, 36, 1),
(93, 37, 4),
(94, 38, 2),
(95, 39, 5),
(96, 40, 3),
(97, 41, 1),
(98, 42, 4),
(99, 43, 3),
(100, 44, 2),
(101, 45, 5),
(102, 46, 4),
(103, 47, 2),
(104, 48, 1),
(1, 1, 0),
(104, 50, 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `num_pedido` int(50) NOT NULL,
  `cod_cliente` int(50) NOT NULL,
  `prazo_entrega` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`num_pedido`, `cod_cliente`, `prazo_entrega`) VALUES
(1, 1, '2025-03-05'),
(2, 2, '2025-03-06'),
(3, 3, '2025-03-07'),
(4, 4, '2025-03-08'),
(5, 5, '2025-03-09'),
(6, 6, '2025-03-10'),
(7, 7, '2025-03-11'),
(8, 8, '2025-03-12'),
(9, 9, '2025-03-13'),
(10, 10, '2025-03-14'),
(11, 11, '2025-03-15'),
(12, 12, '2025-03-16'),
(13, 13, '2025-03-17'),
(14, 14, '2025-03-18'),
(15, 15, '2025-03-19'),
(16, 16, '2025-03-20'),
(17, 17, '2025-03-21'),
(18, 18, '2025-03-22'),
(19, 19, '2025-03-23'),
(20, 20, '2025-03-24'),
(21, 21, '2025-03-25'),
(22, 22, '2025-03-26'),
(23, 23, '2025-03-27'),
(24, 24, '2025-03-28'),
(25, 25, '2025-03-29'),
(26, 26, '2025-03-30'),
(27, 27, '2025-03-31'),
(28, 28, '2025-04-01'),
(29, 29, '2025-04-02'),
(30, 30, '2025-04-03'),
(31, 31, '2025-04-04'),
(32, 32, '2025-04-05'),
(33, 33, '2025-04-06'),
(34, 34, '2025-04-07'),
(35, 35, '2025-04-08'),
(36, 36, '2025-04-09'),
(37, 37, '2025-04-10'),
(38, 38, '2025-04-11'),
(39, 39, '2025-04-12'),
(40, 40, '2025-04-13'),
(41, 41, '2025-04-14'),
(42, 42, '2025-04-15'),
(43, 43, '2025-04-16'),
(44, 44, '2025-04-17'),
(45, 45, '2025-04-18'),
(46, 46, '2025-04-19'),
(47, 47, '2025-04-20'),
(48, 48, '2025-04-21'),
(49, 49, '2025-04-22'),
(50, 50, '2025-04-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL,
  `cod_fabricante` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `qtde` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `cod_fabricante`, `nome`, `qtde`, `valor`) VALUES
(1, 3, 'Filtro de Óleo', '50', '35.90'),
(2, 2, 'Pastilha de Freio', '100', '45.75'),
(3, 1, 'Amortecedor Dianteiro', '30', '120.50'),
(4, 6, 'Pneu 205/55 R16', '60', '220.00'),
(5, 5, 'Bateria 12V', '40', '350.90'),
(6, 7, 'Correia Dentada', '70', '95.20'),
(7, 11, 'Vela de Ignição', '150', '15.60'),
(8, 26, 'Filtro de Ar', '85', '28.90'),
(9, 2, 'Pastilha de Freio Traseira', '120', '55.00'),
(10, 22, 'Amortecedor Traseiro', '35', '130.00'),
(11, 32, 'Pneu 195/65 R15', '50', '210.00'),
(12, 5, 'Bateria 14V', '55', '399.99'),
(13, 7, 'Correia Alternador', '60', '50.00'),
(14, 40, 'Radiador', '20', '350.00'),
(15, 16, 'Escapamento', '18', '450.00'),
(16, 25, 'Limpador de Para-brisa', '80', '35.50'),
(17, 33, 'Pneu 175/70 R13', '45', '190.00'),
(18, 4, 'Oleo 200L', '55', '4000.00'),
(19, 4, 'Oleo 20L', '30', '500.00'),
(20, 1, 'Suspensão Dianteira', '22', '950.00'),
(21, 3, 'Filtro de Combustível', '85', '25.90'),
(22, 1, 'Coxim de Motor', '70', '75.00'),
(23, 5, 'Vela de Ignição Platinum', '110', '25.00'),
(24, 12, 'Bomba de Combustível', '40', '180.00'),
(25, 39, 'Alternador', '35', '350.00'),
(26, 7, 'Jogo de Correia', '65', '90.00'),
(27, 27, 'Kit de Embreagem', '45', '450.00'),
(28, 1, 'Calço de Motor', '40', '55.00'),
(29, 5, 'Jogo de Pastilhas de Freio', '150', '60.00'),
(30, 40, 'Radiador', '20', '500.00'),
(31, 36, 'Bico Injetor', '75', '120.00'),
(32, 13, 'Sensor de Estacionamento', '90', '180.00'),
(33, 12, 'Bomba de Óleo', '50', '130.00'),
(34, 6, 'Pneu 225/60 R16', '70', '250.00'),
(35, 22, 'Suspensão Traseira', '45', '900.00'),
(36, 11, 'Vela de Ignição Super Premium', '60', '60.00'),
(37, 17, 'Luz de Freio', '110', '85.00'),
(38, 35, 'Bomba de Água', '85', '220.00'),
(39, 28, 'Válvula Termostática', '60', '45.00'),
(40, 15, 'Mola de Suspensão', '50', '180.00'),
(41, 10, 'Bucha de Suspensão', '40', '120.00'),
(42, 28, 'Comando de Válvulas', '30', '550.00'),
(43, 5, 'Hidrovácuo', '25', '450.00'),
(44, 14, 'Tampa de Válvula', '75', '85.00'),
(45, 6, 'Pneu 215/70 R15', '95', '240.00'),
(46, 10, 'Bucha da Bandeja', '80', '50.00'),
(47, 28, 'Termostato', '55', '35.00'),
(48, 29, 'Filtro de Combustível Diesel', '40', '70.00'),
(49, 22, 'Eixo de Suspensão', '50', '300.00'),
(50, 36, 'Sensor de Velocidade', '110', '120.00'),
(51, 16, 'Escapamento Esportivo', '30', '800.00'),
(52, 35, 'Filtro de Ar Esportivo', '50', '65.00'),
(53, 39, 'Cabeçote', '35', '900.00'),
(54, 1, 'Amortecedor Traseiro Esportivo', '50', '200.00'),
(55, 28, 'Sensor de Temperatura', '75', '60.00'),
(56, 33, 'Pneu 195/55 R16', '60', '230.00'),
(57, 5, 'Módulo de Injeção', '30', '1000.00'),
(58, 5, 'Palheta', '45', '40.00'),
(59, 1, 'Suspensão Completa', '20', '1300.00'),
(60, 36, 'Sensor de Estacionamento Traseiro', '60', '100.00'),
(61, 32, 'Pneu 225/60 R17', '50', '280.00'),
(62, 5, 'Módulo de Suspensão', '25', '500.00'),
(63, 7, 'Polia do Alternador', '65', '80.00'),
(64, 7, 'Kit de Correia Dentada', '70', '160.00'),
(65, 35, 'Filtro de Óleo Diesel', '55', '70.00'),
(66, 14, 'Tampa de Reservatório', '40', '45.00'),
(67, 5, 'Manômetro de Óleo', '45', '55.00'),
(68, 5, 'Pastilha de Freio Dianteira', '85', '60.00'),
(69, 30, 'Cabo de Freio Traseiro', '40', '71.00'),
(70, 11, 'Cabo de Velas', '60', '45.00'),
(71, 18, 'Cabo de Freio Dianteiro', '75', '75.00'),
(72, 31, 'Parafuso', '50', '60.00'),
(73, 39, 'Cilindro Mestre de Freio', '30', '500.00'),
(74, 38, 'Mola', '45', '300.00'),
(75, 22, 'Taco de Suspensão', '80', '30.00'),
(76, 38, 'Mola Espiral', '90', '120.00'),
(77, 28, 'Módulo de Ar-Condicionado', '30', '800.00'),
(78, 23, 'Eixo de Transmissão', '20', '1500.00'),
(79, 24, 'Retentor', '40', '10.00'),
(80, 21, 'Retentor Virabrequim', '50', '115.00'),
(81, 6, 'Pneu 265/70 R17', '65', '300.00'),
(82, 16, 'Silencioso do Escapamento', '45', '280.00'),
(83, 19, 'Catalisador', '75', '30.00'),
(84, 23, 'Embreagem Completa', '60', '450.00'),
(85, 24, 'Junta do Cabeçote', '35', '100.00'),
(86, 28, 'Injeção Eletrônica', '45', '500.00'),
(87, 39, 'Rolamento', '65', '90.00'),
(88, 20, 'Mangueira', '30', '800.00'),
(89, 9, 'Disco de Freio Traseiro', '85', '120.00'),
(90, 24, 'Jogo de Retentores', '45', '220.00'),
(91, 14, 'Tampa do Motor', '30', '300.00'),
(92, 5, 'Válvula de Controle', '25', '200.00'),
(93, 22, 'Pivo de Suspensão', '60', '90.00'),
(94, 9, 'Disco de Freio Dianteiro', '40', '140.00'),
(95, 24, 'Junta de Turbina', '80', '400.00'),
(96, 39, 'Bieleta', '50', '40.00'),
(97, 16, 'Ponteira de Escapamento', '45', '80.00'),
(98, 12, 'Bomba de Ar-Condicionado', '25', '700.00'),
(99, 18, 'Cabo de Embreagem', '30', '60.00'),
(100, 13, 'Termômetro de Água', '50', '30.00'),
(101, 27, 'Resistor de Ventilador', '70', '45.00'),
(102, 34, 'Braço da Suspensão', '45', '150.00'),
(103, 36, 'Sensor de Pressão', '30', '200.00'),
(104, 5, 'Válvula de Admissão', '65', '80.00');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_join`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_join`;
CREATE TABLE `view_join` (
`nome_fabricante` varchar(50)
,`nome_produto` varchar(255)
,`qtde` varchar(255)
,`valor` varchar(255)
,`valor_total` double
);

-- --------------------------------------------------------

--
-- Estrutura para view `view_join`
--
DROP TABLE IF EXISTS `view_join`;

DROP VIEW IF EXISTS `view_join`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_join`  AS SELECT `fabricante`.`nome` AS `nome_fabricante`, `produto`.`nome` AS `nome_produto`, `produto`.`qtde` AS `qtde`, `produto`.`valor` AS `valor`, `produto`.`qtde`* `produto`.`valor` AS `valor_total` FROM (`fabricante` join `produto` on(`fabricante`.`cod_fabricante` = `produto`.`cod_fabricante`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices de tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`cod_fabricante`);

--
-- Índices de tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD KEY `cod_produto` (`cod_produto`),
  ADD KEY `num_pedido` (`num_pedido`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`num_pedido`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`),
  ADD KEY `cod_fabricante` (`cod_fabricante`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `cod_fabricante` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `num_pedido` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD CONSTRAINT `item_de_pedido_ibfk_1` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`),
  ADD CONSTRAINT `item_de_pedido_ibfk_2` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`num_pedido`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`);

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`cod_fabricante`) REFERENCES `fabricante` (`cod_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
