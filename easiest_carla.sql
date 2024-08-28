-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-08-2024 a las 11:38:29
-- Versión del servidor: 10.11.6-MariaDB-0+deb12u1
-- Versión de PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `easiest_carla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `proveedor` text DEFAULT NULL,
  `mat` varchar(40) NOT NULL,
  `cant` text DEFAULT NULL,
  `med` text DEFAULT NULL,
  `precio` text DEFAULT NULL,
  `descrip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `direcc` text DEFAULT NULL,
  `telf` varchar(9) NOT NULL,
  `obra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edit`
--

CREATE TABLE `edit` (
  `id_emp` int(11) NOT NULL,
  `nom` text NOT NULL,
  `edit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telf` varchar(9) DEFAULT NULL,
  `dni` varchar(12) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `proveedores` text NOT NULL,
  `obra` text NOT NULL,
  `cliente` text NOT NULL,
  `almacen` text NOT NULL,
  `partes` text NOT NULL,
  `passwd` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `recu` int(11) NOT NULL,
  `emp` varchar(40) NOT NULL,
  `nom_emp` varchar(200) NOT NULL,
  `direcc` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telf` varchar(9) NOT NULL,
  `nif` varchar(20) NOT NULL,
  `insta` text DEFAULT NULL,
  `face` text DEFAULT NULL,
  `passwd` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `obras` varchar(50) NOT NULL,
  `lug` varchar(50) DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `cliente` text DEFAULT NULL,
  `f_ini` text DEFAULT NULL,
  `estado` text DEFAULT 'EP',
  `f_fin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partes`
--

CREATE TABLE `partes` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `obra` text DEFAULT NULL,
  `fecha` text NOT NULL,
  `h_ini` text NOT NULL,
  `h_fin` text NOT NULL,
  `descrip` text DEFAULT NULL COMMENT 'descripción',
  `empleado` text DEFAULT NULL,
  `id_emp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `nif` varchar(20) NOT NULL,
  `direcc` text DEFAULT NULL,
  `telf` int(9) NOT NULL,
  `mat` varchar(500) DEFAULT NULL COMMENT 'Tipo de materiales que ofrece',
  `transp` varchar(2) DEFAULT NULL,
  `pago` varchar(2) DEFAULT NULL COMMENT 'Si permite pago a plazos',
  `n_cuenta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partes`
--
ALTER TABLE `partes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `partes`
--
ALTER TABLE `partes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
