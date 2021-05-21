-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2021 a las 04:54:21
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurantebar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_Categoria` int(11) NOT NULL,
  `NombreCate` varchar(45) NOT NULL,
  `DescripcionCate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_Categoria`, `NombreCate`, `DescripcionCate`) VALUES
(2, 'Bebidas', 'nada'),
(3, 'Almuerzos', 'nada'),
(5, 'Malteadas', 'Mateadlas '),
(6, 'Hamburguesas', 'pues hamburguesa ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consecutivos`
--

CREATE TABLE `consecutivos` (
  `id_consecutivo` int(11) NOT NULL,
  `Prefijo` varchar(2) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consecutivos`
--

INSERT INTO `consecutivos` (`id_consecutivo`, `Prefijo`, `Numero`, `Descripción`) VALUES
(1, 'CL', 133, 'Consecutivo Pedidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `iddetalle_pedidos` int(11) NOT NULL,
  `num_pedido` varchar(45) NOT NULL,
  `producto` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `total` double NOT NULL,
  `observacion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`iddetalle_pedidos`, `num_pedido`, `producto`, `categoria`, `cantidad`, `precio`, `total`, `observacion`) VALUES
(1, '181', 'Prueba', 'Comida', 1, 40999, 40999, NULL),
(2, '7377', 'Prueba', 'Comida', 1, 40999, 40999, NULL),
(3, '7377', 'hit', 'Bebidas', 1, 2000, 2000, NULL),
(6, '8873', 'Prueba', 'Comida', 1, 40999, 40999, NULL),
(7, '8873', 'hit', 'Bebidas', 1, 2000, 2000, NULL),
(8, '8873', 'Prueba', 'Comida', 1, 40999, 40999, NULL),
(10, '197', 'hit', 'Bebidas', 1, 2000, 2000, NULL),
(11, '7654', 'Terruño', 'Hamburguesas', 1, 8000, 8000, NULL),
(13, '908', 'hit', 'Bebidas', 1, 2000, 2000, NULL),
(14, 'CL121', 'Arroz con pollo', '(Almuerzos)', 1, 5000, 5000, NULL),
(15, 'CL121', 'Cocacola', '(Bebidas)', 1, 2000, 2000, NULL),
(16, 'CL121', 'asd', '(Malteadas)', 1, 3444, 3444, NULL),
(17, 'CL121', 'Arroz con pollo', '(Almuerzos)', 1, 5000, 5000, NULL),
(18, 'CL122', 'asd', '(Malteadas)', 1, 3444, 3444, NULL),
(19, 'CL122', 'Arroz con pollo', '(Almuerzos)', 1, 5000, 5000, NULL),
(20, 'CL122', 'dfg', '(Bebidas)', 1, 234, 234, NULL),
(21, 'CL126', 'Arroz con pollo', '(Almuerzos)', 1, 5000, 5000, NULL),
(24, 'CL128', 'Cocacola', '(Bebidas)', 1, 2000, 2000, NULL),
(25, 'CL128', 'asd', '(Malteadas)', 1, 3444, 3444, NULL),
(41, 'CL129', 'Cocacola', '(Bebidas)', 1, 2000, 2000, NULL),
(42, 'CL129', 'Arroz con pollo', '(Almuerzos)', 1, 5000, 5000, NULL),
(43, 'CL129', 'Cocacola', '(Bebidas)', 5, 2000, 10000, NULL),
(45, 'CL129', 'KinKong', '(Hamburguesas)', 1, 15000, 15000, NULL),
(46, 'CL129', 'Cocacola', '(Bebidas)', 1, 2000, 2000, NULL),
(47, 'CL127', 'Cocacola', 'Bebidas', 1, 2000, 2000, NULL),
(48, 'CL127', 'Arroz con pollo', 'Almuerzos', 1, 5000, 5000, NULL),
(49, 'CL130', 'KinKong', 'Hamburguesas', 1, 15000, 15000, NULL),
(50, 'CL130', 'dfg', 'Bebidas', 1, 234, 234, NULL),
(51, 'CL130', 'Arroz con pollo', 'Almuerzos', 1, 5000, 5000, NULL),
(52, 'CL127', 'KinKong', 'Hamburguesas', 1, 15000, 15000, NULL),
(53, 'CL133', 'Arroz con pollo', 'Almuerzos', 1, 5000, 5000, NULL),
(54, 'CL133', 'KinKong', 'Hamburguesas', 1, 15000, 15000, NULL),
(55, 'CL133', 'Cocacola', 'Bebidas', 1, 2000, 2000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `idmesas` int(11) NOT NULL,
  `idzonas` int(11) NOT NULL,
  `nummesa` int(11) NOT NULL,
  `numpedido` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`idmesas`, `idzonas`, `nummesa`, `numpedido`) VALUES
(2, 1, 1, '0'),
(3, 1, 2, 'CL132'),
(4, 1, 3, 'CL127'),
(5, 3, 1, '0'),
(6, 3, 2, 'CL133'),
(7, 3, 3, 'CL128'),
(8, 3, 4, 'CL130'),
(9, 3, 5, 'CL129');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `num_pedido` varchar(100) NOT NULL,
  `mesero` varchar(60) NOT NULL,
  `mesa` int(11) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `confirmado` int(11) NOT NULL DEFAULT 0,
  `pagado` int(11) NOT NULL DEFAULT 0,
  `FechaModi` datetime DEFAULT NULL,
  `ModiPor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `num_pedido`, `mesero`, `mesa`, `zona`, `fecha`, `confirmado`, `pagado`, `FechaModi`, `ModiPor`) VALUES
(1, '8769', 'Adriana', 1, '0', '2020-11-07 00:00:00', 0, 0, NULL, NULL),
(2, '4367', 'Adriana', 1, '0', '2020-11-13 00:00:00', 0, 0, NULL, NULL),
(3, '181', 'Adriana', 1, '0', '2020-11-13 00:00:00', 1, 1, NULL, NULL),
(4, '7377', 'Adriana', 1, '0', '2020-11-19 00:00:00', 1, 1, NULL, NULL),
(5, '8873', 'Adriana', 1, '0', '2021-01-31 00:00:00', 1, 1, NULL, NULL),
(6, '2898', 'Adriana', 2, '0', '2021-01-31 00:00:00', 1, 0, NULL, NULL),
(7, '8027', 'Adriana', 1, '0', '2021-01-31 00:00:00', 0, 0, NULL, NULL),
(8, '197', 'Adriana', 1, '0', '2021-02-01 00:00:00', 1, 1, NULL, NULL),
(9, '942', 'Adriana', 3, '0', '2021-02-01 00:00:00', 0, 0, NULL, NULL),
(10, '7654', 'Adriana', 3, '0', '2021-02-01 00:00:00', 0, 0, NULL, NULL),
(11, '908', 'Adriana', 3, '0', '2021-02-01 00:00:00', 0, 0, NULL, NULL),
(12, '1831', 'Adriana', 3, '0', '2021-02-26 00:00:00', 0, 0, NULL, NULL),
(13, '1', 'Adriana', 3, '3', '2021-05-06 14:16:52', 0, 0, NULL, NULL),
(14, 'CL101', 'Adriana', 3, '1', '2021-05-06 14:17:59', 0, 0, NULL, NULL),
(15, 'CL102', 'Adriana', 2, '3', '2021-05-06 14:38:28', 0, 0, NULL, NULL),
(16, 'CL103', 'Adriana', 5, '3', '2021-05-06 14:41:16', 0, 0, NULL, NULL),
(17, 'CL104', 'Adriana', 1, '1', '2021-05-06 14:41:33', 0, 0, NULL, NULL),
(18, 'CL105', 'Adriana', 1, '3', '2021-05-06 14:43:20', 0, 0, NULL, NULL),
(19, 'CL106', 'Adriana', 4, '3', '2021-05-06 14:43:24', 0, 0, NULL, NULL),
(20, 'CL107', 'Adriana', 2, '1', '2021-05-06 14:47:34', 0, 0, NULL, NULL),
(21, 'CL108', 'Adriana', 3, '1', '2021-05-06 14:49:10', 0, 0, NULL, NULL),
(22, 'CL109', 'Adriana', 3, '1', '2021-05-06 14:51:52', 0, 0, NULL, NULL),
(23, 'CL110', 'Adriana', 3, '1', '2021-05-06 14:54:03', 0, 0, NULL, NULL),
(24, 'CL111', 'Adriana', 3, '1', '2021-05-06 14:55:57', 0, 0, NULL, NULL),
(25, 'CL112', 'Adriana', 3, '1', '2021-05-06 14:56:36', 0, 0, NULL, NULL),
(26, 'CL113', 'Adriana', 3, '1', '2021-05-06 14:57:24', 0, 0, NULL, NULL),
(27, 'CL114', 'Juan', 3, '1', '2021-05-06 14:59:19', 0, 0, NULL, NULL),
(28, 'CL115', 'Juan', 3, '1', '2021-05-06 15:04:21', 0, 0, NULL, NULL),
(29, 'CL116', 'Juan', 3, '1', '2021-05-06 15:04:47', 0, 0, NULL, NULL),
(30, 'CL117', 'Juan', 3, '1', '2021-05-06 15:05:22', 0, 0, NULL, NULL),
(31, 'CL118', 'Juan', 3, '1', '2021-05-06 15:06:19', 0, 0, NULL, NULL),
(32, 'CL119', 'Juan', 3, '1', '2021-05-06 15:06:34', 0, 0, NULL, NULL),
(33, 'CL120', 'Juan', 3, '1', '2021-05-06 15:06:43', 0, 0, NULL, NULL),
(34, 'CL121', 'Juan', 3, '1', '2021-05-06 15:09:20', 0, 0, NULL, NULL),
(35, 'CL122', 'Adriana', 3, '3', '2021-05-06 16:25:40', 1, 0, NULL, NULL),
(36, 'CL123', 'Adriana', 5, '3', '2021-05-06 17:00:52', 0, 0, NULL, NULL),
(37, 'CL124', 'Adriana', 1, '1', '2021-05-07 08:29:37', 0, 0, NULL, NULL),
(38, 'CL125', 'Adriana', 4, '3', '2021-05-07 14:58:24', 0, 0, NULL, NULL),
(39, 'CL126', 'Adriana', 1, '3', '2021-05-10 23:32:54', 1, 0, NULL, NULL),
(40, 'CL127', 'Adriana', 3, '1', '2021-05-10 23:44:14', 1, 0, '2021-05-19 19:44:30', 'Adriana'),
(41, 'CL128', 'Adriana', 3, '3', '2021-05-15 16:58:36', 1, 0, '2021-05-19 19:44:43', 'Adriana'),
(42, 'CL129', 'JuanTenjo', 5, '3', '2021-05-18 21:35:42', 1, 0, '2021-05-19 19:43:54', 'JuanTenjo'),
(43, 'CL130', 'Adriana', 4, '3', '2021-05-19 19:43:40', 1, 0, '2021-05-19 19:43:51', 'Adriana'),
(45, 'CL133', 'Adriana', 2, '3', '2021-05-19 20:51:48', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_Producto` int(11) NOT NULL,
  `ID_Categoria` int(11) NOT NULL,
  `NombreProducto` varchar(255) NOT NULL,
  `Ingredientes` text DEFAULT NULL,
  `Cantidad` int(11) NOT NULL DEFAULT 1,
  `Precio` double NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_Producto`, `ID_Categoria`, `NombreProducto`, `Ingredientes`, `Cantidad`, `Precio`) VALUES
(4, 2, 'dfg', 'dfg', 234, 234),
(8, 6, 'KinKong', 'NNN', 10, 15000),
(9, 2, 'Cocacola', 'as', 10, 2000),
(10, 5, 'asd', 'sdfs', 2, 3444),
(11, 3, 'Arroz con pollo', 'Arroz y pollo', 1, 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'sinAsignar'),
(2, 'admin'),
(3, 'mesero'),
(4, 'facturador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL DEFAULT 'No se especifico',
  `fecha_nacimiento` datetime NOT NULL,
  `id_rol` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user`, `pass`, `correo`, `genero`, `fecha_nacimiento`, `id_rol`) VALUES
(9, 'juanjose', '$2y$10$bOz2p3c9qkyOcJkbvXWsjOvBO.v5EUsmtQz9CL4sv4JAqX.atgZey', 'sigloxxistore@gmail.com', 'Hombre', '2020-11-06 00:00:00', 2),
(10, 'JuanTenjo', '$2y$10$XDhcqc5UkuZzySVe5liUZ.jJrxvD6jQtCplJ9P8KqVJX2Oyyc07su', 'tenjo2001@gmail.com', 'Hombre', '2001-06-19 00:00:00', 4),
(11, 'Adriana', '$2y$10$MSSVRG0fOpVSBytcfW5VxujIZL9W2Wta3rE1q14jcaVJVrFyekAL2', 'angelica@gmail.com', 'Mujer', '2006-06-07 00:00:00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `idzonas` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `numMesas` varchar(45) NOT NULL,
  `Habilitada` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`idzonas`, `nombre`, `numMesas`, `Habilitada`) VALUES
(1, 'Central', '3', 1),
(3, 'Patio', '5', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `consecutivos`
--
ALTER TABLE `consecutivos`
  ADD PRIMARY KEY (`id_consecutivo`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`iddetalle_pedidos`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`idmesas`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`idzonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `consecutivos`
--
ALTER TABLE `consecutivos`
  MODIFY `id_consecutivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `iddetalle_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `idmesas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `idzonas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
