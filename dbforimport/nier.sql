-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 17 2021 г., 10:14
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nier`
--
CREATE DATABASE IF NOT EXISTS `nier` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nier`;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `username`, `date`, `text`) VALUES
(1, 'will', '2021-04-15', ' Pog Pog PogU'),
(2, 'will', '2021-04-15', ' PogT'),
(3, 'will', '2021-04-16', '  СЮДААААА'),
(4, 'will', '2021-04-16', ' CRAZY DIAMOND'),
(5, 'will', '2021-04-16', ' very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text  very long test text '),
(6, 'will', '2021-04-16', ' hehehe'),
(7, 'will', '2021-04-16', ' jrhehgfh'),
(8, 'will', '2021-04-16', ' test1234'),
(9, 'will', '2021-04-16', ' razrazraz'),
(10, 'willtilt', '2021-04-16', ' test 1 2 3 '),
(11, 'kse.18', '2021-04-16', ' test'),
(12, 'testaccount', '2021-04-16', ' 1234'),
(13, 'GabeNewell', '2021-04-16', 'The programmers of tomorrow are the wizards of the future. You\'re going to look like you have magic powers compared to everybody else.'),
(14, 'GabeNewell', '2021-04-16', ' The internet is super smart. If you do something that is cool, that\'s actually worth people\'s time, then they\'ll adopt it. If you do something that\'s not cool and sucks, you can spend as many marketing dollars as you want, [they] just won\'t'),
(15, 'tyler1', '2021-04-16', ' hehehe, hacked'),
(16, 'tyler2S', '2021-04-16', ' ???'),
(17, 'willHACKED', '2021-04-17', ' check'),
(18, 'will', '2021-04-17', ' check\r\n'),
(19, 'kse.18', '2021-04-17', ' check\r\n'),
(20, 'will', '2021-04-17', ' 123456'),
(21, 'will', '2021-04-17', ' 7'),
(22, 'will', '2021-04-17', ' hehe'),
(23, 'will', '2021-04-17', ' test1test2'),
(24, 'will', '2021-04-17', ' yep'),
(25, 'will', '2021-04-17', ' 1234');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` int(250) NOT NULL,
  `sessionhash` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `sessionhash`, `username`, `active`) VALUES
(1, '$2y$10$Qczj780Vulu808mewFUNmOPU8BKtiLBaf.rkwwLR11UgI/iJX/y4e', 'willtilt', 0),
(2, '$2y$10$XUwnKXAeZAkVTYs4IhqxYuX.NtJRjJoEb1yTk.psDyQ/rC3pDnDM6', 'will', 0),
(3, '$2y$10$Kg.xyOl7QCXPgs/uKiGmE.wTTX3LSyzwutmzJrOKe2oKY0x1y1nyG', 'kse.18', 0),
(4, '$2y$10$nbYHbYQSZ7K40uN0/.DOgOaHSf43W1EISLcnExIdCy2im0d.oYPaW', 'will', 0),
(5, '$2y$10$HMi8a0Nau8Wa1ir7ZE1YMub14Ag11IHQ.veszm9uSsBDHvsUFGTBe', 'will', 0),
(6, '$2y$10$01FBjEcfbW/vgm3ahrSkGejm5YCavVcf3R.on5oyYyJeher4J4pU.', 'will', 0),
(7, '$2y$10$76VtCFUCJqQqFXrQppeBpu4buBXbzTmZNbK/zA4VFr0AuwZkJqZ/a', 'will', 0),
(8, '$2y$10$FnCOg9VTb8vh3gSHFGLKbuSLhWaNNkG0yrT.Mb6tr8ULXQeE0r2KO', 'will', 0),
(9, '$2y$10$wW61xNQUcEV4EJJnH1yclumpNJJKeyyGcAJIwyweyxWbsoN9I4rPK', 'kse.18', 0),
(10, '$2y$10$qYaZbpc0nFGPEifK2GBFAOz8YwpL3gY8lbSMXE9m1MWqmjEotwY5S', 'will', 0),
(11, '$2y$10$nXdCYOWCi2qPww.zE9DBNOiyzuR6Y2DX3vmgSCjUztM91mFhR1OxC', 'will', 0),
(12, '$2y$10$M4IjsQDgPVz9d.M8RSt0i.i5VAdOd9WgYzrOXQrVButIVehEkTEGS', 'will', 0),
(13, '$2y$10$EoQjzLgIPehe.fxKDZfI6.WjiSo1rpg1h8X1ytj3hunHLe2Vrhu4q', 'will', 0),
(14, '$2y$10$eLdim4w8OJGu.kd5U91F7ep2rMVMAE9fPiIaf8CBXnUOruOCgGLnC', 'will', 1),
(15, '$2y$10$hQQ9TaYwLwe4S0aINZQkw.ySLIbW7rrZDyGBsMXTvly8V6MVgHGuW', 'will', 1),
(16, '$2y$10$jZl0LhniIwYqJ7uE6Phgee3qefgaIrMKH.OJFbMzD6BwiN.fmSqCq', 'will', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(3, 'willtilt', '$2y$10$0nBKGuVCjfehLkLWIxnOw.8TlgvSvgXV6KxKTtasHrh/dtB5wLlhG', NULL),
(4, 'Tyler1', '$2y$10$w8r.9lk2mbdivw5mW1xXpuPG97sSbzgCQuhn73oAuIt.yJWRylwmu', NULL),
(5, 'Tyler2', '$2y$10$IP7FNkrWunTnHXnxDpL/5u.s7lB1KT9SrPM5l5GR5fVdAo.99IU1y', NULL),
(6, 'will', '$2y$10$umKP2/7zvefcIPgbNmc78.1YuLc.oDpik.Z.E9owp1408Zq.weV6W', NULL),
(7, 'kse.18', '$2y$10$LnTjcWSQ//cz/jkAFE8e4.GN2H6GFJlwuSVkRAttptXhD1tIEMOUm', NULL),
(8, 'testaccount', '$2y$10$sSTn1v0eQM/6ODC8BNsRxOokiBNvzCE/paiY469c0ky9ODk.UkGBu', NULL),
(9, 'GabeNewell', '$2y$10$ybFs//O02lVpZglH4QMS8e3EnZkkRQMQNmypfsyyKeZulOk7Sb3K6', 'GabeNewell@valve.com'),
(10, 'thewillfeed', '$2y$10$QMiYemqdpl0qg3nBvQ8o3ezJ3XIbu4TySX9Wp77z19eXkCCI4EfzK', 'willimossop@gmail.com'),
(11, 'Tyler3', '$2y$10$m2ikBB1j1gjzRQUwT4KngupuJ0o71qIdQoD7Xh6fF8P.fHRjSqbyy', 'WillT@gg.ru'),
(12, 'Tyler4', '$2y$10$n.8VngZRIuHjFuWu4joib.ouAAvpxuMqjbgBbx40K7d4FoDXvIxeS', 'willimossop@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
