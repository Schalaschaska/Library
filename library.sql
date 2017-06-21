-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 11 2017 г., 11:02
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `base`
--

CREATE TABLE `base` (
  `ID` int(10) NOT NULL,
  `Initials` varchar(50) COLLATE utf8_bin NOT NULL,
  `Autor` varchar(50) COLLATE utf8_bin NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `date_of_receipt` varchar(50) COLLATE utf8_bin NOT NULL,
  `date_of_delivery` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `base`
--

INSERT INTO `base` (`ID`, `Initials`, `Autor`, `Name`, `date_of_receipt`, `date_of_delivery`) VALUES
(1, 'Иванов Иван Иванович', 'Nikolai Vasilievich Gogol', 'The Government Inspector', '2016-01-01', '2016-02-02'),
(2, 'Петров Пётр Петрович', 'Murasaki Shikibu', 'The Tale of Genji', '2016/1/1', '2016/2/2');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `Code` int(10) NOT NULL,
  `Autor` varchar(50) COLLATE utf8_bin NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Genre` varchar(50) COLLATE utf8_bin NOT NULL,
  `Available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`Code`, `Autor`, `Name`, `Genre`, `Available`) VALUES
(1, 'Nikolai Vasilievich Gogol', 'The Government Inspector', 'Comedy', 0),
(2, 'Murasaki Shikibu', 'The Tale of Genji', 'Novel', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `№` int(10) NOT NULL,
  `Name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`№`, `Name`) VALUES
(2, 'Comedy'),
(1, 'Novel');

-- --------------------------------------------------------

--
-- Структура таблицы `visitors`
--

CREATE TABLE `visitors` (
  `ID` int(100) NOT NULL,
  `Initials` varchar(80) COLLATE utf8_bin NOT NULL,
  `Subscription` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `visitors`
--

INSERT INTO `visitors` (`ID`, `Initials`, `Subscription`) VALUES
(1, 'Иванов Иван Иванович', 0),
(2, 'Петров Пётр Петрович', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Initials` (`Initials`),
  ADD KEY `Autor` (`Autor`),
  ADD KEY `Name` (`Name`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `Genre` (`Genre`),
  ADD KEY `Autor` (`Autor`),
  ADD KEY `Name` (`Name`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`№`),
  ADD KEY `Name` (`Name`);

--
-- Индексы таблицы `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Initials` (`Initials`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `base`
--
ALTER TABLE `base`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `Code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `№` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `visitors`
--
ALTER TABLE `visitors`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `base`
--
ALTER TABLE `base`
  ADD CONSTRAINT `base_ibfk_1` FOREIGN KEY (`Initials`) REFERENCES `visitors` (`Initials`),
  ADD CONSTRAINT `base_ibfk_2` FOREIGN KEY (`Autor`) REFERENCES `books` (`Autor`),
  ADD CONSTRAINT `base_ibfk_3` FOREIGN KEY (`Name`) REFERENCES `books` (`Name`);

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Genre`) REFERENCES `genre` (`Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
