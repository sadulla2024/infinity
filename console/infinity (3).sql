-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2024 г., 15:48
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `infinity`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `created_date` datetime NOT NULL,
  `phone` text NOT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `body`, `created_date`, `phone`, `category`) VALUES
(1, 'Jahongir', 'xjoha@mail.ru', NULL, 'adasdsad', '2022-06-22 22:31:24', '998911631236', NULL),
(2, 'jahongir xushboqov', 'xjoha@mail.ru', NULL, '123', '2022-06-22 22:32:09', '8911631236', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `anons` varchar(600) NOT NULL,
  `answer` text NOT NULL,
  `creator` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `faq_lang`
--

CREATE TABLE `faq_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `anons` varchar(600) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `created_date` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `guests`
--

CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `identity` varchar(96) NOT NULL,
  `lastdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `guid` varchar(100) NOT NULL,
  `extension` varchar(6) NOT NULL,
  `size` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `album`, `name`, `guid`, `extension`, `size`, `creator`, `created_date`, `status`) VALUES
(1, 1, 'gal1.jpg', '54dcfe0f63c92ad5f7b1851ed1e2338c.jpg', 'jpg', 134298, 1, '2022-06-22 00:00:00', 1),
(2, 1, 'gal2.jpg', 'b4a219a2fd8d34220f7cf7687ca1e36e.jpg', 'jpg', 97837, 1, '2022-06-22 00:00:00', 1),
(3, 1, 'gal3.jpg', '7fed8f87ff41816d06b3c575627f19df.jpg', 'jpg', 119981, 1, '2022-06-22 00:00:00', 1),
(4, 1, 'gal4.jpg', 'b130acdc49fc250192e4895b42ff4b5b.jpg', 'jpg', 97551, 1, '2022-06-22 00:00:00', 1),
(5, 1, 'gal5.jpg', 'ace0e6bca8598f73a2d83ebc5ba39425.jpg', 'jpg', 148486, 1, '2022-06-22 00:00:00', 1),
(6, 1, 'gal6.jpg', '576d0be40adb804d24b1867f31ca38ed.jpg', 'jpg', 102861, 1, '2022-06-22 00:00:00', 1),
(7, 1, 'gal7.jpg', '607fe6622a40ed8a209750fa26f244e4.jpg', 'jpg', 132259, 1, '2022-06-22 00:00:00', 1),
(8, 1, 'gal8.jpg', '25fc70ae15515618db9696a5a0f40725.jpg', 'jpg', 101383, 1, '2022-06-22 00:00:00', 1),
(9, 1, 'news2.jpg', '449c65a18bab6e97338f28cf97abef32.jpg', 'jpg', 144425, 1, '2022-06-22 00:00:00', 1),
(10, 1, 'news3.jpg', '1e84cc1256499b6d722a8cb22b0a4f80.jpg', 'jpg', 96058, 1, '2022-06-22 00:00:00', 1),
(11, 1, 'news4.jpg', '7ee5102852ba42bc2fffa141c829e76a.jpg', 'jpg', 263007, 1, '2022-06-22 00:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `abb` varchar(5) NOT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `name`, `abb`, `status`) VALUES
(1, 'Русский', 'ru', 1),
(2, 'English', 'en', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `icon2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `type`, `parent`, `name`, `url`, `icon`, `order_by`, `status`, `icon2`) VALUES
(13, 0, NULL, 'Инвесторам', '/page/view/6', NULL, 10, 1, NULL),
(14, 0, NULL, 'Заемщикам', '/page/view/7', NULL, 20, 1, NULL),
(15, 0, NULL, 'Облигации', '/page/view/8', NULL, 30, 1, NULL),
(16, 0, NULL, 'Энциклопедия инвестора', '/page/view/9', NULL, 40, 1, NULL),
(17, 0, NULL, 'О нас', '/page/view/10', NULL, 50, 1, NULL),
(18, 0, NULL, 'Контакты', '/site/contacts', NULL, 60, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `lang`, `parent`, `name`) VALUES
(1, 2, 9, 'Media'),
(2, 3, 9, 'Медиатека'),
(3, 3, 8, 'Связь'),
(4, 2, 8, 'Connection'),
(5, 2, 7, 'To students'),
(6, 3, 7, 'Студентам'),
(7, 3, 6, 'Абитуриентам'),
(8, 2, 6, 'To applicants'),
(9, 2, 5, 'Activity'),
(10, 3, 5, 'Мероприятия'),
(11, 3, 4, 'Документы'),
(12, 2, 4, 'Documents'),
(13, 2, 3, 'News'),
(14, 3, 3, 'Новости'),
(15, 3, 2, 'Образование'),
(16, 2, 2, 'Education'),
(17, 2, 1, 'Basic'),
(18, 3, 1, 'Базовый'),
(19, 2, 11, 'Last news'),
(20, 3, 11, 'Последние новости'),
(21, 3, 12, 'Объявления'),
(22, 2, 12, 'Announcement'),
(23, 2, 14, 'Borrowers'),
(24, 2, 13, 'Investors'),
(25, 2, 15, 'Bonds'),
(26, 2, 17, 'About'),
(27, 2, 16, 'Investor Encyclopedia'),
(28, 2, 18, 'Contacts');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1, 'en', 'Last <mark>News</mark> and <mark>Events</mark>'),
(1, 'ru', 'Последние <mark>Новости</mark> и <mark>Объявления</mark>'),
(1, 'uz', 'So\'ngi <mark>Yangiliklar</mark> va <mark>E\'lonlar</mark>'),
(2, 'en', 'Read more'),
(2, 'ru', 'Подробнее'),
(2, 'uz', 'Batafsil'),
(3, 'en', 'All announcements'),
(3, 'ru', 'Все объявления'),
(3, 'uz', 'Barcha e\'lonlar'),
(4, 'en', 'All news'),
(4, 'ru', 'Все новости'),
(4, 'uz', 'Barcha yangiliklar'),
(5, 'en', 'Interactive <mark>Services</mark>'),
(5, 'ru', 'Интерактивные <mark>Услуги</mark>'),
(5, 'uz', 'Interaktiv <mark>Xizmatlar</mark>'),
(6, 'en', 'Professor Teacher\'s <mark>Compound</mark>'),
(6, 'ru', '<mark>Состав</mark> Профессор учителей'),
(6, 'uz', 'Professor O\'qituvchilar <mark>Tarkibi</mark>'),
(7, 'en', 'Useful <mark>Links</mark>'),
(7, 'ru', 'Полезные <mark>ссылки</mark>'),
(7, 'uz', 'Foydali <mark>Havolalar</mark>'),
(8, 'en', 'Photo <mark>Gallery</mark>'),
(8, 'ru', 'Фото <mark>Галерея</mark>'),
(8, 'uz', 'Foto <mark>Galereya</mark>'),
(9, 'en', 'How to get'),
(9, 'ru', 'Как добраться'),
(9, 'uz', 'Qanday boriladi'),
(10, 'en', 'Address'),
(10, 'ru', 'Адрес'),
(10, 'uz', 'Manzil'),
(11, 'en', 'Call center'),
(11, 'ru', 'Колл центр'),
(11, 'uz', 'Call markaz'),
(12, 'en', 'Home'),
(12, 'ru', 'Главная'),
(12, 'uz', 'Asosiy'),
(13, 'en', 'Resources'),
(13, 'ru', 'Ресурсы'),
(13, 'uz', 'Resurslar'),
(14, 'en', 'Week\'s top news'),
(14, 'ru', 'Топ новости недели'),
(14, 'uz', 'Haftalik top yangiliklar'),
(15, 'en', 'Fotoalbums'),
(15, 'ru', 'Фотоальбомы'),
(15, 'uz', 'Fotoalbomlar'),
(16, 'en', 'Another'),
(16, 'ru', 'Другое'),
(16, 'uz', 'Boshqa'),
(17, 'en', 'Another'),
(17, 'ru', 'Другое'),
(17, 'uz', 'Boshqa'),
(18, 'en', 'Contacts'),
(18, 'ru', 'Контакты'),
(18, 'uz', 'Bog\'lanish'),
(19, 'en', 'Send'),
(19, 'ru', 'Отправить'),
(19, 'uz', 'Yuborish'),
(20, 'en', 'Name'),
(20, 'ru', 'Имя'),
(20, 'uz', 'FIO'),
(21, 'en', 'Subject'),
(21, 'ru', 'Тема'),
(21, 'uz', 'Mavzu'),
(22, 'en', 'Message'),
(22, 'ru', 'Сообщение'),
(22, 'uz', 'Xabar matni'),
(23, 'en', 'Phone number'),
(23, 'ru', 'Телефон'),
(23, 'uz', 'Telefon raqam'),
(24, 'en', 'Contact with us'),
(24, 'ru', 'Свяжитесь с нами'),
(24, 'uz', 'Biz bilan bog\'laning'),
(25, 'en', 'Your message has been sent!'),
(25, 'ru', 'Ваше обращение успешно принято!'),
(25, 'uz', 'Murojaatingiz qabul qilindi!'),
(26, 'en', 'Students Count'),
(26, 'ru', 'Количество студентов'),
(26, 'uz', 'TALABALAR SONI'),
(27, 'en', 'IRC fund'),
(27, 'ru', 'Фонд ИРЦ'),
(27, 'uz', 'ARM fondi'),
(28, 'en', 'Professor teachers'),
(28, 'ru', 'Профессор учителя'),
(28, 'uz', 'Professor o\'qituvchilar'),
(29, 'en', 'Faculties count'),
(29, 'ru', 'Количество факультетов'),
(29, 'uz', 'Fakultetlar soni'),
(30, 'en', 'Cathedras'),
(30, 'ru', 'Кафедры'),
(30, 'uz', 'Kafedralar'),
(31, 'en', 'Documents'),
(31, 'ru', 'Документы'),
(31, 'uz', 'Xujjatlar'),
(32, 'en', 'Categories'),
(32, 'ru', 'Категории'),
(32, 'uz', 'Kategoriyalar'),
(33, 'en', 'There is no data.'),
(33, 'ru', 'К сожалению, данных не найдено!'),
(33, 'uz', 'Afsuski, ma\'lumotlar topilmadi!'),
(34, 'en', 'Sitemap'),
(34, 'ru', 'Карта сайта'),
(34, 'uz', 'Sayt Xaritasi'),
(35, 'en', 'Small business financing platform'),
(35, 'ru', 'Платформа для финансирования малого бизнеса'),
(35, 'uz', ''),
(36, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(36, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(37, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(37, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(38, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(38, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(39, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(39, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(40, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(40, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(41, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(41, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(42, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(42, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(43, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(43, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(44, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(44, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(45, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(45, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(46, 'en', 'We are the creators of opportunities. Start today and let your money work for your future!'),
(46, 'ru', 'Мы - создаем возможности. Начните сегодня и позвольте вашим деньгам работать на ваше будущее!'),
(47, 'en', 'Try demo'),
(47, 'ru', 'Попробовать демо'),
(48, 'en', 'Consultation'),
(48, 'ru', 'Консультация'),
(49, 'en', '900'),
(49, 'ru', '900'),
(50, 'en', 'Satisfied <br> users'),
(50, 'ru', 'Довольных <br> пользователей'),
(51, 'en', 'Products'),
(51, 'ru', 'Продукты'),
(52, 'en', 'More'),
(52, 'ru', 'Подробнее');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  `title` text NOT NULL,
  `second_title` text,
  `anons` varchar(300) NOT NULL,
  `body` text,
  `main_image` varchar(255) DEFAULT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seen_count` int(11) DEFAULT '0',
  `event_date` date DEFAULT NULL,
  `ban` tinyint(1) DEFAULT '0',
  `update_date` datetime NOT NULL,
  `slider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news_category`
--

CREATE TABLE `news_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '0',
  `order_by` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news_category_lang`
--

CREATE TABLE `news_category_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_category_lang`
--

INSERT INTO `news_category_lang` (`id`, `lang`, `parent`, `name`) VALUES
(1, 3, 1, 'События'),
(2, 2, 1, 'Events'),
(3, 2, 2, 'Ads'),
(4, 3, 2, 'Объявления'),
(5, 3, 3, 'Новости института'),
(6, 2, 3, 'Institute news');

-- --------------------------------------------------------

--
-- Структура таблицы `news_lang`
--

CREATE TABLE `news_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `second_title` varchar(100) DEFAULT NULL,
  `anons` varchar(300) NOT NULL,
  `body` text,
  `main_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  `title` text NOT NULL,
  `second_title` text,
  `keywords` varchar(300) DEFAULT NULL,
  `body` text,
  `main_image` varchar(255) DEFAULT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seen_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `category`, `creator`, `created_date`, `update_date`, `status`, `title`, `second_title`, `keywords`, `body`, `main_image`, `secondary_image`, `icon`, `seen_count`) VALUES
(6, NULL, 1, '2024-11-28 15:04:31', '2024-11-28 22:24:29', 1, 'Инвесторам', NULL, NULL, '<p bis_size=\"{&quot;x&quot;:20,&quot;y&quot;:20,&quot;w&quot;:998,&quot;h&quot;:20,&quot;abs_x&quot;:209,&quot;abs_y&quot;:443}\">Страница для инвесеторам</p>\r\n', '', NULL, NULL, 2),
(7, NULL, 1, '2024-11-28 16:15:27', '2024-11-28 16:15:27', 1, 'Заемщикам', NULL, NULL, '<ul bis_size=\"{&quot;x&quot;:20,&quot;y&quot;:20,&quot;w&quot;:998,&quot;h&quot;:20,&quot;abs_x&quot;:209,&quot;abs_y&quot;:443}\">\r\n	<li bis_size=\"{&quot;x&quot;:60,&quot;y&quot;:20,&quot;w&quot;:918,&quot;h&quot;:20,&quot;abs_x&quot;:249,&quot;abs_y&quot;:443}\"><a bis_size=\"{&quot;x&quot;:60,&quot;y&quot;:22,&quot;w&quot;:71,&quot;h&quot;:15,&quot;abs_x&quot;:249,&quot;abs_y&quot;:445}\" href=\"http://infinity/index.html#products\">Заемщикам</a></li>\r\n</ul>\r\n', '', NULL, NULL, 0),
(8, NULL, 1, '2024-11-28 16:18:27', '2024-11-28 16:18:27', 1, 'Облигации', NULL, NULL, '<ul>\r\n	<li><a href=\"http://infinity/index.html#calculator\">Облигации</a></li>\r\n</ul>\r\n', '', NULL, NULL, 0),
(9, NULL, 1, '2024-11-28 16:20:04', '2024-11-28 16:20:04', 1, 'Энциклопедия инвестора', NULL, NULL, '<p bis_size=\"{&quot;x&quot;:20,&quot;y&quot;:20,&quot;w&quot;:998,&quot;h&quot;:20,&quot;abs_x&quot;:209,&quot;abs_y&quot;:443}\"><a bis_size=\"{&quot;x&quot;:20,&quot;y&quot;:22,&quot;w&quot;:153,&quot;h&quot;:15,&quot;abs_x&quot;:209,&quot;abs_y&quot;:445}\" href=\"http://infinity/index.html#news\">Энциклопедия инвестора</a></p>\r\n', '', NULL, NULL, 0),
(10, NULL, 1, '2024-11-28 16:21:16', '2024-11-28 16:21:16', 1, 'О нас', NULL, NULL, '<p>О нас</p>\r\n', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `page_lang`
--

CREATE TABLE `page_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `second_title` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) NOT NULL,
  `body` text,
  `main_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `status` int(11) NOT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `partner`
--

INSERT INTO `partner` (`id`, `title`, `link`, `status`, `image`) VALUES
(1, 'Oliy va O\'rta maxsus ta\'lim vazirligi', 'https://edu.uz/uz', 1, '422a4ea9bb37a7b9c95bd9b5fe72e05d.png'),
(2, 'Xalq ta\'lim vazirligi', 'https://www.uzedu.uz/', 1, 'e95ab2b5710e190efb73414dac7a41a9.jpg'),
(3, 'Yagona interaktiv davlat xizmatlar portali', 'https://my.gov.uz/uz', 1, '983a1b156f6b7ebcf86c1e9524e62ba0.jpeg'),
(4, 'O\'zbekiston Respublikasi Prezidenti rasmiy veb-sayti', 'https://president.uz/oz', 1, 'e35f5ef4faf905183ebc02956584dcce.png'),
(5, 'O\'zbekiston Respublikasi Oliy Majlisi Qonunchilik Palatasi', 'https://parliament.gov.uz/uz/', 1, '9d55b262499534e6a773586e70d868fc.png'),
(6, '﻿O‘zbekiston Respublikasi Oliy va o‘rta maxsus ta\'lim vazirligi', 'https://www.edu.uz/uz', 1, '4954ee978f5209a0f489bc8b0b48b3ea.jpg'),
(7, 'O\'zbekiston Respublikasi Ochiq ma\'lumotlar portali', 'https://data.gov.uz/uz', 1, '7ca28f3f6863a37cb941bf902eae531b.png'),
(8, 'O\'zbekiston Respublikasi Qishloq xo\'jaligi vazirligi', 'https://www.agro.uz/', 1, '9d2e53fb8b1b68319bfc9c049ad70a26.png');

-- --------------------------------------------------------

--
-- Структура таблицы `partner_lang`
--

CREATE TABLE `partner_lang` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `partner_lang`
--

INSERT INTO `partner_lang` (`id`, `parent`, `lang`, `title`) VALUES
(1, 3, 2, 'Single interactive public services portal'),
(2, 3, 3, 'Единый интерактивный портал госуслуг'),
(3, 4, 3, 'Официальный сайт Президента Республики Узбекистан'),
(4, 4, 2, 'Official website of the President of the Republic of Uzbekistan'),
(5, 5, 2, 'Legislative Chamber of the Oliy Majlis of the Republic of Uzbekistan'),
(6, 5, 3, 'Законодательная палата Олий Мажлиса Республики Узбекистан'),
(7, 6, 3, 'Министерство высшего и среднего специального образования Республики Узбекистан'),
(8, 6, 2, 'Ministry of Higher and Secondary Specialized Education of the Republic of Uzbekistan'),
(9, 7, 2, 'Open Data Portal of the Republic of Uzbekistan'),
(10, 7, 3, 'Портал открытых данных Республики Узбекистан'),
(11, 8, 3, 'Министерство сельского хозяйства Республики Узбекистан'),
(12, 8, 2, 'Ministry of Agriculture of the Republic of Uzbekistan');

-- --------------------------------------------------------

--
-- Структура таблицы `pcounter_save`
--

CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pcounter_users`
--

CREATE TABLE `pcounter_users` (
  `user_ip` varchar(255) NOT NULL,
  `user_time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pcounter_users`
--

INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES
('ddf2b1fd3cc4fbb24a755f842dec8dce', 1732821872);

-- --------------------------------------------------------

--
-- Структура таблицы `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL,
  `poll` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  `title` text NOT NULL,
  `second_title` text,
  `anons` varchar(300) DEFAULT NULL,
  `body` text,
  `main_image` varchar(255) DEFAULT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seen_count` int(11) DEFAULT '0',
  `event_date` date DEFAULT NULL,
  `ban` tinyint(1) DEFAULT '0',
  `update_date` datetime NOT NULL,
  `slider` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `category`, `type`, `visible`, `creator`, `created_date`, `status`, `title`, `second_title`, `anons`, `body`, `main_image`, `secondary_image`, `icon`, `seen_count`, `event_date`, `ban`, `update_date`, `slider`) VALUES
(2, 3, NULL, NULL, 1, '2024-11-28 20:25:59', 1, 'Инвестиции в малый бизнес', '20,8%', '<p class=\"desc\">Доходность 20,8% годовых* для стратегии “Оптимальная”</p>\r\n<p class=\"desc\">Собственная технологоия скоринга, которая позволяет выбрать заёмщиков, способных вернуть деньги</p>\r\n<p class=\"desc\">Инструменты инвестирования без риска</p>', '<p>&lt;p class=&quot;desc&quot;&gt;Доходность 20,8% годовых* для стратегии &ldquo;Оптимальная&rdquo;&lt;/p&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;p class=&quot;desc&quot;&gt;Собственная технологоия скоринга, которая позволяет выбрать заёмщиков, способных вернуть деньги&lt;/p&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;p class=&quot;desc&quot;&gt;Инструменты инвестирования без риска&lt;/p&gt;</p>\r\n', '18d026c662cbed89f9d9c18a96b2b749.png', NULL, '', 0, NULL, 0, '2024-11-28 21:09:18', 0),
(3, 3, NULL, NULL, 1, '2024-11-28 21:07:20', 1, 'Заем на развитие бизнеса', '15,1%', '<p class=\"desc\">Выдаем по ставке от 15,1% годовых</p>\r\n                                    <p class=\"desc\">Без визитов в офис перечислим деньги на Р/С в любом банке</p>\r\n                                    <p class=\"desc\">Не требуем предоставления залога</p>', '<p class=\"desc\">Выдаем по ставке от 15,1% годовых</p>\r\n                                    <p class=\"desc\">Без визитов в офис перечислим деньги на Р/С в любом банке</p>\r\n                                    <p class=\"desc\">Не требуем предоставления залога</p>', '9f72e78d32b52ad040c0dfb7553217b0.png', NULL, NULL, 0, NULL, 0, '2024-11-28 21:07:20', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '0',
  `order_by` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `status`, `order_by`, `parent`) VALUES
(3, 'Продукты', 1, 10, NULL),
(4, 'Стратегии инвестирования', 1, 20, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `lang`, `parent`, `name`) VALUES
(7, 2, 3, 'Products'),
(8, 2, 4, 'Investment strategies');

-- --------------------------------------------------------

--
-- Структура таблицы `post_image`
--

CREATE TABLE `post_image` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `second_title` varchar(100) DEFAULT NULL,
  `anons` varchar(300) DEFAULT NULL,
  `body` text,
  `main_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_lang`
--

INSERT INTO `post_lang` (`id`, `lang`, `parent`, `title`, `second_title`, `anons`, `body`, `main_image`, `status`) VALUES
(3, 2, 2, 'Investing in small business', '20,8%', '<p class=\"desc\">Yield of 20.8% per annum* for the “Optimal” strategy</p>\r\n\r\n<p class=\"desc\">Proprietary scoring technology that allows you to select borrowers who are able to repay the money</p>\r\n\r\n<p class=\"desc\">Risk-free investment tools</p>', '', 'd3ae873f0782326eae08ac4ee4b92077.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `title`, `link`, `category`, `image`, `status`) VALUES
(1, 'Hemis Talaba', '/', NULL, 'fas fa-user-graduate', 1),
(2, 'Hemis O\'qituvchi', '/', NULL, 'fas fa-user-graduate', 1),
(3, 'Korporativ Pochta', '/', NULL, 'fas fa-envelope', 1),
(4, 'Rektor qabulxonasi', '/', NULL, 'fas fa-book-open', 1),
(5, 'Bo\'sh ish o\'rinlari', '/', NULL, 'far fa-id-card', 1),
(6, 'Masofaviy ta\'lim', '/', NULL, 'fas fa-chalkboard-teacher', 1),
(7, 'Bog\'lanish', '/', NULL, 'fab fa-wpforms', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `services_lang`
--

CREATE TABLE `services_lang` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `lang` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services_lang`
--

INSERT INTO `services_lang` (`id`, `parent`, `lang`, `title`, `description`, `status`) VALUES
(1, 3, 2, 'Corporate Mail', '<p>President of the Republic of Uzbekistan Shavkat Mirziyoyev has greeted everyone with the opening ceremony of the International Festival of Goodwill. The art of embroidery, which reflects the national identity of different peoples, their language and way of life, traditions and customs, is valuable to us all as an integral part of universal culture. These immortal pieces of world cultural heritage tell us that humanity has its common ancestry, historical roots, and noble ideals and, therefore, the common aspirations of people of different nationalities and nations, &rdquo;Shavkat Mirziyayev said.</p>\r\n', 1),
(2, 3, 3, 'Корпоративная почта', '<p>Президент Республики Узбекистан Шавкат Мирзиёев поздравил всех с открытием Международного фестиваля доброй воли. Искусство вышивания, которое представляет национальную идентичность разных народов, их язык и образ жизни, традиции и обычаи, является ценным для всех нас как неотъемлемая часть универсальной культуры. Эти бессмертные части мирового культурного наследия говорят нам о том, что у человечества есть общие предки, исторические корни и благородные идеалы и, следовательно, общие чаяния людей разных национальностей и наций &raquo;, - сказал Шавкат Мирзияев.</p>\r\n', 1),
(3, 1, 2, 'Hemis Student', '<p>1</p>\r\n', 1),
(4, 1, 3, 'Hemis Студент', '<p>2qwds</p>\r\n', 1),
(5, 2, 2, 'Hemis Teacher', NULL, 1),
(6, 2, 3, 'Hemis Учитель', NULL, 1),
(7, 4, 3, 'Прием ректора', NULL, 1),
(8, 4, 2, 'Rector\'s reception', NULL, 1),
(9, 5, 2, 'Vacancies', NULL, 1),
(10, 5, 3, 'Свободные места', NULL, 1),
(11, 6, 3, 'Дистанционное обучение', NULL, 1),
(12, 6, 2, 'Distance learning', NULL, 1),
(13, 7, 2, 'Connection', NULL, 1),
(14, 7, 3, 'Связь', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` varchar(100) NOT NULL,
  `val` varchar(1000) NOT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `val`, `url`) VALUES
('mail', 'info@terdupi.uz', ''),
('phone', ' +998762219371', ''),
('telegram', 'https://t.me/TerDUPI_DIREKTORI', ''),
('title', 'Платформа для финансирования малого бизнеса  ', '');

-- --------------------------------------------------------

--
-- Структура таблицы `settings_lang`
--

CREATE TABLE `settings_lang` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `val` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings_lang`
--

INSERT INTO `settings_lang` (`id`, `lang`, `parent`, `val`) VALUES
(1, 2, 'adress_footer', 'Bekabad district of Tashkent region'),
(2, 3, 'adress_footer', 'Бекабадский район Ташкентской области'),
(3, 3, 'logotitle', 'Самаркандский филиал Самаркандского института ветеринарной медицины'),
(4, 2, 'logotitle', 'Samarkand Branch of Samarkand Institute of Veterinary Medicine'),
(5, 2, 'mail', 'info@terdupi.uz'),
(6, 3, 'mail', 'info@terdupi.uz'),
(7, 2, 'phone', ' +998762219371'),
(8, 3, 'phone', ' +998762219371'),
(9, 2, 'phone2', '+998998384119'),
(10, 3, 'phone2', '+998998384119'),
(11, 2, 'phone3', '+998973449340'),
(12, 3, 'phone3', '+998973449340'),
(13, 2, 'phone4', '+998998384119'),
(14, 3, 'phone4', '+998998384119'),
(15, 3, 'phone4', '+998998384119'),
(16, 2, 'title', 'Termiz state university\'s Pedagogical institute'),
(17, 3, 'title', 'Платформа для финансирования малого бизнеса'),
(18, 2, 'webforte', ' WebForte.uz'),
(19, 3, 'webforte', ' WebForte.uz'),
(20, 2, 'facebook', 'https://www.facebook.com/terdupi.uz'),
(21, 3, 'facebook', 'https://www.facebook.com/terdupi.uz'),
(22, 2, 'telegram', 'https://t.me/TerDUPI_DIREKTORI'),
(23, 3, 'telegram', 'https://t.me/TerDUPI_DIREKTORI'),
(24, 2, 'instagram', 'http://terarx.uz/#'),
(25, 3, 'instagram', 'http://terarx.uz/#'),
(26, 2, 'service', 'Public services'),
(27, 3, 'service', 'Общественные услуги'),
(28, 2, 'cathedras', '15'),
(29, 3, 'cathedras', '15'),
(30, 2, 'faculties', '5'),
(31, 3, 'faculties', '5'),
(32, 2, 'professors', '149'),
(33, 3, 'professors', '149'),
(34, 2, 'arm_fund', '27447'),
(35, 3, 'arm_fund', '27447'),
(36, 2, 'youtube', 'https://www.youtube.com/channel/UClphkaFZkaGCHU2iku6II4A'),
(37, 3, 'youtube', 'https://www.youtube.com/channel/UClphkaFZkaGCHU2iku6II4A'),
(38, 2, 'copyright', '© 2022 Pedagogical Institute of Termez State University - All rights reserved'),
(39, 3, 'copyright', '© 2022 Педагогический институт Термезского государственного университета - Все права защищены');

-- --------------------------------------------------------

--
-- Структура таблицы `site_user`
--

CREATE TABLE `site_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `site_user`
--

INSERT INTO `site_user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `creator`, `district_id`, `rank`) VALUES
(2, 'admin', '2oPTB8o2X8oT6eaJq9AhOGXHdJ8RzTTL', '$2y$13$f2p4eJY6u8w8smC9VUN4guMMweinYS93F6NLDeGJIC/m50AnbkvAG', NULL, 'umail@mail.ru', 10, 1594473306, 1594473557, NULL, NULL, 1),
(3, 'oltinsoy_arx', '9LcQI8AnHiROMG0D1U5Top3RIF8mg4Y5', '$2y$13$0dRwBYZqHEa5GhdMJ4Be.eBXUGrrX/j023p9muyt3nLbDXT2NV3CG', NULL, 'oltinsoy@terarx.uz', 10, 1594473330, 1594583987, NULL, 94, 2),
(4, 'angor_arx', 'QMaGroGDw9NuEaubfxOs_5gGy0F2tsbz', '$2y$13$aIwhEc7rXM1C7xNIMYR4ze4ypE1lQqS6ZYX8GZcBWJpqzoHvPWVAK', NULL, 'angor@terarx.uz', 10, 1594588628, 1594588628, NULL, 95, 2),
(5, 'termizsh_arx', 'rA0XgxIbJFL6fHZgpPkEKPSczhRPbNsT', '$2y$13$p5Vc4STUiGPLjW04EoSmwevipRjkU1qaS6.sbT9ZZz9Kd6F4gHHz6', NULL, 'termizsh@terarx.uz', 10, 1598254002, 1598254002, NULL, 107, 2),
(6, 'boysun_arx', 'IvPCLoaVRV60-tSW3viTuvhymNHXnBYw', '$2y$13$jVcgTOWD0XZnubGa/mkv3OGXrluRU2GAyiXZ.sSsrNkMrqeUvfEmG', NULL, 'boysun@terarx.uz', 10, 1598254031, 1598254046, NULL, 96, 2),
(7, 'denov_arx', 'h4PEFV7XVFMaNDeHF8ptJS5vTLn5AQ4j', '$2y$13$10WH/vI.8DW6XpgfejwpiusOizkkIPxlFFegwlSKjSsPSGYTnSXHG', NULL, 'denov@terarx.uz', 10, 1598254077, 1598254077, NULL, 97, 2),
(8, 'jarqurgon_arx', '39VPFdP-yei5FkGgwNtk9qfZ3-Dh7UmP', '$2y$13$JwvAV/I7bxR69vFg7RjGiugNAF7OVTueyIfHQikfnKFS4Bl6CbZDy', NULL, 'jarqurgon@terarx.uz', 10, 1598254394, 1598254394, NULL, 98, 2),
(9, 'qiziriq_arx', '8SCp7N0pRf7s59qyoDT9HVgofzBASFR9', '$2y$13$96gUJbwTuplLD0GpbL9lnumzsbkKLpyAijNXpQOC4wXe2EbyAafRe', NULL, 'qiziriq@terarx.uz', 10, 1598254412, 1598254412, NULL, 99, 2),
(10, 'qumqurgon_arx', 'E3dyyK9G8-8FEJiDZWCYZtXJKCth0M9V', '$2y$13$z4ts1tK61rz6QswGfmTT0.N6LDZD03OCGtz6XTlO1MrPxbL3spk9u', NULL, 'qumqurgon@terarx.uz', 10, 1598254432, 1598254432, NULL, 100, 2),
(11, 'muzrabot_arx', '8MLHZ4BwaV4bIqVch858TNyfmKKootX_', '$2y$13$yYFs3qw3.0TJwBfdaPoIT.9nrY4Bet9kbeVltQBOY15bdq/WdD8HW', NULL, 'muzrabot@terarx.uz', 10, 1598254455, 1598254455, NULL, 101, 2),
(12, 'sariosiyo_arx', 'HpzLNATeJW37cXApvsm4-8KT7Hf_2GwL', '$2y$13$CVnbRQ2AevrFOUYp2wCuyuhZC0Y6mvr2OmN/YMBl5bKHkaMoT0skC', NULL, 'sariosiyo@terarx.uz', 10, 1598254483, 1598254483, NULL, 102, 2),
(13, 'termizt_arx', 'qQRKWzESMz3ZfJeX7AA_VJPtsuw4q2_M', '$2y$13$JS9ofRzWyBEyHwXhIo9DkOIEJ5Ir0Af0OHoGDYwR3fTiYWxG4b1fq', NULL, 'termizt@terarx.uz', 10, 1598254504, 1598254504, NULL, 103, 2),
(14, 'uzun_arx', 'ZrXVqarg6NeZ8SbJwTJQwmcCQ6OFBRoO', '$2y$13$JDlW1dMmgZj4IuEXDZqC9O60BCLXOjuVWCK2u1FmtawKtqr5SiBTS', NULL, 'uzun@terarx.uz', 10, 1598254528, 1598254528, NULL, 104, 2),
(15, 'sherobod_arx', 'zAB1e73X3w9fH51f_xMHh5Go1jaCVIrR', '$2y$13$PdDiMNPRvqqOcp28w2WZs.4qDJH/JuuZphTtCKlZLptcNe4FLFLg2', NULL, 'sherobod@terarx.uz', 10, 1598254549, 1600344263, NULL, 105, 2),
(16, 'shurchi_arx', 'a0nn9QGhio9QWHH_5I6jno1cI-CYb_W1', '$2y$13$VWFRL.BrGxGGoiIdxiIZde.AiKXhVv9ySONjlBuO4Evn9gaBCWKpm', NULL, 'shurchi@terarx.uz', 10, 1598254569, 1598254569, NULL, 106, 2),
(17, 'bandixon_arx', 'E_oZ7IyqQaXNX_-vGHrGWriWORR8ZFDT', '$2y$13$n7UHeqv.D4rw05JdyFIsDOATCcpgP.xhByZ8hhtk2CJcSha3.bq6i', NULL, 'bandixon@oncon.uz', 10, 1601432634, 1601432634, NULL, 194, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `source_message`
--

CREATE TABLE `source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(51, 'main', 'products'),
(52, 'main', 'more'),
(50, 'main', 'follower_text'),
(39, 'main', 'about_title_bottom'),
(47, 'main', 'demo_btn'),
(48, 'main', 'consultation'),
(49, 'main', 'follower_count'),
(35, 'main', 'about_title');

-- --------------------------------------------------------

--
-- Структура таблицы `telegram_settings`
--

CREATE TABLE `telegram_settings` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `telegram_user`
--

CREATE TABLE `telegram_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `creator`) VALUES
(1, 'root', 'dArVMsVrEo-9LPrwI4RtJc_I0eAnIIu9', '$2y$13$tiluCXM6rvru9PTaU.F3teSnc2vwO98EDSF8nqVmMJ7xZsY7t7Vhm', NULL, '', 10, 1481295772, 1513629941, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_lang`
--
ALTER TABLE `faq_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`,`language`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_category_lang`
--
ALTER TABLE `news_category_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_lang`
--
ALTER TABLE `news_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page_lang`
--
ALTER TABLE `page_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partner_lang`
--
ALTER TABLE `partner_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pcounter_save`
--
ALTER TABLE `pcounter_save`
  ADD PRIMARY KEY (`save_name`);

--
-- Индексы таблицы `pcounter_users`
--
ALTER TABLE `pcounter_users`
  ADD PRIMARY KEY (`user_ip`);

--
-- Индексы таблицы `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Индексы таблицы `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll` (`poll`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_lang`
--
ALTER TABLE `services_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `settings_lang`
--
ALTER TABLE `settings_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `site_user`
--
ALTER TABLE `site_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `source_message`
--
ALTER TABLE `source_message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `telegram_settings`
--
ALTER TABLE `telegram_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `telegram_user`
--
ALTER TABLE `telegram_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faq_lang`
--
ALTER TABLE `faq_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news_category_lang`
--
ALTER TABLE `news_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news_lang`
--
ALTER TABLE `news_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `page_lang`
--
ALTER TABLE `page_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `partner_lang`
--
ALTER TABLE `partner_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `post_image`
--
ALTER TABLE `post_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `services_lang`
--
ALTER TABLE `services_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `settings_lang`
--
ALTER TABLE `settings_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `site_user`
--
ALTER TABLE `site_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `source_message`
--
ALTER TABLE `source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `telegram_user`
--
ALTER TABLE `telegram_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_ibfk_1` FOREIGN KEY (`poll`) REFERENCES `polls` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
