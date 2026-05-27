-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2026 a las 16:49:27
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtemperaturas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id_lugar` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id_lugar`, `nombre`) VALUES
(1, 'Aula Redes'),
(2, 'Centro de cómputo'),
(3, 'Sala audiovisual'),
(4, 'Cocina'),
(5, 'Clae'),
(6, 'Laboratorío de robótica'),
(7, 'Laboratorío de enfermería'),
(8, 'Aula didactica'),
(9, 'Cafetería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_temperatura`
--

CREATE TABLE `registros_temperatura` (
  `id_registro` bigint(20) NOT NULL,
  `lugares_id_lugar` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `temperatura` decimal(5,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registros_temperatura`
--

INSERT INTO `registros_temperatura` (`id_registro`, `lugares_id_lugar`, `fecha_hora`, `temperatura`) VALUES
(1, 1, '2026-04-28 09:18:38', '26.5'),
(2, 1, '2026-04-28 09:18:50', '26.1'),
(3, 1, '2026-04-28 09:19:00', '26.1'),
(4, 1, '2026-04-28 09:19:13', '26.9'),
(5, 1, '2026-04-28 09:19:24', '26.9'),
(6, 1, '2026-04-28 09:19:35', '26.0'),
(7, 1, '2026-04-28 09:19:46', '26.5'),
(8, 1, '2026-04-28 09:19:57', '26.7'),
(9, 1, '2026-04-28 09:20:08', '26.5'),
(10, 1, '2026-04-28 09:20:20', '26.4'),
(11, 1, '2026-04-28 09:20:34', '25.0'),
(12, 1, '2026-04-28 09:20:46', '25.5'),
(13, 1, '2026-04-28 09:20:57', '25.6'),
(14, 1, '2026-04-28 09:21:08', '25.7'),
(15, 1, '2026-04-28 09:21:18', '25.5'),
(16, 1, '2026-04-28 09:21:29', '25.4'),
(17, 1, '2026-04-28 09:21:40', '25.1'),
(18, 1, '2026-04-28 09:21:51', '25.4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nombre` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `nombre`) VALUES
(2, 'felipe@gmail.com', 'b93339123cc282038351d1fbb6a5f4f6', 'Felipe'),
(3, 'lenin2@gmail.com', '465b26baadcce9779825b5024e8e2b04', 'Lenin Castro'),
(4, 'felipe2@gmail.com', 'ab8c4679b240cb38a32df4fb4642f6ac', 'FelipeRGodinez'),
(5, 'majo@gmail.com', '4cced8f0a0d0fd7d5a2b163cd49ba81a', 'Majo'),
(6, 'majo2@gmail.com', '7434318031b8ad959ceb505b0c6f6ea3', 'Majo'),
(7, 'lenin@gmail.com', '1b4dd1411cf6b4aa54334b7d43264bef', 'Lenin Castro'),
(8, 'lenin3@gmail.com', 'd941e811918bfbc94591fbea8d57dfa8', 'Lenin Castro'),
(9, 'sandoval@gmail.com', '3b2155e8b92902f3a4fd6a72a5a594ea', 'Sandoval');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `registros_temperatura`
--
ALTER TABLE `registros_temperatura`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `fk_registros_temperatura_lugares_idx` (`lugares_id_lugar`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `registros_temperatura`
--
ALTER TABLE `registros_temperatura`
  MODIFY `id_registro` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros_temperatura`
--
ALTER TABLE `registros_temperatura`
  ADD CONSTRAINT `fk_registros_temperatura_lugares` FOREIGN KEY (`lugares_id_lugar`) REFERENCES `lugares` (`id_lugar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
