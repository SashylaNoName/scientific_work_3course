-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2024 г., 01:39
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `scientific_work`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_teacher` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `id_teacher`) VALUES
(1, 'рпа', 4),
(2, 'fdgdfg', 4),
(5, 'sdfdsfsdf', 5),
(6, 'gfg', 4),
(8, '99999999', 4),
(23, 'павп', 4),
(25, 'вапвап', 4),
(26, 'вапвап', 4),
(27, 'вапвап', 4),
(28, 'МКНб-212', 4),
(29, 'МКНб-222', 4),
(30, 'ИСТб-171', 4),
(37, 'вапвап', 4),
(39, '123123', 0),
(40, '123123', 0),
(41, '123123', 0),
(42, '123123', 0),
(43, '123123', 4),
(48, 'ИСТб-17111', 4),
(50, '864376', 8),
(51, 'ИСТ-189', 8),
(52, '1', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surmane` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_group` int(12) NOT NULL,
  `module1` int(12) DEFAULT NULL,
  `module2` int(12) DEFAULT NULL,
  `module3` int(12) DEFAULT NULL,
  `exam` int(12) DEFAULT NULL,
  `result` int(12) NOT NULL,
  `kr1_module1` int(12) NOT NULL,
  `kr2_module1` int(12) NOT NULL,
  `kr3_module1` int(12) NOT NULL,
  `kr1_module2` int(12) NOT NULL,
  `kr2_module2` int(12) NOT NULL,
  `kr3_module2` int(12) NOT NULL,
  `kr1_module3` int(12) NOT NULL,
  `kr2_module3` int(12) NOT NULL,
  `kr3_module3` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `surmane`, `id_group`, `module1`, `module2`, `module3`, `exam`, `result`, `kr1_module1`, `kr2_module1`, `kr3_module1`, `kr1_module2`, `kr2_module2`, `kr3_module2`, `kr1_module3`, `kr2_module3`, `kr3_module3`) VALUES
(73, '', 'fdf', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, '', 'fdf', 17, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, '0', '0', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, '0hgjg', 'Губанов', 11, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, '0', '0', 7, 12, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, '', 'Губанов', 7, 22, 22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 'ава', 'ава', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, '', 'fdf1234', 9, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 'ааа', 'Жеравлев', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, '', '111', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 'уау', 'авававава', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, '', 'укук', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 'ичс', 'мсп', 50, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, '', 'кто-нибудь', 8, 999, 101, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 'Валерия', 'Сторыпкина', 52, 0, 12, 0, 0, 0, 12, 240, 0, 32, 24, 0, 0, 0, 0),
(111, 'Михаил', 'Расприн', 52, 14, 22, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 'Антонина', 'Паршенина', 52, 23, 21, 20, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 'Саша', 'Жулев', 52, 12, 14, 1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 'Михаил', 'Расприн', 52, 14, 22, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 'Саша', 'Жулев', 2, 12, 0, 0, 0, 0, 14, 1, 12, 12, 12, 12, 0, 0, 0),
(135, 'Михаил', 'Расприн', 2, 14, 0, 0, 0, 0, 22, 12, 15, 0, 0, 0, 0, 0, 0),
(136, 'Антонина', 'Паршенина', 2, 23, 0, 0, 0, 0, 21, 20, 22, 0, 0, 0, 0, 0, 0),
(138, 'Саша', 'Жулев', 28, 12, 0, 0, 0, 0, 14, 1, 12, 12, 12, 12, 0, 0, 0),
(139, 'Михаил', 'Расприн', 28, 14, 0, 0, 0, 0, 22, 12, 15, 0, 0, 0, 0, 0, 0),
(140, 'Антонина', 'Паршенина', 28, 23, 44, 0, 0, 0, 21, 20, 22, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_dad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `surname`, `name_dad`, `password`) VALUES
(4, 'Александр', 'Клячин', 'Александр', '202cb962ac59075b964b07152d234b70'),
(5, 'Блинов Александр Алексеевич', 'Клячин', 'Блинов Александр Алексеевич', '123'),
(6, 'аваы', 'Клячин', 'авыа', '4297f44b13955235245b2497399d7a93'),
(7, '124134', 'Клячин', '124135', '698d51a19d8a121ce581499d7b701668'),
(8, 'Александр', 'Блинов', 'Алексеевич', '202cb962ac59075b964b07152d234b70'),
(9, 'поппо', 'Воронин', 'попо', '202cb962ac59075b964b07152d234b70');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
