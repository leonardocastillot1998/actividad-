-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2024 a las 02:13:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre`, `telefono`, `email`, `contrasena`) VALUES
(100, 'James', 300, '', ''),
(101, 'Camila', 400, '', ''),
(102, 'Ruben', 500, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_admin`, `nombre`, `telefono`, `correo`, `direccion`, `contrasena`) VALUES
(200, 100, 'Francisco', 600, 'Elfranc32@gmail.com', '', ''),
(201, 101, 'Felipe', 601, 'Pipe364@gmail.com', '', ''),
(202, 102, 'Manuela', 602, 'Manu_aristi@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_info_entrenadores`
--

CREATE TABLE `cliente_info_entrenadores` (
  `cc_cliente` int(11) NOT NULL,
  `cod_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente_info_entrenadores`
--

INSERT INTO `cliente_info_entrenadores` (`cc_cliente`, `cod_info`) VALUES
(200, 2000),
(201, 2001),
(202, 2002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_recomendaciones`
--

CREATE TABLE `cliente_recomendaciones` (
  `cc_cliente` int(11) NOT NULL,
  `cod_recomendacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente_recomendaciones`
--

INSERT INTO `cliente_recomendaciones` (`cc_cliente`, `cod_recomendacion`) VALUES
(200, 1001),
(201, 1002),
(202, 1003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `id_entrenador` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`id_entrenador`, `id_admin`, `nombre`, `telefono`, `correo`, `especialidad`) VALUES
(300, 100, 'Daniel', 700, 'Dani_Fitness@gmail.com', 'Hypertrofia'),
(301, 101, 'Daniela', 701, 'Daniela1982@gmail.com', 'Spining'),
(302, 102, 'Sebastian', 702, 'Sebasroman18@gmail.com', 'Nutricion e Hypertrofia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_entrenadores`
--

CREATE TABLE `info_entrenadores` (
  `cc_entrenador` int(11) NOT NULL,
  `cod_info` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `info_entrenadores`
--

INSERT INTO `info_entrenadores` (`cc_entrenador`, `cod_info`, `descripcion`) VALUES
(300, 2000, 'Experto en fuerza mecanica'),
(301, 2001, 'Experto en spinig'),
(302, 2002, 'Nutricionista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendaciones`
--

CREATE TABLE `recomendaciones` (
  `cod_recomendacion` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recomendaciones`
--

INSERT INTO `recomendaciones` (`cod_recomendacion`, `nombre`, `descripcion`) VALUES
(1001, 'Nutricion adelgazamiento', 'Deficit calorico'),
(1002, 'Nutricion volumen muscular', 'Superhabit calorico'),
(1003, 'Ejercicios hypertrofia', 'bastante peso y al fallo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `cod_admin` (`id_admin`);

--
-- Indices de la tabla `cliente_info_entrenadores`
--
ALTER TABLE `cliente_info_entrenadores`
  ADD KEY `cc_cliente` (`cc_cliente`),
  ADD KEY `cod_info` (`cod_info`);

--
-- Indices de la tabla `cliente_recomendaciones`
--
ALTER TABLE `cliente_recomendaciones`
  ADD KEY `cc_cliente` (`cc_cliente`),
  ADD KEY `cod_recomendacion` (`cod_recomendacion`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`id_entrenador`),
  ADD KEY `cod_admin` (`id_admin`);

--
-- Indices de la tabla `info_entrenadores`
--
ALTER TABLE `info_entrenadores`
  ADD PRIMARY KEY (`cod_info`),
  ADD KEY `cc_entrenador` (`cc_entrenador`);

--
-- Indices de la tabla `recomendaciones`
--
ALTER TABLE `recomendaciones`
  ADD PRIMARY KEY (`cod_recomendacion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`);

--
-- Filtros para la tabla `cliente_info_entrenadores`
--
ALTER TABLE `cliente_info_entrenadores`
  ADD CONSTRAINT `cliente_info_entrenadores_ibfk_1` FOREIGN KEY (`cc_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `cliente_info_entrenadores_ibfk_2` FOREIGN KEY (`cod_info`) REFERENCES `info_entrenadores` (`cod_info`);

--
-- Filtros para la tabla `cliente_recomendaciones`
--
ALTER TABLE `cliente_recomendaciones`
  ADD CONSTRAINT `cliente_recomendaciones_ibfk_1` FOREIGN KEY (`cc_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `cliente_recomendaciones_ibfk_2` FOREIGN KEY (`cod_recomendacion`) REFERENCES `recomendaciones` (`cod_recomendacion`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`);

--
-- Filtros para la tabla `info_entrenadores`
--
ALTER TABLE `info_entrenadores`
  ADD CONSTRAINT `info_entrenadores_ibfk_1` FOREIGN KEY (`cc_entrenador`) REFERENCES `entrenador` (`id_entrenador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
