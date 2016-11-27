-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2016 a las 00:29:25
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `smartbus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `1`
--

CREATE TABLE `1` (
  `id_r` int(3) NOT NULL,
  `id_b` varchar(255) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2`
--

CREATE TABLE `2` (
  `id_r` int(3) NOT NULL,
  `id_b` varchar(255) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `3`
--

CREATE TABLE `3` (
  `id_r` int(3) NOT NULL,
  `id_b` varchar(255) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `3`
--

INSERT INTO `3` (`id_r`, `id_b`, `tiempo`) VALUES
(101, 'a:1', '2016-10-24 20:19:13'),
(102, 'a:2', '2016-10-24 20:21:22'),
(103, 'a:3', '2016-10-24 20:21:22'),
(104, 'a:4', '2016-10-24 20:21:22'),
(105, 'a:5', '2016-10-24 20:21:22'),
(106, 'a:6', '2016-10-24 20:21:22'),
(107, 'a:7', '2016-10-24 20:21:22'),
(108, 'a:8', '2016-10-24 20:21:22'),
(109, 'a:9', '2016-10-24 20:21:22'),
(110, 'a:10', '2016-10-24 20:21:22'),
(111, 'a:11', '2016-10-24 20:21:22'),
(112, 'a:12', '2016-10-24 20:21:22'),
(113, 'a:13', '2016-10-24 20:21:22'),
(114, 'a:14', '2016-10-24 20:21:22'),
(115, 'a:15', '2016-10-24 20:21:22'),
(116, 'a:16', '2016-10-24 20:21:22'),
(117, 'a:17', '2016-10-24 20:21:22'),
(118, 'a:18', '2016-10-24 20:21:22'),
(119, 'a:19', '2016-10-24 20:21:22'),
(120, 'a:20', '2016-10-24 20:21:22'),
(122, 'a:21', '2016-10-24 20:21:22'),
(301, 'c:1', '2016-10-24 20:22:43'),
(302, 'c:2', '2016-10-24 20:23:17'),
(303, 'c:3', '2016-10-24 20:23:17'),
(304, 'c:4', '2016-10-24 20:23:17'),
(305, 'c:5', '2016-10-24 20:23:17'),
(306, 'c:6', '2016-10-24 20:23:17'),
(307, 'c:7', '2016-10-24 20:23:17'),
(308, 'c:8', '2016-10-24 20:23:17'),
(309, 'c:9', '2016-10-24 20:23:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buses`
--

CREATE TABLE `buses` (
  `id_r` int(3) NOT NULL,
  `id_b` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_e` int(1) UNSIGNED NOT NULL,
  `nombre_e` text NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_e`, `nombre_e`, `color`) VALUES
(1, 'FENUR S.A.', '#E73C00'),
(2, 'VIÑA BUS S.A.', '#008000'),
(3, 'SOL Y MAR S.A.', '#0070B8'),
(4, 'VIÑA BUS S.A.', '#1034A6'),
(5, 'BUSES DEL GRAN VALPARAISO S.A.', '#7FFF00'),
(6, 'BUSES DEL GRAN VALPARAISO S.A.', '#fdfd96'),
(7, 'TOP TUR S.A.', '#FF0000'),
(8, 'TROLEBUSES S.A.', '#2E8B57'),
(9, 'BUSES DEL GRAN VALPARAISO S.A.', '#FFD700'),
(10, 'CODETRAN S.A.', '#8B0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paraderos`
--

CREATE TABLE `paraderos` (
  `id_p` int(255) NOT NULL,
  `orientacion` text NOT NULL,
  `distancia` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `ciudad` text NOT NULL,
  `region` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paraderos`
--

INSERT INTO `paraderos` (`id_p`, `orientacion`, `distancia`, `direccion`, `ciudad`, `region`) VALUES
(1, 'IDA', 30000, 'AV ESPAÑA 1680', 'VALPARAISO', 'VALPARAISO'),
(2, 'IDA', 30435, 'LOS CARRERA 221', 'QUILPUE', 'VALPARAISO'),
(3, 'VUELTA', 30876, 'AV ESPAÑA 666', 'VALPARAISO', 'VALPARAISO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorridos`
--

CREATE TABLE `recorridos` (
  `id_e` int(1) NOT NULL,
  `id_r` int(3) NOT NULL,
  `direccion_i` text NOT NULL,
  `direccion_v` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recorridos`
--

INSERT INTO `recorridos` (`id_e`, `id_r`, `direccion_i`, `direccion_v`) VALUES
(1, 101, 'PUERTO', 'PEÑABLANCA'),
(1, 102, 'PUERTO', 'VILLA ALEMANA'),
(1, 103, 'PUERTO', 'PEUMO'),
(1, 104, 'PUERTO', 'CUMMING'),
(1, 105, 'PLAZA VICTORIA', 'PEÑABLANCA'),
(1, 106, 'PLAYA ANCHA', 'TRONCOS VIEJOS'),
(1, 107, 'PLAYA ANCHA', 'TRONCOS VIEJOS'),
(1, 108, 'ADUANA', 'MENA'),
(1, 109, 'PLAYA ANCHA', 'TRONCOS VIEJOS'),
(1, 110, 'ADUANA', 'PEÑABLANCA'),
(1, 111, 'PLAYA ANCHA', 'HOSPITAL'),
(1, 112, 'PLAYA ANCHA', 'LOS PINOS'),
(1, 113, 'PLAYA ANCHA', 'BELLOTO 2000'),
(1, 114, 'ADUANA', 'LAS VEGAS'),
(1, 115, 'PLAYA ANCHA', 'BELLOTO SUR'),
(1, 116, 'CENTRO VILLA ALEMANA', 'HUAHUALI'),
(1, 117, 'CENTRO QUILPUE', 'EL RETIRO'),
(1, 119, 'POMPEYA', 'PEÑABLANCA'),
(1, 120, 'CENTRO VILLA ALEMANA', 'MATURANA'),
(1, 121, 'CANAL CHACAO', 'BELLOTO SUR'),
(1, 122, 'LOS PINOS', 'LAS VEGAS'),
(1, 124, 'ALTO EL ROCIO', 'PEÑABLANCA'),
(1, 125, 'BELLOTO NORTE', 'HOSPITAL'),
(1, 126, 'CENTRO DE QUILPUE', 'EL RETIRO'),
(2, 201, 'ADUANA', 'SANTA JULIA - MIRAFLORES'),
(2, 202, 'ADUANA', 'GLORIAS NAVALES - MIRAFLORES'),
(2, 203, 'ADUANA', 'EL SALTO'),
(2, 204, 'ADUANA', 'FORESTAL'),
(2, 205, 'ADUANA', 'MIRAFLORES - V. INDEPENDENCIA'),
(2, 207, 'ESPERANZA', 'ACHUPALLAS'),
(2, 208, 'PLAZA VICTORIA', 'MIRAFLORES-RECREO'),
(2, 209, 'ADUANA', 'MIRAFLORES'),
(2, 210, 'ADUANA', 'MIRADOR DE REÑACA'),
(2, 211, 'ADUANA', 'SANTA JULIA - SANTA INES'),
(2, 212, 'ADUANA', 'SANTA JULIA - MIRAFLORES'),
(2, 213, 'ADUANA', 'MIRADOR DE REÑACA'),
(2, 214, 'ADUANA', 'SANTA JULIA - SANTA INES'),
(2, 215, 'CERRO TORO', 'GOMEZ CARREÑO'),
(2, 216, 'MESINA', 'GOMEZ CARREÑO'),
(3, 301, 'JARDIN DEL MAR', 'PEÑABLANCA'),
(3, 302, 'CONCON', 'PEÑABLANCA'),
(3, 303, 'CONCON', 'PEÑABLANCA'),
(3, 304, 'GOMEZ CARREÑO', 'GUMERCINDO'),
(3, 305, 'EL OLIVAR - CONCON', 'PEÑABLANCA'),
(3, 306, 'EL OLIVAR - GOMEZ CARREÑO', 'PEÑABLANCA'),
(3, 307, 'CONCON', 'GUMERCINDO'),
(3, 308, 'MIRAFLORES', 'PEÑABLANCA'),
(3, 309, 'PLACILLA', 'PEÑABLANCA'),
(4, 401, 'PLACERES', 'REÑACA ALTO - SANTA JULIA'),
(4, 402, 'CONCON', 'PLACILLA'),
(4, 403, 'LAS PALMAS', 'EL OLIVAR'),
(4, 404, 'GOMEZ CARREÑO', 'FORESTAL'),
(4, 405, 'JARDIN DEL MAR - REÑACA', 'FORESTAL - GOMEZ CARREÑO'),
(4, 406, 'REÑACA ALTO', 'PLACILLA - AGUA SANTA - GLORIAS NAVALES'),
(4, 407, 'LOS PLACERES', 'REÑACA ALTO - JUAN PABLO SEGUNDO'),
(4, 409, 'CHORRILLOS', 'FORESTAL'),
(4, 410, 'LOS PLACERES', 'REÑACA ALTO'),
(4, 411, 'LOS PLACERES', 'REÑACA ALTO'),
(4, 412, 'FORESTAL', 'VILLA RUKAN - JARDIN DEL MAR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_e`);

--
-- Indices de la tabla `paraderos`
--
ALTER TABLE `paraderos`
  ADD PRIMARY KEY (`id_p`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_e` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `paraderos`
--
ALTER TABLE `paraderos`
  MODIFY `id_p` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
