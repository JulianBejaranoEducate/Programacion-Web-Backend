-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 09:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entidad_financiera`
--

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `persona_id` int(11) NOT NULL,
  `persona_nombre` varchar(25) NOT NULL,
  `persona_apellido` varchar(25) NOT NULL,
  `persona_date` date NOT NULL,
  `persona_documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`persona_id`, `persona_nombre`, `persona_apellido`, `persona_date`, `persona_documento`) VALUES
(1, 'Malory', 'Perez', '2007-07-14', 1137066588),
(2, 'Sebastian', 'Lopez', '2001-11-06', 1137966569),
(3, 'Yosed', 'Sanchez', '2005-10-07', 1137966569);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `producto_nombre` varchar(30) NOT NULL,
  `producto_estado` varchar(30) NOT NULL,
  `producto_requisitos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_nombre`, `producto_estado`, `producto_requisitos`) VALUES
(1, 'Credito Hipotecario', 'En proceso', 'Cedula Ciudadania'),
(2, 'Credito Falabella', 'En revision', 'Recibo del agua');

-- --------------------------------------------------------

--
-- Table structure for table `solicitud`
--

CREATE TABLE `solicitud` (
  `solicitud_id` int(11) NOT NULL,
  `solicitud_nombre` varchar(30) NOT NULL,
  `solicitud_fecha` date NOT NULL,
  `solicitud_tipo` varchar(30) NOT NULL,
  `solicitud_estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solicitud`
--

INSERT INTO `solicitud` (`solicitud_id`, `solicitud_nombre`, `solicitud_fecha`, `solicitud_tipo`, `solicitud_estado`) VALUES
(1, 'Tarjeta Credito', '2024-10-01', 'Bancario', 'En proceso'),
(2, 'Pago Tarjeta Credito', '2023-07-08', 'Bancario DC', 'Rechazado');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `tipo_id` int(11) NOT NULL,
  `tipo_cargo` varchar(30) NOT NULL,
  `tipo_estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_persona`
--

INSERT INTO `tipo_persona` (`tipo_id`, `tipo_cargo`, `tipo_estado`) VALUES
(1, 'Profesor', 'Activo'),
(2, 'Rector', 'Inactivo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`persona_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indexes for table `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`solicitud_id`);

--
-- Indexes for table `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`tipo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `persona_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `solicitud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
