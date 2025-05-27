-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 27 2025 г., 22:08
-- Версия сервера: 8.0.30
-- Версия PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `edem`
--
CREATE DATABASE IF NOT EXISTS `edem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `edem`;

-- --------------------------------------------------------

--
-- Структура таблицы `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `mark`
--

INSERT INTO `mark` (`id`, `title`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

-- --------------------------------------------------------

--
-- Структура таблицы `model`
--

DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `model`
--

INSERT INTO `model` (`id`, `title`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mark_id` int NOT NULL,
  `model_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pay_type_id` int NOT NULL,
  `status_id` int NOT NULL,
  `reason` text COLLATE utf8mb4_general_ci,
  `rules` tinyint DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `address`, `contact`, `mark_id`, `model_id`, `date`, `time`, `created_at`, `pay_type_id`, `status_id`, `reason`, `rules`, `user_id`) VALUES
(1, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 4, NULL, 1, 2),
(2, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 5, 'fd', 1, 2),
(3, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(4, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(5, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(6, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(7, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(8, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(9, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(10, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(11, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(12, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(13, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(14, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(15, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2),
(16, 're', 'ert', 3, 3, '1222-02-21', '23:03:00', '2025-05-27 18:02:50', 1, 6, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pay_type`
--

DROP TABLE IF EXISTS `pay_type`;
CREATE TABLE `pay_type` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `pay_type`
--

INSERT INTO `pay_type` (`id`, `title`) VALUES
(1, 'наличные'),
(2, 'банковская карта');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `title`) VALUES
(3, 'одобрено'),
(4, 'выполнено'),
(5, 'отклонено'),
(6, 'создано');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` int NOT NULL,
  `auth_key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `full_name`, `phone`, `address`, `email`, `login`, `password`, `role_id`, `auth_key`) VALUES
(1, 'admin', '2', '2', '2', 'avto2024', '$2y$13$rV0qSZcJQJALqO9vdRMSZOAWQHm.kK.am/tIwKJqjfA4QW2Tdo71y', 1, '2'),
(2, 'user', '1', '1', '1', 'user', '$2y$13$Xt7000IUzV0lfXlNDup1CuSGpcHf7G.o51uT85rHkdCnbVRXheLyW', 2, 'qwwq');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_type_id` (`pay_type_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `mark_id` (`mark_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `pay_type`
--
ALTER TABLE `pay_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mark`
--
ALTER TABLE `mark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `model`
--
ALTER TABLE `model`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `pay_type`
--
ALTER TABLE `pay_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`pay_type_id`) REFERENCES `pay_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`mark_id`) REFERENCES `mark` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
