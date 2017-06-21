-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 21 2017 г., 12:13
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `userlistdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gb`
--

CREATE TABLE `gb` (
  `id` int(10) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `www` varchar(100) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `log_table`
--

CREATE TABLE `log_table` (
  `IP` varchar(15) NOT NULL,
  `f2` varchar(10) DEFAULT NULL,
  `f3` varchar(10) DEFAULT NULL,
  `D_t` varchar(50) NOT NULL,
  `GMT` varchar(5) DEFAULT NULL,
  `Metod` varchar(4) NOT NULL,
  `url` varchar(100) NOT NULL,
  `Protocol` varchar(15) NOT NULL,
  `cod-s` int(3) NOT NULL,
  `bytes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `log_table`
--

INSERT INTO `log_table` (`IP`, `f2`, `f3`, `D_t`, `GMT`, `Metod`, `url`, `Protocol`, `cod-s`, `bytes`) VALUES
('192.168.1.6', '-', '-', '26/Oct/2006:00:56:17', '+0400', 'GET', '/umr/kmodel/img/go.gif', 'HTTP/1.1', 304, 0),
('192.168.1.6', '-', '-', '26/Oct/2006:00:56:17', '+0400', 'GET', '/umr/kmodel/img/back.gif', 'HTTP/1.1', 304, 0),
('192.168.1.6', '-', '-', '26/Oct/2006:00:56:17', '+0400', 'GET', '/umr/kmodel/css/main.css', 'HTTP/1.1', 200, 951);

-- --------------------------------------------------------

--
-- Структура таблицы `usertbl`
--

CREATE TABLE `usertbl` (
  `id` int(11) NOT NULL,
  `full_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `usertbl`
--

INSERT INTO `usertbl` (`id`, `full_name`, `email`, `username`, `password`) VALUES
(22, 'user', 'user@user.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
(1, 'admin', 'sauroon@yandex.ru', 'admin', '4b3626865dc6d5cfe1c60b855e68634a');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gb`
--
ALTER TABLE `gb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gb`
--
ALTER TABLE `gb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
