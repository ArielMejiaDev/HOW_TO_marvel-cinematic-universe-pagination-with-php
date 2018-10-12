-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2018 a las 23:25:26
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `imagen`) VALUES
(1, 'The Avengers', 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(2, 'The Avengers Age Of Ultron', 'https://upload.wikimedia.org/wikipedia/en/f/ff/Avengers_Age_of_Ultron_poster.jpg'),
(3, 'The Avengers Infinity War', 'https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg'),
(4, 'Capitan America', 'https://upload.wikimedia.org/wikipedia/en/3/37/Captain_America_The_First_Avenger_poster.jpg'),
(5, 'Capitan America The Winter Soldier', 'http://es.web.img2.acsta.net/c_215_290/pictures/14/01/31/16/12/220933.jpg'),
(6, 'Iron Man', 'https://upload.wikimedia.org/wikipedia/en/7/70/Ironmanposter.JPG'),
(7, 'Iron Man 2', 'https://upload.wikimedia.org/wikipedia/en/e/ed/Iron_Man_2_poster.jpg'),
(8, 'Iron Man 3', 'https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_UY268_CR3,0,182,268_AL_.jpg'),
(9, 'Thor', 'https://upload.wikimedia.org/wikipedia/en/f/fc/Thor_poster.jpg'),
(10, 'Thor The Dark World', 'https://upload.wikimedia.org/wikipedia/en/7/7e/Thor_-_The_Dark_World_poster.jpg'),
(11, 'Thor Ragnarok', 'https://images-na.ssl-images-amazon.com/images/I/81T88fYfiPL._SY606_.jpg'),
(12, 'The Incredible Hulk', 'http://i39.tinypic.com/34dh34n.jpg'),
(13, 'Spider Man Homecoming', 'https://upload.wikimedia.org/wikipedia/en/f/f9/Spider-Man_Homecoming_poster.jpg'),
(14, 'Guardians Of The Galaxy', 'https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_.jpg'),
(15, 'Guardians Of The Galaxy Vol 2', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/ab/Guardians_of_the_Galaxy_Vol_2_poster.jpg/220px-Guardians_of_the_Galaxy_Vol_2_poster.jpg'),
(16, 'Ant Man', 'https://peliculasyalgoma.files.wordpress.com/2017/03/ant_man_ver9_xxlg.jpg?w=816&h=9999'),
(17, 'Ant Man & The Wasp', 'https://mx.web.img2.acsta.net/c_215_290/pictures/18/06/25/21/02/1870998.jpg'),
(18, 'Doctor Strange', 'https://images-na.ssl-images-amazon.com/images/I/91s8bk8ZI-L._SY445_.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
