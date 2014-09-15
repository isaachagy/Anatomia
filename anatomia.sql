-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2014 a las 01:47:38
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `anatomia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abdomen`
--

CREATE TABLE IF NOT EXISTS `abdomen` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `abdomen`
--

INSERT INTO `abdomen` (`id`, `tipos`, `nombre`, `descripcion`) VALUES
(3, 'Arteria', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cc`
--

CREATE TABLE IF NOT EXISTS `cc` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `cc`
--

INSERT INTO `cc` (`id`, `tipos`, `nombre`, `descripcion`) VALUES
(17, 'Arteria', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dorso`
--

CREATE TABLE IF NOT EXISTS `dorso` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `dorso`
--

INSERT INTO `dorso` (`id`, `tipos`, `nombre`, `descripcion`) VALUES
(3, 'Arteria', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extinf`
--

CREATE TABLE IF NOT EXISTS `extinf` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `extinf`
--

INSERT INTO `extinf` (`id`, `tipos`, `nombre`, `descripcion`) VALUES
(4, 'Arteria', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extsup`
--

CREATE TABLE IF NOT EXISTS `extsup` (
`id` int(11) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelvis`
--

CREATE TABLE IF NOT EXISTS `pelvis` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `tipo`) VALUES
('Arteria', 'Arteria'),
('Articulacion', 'Articulacion'),
('Hueso', 'Hueso'),
('Linfatico', 'Linfatico'),
('Musculo', 'Musculo'),
('Nervio', 'Nervio'),
('Organo', 'Organo'),
('Vena', 'Vena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torax`
--

CREATE TABLE IF NOT EXISTS `torax` (
`id` int(20) NOT NULL,
  `tipos` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `torax`
--

INSERT INTO `torax` (`id`, `tipos`, `nombre`, `descripcion`) VALUES
(99, 'Arteria', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abdomen`
--
ALTER TABLE `abdomen`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `cc`
--
ALTER TABLE `cc`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `dorso`
--
ALTER TABLE `dorso`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `extinf`
--
ALTER TABLE `extinf`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `extsup`
--
ALTER TABLE `extsup`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `pelvis`
--
ALTER TABLE `pelvis`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `torax`
--
ALTER TABLE `torax`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abdomen`
--
ALTER TABLE `abdomen`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cc`
--
ALTER TABLE `cc`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `dorso`
--
ALTER TABLE `dorso`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `extinf`
--
ALTER TABLE `extinf`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `extsup`
--
ALTER TABLE `extsup`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pelvis`
--
ALTER TABLE `pelvis`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `torax`
--
ALTER TABLE `torax`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
