-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2026 a las 19:06:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elfaro_db`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_articulo` (IN `titulo` VARCHAR(255), IN `descripcion` TEXT, IN `fecha_publicacion` DATETIME)   BEGIN
    INSERT INTO articulos (titulo, descripcion, fecha_publicacion) 
    VALUES (titulo, descripcion, fecha_publicacion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_articulos` ()   BEGIN
    SELECT * FROM articulos ORDER BY fecha_Publicacion DESC;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_publicacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `descripcion`, `fecha_publicacion`) VALUES
(5, 'Poduje desestima recomendación de Quiroz y firma continuidad de programa que Hacienda quería recortar Foto autor Samuel Fuentes', 'El ministro de Vivienda y Urbanismo, Iván Poduje, reafirmó su postura al firmar el programa de Pavimentos Participativos, desafiando las supuestas sugerencias de Jorge Quiroz de Hacienda de \"descontinuar\" este proyecto. Poduje, además, dejó en claro que su único jefe es el presidente José Antonio Kast.', '2026-04-30 20:51:54'),
(6, 'Marco Rubio dice que espera \"hoy\" una respuesta de Irán para unas negociaciones \"serias\" de paz', 'El secretario de Estado estadounidense, Marco Rubio, espera una respuesta de Irán en el día sobre negociaciones de paz tras reunirse en Roma con la primera ministra italiana, Giorgia Meloni. Rubio dijo que aguardan una respuesta seria para iniciar negociaciones. Destacó que Irán no debe tener armas nucleares y sostuvo que Trump trabaja para evitarlo. Advirtió que sería problemático que Irán controle el estrecho de Ormuz.', '2026-05-08 16:49:56'),
(7, 'Gasolina, petróleo y gas en las nubes: El IPC varió 1,3% en abril y los precios presionan el bolsillo', 'El Índice de Precios al Consumidor (IPC) en abril de 2026 aumentó un 1,3%, acumulando 2,7% en el año y 4,0% a doce meses, según el INE. Los precios de la gasolina, petróleo diésel y gas licuado subieron significativamente, con alzas de 25,3%, 45,7% y 5,8% respectivamente. En total, diez divisiones del IPC contribuyeron positivamente, con transporte liderando (8,0%) y vivienda (0,8%). Vestuario y calzado tuvieron la mayor baja (-1,8%).', '2026-05-08 16:50:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `email`, `mensaje`, `fecha_envio`) VALUES
(1, 'Alvaro', 'alvaro@correo.cl', 'Mensaje de prueba', '2026-05-01 21:00:42'),
(2, 'Alvaro', 'alvaro@correo.cl', 'Hola. Este es un mensaje de prueba.', '2026-05-08 12:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `fecha_registro`) VALUES
(1, 'Juan Pérez', 'juan@elfarochile.cl', '$2y$10$eEPa/4M.1f0.Jv/I3J5r/e70TqP6O0n.G0.zK.QO/x5O/n.N8.X/O', '2026-04-30 13:29:10'),
(2, 'María López', 'maria@elfarochile.cl', '$2y$10$eEPa/4M.1f0.Jv/I3J5r/e70TqP6O0n.G0.zK.QO/x5O/n.N8.X/O', '2026-04-30 13:29:10'),
(3, 'Alvaro', 'alvaro@correo.cl', '$2y$10$chuzmGUtmKvb9rGkFGrfUulXgkv1oT8ZLFQ6sdrROaWzsFqELqEZO', '2026-04-30 15:42:22'),
(4, 'Alberto Rodriguez Ocaranza', 'Alberto@correo.cl', '$2y$10$kHJ5mYF7i/EdYbdz4ahBL.t0qqU//xkEaxvfaenlfaWPYXMd9vHEu', '2026-05-06 16:40:55'),
(5, 'Gustavo', 'gustavo@correo.cl', '$2y$10$a6vSikLLrKfcTjJtefsDUOktM09kPF5uIwSIJnfbiU4ougbGbVeS2', '2026-05-08 12:16:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
