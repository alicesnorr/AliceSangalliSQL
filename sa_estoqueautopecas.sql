-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/02/2025 às 20:13
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
-- Banco de dados: `sa_estoqueautopecas`
--
CREATE DATABASE IF NOT EXISTS `sa_estoqueautopecas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sa_estoqueautopecas`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(60) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email_cliente` varchar(60) NOT NULL,
  `telefone_cliente` varchar(50) NOT NULL,
  `endereco_cliente` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nome_cliente`, `cpf`, `email_cliente`, `telefone_cliente`, `endereco_cliente`) VALUES
(1, 'João Silva', '123.456.789-00', 'joao@email.com', '(11) 98765-4321', 'Rua A, 123, São Paulo'),
(2, 'Maria Oliveira', '987.654.321-00', 'maria@email.com', '(11) 99876-5432', 'Rua B, 456, São Paulo'),
(3, 'Carlos Pereira', '123.123.123-00', 'carlos@email.com', '(21) 97654-3210', 'Rua C, 789, Rio de Janeiro'),
(4, 'Ana Costa', '321.321.321-00', 'ana@email.com', '(21) 96543-2109', 'Rua D, 101, Rio de Janeiro'),
(5, 'Luiz Fernando', '112.233.445-66', 'luiz@email.com', '(31) 98877-6655', 'Rua E, 202, Belo Horizonte'),
(6, 'Fernanda Souza', '223.344.556-77', 'fernanda@email.com', '(31) 97766-5544', 'Rua F, 303, Belo Horizonte'),
(7, 'Ricardo Almeida', '334.455.667-88', 'ricardo@email.com', '(41) 96655-4433', 'Rua G, 404, Curitiba'),
(8, 'Juliana Lima', '445.566.778-99', 'juliana@email.com', '(41) 95544-3322', 'Rua H, 505, Curitiba'),
(9, 'Pedro Martins', '556.677.889-00', 'pedro@email.com', '(51) 94433-2211', 'Rua I, 606, Porto Alegre'),
(10, 'Laura Pereira', '667.788.990-11', 'laura@email.com', '(51) 93322-1100', 'Rua J, 707, Porto Alegre'),
(11, 'Marcos Ribeiro', '778.899.001-22', 'marcos@email.com', '(61) 92211-0001', 'Rua K, 808, Brasília'),
(12, 'Patrícia Costa', '889.910.112-33', 'patricia@email.com', '(61) 91100-2211', 'Rua L, 909, Brasília'),
(13, 'Gustavo Rocha', '990.011.223-44', 'gustavo@email.com', '(61) 90022-4433', 'Rua M, 1001, Brasília'),
(14, 'Carla Oliveira', '101.112.334-55', 'carla@email.com', '(71) 98888-7777', 'Rua N, 1102, Salvador');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(60) NOT NULL,
  `cnpj_fornecedor` varchar(50) NOT NULL,
  `endereco_fornecedor` varchar(60) NOT NULL,
  `telefone_fornecedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`cod_fornecedor`, `nome_fornecedor`, `cnpj_fornecedor`, `endereco_fornecedor`, `telefone_fornecedor`) VALUES
(1, 'AutoPeças São Paulo', '12.345.678/0001-99', 'Rua 1, 123, São Paulo', '(11) 91234-5678'),
(2, 'Peças & Acessórios Ltda.', '23.456.789/0001-88', 'Rua 2, 456, São Paulo', '(11) 92345-6789'),
(3, 'AutoShop Rio', '34.567.890/0001-77', 'Rua 3, 789, Rio de Janeiro', '(21) 93456-7890'),
(4, 'Peças e Ferramentas RJ', '45.678.901/0001-66', 'Rua 4, 101, Rio de Janeiro', '(21) 94567-8901'),
(5, 'Brasil Auto Parts', '56.789.012/0001-55', 'Rua 5, 202, Belo Horizonte', '(31) 95678-9012'),
(6, 'Peças de Carro BH', '67.890.123/0001-44', 'Rua 6, 303, Belo Horizonte', '(31) 96789-0123'),
(7, 'Auto Parts Curitiba', '78.901.234/0001-33', 'Rua 7, 404, Curitiba', '(41) 97890-1234'),
(8, 'Peças e Acessórios Curitiba', '89.012.345/0001-22', 'Rua 8, 505, Curitiba', '(41) 98901-2345'),
(9, 'AutoCentro Porto Alegre', '90.123.456/0001-11', 'Rua 9, 606, Porto Alegre', '(51) 99012-3456'),
(10, 'Auto Peças Sul', '01.234.567/0001-00', 'Rua 10, 707, Porto Alegre', '(51) 90123-4567'),
(11, 'Peças e Pneus Brasília', '12.345.678/0001-99', 'Rua 11, 808, Brasília', '(61) 91234-5678'),
(12, 'Distribuidora de Autopeças', '23.456.789/0001-88', 'Rua 12, 909, Brasília', '(61) 92345-6789'),
(13, 'Oficina e Peças Salvador', '34.567.890/0001-77', 'Rua 13, 1001, Salvador', '(71) 93456-7890'),
(14, 'Centro Automotivo Ltda.', '45.678.901/0001-66', 'Rua 14, 1102, Salvador', '(71) 94567-8901'),
(15, 'Auto Peças Recife', '56.789.012/0001-55', 'Rua 15, 1203, Recife', '(81) 95678-9012');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cod_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(60) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `comissao` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`cod_funcionario`, `nome_funcionario`, `salario`, `cargo`, `comissao`) VALUES
(1, 'Carlos Silva', 3000.00, 'Vendedor', 500.00),
(2, 'Ana Costa', 2500.00, 'Atendente', 300.00),
(3, 'João Oliveira', 4000.00, 'Gerente', 800.00),
(4, 'Maria Santos', 3500.00, 'Estoquista', 400.00),
(5, 'Ricardo Almeida', 2800.00, 'Vendedor', 350.00),
(6, 'Fernanda Souza', 3200.00, 'Atendente', 400.00),
(7, 'Eduardo Lima', 4500.00, 'Gerente de Vendas', 900.00),
(8, 'Juliana Pereira', 2700.00, 'Assistente de Estoqu', 250.00),
(9, 'Felipe Rocha', 3300.00, 'Vendedor', 600.00),
(10, 'Luana Martins', 2900.00, 'Estoquista', 350.00),
(11, 'Gustavo Ribeiro', 3100.00, 'Vendedor', 550.00),
(12, 'Patrícia Ferreira', 3400.00, 'Atendente', 450.00),
(13, 'Lucas Costa', 3800.00, 'Gerente de Estoque', 700.00),
(14, 'Carla Oliveira', 3300.00, 'Vendedora', 500.00),
(15, 'Marcos Rodrigues', 4200.00, 'Supervisor de Vendas', 800.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_de_pedido`
--

CREATE TABLE `item_de_pedido` (
  `num_pedido` int(11) NOT NULL,
  `cod_produto` int(11) NOT NULL,
  `qtde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_de_pedido`
--

INSERT INTO `item_de_pedido` (`num_pedido`, `cod_produto`, `qtde`) VALUES
(1001, 1, 2),
(1001, 2, 4),
(1002, 3, 3),
(1002, 4, 1),
(1003, 5, 2),
(1003, 6, 1),
(1004, 7, 5),
(1004, 8, 2),
(1005, 9, 1),
(1005, 10, 3),
(1006, 11, 2),
(1006, 12, 4),
(1007, 13, 3),
(1007, 14, 2),
(1008, 15, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `loja`
--

CREATE TABLE `loja` (
  `cod_loja` int(11) NOT NULL,
  `nome_loja` varchar(60) NOT NULL,
  `cnpj_loja` varchar(50) NOT NULL,
  `cod_funcionario` int(11) NOT NULL,
  `endereco_loja` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `loja`
--

INSERT INTO `loja` (`cod_loja`, `nome_loja`, `cnpj_loja`, `cod_funcionario`, `endereco_loja`) VALUES
(1, 'Autopeças São João', '12.345.678/0001-99', 1, 'Rua das Indústrias, 123, São Paulo, SP'),
(2, 'Auto Center Nova Era', '23.456.789/0001-88', 2, 'Avenida Paulista, 456, São Paulo, SP'),
(3, 'Peças e Serviços Rodas & Cia', '34.567.890/0001-77', 3, 'Rua do Comércio, 789, Rio de Janeiro, RJ'),
(4, 'Mercado Automotivo Central', '45.678.901/0001-66', 4, 'Rua do Sol, 1010, Belo Horizonte, MG'),
(5, 'Autopeças Express', '56.789.012/0001-55', 5, 'Avenida Brasil, 2020, Curitiba, PR'),
(6, 'Peças Rápidas', '67.890.123/0001-44', 6, 'Rua dos Motoristas, 321, Salvador, BA'),
(7, 'Centro Automotivo Max', '78.901.234/0001-33', 7, 'Avenida Getúlio Vargas, 456, Porto Alegre, RS'),
(8, 'Super Autopeças', '89.012.345/0001-22', 8, 'Rua dos Automóveis, 789, Fortaleza, CE'),
(9, 'Auto Peças CarCenter', '90.123.456/0001-11', 9, 'Avenida das Nações, 1000, Recife, PE'),
(10, 'Peças e Pneus Santos', '01.234.567/0001-00', 10, 'Rua da Paz, 234, Campinas, SP'),
(11, 'Loja Auto Parts', '12.345.678/0001-99', 11, 'Avenida das Flores, 123, Rio de Janeiro, RJ'),
(12, 'Autopeças ProDrive', '23.456.789/0001-88', 12, 'Rua Central, 456, São Paulo, SP'),
(13, 'Peças Automotivas Silva', '34.567.890/0001-77', 13, 'Avenida São João, 789, Belo Horizonte, MG'),
(14, 'Loja de Autopeças Premium', '45.678.901/0001-66', 14, 'Rua das Palmeiras, 1010, Curitiba, PR'),
(15, 'Autopeças do Bairro', '56.789.012/0001-55', 15, 'Rua dos Navegantes, 2020, Porto Alegre, RS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL,
  `prazoentrega` varchar(50) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `cod_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`num_pedido`, `prazoentrega`, `cod_cliente`, `cod_funcionario`) VALUES
(1001, '2025-03-01', 1, 3),
(1002, '2025-03-05', 2, 4),
(1003, '2025-03-10', 3, 5),
(1004, '2025-03-12', 4, 6),
(1005, '2025-03-15', 5, 7),
(1006, '2025-03-18', 6, 8),
(1007, '2025-03-20', 7, 9),
(1008, '2025-03-22', 8, 10),
(1009, '2025-03-25', 9, 11),
(1010, '2025-03-28', 10, 12),
(1011, '2025-04-01', 11, 13),
(1012, '2025-04-05', 12, 14),
(1013, '2025-04-07', 13, 15),
(1014, '2025-04-10', 14, 3),
(1015, '2025-04-12', 15, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL,
  `nome_produto` varchar(60) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `cod_fornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `nome_produto`, `qtde`, `valor`, `cod_fornecedor`) VALUES
(1, 'Amortecedor Dianteiro', 50, 120, 1),
(2, 'Pastilha de Freio', 100, 80, 2),
(3, 'Filtro de Ar', 75, 45, 3),
(4, 'Óleo de Motor 5W30', 200, 35, 4),
(5, 'Bateria Automotiva', 40, 250, 5),
(6, 'Pneu 205/55 R16', 60, 350, 6),
(7, 'Correia Dentada', 150, 50, 7),
(8, 'Farol Dianteiro', 30, 150, 8),
(9, 'Paralama Dianteiro', 25, 220, 9),
(10, 'Disco de Freio', 45, 170, 10),
(11, 'Bucha de Suspensão', 60, 30, 11),
(12, 'Coxim de Motor', 80, 60, 12),
(13, 'Velas de Ignição', 120, 25, 13),
(14, 'Radiador de Alumínio', 35, 450, 14),
(15, 'Interruptor de Luz', 90, 15, 15),
(16, 'Bomba de Óleo', 80, 120, 1),
(17, 'Câmbio Automático', 10, 2500, 2),
(18, 'Sensor de Estacionamento', 60, 450, 3),
(19, 'Filtro de Combustível', 90, 50, 4),
(20, 'Interruptor de Luz de Freio', 100, 30, 5),
(21, 'Tampa de Válvula', 70, 70, 6),
(22, 'Correia de Acessórios', 150, 40, 7),
(23, 'Reflexivo Traseiro', 50, 60, 8),
(24, 'Molas Dianteiras', 35, 180, 9),
(25, 'Ponteira de Escape', 80, 120, 10),
(26, 'Lâmpada de Farol', 200, 15, 11),
(27, 'Cabo de Acelerador', 110, 25, 12),
(28, 'Catalisador', 40, 350, 13),
(29, 'Roda de Alumínio', 60, 500, 14),
(30, 'Borracha de Vedação', 200, 10, 15),
(31, 'Filtro de Óleo', 120, 40, 1),
(32, 'Pneu 195/60 R15', 150, 220, 2),
(33, 'Chave de Ignição', 80, 60, 3),
(34, 'Manguela de Freio', 75, 45, 4),
(35, 'Tapete de Carro', 100, 50, 5),
(36, 'Retentor de Motor', 60, 90, 6),
(37, 'Rodízio de Pneus', 85, 200, 7),
(38, 'Bomba de Combustível', 40, 180, 8),
(39, 'Suspensão Traseira', 45, 350, 9),
(40, 'Amortecedor Traseiro', 60, 180, 10),
(41, 'Manete de Freio', 95, 30, 11),
(42, 'Cinto de Segurança', 150, 40, 12),
(43, 'Válvula de Pressão', 50, 100, 13),
(44, 'Kit Embreagem', 35, 350, 14),
(45, 'Painel de Instrumentos', 30, 550, 15),
(46, 'Cabo de Velocidade', 130, 45, 1),
(47, 'Filtro de Ar Condicionado', 90, 60, 2),
(48, 'Conjunto de Juntas', 50, 120, 3),
(49, 'Estribo Lateral', 75, 200, 4),
(50, 'Palhetas de Limpeza', 200, 20, 5),
(51, 'Placa de Absorção', 50, 90, 6),
(52, 'Lanterna Traseira', 110, 140, 7),
(53, 'Câmera de Ar', 150, 25, 8),
(54, 'Pneus de Carga', 80, 400, 9),
(55, 'Capa de Banco', 70, 70, 10),
(56, 'Filtro de Ar Esportivo', 60, 180, 11),
(57, 'Trilho de Banco', 90, 110, 12),
(58, 'Vidro de Porta', 45, 200, 13),
(59, 'Cabos Elétricos', 120, 15, 14),
(60, 'Protetor de Cárter', 50, 150, 15),
(61, 'Válvula Termostática', 90, 80, 1),
(62, 'Disco de Embreagem', 40, 150, 2),
(63, 'Vela de Ignição', 200, 20, 3),
(64, 'Kit de Ferramentas Automotivas', 70, 220, 4),
(65, 'Escapamento', 50, 400, 5),
(66, 'Braço de Suspensão', 60, 250, 6),
(67, 'Arco de Suspensão', 120, 180, 7),
(68, 'Pistão de Motor', 90, 350, 8),
(69, 'Ponteira de Escape Esportiva', 80, 150, 9),
(70, 'Bico Injetor', 150, 80, 10),
(71, 'Filtro de Combustível Esportivo', 40, 100, 11),
(72, 'Mangueira de Combustível', 110, 30, 12),
(73, 'Suspensão a Gás', 75, 500, 13),
(74, 'Porta Malas', 45, 650, 14),
(75, 'Corpo de Borboleta', 60, 150, 15),
(76, 'Pneus 225/50 R17', 80, 270, 1),
(77, 'Calotas de Roda', 100, 40, 2),
(78, 'Bomba de Água', 50, 120, 3),
(79, 'Tampa de Combustível', 120, 35, 4),
(80, 'Reflexivo Dianteiro', 100, 25, 5),
(81, 'Mola de Suspensão', 70, 160, 6),
(82, 'Pneu 195/55 R15', 60, 200, 7),
(83, 'Rádio Automotivo', 80, 350, 8),
(84, 'Alarme Automotivo', 90, 250, 9),
(85, 'Antena Automotiva', 150, 45, 10),
(86, 'Câmera de Segurança Automotiva', 50, 180, 11),
(87, 'Kit de Suspensão', 40, 350, 12),
(88, 'Defletor de Ar', 80, 100, 13),
(89, 'Capô do Motor', 50, 350, 14),
(90, 'Pneu 215/60 R16', 60, 240, 15),
(91, 'Chave de Roda', 150, 20, 1),
(92, 'Módulo de Injeção', 40, 400, 2),
(93, 'Filtro de Combustível de Alta Performance', 80, 150, 3),
(94, 'Sensor de Óleo', 60, 120, 4),
(95, 'Cabo de Freio', 100, 30, 5),
(96, 'Rodas de Aro 16', 120, 350, 6),
(97, 'Filtro de Cabine', 80, 50, 7),
(98, 'Kit de Reparação de Pneus', 50, 40, 8),
(99, 'Sensor de Temperatura', 60, 70, 9),
(100, 'Válvula de Escape', 70, 120, 10),
(101, 'Molas Traseiras', 50, 190, 11),
(102, 'Módulo de Controle', 90, 300, 12),
(103, 'Luz de Reverso', 110, 25, 13),
(104, 'Farol de Neblina', 80, 150, 14),
(105, 'Bomba de Combustível Elétrica', 70, 200, 15),
(106, 'Bujão de Óleo', 150, 30, 1),
(107, 'Rodas 14', 120, 180, 2),
(108, 'Mangueira do Radiador', 80, 100, 3),
(109, 'Sensor de ABS', 60, 250, 4),
(110, 'Fusível Automotivo', 200, 5, 5),
(111, 'Kit de Pneus 16', 50, 600, 6),
(112, 'Coxim de Suspensão', 70, 90, 7),
(113, 'Filtro de Óleo Esportivo', 100, 70, 8),
(114, 'Kit de Direção', 80, 500, 9),
(115, 'Lâmpada LED Automotiva', 150, 20, 10),
(116, 'Comando de Válvula', 40, 250, 11),
(117, 'Tampa de Motor', 60, 450, 12),
(118, 'Pneu de Trilha', 70, 300, 13),
(119, 'Alavanca de Marcha', 90, 80, 14),
(120, 'Capô Esportivo', 50, 600, 15),
(121, 'Cilindro Mestre de Freio', 60, 180, 1),
(122, 'Amortecedor de Suspensão', 100, 150, 2),
(123, 'Radiador de Óleo', 50, 280, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cod_fornecedor`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cod_funcionario`);

--
-- Índices de tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD KEY `num_pedido` (`num_pedido`),
  ADD KEY `cod_produto` (`cod_produto`);

--
-- Índices de tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`cod_loja`),
  ADD KEY `cod_loja` (`cod_funcionario`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`num_pedido`),
  ADD UNIQUE KEY `cod_cliente` (`cod_cliente`,`cod_funcionario`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`),
  ADD KEY `cod_produto` (`cod_fornecedor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `cod_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `cod_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `cod_loja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `num_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `cod_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD CONSTRAINT `item_de_pedido_ibfk_1` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`num_pedido`),
  ADD CONSTRAINT `item_de_pedido_ibfk_2` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
