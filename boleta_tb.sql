-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2021 a las 18:29:03
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta_tb`
--

CREATE TABLE `boleta_tb` (
  `Id` int(10) NOT NULL,
  `user_dni` int(8) NOT NULL,
  `fecha` date NOT NULL,
  `monto` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `boleta_tb`
--

INSERT INTO `boleta_tb` (`Id`, `user_dni`, `fecha`, `monto`) VALUES
(1, 12345679, '0000-00-00', 1900.00),
(2, 12345679, '0000-00-00', 1900.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta_tb`
--
ALTER TABLE `boleta_tb`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_dni` (`user_dni`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boleta_tb`
--
ALTER TABLE `boleta_tb`
  ADD CONSTRAINT `boleta_tb_ibfk_1` FOREIGN KEY (`user_dni`) REFERENCES `user_tb` (`Dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
