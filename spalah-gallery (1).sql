-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 03 2016 г., 12:27
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spalah-gallery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `photoId` int(11) NOT NULL,
  `name` text NOT NULL,
  `text` text NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `photoId`, `name`, `text`, `createdAt`) VALUES
(2, 4, 'dfsdf', 'ffff', '2016-03-08 01:38:38'),
(3, 4, 'sfsd', 'ff', '2016-03-08 01:38:44'),
(4, 4, 'asdfff', 'ffffff4', '2016-03-08 01:39:13'),
(5, 4, 'asdfff', 'ffffff4', '2016-03-08 01:43:12'),
(6, 4, 'asdfff', 'ffffff4', '2016-03-08 01:47:56'),
(7, 4, 'asdfff', 'ffffff4', '2016-03-08 01:49:31'),
(8, 4, 'asdfff', 'ffffff4', '2016-03-08 01:54:14'),
(9, 4, 'asdfff', 'ffffff4', '2016-03-08 01:55:32'),
(10, 4, 'asdfff', 'ffffff4', '2016-03-08 01:56:22'),
(11, 4, 'asdfff', 'ffffff4', '2016-03-08 01:58:00'),
(12, 4, 'asdfff', 'ffffff4', '2016-03-08 01:58:29'),
(13, 4, 'asdfff', 'ffffff4', '2016-03-08 01:59:09'),
(14, 4, 'asdfff', 'ffffff4', '2016-03-08 02:00:38'),
(15, 4, 'asdfff', 'ffffff4', '2016-03-08 02:01:21'),
(16, 4, 'asdfff', 'ffffff4', '2016-03-08 02:01:45'),
(17, 4, 'asdfff', 'ffffff4', '2016-03-08 02:02:04'),
(18, 4, 'asdfff', 'ffffff4', '2016-03-08 02:02:28'),
(19, 4, 'asdfff', 'ffffff4', '2016-03-08 02:04:37'),
(20, 4, 'asdfff', 'ffffff4', '2016-03-08 02:05:06'),
(21, 4, 'asdfff', 'ffffff4', '2016-03-08 02:06:05'),
(22, 4, 'asdfff', 'ffffff4', '2016-03-08 02:06:24'),
(23, 4, 'asdfff', 'ffffff4', '2016-03-08 02:06:49'),
(24, 4, 'asdfff', 'ffffff4', '2016-03-08 02:07:13'),
(25, 4, 'куку', 'куку', '2016-03-08 02:07:27'),
(26, 4, 'куку', 'куку', '2016-03-08 02:07:46'),
(27, 10, '1', '1', '2016-03-08 02:09:11'),
(28, 10, '1', '1', '2016-03-08 02:13:49'),
(29, 10, '1', '1', '2016-03-08 02:14:09'),
(30, 13, 'fghfdh', 'hh', '2016-03-09 00:16:54'),
(31, 13, 'fghfdh', 'hh', '2016-03-09 00:17:55'),
(32, 4, 'ку', 'у', '2016-03-09 00:40:38');

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE `photo` (
  `photoId` int(32) NOT NULL,
  `userId` int(32) NOT NULL,
  `photoURI` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `photo`
--

INSERT INTO `photo` (`photoId`, `userId`, `photoURI`, `description`, `date`) VALUES
(4, 1, 'IMG_20140604_140508.jpg', '', '2016-03-06 19:40:33'),
(5, 2, 'IMG_20140604_140506.jpg', '', '2016-03-06 19:50:13'),
(6, 2, 'IMG_20140604_160000.jpg', '', '2016-03-06 19:50:21'),
(7, 2, 'IMG_20140604_143254.jpg', '', '2016-03-06 19:50:33'),
(8, 3, 'IMG_20140604_143254.jpg', '', '2016-03-07 08:55:52'),
(10, 1, 'IMG_20140604_133826.jpg', 'fsafsdf', '2016-03-07 09:23:22'),
(11, 1, 'IMG_20140602_230111.jpg', '', '2016-03-07 16:34:38'),
(12, 4, 'IMG_20140604_160000.jpg', '', '2016-03-08 23:43:23'),
(13, 4, 'IMG_20140604_140508.jpg', '', '2016-03-09 00:16:37'),
(14, 5, 'IMG_20140604_160032.jpg', '', '2016-03-09 00:24:12'),
(15, 5, 'IMG_20140604_160032.jpg', '', '2016-03-09 00:31:16');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(32) NOT NULL,
  `username` int(32) NOT NULL,
  `password` int(40) NOT NULL,
  `regDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `regDate`) VALUES
(1, 1, 356, '2016-03-06 19:37:57'),
(2, 2, 0, '2016-03-06 19:50:06'),
(3, 5, 0, '2016-03-07 08:55:40'),
(4, 22, 12, '2016-03-08 23:37:23'),
(5, 44, 98, '2016-03-09 00:24:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photoId` (`photoId`);

--
-- Индексы таблицы `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photoId`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `photo`
--
ALTER TABLE `photo`
  MODIFY `photoId` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`photoId`) REFERENCES `photo` (`photoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
