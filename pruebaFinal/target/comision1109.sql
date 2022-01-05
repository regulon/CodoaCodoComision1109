-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2022 a las 04:08:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comision1109`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id` int(11) NOT NULL,
  `tipoinmueble` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `objeto` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `precioVentaDolares` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `precioVentaPesosArg` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `precioAlquilerDolares` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL,
  `precioAlquilerPesosArg` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `precioExpensas` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL,
  `caracteristicaArea` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL,
  `caracteristicaAmbientes` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `caracteristicaHabitaciones` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `caracteristicaBanos` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `caracteristicaToilets` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ubicacionBarrio` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ubicacionAvenidaOCalle` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ubicacionAltura` varchar(6) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ubicacionCodigoPostal` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `numDepOCasa` varchar(4) CHARACTER SET utf8mb4 DEFAULT NULL,
  `piso` varchar(4) CHARACTER SET utf8mb4 DEFAULT NULL,
  `informacionAdicional` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `tipoinmueble`, `objeto`, `precioVentaDolares`, `precioVentaPesosArg`, `precioAlquilerDolares`, `precioAlquilerPesosArg`, `precioExpensas`, `caracteristicaArea`, `caracteristicaAmbientes`, `caracteristicaHabitaciones`, `caracteristicaBanos`, `caracteristicaToilets`, `ubicacionBarrio`, `ubicacionAvenidaOCalle`, `ubicacionAltura`, `ubicacionCodigoPostal`, `numDepOCasa`, `piso`, `informacionAdicional`) VALUES
(1, 'Departamento', 'Alquiler', '', '', '', '60.000,00', '12.000,00', '', '3', '2', '1', '0', 'Balvanera', 'Av Pueyrredon', '900', '1187', '', '2', 'Con dependencia , contrafrente. Muy buen estado!!! '),
(2, 'Departamento', 'Alquiler', '', '', '', '29.008,00', '4.500,00', '38,00', '2', '1', '1', '0', 'Balvanera', 'Viamonte', '2200', '1187', '', '', 'El departamento se encuentra en perfectas condiciones.'),
(3, 'Departamento', 'Alquiler', '', '', '', '39.000,00', '4.000,00', '42,00', '1', '', '1', '0', 'Palermo', 'Arevalo', '2200', '1425', '', '', 'Con balcon, muy luminoso, cocina con horno a gas, espacio para lava ropas, espacio para heladera.'),
(4, 'Departamento', 'Alquiler', '', '', '', '85.000,00', '9.500,00', '98,00', '4', '3', '2', '1', 'Caballito', 'Av. Alberdi', '1500', '1235', '', '10', 'Con baulera, aire acondicionado'),
(5, 'Departamento', 'Alquiler', '', '', '', '36.000,00', '4.100,00', '35,00', '1', '', '1', '0', 'Palermo', 'Sinclair', '3200', '1416', '', '', 'Amplio Monoambiente ubicado en la zona mas exclusiva de Buenos Aires.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `id_propietario` int(11) NOT NULL,
  `nombres` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apellidos` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dni` varchar(15) CHARACTER SET latin2 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`id_propietario`, `nombres`, `apellidos`, `dni`, `email`, `telefono`, `direccion`) VALUES
(1, 'Carlos Manuel', 'Salas Bustillos', '98665445', 'bustasalas@gmail.com', '1113456555', 'Av. Cordoba 2700'),
(2, 'Luis Alberto', 'Navas Portillo', '95888666', 'navasportillol@gmail.com', '1189765445', 'Av. Corriente 2567'),
(3, 'Manuel Alberto', 'Juarez Martinez', '23896789', 'martinezmanuel@gmail.com', '1145678897', 'Av. Santa Fe 3057'),
(4, 'Maria Angela', 'Arevalo Tomassi', '45867543', 'mariatomassi@gmail.com', '1176890098', 'Calle Laprida 2800'),
(5, 'Teresa Angelina', 'Diaz Salas', '33546789', 'teresadiaz@hotmail.com', '1123456786', 'Bulnes 87');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `usuario`, `password`) VALUES
(1, 'Regulo', 'Luna', 'reguloluna@gmail.com', 'reguloluna', '1234'),
(2, 'Carolina', 'Diaz', 'carolinadiaz@hotmail.com', 'carodiaz', '5678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id_propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
