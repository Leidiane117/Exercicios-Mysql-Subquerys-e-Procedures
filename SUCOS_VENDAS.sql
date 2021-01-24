-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.18 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.6096
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para sucos_vendas
DROP DATABASE IF EXISTS `sucos_vendas`;
CREATE DATABASE IF NOT EXISTS `sucos_vendas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sucos_vendas`;

-- Copiando estrutura para tabela sucos_vendas.itens_notas_fiscais
DROP TABLE IF EXISTS `itens_notas_fiscais`;
CREATE TABLE IF NOT EXISTS `itens_notas_fiscais` (
  `NUMERO` int(11) NOT NULL,
  `CODIGO_DO_PRODUTO` varchar(10) NOT NULL,
  `QUANTIDADE` int(11) NOT NULL,
  `PRECO` float NOT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO_DO_PRODUTO`),
  KEY `CODIGO_DO_PRODUTO` (`CODIGO_DO_PRODUTO`),
  CONSTRAINT `itens_notas_fiscais_ibfk_1` FOREIGN KEY (`CODIGO_DO_PRODUTO`) REFERENCES `tabela_de_produtos` (`CODIGO_DO_PRODUTO`),
  CONSTRAINT `itens_notas_fiscais_ibfk_2` FOREIGN KEY (`NUMERO`) REFERENCES `notas_fiscais` (`NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sucos_vendas.itens_notas_fiscais: ~100 rows (aproximadamente)
DELETE FROM `itens_notas_fiscais`;
/*!40000 ALTER TABLE `itens_notas_fiscais` DISABLE KEYS */;
INSERT INTO `itens_notas_fiscais` (`NUMERO`, `CODIGO_DO_PRODUTO`, `QUANTIDADE`, `PRECO`) VALUES
	(100, '1013793', 63, 24.01),
	(100, '1101035', 26, 9.0105),
	(100, '520380', 67, 12.011),
	(100, '773912', 66, 8.008),
	(101, '1000889', 35, 6.309),
	(101, '479745', 65, 3.768),
	(102, '1101035', 84, 9.0105),
	(102, '235653', 37, 3.8595),
	(102, '394479', 74, 8.409),
	(103, '520380', 29, 12.011),
	(104, '788975', 66, 18.011),
	(105, '1037797', 98, 16.008),
	(105, '1040107', 57, 4.555),
	(105, '695594', 82, 28.512),
	(106, '1004327', 19, 19.51),
	(106, '773912', 11, 8.008),
	(106, '826490', 24, 6.3105),
	(107, '1096818', 91, 7.7105),
	(107, '229900', 12, 4.211),
	(107, '394479', 60, 8.409),
	(108, '1013793', 70, 24.01),
	(109, '231776', 18, 13.312),
	(109, '243083', 85, 10.512),
	(109, '812829', 11, 2.808),
	(110, '1002767', 24, 8.41),
	(110, '1013793', 24, 24.01),
	(110, '231776', 84, 13.312),
	(111, '1086543', 28, 11.0105),
	(112, '229900', 20, 4.211),
	(112, '243083', 73, 10.512),
	(112, '326779', 87, 16.5105),
	(112, '826490', 38, 6.3105),
	(113, '1004327', 15, 19.51),
	(113, '1086543', 55, 11.0105),
	(113, '290478', 88, 4.56),
	(113, '773912', 95, 8.008),
	(114, '1004327', 42, 19.51),
	(114, '1037797', 40, 16.008),
	(114, '231776', 35, 13.312),
	(114, '812829', 30, 2.808),
	(115, '1078680', 36, 5.1795),
	(115, '520380', 42, 12.011),
	(116, '1013793', 73, 24.01),
	(116, '1037797', 82, 16.008),
	(117, '1000889', 70, 6.309),
	(117, '1004327', 44, 19.51),
	(117, '788975', 99, 18.011),
	(118, '1022450', 61, 38.012),
	(118, '1037797', 82, 16.008),
	(118, '229900', 49, 4.211),
	(118, '783663', 22, 7.709),
	(119, '723457', 22, 4.912),
	(120, '235653', 67, 3.8595),
	(121, '1002334', 65, 7.004),
	(121, '1096818', 56, 7.7105),
	(121, '723457', 94, 4.912),
	(122, '746596', 17, 19.505),
	(123, '1002767', 48, 8.41),
	(123, '520380', 79, 12.011),
	(124, '1022450', 70, 38.012),
	(125, '1002767', 85, 8.41),
	(125, '231776', 17, 13.312),
	(125, '394479', 31, 8.409),
	(126, '1078680', 32, 5.1795),
	(127, '812829', 18, 2.808),
	(128, '1078680', 73, 5.1795),
	(128, '1096818', 81, 7.7105),
	(128, '394479', 72, 8.409),
	(129, '783663', 77, 7.709),
	(129, '826490', 57, 6.3105),
	(130, '1004327', 97, 19.51),
	(130, '1041119', 34, 4.904),
	(130, '479745', 61, 3.768),
	(130, '788975', 60, 18.011),
	(131, '1086543', 92, 11.0105),
	(131, '229900', 87, 4.211),
	(132, '1004327', 75, 19.51),
	(132, '229900', 46, 4.211),
	(132, '773912', 69, 8.008),
	(133, '1004327', 16, 19.51),
	(133, '235653', 48, 3.8595),
	(133, '290478', 62, 4.56),
	(133, '394479', 23, 8.409),
	(134, '243083', 96, 10.512),
	(134, '826490', 34, 6.3105),
	(135, '290478', 78, 4.56),
	(135, '773912', 17, 8.008),
	(136, '1086543', 34, 11.0105),
	(136, '520380', 66, 12.011),
	(137, '1041119', 28, 4.904),
	(137, '812829', 10, 2.808),
	(138, '1013793', 35, 24.01),
	(138, '695594', 24, 28.512),
	(138, '773912', 89, 8.008),
	(139, '479745', 55, 3.768),
	(139, '826490', 88, 6.3105),
	(140, '1086543', 81, 11.0105),
	(140, '243083', 89, 10.512),
	(140, '479745', 76, 3.768),
	(141, '1013793', 37, 24.01);
/*!40000 ALTER TABLE `itens_notas_fiscais` ENABLE KEYS */;

-- Copiando estrutura para tabela sucos_vendas.notas_fiscais
DROP TABLE IF EXISTS `notas_fiscais`;
CREATE TABLE IF NOT EXISTS `notas_fiscais` (
  `CPF` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `DATA_VENDA` date DEFAULT NULL,
  `NUMERO` int(11) NOT NULL,
  `IMPOSTO` float NOT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `MATRICULA` (`MATRICULA`),
  KEY `CPF` (`CPF`),
  CONSTRAINT `notas_fiscais_ibfk_1` FOREIGN KEY (`MATRICULA`) REFERENCES `tabela_de_vendedores` (`MATRICULA`),
  CONSTRAINT `notas_fiscais_ibfk_2` FOREIGN KEY (`CPF`) REFERENCES `tabela_de_clientes` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sucos_vendas.notas_fiscais: ~100 rows (aproximadamente)
DELETE FROM `notas_fiscais`;
/*!40000 ALTER TABLE `notas_fiscais` DISABLE KEYS */;
INSERT INTO `notas_fiscais` (`CPF`, `MATRICULA`, `DATA_VENDA`, `NUMERO`, `IMPOSTO`) VALUES
	('7771579779', '00235', '2015-01-01', 100, 0.1),
	('50534475787', '00237', '2015-01-01', 101, 0.12),
	('8502682733', '00236', '2015-01-01', 102, 0.12),
	('5840119709', '00235', '2015-01-01', 103, 0.12),
	('1471156710', '00235', '2015-01-01', 104, 0.12),
	('94387575700', '00236', '2015-01-01', 105, 0.1),
	('3623344710', '00237', '2015-01-01', 106, 0.1),
	('5576228758', '00236', '2015-01-01', 107, 0.1),
	('19290992743', '00237', '2015-01-01', 108, 0.12),
	('94387575700', '00236', '2015-01-01', 109, 0.12),
	('5840119709', '00235', '2015-01-01', 110, 0.12),
	('492472718', '00237', '2015-01-01', 111, 0.1),
	('5840119709', '00236', '2015-01-01', 112, 0.12),
	('50534475787', '00235', '2015-01-01', 113, 0.1),
	('94387575700', '00235', '2015-01-01', 114, 0.1),
	('94387575700', '00236', '2015-01-01', 115, 0.12),
	('50534475787', '00235', '2015-01-01', 116, 0.1),
	('8719655770', '00236', '2015-01-01', 117, 0.12),
	('2600586709', '00235', '2015-01-01', 118, 0.12),
	('3623344710', '00236', '2015-01-01', 119, 0.1),
	('3623344710', '00235', '2015-01-01', 120, 0.1),
	('3623344710', '00235', '2015-01-01', 121, 0.12),
	('5648641702', '00237', '2015-01-01', 122, 0.1),
	('50534475787', '00237', '2015-01-01', 123, 0.12),
	('94387575700', '00235', '2015-01-01', 124, 0.12),
	('5840119709', '00237', '2015-01-01', 125, 0.12),
	('7771579779', '00237', '2015-01-01', 126, 0.12),
	('8502682733', '00236', '2015-01-01', 127, 0.12),
	('5648641702', '00237', '2015-01-01', 128, 0.12),
	('5840119709', '00237', '2015-01-01', 129, 0.12),
	('5576228758', '00236', '2015-01-01', 130, 0.12),
	('5840119709', '00236', '2015-01-01', 131, 0.12),
	('5576228758', '00236', '2015-01-01', 132, 0.1),
	('5576228758', '00235', '2015-01-01', 133, 0.12),
	('1471156710', '00235', '2015-01-01', 134, 0.12),
	('5648641702', '00235', '2015-01-01', 135, 0.12),
	('50534475787', '00236', '2015-01-01', 136, 0.1),
	('19290992743', '00237', '2015-01-01', 137, 0.12),
	('5648641702', '00235', '2015-01-01', 138, 0.1),
	('50534475787', '00236', '2015-01-01', 139, 0.1),
	('2600586709', '00237', '2015-01-01', 140, 0.12),
	('8502682733', '00237', '2015-01-01', 141, 0.1),
	('3623344710', '00236', '2015-01-01', 142, 0.1),
	('8719655770', '00236', '2015-01-01', 143, 0.12),
	('50534475787', '00236', '2015-01-01', 144, 0.12),
	('19290992743', '00235', '2015-01-01', 145, 0.1),
	('5648641702', '00236', '2015-01-01', 146, 0.12),
	('492472718', '00236', '2015-01-01', 147, 0.12),
	('492472718', '00236', '2015-01-01', 148, 0.1),
	('94387575700', '00235', '2015-01-01', 149, 0.12),
	('9283760794', '00236', '2015-01-01', 150, 0.12),
	('8719655770', '00235', '2015-01-01', 151, 0.1),
	('19290992743', '00237', '2015-01-01', 152, 0.1),
	('5576228758', '00237', '2015-01-01', 153, 0.12),
	('50534475787', '00237', '2015-01-01', 154, 0.1),
	('8502682733', '00237', '2015-01-01', 155, 0.1),
	('2600586709', '00237', '2015-01-01', 156, 0.1),
	('94387575700', '00235', '2015-01-01', 157, 0.1),
	('5840119709', '00236', '2015-01-01', 158, 0.1),
	('7771579779', '00237', '2015-01-01', 159, 0.12),
	('2600586709', '00236', '2015-01-01', 160, 0.1),
	('5576228758', '00235', '2015-01-01', 161, 0.1),
	('5840119709', '00235', '2015-01-01', 162, 0.12),
	('7771579779', '00235', '2015-01-01', 163, 0.1),
	('8502682733', '00235', '2015-01-01', 164, 0.1),
	('1471156710', '00235', '2015-01-01', 165, 0.1),
	('8502682733', '00237', '2015-01-01', 166, 0.1),
	('5576228758', '00235', '2015-01-01', 167, 0.1),
	('5576228758', '00235', '2015-01-01', 168, 0.1),
	('5840119709', '00237', '2015-01-01', 169, 0.12),
	('5840119709', '00237', '2015-01-01', 170, 0.12),
	('19290992743', '00237', '2015-01-02', 171, 0.1),
	('9283760794', '00235', '2015-01-02', 172, 0.1),
	('7771579779', '00237', '2015-01-02', 173, 0.12),
	('5576228758', '00235', '2015-01-02', 174, 0.12),
	('9283760794', '00237', '2015-01-02', 175, 0.1),
	('7771579779', '00236', '2015-01-02', 176, 0.1),
	('1471156710', '00236', '2015-01-02', 177, 0.1),
	('3623344710', '00237', '2015-01-02', 178, 0.12),
	('1471156710', '00236', '2015-01-02', 179, 0.12),
	('1471156710', '00237', '2015-01-02', 180, 0.1),
	('94387575700', '00235', '2015-01-02', 181, 0.1),
	('5840119709', '00235', '2015-01-02', 182, 0.1),
	('8719655770', '00237', '2015-01-02', 183, 0.12),
	('9283760794', '00235', '2015-01-02', 184, 0.1),
	('19290992743', '00235', '2015-01-02', 185, 0.12),
	('5576228758', '00236', '2015-01-02', 186, 0.1),
	('8719655770', '00236', '2015-01-02', 187, 0.1),
	('7771579779', '00237', '2015-01-02', 188, 0.1),
	('8719655770', '00236', '2015-01-02', 189, 0.1),
	('5648641702', '00237', '2015-01-02', 190, 0.1),
	('50534475787', '00236', '2015-01-02', 191, 0.12),
	('3623344710', '00237', '2015-01-02', 192, 0.12),
	('8502682733', '00237', '2015-01-02', 193, 0.1),
	('8719655770', '00237', '2015-01-02', 194, 0.12),
	('9283760794', '00236', '2015-01-02', 195, 0.1),
	('5840119709', '00237', '2015-01-02', 196, 0.1),
	('1471156710', '00237', '2015-01-02', 197, 0.12),
	('50534475787', '00235', '2015-01-02', 198, 0.12),
	('8502682733', '00237', '2015-01-02', 199, 0.1);
/*!40000 ALTER TABLE `notas_fiscais` ENABLE KEYS */;

-- Copiando estrutura para tabela sucos_vendas.tabela_de_clientes
DROP TABLE IF EXISTS `tabela_de_clientes`;
CREATE TABLE IF NOT EXISTS `tabela_de_clientes` (
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `ENDERECO_1` varchar(150) DEFAULT NULL,
  `ENDERECO_2` varchar(150) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `DATA_DE_NASCIMENTO` date DEFAULT NULL,
  `IDADE` smallint(6) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_DE_CREDITO` float DEFAULT NULL,
  `VOLUME_DE_COMPRA` float DEFAULT NULL,
  `PRIMEIRA_COMPRA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sucos_vendas.tabela_de_clientes: ~15 rows (aproximadamente)
DELETE FROM `tabela_de_clientes`;
/*!40000 ALTER TABLE `tabela_de_clientes` DISABLE KEYS */;
INSERT INTO `tabela_de_clientes` (`CPF`, `NOME`, `ENDERECO_1`, `ENDERECO_2`, `BAIRRO`, `CIDADE`, `ESTADO`, `CEP`, `DATA_DE_NASCIMENTO`, `IDADE`, `SEXO`, `LIMITE_DE_CREDITO`, `VOLUME_DE_COMPRA`, `PRIMEIRA_COMPRA`) VALUES
	('1471156710', 'Érica Carvalho', 'R. Iriquitia', '', 'Jardins', 'São Paulo', 'SP', '80012212', '1990-09-01', 27, 'F', 170000, 24500, b'0'),
	('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', '', 'Água Santa', 'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 18, 'M', 100000, 20000, b'1'),
	('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 18, 'M', 120000, 22000, b'0'),
	('3623344710', 'Marcos Nougeuira', 'Av. Pastor Martin Luther King Junior', '', 'Inhauma', 'Rio de Janeiro', 'RJ', '22002012', '1995-01-13', 23, 'M', 110000, 22000, b'1'),
	('492472718', 'Eduardo Jorge', 'R. Volta Grande', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '22012002', '1994-07-19', 23, 'M', 75000, 9500, b'1'),
	('50534475787', 'Abel Silva ', 'Rua Humaitá', '', 'Humaitá', 'Rio de Janeiro', 'RJ', '22000212', '1995-09-11', 22, 'M', 170000, 26000, b'0'),
	('5576228758', 'Petra Oliveira', 'R. Benício de Abreu', '', 'Lapa', 'São Paulo', 'SP', '88192029', '1995-11-14', 22, 'F', 70000, 16000, b'1'),
	('5648641702', 'Paulo César Mattos', 'Rua Hélio Beltrão', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '21002020', '1991-08-30', 26, 'M', 120000, 22000, b'0'),
	('5840119709', 'Gabriel Araujo', 'R. Manuel de Oliveira', '', 'Santo Amaro', 'São Paulo', 'SP', '80010221', '1985-03-16', 32, 'M', 140000, 21000, b'1'),
	('7771579779', 'Marcelo Mattos', 'R. Eduardo Luís Lopes', '', 'Brás', 'São Paulo', 'SP', '88202912', '1992-03-25', 25, 'M', 120000, 20000, b'1'),
	('8502682733', 'Valdeci da Silva', 'R. Srg. Édison de Oliveira', '', 'Jardins', 'São Paulo', 'SP', '82122020', '1995-10-07', 22, 'M', 110000, 19000, b'0'),
	('8719655770', 'Carlos Eduardo', 'Av. Gen. Guedes da Fontoura', '', 'Jardins', 'São Paulo', 'SP', '81192002', '1983-12-20', 34, 'M', 200000, 24000, b'0'),
	('9283760794', 'Edson Meilelles', 'R. Pinto de Azevedo', '', 'Cidade Nova', 'Rio de Janeiro', 'RJ', '22002002', '1995-10-07', 22, 'M', 150000, 25000, b'1'),
	('94387575700', 'Walber Lontra', 'R. Cel. Almeida', '', 'Piedade', 'Rio de Janeiro', 'RJ', '22000201', '1989-06-20', 28, 'M', 60000, 12000, b'1'),
	('95939180787', 'Fábio Carvalho', 'R. dos Jacarandás da Península', '', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22002020', '1992-01-05', 16, 'M', 90000, 18000, b'1');
/*!40000 ALTER TABLE `tabela_de_clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela sucos_vendas.tabela_de_produtos
DROP TABLE IF EXISTS `tabela_de_produtos`;
CREATE TABLE IF NOT EXISTS `tabela_de_produtos` (
  `CODIGO_DO_PRODUTO` varchar(10) NOT NULL,
  `NOME_DO_PRODUTO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(20) DEFAULT NULL,
  `TAMANHO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `PRECO_DE_LISTA` float NOT NULL,
  PRIMARY KEY (`CODIGO_DO_PRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sucos_vendas.tabela_de_produtos: ~31 rows (aproximadamente)
DELETE FROM `tabela_de_produtos`;
/*!40000 ALTER TABLE `tabela_de_produtos` DISABLE KEYS */;
INSERT INTO `tabela_de_produtos` (`CODIGO_DO_PRODUTO`, `NOME_DO_PRODUTO`, `EMBALAGEM`, `TAMANHO`, `SABOR`, `PRECO_DE_LISTA`) VALUES
	('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.309),
	('1002334', 'Linha Citros - 1 Litro - Lima/Limão', 'PET', '1 Litro', 'Lima/Limão', 7.004),
	('1002767', 'Videira do Campo - 700 ml - Cereja/Maça', 'Garrafa', '700 ml', 'Cereja/Maça', 8.41),
	('1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51),
	('1013793', 'Videira do Campo - 2 Litros - Cereja/Maça', 'PET', '2 Litros', 'Cereja/Maça', 24.01),
	('1022450', 'Festival de Sabores - 2 Litros - Açai', 'PET', '2 Litros', 'Açai', 38.012),
	('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.008),
	('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.555),
	('1041119', 'Linha Citros - 700 ml - Lima/Limão', 'Garrafa', '700 ml', 'Lima/Limão', 4.904),
	('1078680', 'Frescor do Verão - 470 ml - Manga', 'Garrafa', '470 ml', 'Manga', 5.1795),
	('1086543', 'Linha Refrescante - 1 Litro - Manga', 'PET', '1 Litro', 'Manga', 11.0105),
	('1096818', 'Linha Refrescante - 700 ml - Manga', 'Garrafa', '700 ml', 'Manga', 7.7105),
	('1101035', 'Linha Refrescante - 1 Litro - Morango/Limão', 'PET', '1 Litro', 'Morango/Limão', 9.0105),
	('229900', 'Pedaços de Frutas - 350 ml - Maça', 'Lata', '350 ml', 'Maça', 4.211),
	('231776', 'Festival de Sabores - 700 ml - Açai', 'Garrafa', '700 ml', 'Açai', 13.312),
	('235653', 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml', 'Manga', 3.8595),
	('243083', 'Festival de Sabores - 1,5 Litros - Maracujá', 'PET', '1,5 Litros', 'Maracujá', 10.512),
	('290478', 'Videira do Campo - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56),
	('326779', 'Linha Refrescante - 1,5 Litros - Manga', 'PET', '1,5 Litros', 'Manga', 16.5105),
	('394479', 'Sabor da Montanha - 700 ml - Cereja', 'Garrafa', '700 ml', 'Cereja', 8.409),
	('479745', 'Clean - 470 ml - Laranja', 'Garrafa', '470 ml', 'Laranja', 3.768),
	('520380', 'Pedaços de Frutas - 1 Litro - Maça', 'PET', '1 Litro', 'Maça', 12.011),
	('695594', 'Festival de Sabores - 1,5 Litros - Açai', 'PET', '1,5 Litros', 'Açai', 28.512),
	('723457', 'Festival de Sabores - 700 ml - Maracujá', 'Garrafa', '700 ml', 'Maracujá', 4.912),
	('746596', 'Light - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.505),
	('773912', 'Clean - 1 Litro - Laranja', 'PET', '1 Litro', 'Laranja', 8.008),
	('783663', 'Sabor da Montanha - 700 ml - Morango', 'Garrafa', '700 ml', 'Morango', 7.709),
	('788975', 'Pedaços de Frutas - 1,5 Litros - Maça', 'PET', '1,5 Litros', 'Maça', 18.011),
	('812829', 'Clean - 350 ml - Laranja', 'Lata', '350 ml', 'Laranja', 2.808),
	('826490', 'Linha Refrescante - 700 ml - Morango/Limão', 'Garrafa', '700 ml', 'Morango/Limão', 6.3105),
	('838819', 'Clean - 1,5 Litros - Laranja', 'PET', '1,5 Litros', 'Laranja', 12.008);
/*!40000 ALTER TABLE `tabela_de_produtos` ENABLE KEYS */;

-- Copiando estrutura para tabela sucos_vendas.tabela_de_vendedores
DROP TABLE IF EXISTS `tabela_de_vendedores`;
CREATE TABLE IF NOT EXISTS `tabela_de_vendedores` (
  `MATRICULA` varchar(5) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `PERCENTUAL_COMISSAO` float DEFAULT NULL,
  `DATA_ADMISSAO` date DEFAULT NULL,
  `DE_FERIAS` bit(1) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sucos_vendas.tabela_de_vendedores: ~4 rows (aproximadamente)
DELETE FROM `tabela_de_vendedores`;
/*!40000 ALTER TABLE `tabela_de_vendedores` DISABLE KEYS */;
INSERT INTO `tabela_de_vendedores` (`MATRICULA`, `NOME`, `PERCENTUAL_COMISSAO`, `DATA_ADMISSAO`, `DE_FERIAS`, `BAIRRO`) VALUES
	('00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', b'0', 'Tijuca'),
	('00236', 'Cláudia Morais', 0.08, '2013-09-17', b'1', 'Jardins'),
	('00237', 'Roberta Martins', 0.11, '2017-03-18', b'1', 'Copacabana'),
	('00238', 'Pericles Alves', 0.11, '2016-08-21', b'0', 'Santo Amaro');
/*!40000 ALTER TABLE `tabela_de_vendedores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
