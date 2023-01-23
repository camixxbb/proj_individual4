-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jan-2023 às 14:09
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursos_resilia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `CodAluno` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cpf` varchar(11) DEFAULT NULL,
  `NascData` date DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `CodTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`CodAluno`, `Nome`, `Cpf`, `NascData`, `Endereco`, `CodTurma`) VALUES
(1, 'Kim Kardashian', '16720188704', '1998-12-22', 'Rua Milionaria, Quadra B', 1),
(2, 'Lady Gaga', '17588509732', '1999-12-01', 'Rua Poker Face, casa D', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `CodCurso` int(11) NOT NULL,
  `Turno` varchar(50) DEFAULT NULL,
  `CodProf` int(11) DEFAULT NULL,
  `NomeCurso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`CodCurso`, `Turno`, `CodProf`, `NomeCurso`) VALUES
(1, 'Manhã', 1, 'TypeScript Básico 1'),
(2, 'Tarde', 1, 'TypeScript Básico 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `CodProf` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cpf` varchar(8) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Especializacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`CodProf`, `Nome`, `Cpf`, `Endereco`, `Especializacao`) VALUES
(1, 'Britney Spears', '16720187', 'Rua Perfomance A, casa B', 'TypeScript'),
(2, 'Lana Del Rey', '23590721', 'Rua da Depression, casa A', 'React.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `CodSala` int(11) NOT NULL,
  `CodTurma` int(11) DEFAULT NULL,
  `Turno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`CodSala`, `CodTurma`, `Turno`) VALUES
(1, 1, 'Manhã'),
(2, 1, 'Manhã'),
(3, 2, 'Tarde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `CodTurma` int(11) NOT NULL,
  `CodCurso` int(11) DEFAULT NULL,
  `CodProf` int(11) DEFAULT NULL,
  `Turno` varchar(50) DEFAULT NULL,
  `DataInicio` date DEFAULT NULL,
  `DataConclui` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`CodTurma`, `CodCurso`, `CodProf`, `Turno`, `DataInicio`, `DataConclui`) VALUES
(1, 1, 1, 'Manhã', '2022-03-20', '2022-10-25'),
(2, 1, 2, 'Tarde', '2022-03-20', '2022-10-25');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`CodAluno`),
  ADD KEY `CodTurma` (`CodTurma`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`CodCurso`),
  ADD KEY `CodProf` (`CodProf`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`CodProf`);

--
-- Índices para tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`CodSala`),
  ADD KEY `CodTurma` (`CodTurma`);

--
-- Índices para tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`CodTurma`),
  ADD KEY `CodProf` (`CodProf`),
  ADD KEY `CodCurso` (`CodCurso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `CodAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `CodCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `CodProf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `CodSala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `CodTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`CodTurma`) REFERENCES `turmas` (`CodTurma`);

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`CodProf`) REFERENCES `professores` (`CodProf`);

--
-- Limitadores para a tabela `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`CodTurma`) REFERENCES `turmas` (`CodTurma`);

--
-- Limitadores para a tabela `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`CodProf`) REFERENCES `professores` (`CodProf`),
  ADD CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`CodCurso`) REFERENCES `cursos` (`CodCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
