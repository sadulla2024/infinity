-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 28 2024 г., 08:39
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
(1, 'O`zbekcha', 'uz', 1),
(2, 'English', 'en', 1),
(3, 'Русский', 'ru', 1);

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
(1, 0, NULL, 'Tuzilma', '/', NULL, 1, 1, NULL),
(3, 0, NULL, 'Yangiliklar', '/', NULL, 30, 1, NULL),
(4, 0, NULL, 'Xujjatlar', '/documents/view-all', NULL, 10, 1, NULL),
(5, 0, NULL, 'Faoliyat', '/', NULL, 50, 1, NULL),
(6, 0, NULL, 'Abituriyentlarga', '/', NULL, 60, 1, NULL),
(7, 0, NULL, 'Talabalarga', '/', NULL, 70, 1, NULL),
(8, 0, NULL, 'Bog\'lanish', '/', NULL, 80, 1, NULL),
(9, 0, NULL, 'Mediateka', '/album', NULL, 75, 1, NULL),
(10, 0, 1, 'Instituh haqida', '/page/view/5', NULL, NULL, 1, NULL),
(11, 0, 3, 'So\'ngi yangiliklar', '/news/view-all', NULL, NULL, 1, NULL),
(12, 0, 3, 'E\'lonlar', '/news/category/2', NULL, NULL, 1, NULL);

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
(22, 2, 12, 'Announcement');

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
(34, 'uz', 'Sayt Xaritasi');

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

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category`, `type`, `visible`, `creator`, `created_date`, `status`, `title`, `second_title`, `anons`, `body`, `main_image`, `secondary_image`, `icon`, `seen_count`, `event_date`, `ban`, `update_date`, `slider`) VALUES
(2, 1, NULL, NULL, 1, '2022-06-22 12:33:54', 1, '\"Yoshlar ishlari agentligi kubogi\" musobaqasining shaxmat turi bo‘yicha viloyat bosqichi boʻlib oʻtdi', '', '', '<p>Joriy yilning 28-may kuni &quot;Yoshlar ishlari agentligi kubogi&quot; musobaqasining shaxmat turi bo&lsquo;yicha viloyat bosqichi boʻlib oʻtdi. Musobaqada Termiz davlat universitetining Pedagogika instituti Pedagogika-psixologiya va boshlang&lsquo;ich ta&rsquo;lim fakulteti boshlangʻich taʼlim yo&lsquo;nalishi 201-guruh talabasi Muslima Olloqulova faxrli 3-oʻrinni egallab, diplom va pul mukofoti bilan taqdirlandi. Talabamizning ushbu yutuq bilan tabriklab, keyingi o&lsquo;qishlariga omad tilaymiz.</p>\r\n', 'fac92591ebddcfb8f91d539cfbea2cda.jpg', NULL, NULL, 5, '2022-06-03', 0, '2022-06-23 10:04:17', 0),
(3, 1, NULL, NULL, 1, '2022-06-22 12:36:20', 1, '«Oilaviy qadriyatlar-davlat rivoji va taraqqiyoti uchun mustahkam asosdir» mavzusi doirasida ...', '', '', '<p>Axborot soatida &laquo;oilaviy qadriyatlar-davlat rivoji va taraqqiyoti uchun mustahkam asosdir&raquo; mavzusi doirasida dramaturg erkin xushvaqtovning &laquo;andishali kelinchak&raquo; asaridan parcha yosh teatr jamoasi tomonidan namoyish etildi.</p>\r\n', '1a3dd0d8372702c8a9c7fd334b9c8d6e.jpg', NULL, NULL, 3, '2022-05-28', 0, '2022-06-22 17:10:31', 0),
(4, 1, NULL, NULL, 1, '2022-06-22 12:38:35', 1, '«Sog‘lom avlod» shiori ostida termiz shahrida talaba-yoshlar ishtirokida yugurish marafoni o‘tkazildi', '', '', '<p>Surxondaryo viloyati IIB tashabbusi bilan sog&lsquo;lom turmush tarzini aholi o&lsquo;rtasida keng targ&lsquo;ib qilish maqsadida &laquo;Sog&lsquo;lom avlod&raquo; shiori ostida Termiz shahrida talaba-yoshlar ishtirokida yugurish marafoni o&lsquo;tkazildi. Unda Termiz davlat universitetining Pedagogika instituti talaba &ndash;yoshlari faol qatnashdi. Marafonda Tarix, san&rsquo;at va sport fakulteti jismoniy tarbiya yo&lsquo;nalishi 1-bosqich talabalari Xurramova Shoxsanam 1-o&lsquo;rinni, Toshmirzaeva Umida 2- o&lsquo;rinni va Maktabgacha va texnologik ta&rsquo;lim fakulteti 1-bosqich talabasi Chorieva Zebiniso 3-o&lsquo;rinlarni egallashdi. Shu munosabat bilan institut direktori tarix fanlari doktori, professor E.A.Qobulov talabalarni qizg&lsquo;in tabriklab, ularni bundan keyingi o&lsquo;qishlariga muvaffaqiyatlar tiladi.</p>\r\n', '0a09b6ad32e1ee66f76d509d6938acf5.jpg', NULL, NULL, 12, '2022-06-25', 0, '2022-06-22 14:21:29', 0),
(5, 3, NULL, NULL, 1, '2022-06-23 07:52:51', 1, 'Bugun termiz davlat universitetining pedagogika institutida  o‘quv ishlari bo‘yicha direktor o‘rinbosari  b.imanov boshchiligida  ...', '', '', '<p>Bugun Termiz davlat universitetining Pedagogika institutida o&lsquo;quv ishlari bo&lsquo;yicha direktor o&lsquo;rinbosari B.Imanov boshchiligida Magistratura mutaxassisligi bo&lsquo;yicha barcha mas&rsquo;ul kafedra mudirlari va professor-o&lsquo;qituvchilar ishtirokida yig&lsquo;ilish o&lsquo;tkazildi. Yig&lsquo;ilishda B.Imanov dars sifatini zamon talablari asosida o&lsquo;tish, magistrlar bilimini baholashda shaffoflikka amal qilish hamda ta&rsquo;lim jarayonida ayrim o&lsquo;qituvchilar tomonidan yo&lsquo;l qo&lsquo;yilayotgan xato va kamchilliklar borasida to&lsquo;xtalib, ularni bartaraf etish kerakligini ta&rsquo;kidlab o&lsquo;tdi. Shuningdek, yig&lsquo;ilishda professor-o&lsquo;qituvchilarning ta&rsquo;lim sifatini yuqori bosqichga olib chiqish yuzasidan fikr mulohazalari tinglandi va bu borada rahbariyat tomonidan mas&rsquo;ul xodimlarga qo&lsquo;shimcha topshiriqlar berildi.</p>\r\n', '923b4b89e884de0e560749265cf02f44.jpg', NULL, NULL, 4, NULL, 0, '2022-06-23 07:56:21', 0),
(7, 3, NULL, NULL, 1, '2022-06-23 11:08:07', 1, '“Ilm-fan va innovatsiyalarni rivojlantirishda olima xotin-qizlarning o‘rni” mavzusida davra suhbati bo’lib o’tdi...', '', '', '<p>&nbsp; &nbsp; &nbsp;<img alt=\"➡️\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/27a1.svg\" />Seminarni Yoshlar masalalari va ma&rsquo;naviy-ma&rsquo;rifiy ishlar bo&lsquo;yicha direktor o&lsquo;rinbosari Sh.Qosimov kirish so&lsquo;zi bilan ochdi va yangi innovatsiya loyihalar borasida olib borilayotgan ishlar haqida to&lsquo;xtalib o&lsquo;tdi.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"✅\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/2705.svg\" />Seminarda mavzu yuzasidan Viloyat oila va xotin-qizlar boshqarmasi boshlig&lsquo;i, viloyat hokimi o&lsquo;rinbosari Zulxumor Xidirova ma&rsquo;ruza qildi.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"⚡\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/26a1.svg\" />Shuningdek, tadbirda Innovatsion loyihalar &ndash; jamiyat taraqqiyoti mezoni, Surxondaryoning tuproqli iqlim shariotida zanjabil (imbir) ning o&lsquo;sish va rivojlanish biologiyasi mavzularida psixologiya fanlari nomzodi, dotsent Mehri Norbosheva, pedagogika fanlari nomzodi, dotsent Dilbar Qodirovalar chiqish qilishdi. Tadbirda xotin-qizlar maslahat Kengashi raisi S.Tursunova institutda olima xotin-qizlar tomonidan amalga oshirilayotgan ilmiy ishlar borasida tadbir ishtirokchilariga ma&rsquo;lumot berib o&lsquo;tdi. Shundan so&lsquo;ng olima xotin-qizlar va talabalar ishtirokida Viloyat oila va xotin-qizlar boshqarmasi boshlig&lsquo;i, viloyat hokimi o&lsquo;rinbosari Zulxumor Xidirova bilan mavzu yuzasidan savol-javob tashkil etildi. Tadbirda OAV xodimlari va jurnalistlar ishtirok etishdi. Tadbir yuqori saviyada tashkil etilganligi va ma&rsquo;ruzalar dolzarbligi jihatdan barcha ishtirokchilarda katta taassurot qoldirdi.</p>\r\n', '24857e62fad2d661908c9b10eba4a386.jpg', NULL, NULL, 0, '2022-05-25', 0, '2022-06-23 11:08:07', 0),
(8, 3, NULL, NULL, 1, '2022-06-23 11:11:00', 1, '26-may kuni termiz davlat universitetining pedagogika instituti kengashining navbatdagi yigʻilishi bo‘lib o‘tdi', '', '', '<p><strong><img alt=\"✅\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/2705.svg\" /></strong>&nbsp;26-may kuni Termiz davlat universitetining Pedagogika instituti Kengashining navbatdagi yig`ilishi bo&lsquo;lib o&lsquo;tdi. Unda Kengash a&rsquo;zolari,&nbsp;direktor&nbsp;o&rsquo;rinbosarlari, boʻlim boshliqlari, fakultet dekanlari, kafedra mudirlari ishtirok etishdi. Kengashni institutning direktori Eshbolta Atamurodovich Qobulov kirish so&lsquo;zi bilan ochdi va&nbsp;ta&rsquo;lim sifatini&nbsp;yuqori bosqichga olib chiqish hamda barcha kafedralardagi me&rsquo;yoriy&nbsp;hujjatlarni to&lsquo;liq tayyorlash borasida to&lsquo;xtalib o&lsquo;tdi.&nbsp;</p>\r\n\r\n<p><img alt=\"????\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/1f538.svg\" />&nbsp;Yig&lsquo;ilishda o&lsquo;quv ishlari bo&lsquo;yicha direktor o&lsquo;rinbosari B.Imanovning &ldquo;Surxon tongi&rdquo; gazetasining 2022-yil 13-apreldagi №18(17793)-sonida e&rsquo;lon qilingan&nbsp;institut&nbsp;kafedralarining vakant (kafedra mudiri, katta o&lsquo;qituvchi, o&lsquo;qituvchi, assistent o&lsquo;qituvchi, stajyor o&lsquo;qituvchi) o&lsquo;rinlariga e&rsquo;lon qilingan tanlov to&lsquo;g&lsquo;risidagi va Sirtqi bo&lsquo;lim&nbsp;boshlig&lsquo;i R.Omonovlarning Sirtqi (maxsus sirtqi) bo&lsquo;limda o&lsquo;quv ishlarning kompleks tahlili yuzasidan tayyorlagan hisobotlari tinglandi.</p>\r\n\r\n<p><img alt=\"⚡️\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/26a1.svg\" />&nbsp;Shuningdek, Kengashda Musiqiy ta&rsquo;lim va tasviriy san&rsquo;at kafedrasi mudiri Ch.Sadatovga dotsentlik diplomi va bir guruh professor-o&lsquo;qituvchilarga &ldquo;O&lsquo;zbekiston &ldquo;Veteran&rdquo; Birlashmasi oldidagi xizmatlari uchun&rdquo; va &ldquo;Yoshlarni Vatanparvarlik ruhida tarbiyalash uchun&rdquo; medallari tantanali ravishda topshirildi. Shundan so&lsquo;ng Kengashda ko&lsquo;rilgan masalalar muhokama qilinib,tegishli qarorlar qabul qilindi. Yig&lsquo;lish yakunida kun tartibidagi masalalar yuzasidan tegishli mas&rsquo;ul xodimlarga rahbariyat tomonidan qo&lsquo;shimcha topshiriqlar berildi.</p>\r\n', '3fe81a73be0e8c82c391f8e416df6d91.jpg', NULL, NULL, 0, '2022-05-26', 0, '2022-06-23 11:11:00', 0),
(9, 3, NULL, NULL, 1, '2022-06-23 11:14:15', 1, 'Termiz davlat universitetining  pedagogika instituti  talabalari va oliygoh o’qituvchisi g. radjabova   ishtirokida ilmiy-amaliy seminar tashkil etildi', '', '', '<p>Termiz shahar 17-DMTT&nbsp; da &laquo;Yo&rsquo;l xaritasi&raquo;doirasida &laquo;Uzluksiz ma&rsquo;naviy tarbiya Konsepsiyasi&raquo;asosida &laquo;Baxtli bola ma&rsquo;naviyati&raquo;kompleks chora-tadbirlarni tashkil etish doirasida&raquo;Maktabgacha ta&rsquo;lim yoshidagi bolalarda ma&rsquo;naviy tarbiyani shakllantirishdagi dolzarb masalalar: muammolar va yechimlar mavzusida Termiz davlat universitetining&nbsp; Pedagogika instituti talabalari va oliygoh o&rsquo;qituvchisi G. Radjabova&nbsp;&nbsp; ishtirokida ilmiy-amaliy seminar tashkil etildi.</p>\r\n', '486d1df36d6cc0aba5806c0138371f76.jpg', NULL, NULL, 0, '2022-02-26', 0, '2022-06-23 11:14:15', 0),
(10, 3, NULL, NULL, 1, '2022-06-23 11:16:52', 1, '18-may kuni yurtimiz bo‘ylab barcha muzeylarda xalqaro muzeylar kuni keng nishonlanib, barcha muzeylarda «ochiq eshiklar kuni» o‘tkazilmoqda..', '', '', '<p><img alt=\"????\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/1f3db.svg\" />&nbsp; Har qanday davlat taraqqiyot sari intilar ekan, doimo tarixga nazar tashlab, mavjud urf-odatlar, anʼanalar va qadimiy yodgorliklarni oʻrganishga va saqlashga intilishi tabiiy. Ayniqsa bu borada muzeylarning oʻrni beqiyosdir.&nbsp;<img alt=\"⚡️\" src=\"https://s.w.org/images/core/emoji/14.0.0/svg/26a1.svg\" />18-may kuni yurtimiz bo&lsquo;ylab barcha muzeylarda Xalqaro muzeylar kuni keng nishonlanib, barcha muzeylarda &laquo;Ochiq eshiklar kuni&raquo; o&lsquo;tkazilmoqda. Shu munosabat bilan Termiz davlat universitetining Pedagogika instituti Aniq va tabiiy fanlar fakulteti dekan o&rsquo;rinbosari, tyutorlar va talabalar Termiz arxeologiya hamda Tarix va madaniyat muzeylariga ekskursiya tashkil etishdi. Tashrif chog&rsquo;ida talabalar muzey bo&rsquo;limlari va tarixiy eksponatlar bilan tanishib, hududning boy ma&rsquo;naviy hayoti va tarixiy ahamiyatini aks ettirgan ko`rgazmalar bilan tanishdi.</p>\r\n', '1cce4ca49685d6ec28ce5245051f4f52.jpg', NULL, NULL, 0, '2022-05-18', 0, '2022-06-23 11:16:52', 0),
(11, 3, NULL, NULL, 1, '2022-06-23 11:19:11', 1, 'Psixologiya kafedrasi professor-o‘qituvchilari tashabbusi bilan 1-talabalar turar joyida talaba-qizlar ishtirokida «yoshlar uchun bir kun-hamma uchun har kun» mavzusida ma’naviy-ma’rifiy tadbir o‘tkazildi', '', '', '<p>Termiz davlat universitetining Pedagogika instituti Pedagogika-psixologiya va boshlang&lsquo;ich ta&rsquo;lim fakulteti Psixologiya kafedrasi professor-o&lsquo;qituvchilari tashabbusi bilan 1-talabalar turar joyida talaba-qizlar ishtirokida &laquo;Yoshlar uchun bir kun-hamma uchun har kun&raquo; mavzusida ma&rsquo;naviy-ma&rsquo;rifiy tadbir o&lsquo;tkazildi. Tadbirda talaba-qizlar o&rsquo;rtasida sportning shashka, arqonda sakrash, xalqa aylantirish&nbsp; turi bo&lsquo;yicha va qog&lsquo;oz ustida raqsga tushish, tez aytishuv, mantiqiy savollar bo&lsquo;yicha musobaqalar tashkil etildi. Shuningdek, tadbirda qiziqarli psixologik trening mashg&rsquo;ulotlari olib borildi. Tadbir so&lsquo;ngida musobaqalarda faol ishtirok etib, g&lsquo;oliblikni qo&lsquo;lga kiritgan talabalar diplom va faxriy yorliqlar bilan taqdirlandilar.</p>\r\n', '545e62c5287482725e77e62b7cc54a27.jpg', NULL, NULL, 0, '2022-05-20', 0, '2022-06-23 11:19:11', 0),
(12, 3, NULL, NULL, 1, '2022-06-23 11:24:18', 1, 'Prezident ta\'lim tizimidagi islohotlarning borishi bo\'yicha majlis o\'tkazdi', '', '', '<p>O&#39;zbekiston Respublikasi Prezidenti Shavkat Mirziyoyev 16-avgust kuni umumta&#39;lim maktablari va o&#39;rta maxsus, kasb-hunar ta&#39;limi, oliy ta&#39;lim muassasalari o&#39;rtasida o&#39;zaro integratsiyani ta&#39;minlagan holda yangi o&#39;quv yiliga tayyorgarlikning borishi, 11-yillik o&#39;rta ta&#39;lim tizimini joriy etish, o&#39;rta maxsus, kasb-hunar ta&#39;limi tizimini tubdan isloh qilish, yangi ochilgan oliy ta&#39;lim muassasalari, filiallar faoliyatini tashkil etish bilan bog&#39;liq ishlar holati bilan yaqindan tanishish maqsadida oliy va o&#39;rta maxsus ta&#39;lim vaziri I.Majidov, O&#39;rta maxsus, kasb-hunar ta&#39;limi markazi direktori M.Xolmuhamedov, xalq ta&#39;limi vaziri U.Inoyatov va ularning o&#39;rinbosarlarini qabul qildi va hisobotlarini tingladi.&nbsp;</p>\r\n\r\n<p>Majlisda Prezidentning Davlat maslahatchisi A.Yunusxodjayev, Bosh vazir o&#39;rinbosari J.Qo&#39;chqorov va Hisob palatasi raisi M.Ikromov qatnashdi.&nbsp;</p>\r\n\r\n<p>Muloqot chog&#39;ida O&#39;zbekiston Respublikasi Prezidenti tomonidan o&#39;rta ta&#39;lim, o&#39;rta maxsus, kasb-hunar ta&#39;limi tizimini tubdan isloh qilish borasida berilgan topshiriqlar ijrosining borishi ko&#39;rib chiqildi.&nbsp;</p>\r\n\r\n<p>Belgilangan vazifaga muvofiq, umumta&#39;lim maktablari 9-sinf bitiruvchilarini o&#39;z xohishiga ko&#39;ra 10-sinfda o&#39;qishini davom ettirishi, o&#39;rta maxsus, kasb-hunar ta&#39;limi muassasalariga qamrab olish ishlari izchil davom etmoqda.&nbsp;</p>\r\n\r\n<p>O&#39;quv rejasiga ko&#39;ra, 10-sinf o&#39;quvchilari haftada 5 kun umumta&#39;lim fanlarini va 1 kun kasbga doir fanlarni o&#39;rganishi belgilandi. Kasb-hunar kollejlaridan uzoq masofada joylashgan 2703 ta maktab uchun 1103 ta maktabda, 6956 maktab uchun esa 615 ta kollejda o&#39;quv-ishlab chiqarish majmualari tashkil etiladi.&nbsp;</p>\r\n\r\n<p>Maktablarda 10-sinf ochilishi munosabati bilan 22 ming o&#39;qituvchiga ehtiyoj yuzaga keladi. Shularning 9,5 ming nafari oliy ta&#39;lim muassasalari bitiruvchilari hisobidan, 13 ming nafari litsey va kollejlar o&#39;qituvchilarini jalb etish hisobidan qoplash rejalashtirilyapti.&nbsp;</p>\r\n\r\n<p>2017-2018 o&#39;quv yilidan boshlab 10-sinflarda dars beradigan 116 ming nafar o&#39;qituvchining kasbga oid bilimlarini yangilash va chuqurlashtirish maqsadida qisqa muddatli malaka oshirish kurslari yo&#39;lga qo&#39;yildi.&nbsp;</p>\r\n\r\n<p>10-sinf o&#39;quvchilari uchun 8,5 million nusxa darslik va o&#39;quv-metodik qo&#39;llanmalar chop etilib, ayni paytda ta&#39;lim muassasalariga yetkazilmoqda.&nbsp;</p>\r\n\r\n<p>Ta&#39;lim muassasalarini yangi o&#39;quv yiliga tayyorlash bo&#39;yicha vertikal tizim yaratilib, vazirlikdan hududlarga 14 nafar, hududiy xalq ta&#39;limi boshqarmalaridan tuman va shaharlarga 195 nafar, tuman va shahar xalq ta&#39;limi bo&#39;limlaridan har bir maktabga mas&#39;ullar biriktirildi.&nbsp;</p>\r\n\r\n<p>Bu yil 1-sinfga qabul qilinadigan 650 ming nafar o&#39;quvchi uchun &quot;Prezident sovg&#39;asi&quot; sifatida 12 nomdagi o&#39;quv qurollari solingan maktab sumkalari tayyorlanib, joylarga to&#39;liq yetkazildi.&nbsp;</p>\r\n\r\n<p>Oliy va o&#39;rta maxsus ta&#39;lim vazirligi, O&#39;rta maxsus, kasb-hunar ta&#39;limi markazi hamkorligida iqtidorli va qobiliyatli o&#39;quvchilarni tanlab olish va ularni oliy ta&#39;lim muassasalariga maqsadli tayyorlashni tashkil etish uchun har bir oliy ta&#39;lim muassasasi huzurida bittadan akademik litsey ochish va faoliyatini yo&#39;lga qo&#39;yish ishlari olib borilmoqda.&nbsp;</p>\r\n\r\n<p>O&#39;rta maxsus, kasb-hunar ta&#39;limi muassasalari tarmoq vazirliklari va davlat qo&#39;mitalariga biriktirib berildi.&nbsp;</p>\r\n\r\n<p>10-11-sinflar joriy etilib, kollejlarda kontingent qisqarishi munosabati bilan mavjud moddiy-texnika bazasidan samarali foydalanish maqsadida 7 ta kollej va akademik litsey negizida yangi 3 ta oliy ta&#39;lim muassasasi filiallari va 1 ta oliy ta&#39;lim muassasasi tashkil etilmoqda.&nbsp;</p>\r\n\r\n<p>Muloqot chog&#39;ida oliy ta&#39;lim muassasalari professor-o&#39;qituvchilarini ortiqcha hisobotlar, turli byurokratik topshiriqlardan ozod etish, ularning ilmiy salohiyatini ta&#39;lim mazmuni va sifatini yanada yaxshilash, ilmiy- tadqiqot ishlariga yo&#39;naltirish masalalariga ham alohida e&#39;tibor qaratildi.&nbsp;</p>\r\n\r\n<p>Prezidentimiz maktabgacha ta&#39;lim muassasalari faoliyatini tubdan yaxshilash, eng ilg&#39;or xorijiy tajribani o&#39;rganish, har jihatdan zamonaviy tizim yaratish masalasiga to&#39;xtalib o&#39;tdi. Bolalarning qiziqish va intilishlarini hisobga olgan holda, ularga maktabgacha bo&#39;lgan davrda har tomonlama puxta ta&#39;lim va tarbiya berish, dunyoqarashini kengaytirish, mustaqil fikrlash qobiliyatini rivojlantirish, qalbi va ongiga milliy va umuminsoniy qadriyatlarni singdirib borish, shu orqali ularni ona Vatanga muhabbat, pokiza orzular ruhida kamol toptirish bugungi kundagi eng muhim, eng dolzarb masalalardan biri ekanini ta&#39;kidladi. Zero, farzandlarimizning maktabda qanday o&#39;qishi, qanday yuksak maqsadlar bilan kamol topishi ko&#39;p jihatdan ularning maktabgacha ta&#39;lim muassasasida oladigan tarbiyasiga bog&#39;liqdir.&nbsp;</p>\r\n\r\n<p>Majlisda davlatimiz rahbari tomonidan maktabgacha ta&#39;lim tizimini tarkibiy jihatdan tubdan isloh qilish, boshqaruv tuzilmasini tashkil etish, mazkur muassasalarga bolalarni 100 foiz qamrab olishga qaratilgan alohida dastur ishlab chiqish, boshlang&#39;ich ta&#39;lim muassasalariga qator imtiyozlar berish, shuningdek, Xalq ta&#39;limi vazirligi tasarrufidagi malaka oshirish institutlarida ta&#39;lim mazmunini sifat jihatdan tubdan o&#39;zgartirish, ularni eng ilg&#39;or oliy ta&#39;lim muassasalari tarkibiga o&#39;tkazish orqali umumiy o&#39;rta ta&#39;lim maktablari o&#39;qituvchilariga eng bilimli va tajribali professor-o&#39;qituvchilar ta&#39;lim berishiga erishish borasida muhim vazifalar belgilab berildi.&nbsp;</p>\r\n', '477d1418938bf8af92fa5760ee193907.jpg', NULL, NULL, 0, '2022-05-09', 0, '2022-06-23 11:24:18', 0),
(13, 3, NULL, NULL, 1, '2022-06-23 11:29:02', 1, '2022-yilda Oliy va o‘rta maxsus ta’lim vazirligini qanday o‘zgarishlar kutmoqda?', '', '', '<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong><em>Bu haqida vazir Abduqodir Toshqulov ma&rsquo;lumot berdi.</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2022 yilda: Oliy ta&rsquo;lim sohasida sog&lsquo;lom raqobat muhitini shakllantirish hamda yoshlarni oliy ta&rsquo;lim bilan qamrov darajasini 32 foizga yetkazish maqsadida nodavlat oliy ta&rsquo;lim muassasalari sonini 25 tadan, jami oliygohlar sonini 160 tadan oshiramiz.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Is&rsquo;hoqxon Ibrat nomidagi Namangan davlat chet tillar instituti, Andijon davlat chet tillar instituti faoliyati yo&lsquo;lga qo&lsquo;yilsa, Navoiy davlat konchilik instituti negizida Navoiy politexnika universiteti tashkil etiladi.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kelgusi yillarda:</p>\r\n\r\n<p>- oliy ta&rsquo;limning me&rsquo;yoriy-uslubiy tizimi xalqaro standartlarga muvofiq joriy etiladi va buning natijasida:</p>\r\n\r\n<p>mamlakat oliy ta&rsquo;lim tizimi jahon ta&rsquo;lim makoniga to&lsquo;liq integratsiya qilinadi;</p>\r\n\r\n<p>- xalqaro akademik va ilmiy mobillik huquqiy asosga ega bo&lsquo;lib, keskin kengayadi;</p>\r\n\r\n<p>- diplomlar, akademik va ilmiy darajalar &ldquo;konvertatsiyasi&rdquo; uchun keng imkoniyatlar yaratiladi;</p>\r\n\r\n<p>- ta&rsquo;lim dasturlarini xalqaro miqyosda uyg&lsquo;unlashtirish imkoniyatlari kengayadi;</p>\r\n\r\n<p>- mamlakat oliy ta&rsquo;lim muassasalari xalqaro reytinglarda tengma-teng ishtirok etishi imkoniyatlari yanada oshadi;</p>\r\n\r\n<p>- ta&rsquo;lim jarayoniga xorijiy mutaxassislarni jalb qilish imkoniyatlari kengayadi;</p>\r\n\r\n<p>- xalqaro akademik va ilmiy loyihalarni amalga oshirish ko&lsquo;lami kengayadi;</p>\r\n\r\n<p>- qo&lsquo;shma dasturlar asosida o&lsquo;qitish imkoniyatlari kengayadi.</p>\r\n', '', NULL, NULL, 4, '2022-06-23', 0, '2022-07-04 10:06:08', 0);

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

--
-- Дамп данных таблицы `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `status`, `order_by`, `parent`) VALUES
(1, 'Tadbirlar', 1, NULL, NULL),
(2, 'E\'lonlar', 1, NULL, NULL),
(3, 'Institut yangiliklari', 1, NULL, NULL);

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

--
-- Дамп данных таблицы `news_lang`
--

INSERT INTO `news_lang` (`id`, `lang`, `parent`, `title`, `second_title`, `anons`, `body`, `main_image`, `status`) VALUES
(1, 2, 5, 'Pedagogical Institute of Termez State University under the leadership', NULL, '', '<p>Today at the Pedagogical Institute of Termez State University under the chairmanship of the Deputy Director for Academic Affairs B.Imanov was held a meeting with the participation of all heads of departments and professors responsible for the Master&#39;s degree. At the meeting, B. Imanov stressed the need to improve the quality of lessons in accordance with modern requirements, transparency in the assessment of master&#39;s knowledge, as well as the mistakes and shortcomings of some teachers in the educational process. &#39;he shouted. The meeting also heard the views of professors and teachers on improving the quality of education, and the management gave additional instructions to the responsible staff in this regard.</p>\r\n', 'bce0f5e87734763dd28551a3cebb2634.jpg', 1),
(2, 3, 8, '26 мая состоялось очередное заседание Правления Педагогического института Термезского государственно', NULL, '', '<p>26 мая состоялось очередное заседание Совета педагогического института Термезского государственного университета. В нем приняли участие члены Совета, заместители директора, заведующие кафедрами, деканы факультетов, заведующие кафедрами. Встречу открыл директор института Эшболта Атамуродович Кобулов, который рассказал о необходимости повышения качества образования и полной подготовки регламентов на всех факультетах.</p>\r\n\r\n<p>На встрече присутствовали заместитель директора по учебной работе Б.Иманов в газете &laquo;Сурхан Тонги&raquo; от 13 апреля 2022 года №18 (17793)., преподаватель, ассистент, стажер) и заведующий заочным отделом Р.Омонов заслушаны доклады о комплексном разборе дел.</p>\r\n\r\n<p>Совет также наградил заведующего кафедрой музыкального образования и изобразительного искусства Ч. Садатова дипломом доцента и группу профессоров медалями &laquo;За заслуги перед Союзом ветеранов Узбекистана&raquo; и &laquo;За воспитание молодежи в духе патриотизма&raquo;. .&quot; сдал. После этого были обсуждены вопросы, обсуждавшиеся в Совете, и приняты соответствующие решения. В завершение встречи руководство дало дополнительные поручения соответствующим должностным лицам по вопросам повестки дня.</p>\r\n', '44a65b01fda45366217de4a5fa740c08.jpg', 1),
(3, 2, 8, 'The next meeting of the Board of the Pedagogical Institute of Termez State University was held on Ma', NULL, '', '<p>A regular meeting of the Council of the Pedagogical Institute of Termez State University was held on May 26. It was attended by members of the Council, deputy directors, heads of departments, deans of faculties, heads of departments. The meeting was opened by the director of the institute Eshbolta Atamurodovich Kobulov, who spoke about the need to improve the quality of education and the full preparation of regulations in all departments.</p>\r\n\r\n<p>The meeting was attended by Deputy Director for Academic Affairs B.Imanov in the newspaper &quot;Surkhan Tongi&quot; dated April 13, 2022 №18 (17793). , teacher, assistant teacher, trainee teacher) and the head of the Correspondence Department R. Omonov reports on the complex analysis of cases were heard.</p>\r\n\r\n<p>The Council also awarded the head of the Department of Music Education and Fine Arts Ch. Sadatov with an associate professor&#39;s diploma and a group of professors with medals &quot;For services to the Veteran Association of Uzbekistan&quot; and &quot;For educating youth in the spirit of patriotism.&quot; handed over. After that, the issues discussed in the Council were discussed and relevant decisions were made. At the end of the meeting, the management gave additional instructions to the relevant officials on the issues on the agenda.</p>\r\n', '419b81c66a42a93dcb251e7934044226.jpg', 1),
(4, 3, 9, 'Студенты педагогического института Термезского государственного университета и преподаватель вуза г.', NULL, '', '<p>Термезская 17-ДМТТ в рамках &laquo;Дорожной карты&raquo; на основе &laquo;Концепции непрерывного духовного образования&raquo; в рамках организации комплексных мероприятий &laquo;Духовность счастливого ребенка&raquo; Актуальные вопросы формирования духовного образования в дошкольники : научно-практический семинар по проблемам и решениям с участием студентов педагогического института Термезского государственного университета и преподавателя университета Г. Раджабовой.</p>\r\n', 'ea1db73ba27141a5be911d67d2f61d9c.jpg', 1),
(5, 2, 9, 'Students of the Pedagogical Institute of Termez State University and a university teacher g. A scien', NULL, '', '<p>Termez 17-DMTT in the framework of the &quot;Road Map&quot; on the basis of the &quot;Concept of continuous spiritual education&quot; in the framework of the organization of complex events &quot;Spirituality of a happy child&quot; &quot;Current issues in the formation of spiritual education in preschool children : a scientific-practical seminar on the problems and solutions with the participation of students of the Pedagogical Institute of Termez State University and a teacher of the university G. Radjabova.</p>\r\n', '31bc5ea474af0bf6ea267ff35ebd1a48.jpg', 1),
(6, 2, 10, 'On May 18, International Museum Day will be widely celebrated in all museums across the country, and', NULL, '', '<p>As any country strives for development, it is natural to look to history and to study and preserve existing customs, traditions and ancient monuments. Especially in this regard, the role of museums is invaluable. On May 18, International Museum Day is widely celebrated in all museums across the country, and &quot;Open Day&quot; is held in all museums. In this regard, the Deputy Dean of the Faculty of Exact and Natural Sciences of the Pedagogical Institute of Termez State University, tutors and students organized an excursion to the Museum of Archeology and History and Culture of Termez. During the visit, the students got acquainted with the museum departments and historical exhibits, as well as with the exhibitions reflecting the rich spiritual life and historical significance of the region.</p>\r\n', '2a8d14ef5a71423866eca8bb77de7607.jpg', 1),
(7, 3, 10, '18 мая во всех музеях страны будет широко отмечаться Международный день музеев, во всех музеях пройд', NULL, '', '<p>Поскольку любая страна стремится к развитию, естественно обращаться к истории, изучать и сохранять существующие обычаи, традиции и древние памятники. Особенно в этом плане неоценима роль музеев. 18 мая во всех музеях страны широко отмечается Международный день музеев, во всех музеях проводится &laquo;День открытых дверей&raquo;. В связи с этим заместитель декана факультета точных и естественных наук Педагогического института Термезского государственного университета, преподаватели и студенты организовали экскурсию в Музей археологии и истории и культуры Термеза. В ходе визита студенты ознакомились с музейными отделами и историческими экспонатами, а также с выставками, отражающими богатую духовную жизнь и историческое значение края.</p>\r\n', '69eca0f1a6f4391f10a929c8d5089484.jpg', 1),
(8, 3, 11, 'По инициативе профессоров и преподавателей кафедры психологии в 1 общежитии было проведено духовно-п', NULL, '', '<p>По инициативе профессоров и преподавателей кафедры психологии факультета педагогики и психологии и начального образования педагогического института Термезского государственного университета с участием студентов 1 общежития по теме проведено воспитательное мероприятие. Мероприятие включало в себя соревнования среди школьников по шашкам, прыжкам со скакалкой, вращению и танцам с бумагой, быстрой речи и логическим задачам. Мероприятие также включало в себя несколько интересных психологических тренингов. В завершение мероприятия студенты, активно участвовавшие в конкурсах и одержавшие победу, были награждены дипломами и почетными грамотами.</p>\r\n', '82893a3b8c3b572ed30c917542b47ef6.jpg', 1),
(9, 2, 11, 'At the initiative of professors and teachers of the Department of Psychology in the 1st dormitory wa', NULL, '', '<p>At the initiative of professors and teachers of the Department of Psychology, Faculty of Pedagogy and Psychology and Primary Education of the Pedagogical Institute of Termez State University with the participation of students in the 1st dormitory on the theme an educational event was held. The event included competitions among students in checkers, rope jumping, spinning, and paper dancing, quick speech, and logic questions. The event also included interesting psychological training. At the end of the event, the students who actively participated in the competitions and won were awarded diplomas and certificates of honor.</p>\r\n', '08fc4b5311a86826dbfed60787c9b0ef.jpg', 1),
(10, 2, 12, 'The President held a meeting on the progress of reforms in the education system', NULL, '', '<p>President of the Republic of Uzbekistan Shavkat Mirziyoyev on August 16 with the state of affairs related to the introduction of the 11-year secondary education system, the radical reform of the system of secondary special, vocational education, the organization of the activities of newly opened higher education institutions, branches In order to get acquainted with the Minister of Higher and Secondary Special Education I.Majidov, Director of the Center for Secondary Special and Vocational Education M.Kholmukhamedov, Minister of Public Education U.Inoyatov and their deputies and listened to their reports.</p>\r\n\r\n<p>The meeting was attended by State Advisor to the President A. Yunuskhodjayev, Deputy Prime Minister J. Kuchkarov and Chairman of the Accounts Chamber M. Ikramov.</p>\r\n\r\n<p>During the talks, the sides discussed the implementation of the instructions given by the President of the Republic of Uzbekistan on radical reform of the system of secondary education, secondary special and vocational education.</p>\r\n\r\n<p>In accordance with the set task, secondary schools will continue to enroll 9th ​​grade graduates in 10th grade at their own discretion, and work is underway to enroll them in secondary special and vocational education institutions.</p>\r\n\r\n<p>According to the curriculum, 10th grade students will study general subjects 5 days a week and vocational subjects 1 day a week. Training and production complexes will be established in 1103 schools for 2703 schools located at a distance from vocational colleges, and in 615 colleges for 6956 schools.</p>\r\n\r\n<p>With the opening of the 10th grade in schools, there will be a need for 22,000 teachers. It is planned to cover 9.5 thousand of them at the expense of graduates of higher education institutions, 13 thousand - at the expense of teachers of lyceums and colleges.</p>\r\n\r\n<p>Starting from the 2017-2018 academic year, short-term professional development courses have been launched for 116,000 teachers teaching in 10th grades in order to update and deepen their professional knowledge.</p>\r\n\r\n<p>8.5 million copies of textbooks and teaching aids for 10th grade students have been published and are currently being delivered to educational institutions.</p>\r\n\r\n<p>A vertical system has been created to prepare educational institutions for the new school year. attached.</p>\r\n\r\n<p>For 650,000 students who will be admitted to the 1st grade this year, school bags with 12 items of school supplies have been prepared and delivered to the places as a &quot;President&#39;s gift&quot;.</p>\r\n\r\n<p>In cooperation with the Ministry of Higher and Secondary Special Education, the Center for Secondary Special and Vocational Education, each higher education institution to select gifted and talented students and organize their targeted training in higher education institutions. One academic lyceum is being opened and its activities are being carried out at the institution.</p>\r\n\r\n<p>Secondary special, vocational education institutions were attached to line ministries and state committees.</p>\r\n\r\n<p>In order to effectively use the existing material and technical base in connection with the reduction of the contingent in colleges, 3 new branches of 3 higher education institutions and 1 higher education institution are being established on the basis of 7 colleges and academic lyceums.</p>\r\n\r\n<p>During the talks, special attention was paid to the release of professors and teachers of higher education institutions from excessive reporting, various bureaucratic tasks, further improving the content and quality of education, directing their scientific potential to research.</p>\r\n\r\n<p>The President touched upon the issues of radical improvement of the activity of preschool educational institutions, study of the best foreign experience, creation of a modern system in all respects. Taking into account the interests and aspirations of children, to provide them with comprehensive education and upbringing in preschool, to expand their worldview, to develop independent thinking, to instill in their hearts and minds national and universal values, thereby instilling in them a love for the motherland. stressed that perfection in the spirit of dreams is one of the most important, topical issues today. After all, how our children go to school, how they grow up with high goals, depends in many ways on the upbringing they receive in preschool.</p>\r\n\r\n<p>At the meeting, the head of state called for a radical reform of the pre-school education system, the establishment of a management structure, the development of a special program aimed at 100% coverage of children in these institutions, the provision of a number of benefits to primary schools, as well as public education. Qualitatively changing the content of education in the institutes of advanced training under the Ministry, making them the most advanced higher t</p>\r\n', '4bfc04f379ed55d155f535178d438fec.jpg', 1),
(11, 3, 12, 'Президент провёл совещание о ходе реформ в системе образования', NULL, '', '<p>Президент Республики Узбекистан Шавкат Мирзиёев 16 августа с состоянием дел, связанных с введением 11-летней системы среднего образования, коренным реформированием системы среднего специального, профессионального образования, организацией деятельности вновь открытых высших учебных заведений, филиалов В целях ознакомления с министром высшего и среднего специального образования И.Меджидовым, директором Центра среднего специального и профессионального образования М.Холмухамедовым, министром народного образования У.Иноятовым и их заместителями и заслушали их отчеты.</p>\r\n\r\n<p>В совещании приняли участие Государственный советник Президента А.Юнусходжаев, заместитель Премьер-министра Ж.Кучкаров и Председатель Счетной палаты М.Икрамов.</p>\r\n\r\n<p>В ходе переговоров стороны обсудили ход выполнения поручений Президента Республики Узбекистан по коренному реформированию системы среднего образования, среднего специального и профессионального образования.</p>\r\n\r\n<p>В соответствии с поставленной задачей общеобразовательные школы продолжат зачисление выпускников 9-х классов в 10-е классы по своему усмотрению, ведется работа по их зачислению в учреждения среднего специального и профессионального образования.</p>\r\n\r\n<p>Согласно учебному плану, учащиеся 10-х классов будут изучать общеобразовательные предметы 5 дней в неделю, а профессиональные предметы 1 день в неделю. Учебно-производственные комплексы будут созданы в 1103 школах на 2703 школы, расположенных в удалении от профессиональных колледжей, и в 615 колледжах на 6956 школ.</p>\r\n\r\n<p>С открытием 10-х классов в школах потребуется 22 тысячи учителей. Из них 9,5 тыс. планируется охватить за счет выпускников высших учебных заведений, 13 тыс. - за счет преподавателей лицеев и колледжей.</p>\r\n\r\n<p>Начиная с 2017-2018 учебного года для обновления и углубления своих профессиональных знаний запущены краткосрочные курсы повышения квалификации для 116 тысяч учителей, преподающих в 10-х классах.</p>\r\n\r\n<p>Издано 8,5 млн экземпляров учебников и учебных пособий для учащихся 10-х классов, которые в настоящее время доставляются в образовательные учреждения.</p>\r\n\r\n<p>Создана вертикальная система подготовки образовательных учреждений к новому учебному году.</p>\r\n\r\n<p>Для 650 тысяч школьников, которые в этом году будут приняты в 1-й класс, в качестве &laquo;подарка Президента&raquo; подготовлены и доставлены на места ранцы с 12 предметами школьных принадлежностей.</p>\r\n\r\n<p>В сотрудничестве с Министерством высшего и среднего специального образования, Центром среднего специального и профессионального образования, каждым высшим учебным заведением провести отбор одаренных и талантливых студентов и организовать их целевую подготовку в высших учебных заведениях.Открывается один академический лицей и его деятельность проводятся в учреждении.</p>\r\n\r\n<p>Средние специальные, профессионально-технические учебные заведения были закреплены за отраслевыми министерствами и государственными комитетами.</p>\r\n\r\n<p>В целях эффективного использования имеющейся материально-технической базы в связи с сокращением контингента в колледжах на базе 7 колледжей и академических лицеев создаются 3 новых филиала 3 вузов и 1 вуз.</p>\r\n\r\n<p>В ходе переговоров особое внимание было уделено освобождению профессорско-преподавательского состава высших учебных заведений от излишней отчетности, различных бюрократических задач, дальнейшему повышению содержания и качества образования, направлению их научного потенциала на исследования.</p>\r\n\r\n<p>Президент коснулся вопросов коренного совершенствования деятельности дошкольных образовательных учреждений, изучения передового зарубежного опыта, создания современной системы во всех отношениях. Принимая во внимание интересы и стремления детей, обеспечить их всестороннее образование и воспитание в дошкольном возрасте, расширить их мировоззрение, развить способность самостоятельно мыслить, привить в их сердце и сознании национальные и общечеловеческие ценности, подчеркнул, что совершенство в духе мечты &ndash; один из самых важных, актуальных вопросов на сегодняшний день. Ведь то, как наши дети ходят в школу, какими вырастают с высокими целями, во многом зависит от воспитания, которое они получают в дошкольных учреждениях.</p>\r\n\r\n<p>На совещании глава государства призвал к коренной реформе системы дошкольного образования, созданию структуры управления, разработке специальной программы, направленной на 100-процентный охват детей в этих учреждениях, обеспечение ряда льгот начальным школам, а также народному образованию.Коренным образом изменить качество образования в институтах повышения квалификации при Министерстве, сделав их наиболее передовыми высшими учебными заведениями.</p>\r\n', 'f10ada932fa19f122f58088cb6493e10.jpg', 1),
(12, 3, 13, 'Какие изменения ждут Министерство высшего и среднего специального образования в 2022 году?', NULL, '', '<p>Об этом сообщил министр Абдукадир Ташкулов.</p>\r\n\r\n<p>2022: В целях создания здоровой конкурентной среды в сфере высшего образования и увеличения охвата молодежи высшим образованием до 32% мы увеличим количество негосударственных высших учебных заведений с 25 до 160.</p>\r\n\r\n<p>Будут созданы Наманганский государственный институт иностранных языков имени Ишахона Ибрата и Андижанский государственный институт иностранных языков, а на базе Навоийского государственного горного института &ndash; Навоийский политехнический университет.</p>\r\n\r\n<p>В ближайшие годы:</p>\r\n\r\n<p>- Будет внедрена нормативно-методическая система высшего образования в соответствии с международными стандартами, и в результате:</p>\r\n\r\n<p>система высшего образования страны будет полностью интегрирована в мировое образовательное пространство;</p>\r\n\r\n<p>- международная академическая и научная мобильность имеет легальную основу и быстро расширяется;</p>\r\n\r\n<p>- будут созданы широкие возможности для &laquo;конвертации&raquo; дипломов, ученых и ученых степеней;</p>\r\n\r\n<p>- будут расширены возможности международной гармонизации образовательных программ;</p>\r\n\r\n<p>- возможность равноправного участия высших учебных заведений страны в международных рейтингах будет еще больше увеличена;</p>\r\n\r\n<p>- будут расширены возможности привлечения иностранных специалистов к образовательному процессу;</p>\r\n\r\n<p>- Будет расширен объем международных академических и исследовательских проектов;</p>\r\n\r\n<p>- Расширенные возможности обучения через совместные программы.</p>\r\n', '937fd13ac0ee5c0c749403f6dcdb3225.jpg', 1),
(13, 2, 13, 'What changes await the Ministry of Higher and Secondary Special Education in 2022?', NULL, '', '<p>This was announced by Minister Abdukadir Tashkulov.</p>\r\n\r\n<p>2022: In order to create a healthy competitive environment in higher education and increase the coverage of youth with higher education to 32%, we will increase the number of non-governmental higher education institutions from 25 to 160.</p>\r\n\r\n<p>The Namangan State Institute of Foreign Languages ​​named after Ishakhon Ibrat and the Andijan State Institute of Foreign Languages ​​will be established, and the Navoi Polytechnic University will be established on the basis of the Navoi State Mining Institute.</p>\r\n\r\n<p>In the coming years:</p>\r\n\r\n<p>- The normative and methodological system of higher education will be introduced in accordance with international standards, and as a result:</p>\r\n\r\n<p>the country&#39;s higher education system will be fully integrated into the global educational space;</p>\r\n\r\n<p>- International academic and scientific mobility has a legal basis and is expanding rapidly;</p>\r\n\r\n<p>- Wide opportunities will be created for the &quot;conversion&quot; of diplomas, academic and scientific degrees;</p>\r\n\r\n<p>- Opportunities for international harmonization of educational programs will be expanded;</p>\r\n\r\n<p>- The possibility of equal participation of higher education institutions of the country in international rankings will be further increased;</p>\r\n\r\n<p>- Opportunities to involve foreign experts in the educational process will be expanded;</p>\r\n\r\n<p>- The scope of international academic and research projects will be expanded;</p>\r\n\r\n<p>- Expanded learning opportunities through joint programs.</p>\r\n', 'bddb7c0e443f1ec73dfba069b251679d.jpg', 1),
(14, 2, 2, 'The regional stage of the Youth Agency Cup chess tournament was held', NULL, '', '<p>On May 28, the regional stage of the Youth Agency Cup chess tournament was held. Muslima Allakulova, a student of the 201st group of the Faculty of Pedagogy, Psychology and Primary Education of the Pedagogical Institute of Termez State University, took the 3rd place and was awarded a diploma and a cash prize. Congratulations to our student on this achievement and good luck in their future studies.</p>\r\n', 'd124f40eb1fff6940f46a1da93ec35c4.jpg', 1),
(15, 3, 2, 'Состоялся региональный этап шахматного турнира «Кубок Молодежного Агентства»', NULL, '', '<p>28 мая состоялся региональный этап турнира по шахматам &laquo;Кубок Молодежного агентства&raquo;. Аллакулова Муслима, студентка 201 группы факультета педагогики, психологии и начального образования педагогического института Термезского государственного университета, заняла 3 место и была награждена дипломом и денежной премией. Поздравляем нашу ученицу с этим достижением и желаем удачи в дальнейшей учебе.</p>\r\n', '88c5a6164eeac64285bd5755c2118489.jpg', 1),
(16, 3, 3, 'В рамках темы \"Семейные ценности - прочная основа развития и прогресса государства\"...', NULL, '', '<p>В ходе информационного часа на тему &laquo;Семейные ценности &ndash; прочный фундамент развития и прогресса государства&raquo; в исполнении молодого коллектива театра была поставлена ​​пьеса драматурга Эркина Хушвактова &laquo;Андишалы келинчак&raquo;.</p>\r\n', 'ba61d36f8f976379b635c0f577ca59ee.jpg', 1),
(17, 2, 3, 'In the framework of the theme \"Family values are a solid foundation for the development and progress', NULL, '', '<p>During the information hour on the theme &quot;Family values - a solid foundation for the development and progress of the state,&quot; a play by the playwright Erkin Khushvaktov &quot;Andishali kelinchak&quot; was performed by a young theater team.</p>\r\n', '7e1da3d5795f9363344cf491dde467e6.jpg', 1),
(18, 2, 4, 'Under the motto \"Healthy Generation\" in the city of Termez was held a running marathon with the part', NULL, '', '<p>At the initiative of the Department of Internal Affairs of Surkhandarya region, a marathon with the participation of students was held in Termez under the motto &quot;Healthy Generation&quot; in order to promote a healthy lifestyle among the population. Students of the Pedagogical Institute of Termez State University took an active part in it. The marathon was attended by 1st year students of the Faculty of History, Arts and Sports Khurramova Shoxsanam, Tashmirzaeva Umida 2nd place and 1st year student of the Faculty of Preschool and Technological Education Chorieva Zebiniso 3rd place. &#39;rinlar occupied. In this regard, the director of the institute, Doctor of Historical Sciences, Professor EA Kobulov congratulated the students and wished them success in their future studies.</p>\r\n', 'd8dfd59fa3b438dd8232c9aa8f0a638d.jpg', 1),
(19, 3, 4, 'Под девизом «Здоровое поколение» в городе Термез прошел беговой марафон с участием студентов', NULL, '', '<p>По инициативе ДВД Сурхандарьинской области в Термезе прошел марафон с участием студентов под девизом &laquo;Здоровое поколение&raquo; в целях пропаганды здорового образа жизни среди населения. Активное участие в нем приняли студенты педагогического института Термезского государственного университета. В марафоне приняли участие студентки 1 курса факультета истории, искусства и спорта Хуррамова Шохсанам, Ташмирзаева Умида 2 место и студентка 1 курса факультета дошкольного и технологического образования Чориева Зебинисо 3 место заняли кольца. В связи с этим директор института, доктор исторических наук, профессор Е.А. Кобулов поздравил студентов и пожелал им успехов в дальнейшей учебе.</p>\r\n', 'e7a00d571e178c78aa63f94fed1aa264.jpg', 1),
(20, 3, 5, 'Сегодня в Педагогическом институте Термезского государственного университета под руководством замест', NULL, '', '<p>Сегодня в Педагогическом институте Термезского государственного университета под председательством заместителя директора по учебной работе Б.Иманова состоялось собрание с участием всех заведующих кафедрами и профессоров, ответственных за степень магистра. На встрече Б.Иманов подчеркнул необходимость повышения качества уроков в соответствии с современными требованиями, прозрачности в оценке магистерских знаний, а также ошибок и недостатков некоторых учителей в образовательном процессе&raquo;, - крикнул он. На совещании также были заслушаны мнения профессорско-преподавательского состава по вопросам повышения качества образования, а руководством даны дополнительные поручения ответственным сотрудникам по этому поводу.</p>\r\n', '39064af7fd3793a8e6e64c2cabdb9a0a.jpg', 1),
(21, 3, 7, 'Состоялся круглый стол на тему «Роль женщин-ученых в развитии науки и инноваций»...', NULL, '', '<p>Семинар открыл заместитель директора по делам молодежи и духовно-просветительской работе Ш. Касимов, который рассказал о проводимой работе над новыми инновационными проектами.</p>\r\n\r\n<p>На семинаре выступила Зулхумор Хидирова, начальник областного управления семьи и женщин, заместитель акима области.</p>\r\n\r\n<p>В мероприятии также приняли участие кандидат психологических наук, доцент Мехри Норбошева, кандидат педагогических наук, доцент Дильбар Кадырова. На мероприятии председатель Женского Консультативного совета С.Турсунова проинформировала участников о научной работе, проводимой женщинами-учеными в институте. Затем состоялась сессия вопросов и ответов с участием женщин-ученых и студенток с начальником областного управления семьи и женщин, заместителем акима Зулхумор Хидыровой. В мероприятии приняли участие работники СМИ и журналисты. Высокий уровень организации мероприятия и актуальность лекций произвели большое впечатление на всех участников.</p>\r\n', '93a8b4e6aceec8472b69a76e60c397b3.jpg', 1),
(22, 2, 7, 'A roundtable discussion on \"The role of women scientists in the development of science and innovatio', NULL, '', '<p>The seminar was opened by the Deputy Director for Youth Affairs and Spiritual and Educational Affairs Sh. Kasimov, who spoke about the work being done on new innovative projects.</p>\r\n\r\n<p>Zulhumor Khidirova, the head of the regional department of family and women, the deputy governor of the region, spoke at the seminar.</p>\r\n\r\n<p>The event was also attended by Candidate of Psychological Sciences, Associate Professor Mehri Norbosheva, Candidate of Pedagogical Sciences, Associate Professor Dilbar Kadyrova. At the event, the chairwoman of the Women&#39;s Advisory Board S. Tursunova informed the participants about the scientific work carried out by women scientists at the institute. Afterwards, a question-and-answer session was held with the participation of women scholars and students with the head of the Regional Department of Family and Women, Deputy Governor Zulhumor Khidirova. The event was attended by media workers and journalists. The high level of organization of the event and the relevance of the lectures made a great impression on all participants.</p>\r\n', 'e4b84bafd0106c4bc79258c0dc73a26f.jpg', 1);

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
(2, NULL, 1, '2022-06-23 06:41:15', '2022-06-23 06:51:55', 1, 'O\'zbekiston Respublikasi Davlat bayrog\'i', NULL, NULL, '<p style=\"text-align:center\"><img alt=\"\" height=\"155\" src=\"/kcfinder/upload/images/bayroq.jpg\" width=\"310\" /></p>\r\n\r\n<p><a href=\"http://www.lex.uz/pages/GetAct.aspx?lact_id=1716195\" target=\"_blank\">&quot;O&#39;zbekiston Respublikasi Davlat bayrog&#39;i to&#39;g&#39;risida&quot;gi</a>&nbsp;qonun 1991 yil 18-noyabrda O&#39;zbekiston Respublikasi Oliy Kengashining navbatdan tashqari o&#39;tkazilgan VII sessiyasida qabul qilingan.</p>\r\n\r\n<p>Davlat bayrog&#39;i va uning ramzi bugungi O&#39;zbekiston sarhadida qadimda mavjud bo&#39;lgan davlatlar bilan tarixan bog&#39;liqligini anglatadi hamda respublikaning milliy-madaniy an&#39;analarini o&#39;zida mujassamlashtiradi.</p>\r\n\r\n<p>Bayroqdagi moviy rang tiriklik mazmuni aks etgan mangu osmon va obihayot ramzi. Timsollar tilida bu - yaxshilikni, donishmandlikni, halollikni, shon-shuhrat va sadoqatni bildiradi. Binobarin, Amir Temur davlati bayrog&#39;ining rangi ham moviy rangda edi.</p>\r\n\r\n<p>Bayroqdagi oq rang - muqaddas tinchlik ramzi bo&#39;lib, u kun charog&#39;onligi va koinot yoritkichlari bilan uyg&#39;unlashib ketadi. Oq rang &ndash; poklik, beg&#39;uborlik, soflikni, orzu va hayollar tozaligi, ichki go&#39;zallikka intilishning timsoli.</p>\r\n\r\n<p>Yashil rang &ndash; tabiatning yangilanish ramzi. U ko&#39;pgina xalqlarda navqironlik, umid va shodumonlik timsoli hisoblanadi.</p>\r\n\r\n<p>Qizil chiziqlar &ndash; vujudimizda jo&#39;shib oqayotgan hayotiy qudrat irmoqlarini anglatadi.</p>\r\n\r\n<p>Navqiron yarim oy tasviri bizning tarixiy an&#39;analarimiz bilan bog&#39;liq. Ayni paytda u qo&#39;lga kiritilgan mustaqilligimiz ramzi ham.</p>\r\n\r\n<p>Yulduzlar barcha uchun ruhoniy, ilohiy timsol sanalgan. O&#39;zbekiston Respublikasi Davlat bayrog&#39;idagi 12 yulduz tasviri ham tarixiy an&#39;analarimiz, qadimgi yilnomamizga bevosita aloqador. Bizning o&#39;n ikki yulduzga bo&#39;lgan e&#39;tiborimiz O&#39;zbekiston sarhadidagi qadimgi davlatlar ilmiy tafakkurida nujum ilmi taraqqiy etganligi bilan ham izohlanadi.</p>\r\n\r\n<p>Davlat bayrog&#39;imizdagi 12 yulduz tasvirini o&#39;zbek xalqi madaniyatining qadimiyligi, uning komillikka, o&#39;z tuprog&#39;ida saodatga intilishi ramzi sifatida tushunish lozim.</p>\r\n', 'ab09591c514a9c261cae9c92bfc2ad19.gif', NULL, NULL, 3),
(3, NULL, 1, '2022-06-23 06:43:00', '2022-06-23 13:18:28', 1, 'O\'zbekiston Respublikasi Davlat Gerbi', NULL, NULL, '<p style=\"text-align:center\"><strong><a href=\"http://www.lex.uz/pages/GetAct.aspx?lact_id=17260\" target=\"_blank\">&quot;O&#39;zbekiston Respublikasi Davlat gerbi to&#39;g&#39;risida&quot;gi</a>&nbsp;Qonun 1992 yil 2 iyulda O&#39;zbekiston Respublikasi Oliy Kengashining X sessiyasida qabul qilingan.</strong></p>\r\n\r\n<p style=\"text-align:justify\">O&#39;zbekiston Respublikasining Davlat gerbi gullagan vodiy uzra charaqlab turgan quyosh tasviridan hamda so&#39;l tomonida bug&#39;doy boshoqlari, o&#39;ng tomonida ochilgan paxta chanoqlari suvrati tushirilgan chambardan iborat.</p>\r\n\r\n<p style=\"text-align:justify\">Gerbning yuqori qismida respublika jipsligining ramzi sifatida sakkiz qirrali yulduz tasvirlangan: sakkiz qirra ichida joylashgan yarim oy va yulduz musulmonlarning qutlug&#39; ramzidir.</p>\r\n\r\n<p style=\"text-align:justify\">Gerbning markazida himmat, olijanoblik va fidoyilik timsoli bo&#39;lgan afsonaviy Xumo qushi qanotlarini yozib turibdi. Ushbu ramz va timsollar xalqimizning tinchlik, yaxshilik, baxt-saodat, farovonlik yo&#39;lidagi orzu-umidlarini ifodalaydi.</p>\r\n\r\n<p style=\"text-align:justify\">Gerbning pastki qismida respublika Davlat bayrog&#39;ini ifoda etuvchi chambar lentasining bandiga &quot;O&#39;zbekiston&rdquo; deb yozib qo&#39;yilgan.</p>\r\n', '6787fe5b981ddcbba09a5712a8a155a9.png', NULL, NULL, 4),
(4, NULL, 1, '2022-06-23 06:46:28', '2022-06-23 07:40:34', 1, 'O\'zbekiston Respublikasi Davlat Madhiyasi', NULL, NULL, '<p style=\"text-align:center\"><strong><a href=\"http://www.lex.uz/pages/getpage.aspx?lact_id=38608\" target=\"_blank\">&quot;O&#39;zbekiston Respublikasining davlat madhiyasi to&#39;g&#39;risida&quot;gi</a>&nbsp;Qonun 1992 yil 10 dekabrda O&#39;zbekiston Respublikasi Oliy Kengashining o&#39;n birinchi sessiyasida qabul qilingan.</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Mutal Burhonov musiqasi, Abdulla Oripov so&#39;zi</strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/kcfinder/upload/files/Madxiya.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Serquyosh hur o&#39;lkam, elga baxt, najot,</p>\r\n\r\n<p style=\"text-align:center\">Sen o&#39;zing do&#39;stlarga yo&#39;ldosh, mehribon!</p>\r\n\r\n<p style=\"text-align:center\">Yashnagay to abad ilmu fan, ijod,</p>\r\n\r\n<p style=\"text-align:center\">Shuhrating porlasin toki bor jahon!</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Oltin bu vodiylar - jon O&#39;zbekiston,</p>\r\n\r\n<p style=\"text-align:center\">Ajdodlar mardona ruhi senga yor!</p>\r\n\r\n<p style=\"text-align:center\">Ulug&#39; xalq qudrati jo&#39;sh urgan zamon,</p>\r\n\r\n<p style=\"text-align:center\">Olamni mahliyo aylagan diyor!</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Bag&#39;ri keng o&#39;zbekning o&#39;chmas iymoni,</p>\r\n\r\n<p style=\"text-align:center\">Erkin, yosh avlodlar senga zo&#39;r qanot!</p>\r\n\r\n<p style=\"text-align:center\">Istiqlol mash&#39;ali tinchlik posboni,</p>\r\n\r\n<p style=\"text-align:center\">Xaqsevar, ona yurt, mangu bo&#39;l obod!</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Oltin bu vodiylar - jon O&#39;zbekiston,</p>\r\n\r\n<p style=\"text-align:center\">Ajdodlar mardona ruhi senga yor!</p>\r\n\r\n<p style=\"text-align:center\">Ulug&#39; xalq qudrati jo&#39;sh urgan zamon,</p>\r\n\r\n<p style=\"text-align:center\">Olamni mahliyo aylagan diyor!</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'b225631ca1cb44d5f7ef004c4d2a604a.png', NULL, NULL, 5),
(5, NULL, 1, '2022-06-23 10:25:33', '2022-06-23 16:10:16', 1, 'Institut haqida', NULL, NULL, '<h3 style=\"text-align:center\"><strong>TERMIZ DAVLAT UNIVERSITETINING PEDAGOGIKA INSTITUTI FAOLIYATINI TASHKIL ETISH CHORA-TADBIRLARI TO&lsquo;G&lsquo;RISIDA</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">O&lsquo;zbekiston Respublikasi Prezidentining &ldquo;Pedagogik ta&rsquo;lim sohasini yanada rivojlantirish chora-tadbirlari to&lsquo;g&lsquo;risida&rdquo; 2020-yil 27-fevraldagi PQ-4623-son qaroriga muvofiq Vazirlar Mahkamasi qaror qiladi:<br />\r\n1. O&lsquo;zbekiston Respublikasi Prezidentining &ldquo;Pedagogik ta&rsquo;lim sohasini yanada rivojlantirish chora-tadbirlari to&lsquo;g&lsquo;risida&rdquo; 2020-yil 27-fevraldagi PQ-4623-son qaroriga muvofiq Toshkent davlat pedagogika universitetining Termiz filiali hamda Termiz davlat universitetining (keyingi o&lsquo;rinlarda &mdash; Universitet) pedagogika ta&rsquo;lim sohasining bakalavriat ta&rsquo;lim yo&lsquo;nalishlari va magistratura mutaxassisliklari negizida Termiz davlat universitetining Pedagogika instituti (keyingi o&lsquo;rinlarda &mdash; Institut) tashkil etilganligi ma&rsquo;lumot uchun qabul qilinsin.</p>\r\n\r\n<p style=\"text-align:justify\">2. Institutning asosiy vazifalari etib quyidagilar belgilansin:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">hududda pedagogika soha va tarmoqlarining rivojlanish istiqbollari va ustuvor vazifalari, shuningdek, zamonaviy texnika hamda texnologiyalarning rivojlanish tendensiyalarini hisobga olgan holda pedagogika sohasi bo&lsquo;yicha tarbiya va o&lsquo;qitish usullari, ta&rsquo;lim jarayonida zamonaviy pedagogik texnologiyalarni qo&lsquo;llash ko&lsquo;nikmalariga ega professional oliy ma&rsquo;lumotli kadrlarni tayyorlash;</li>\r\n	<li style=\"text-align: justify;\">Institutning mintaqa va xalqaro miqyosdagi nufuzini oshirish maqsadida xorijiy fuqarolar uchun ta&rsquo;lim olish imkoniyatini kengaytirish va ilg&lsquo;or xalqaro tajribani tatbiq etish;</li>\r\n	<li style=\"text-align: justify;\">o&lsquo;quv va ilmiy laboratoriya xonalarini tashkil etish, zamonaviy texnologiyalar asosida jihozlash hamda o&lsquo;quv va ilmiy loyihalarni amalga oshirish;</li>\r\n	<li style=\"text-align: justify;\">ta&rsquo;lim va ilmiy izlanishlar jarayoniga malakali mutaxassislarni keng jalb etish maqsadida respublika va xorijiy yetakchi oliy ta&rsquo;lim muassasalari hamda ilmiy markazlar bilan hamkorlik aloqalarini rivojlantirish;</li>\r\n	<li style=\"text-align: justify;\">xorijiy yetakchi va nufuzli oliy ta&rsquo;lim muassasalarining ilg&lsquo;or tajribasini tatbiq etish asosida malaka talablari, o&lsquo;quv rejalari va fan dasturlarini ishlab chiqish, o&lsquo;quv va ilmiy-uslubiy ta&rsquo;minotni takomillashtirish va amaliyotga joriy etish;</li>\r\n	<li style=\"text-align: justify;\">ta&rsquo;lim jarayoniga raqamli texnologiyalarni joriy etish, zamonaviy axborot-kommunikatsiya va ta&rsquo;lim texnologiyalarining mustahkam integratsiyasini ta&rsquo;minlash;</li>\r\n	<li style=\"text-align: justify;\">pedagogika ta&rsquo;lim sohasini rivojlantirishning ilmiy-metodik vazifalarini hal etish, ilg&lsquo;or xorijiy pedagogik texnologiyalarni joriy qilishga yo&lsquo;naltirilgan ilmiy tadqiqotlar olib borish va iqtidorli talaba-yoshlarni ilmiy faoliyat bilan shug&lsquo;ullanishga keng jalb etish;</li>\r\n	<li style=\"text-align: justify;\">respublika va xorijiy oliy ta&rsquo;lim hamda ilmiy muassasalariga istiqbolli yosh bitiruvchilarni magistratura va doktoranturaga muntazam yuborish orqali Institutning ilmiy-pedagogik salohiyatini oshirib borish;</li>\r\n	<li style=\"text-align: justify;\">xalqaro baholash dasturlari (PISA, TIMSS, PIRLS) va STEAM standartlaridan foydalanish, aniq va tabiiy fanlarni o&lsquo;qitish va baholashning zamonaviy shakllari, metodlari va texnologiyalarini joriy etish hamda ushbu bilim va ko&lsquo;nikmalarga ega bo&lsquo;lgan pedagoglarini tayyorlash.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n3. Belgilab qo&lsquo;yilsinki:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Institut O&lsquo;zbekiston Respublikasi Davlat gerbi tasviri tushirilgan va o&lsquo;z nomi davlat tilida yozilgan muhrga va blankalarga, mustaqil balansga hamda shaxsiy g&lsquo;azna hisobvaraqlariga ega bo&lsquo;ladi;</li>\r\n	<li style=\"text-align: justify;\">Institutda o&lsquo;quv jarayoni 2021/2022 o&lsquo;quv yilidan boshlanadi;</li>\r\n	<li style=\"text-align: justify;\">2021/2022 o&lsquo;quv yilidan boshlab Universitetda pedagogika ta&rsquo;lim sohasining bakalavriat ta&rsquo;lim yo&lsquo;nalishlari va ularning negizidagi tegishli magistratura mutaxassisliklari bo&lsquo;yicha qabul to&lsquo;xtatiladi hamda ushbu bakalavriat ta&rsquo;lim yo&lsquo;nalishi va uning negizidagi tegishli magistratura mutaxassisliklari bo&lsquo;yicha tahsil olayotgan talabalar o&lsquo;qishni bitirgunlariga qadar Universitetda ta&rsquo;lim jarayonini davom ettiradilar;</li>\r\n	<li style=\"text-align: justify;\">Institutga talabalarni bakalavriat ta&rsquo;lim yo&lsquo;nalishlari va magistratura mutaxassisliklari bo&lsquo;yicha qabul qilish soni har yili belgilangan tartibda tasdiqlanadigan respublika oliy ta&rsquo;lim muassasalariga o&lsquo;qishga qabul qilish parametrlaridan kelib chiqqan holda belgilanadi;</li>\r\n	<li style=\"text-align: justify;\">o&lsquo;quv dasturlari o&lsquo;zaro yaqin bo&lsquo;lgan bakalavriat ta&rsquo;lim yo&lsquo;nalishlarini birlashtirgan holda bitiruvchilarga ikkita kvalifikatsiya berish tizimi yo&lsquo;lga qo&lsquo;yiladi;</li>\r\n	<li style=\"text-align: justify;\">Institut Universitetning o&lsquo;quv va ilmiy laboratoriyalaridan, sport inshootlaridan hamda axborot-resurs markazidan rejalashtirilgan dars jarayonlariga ta&rsquo;sir etmagan holda tekin foydalanadi;</li>\r\n	<li style=\"text-align: justify;\">Institutga kafedra mudiri va professor-o&lsquo;qituvchilarni tanlov asosida ishga qabul qilish Universitet kengashi qaroriga asosan amalga oshiriladi.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">4. Surxondaryo viloyati, Termiz shahri, Islom Karimov ko&lsquo;chasi, 228 &ldquo;B&rdquo;-uy manzilidagi Toshkent davlat pedagogika universitetining Termiz filiali bino va inshootlari hamda Muzrabot tumani, &ldquo;Sharq yulduzi&rdquo; QFY, &ldquo;Shaffof&rdquo; MFY manzilidagi sobiq Muzrabot agroservis kasb-hunar kolleji bino va inshootlari tegishli hududi bilan birgalikda Institutga operativ boshqaruv huquqi asosida tekin berilsin.</p>\r\n\r\n<p style=\"text-align:justify\">5. O&lsquo;zbekiston Respublikasi Oliy va o&lsquo;rta maxsus ta&rsquo;lim vazirligi Universitet bilan birgalikda 2021-yil 1-iyunga qadar:<br />\r\na) Institut:<br />\r\ntuzilmasi oliy ta&rsquo;lim muassasalari uchun belgilangan normativlarga muvofiq tasdiqlanishini;<br />\r\nustavi belgilangan tartibda tasdiqlanishi va uning davlat ro&lsquo;yxatidan o&lsquo;tkazilishini;<br />\r\naxborot-resurs markazini qo&lsquo;shimcha o&lsquo;quv, ilmiy va badiiy adabiyotlar bilan ta&rsquo;minlasin;<br />\r\nb) Institutni tanlov asosida amaliy tajribaga ega bo&lsquo;lgan mutaxassislardan iborat yuqori malakali professor-o&lsquo;qituvchilar bilan to&lsquo;ldirish choralarini ko&lsquo;rsin.</p>\r\n\r\n<p style=\"text-align:justify\">6. Institut faoliyatini moliyalashtirish manbalari etib O&lsquo;zbekiston Respublikasi Davlat budjeti, talabalarning to&lsquo;lov-kontrakt asosida ta&rsquo;lim olishidan, shartnomalar asosida xizmat ko&lsquo;rsatishdan tushadigan mablag&lsquo;lar, xalqaro moliya va xorijiy tashkilotlarning grantlari, jismoniy va yuridik shaxslarning homiylik xayriyalari, shuningdek, qonunchilik hujjatlari bilan taqiqlanmagan boshqa manbalar belgilansin.</p>\r\n\r\n<p style=\"text-align:justify\">7. Belgilab qo&lsquo;yilsinki, mazkur qarorda nazarda tutilgan xarajatlarni moliyalashtirish 2021-yilda O&lsquo;zbekiston Respublikasining respublika budjetidan birinchi darajali budjet mablag&lsquo;larini taqsimlovchi sifatida O&lsquo;zbekiston Respublikasi Oliy va o&lsquo;rta maxsus ta&rsquo;lim vazirligiga ajratiladigan mablag&lsquo;lar doirasida, 2022-yildan boshlab esa O&lsquo;zbekiston Respublikasi Davlat budjeti parametrlarida nazarda tutiladi.<br />\r\nZarur hollarda, Universitet kengashining qaroriga asosan Universitetning budjetdan tashqari mablag&lsquo;lari hisobidan Institut moddiy-texnik bazasini rivojlantirishga va Institutning budjetdan tashqari mablag&lsquo;lari hisobidan Universitet moddiy-texnik bazasini rivojlantirishga ruxsat berilsin.</p>\r\n\r\n<p style=\"text-align:justify\">8. O&lsquo;zbekiston Respublikasi Xalq ta&rsquo;limi vazirligi:<br />\r\numumiy o&lsquo;rta ta&rsquo;lim muassasalarida Institut talabalari amaliyotini samarali tashkil etish uchun tegishli sharoitlar yaratilishini ta&rsquo;minlasin; o&lsquo;quvchilarni pedagog kasbiga yo&lsquo;naltirish maqsadida Surxondaryo viloyatidagi yetakchi umumiy o&lsquo;rta ta&rsquo;lim muassasalarining 10 tasida 3-4-sinf o&lsquo;quvchilari uchun &ldquo;O&lsquo;qish va matematik savodxonlik bo&lsquo;yicha sinflar&rdquo;, 8-9-sinf o&lsquo;quvchilari uchun &ldquo;Matematik va tabiiy fanlar savodxonligi bo&lsquo;yicha sinflar&rdquo;, 10-11-sinf o&lsquo;quvchilari uchun &ldquo;Pedagogik sinflar&rdquo;ni tashkil etsin va Institut taklifi asosida dars jarayoniga ta&rsquo;sir etmagan holda o&lsquo;quv jarayoniga tegishli o&lsquo;zgartirishlar kiritsin.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n9. Universitet:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">salohiyatli kadrlarni jalb etgan holda ta&rsquo;lim va ilmiy faoliyatni sifatli tashkil etish;</li>\r\n	<li style=\"text-align: justify;\">ta&rsquo;lim, tarbiya, ilmiy va uslubiy jarayonlarni samarali boshqarish;</li>\r\n	<li style=\"text-align: justify;\">ta&rsquo;lim jarayoniga zamonaviy pedagogik texnologiyalarni joriy etish;</li>\r\n	<li style=\"text-align: justify;\">darslik, o&lsquo;quv qo&lsquo;llanmalar, o&lsquo;quv-uslubiy material va axborot resurslari bilan ta&rsquo;minlash;</li>\r\n	<li style=\"text-align: justify;\">professor-o&lsquo;qituvchilarning malakasini oshirish va iqtidorli yoshlar seleksiyasini amalga oshirish;</li>\r\n	<li style=\"text-align: justify;\">ilmiy-tadqiqot ishlari uchun qo&lsquo;shimcha sharoitlar yaratish va ilmiy maktablarni rivojlantirish yo&lsquo;nalishlarida Institutga ko&lsquo;mak berib borsin.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">10. O&lsquo;zbekiston Respublikasi Iqtisodiy taraqqiyot va kambag&lsquo;allikni qisqartirish vazirligi Oliy va o&lsquo;rta maxsus ta&rsquo;lim vazirligi bilan birgalikda tasdiqlangan loyiha-smeta hujjatlariga asosan Institutning bino va inshootlarini qurish, rekonstruksiya qilish, kapital ta&rsquo;mirlash va jihozlash loyihalari O&lsquo;zbekiston Respublikasining 2022 &mdash; 2024-yillarga mo&lsquo;ljallangan Investitsiya dasturiga belgilangan tartibda kiritilishini ta&rsquo;minlasin.</p>\r\n\r\n<p style=\"text-align:justify\">11. O&lsquo;zbekiston Respublikasi Oliy va o&lsquo;rta maxsus ta&rsquo;lim vazirligi Axborot texnologiyalari va kommunikatsiyalarini rivojlantirish vazirligi bilan birgalikda 2021-yil 1-avgustga qadar Institutni onlayn ma&rsquo;ruza hamda masofaviy ta&rsquo;lim texnologiyalarini joriy etish uchun telekommunikatsiya jihozlari va infratuzilma bilan ta&rsquo;minlash, shuningdek, yuqori tezlikdagi Internet jahon axborot tarmog&lsquo;i hamda &ldquo;Elektron ta&rsquo;lim&rdquo; milliy tarmog&lsquo;iga belgilangan tartibda ulash choralarini ko&lsquo;rsin.</p>\r\n\r\n<p style=\"text-align:justify\">12. Institutga 2 ta, shu jumladan, 1 ta yengil va 1 ta navbatchi avtotransport vositasini saqlash uchun limit ajratilsin.</p>\r\n\r\n<p style=\"text-align:justify\">13. Vazirlar Mahkamasining &ldquo;Sport turlari bo&lsquo;yicha terma jamoalar tarkibiga sportchilarni saralab olish tizimini yanada takomillashtirish chora-tadbirlari to&lsquo;g&lsquo;risida&rdquo; 2020-yil 4-martdagi 122-son qaroriga 1-ilovaning &ldquo;Oliy ta&rsquo;lim muassasasi nomi&rdquo; ustuni 48-pozitsiyasidagi &ldquo;Toshkent davlat pedagogika universiteti Termiz filiali&rdquo; so&lsquo;zlari &ldquo;Termiz davlat universitetining Pedagogika instituti&rdquo; so&lsquo;zlari bilan almashtirilsin.</p>\r\n\r\n<p style=\"text-align:justify\">14. Vazirlar Mahkamasining &ldquo;Nizomiy nomidagi Toshkent davlat pedagogika universitetining Termiz filialini tashkil etish to&lsquo;g&lsquo;risida&rdquo; 2018-yil 5-martdagi 170-son qarori 2021-yil 1-iyuldan e&rsquo;tiboran o&lsquo;z kuchini yo&lsquo;qotgan deb hisoblansin.</p>\r\n\r\n<p style=\"text-align:justify\">15. Mazkur qarorning bajarilishini nazorat qilish O&lsquo;zbekiston Respublikasi Bosh vazirining ijtimoiy rivojlantirish masalalari bo&lsquo;yicha o&lsquo;rinbosari B.A. Musayev, oliy va o&lsquo;rta maxsus ta&rsquo;lim vaziri A.X. Toshkulov hamda Surxondaryo viloyati hokimi T.A. Bobolov zimmasiga yuklansin.</p>\r\n\r\n<p style=\"text-align:right\"><br />\r\n<em><strong>O&lsquo;zbekiston Respublikasining Bosh vaziri A. ARIPOV<br />\r\nToshkent sh., 2021-yil 16-mart, 140-son</strong></em></p>\r\n', '', NULL, NULL, 6);

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

--
-- Дамп данных таблицы `page_lang`
--

INSERT INTO `page_lang` (`id`, `lang`, `parent`, `title`, `second_title`, `keywords`, `body`, `main_image`) VALUES
(1, 3, 4, 'Государственный гимн Республики Узбекистан', NULL, '', '<p>Закон &laquo;О Государственном гимне Республики Узбекистан&raquo; был принят 10 декабря 1992 года на одиннадцатой сессии Верховного Совета Республики Узбекистан.</p>\r\n\r\n<p>Музыка Мутала Бурханова, слова Абдуллы Орипова</p>\r\n', ''),
(2, 2, 4, 'National Anthem of the Republic of Uzbekistan', NULL, '', '<p>The Law &quot;On the National Anthem of the Republic of Uzbekistan&quot; was adopted on December 10, 1992 at the eleventh session of the Supreme Soviet of the Republic of Uzbekistan.</p>\r\n\r\n<p>Music by Mutal Burhanov, lyrics by Abdulla Oripov</p>\r\n', ''),
(3, 2, 3, 'State Emblem of the Republic of Uzbekistan', NULL, '', '<p>The Law &quot;On the State Emblem of the Republic of Uzbekistan&quot; was adopted on July 2, 1992 at the X session of the Supreme Soviet of the Republic of Uzbekistan.</p>\r\n\r\n<p>The State Emblem of the Republic of Uzbekistan consists of the image of the sun shining over the flowering valley and a wreath with the image of wheat ears on the left and open cotton bowls on the right.</p>\r\n\r\n<p>At the top of the coat of arms, an octagonal star is depicted as a symbol of the unity of the republic: a crescent moon and a star inside the octagon are the jubilee symbols of Muslims.</p>\r\n\r\n<p>In the center of the coat of arms is the wings of the legendary Humo bird, a symbol of generosity, nobility and devotion. These symbols and emblems represent the aspirations of our people for peace, goodness, happiness and prosperity.</p>\r\n\r\n<p>At the bottom of the coat of arms, the word &quot;Uzbekistan&quot; is inscribed on the ribbon representing the national flag of the republic.</p>\r\n', ''),
(4, 3, 3, 'Государственный герб Республики Узбекистан', NULL, '', '<p>Закон &laquo;О Государственном гербе Республики Узбекистан&raquo; был принят 2 июля 1992 года на X сессии Верховного Совета Республики Узбекистан.</p>\r\n\r\n<p>Государственный герб Республики Узбекистан состоит из изображения солнца, сияющего над цветущей долиной, и венка с изображением колосьев пшеницы слева и раскрытых хлопковых чаш справа.</p>\r\n\r\n<p>В верхней части герба изображена восьмиугольная звезда как символ единства республики: полумесяц и звезда внутри восьмиугольника &mdash; юбилейные символы мусульман.</p>\r\n\r\n<p>В центре герба крылья легендарной птицы Хумо, символа щедрости, благородства и преданности. Эти символы и эмблемы олицетворяют стремление нашего народа к миру, добру, счастью и процветанию.</p>\r\n\r\n<p>В нижней части герба на ленте, изображающей государственный флаг республики, начертано слово &laquo;Узбекистан&raquo;.</p>\r\n', ''),
(5, 3, 2, 'Государственный флаг Республики Узбекистан', NULL, '', '<p>Закон &laquo;О Государственном флаге Республики Узбекистан&raquo; был принят 18 ноября 1991 года на VII специальной сессии Верховного Совета Республики Узбекистан.</p>\r\n\r\n<p>Государственный флаг и его символ олицетворяют историческую связь с древними государствами на границе современного Узбекистана и олицетворяют национально-культурные традиции республики.</p>\r\n\r\n<p>Синий цвет флага &ndash; символ вечного неба и жизни, отражающий смысл жизни. На языке символов оно означает добро, мудрость, честность, славу и преданность. Следовательно, цвет флага государства Амира Темура также был синим.</p>\r\n\r\n<p>Белый цвет флага &ndash; символ священного мира, который сочетается с яркостью дня и огнями вселенной. Белый &ndash; символ чистоты, невинности, непорочности, чистоты мечтаний и фантазий, стремления к внутренней красоте.</p>\r\n\r\n<p>Зеленый &ndash; символ обновления природы. Он является символом молодости, надежды и радости у многих народов.</p>\r\n\r\n<p>Красные линии представляют собой потоки жизненной силы, текущие в наших телах.</p>\r\n\r\n<p>Образ молодого полумесяца связан с нашими историческими традициями. В то же время это символ нашей независимости.</p>\r\n\r\n<p>Звезды считались священническим, божественным символом для всех. Изображение 12 звезд на государственном флаге Республики Узбекистан также напрямую связано с нашими историческими традициями, нашими древними летописями. Наше внимание к двенадцати звездам объясняется также развитием науки астрологии в научном мышлении древних государств на границе Узбекистана.</p>\r\n\r\n<p>Изображение 12 звезд на нашем государственном флаге следует понимать как символ древности культуры узбекского народа, его стремления к совершенству и счастью на своей земле.</p>\r\n', ''),
(6, 2, 2, 'National flag of the Republic of Uzbekistan', NULL, '', '<p>The Law &quot;On the State Flag of the Republic of Uzbekistan&quot; was adopted on November 18, 1991 at the VII special session of the Supreme Soviet of the Republic of Uzbekistan.</p>\r\n\r\n<p>The national flag and its symbol represent the historical connection with the ancient states on the border of modern Uzbekistan and embody the national and cultural traditions of the republic.</p>\r\n\r\n<p>The blue color of the flag is a symbol of eternal sky and life, reflecting the meaning of life. In the language of symbols, it means goodness, wisdom, honesty, glory and devotion. Consequently, the color of the flag of the state of Amir Temur was also blue.</p>\r\n\r\n<p>The white color of the flag is a symbol of sacred peace, which is combined with the brightness of the day and the lights of the universe. White is a symbol of purity, innocence, purity, purity of dreams and fantasies, the pursuit of inner beauty.</p>\r\n\r\n<p>Green is a symbol of nature&#39;s renewal. He is a symbol of youth, hope and joy in many nations.</p>\r\n\r\n<p>The red lines represent the streams of life force flowing in our bodies.</p>\r\n\r\n<p>The image of the young crescent is associated with our historical traditions. At the same time, it is a symbol of our independence.</p>\r\n\r\n<p>The stars were considered a priestly, divine symbol for all. The image of 12 stars on the national flag of the Republic of Uzbekistan is also directly related to our historical traditions, our ancient annals. Our attention to the twelve stars is also explained by the development of the science of astrology in the scientific thinking of the ancient states on the border of Uzbekistan.</p>\r\n\r\n<p>The image of 12 stars on our national flag should be understood as a symbol of the antiquity of the culture of the Uzbek people, its pursuit of perfection and happiness in their land.</p>\r\n', '');

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
('ddf2b1fd3cc4fbb24a755f842dec8dce', 1732771887);

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
(1, 2, NULL, NULL, 1, '2022-06-23 06:40:13', 1, 'O\'zbekiston Respublikasining Davlat bayrog\'i', '', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"155\" src=\"/kcfinder/upload/images/bayroq.jpg\" width=\"310\" /></p>\r\n\r\n<p><a href=\"http://www.lex.uz/pages/GetAct.aspx?lact_id=1716195\" target=\"_blank\">&quot;O&#39;zbekiston Respublikasi Davlat bayrog&#39;i to&#39;g&#39;risida&quot;gi</a>&nbsp;qonun 1991 yil 18-noyabrda O&#39;zbekiston Respublikasi Oliy Kengashining navbatdan tashqari o&#39;tkazilgan VII sessiyasida qabul qilingan.</p>\r\n\r\n<p>Davlat bayrog&#39;i va uning ramzi bugungi O&#39;zbekiston sarhadida qadimda mavjud bo&#39;lgan davlatlar bilan tarixan bog&#39;liqligini anglatadi hamda respublikaning milliy-madaniy an&#39;analarini o&#39;zida mujassamlashtiradi.</p>\r\n\r\n<p>Bayroqdagi moviy rang tiriklik mazmuni aks etgan mangu osmon va obihayot ramzi. Timsollar tilida bu - yaxshilikni, donishmandlikni, halollikni, shon-shuhrat va sadoqatni bildiradi. Binobarin, Amir Temur davlati bayrog&#39;ining rangi ham moviy rangda edi.</p>\r\n\r\n<p>Bayroqdagi oq rang - muqaddas tinchlik ramzi bo&#39;lib, u kun charog&#39;onligi va koinot yoritkichlari bilan uyg&#39;unlashib ketadi. Oq rang &ndash; poklik, beg&#39;uborlik, soflikni, orzu va hayollar tozaligi, ichki go&#39;zallikka intilishning timsoli.</p>\r\n\r\n<p>Yashil rang &ndash; tabiatning yangilanish ramzi. U ko&#39;pgina xalqlarda navqironlik, umid va shodumonlik timsoli hisoblanadi.</p>\r\n\r\n<p>Qizil chiziqlar &ndash; vujudimizda jo&#39;shib oqayotgan hayotiy qudrat irmoqlarini anglatadi.</p>\r\n\r\n<p>Navqiron yarim oy tasviri bizning tarixiy an&#39;analarimiz bilan bog&#39;liq. Ayni paytda u qo&#39;lga kiritilgan mustaqilligimiz ramzi ham.</p>\r\n\r\n<p>Yulduzlar barcha uchun ruhoniy, ilohiy timsol sanalgan. O&#39;zbekiston Respublikasi Davlat bayrog&#39;idagi 12 yulduz tasviri ham tarixiy an&#39;analarimiz, qadimgi yilnomamizga bevosita aloqador. Bizning o&#39;n ikki yulduzga bo&#39;lgan e&#39;tiborimiz O&#39;zbekiston sarhadidagi qadimgi davlatlar ilmiy tafakkurida nujum ilmi taraqqiy etganligi bilan ham izohlanadi.</p>\r\n\r\n<p>Davlat bayrog&#39;imizdagi 12 yulduz tasvirini o&#39;zbek xalqi madaniyatining qadimiyligi, uning komillikka, o&#39;z tuprog&#39;ida saodatga intilishi ramzi sifatida tushunish lozim.</p>\r\n', '', NULL, NULL, 0, NULL, 0, '2022-06-23 06:40:13', 0);

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
(2, 'Davlat Ramzlari', 1, NULL, NULL);

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
(1, 2, 1, 'Professor Teachers'),
(2, 3, 1, 'Профессор учителя'),
(3, 2, 2, 'State Symbols'),
(4, 3, 2, 'Государственные символы');

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

--
-- Дамп данных таблицы `post_image`
--

INSERT INTO `post_image` (`id`, `post_id`, `type`, `image`) VALUES
(2, 1, 1, 'd64284b038c42350418186f89fc91f22.jpg'),
(3, 1, 1, '5773319237d09a769197100baf246445.jpg'),
(4, 1, 1, 'b15b8f46b3735122228ec5d4dd7e466d.jpg'),
(5, 2, 1, '417e1c271dcbdff545e49dd5d682495f.jpg'),
(6, 2, 1, 'f488b8a212e79301224b50305004e2f2.jpg'),
(7, 2, 1, 'e9301926fa2acd844e133a6edcbab177.jpg'),
(8, 3, 1, 'a0dd18d21d96e56aefab28235b452180.jpg'),
(9, 3, 1, '94ea048b8c793ff7d1f382402eed7be5.jpg'),
(10, 3, 1, 'c729140ebefdd2aaabc021d4a50f4e8f.jpg'),
(11, 3, 1, 'a9fd2b288128a1fad294fdeaa6d21089.jpg'),
(12, 3, 1, '47db5cdc1ffb1de6f95e2c3507a69bd6.jpg'),
(13, 3, 1, '8683ace80e78c25bc7f71ed833067fd5.jpg'),
(14, 4, 1, '736e3f356249ae28890881db579eb841.jpg'),
(15, 4, 1, '5887b3932d3ba4d891db46321de90bb1.jpg'),
(16, 4, 1, 'efab5f27f43660c3a374ac62dc899fc8.jpg'),
(17, 4, 1, 'ad30d1ecef85f8d0ef08e7ab0b6b8f8d.jpg'),
(18, 4, 1, '130842b4941db0dde8bbfe0605a96f47.jpg'),
(19, 1, 3, 'e7b4a5ea6485490d887db467c60474cb.jpg'),
(21, 5, 1, '9e1de33829b9d8fb5ccafec7587a7f42.jpg'),
(22, 5, 1, 'eca0e71b44ca5a44e6afd4f537458d7e.jpg');

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
(1, 2, 1, 'State flag bearer of the Republic of Uzbekistan', '', NULL, '<p>The Law &quot;On the State Flag of the Republic of Uzbekistan&quot; was adopted on November 18, 1991 at the VII special session of the Supreme Soviet of the Republic of Uzbekistan.</p>\r\n\r\n<p>The national flag and its symbol represent the historical connection with the ancient states on the border of modern Uzbekistan and embody the national and cultural traditions of the republic.</p>\r\n\r\n<p>The blue color of the flag is a symbol of eternal sky and life, reflecting the meaning of life. In the language of symbols, it means goodness, wisdom, honesty, glory and devotion. Consequently, the color of the flag of the state of Amir Temur was also blue.</p>\r\n\r\n<p>The white color of the flag is a symbol of sacred peace, which is combined with the brightness of the day and the lights of the universe. White is a symbol of purity, innocence, purity, purity of dreams and fantasies, the pursuit of inner beauty.</p>\r\n\r\n<p>Green is a symbol of nature&#39;s renewal. He is a symbol of youth, hope and joy in many nations.</p>\r\n\r\n<p>The red lines represent the streams of life force flowing in our bodies.</p>\r\n\r\n<p>The image of the young crescent is associated with our historical traditions. At the same time, it is a symbol of our independence.</p>\r\n\r\n<p>The stars were considered a priestly, divine symbol for all. The image of 12 stars on the national flag of the Republic of Uzbekistan is also directly related to our historical traditions, our ancient annals. Our attention to the twelve stars is also explained by the development of the science of astrology in the scientific thinking of the ancient states on the border of Uzbekistan.</p>\r\n\r\n<p>The image of 12 stars on our national flag should be understood as a symbol of the antiquity of the culture of the Uzbek people, its pursuit of perfection and happiness in their land.</p>\r\n', '', 1),
(2, 3, 1, 'Государственный флаг Республики Узбекистан', '', NULL, '<p>Закон &laquo;О Государственном флаге Республики Узбекистан&raquo; был принят 18 ноября 1991 года на VII специальной сессии Верховного Совета Республики Узбекистан.</p>\r\n\r\n<p>Государственный флаг и его символ олицетворяют историческую связь с древними государствами на границе современного Узбекистана и олицетворяют национально-культурные традиции республики.</p>\r\n\r\n<p>Синий цвет флага &ndash; символ вечного неба и жизни, отражающий смысл жизни. На языке символов оно означает добро, мудрость, честность, славу и преданность. Следовательно, цвет флага государства Амира Темура также был синим.</p>\r\n\r\n<p>Белый цвет флага &ndash; символ священного мира, который сочетается с яркостью дня и огнями вселенной. Белый &ndash; символ чистоты, невинности, непорочности, чистоты мечтаний и фантазий, стремления к внутренней красоте.</p>\r\n\r\n<p>Зеленый &ndash; символ обновления природы. Он является символом молодости, надежды и радости у многих народов.</p>\r\n\r\n<p>Красные линии представляют собой потоки жизненной силы, текущие в наших телах.</p>\r\n\r\n<p>Образ молодого полумесяца связан с нашими историческими традициями. В то же время это символ нашей независимости.</p>\r\n\r\n<p>Звезды считались священническим, божественным символом для всех. Изображение 12 звезд на государственном флаге Республики Узбекистан также напрямую связано с нашими историческими традициями, нашими древними летописями. Наше внимание к двенадцати звездам объясняется также развитием науки астрологии в научном мышлении древних государств на границе Узбекистана.</p>\r\n\r\n<p>Изображение 12 звезд на нашем государственном флаге следует понимать как символ древности культуры узбекского народа, его стремления к совершенству и счастью на своей земле.</p>\r\n', '', 1);

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
('address_footer', 'Termiz shahar, Islom Karimov ko`chasi, 288B-uy', ''),
('arm_fund', '27447', NULL),
('author-requirements', 'Saytdagi har qanday ma`lumotdan foydalanish, bizning saytga havola ko`rsatish sharti bilan ruxsat etiladi.', NULL),
('cathedras', '15', NULL),
('copyright', '© 2022 Termiz davlat pedagogika instituti, onlayn kutubxonasi - Barcha huquqlar himoyalangan', NULL),
('facebook', 'https://www.facebook.com/terdupi.uz', ''),
('faculties', '5', NULL),
('instagram', 'http://terarx.uz/#', ''),
('mail', 'info@terdupi.uz', ''),
('mail-index', 'Pochta index: 190111', NULL),
('phone', ' +998762219371', ''),
('professors', '149', NULL),
('students_count', '5767', NULL),
('telegram', 'https://t.me/TerDUPI_DIREKTORI', ''),
('title', 'Termiz davlat universitetining Pedagogika instituti', ''),
('transport-list', 'Termiz davlat universiteti Pedagogika institutiga harakatlanadigan marshrutlar: 2, 7, 5-avtobus', NULL),
('youtube', 'https://www.youtube.com/channel/UClphkaFZkaGCHU2iku6II4A', NULL);

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
(17, 3, 'title', 'Термезский государственный университет Педагогический институт '),
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
(1, 'main', 'section-news-title'),
(2, 'main', 'read-more'),
(3, 'main', 'all-announcements'),
(4, 'main', 'all-news'),
(5, 'main', 'section-services-title'),
(6, 'main', 'section-professors-title'),
(7, 'main', 'section-links-title'),
(8, 'main', 'section-gallery-title'),
(9, 'main', 'how-to-get'),
(10, 'main', 'address'),
(11, 'main', 'call-center'),
(12, 'main', 'home'),
(13, 'main', 'resources'),
(14, 'main', 'week-top-news'),
(15, 'main', 'albums'),
(16, 'main', 'another'),
(17, 'main', 'another'),
(18, 'main', 'contacts'),
(19, 'main', 'send'),
(20, 'main', 'fio'),
(21, 'main', 'subject'),
(22, 'main', 'body'),
(23, 'main', 'phone'),
(24, 'main', 'contact-with-us'),
(25, 'main', 'success-send'),
(26, 'main', 'students_count'),
(27, 'main', 'arm_fund'),
(28, 'main', 'professor_teachers'),
(29, 'main', 'faculties_count'),
(30, 'main', 'cathedras'),
(31, 'main', 'documents'),
(32, 'main', 'categories'),
(33, 'main', 'no-data'),
(34, 'main', 'sitemap');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_category_lang`
--
ALTER TABLE `news_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news_lang`
--
ALTER TABLE `news_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `page_lang`
--
ALTER TABLE `page_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post_image`
--
ALTER TABLE `post_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
