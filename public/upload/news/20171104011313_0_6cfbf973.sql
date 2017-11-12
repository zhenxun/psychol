-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2017 年 10 月 04 日 04:24
-- 伺服器版本: 5.6.35
-- PHP 版本： 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `vcmlab`
--
CREATE DATABASE IF NOT EXISTS `vcmlab` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vcmlab`;

-- --------------------------------------------------------

--
-- 資料表結構 `account_web_master`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `account_web_master` (
  `No` int(11) NOT NULL,
  `Id` text NOT NULL,
  `username` text NOT NULL,
  `pwd` text NOT NULL,
  `status` text NOT NULL,
  `otp` text NOT NULL COMMENT 'on time password',
  `email` text NOT NULL,
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `account_web_master`
--

INSERT INTO `account_web_master` (`No`, `Id`, `username`, `pwd`, `status`, `otp`, `email`, `createTime`) VALUES
(7, 'A-7798', 'admin', '6c0cb8a834ad88ce16f70ed52f5768ce', 'true', '2979', 'zhenxun_9119@hotmail.com', '2015-07-04 06:06:01'),
(8, 'A-2703', 'vcmlab', 'f9ccca7472f1b2289e5882f401862d73', 'true', '4491', 'vcmlab.2010@gmail.com', '2015-07-09 07:18:58');

-- --------------------------------------------------------

--
-- 資料表結構 `album_list`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `album_list` (
  `No` int(11) NOT NULL,
  `id` text NOT NULL,
  `title` text NOT NULL,
  `embed_url` longtext NOT NULL,
  `creat_time` datetime NOT NULL,
  `edit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `album_list`
--

INSERT INTO `album_list` (`No`, `id`, `title`, `embed_url`, `creat_time`, `edit_time`) VALUES
(1, 'A-4459', '104_5_3 VCMLAB 6 years reunion', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&captions=1&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6149309172378978433%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCIzB6sG0jbPnswE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 11:42:42', '2015-09-13 11:52:16'),
(2, 'A-6692', '2014_11_18-23-出席美國洛杉磯國際會議', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&captions=1&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6102206409153936929%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCNP2m9S1qJ74Ww%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:04:51', '2015-09-13 12:04:51'),
(3, 'A-7645', '心理系20141016實驗室聚餐', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6071520494605685313%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCIHp-7iE7q3LGg%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:08:22', '2015-09-13 12:08:22'),
(4, 'A-7187', '2014 TMCP 國際研討會', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6071518002563697873%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCM2qy9KvmMiutQE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:08:38', '2015-09-13 12:08:38'),
(5, 'A-3828', '2014_07_17-27 mathpsych 國際會議-加拿大魁北克', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6052201456653311649%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCNj134TKxK3Kbw%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:08:52', '2015-09-13 12:08:52'),
(6, 'A-4268', '2014_06_29-30 與國外學者同遊花蓮之旅-立德布洛灣', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6033586963145944913%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCLat9sG_idqjJA%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:09:08', '2015-09-13 12:09:08'),
(7, 'A-7740', '103學年學術研究獎項頒獎典禮', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6020191094759414081%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCJzMu8KK0_ab3QE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:09:25', '2015-09-13 12:09:25'),
(8, 'A-9168', '師生聚餐', '<embed type=\"application/x-shockwave-flash\" src=\"https://picasaweb.google.com/s/c/bin/slideshow.swf\" width=\"450px\" height=\"350px\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F5858952339070858065%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCODQ7LK6pPGKlwE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:09:37', '2015-09-13 12:09:37'),
(9, 'A-2051', '參加研討會', '<embed type=\"application/x-shockwave-flash\" src=\"http://picasaweb.google.com/s/c/bin/slideshow.swf\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=http%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2Fvcm.lab.2010%2Falbumid%2F5542585457553510689%3Falt%3Drss%26kind%3Dphoto%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" class=\"style7\" style=\"width: 450px; height: 350px\"></embed>', '2015-09-13 12:09:50', '2015-09-13 12:09:50'),
(10, 'A-4694', 'TED長榮大學演講', '<embed type=\"application/x-shockwave-flash\" src=\"https://picasaweb.google.com/s/c/bin/slideshow.swf\" width=\"450px\" height=\"350px\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F5858931914362094641%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCIHVsJ3at7Ls9QE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:10:29', '2015-09-13 12:10:29'),
(11, 'A-2897', '巴人川味館-與講者餐敘', '<embed type=\"application/x-shockwave-flash\" src=\"https://picasaweb.google.com/s/c/bin/slideshow.swf\" width=\"450px\" height=\"350px\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F5867451150464548417%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCIW5nf258PjqtAE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:10:42', '2015-09-13 12:10:42'),
(12, 'A-3748', '眼動儀工作坊', '<embed type=\"application/x-shockwave-flash\" src=\"https://picasaweb.google.com/s/c/bin/slideshow.swf\" width=\"450px\" height=\"350px\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F5882854791322122641%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCMqyoMmzsLHR0wE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:10:54', '2015-09-13 12:10:54'),
(13, 'A-3632', '老師升等聚餐', '<embed type=\"application/x-shockwave-flash\" src=\"https://static.googleusercontent.com/external_content/picasaweb.googleusercontent.com/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F5902993858685508497%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCL-Z-q22icSlvQE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-09-13 12:11:08', '2015-09-13 12:11:08'),
(14, 'A-2166', '第53屆十大傑出青年獎當選發表記者會', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6202902707198348737%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCMeOgYDGx5GeTg%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-10-07 15:53:59', '2015-10-08 03:50:39'),
(15, 'A-9056', '20151121UX工作坊', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6220946541460969041%3Falt%3Drss%26kind%3Dphoto%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-11-25 05:55:06', '2015-11-26 02:07:15'),
(16, 'A-2668', 'UX工作坊後與葉怡玉老師進餐時間', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6221255182745975777%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCK2_0aLw9N-7Qg%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-11-26 02:01:37', '2015-11-26 02:07:18'),
(17, 'A-2907', '大愛電視台整日專訪', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6221259379476833105%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCNfkg5njlKON3wE%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-11-26 02:06:22', '2015-11-26 02:06:22'),
(18, 'A-3913', '十傑頒獎典禮', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6223465154581677857%3Falt%3Drss%26kind%3Dphoto%26authkey%3DGv1sRgCK75mprYpPSvNw%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2015-12-02 00:45:36', '2015-12-02 00:45:36'),
(19, 'A-2594', '與張仁和老師的小聚餐', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6241054629407345633%3Falt%3Drss%26kind%3Dphoto%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2016-01-18 10:21:34', '2016-01-18 10:21:49'),
(20, 'A-7680', '2016年1月8日 認知科技與設計期末成果展', '<embed type=\"application/x-shockwave-flash\" src=\"https://photos.gstatic.com/media/slideshow.swf\" width=\"450\" height=\"350\" flashvars=\"host=picasaweb.google.com&hl=zh_TW&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F110815421896407580731%2Falbumid%2F6241055695638958897%3Falt%3Drss%26kind%3Dphoto%26hl%3Dzh_TW\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"></embed>', '2016-01-18 10:40:20', '2016-06-16 11:07:37'),
(21, 'A-6741', '1050607中研院年輕學者著作獎頒獎典禮', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/141878825@N06/albums/72157667355398154\" title=\"1050607中研院年輕學者著作獎頒獎\"><img src=\"https://c5.staticflickr.com/8/7201/27548863860_a0c3422397_n.jpg\" width=\"240\" height=\"350\" alt=\"1050607中研院年輕學者著作獎頒獎\"></a><script async src=\"//embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', '2016-06-16 11:08:05', '2016-10-27 07:55:19'),
(22, 'A-4357', '2016心理學年會', '<a data-flickr-embed=\"true\"  href=\"https://www.flickr.com/photos/141878825@N06/albums/72157674368336801\" title=\"2016心理學年會\"><img src=\"https://c8.staticflickr.com/6/5569/30593749255_74a0638b4c_z.jpg\" width=\"240\" height=\"350\" alt=\"2016心理學年會\"></a><script async src=\"//embedr.flickr.com/assets/client-code.js\" charset=\"utf-8\"></script>', '2016-10-27 07:56:15', '2016-12-09 03:43:16');

-- --------------------------------------------------------

--
-- 資料表結構 `coop_list`
--
-- 建立時間: 2017 年 08 月 14 日 07:08
--

CREATE TABLE `coop_list` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` text NOT NULL,
  `job` text NOT NULL,
  `dept` text NOT NULL,
  `hobby` text NOT NULL,
  `mail` text NOT NULL,
  `web` text NOT NULL,
  `photo` text NOT NULL,
  `createTime` datetime NOT NULL,
  `editTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `coop_list`
--

INSERT INTO `coop_list` (`id`, `sort`, `name`, `job`, `dept`, `hobby`, `mail`, `web`, `photo`, `createTime`, `editTime`) VALUES
(2, 1, '葉怡玉 Yeh Yei-Yu', '教授', '國立台灣大學 心理學系暨研究所', '選擇注意力，工作記憶，三度空間知覺', 'yyy@ntu.edu.tw ', 'http://170.112.62.7/psysite2/web/faculty/prof/YYY', '40363c62caaace4d106c2e8da7a3e29b.jpg', '2017-08-13 15:59:45', '2017-08-22 08:40:19'),
(3, 2, '徐永豐 Hsu Yung-Fong', '副教授', '國立台灣大學 心理學系暨研究所 ', '動態決策分析，反應時間，心理物理學 ', 'yfhsu@ntu.edu.tw ', 'http://170.112.62.7/psysite2/web/faculty/prof/HYF', '91e3cee4ca4c7a02d5a25fcbd0f2004f.jpg', '2017-08-13 16:34:24', '2017-08-22 08:47:52'),
(4, 11, '黃揚名 Huang Yang-Ming', '助理教授', '輔仁大學 心理學系', '情緒，注意力，認知心理學 ', '078634@mail.fju.edu.tw ', 'http://www.psy.fju.edu.tw/new0916/huang.htm', '4e8f794089b6b4ef55cd0399dca1433c.jpg', '2017-08-13 16:35:53', '2017-08-14 04:22:08'),
(5, 10, '吳佳輝 Wu Chia-Huei', '助理教授 ', '倫敦政經大學 心理學系 ', '工商心理學，心理計量', 'chiahuei.wu@gmail.com ', 'http://www.lse.ac.uk/researchAndExpertise/Experts/profile.aspx?KeyValue=c.wu17%40lse.ac.uk', 'b5aa00569d8ff5f87a3ba5d0f428f46c.jpg', '2017-08-13 16:36:43', '2017-08-14 09:47:57'),
(6, 9, '丘雨勤 Chiu Yu-Chin', '博士後研究員', '加州大學 (聖地牙哥分校) 心理學系', '認知神經科學，注意力', 'chiu.yuchin@gmail.com ', '', '4760130e7e96f526509ddf7072a533e0.jpg', '2017-08-13 16:40:32', '2017-08-22 08:42:36'),
(7, 4, 'Mario Fific', '助理教授 ', '偉谷州立大學 心理學系 ', '認知心理學，分類決策，反應時間，人臉知覺', 'fificm@gvsu.edu ', 'http://faculty.gvsu.edu/fificm/index.html', 'bc17eb4e226735124f77bafc1f7533b8.jpg', '2017-08-13 16:43:16', '2017-08-22 08:38:30'),
(8, 3, 'Daniel R. Little', '副教授', '墨爾本大學 心理學系 ', '認知心理學，行為神經科學，分類學習 ', 'daniel.little@unimelb.edu ', 'http://www.findanexpert.unimelb.edu.au/display/person340672', '20d2d64ec411c806062aa81b791a6bcb.jpg', '2017-08-13 16:44:03', '2017-08-22 09:35:09'),
(9, 8, '曾祥非 Philip Tseng', '副教授 ', '台北醫學大學醫學人文研究所 認知神經科學研究所', '研究興趣：視覺科學，認知神經科學 ', 'tsengphilip@gmail.com ', 'http://medhuman1.tmu.edu.tw/philip/', 'd94a076c37fc2a88653cd513a39c5dff.jpg', '2017-08-13 16:44:53', '2017-08-22 09:30:23'),
(10, 5, 'Nicholas Altieri', '助理教授', '愛達荷州立大學Department of Communication Sciences and Disorders ', '認知科學、認知心理學、實驗心理學', 'altinich@isu.edu', 'https://sites.google.com/a/isu.edu/isulanglab/', 'e9e2b0bf9785df7ad5611715ccd600f8.jpg', '2017-08-22 08:25:24', '2017-08-22 08:34:08'),
(11, 6, 'Joseph W. Houpt', '助理教授', '萊特州立大學 心理學系 ', '認知心理學、數理模型、發展心理學', ' joseph.houpt@wright.edu', 'http://psych-scholar.wright.edu/cogntivemodelinggroup/', 'a6bd97699e075f539c00d3acbbeefc5a.jpg', '2017-08-22 08:27:30', '2017-08-22 08:46:36'),
(12, 7, 'Ami Eidels ', '副教授', '紐卡斯爾大學 心理學系', '認知心理學、訊息處理、注意力與知覺', 'ami.eidels@newcastle.edu.au', 'http://www.newcastle.edu.au/profile/ami-eidels#career', '6a1181c6e8f8351e8444020e4f012e6d.jpg', '2017-08-22 08:30:03', '2017-08-22 09:32:18');

-- --------------------------------------------------------

--
-- 資料表結構 `course_list`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `course_list` (
  `No` int(11) NOT NULL,
  `id` text NOT NULL,
  `semester` int(11) NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `alias` text NOT NULL,
  `credit` text NOT NULL,
  `time` text NOT NULL,
  `place` text NOT NULL,
  `semester_part` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `course_list`
--

INSERT INTO `course_list` (`No`, `id`, `semester`, `name`, `link`, `alias`, `credit`, `time`, `place`, `semester_part`, `note`) VALUES
(1, 'C-8642', 103, '心理學', 'http://140.116.183.229//course/psychology103/', 'A974500', '2', '[4]3~4', '資訊大樓 格致廳大講堂', '2', ''),
(2, 'C-9064', 103, '性格心理學', '', 'D821300', '3', '[5]5~7', '未知', '2', ''),
(3, 'C-4243', 103, '專題研究（二）', '', 'D833110', '3', '[5]9~B', '未知', '2', ''),
(4, 'C-4474', 103, '教學實習（二）', '', 'U780920', '0', '[2]1', '未知', '2', ''),
(5, 'C-7007', 103, '專題討論', '', 'U790101', '0', '[5]8', '未知', '2', ''),
(6, 'C-7915', 103, '注意力與記憶專題研究（二）', '', 'U771920', '3', '[3]9~B', '未知', '2', ''),
(7, 'C-5662', 104, '心理學概論（一）', '', 'D810910', '3', '[3]2~4', '社科院大樓 80201', '1', ''),
(8, 'C-3406', 104, '專題研究（一）', '', 'D833100', '3', '[5]9~B', '未知', '1', ''),
(9, 'C-3623', 104, '認知、科技與設計', '', 'D834900', '2', '[5]7~8', '社科院大樓 80201', '1', ''),
(10, 'C-5546', 104, '教學實習（一）', '', 'U780910', '0', '[5]7', '社科院大樓 階梯教室-心理', '1', ''),
(11, 'C-5472', 104, '專題討論', '', 'U790100', '0', '[5]8', '社科院大樓 階梯教室-心理', '1', ''),
(12, 'C-8908', 104, '實驗設計', '', 'U771300', '3', '[3]2~4', '社科院大樓 80209', '1', ''),
(13, 'C-5038', 104, '心理學數理方法', '', 'U780400', '3', '[2]2~4', '社科院大樓 80204', '1', ''),
(14, 'C-8410', 104, '心理數理學專題研究', '', 'U780500', '3', '[3]9~B', '社科院大樓 階梯教室-心理', '1', ''),
(15, 'C-7423', 104, '心理學', 'https://sites.google.com/site/psychology10401', 'A974500', '2', '[4]3~4', '資訊大樓 格致廳大講堂', '1', ''),
(16, 'C-6335', 103, '注意力與記憶專題研究(一)', '', 'U771900', '3', '[3]9~B', '社科院大樓', '1', ''),
(17, 'C-4097', 103, '教學實習(一)', '', 'U780910', '3', '[5]8', '社科院大樓', '1', ''),
(18, 'C-6631', 103, '認知神經科學與認知模擬（一）', '', 'U771800', '3', '[3]N~5', '社科院大樓', '1', ''),
(19, 'C-9651', 103, '實驗設計', '', 'U771300', '3', '[4]2~4', '社科院大樓', '1', ''),
(20, 'C-6894', 103, '專題討論', '', 'U790100 ', '0', '[5]7', '社科院大樓', '1', ''),
(21, 'C-5792', 103, '心理學概論(一)', '', 'D810910 ', '3', '[3]2~4', '社科院大樓', '1', ''),
(22, 'C-2212', 103, '專題研究(一)', '', 'D833100', '3', '[5]9~B', '社科院大樓', '1', ''),
(23, 'C-6787', 102, '教學實習（二）', '', 'U780920	', '0', '[1]0	', '社科院大樓', '2', ''),
(24, 'C-3943', 102, '專題討論', '', 'U790101', '0', '[5]8', '社科院大樓', '2', ''),
(25, 'C-1338', 102, '認知神經科學與認知模擬', '', 'U771100	', '3', '[2]N~6	', '社科院大樓80209', '2', ''),
(26, 'C-9493', 102, '注意力與記憶專題研究', '', 'U780800', '3', '[3]9~B', '社科院大樓', '2', ''),
(27, 'C-5993', 102, '專題研究（二）', '', 'D833110	', '3', '[5]9~B	', '社科院大樓', '2', ''),
(28, 'C-3619', 102, '認知心理學', '', 'D820200', '3', '[5]2~4	', '社科院大樓', '2', ''),
(29, 'C-4885', 102, '心理學', '', 'A974500', '2', '[3]3~4	', '社科院大樓', '2', '通識'),
(30, 'C-8266', 102, '應用創新科技探索智慧生活－以府城文化為例', '', 'D834700	', '2', '[5]3~4	', '社科院大樓', '1', ''),
(31, 'C-2397', 102, '專題研究（一）', '', 'D833100	', '3', '[5]9~B	', '社科院大樓', '1', ''),
(32, 'C-3652', 102, '專題討論', '', 'U790100	', '0', '[5]7	', '社科院大樓', '1', ''),
(33, 'C-8873', 102, '認知科學', '', 'U750101', '3', '[2]2~4	', '社科院大樓', '1', ''),
(34, 'C-1709', 102, '教學實習（一）', '', 'U780910', '0', '[5]8	', '社科院大樓', '1', ''),
(35, 'C-9059', 102, '心理學概論（一）', '', 'D810910', '3', '[3]2~4	', '社科院大樓', '1', ''),
(36, 'C-6091', 102, '注意力、記憶與決策', '', 'U752900', '3', '[3]9~B	', '社科院大樓', '1', ''),
(37, 'C-4158', 102, '心理數理學專題研究', '', 'U780500', '3', '[4]9~B', '社科院大樓', '1', ''),
(38, 'C-9613', 101, '跨科際方法學導論', '', 'D835100', '2', '[1]7~8	', '社科院大樓', '2', ''),
(39, 'C-1145', 101, '心理學', '', 'A974500	', '2', '[3]3~4	', '社科院大樓', '2', '通識'),
(40, 'C-5184', 101, '視覺與人因設計', '', 'D841600', '2', '[5]3~4	', '社科院大樓', '2', ''),
(41, 'C-6251', 101, '低頭族的使用者體驗分析與實務（二）', '', 'D841402', '2', '[1]4~N	', '社科院大樓', '2', ''),
(42, 'C-5241', 101, '專題研究（二）', '', 'D833110	', '3', '[5]9~B	', '社科院大樓', '2', ''),
(43, 'C-7368', 101, '統計學與資料分析（二）', '', 'D820302', '4', '[4]2~6', '社科院大樓', '2', ''),
(44, 'C-4170', 101, '教學實習（二）', '', 'U780920', '0', '[1]1	', '社科院大樓', '2', ''),
(45, 'C-1537', 101, '專題討論', '', 'U790101', '0', '[5]8	', '社科院大樓', '2', ''),
(46, 'C-5771', 101, '認知科學', '', 'U750101', '3', '[2]2~4	', '社科院大樓', '1', ''),
(47, 'C-5853', 101, '專題研究（一）', '', 'D833100', '3', '[5]9~B	', '社科院大樓', '1', ''),
(48, 'C-6957', 101, '專題討論', '', 'U790100', '0', '[5]7	', '社科院大樓', '1', ''),
(49, 'C-2010', 101, '認知科學議題研討（一）', '', 'U753010	', '1', '[5]5	', '社科院大樓', '1', ''),
(50, 'C-9909', 101, '認知科學議題研討（三）', '', 'U753030	', '1', '[5]6	', '社科院大樓', '1', ''),
(51, 'C-1352', 101, '認知、科技與設計', '', 'D834900', '2', '[2]3~4	', '社科院大樓', '1', ''),
(52, 'C-7665', 101, '反應時間', '', 'U782401', '3', '[3]2~4	', '社科院大樓', '1', ''),
(53, 'C-3453', 101, '低頭族的使用者體驗分析與實務（一）', '', 'D841401', '2', '[5]3~4	', '社科院大樓', '1', ''),
(54, 'C-8645', 101, '高等臨床心理衡鑑－以神經心理學走向為例', '', 'TA73400', '3', '[2]6~8	', '社科院大樓', '1', ''),
(55, 'C-5921', 101, '創新科技探索智慧空間－以夜市文化為例', '', 'D841500	', '2', '[3]5~6	', '社科院大樓', '1', ''),
(56, 'C-2603', 101, '統計學與資料分析（一）', '', 'D820102	', '4', '[4]2~6', '社科院大樓', '1', ''),
(57, 'C-8503', 101, '教學實習（一）', '', 'U780910', '0', '[5]8	', '社科院大樓', '1', ''),
(58, 'C-7220', 100, '	應用創新科技探索智慧生活－以府城文化為例', '', 'D834700', '2', '[5]3~4	', '社科院大樓', '2', ''),
(59, 'C-6909', 100, '專題討論', '', 'U790101	', '0', '[5]8	', '社科院大樓', '2', ''),
(60, 'C-4186', 100, '統計學與資料分析（二）', '', 'D820302', '4', '[4]2~6', '社科院大樓', '2', ''),
(61, 'C-1910', 100, '注意力、記憶與決策', '', 'U752900', '3', '[5]8~A	', '社科院大樓', '2', ''),
(62, 'C-2648', 100, '專題研究（二）', '', 'D833110', '3', '[5]9	', '社科院大樓', '2', ''),
(63, 'C-3626', 100, '教學實習（二）', '', 'U780920', '0', '[5]7	', '社科院大樓', '2', ''),
(64, 'C-5922', 100, '專題研究（一）', '', 'D833100', '3', '[5]9	', '社科院大樓', '1', ''),
(65, 'C-6869', 100, '專題討論', '', 'U790100', '0', '[5]7	', '社科院大樓', '1', ''),
(66, 'C-1999', 100, '統計學與資料分析（一）', '', 'D820102', '4', '[4]2~6', '社科院大樓', '1', ''),
(67, 'C-6516', 100, '心理學', '', 'A974500', '2', '[3]3~4	', '社科院大樓', '1', '通識'),
(68, 'C-2216', 100, '心理學數理方法', '', 'U780400', '3', '[5]2~4	', '社科院大樓', '1', ''),
(69, 'C-1552', 100, '教學實習（一）', '', 'U780910', '0', '[5]8	', '社科院大樓', '1', ''),
(70, 'C-3460', 99, '專題研究（二）', '', 'D833110', '3', '[5]9	', '社科院大樓', '2', ''),
(71, 'C-8380', 99, '心理物理學與信號偵測', '', 'U781200	', '3', '[3]2~4	', '社科院大樓', '2', ''),
(72, 'C-3059', 99, '資料分析與習作', '', 'D820300	', '3', '[4]2~3	', '社科院大樓', '2', ''),
(73, 'C-6893', 99, '專題討論', '', 'U790101', '0', '[5]8	', '社科院大樓', '2', ''),
(74, 'C-1046', 99, '教學實習（二）', '', 'U780920	', '0', '[5]7	', '社科院大樓', '2', ''),
(75, 'C-5552', 99, '隨機過程在心理學的應用', '', 'U770300', '3', '[1]9~B	', '社科院大樓', '1', ''),
(76, 'C-8762', 99, '注意力與記憶專題研究', '', 'U780800', '3', '[5]9~B	', '社科院大樓', '1', ''),
(77, 'C-2503', 99, '專題討論', '', 'U790100', '0', '[5]7	', '社科院大樓', '1', ''),
(78, 'C-1369', 99, '專題研究（一）', '', 'D833100', '3', '[3]9~B	', '社科院大樓', '1', ''),
(79, 'C-2362', 99, '認知科學', '', 'U750101', '3', '[2]2~4	', '社科院大樓', '1', ''),
(80, 'C-7677', 99, '統計學概論', '', 'D820100', '3', '[4]2~4	', '社科院大樓', '1', ''),
(81, 'C-7261', 98, '心理學數理方法', '', 'U780400', '3', '[3]9~B	', '社科院大樓', '2', ''),
(82, 'C-4390', 98, '資料分析與習作', '', 'D820300', '3', '[2]2~3	', '社科院大樓', '2', ''),
(83, 'C-8512', 98, '心理數理學專題研究', '', 'U780500', '3', '[4]9~B	', '社科院大樓', '2', ''),
(84, 'C-2955', 98, '專題討論', '', 'U790101', '0', '[5]9	', '社科院大樓', '2', ''),
(85, 'C-1517', 98, '統計學概論', '', 'D820100', '3', '[4]2~4	', '社科院大樓', '1', ''),
(86, 'C-6396', 98, '注意力、記憶與決策', '', 'U752900', '3', '[3]2~4	', '社科院大樓', '1', ''),
(87, 'C-8154', 104, '	專題研究（二）', '', 'D833110', '3', '[5]9~B', '社科院大樓 80209', '2', ''),
(88, 'C-7464', 104, '體驗劇場', 'https://sites.google.com/site/experiencetheatre105', 'D836100', '2', '[2]5~6', '社科院大樓 80201', '2', ''),
(89, 'C-6459', 104, '教學實習（二）', '', 'U780920', '0', '[2]1', '社科院大樓 階梯教室-心理', '2', ''),
(90, 'C-8116', 104, '專題討論', '', 'U790101', '0', '[5]8', '社科院大樓 階梯教室-心理', '2', ''),
(91, 'C-8353', 104, '	健身運動與認知神經科學專題研究', '', 'TA82300', '2', '[4]3~4', '醫學院 201D', '2', ''),
(92, 'C-2637', 104, '心理學', 'https://sites.google.com/site/psychology10402/home', 'A974500', '2', '[3]3~4', '資訊大樓 格致廳大講堂', '2', ''),
(93, 'C-6714', 105, '心理學概論（一）', '', 'D810910', '2', '[3]2~4', '社科院大樓 80201', '1', ''),
(94, 'C-3696', 105, '專題研究（一）', '', 'D833100', '3', '[5]9~B', '社科院大樓 階梯教室-心理', '1', ''),
(95, 'C-1848', 105, '體驗劇場', 'https://sites.google.com/site/experiencetheatre106/', 'D836100', '2', ' [2]5~6', '社科院大樓 階梯教室-心理', '1', ''),
(96, 'C-7120', 105, '教學實習（一）', '', 'U780910', '0', '[5]7', '社科院大樓 階梯教室-心理', '1', ''),
(97, 'C-1155', 105, '專題討論', '', 'U790100', '0', '[5]8', '社科院大樓 階梯教室-心理', '1', ''),
(98, 'C-6801', 105, '實驗設計', '', 'U771300', '3', '[4]2~4', '社科院大樓 80209', '1', ''),
(100, 'C-7175', 105, '心理學', 'https://sites.google.com/site/psychology10601/', 'A974500', '2', '[3]3~4', '資訊大樓 格致廳大講堂', '1', ''),
(101, 'C-5642', 105, '專題研究（二）', '', 'D833110', '3', '[5]9~B', '社科院大樓 80201', '2', ''),
(102, 'C-1976', 105, '體驗劇場', 'https://sites.google.com/site/experiencetheatre10502/', 'D836100', '2', '[2]5~6', '社科院大樓 80201	', '2', ''),
(103, 'C-8187', 105, '教學實習（二）', '', 'U780920', '0', '[2]1', '社科院大樓 階梯教室-心理', '2', ''),
(104, 'C-7767', 105, '健身運動與認知神經科學專題研究', '', 'TA82300', '2', '[4]3~4', '教室於心理系5樓玻璃會議室', '2', ''),
(105, 'C-1190', 105, '專題討論', '', 'U790100', '0', '[5]8', '社科院大樓 階梯教室-心理', '2', ''),
(106, 'C-8653', 105, '心理學', 'https://sites.google.com/site/psychology10502/', 'A974500', '2', '[3]3~4', '理化大樓 格致廳大講堂', '2', '');

-- --------------------------------------------------------

--
-- 資料表結構 `cv_list`
--
-- 建立時間: 2017 年 08 月 14 日 07:08
--

CREATE TABLE `cv_list` (
  `id` int(11) NOT NULL,
  `filename` text NOT NULL,
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `cv_list`
--

INSERT INTO `cv_list` (`id`, `filename`, `createTime`) VALUES
(6, 'cv_20170813.pdf', '2017-08-13 09:50:42'),
(8, 'cv_20170814.pdf', '2017-08-14 09:52:50'),
(9, 'cv_20170814.pdf', '2017-08-14 09:54:56');

-- --------------------------------------------------------

--
-- 資料表結構 `event_list`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `event_list` (
  `No` int(11) NOT NULL,
  `eventId` text NOT NULL,
  `eventTitle` text NOT NULL,
  `eventDate` text NOT NULL,
  `eventDate_end` text NOT NULL,
  `eventMonth` text NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `event_list`
--

INSERT INTO `event_list` (`No`, `eventId`, `eventTitle`, `eventDate`, `eventDate_end`, `eventMonth`, `create_time`, `edit_time`) VALUES
(4, 'BE-4965', '榮獲100學年度國立成功大學心理學系優良導師', '100', '100', '', '2015-08-04 09:54:11', '2016-03-02 04:47:29'),
(5, 'BE-4002', '榮獲100學年度國立成功大學社會科學院優良導師', '100', '100', '', '2015-08-04 09:55:45', '2016-11-22 02:46:54'),
(6, 'BE-8782', '楊政達老師及指導學生 張文乘、潘柔 參加100學年數理心理學會，獲得行政院青輔會補助出席國際會議', '100', '100', '', '2015-08-04 09:59:22', '2016-03-02 04:47:40'),
(7, 'BE-6623', '指導學生 張文乘、潘柔 參加100學年數心理學會，獲得教育部補助出席國際會議', '100', '100', '', '2015-08-04 10:03:17', '2016-03-02 04:47:45'),
(8, 'BE-6759', '指導學生 張婷昀 參與100年物體、知覺、注意力及記憶會議，獲得教育部頂尖大學補助出席國際會議', '100', '100', '', '2015-08-04 10:12:27', '2016-03-02 04:47:51'),
(9, 'BE-3174', '指導 游如淇 獲得行政院國家科學委員會補助100學年度大專學生參與專題研究計畫。計畫名稱：「探討「由上而下」與「由下而上」的運作對特徵再認歷程的影響」', '100', '100', '', '2015-08-04 10:13:06', '2016-03-02 04:48:00'),
(10, 'BE-7015', '指導學生 許景淳 參與101年數學心理學會，獲得教育部頂尖大學、行政院國家科學委員會補助出席國際會議', '101', '101', '', '2015-08-04 10:13:33', '2016-03-02 04:48:14'),
(11, 'BE-4102', '指導 張婷昀 獲得行政院國家科學委員會補助101學年度大專學生參與專題研究計畫。計畫名稱：「探討相對突顯性如何影響雙重目標偵測作業中的決策歷程」', '101', '101', '', '2015-08-04 10:13:54', '2016-03-02 04:48:22'),
(12, 'BE-6246', '指導學生 游如淇、張婷昀參與102年物體、知覺、注意力及記憶會議，獲得行政院國家科學委員會補助出席國際會議', '102', '102', '', '2015-08-04 10:14:29', '2016-03-02 04:48:07'),
(13, 'BE-1226', '指導學生 張婷昀、游如淇 參與103年數學心理學會，獲得教育部頂尖大學補助出席國際會議', '103', '103', '', '2015-08-04 10:15:50', '2016-03-02 04:48:33'),
(14, 'BE-9027', '指導學生 張婷昀參與103年數學心理學會，獲得行政院科技部補助出席國際會議', '103', '103', '', '2015-08-04 10:16:14', '2016-03-02 04:48:28'),
(15, 'BE-5817', '指導學生 游如淇、張婷昀參與103年數學心理學會，獲得學會頒發獎助學金', '103', '103', '', '2015-08-04 10:16:40', '2016-03-02 04:48:38'),
(16, 'BE-2952', '指導學生 游如淇、張婷昀參加「100學年度e-portfolio優良作品暨優良種子教師競賽」，榮獲優良種子教師', '100', '100', '', '2015-08-04 10:17:28', '2016-03-02 04:48:52'),
(17, 'BE-8644', '指導學生 游如淇 參加「100學年度大學跨學門科學人才培育銜接計畫」 校內競賽，榮獲傑出團體獎', '100', '100', '', '2015-08-04 10:18:01', '2016-03-02 04:47:25'),
(18, 'BE-6277', '所執行的100學年度智慧生活跨領域基礎課程及服務學習課程推廣計畫「應用創新科技探索智慧生活－以府城文化為例」被評選為100學年度教育部績優課程', '100', '100', '', '2015-08-04 10:18:38', '2016-03-02 04:48:46'),
(19, 'BE-4839', '指導學生 陳彥瑋、李幸芳、侯元忠、林孟玹、柯旻伶 參加台南市遠東科技大學「2013展場導覽與雲端科技(App)學術研討會」榮獲101學年度智慧生活跨領域基礎課程及服務學習課程推廣計畫-「應用創新科技探索智慧空間---以夜市文化為例」成果發表', '102', '102', '', '2015-08-04 10:19:11', '2016-03-02 04:49:03'),
(20, 'BE-7518', '101學年度多篇論文獲得國立成功大學社會科學院「教師研究成果獎勵要點」審核之學術論文發表補助。', '101', '101', '', '2015-08-04 10:19:58', '2015-08-04 10:19:58'),
(21, 'BE-4639', '102學年度多篇論文獲得國立成功大學社會科學院「發展國際一流大學及頂尖研究中心計畫」學術論文發表獎勵。', '102', '102', '', '2015-08-04 10:20:21', '2015-08-04 10:20:21'),
(22, 'BE-3016', '102學年度多篇論文獲得國立成功大學社會科學院「教師研究成果獎勵要點」審核之學術論文發表補助。', '102', '102', '', '2015-08-04 10:20:45', '2015-08-04 10:20:45'),
(23, 'BE-8506', '楊政達老師獲得102年度行政院國家科學委員會年輕學者「吳大猷先生紀念獎」之殊榮。', '102', '102', '', '2015-08-04 10:21:10', '2015-08-04 10:21:10'),
(24, 'BE-2273', '構型知覺與方法研討會國際研討會成功舉辦，圓滿落幕。', '103/09/28', '103/09/28', '', '2015-08-04 10:21:49', '2015-08-21 05:57:34'),
(25, 'BE-5736', '103學年度多篇論文獲得國立成功大學社會科學院「發展國際一流大學及頂尖研究中心計畫」學術論文發表獎勵。', '103', '103', '', '2015-08-04 10:22:20', '2015-08-04 10:22:20'),
(26, 'BE-8848', '歡迎林柏賓進入Vcmlab擔任研究助理', '104/02', '104/02', '', '2015-08-04 10:22:51', '2015-08-19 09:10:08'),
(27, 'BE-3559', '歡迎張旻璇進入Vcmlab擔任行政助理', '104/03', '104/03', '', '2015-08-04 10:23:47', '2015-08-19 09:11:11'),
(28, 'BE-4985', '歡迎黃科瑋進入Vcmlab擔任博士後研究員', '104/06', '104/06', '', '2015-08-04 10:24:09', '2015-08-19 09:10:59'),
(29, 'BE-3587', '楊政達教授帶領本LAB成員 如淇及婷昀前往加州參加 Mathpsy 2015 國際研討會論文發表', '104/07', '104/07', '', '2015-08-04 10:24:38', '2015-08-19 09:10:37'),
(30, 'BE-1731', '楊老師出席教育部「人文及社會科學知識跨界應用能力培育計畫(HFCC)」計畫辦公室舉辦初期座談會', '104/08/13', '104/08/13', '', '2015-08-20 06:13:40', '2015-10-07 06:58:57'),
(31, 'BE-8753', '楊政達老師榮獲2015年度十大傑出青年', '104/10/05', '104/10/05', '', '2015-10-07 06:42:07', '2016-03-02 04:49:12'),
(32, 'BE-5334', '楊政達老師參與大愛電視台的節目\"十傑之光\"', '104/10/27', '104/10/27', '', '2015-10-27 00:55:51', '2015-10-27 00:57:16'),
(33, 'BE-9672', '楊政達老師參與大愛電視台十傑專訪', '104/10/08', '104/10/08', '', '2015-10-29 09:20:25', '2015-10-29 09:20:25'),
(34, 'BE-6042', '楊政達老師十大傑出青年的五院拜會行程', '104/10/29', '104/10/29', '', '2015-10-29 09:22:46', '2015-10-29 09:22:46'),
(35, 'BE-9780', '楊政達老師及博後黃科瑋、指導學生林佩誼以\"視力無eye 眼睛檢查自己來\" 榮獲104臺綜大年輕學者創新研究獎佳作', '104/10/27', '104/10/27', '', '2015-10-29 09:23:43', '2015-11-20 05:01:13'),
(36, 'BE-8008', '\"貝式分析在序列抽樣模型的應用工作坊\"國際研討會，圓滿落幕', '104/11/14', '104/11/15', '', '2015-11-19 11:07:16', '2016-03-02 04:49:29'),
(37, 'BE-7822', '楊政達老師參與十傑頒獎典禮', '104/10/30', '104/10/30', '', '2015-11-19 11:08:30', '2015-11-19 11:08:30'),
(38, 'BE-2748', '[UX工作坊] 邀請台大心理系葉怡玉教授擔任授課講師', '104/11/21', '104/11/21', '', '2015-11-23 02:00:26', '2016-03-02 04:44:42'),
(39, 'BE-7074', '歡迎陳世杰進入Vcmlab擔任博士後研究員', '105/01/01', '105/01/01', '', '2016-01-05 03:06:46', '2016-01-05 03:07:17'),
(40, 'BE-7903', '[通識心理學]邀請中研院張仁和研究員演講', '105/01/05', '105/01/05', '', '2016-01-05 03:10:53', '2016-03-02 04:44:28'),
(41, 'BE-9620', '認知科技與設計成末成果發表會', '105/01/08', '105/01/08', '', '2016-01-05 03:11:36', '2016-01-05 03:11:36'),
(42, 'BE-6297', '楊老師前往澳洲墨爾本大學心理學系擔任客座訪問教授', '105/01/14', '105/02/11', '', '2016-02-17 04:19:50', '2016-02-17 04:19:50'),
(43, 'BE-7759', '楊政達老師在國立成功大學頂尖學術研究「永續藍海 熠星賞評」年度成果展 接受表揚', '105/02/23', '105/02/23', '', '2016-02-23 07:02:23', '2016-03-02 04:37:30'),
(44, 'BE-2499', '恭賀 楊政達教授指導學生-張麒威同學參加103學年度天使金創業等計畫，榮獲20萬元獎金!', '103', '103', '', '2016-03-02 05:05:34', '2016-03-02 05:05:34'),
(45, 'BE-6124', '楊政達老師至佳音電台接受專訪', '105/03/24', '105/03/24', '', '2016-03-28 07:01:07', '2016-03-28 07:01:07'),
(47, 'BE-3618', '楊政達老師 榮獲 \"中央研究院年輕學者研究著作獎\"', '105/06/02', '105/06/02', '', '2016-06-02 07:29:27', '2016-06-02 07:30:46'),
(48, 'BE-6965', '指導學生游如淇 申請上 UT Dallas 的Cognition and Neuroscience博士班', '104/08', '104/08', '', '2016-06-02 10:19:07', '2016-06-02 10:19:07'),
(49, 'BE-7654', '指導學生張婷昀 即將進入Vanderbilt University(US) Psychological Sciences博士班就讀', '105/06/22', '105/06/22', '', '2016-06-22 06:36:52', '2016-12-07 07:22:28'),
(50, 'BE-8747', '受邀擔任', '105/07', '105/07', '', '2016-07-12 07:58:41', '2016-12-07 07:22:44'),
(51, 'BE-2790', '楊政達教授前往美國New Brunswick參加 Mathpsy 2016 國際研討會論文發表', '105/08', '105/8', '', '2016-08-08 11:15:02', '2016-10-27 08:07:20'),
(52, 'BE-9171', '2016台灣心理學年會邀請美國哈佛醫學院Jeremy M. Wolfe演講', '105/10/15', '105/10/16', '', '2016-10-27 08:06:30', '2016-11-01 09:32:14'),
(53, 'BE-6431', '實驗室學生林佩誼以口頭形式發表於台灣心理學年會暨學術研討會。題目:主觀預期效用在知覺決策架構選擇所扮演的角色', '105/10/15', '105/10/15', '', '2016-11-01 09:54:56', '2016-12-07 07:23:17'),
(54, 'BE-8344', '實驗室助理林柏賓以口頭形式發表於台灣心理學年會暨學術研討會、以海報形式發表於2016年科技部心智科學腦影像研究計畫成果發表會。題目:特徵選擇的神經機制', '105/10/15', '105/10/15', '', '2016-11-01 09:58:31', '2016-12-07 07:23:26'),
(55, 'BE-1238', '博後陳世杰以口頭形式發表於台灣心理學年會暨學術研討會。題目:Visual word processing efficiency for Chinese characters and English words', '105/10/15', '105/10/15', '', '2016-11-01 10:01:33', '2016-12-07 07:24:23'),
(56, 'BE-2310', '協辦2016第二屆臺灣記憶運動錦標賽南區賽', '105/09/10', '105/09/10', '', '2016-11-01 10:05:06', '2016-12-07 07:23:48'),
(59, 'BE-3265', '楊政達教授前往美國Boston 參加第57屆Psychonomic Society國際會議，發表研究論文', '105/11/17', '105/11/17', '', '2016-11-22 02:52:40', '2016-12-07 07:25:06'),
(60, 'BE-9473', '楊政達老師應成大教務處教學發展中心之邀請發表演講，主題：跟著老師動次動', '105/12/07', '105/10/15', '', '2016-12-07 07:19:07', '2016-12-07 07:24:07'),
(61, 'BE-2882', '楊政達老師榮升教授', '105/12/21', '105/12/21', '', '2016-12-21 09:59:53', '2016-12-21 09:59:53'),
(62, 'BE-5755', '近百年歷史成大歷史文物館換裝啟用,楊老師和中文系高美華老師將率領修課學生進行開幕演出', '106/01/04', '106/01/04', '', '2017-01-06 04:08:38', '2017-04-28 07:48:17'),
(63, 'BE-9408', '成功大學推廣教育中心邀請楊老師演講-樂齡大學:簡介大腦與認知科學', '106/04/11', '106/04/11', '', '2017-04-12 03:34:05', '2017-04-12 03:34:05'),
(64, 'BE-3721', '楊老師與Daniel Little, Nicholas Altieri, Mario Fific 合著書Systems Factorial Technology 出版', '106/04/13', '106/04/13', '', '2017-04-14 03:52:51', '2017-04-28 07:44:36'),
(65, 'BE-5611', '楊老師投稿文章\"打造東方矽文明：楊政達》閱讀教育扎文創的根\"刊出在中國時報時論廣場', '106/04/23', '106/04/23', '', '2017-04-26 07:55:35', '2017-04-26 07:55:35'),
(66, 'BE-7477', '「體驗劇場」與「古典戲曲評賞」課程課程期末展演由修課學生、鑽研崑曲多年的楊政達老師、高美華老師以及專業的崑劇團隊共同演出\"玉簪記\"', '106/06/10', '106/06/10', '', '2017-06-08 08:38:54', '2017-06-13 05:20:35'),
(67, 'BE-9664', '恭喜 專題生 黃軍元獲得科技部大專生專題計劃補助', '106/06/12', '106/06/12', '', '2017-06-12 09:38:23', '2017-06-13 03:35:21'),
(69, 'BE-8145', '「體驗劇場」與「古典戲曲評賞」課程與芒果遊戲工作室以玉簪記為背景，共同製作大型實境解謎遊戲活動成功', '106/06/11', '106/06/11', '', '2017-06-13 05:17:07', '2017-06-13 05:17:07');

-- --------------------------------------------------------

--
-- 資料表結構 `lab_member`
--
-- 建立時間: 2017 年 09 月 16 日 10:39
--

CREATE TABLE `lab_member` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1. 博士後研究員; 2.研究助理; 3.研究生; 4.歷任博士後; 5.歷任助理',
  `status` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `lab_member`
--

INSERT INTO `lab_member` (`id`, `cname`, `ename`, `email`, `type`, `status`, `photo`, `create_time`, `update_time`) VALUES
(1, '陳世杰', 'Chen,Shih-Chieh', 'jaychen1116@gmail.com', 1, 1, 'a22fb5b4d769386feae597814179fddb.jpg', '2017-09-16 09:11:08', '2017-09-17 03:34:20'),
(2, '張旻璇', '', 'z10403034@email.ncku.edu.tw', 2, 1, 'd25813fc938d5f088f175bcbe0f4c931.jpg', '2017-09-16 10:41:11', '0000-00-00 00:00:00'),
(3, '林柏賓', '', 'amonre1008@gmail.com', 2, 1, 'f2c799af4a72dfab5a397691cedbc466.jpg', '2017-09-16 10:41:36', '0000-00-00 00:00:00'),
(4, '林佩誼', '', 'py820524@gmail.com', 3, 1, '8a3bc6613aa4f1e311f483ff66d3dabd.jpg', '2017-09-16 10:42:28', '0000-00-00 00:00:00'),
(5, '尚林霖', '', 'shangLL@outlook.com', 3, 1, '3b068e13a0643b261e1e0a7002490672.jpg', '2017-09-16 10:43:17', '0000-00-00 00:00:00'),
(6, '黃科瑋', '', 'elone530@gmail.com', 4, 1, '2f7290951545bb1aca429165485f655c.jpg', '2017-09-16 10:43:54', '0000-00-00 00:00:00'),
(7, '鍾佩儒', '', 'chung.mis@gmail.com', 5, 1, 'd8c1cb06052740903b492af5b8c3231f.jpg', '2017-09-16 10:44:12', '0000-00-00 00:00:00'),
(8, '張婷昀', '', 'heart1991616@gmail.com', 5, 1, '0fcff290c2a587c18b8b76873225f871.jpg', '2017-09-16 10:44:31', '0000-00-00 00:00:00'),
(9, '蘇曜祥', '', 'yaosiang@me.com', 5, 1, 'd9d8972323358c9a31d7bcd53a2b1ce6.jpg', '2017-09-16 10:44:51', '0000-00-00 00:00:00'),
(10, '徐翊城', '', 'zeusword@gmail.com', 5, 1, '343886d4bbfbb3cdba1fda032556e15c.jpg', '2017-09-16 10:45:08', '0000-00-00 00:00:00'),
(11, '劉彥宏', '', 'frog760715@gmail.com', 5, 1, 'bfbe6684c0d3bbe18de59a149c252d80.jpg', '2017-09-16 10:45:27', '0000-00-00 00:00:00'),
(12, '蔣蕙如', '', 'imanita95@gmail.com', 5, 1, '98d161f3d9e459db11c5c02686bb5214.jpg', '2017-09-16 10:45:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `paper_list`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `paper_list` (
  `No` int(11) NOT NULL,
  `Id` text NOT NULL,
  `content` longtext NOT NULL,
  `class` text NOT NULL,
  `sort` int(11) NOT NULL,
  `url` text NOT NULL,
  `createTime` datetime NOT NULL,
  `editTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `paper_list`
--

INSERT INTO `paper_list` (`No`, `Id`, `content`, `class`, `sort`, `url`, `createTime`, `editTime`) VALUES
(2, 'P-48892', 'Yu, J.-C., Chang, T.-Y., & Yang, C.-T.* (2014.Dec). Individual differences in working memory capacity and workload capacity. Frontiers in Psychology. 5:1465. doi: 10.3389/fpsyg.2014.01465', 'Journal Article', 12, 'https://drive.google.com/open?id=0B9D4n8sa2MQkak96aDJ1MmVBd00', '2015-07-04 11:33:10', '2017-09-14 03:25:45'),
(3, 'P-85733', 'Yu, J.-C., Chang, T.-Y., & Yang, C.-T.* (2014.Sep). Working memory capacity predicts workload capacity, Visual Cognition, 22(8), 1046-1049.', 'Journal Article', 14, 'https://drive.google.com/file/d/0B9D4n8sa2MQkZmZuV2RNNC1HZG8/view?usp=sharing', '2015-07-04 11:33:31', '2017-09-14 03:25:45'),
(6, 'P-16043', 'Chang, T.-Y., & Yang, C.-T.* (2014.Nov). Individual Differences in Zhong-Yong Tendency and Processing Capacity. Frontiers in Psychology. 5:1316. doi: 10.3389/fpsyg.2014.01316.', 'Journal Article', 13, 'https://drive.google.com/file/d/0B9D4n8sa2MQkeTVpWjhLX2ZHZ2M/view', '2015-07-04 11:43:27', '2017-09-14 03:25:45'),
(7, 'P-93935', 'Yang, C.-T.*, Little, D. R., & Hsu, C.-C. (2014.Jun). The influence of cueing on attentional focus in perceptual decision making. Attention, Perception, & Psychophysics, 76(8), 2256-2275.', 'Journal Article', 15, 'https://drive.google.com/file/d/0B9D4n8sa2MQkOVB2Smt3Y0F2MFk/view?usp=sharing', '2015-07-04 11:46:33', '2017-09-14 03:25:45'),
(8, 'P-96261', 'Yu, J.-C., Chang, T.-Y., & Yang, C.-T.* (2014.Nov). Working memory capacity predicts workload capacity. Paper presented at the 22nd Annual Meeting of Object Perception, Attention, and Memory (OPAM), Long Beach, California.', 'Conference Paper', 13, '', '2015-07-04 12:06:01', '2017-07-18 08:09:32'),
(9, 'P-19252', 'Yang, C.-T.*, Chang, T.-Y., & Daniel R.-L. (2014.Nov). The dynamic changes of the processing architecture in cued detection. Poster presented at the 55th Annual Meeting of Psychonomic Society, Long Beach, California.', 'Conference Paper', 17, '', '2015-07-04 12:06:27', '2017-07-18 08:09:32'),
(10, 'P-61103', 'Chang, T.-Y., & Yang, C.-T.* (2014.Jul). Median thinking style predicts the individual differences in processing capacity. Poster presented at the 47th Annual Meeting of the Society for Mathematical Psychology, Quebec, Canada.', 'Conference Paper', 15, '', '2015-07-04 12:06:51', '2017-07-18 08:09:32'),
(11, 'P-36933', 'Yang, C.-T.*, & Chang, T.-Y. (2014.Jul). The dynamic changes of the processing architecture in cued detection. Paper presented at the 47th Annual Meeting of the Society for Mathematical Psychology, Quebec, Canada.', 'Conference Paper', 14, '', '2015-07-04 12:07:05', '2017-07-18 08:09:32'),
(12, 'P-38546', 'Wu, C.-H.*, Yang, C.-T., & Huang, L.-N. (2014.Jan). On the predictive effect of multidimensional importance-weighted quality of life scores on overall subjective well-being. Social Indicators Research, 115(3), 933-943.', 'Journal Article', 16, 'https://drive.google.com/file/d/0B9D4n8sa2MQkSVVBbnFtUTBKMjA/view?usp=sharing', '2015-07-08 11:05:03', '2017-09-14 03:25:45'),
(13, 'P-56007', 'Yeh, Y.-Y.*, Chao, H.-F., Huang, Y.-M., Kuo, B.-C., Yang, C.-T., Kuo, C.-Y., & Lin,S.-H. (2013.Sep). The roles of representations in selection. Chinese Journal of Psychology, 55(3), 319-342', 'Journal Article', 17, 'https://drive.google.com/file/d/0B9D4n8sa2MQkamNNdW5Qbmt0X0k/view?usp=sharing', '2015-07-08 11:06:22', '2017-09-14 03:25:45'),
(14, 'P-70578', 'Yang, C.-T.*, Hsu, C.-C., Huang, Y.-M., & Tsai, Y.-C. (2013.Mar). Examining the effect of perceptual saliency on the liking judgment. Chinese Journal of Psycho logy, 55(1), 139-158.', 'Journal Article', 18, 'https://drive.google.com/file/d/0B9D4n8sa2MQkQW90Y0NmS3dBN1U/view?usp=sharing', '2015-07-08 11:06:44', '2017-09-14 03:25:45'),
(15, 'P-63229', 'Yang, C.-T.*, Chang, T.-Y., & Wu, C.-J. (2013.Oct). Relative change probability affects the decision process of detecting multiple feature changes. Journal of Experimental Psychology: Human Perception and Performance, 39(5), 1365-1385. ', 'Journal Article', 19, 'https://drive.google.com/file/d/0B9D4n8sa2MQkU1EtcVFyVUVPNDg/view?usp=sharing', '2015-07-08 11:07:04', '2017-09-14 03:25:45'),
(16, 'P-762210', 'Yang, C.-T.*, Tseng, P., Huang, K.-Y., & Yeh, Y.-Y.* (2012.Sep). Prepared or not repared: Top-down modulation on memory of features and feature bindings. Acta Psychologica, 141(3), 327-335.', 'Journal Article', 20, 'https://drive.google.com/file/d/0B9D4n8sa2MQkLXltb2JYdWlHVVE/view?usp=sharing', '2015-07-08 11:07:21', '2017-09-14 03:25:45'),
(17, 'P-885711', 'Yang, C.-T.*, Chiu, Y.-C., & Yeh, Y.-Y. (2012.Oct). Feature saliency affects delayed matching of an attended feature. Journal of Cognitive Psychology, 24(6), 714-726.', 'Journal Article', 21, 'https://drive.google.com/file/d/0B9D4n8sa2MQkTlhfTl8tU3RsQWs/view?usp=sharing', '2015-07-08 11:07:37', '2017-09-14 03:25:45'),
(18, 'P-705312', 'Teng, W.-G.*, Chang, P.-L., & Yang, C.-T. (2012.Sep). Adaptive and efficient color quantization based on a growing Self-Organizing Map. IET Image Processing, 6(5), 463-472. ', 'Journal Article', 22, 'https://drive.google.com/file/d/0B9D4n8sa2MQkWDB3WlVTWllEQUk/view?usp=sharing', '2015-07-08 11:07:52', '2017-09-14 03:25:45'),
(19, 'P-621013', 'Wu, C.-H.*, & Yang, C.-T. (2012.Sep). Attachment and exploration in adulthood: The mediation effect of social support. International Journal of Psychology, 47, 346-354.', 'Journal Article', 23, 'https://drive.google.com/file/d/0B9D4n8sa2MQkelZqY3Bvelo4Q00/view?usp=sharing', '2015-07-08 11:08:24', '2017-09-14 03:25:45'),
(20, 'P-387914', 'Tsai, Y.-C., & Yang, C.-T.* (2012.Jun). The effect of perceptual load on the processing of a distracting schematic face. Chinese Journal of Psychology, 54, 253-267.', 'Journal Article', 24, 'https://drive.google.com/file/d/0B9D4n8sa2MQkZjJodVNrdm1OdnM/view?usp=sharing', '2015-07-08 11:08:38', '2017-09-14 03:25:45'),
(21, 'P-636215', 'Yang, C.-T.*, Hsu, Y.-F., Huang, H.-Y., & Yeh, Y.-Y. (2011.Sep). Relative salience affects the process of detecting changes in orientation and luminance. Acta Psychologica, 138(3), 377-389.', 'Journal Article', 25, 'https://drive.google.com/file/d/0B9D4n8sa2MQkbVdhWTNhQWZMeVE/view?usp=sharing', '2015-07-08 11:08:56', '2017-09-14 03:25:45'),
(22, 'P-666216', 'Yang, C.-T.* (2011.Jul). Relative saliency in change signals affects perceptual comparison and decision processes in change detection. Journal of Experimental Psychology: Human Perception and Performance, 37(6), 1708–1728.', 'Journal Article', 26, 'https://drive.google.com/file/d/0B9D4n8sa2MQkQjl1aFhLUDUzTjQ/view?usp=sharing', '2015-07-08 11:09:13', '2017-09-14 03:25:45'),
(23, 'P-965917', 'Yang, C.-T., Chang, W.-S., Cheng, F.-N., & Teng, W.-G.* (2011.Jun). Gaze-based feedback in assessing media relevance. Journal of Computers, 22(2), 23-32.', 'Journal Article', 27, 'https://drive.google.com/file/d/0B9D4n8sa2MQkTWphU1M0Yk52U0k/view?usp=sharing', '2015-07-08 11:09:54', '2017-09-14 03:25:45'),
(24, 'P-805018', 'Tseng, Y.-C, Yang, C.-T., & Yeh, Y.-Y* (2010.Aug). Dual processes in the recognition of objects in visual working memory. Journal of Vision, 10(7), 772-772.', 'Journal Article', 28, 'http://jov.arvojournals.org/Article.aspx?articleid=2138904', '2015-07-08 11:10:36', '2017-09-14 03:25:45'),
(25, 'P-941119', 'Chu, C.-F, Cheng, M., Cheb, C.-C, Yang, C.-T., Yeh, Y.-Y* (2009.Aug). Object identification in scene background of different spatial frequencies. Journal of Vision, 9(8), 808-808.', 'Journal Article', 29, 'http://jov.arvojournals.org/article.aspx?articleid=2136268', '2015-07-08 11:10:49', '2017-09-14 03:25:45'),
(26, 'P-427020', 'Yang, C.-T., Shih, C.-H. Cheng, M., & Yeh, Y.-Y.* (2009.Jan). Similarity modulates the face-capturing effect in change detection. Visual Cognition, 17, 484-499. ', 'Journal Article', 30, 'https://drive.google.com/file/d/0B9D4n8sa2MQkdnc0UTNJZ2pORUk/view?usp=sharing', '2015-07-08 11:11:08', '2017-09-14 03:25:45'),
(27, 'P-154421', 'Yeh, Y.-Y.*, & Yang, C.-T. (2009.Dec). Is a pre-change object representation weakened under correct detection of a change? Conscious & Cognition, 18, 91-102. ', 'Journal Article', 31, 'https://drive.google.com/file/d/0B9D4n8sa2MQkMjh4aHltRnBQY2M/view?usp=sharing', '2015-07-08 11:11:25', '2017-09-14 03:25:45'),
(28, 'P-798022', 'Yang, C.-T., & Yeh, Y.-Y.* (2009.Dec). Memory error in recognizing a pre-change object. Psychological Research, 73, 75-88. ', 'Journal Article', 32, 'https://drive.google.com/file/d/0B9D4n8sa2MQkYlJ6U0lVT1gzWnc/view?usp=sharing', '2015-07-08 11:11:42', '2017-09-14 03:25:45'),
(29, 'P-728623', 'Yao, G.*, Wu, C.-H., & Yang, C.-T. (2008.Apr). Examining the content validity of the WHOQOL-BREF from respondents’ perspective by quantitative methods. Social Indicators Research, 85, 483-498', 'Journal Article', 33, 'https://drive.google.com/file/d/0B9D4n8sa2MQkWlMzM2F6dEltS0U/view?usp=sharing', '2015-07-08 11:12:00', '2017-09-14 03:25:45'),
(30, 'P-431824', 'Yeh, Y.-Y.*, & Yang, C.-T. (2008.Mar). Object memory and change detection: Dissociation as a function of visual and conceptual similarity. Acta Psychologica, 127, 114-128.', 'Journal Article', 34, 'https://drive.google.com/file/d/0B9D4n8sa2MQkb0JObDNhbkdIQ1E/view?usp=sharing', '2015-07-08 11:12:16', '2017-09-14 03:25:45'),
(31, 'P-548025', 'Yeh, Y.-Y.*, Yang, C.-T., & Chiu, Y.-C. (2005.Jul). Binding or prioritization: The role of selective attention in visual Short-Term Memory. Visual Cognition, 12, 759 - 799', 'Journal Article', 35, 'https://drive.google.com/file/d/0B9D4n8sa2MQkQVVlRXRXQ01oUXM/view?usp=sharing', '2015-07-08 11:12:30', '2017-09-14 03:25:45'),
(32, 'P-21435', 'Yu, J.-C., Chang, T.-Y., & Yang, C.-T.* (2014.Jul). Individual differences in working memory capacity and workload capacity. Paper presented at the 47th Annual Meeting of the Society for Mathematical Psychology, Quebec, Canada.', 'Conference Paper', 16, '', '2015-07-08 11:13:52', '2017-07-18 08:09:32'),
(33, 'P-29116', '陳彥瑋、李幸芳、侯元忠、林孟玹、柯旻伶、楊政達*（民102年5月）。應用創新科技探索智慧空間---以夜市文化為例。萬金生（主持人），2013展場導覽與雲端科技(App)學術研討會發，台南市遠東科技大學。', 'Conference Paper', 18, '', '2015-07-08 11:14:05', '2017-07-18 08:09:32'),
(34, 'P-58137', 'Yu, J.-C., & Yang, C.-T.* (2013.Nov). Salient task-irrelevant features interfere with perception of an attended feature. Poster presented at the 21st meeting of Object, Perception, Attention, and Memory (OPAM), Toronto, Canada.', 'Conference Paper', 19, '', '2015-07-08 11:14:21', '2017-07-18 08:09:32'),
(35, 'P-70718', 'Yang, C.-T.*, & Chang, T.-Y. (2013.Nov). Selective attention modulates the effect of contingencies on processing redundant targets. Poster presented at the 54th meeting of Psychonomic Society, Toronto, Canada.', 'Conference Paper', 20, '', '2015-07-08 11:14:35', '2017-07-18 08:09:32'),
(36, 'P-40929', 'Chang, T.-Y., & Yang, C.-T.* (2013.Nov). Selective attention modulates the effect of contingencies on the perceptual decision process. Poster presented at the 21st meeting of Object, Perception, Attention, and Memory (OPAM), Toronto, Canada.', 'Conference Paper', 22, '', '2015-07-08 11:14:55', '2017-07-18 08:09:32'),
(37, 'P-291410', 'Yang, C.-T.*, & Chang, T.-Y. (2013.Aug).Selective attention modulates the effect of contingencies on the perceptual decision process. Paper presented at the 46th Annual Meeting of the Society for Mathematical Psychology, Germany, Potsdam.', 'Conference Paper', 21, '', '2015-07-08 11:15:20', '2017-07-18 08:09:32'),
(38, 'P-750611', 'Yang, C.-T.*, & Hu, Y. (2012.Nov). Examining the effect of payoffs on stimulus detection in a redundant-target detection task. Poster presented at the 53rd meeting of Psychonomic Society, Minneapolis, Minnesota.', 'Conference Paper', 23, '', '2015-07-08 11:15:35', '2017-07-18 08:09:32'),
(39, 'P-988812', 'Chang, T.-Y., Wu, C.-J., & Yang, C.-T.* (2012.Oct). Relative change probability affects the decision process of detecting multiple feature-changes. Paper presented at the 51st Annual Meeting of Taiwanese Psychological Association, Taichung, Taiwan.', 'Conference Paper', 24, '', '2015-07-08 11:15:47', '2017-07-18 08:09:32'),
(40, 'P-488613', 'Yang, C.-T.*, & Hu, Y. (2012.Jul). Examining the effect of payoffs on stimulus detection in a redundant-target detection task. Paper presented at the 45th Annual Meeting of the Society for Mathematical Psychology, Columbus, Ohio.', 'Conference Paper', 25, '', '2015-07-08 11:16:00', '2017-07-18 08:09:32'),
(41, 'P-804814', 'Hsu, C.-C., & Yang, C.-T.* (2012.Jul). Top-down control modulates the effect of exogenous attention on the process of detecting the redundant targets. Paper presented at the 45th Annual Meeting of the Society for Mathematical Psychology, Columbus, Ohio.', 'Conference Paper', 26, '', '2015-07-08 11:16:13', '2017-07-18 08:09:32'),
(42, 'P-655815', 'Yu, J.-C., & Yang, C.-T.* (2011.Nov). False recognition of a pre-change object is position dependent. Poster presented at the 19th meeting of Object, Perception, Attention, and Memory (OPAM), Seattle, WA.', 'Conference Paper', 27, '', '2015-07-08 11:16:25', '2017-07-18 08:09:32'),
(43, 'P-499016', 'Chang, -T.-Y., & Yang, C.-T.* (2011.Nov). The effect of perceptual load on the processing of a distracting schematic face. Poster presented at the 19th meeting of Object, Perception, Attention, and Memory (OPAM), Seattle, WA.', 'Conference Paper', 28, '', '2015-07-08 11:16:40', '2017-07-18 08:09:32'),
(44, 'P-530517', 'Yang, C.-T.* (2011.Nov). Relative change probability affects the decision process of detecting multiple feature changes. Paper presented at the 52nd Annual Meeting of Psychonomic Society, Seattle, WA.', 'Conference Paper', 29, '', '2015-07-08 11:17:05', '2017-07-18 08:09:32'),
(45, 'P-190918', 'Yang, C.-T.* (2011.Oct). Relative change probability affects the decision process of detecting multiple feature changes. Poster presented at the 50th Annual Meeting of Taiwanese Psychological Association, Taichung, Taiwan.', 'Conference Paper', 30, '', '2015-07-08 11:17:18', '2017-07-18 08:09:32'),
(46, 'P-322819', 'Wu, Y.-J., & Yang, C.-T.* (2011.Oct). Revisiting the whole-display superiority in change detection. Poster presented at the 50th Annual Meeting of Taiwanese Psychological Association, Taichung, Taiwan.', 'Conference Paper', 31, '', '2015-07-08 11:17:33', '2017-07-18 08:09:32'),
(47, 'P-415720', 'Yang, C.-T.* (2011.Jul). Relative change probability affects the decision process of detecting multiple feature changes. Paper presented at the 44th Annual Meeting of the Society for Mathematical Psychology, Boston, MA.', 'Conference Paper', 32, '', '2015-07-08 11:17:52', '2017-07-18 08:09:32'),
(48, 'P-826521', 'Chang, W.-S., Wu, Y.-J., &Yang, C.-T.* (2011.Jul). The decision process of detecting changes in first- and second-order orientations. Paper presented at the 44th Annual Meeting of the Society for Mathematical Psychology, Boston, MA.', 'Conference Paper', 33, '', '2015-07-08 13:56:25', '2017-07-18 08:09:32'),
(49, 'P-942322', 'Pan, J., Tsai, Y.-C., &Yang, C.-T.* (2011.Jul). Revisiting visual-auditory integration in a redundant target detection task. Paper presented at the 44th Annual Meeting of the Society for Mathematical Psychology, Boston, MA.', 'Conference Paper', 34, '', '2015-07-08 13:57:23', '2017-07-18 08:09:32'),
(50, 'P-756223', 'Yang, C.-T.*, Cheng, F.-N., & Teng, W.-G. (2011.Jul), Assessing media relevance via eye tracking. Paper presented at the 1st International Workshop on Mobile Social Networks, Kaohsiung, Taiwan.', 'Conference Paper', 35, '', '2015-07-08 13:57:40', '2017-07-18 08:09:32'),
(51, 'P-697224', 'Yang, C.-T.*, & Yeh, Y.-Y. (2010.Nov). Relative salience in change signals affects decision strategy in change detection. Poster presented at the 51st Annual Meeting of the Psychonomic Society, St. Louis, Missouri.', 'Conference Paper', 36, '', '2015-07-08 13:58:01', '2017-07-18 08:09:32'),
(52, 'P-342225', 'Tsai, Y.-C., & Yang, C.-T.* (2010.Nov). The effect of perceptual distinctiveness on affective judgment. Poster presented at the 18th meeting of Object, Perception, Attention, and Memory (OPAM), St. Louis, Missouri.', 'Conference Paper', 37, '', '2015-07-08 13:58:22', '2017-07-18 08:09:32'),
(53, 'P-747026', 'Wu, C.-J., & Yang, C.-T.* (2010.Nov). The role of saliency in real world at different time courses. Poster presented at the 18th meeting of Object, Perception, Attention, and Memory (OPAM), St. Louis, Missouri.', 'Conference Paper', 38, '', '2015-07-08 13:58:39', '2017-07-18 08:09:32'),
(54, 'P-917127', 'Liu, Y.-C., & Yang, C.-T.* (2010.Nov). The effect of strategic control on detecting change. Poster presented at the 18th meeting of Object, Perception, Attention, and Memory (OPAM), St. Louis, Missouri.', 'Conference Paper', 39, '', '2015-07-08 13:58:57', '2017-07-18 08:09:32'),
(55, 'P-345728', 'Tsai, Y.-C., & Yang, C.-T.* (2010.Nov). The effect of perceptual distinctiveness on affective judgment. Poster presented at the 49th Annual Meeting of Taiwanese Psychological Association, Chiayi, Taiwan.', 'Conference Paper', 40, '', '2015-07-08 13:59:11', '2017-07-18 08:09:32'),
(56, 'P-471029', 'Wu, C.-J., & Yang, C.-T.* (2010.Nov). The role of saliency in real world at different time courses. Poster presented at the 49th Annual Meeting of Taiwanese Psychological Association, Chiayi, Taiwan.', 'Conference Paper', 41, '', '2015-07-08 13:59:27', '2017-07-18 08:09:32'),
(57, 'P-545530', 'Liu, Y.-C., & Yang, C.-T.* (2010.Nov). The effect of strategic control on detecting change. Poster presented at the 49th Annual Meeting of Taiwanese Psychological Association, Chiayi, Taiwan.', 'Conference Paper', 42, '', '2015-07-08 13:59:46', '2017-07-18 08:09:32'),
(58, 'P-340331', 'Yang, C.-T.* (2010.Nov). Relative Salience of Change Signals Affects Decision Strategy in Change Detection. Paper presented at the 49th Annual Meeting of Taiwanese Psychological Association, Chiayi, Taiwan.', 'Conference Paper', 43, '', '2015-07-08 14:00:03', '2017-07-18 08:09:32'),
(59, 'P-312532', 'Yeh, Y.-Y.*, Chen. Y.-H., & Yang, C.-T. (2009.Nov). Target-distractor competition influences the compatibility effect under low perceptual load. Paper presented at the 50th Annual Meeting of the Psychonomic Society, Boston, MA.', 'Conference Paper', 44, '', '2015-07-08 14:00:23', '2017-07-18 08:09:32'),
(60, 'P-677833', 'Yang, C.-T.*, Hsu, Y.-F. & Yeh, Y.-Y. (2009.Nov). Detecting changes in a multi-element display. Poster presented at the 50th Annual Meeting of the Psychonomic Society, Boston, MA.', 'Conference Paper', 45, '', '2015-07-08 14:00:39', '2017-07-18 08:09:32'),
(61, 'P-414634', 'Tseng, Y.-C., Yang, C.-T., & Yeh, Y.-Y.* (2009.Nov). Dual processes in recognition memory of a pre-change object. Poster presented at the 17th meeting of Object, Perception, Attention, and Memory (OPAM), Boston, MA.', 'Conference Paper', 46, '', '2015-07-08 14:00:53', '2017-07-18 08:09:32'),
(62, 'P-261435', 'Chiu, P.-T., Liao, Y.-W., Yang, C.-T., & Yeh, Y.-Y.* (2009.Nov). Strategic control through speed grouping in multiple object tracking. Poster presented at the 17th meeting of Object, Perception, Attention, and Memory (OPAM), Boston, MA. ', 'Conference Paper', 47, '', '2015-07-08 14:01:24', '2017-07-18 08:09:32'),
(63, 'P-192636', 'Yang, C.-T.*, Hsu, Y.-F. & Yeh, Y.-Y. (2009.Oct). Detecting changes in a multi-element display. Poster presented at the 48th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 48, '', '2015-07-08 14:01:43', '2017-07-18 08:09:32'),
(64, 'P-275737', 'Huang, K.-Y., Yang, C.-T., & Yeh, Y.-Y.* (2009.Oct). The cuing benefit on change detection relies on effective top-down control. Poster presented at the 48th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 49, '', '2015-07-08 14:02:02', '2017-07-18 08:09:32'),
(65, 'P-432838', 'Tseng, Y.-C., Yang, C.-T., & Yeh, Y.-Y.* (2009.Oct). Dual processes in recognition memory of a pre-change object. Poster presented at the 48th Annual Meeting of Taiwanese Psychological Association, Taipei Taiwan.', 'Conference Paper', 50, '', '2015-07-08 14:02:18', '2017-07-18 08:09:32'),
(66, 'P-421339', 'Chiu, P.-T., Liao, Y.-W., Yang, C.-T., & Yeh, Y.-Y.* (2009.Oct). Strategic control through speed grouping in multiple object tracking. Poster presented at the 48th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 51, '', '2015-07-08 14:02:36', '2017-07-18 08:09:32'),
(67, 'P-514440', 'Lee, S.-M., Yang, C.-T., & Yeh, Y.-Y.* (2009.Oct). The iconic memory decay rates vary as a function of types of attentional cuing. Poster presented at the 48th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 52, '', '2015-07-08 14:03:06', '2017-07-18 08:09:32'),
(68, 'P-378841', 'Chu, C.-F., Cheng, M., Chen, C.-C., Yang, C.-T. & Yeh, Y.-Y.* (2009.May). Object identification in scene background of different spatial frequencies. Poster presented at the 9th Annual Meeting of Vision Sciences Society (VSS), Naples, Florida.', 'Conference Paper', 53, '', '2015-07-08 14:03:24', '2017-07-18 08:09:32'),
(69, 'P-248642', 'Yang, C.-T.*, Hsu, Y.-F., & Yeh, Y.-Y. (2008.Nov). Detecting changes in a multi-element display. Poster presented at the 16th meeting of Object, Perception, Attention, and Memory (OPAM). Chicago, Illinois.', 'Conference Paper', 54, '', '2015-07-08 14:03:44', '2017-07-18 08:09:32'),
(70, 'P-147643', 'Yang, C.-T.*, Hsu, Y.-F. & Yeh, Y.-Y. (2008.Oct). The decision process in change detection. Paper presented at the 47th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 55, '', '2015-07-08 14:04:02', '2017-07-18 08:09:32'),
(71, 'P-406344', 'Yang, C.-T.*, Hsu, Y.-F., & Yeh, Y.-Y. (2008.Jul). Detecting changes in a multi-element display. Paper presented at the 41st Annual Meeting of the Society for Mathematical Psychology, Washington, DC.', 'Conference Paper', 56, '', '2015-07-08 14:04:17', '2017-07-18 08:09:32'),
(72, 'P-855445', 'Yang, C.-T.*, Hsu, Y.-F., & Yeh, Y.-Y. (2008.Jun). The decision process in change detection. Paper presented at the meeting of the 6th Chinese Psychologist Conference, Hong-Kong.', 'Conference Paper', 57, '', '2015-07-08 14:04:31', '2017-07-18 08:09:32'),
(73, 'P-649746', 'Yang, C.-T.*, & Yeh, Y.-Y. (2007.Nov). Memory of an attended objects: Top-down and bottom-up interaction on delayed-matching of features. Poster presented at the 15th meeting of Object, Perception, Attention, and Memory (OPAM). Long beach, CA.', 'Conference Paper', 58, '', '2015-07-08 14:04:49', '2017-07-18 08:09:32'),
(74, 'P-694047', 'Yang, C.-T.*, Hsu, Y.-F. & Yeh, Y.-Y. (2007.Jul). The decision process in change detection. Paper presented at the 40th Annual Meeting of the Society for Mathematical Psychology, Costa Mesa, CA.', 'Conference Paper', 59, '', '2015-07-08 14:05:05', '2017-07-18 08:09:32'),
(75, 'P-396648', 'Yang, C.-T.*, & Yeh, Y.-Y. (2006.Nov). The relationship between change detection and memory of previously glanced objects. Poster presented at the 14th meeting of Object, Perception, Attention, and Memory (OPAM). Houston, Texas.', 'Conference Paper', 60, '', '2015-07-08 14:05:20', '2017-07-18 08:09:32'),
(76, 'P-483749', 'Yang, C.-T., Wu, C.-H., Sun., C.-L., & Yu, Y.-P.* (2006.Sep). A measurement for sport slump experience. Poster presented at the 45th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 61, '', '2015-07-08 14:05:38', '2017-07-18 08:09:32'),
(77, 'P-423950', 'Wu, C.-H., Yang, C.-T., Sun, C.-L., & Yu, Y.-P.* (2006.Sep). Preventing self-handicapping in sport by enhancing intrinsic motivation: A perspective from an angle of self determination theory. Poster presented at the 45th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 62, '', '2015-07-08 14:05:57', '2017-07-18 08:09:32'),
(78, 'P-877851', 'Yang, C.-T., Hsu, Y.-F., & Yeh, Y.-Y.* (2006.Jan). Featural memory of an attended object. Paper presented at the Workshop on Brain and Cognition. Taipei, Taiwan.', 'Conference Paper', 63, '', '2015-07-08 14:06:13', '2017-07-18 08:09:32'),
(79, 'P-455652', 'Yang, C.-T., Shih., C.-H., Siskerodir, M., & Yeh, Y.-Y.* (2005.Nov). Face detection advantage: Capture or odd-one out. Poster presented at the 13rd meeting of Object, Perception, Attention, and Memory (OPAM). Toronto, Ontario.', 'Conference Paper', 64, '', '2015-07-08 14:06:28', '2017-07-18 08:09:32'),
(80, 'P-937953', 'Yeh, Y.-Y.*, Yang, C.-T., & Hung, Y.-C. (2005.Nov). Dissociation between recognition of pre-change objects and change detection. Paper presented at the 46th Annual Meeting of Psychonomic Society. Toronto, Ontario.', 'Conference Paper', 65, '', '2015-07-08 14:06:45', '2017-07-18 08:09:32'),
(81, 'P-343354', 'Yeh, Y.-Y.*, Yang, C.-T., & Hung, Y.-C. (2005.Oct). Dissociation between recognition Of pre-change objects and change detection. Poster presented at the 44th Annual Meeting of Taiwanese Psychological Association. Taoyuan, Taiwan. ', 'Conference Paper', 66, '', '2015-07-08 14:07:01', '2017-07-18 08:09:32'),
(82, 'P-855055', 'Shih, C.- H., Yang, C.-T., Cheng, M., & Yeh, Y.-Y.* (2005.Oct). Domain specificity: Do male faces capture attention? Poster presented at the 44th Annual Meeting of Taiwanese Psychological Association, Taipei, Taiwan.', 'Conference Paper', 67, '', '2015-07-08 14:07:18', '2017-07-18 08:09:32'),
(83, 'P-209456', 'Yang, C.-T., & Yeh, Y.-Y.* (2005.Jan). Top-down and bottom-up interaction on delayed-matching of features. Poster presented at the International Conference on Attentional Control (ICAC). Chia-yi, Taiwan', 'Conference Paper', 68, '', '2015-07-08 14:07:39', '2017-07-18 08:09:32'),
(84, 'P-219057', 'Yang, C.-T., & Yeh, Y.-Y.* (2005.Jan). Perceptual memory of an object’s features. Paper presented at the Workshop on Attention and Perception. Chia-yi, Taiwan.', 'Conference Paper', 69, '', '2015-07-08 14:07:58', '2017-07-18 08:09:32'),
(85, 'P-825958', 'Yang, C.-T., & Yeh, Y.-Y.* (2004.Aug). Perceptual memory of an object’s features. Poster presented at the 28th International Congress of Psychology (ICP). Beijing, China.', 'Conference Paper', 70, '', '2015-07-08 14:08:17', '2017-07-18 08:09:32'),
(86, 'P-439359', 'Wu, C.-H., Yang, C.-T., & Yao, K.-P. G.* (2003.Nov).The relationships between self-clarity and quality of life. Poster presented at the Annual Meeting of the International Society for Quality of Life Research (ISOQOL), Praque, Czech Republic', 'Conference Paper', 71, '', '2015-07-08 14:08:31', '2017-07-18 08:09:32'),
(87, 'P-770160', 'Yeh, Y.-Y.*, & Yang, C.-T. (2003.Nov). The role of visual attention in visual short-term memory. Poster presented at the 44th Annual Meeting of Psychonomic Society, Vancouver, B.C., Canada.', 'Conference Paper', 72, '', '2015-07-08 14:08:45', '2017-07-18 08:09:32'),
(88, 'P-299561', 'Yang, C.-T., Lin, S.-H., Shih, C.-H., & Yeh, Y.-Y.* (2003.Oct). The effect of perceptual and conceptual similarity on detecting changes. Poster presented at the 42nd Annual Meeting of Chinese Psychological Society. Taipei, Taiwan.', 'Conference Paper', 73, '', '2015-07-08 14:08:58', '2017-07-18 08:09:32'),
(89, 'P-558262', 'Yang, C.-T., Chiu, Y.-C., & Yeh, Y.-Y.* (2002.Oct) Cueing effect on detecting changes in visual working memory. Poster presented at the 41st Annual Meeting of Chinese Psychological Society, Tainan, Taiwan.', 'Conference Paper', 74, '', '2015-07-08 14:09:16', '2017-07-18 08:09:32'),
(90, 'P-77741', 'Yang, C.-T.*, Tseng, P., & Wu, Y.-J. (2015.Feb). Effect of decision load on whole -display superiority in change detection. Attention, Perception, & Psychophysics. 77(3), 749-758.', 'Journal Article', 11, 'https://drive.google.com/file/d/0B9D4n8sa2MQkMzFHTnRJeFZnSVE/view?usp=sharing', '2015-07-13 03:33:01', '2017-09-14 03:25:45'),
(91, 'P-44201', 'Yang, C.-T.*,  Yu, J.-C., & Chang, W.-S. (2016.June). Using systems factorial technology to investigate cognitive processing in redundant visual-auditory signals. Chinese Journal of Psychology.58(2), 1-20', 'Journal Article', 10, 'https://drive.google.com/file/d/0B9D4n8sa2MQkNkh1cXVTNkpNOGM/view?usp=sharing', '2015-09-03 08:08:47', '2017-09-14 03:25:45'),
(92, 'P-10021', 'Yu, J-C., Chen, D-Y., Little, D. R., & Yang, C.-T.* (2015.Jul). Feature-based attention affects the information accumulation process: An fMRI study. Paper presented at the 48th Annual Meeting of the Society for Mathematical Psychology, Newport Beach, California.', 'Conference Paper', 12, '', '2015-09-07 10:46:57', '2017-07-18 08:09:32'),
(93, 'P-33791', 'Chang, T.-Y., Yu, J-C., Little, D. R., & Yang, C.-T.* (2015.Jul). Exogenous and endogenous cues differentially influence the processing architecture during perceptual decision making. Paper presented at the 48th Annual Meeting of the Society for Mathematical Psychology, Newport Beach, California.', 'Conference Paper', 11, '', '2015-09-07 10:47:46', '2017-07-18 08:09:32'),
(94, 'P-10361', 'Yang, C.-T.*, Fific, M., & Chang, T.-Y. (2015.Jul). Systems factorial technology provides new insights on the other-race effect. Poster presented at the 48th Annual Meeting of the Society for Mathematical Psychology, Newport Beach, California.', 'Conference Paper', 10, 'https://www.google.com.tw/?gfe_rd=cr&ei=c2juVeKPONCL8AWalaNA', '2015-09-07 10:49:00', '2017-07-18 08:09:32'),
(100, 'P-71901', 'Yang, C.-T.* (2016,Mar.). Systems Factorial Technology Provides New Insights on the Perceptual Comparison and Decision Process in Change Detection. In J. W. Houpt & L. M. Blaha (Eds.), Mathematical Models of Perception and Cognition: A Festschrift for James T. Townsend. New York: Psychology Press.', 'Books', 6, 'https://books.google.com.tw/books?id=d_4yDAAAQBAJ&pg=PT3&lpg=PT3&dq=Mathematical+Models+of+Perception+and+Cognition+Volume+II&source=bl&ots=SfLKwBLk_b&sig=QzUCGlvZAhhRCu4ekvkcwh6PdDg&hl=zh-TW&sa=X&ved=0ahUKEwi4uYSXrobNAhUBHJQKHRI1AHEQ6AEIHjAA#v=onepage&q=Systems%20Factorial%20Technology%20Provides%20New%20Insights%20on%20the%20Perceptual%20Comparison%20and%20Decision%20Process%20in%20Change%20Detection&f=false', '2015-11-25 06:47:22', '2017-05-24 10:17:12'),
(101, 'P-30703', 'Yu, J.-C., Chen, D.-Y., Little, D. R., & Yang, C.-T.* (2015.Nov)  Comparing model-based and neural measures of interference from unattended dimensions using fMRI and Linear Ballistic Accumulation. Poster presented at 2015 Nckumathpsy-Bayesian method of sequential sampling model workshop, Tainan,Taiwan.', 'Conference Paper', 8, '', '2015-12-03 07:39:50', '2017-07-18 08:09:32'),
(102, 'P-65512', 'Huang, K.-W., Tung, H.-C., & Yang, C.-T.* (2015, Nov.) System factorial technology provides new insights on the processing characteristics of detection of feature singletons defined in two dimensions. Poster presented at 2015 Nckumathpsy-Bayesian method of sequential sampling model workshop, Tainan,Taiwan', 'Conference Paper', 9, '', '2015-12-03 07:40:18', '2017-07-18 08:09:32'),
(103, 'P-70471', 'Huang, K.-W., Lin,P.-P., Pei-Yi Lin, P.-I., & Yang, C.-T.* (2015.Nov) Visual word processing modulated by reading experience. Poster presented at 2015 Nckumathpsy-Bayesian method of sequential sampling model workshop, Tainan,Taiwan.', 'Conference Paper', 7, '', '2015-12-03 07:40:36', '2017-07-18 08:09:32'),
(104, 'P-14141', 'Little, D. R.*, Eidels, A., Houpt, J. W., & Yang, C.-T. (2017.Jan). Set size slope still does not distinguish parallel from serial search. Behavioral and Brain Sciences, 40.', 'Journal Article', 6, 'https://drive.google.com/file/d/0B9D4n8sa2MQkTmtRNXV4OTY3QjA/view?usp=sharing', '2016-02-20 07:46:00', '2017-09-14 03:25:20'),
(107, 'P-58271', 'Chang, T.-Y.*, Little, D. R., & Yang, C.-T. (2016. May). Selective attention modulates the effect of target location probability on redundant signal processing. Attention, Perception, & Psychophysics.78(6), 1603-1624. dol: 10.3758/s13414-016-1127-2.', 'Journal Article', 9, 'https://drive.google.com/open?id=0B9D4n8sa2MQkdzBJNGgtWGlma1U', '2016-05-02 08:16:20', '2017-09-14 03:25:45'),
(108, 'P-14861', 'Altieri, N.*, & Yang, C.-T. (2016.June). Parallel Linear Dynamic Models Can Mimic the McGurk Effect in Clinical Populations. Journal of Computational Neuroscience.41,143–155. DOI 10.1007/s10827-016-0610-z.', 'Journal Article', 8, 'https://drive.google.com/file/d/0B9D4n8sa2MQkMkFwNVdGXzA3RWs/view?usp=sharing', '2016-06-01 05:23:16', '2017-09-14 03:25:45'),
(109, 'P-78491', 'Yang, C.-T.*, Chen, J., Houpt, J. W., Eidels A., & Little, D. R. (2016.Aug). Visual word processing efficiency for Chinese characters and English words. Poster presented at the 49th Annual Meeting of the Society for Mathematical Psychology,New Brunswick, New Jersey.', 'Conference Paper', 6, 'https://drive.google.com/open?id=0B9D4n8sa2MQkbVByVnhhSUxnWjg', '2016-08-25 11:00:55', '2017-07-18 08:09:32'),
(110, 'P-91531', 'Houpt, J. W., Yang, C.-T. ,& Townsend, J.T.*  (2016.Oct).Editorial: Modeling Individual Differences in Perceptual Decision Making.Frontiers in Psychology.,7:1602. doi: 10.3389/fpsyg.2016.01602.', 'Journal Article', 7, 'https://drive.google.com/file/d/0B9D4n8sa2MQkSWlGWGQ2NDVYZEE/view?usp=sharing', '2016-10-26 05:04:52', '2017-09-14 03:25:45'),
(112, 'P-95411', '陳德祐、林柏賓、楊政達*（民105年10月）。特徵選擇的神經機制。以口頭與海報形式發表於2016台灣心理學年會暨學術研討會。臺南市國立成功大學。', 'Conference Paper', 5, '', '2016-10-26 08:41:58', '2017-09-15 05:16:13'),
(113, 'P-84371', '陳世杰、林佩誼、楊政達*（民105年10月）。主觀預期效用在知覺決策架構選擇所扮演的角色。以口頭形式發表於2016台灣心理學年會暨學術研討會，臺南市國立成功大學。', 'Conference Paper', 4, '', '2016-10-26 08:42:18', '2017-07-18 08:09:32'),
(114, 'P-46711', 'Chen, J., Houpt J. W., Eidels A., Little, D. R., Wong, A.C.-N., Yang, C.-T.*（2016.Oct.). Visual word processing efficiency for Chinese characters and English words. Oral presentation at 2016 Conference and Annual Convention of Taiwan Psychology Association, National Cheng Kung University, Tainan.', 'Conference Paper', 3, '', '2016-10-26 08:50:07', '2017-07-18 08:09:32'),
(115, 'P-99141', 'Yang, C.-T.*, Chen, J., Houpt J. W., Eidels A., & Little, D. R. (2016). Visual Word Processing Efficiency for Chinese Characters and English Words. Poster presented at the 57th Annual Meeting of Psychonomic Society, Boston, Massachusetts.', 'Conference Paper', 2, '', '2016-11-24 10:08:33', '2017-09-11 07:28:01'),
(117, 'P-48391', '楊政達*（2016,Sep）：從澳洲數學心理學發展談台灣心理學的發展。科技部人文級社會科學研究發展司『人文與社會科學簡訊』。17:4，94-101。', 'Books', 5, '', '2017-03-06 04:58:40', '2017-04-19 10:35:59'),
(118, 'P-48431', 'Ide, J. S., Tung, H.-C., Tseng, Y.-C., Yang, C.-T., & Li, C.-S.* (2017.May). Barratt Impulsivity is Associated with Higher Gray Matter Concentration in the Parietal Occipital Cortex that Represents Peripheral Visual Field. Frontiers in Human Neuroscience. 11(222).', 'Journal Article', 5, 'https://drive.google.com/open?id=0B9D4n8sa2MQkdUpkT1oyWjZ3ZVE', '2017-04-19 10:30:13', '2017-09-11 03:41:08'),
(119, 'P-39871', 'Yang, C.-T.* (2017). Attention and Perceptual Decision Making. In D. R. Little, N. Altieri, M. Fific, & C.-T. Yang (Eds). Systems Factorial Technology: A Theory Driven Methodology for the Identification of Perceptual and Cognitive Mechanisms: Academic press.', 'Books', 1, 'https://doi.org/10.1016/B978-0-12-804315-8.00013-6', '2017-04-19 10:32:33', '2017-05-24 09:49:47'),
(120, 'P-21411', 'Altieri, N., Fific, M., Little, D. R., & Yang, C.-T. (2017). Historical foundations and a tutorial introduction to Systems Factorial Technology. In D. R. Little, N. Altieri, M. Fific & C.-T. Yang (Eds.), Systems Factorial Technology: A Theory Driven Methodology for the Identification of Perceptual and Cognitive Mechanisms: Academic press.', 'Books', 2, 'http://www.sciencedirect.com/science/article/pii/B9780128043158000021', '2017-04-19 10:32:59', '2017-05-24 09:53:40'),
(121, 'P-56911', 'Little, D. R., Altieri, N., Fific, M., & Yang, C.-T. (2017). Systems Factorial Technology: A Theory Driven Methodology for the Identification of Perceptual and Cognitive Mechanisms: Academic press.', 'Books', 3, 'http://www.sciencedirect.com/science/book/9780128043158', '2017-04-19 10:33:30', '2017-05-24 09:59:18'),
(122, 'P-82111', 'Townsend, J.*, Houpt, J. W., & Yang, C.-T. (2016). Modeling Individual Differences in Perceptual Decision Making: Frontiers in Psychology.', 'Books', 4, 'http://journal.frontiersin.org/researchtopic/1847/modeling-individual-differences-in-perceptual-decision-making', '2017-04-19 10:34:06', '2017-05-24 10:15:29'),
(123, 'P-99711', 'Yang, C.-T.*, Fific, M., Chang, T.-Y., & Little, D.R. (2017.May). Systems factorial technology provides new insights on the other-race effect. Psychonomic Bulletin & Review.', 'Journal Article', 4, 'https://drive.google.com/file/d/0B9D4n8sa2MQkcjZsN2RQX0R1anc/view?usp=sharing', '2017-04-27 10:45:30', '2017-09-11 03:41:08'),
(124, 'P-96251', 'Chen, J., Lin, P.-Y., Yang, C.-T.* (accepted). The effect of top-down control on the perceptual decision process in a double-dot detection task. Chinese Journal of Psychology. ', 'Journal Article', 3, '', '2017-05-24 07:50:43', '2017-09-11 03:41:08'),
(125, 'P-45251', 'Wang, C.-H.*, Yang, C.-T., Moreau, D., & Muggleton N. (accepted). Motor expertise modulates neural oscillations and temporal dynamics of cognitive control. NeuroImage.', 'Journal Article', 2, '', '2017-07-12 04:30:27', '2017-09-11 07:20:03'),
(126, 'P-70201', 'Yang, C.-T.*, Chen, J., & Lin, P. Y.(2017). The effect of top-down control on the selection of decision strategies. Poster presented at the 50th Annual Meeting of the Society for Mathematical Psychology, London, UK.', 'Conference Paper', 1, '', '2017-07-18 08:09:32', '2017-09-11 07:27:42'),
(127, 'P-72111', 'Yang, C.-T.*, Altieri, N., & Little, D. R. (in press). An examination of parallel versus coactive processing accounts of redundant-target audiovisual signal processing. Journal of Mathematical Psychology.', 'Journal Article', 1, '', '2017-09-11 03:41:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `source_list`
--
-- 建立時間: 2017 年 08 月 14 日 06:30
--

CREATE TABLE `source_list` (
  `No` int(11) NOT NULL,
  `id` text NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `class` text NOT NULL,
  `content` longtext NOT NULL,
  `content_preview` longtext NOT NULL,
  `permission` text NOT NULL,
  `is_delete` text NOT NULL,
  `link` text NOT NULL,
  `marquee` text NOT NULL,
  `creat_time` datetime NOT NULL,
  `edit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `source_list`
--

INSERT INTO `source_list` (`No`, `id`, `title`, `author`, `class`, `content`, `content_preview`, `permission`, `is_delete`, `link`, `marquee`, `creat_time`, `edit_time`) VALUES
(2, 'A-1396', '系統修復中', 'admin', '公告', '<p>由于日前實驗室系統故障，目前正強修中，造成不便敬請見諒。</p>\r\n', '<p>由于日前實驗室系統故障，目前正強修中，造成不便敬請見諒。</p>', '', '0', '', '1', '2015-07-05 09:16:37', '0000-00-00 00:00:00'),
(3, 'A-9694', '柏賓derder 徵女友', 'admin', '誠徵公告', '<script type=\"text/javascript\" src=\"watermarkjs/watermark.js\"></script>\n<p>來哦實驗室寂寞孤單有帥的柏賓derder 誠徵女友...的公告</p>\n\n<p>&lt;預購從速，賣完為止...意者請恰 matsui530@yahoo.com.tw 林老師</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/THbWHJp.jpg\"\" /></p>\n', '<p>來哦實驗室寂寞孤單有帥的柏賓derder 誠徵女友...的公告</p><p>&lt;預購從速，賣完為止...意者請恰 matsui530@yahoo.com.tw 林老師</p><p><img alt=\"\" src=\"http://i.imgur.com/THbWHJp.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-07-15 06:13:30', '0000-00-00 00:00:00'),
(4, 'A-1871', '[研討會] Mathpsy 2015 論文發表', 'admin', '公告', '<p>狂賀，本實驗室Boss 文青帥帥老闆楊政達教授 即將帶領本LAB成員 如淇及婷昀大美女前往美麗的加州參加 Mathpsy 2015 國際研討會論文發表 !!! 叭叭叭</p>\n\n<p><a href=\"http://www.mathpsych.org/conferences/2015/\"><img alt=\"\" src=\"http://i.imgur.com/1mx1DlO.jpg\" style=\"width:100%; border-width: 2px; border-style: solid; margin: 5px;\" /></a></p>\n', '<p>狂賀，本實驗室Boss 文青帥帥老闆楊政達教授 即將帶領本LAB成員 如淇及婷昀大美女前往美麗的加州參加 Mathpsy 2015 國際研討會論文發表 !!! 叭叭叭</p><p><a href=\"http://www.mathpsych.org/conferences/2015/\"><img alt=\"\" src=\"http://i.imgur.com/1mx1DlO.jpg\" style=\"width:100%; border-width: 2px; border-style: solid; margin: 5px;\" /></a></p>', '', '0', '', '0', '2015-07-15 06:28:02', '0000-00-00 00:00:00'),
(5, 'A-4626', '楊教授所開立之通識心理學名列103學年度下學期學生選課第一志  願前十名', 'admin', '公告', '<p><span style=\"line-height: 1.6em;\">楊政達教授通識課程名列成功大學學生第1志願的前十名，從過往的十大課程來</span><span style=\"line-height: 1.6em;\">看，學生選修最迫切的都在心理以及健康方面，創意或領導的主題也頗受歡迎</span><span style=\"line-height: 1.6em;\">，這反映出學生除了他們的專門之外，通識課程的確提供了另一個全人教育的</span><span style=\"line-height: 1.6em;\">方向。社會科學或生命科學領域的課，通常理論與實務兼具，科際整合或批判</span><span style=\"line-height: 1.6em;\">思考討論的機會多，頗受同學好評。</span></p>\r\n', '<p><span style=\"line-height: 1.6em;\">楊政達教授通識課程名列成功大學學生第1志願的前十名，從過往的十大課程來</span><span style=\"line-height: 1.6em;\">看，學生選修最迫切的都在心理以及健康方面，創意或領導的主題也頗受歡迎</span><span style=\"line-height: 1.6em;\">，這反映出學生除了他們的專門之外，通識課程的確提供了另一個全人教育的</span><span style=\"line-height: 1.6em;\">方向。社會科學或生命科學領域的課，通常理論與實務兼具，科際整合或批判</span><span style=\"line-height: 1.6em;\">思考討論的機會多，頗受同學好評。</span></p>', '', '0', '', '0', '2015-07-16 07:37:32', '0000-00-00 00:00:00'),
(6, 'A-1044', '大成講堂APP正式上架', 'admin', '公告', '<p>大成講堂APP是由楊政達教授於2013年指導智慧生活與低頭族的使用者經驗<span style=\"line-height: 1.6em;\">課程的學生費盡心力製作而成。因為目前成大並無一個APP整合各個平台上的</span><span style=\"line-height: 1.6em;\">演講資訊，以致於學生經常錯過精彩的演講。基於此想法，大成講堂APP的概</span><span style=\"line-height: 1.6em;\">念在於提供一個成大學生查詢演講內容的整合平台，並透過簡易的操作方式，</span><span style=\"line-height: 1.6em;\">將想聽的演講收藏，並提供提醒功能。整個APP開發的過程，透過使用者測試</span><span style=\"line-height: 1.6em;\">與經驗研究，多次的改版，以配合使用者的直覺性、美觀、以達成實用、好用</span><span style=\"line-height: 1.6em;\">、並樂此不疲的使用經驗。還不快下載來使用看看嗎？也請大家推薦給大家。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>大成講堂APP是由楊政達教授於2013年指導智慧生活與低頭族的使用者經驗<span style=\"line-height: 1.6em;\">課程的學生費盡心力製作而成。因為目前成大並無一個APP整合各個平台上的</span><span style=\"line-height:\n1.6em;\">演講資訊，以致於學生經常錯過精彩的演講。基於此想法，大成講堂APP的概</span><span style=\"line-height: 1.6em;\">念在於提供一個成大學生查詢演講內容的整合平台，並透過簡易的操作方式，</span><span style=\"line-height:\n1.6em;\">將想聽的演講收藏，並提供提醒功能。整個APP開發的過程，透過使用者測試</span><span style=\"line-height: 1.6em;\">與經驗研究，多次的改版，以配合使用者的直覺性、美觀、以達成實用、好用</span><span style=\"line-height:\n1.6em;\">、並樂此不疲的使用經驗。還不快下載來使用看看嗎？也請大家推薦給大家。</span></p>', '', '0', 'https://play.google.com/store/apps/details?id=cyie.android.nckusp', '1', '2015-07-16 07:44:28', '0000-00-00 00:00:00'),
(7, 'A-3467', '【Smart Talks 2012】楊政達：府城文化與心理學‏', 'admin', '影片分享', '<p>府城文化與心理學&rlm;</p>\r\n', '<p>府城文化與心理學&rlm;</p>', '', '1', 'http://youtu.be/zPM7mIC-qC8', '0', '2015-07-16 08:01:58', '0000-00-00 00:00:00'),
(8, 'A-9356', '【Smart Talks 2012】楊政達：府城文化與心理學‏', 'admin', '影片分享', '<p>【Smart Talks 2012】楊政達：府城文化與心理學&rlm;</p>\r\n', '<p>【Smart Talks 2012】楊政達：府城文化與心理學&rlm;</p>', '', '1', 'http://youtu.be/zPM7mIC-qC8 ', '0', '2015-07-16 09:10:38', '0000-00-00 00:00:00'),
(9, 'A-4381', '實驗室公約', 'admin', '公告', '<p>來哦，最新版2015 HOT HOT HOT 的實驗室公約來了，請大家多多配合 ^.< ~</p>\n\n\n<p><img alt=\"\" src=\"http://i.imgur.com/dpAECNy.jpg\" style=\"width:100%;\" />d</p>\n', '<p>來哦，最新版2015 HOT HOT HOT 的實驗室公約來了，請大家多多配合 ^.< ~</p><p><img alt=\"\" src=\"http://i.imgur.com/dpAECNy.jpg\" style=\"width:100%;\" />d</p>', '', '0', '', '0', '2015-07-20 03:35:39', '0000-00-00 00:00:00'),
(10, 'A-9114', '[LAB] 清　冰　箱', 'admin', '公告', '<p>來哦~~~~~~~~~~~要　冰箱太久沒做體內環保活動</p>\n\n<p><span style=\"line-height: 1.6em;\">所以今天要清冰箱囉　(除除除除除除~~~霜中）</span></p>\n\n<p>請大家把自己的放在冰箱肚子裡面的東西領走哦　謝謝大家</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/droWSGj.jpg\" style=\"width:100%;\" /></p>\n\n<p>&nbsp;</p>\n', '<p>來哦~~~~~~~~~~~要　冰箱太久沒做體內環保活動</p><p><span style=\"line-height: 1.6em;\">所以今天要清冰箱囉　(除除除除除除~~~霜中）</span></p><p>請大家把自己的放在冰箱肚子裡面的東西領走哦　謝謝大家</p><p><img alt=\"\" src=\"http://i.imgur.com/droWSGj.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-07-22 04:24:38', '0000-00-00 00:00:00'),
(11, 'A-2665', '[LAB] 受試者費請領規則', 'admin', '公告', '<p>as title ... 請花落附圖的規則哦 不然可能對方會領不到錢哦... 這樣柏賓就要自己付了 哭哭</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/AvLmDz4.jpg\" style=\"width:100%;\" /></p>\n\n<p>&nbsp;</p>\n', '<p>as title ... 請花落附圖的規則哦 不然可能對方會領不到錢哦... 這樣柏賓就要自己付了 哭哭</p><p><img alt=\"\" src=\"http://i.imgur.com/AvLmDz4.jpg\" style=\"width:100%;\" /></p><p>&nbsp;</p>', '', '0', '', '0', '2015-07-27 06:05:01', '0000-00-00 00:00:00'),
(12, 'A-1482', '國際研討會工作坊活動籌辦-美工設計工讀生', 'admin', '誠徵公告', '<p>1、[工作地點] 成大社會科學大樓5樓540室</p>\r\n\r\n<p>2、[工作職稱] 國際研討會工作坊活動籌辦-美工設計工讀生</p>\r\n\r\n<p>3、[工作條件] 1. 工設系、藝術相關科系為佳。<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. 會使用PHOTOGRAPHYII、ILLUSTRATOR、INDESIGN等設計軟體。</p>\r\n\r\n<p>4、[工作內容] 1.研討會文宣設計<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.一般文書作業<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3.每周需與老師討論進度 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>5、[工作時間] 可配合調整工作時間，即時。&nbsp;</p>\r\n\r\n<p>6、[薪資待遇] 120元/時薪。</p>\r\n\r\n<p>7、[聯絡方式] 意者請將個人履歷表、自傳以e-mail方式回覆至 &nbsp;張小姐 jesicalikeu@gmail.com<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;信件抬頭[應徵研討會活動籌辦-美工設計工讀生]-你的名字 &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;符合條件者，以信件通知面試，不符合者恕無法一一通知。</p>\r\n', '<p>1、[工作地點] 成大社會科學大樓5樓540室</p><p>2、[工作職稱] 國際研討會工作坊活動籌辦-美工設計工讀生</p><p>5、[工作時間] 可配合調整工作時間，即時。&nbsp;</p><p>6、[薪資待遇] 120元/時薪。</p>', '', '0', '', '0', '2015-07-28 05:58:14', '0000-00-00 00:00:00'),
(13, 'A-7450', '國際研討會活動籌辦-行政工讀生', 'admin', '誠徵公告', '<p>1、[工作地點] 成大社會科學大樓5樓540室</p>\r\n\r\n<p>2、[工作職稱] 國際研討會活動籌辦-行政工讀生</p>\r\n\r\n<p>3、[工作條件] 1.耐心、細心、有責任感、能獨立作業、配合度高。。&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.<span style=\"line-height: 25.6000003814697px;\">熟成大報帳流程及經費系統佳</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>4、[工作內容] 中英文書稿草擬、研討會行政庶務聯繫工作、管理與核銷研討費經費、交接代辦事項。</p>\r\n\r\n<p>5、[工作時間] 可配合調整工作時間，即時。&nbsp;</p>\r\n\r\n<p>6、[薪資待遇] 120元/時薪。</p>\r\n\r\n<p>7、[聯絡方式] 意者請將個人履歷表、自傳以e-mail方式回覆至 &nbsp;張小姐 jessicalikeu@gmail.com<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;信件抬頭[應徵研討會活動籌辦-行政工讀生]-你的名字 &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;符合條件者，以信件通知面試<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n8、「其他備註」 符合條件者，將以信件通知面試，不符合者恕無法一一通知。</p>\r\n', '<p>1、[工作地點] 成大社會科學大樓5樓540室</p><p>2、[工作職稱] 國際研討會活動籌辦-行政工讀生</p><p>4、[工作內容] 中英文書稿草擬、研討會行政庶務聯繫工作、管理與核銷研討費經費、交接代辦事項。</p><p>5、[工作時間] 可配合調整工作時間，即時。&nbsp;</p>', '', '0', '', '0', '2015-07-28 05:58:32', '2015-08-03 10:17:49'),
(14, 'A-5378', '【Smart Talks 2012】楊政達：府城文化與心理學‏', 'admin', '影片分享', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/zPM7mIC-qC8\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/zPM7mIC-qC8\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-07-29 10:17:53', '2016-10-07 02:56:14'),
(15, 'A-1957', '大成講堂APP正式上架', 'admin', '影片分享', '<p><a href=\"https://play.google.com/store/apps/details?id=cyie.android.nckusp\">大成講堂APP</a>是由楊政達教授於2013年指導智慧生活與低頭族的使用者經驗課程的學生費盡心力製作而成。因為目前成大並無一個APP整合各個平台上的演講資訊，以致於學生經常錯過精彩的演講。基於此想法，大成講堂APP的概念在於提供一個成大學生查詢演講內容的整合平台，並透過簡易的操作方式，將想聽的演講收藏，並提供提醒功能。整個APP開發的過程，透過使用者測試與經驗研究，多次的改版，以配合使用者的直覺性、美觀、以達成實用、好用、並樂此不疲的使用經驗。還不快下載來使用看看嗎？也請大家推薦給大家。</p>\r\n', '<p><a href=\"https://play.google.com/store/apps/details?id=cyie.android.nckusp\">大成講堂APP</a>是由楊政達教授於2013年指導智慧生活與低頭族的使用者經驗課程的學生費盡心力製作而成。因為目前成大並無一個APP整合各個平台上的演講資訊，以致於學生經常錯過精彩的演講。基於此想法，大成講堂APP的概念在於提供一個成大學生查詢演講內容的整合平台，並透過簡易的操作方式，將想聽的演講收藏，並提供提醒功能。整個APP開發的過程，透過使用者測試與經驗研究，多次的改版，以配合使用者的直覺性、美觀、以達成實用、好用、並樂此不疲的使用經驗。還不快下載來使用看看嗎？也請大家推薦給大家。</p>', '', '0', '', '0', '2015-07-31 03:17:56', '0000-00-00 00:00:00'),
(16, 'A-7623', '2013 APP工作坊學生論文發表影片', 'admin', '影片分享', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/bXQvr4PmH70\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/bXQvr4PmH70\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-07-31 03:18:48', '2016-10-07 02:57:00'),
(17, 'A-6084', '2014 第三屆大學生活體驗營-「大腦與認知科學」簡報影片', 'admin', '影片分享', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"355\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"//www.slideshare.net/slideshow/embed_code/key/BF0MXpagEMTL7A\" style=\"border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;\" width=\"425\"></iframe></p>\r\n\r\n<div style=\"margin-bottom:5px\"><strong><a href=\"//www.slideshare.net/vcmlab/ss-36734904\" target=\"_blank\" title=\"大腦認知科學楊政達\">大腦認知科學楊政達</a> </strong> from <strong><a href=\"//www.slideshare.net/vcmlab\" target=\"_blank\">Visual Cognition and Modeling Lab</a></strong></div>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"355\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"//www.slideshare.net/slideshow/embed_code/key/BF0MXpagEMTL7A\" style=\"border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;\" width=\"425\"></iframe></p><p>&nbsp;</p>', '', '0', '', '0', '2015-07-31 03:29:51', '0000-00-00 00:00:00'),
(18, 'A-5013', '[LAB] 受試者切結書', 'admin', '公告', '<p>咳咳 ~~ 由於主計處退了數10張受試者費用的申請單，導致最美的助理姐姐 昨天加班到8萬多點</p>\n\n<p>因此，以後如果有找受試者，要請他簽切結書，以免出現兼任助理或專任助理或OOXX 謎樣人士認真的作完實驗後 &quot;謀幾夯ㄎㄟ&quot;</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/B7FGEVc.jpg\" style=\"width:100%;\" /></p>\n', '<p>咳咳 ~~ 由於主計處退了數10張受試者費用的申請單，導致最美的助理姐姐 昨天加班到8萬多點</p><p>因此，以後如果有找受試者，要請他簽切結書，以免出現兼任助理或專任助理或OOXX 謎樣人士認真的作完實驗後 &quot;謀幾夯ㄎㄟ&quot;</p><p><img alt=\"\" src=\"http://i.imgur.com/B7FGEVc.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-07-31 03:48:04', '0000-00-00 00:00:00'),
(19, 'A-4008', '[2014 TMCP meeting]  A First Tutorial on Static General Recognition Theory (STGRT)', 'admin', '影片分享', '<p><strong><a href=\"https://docs.google.com/document/d/1BxZXtJsS1L26oDNvDson4MR6aTU4SfvIX6dAmd7XvIs/edit?usp=sharing\">A First Tutorial on Static General Recognition Theory (STGRT)</a></strong><br />\r\n<b><i>Presentation By</i></b> James T. Townsend, Indiana University, USA &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/af-hE1Cix_s\" width=\"560\"></iframe><br />\r\n<br />\r\n<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/PuFpxUx-1OA\" width=\"560\"></iframe><br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;</p>', '', '0', '', '0', '2015-08-05 09:44:12', '2016-10-07 02:58:02'),
(20, 'A-5245', '[2014 TMCP meeting] How do information processing systems deal with conflicting information?', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1OsowAY_OM_8H8-HWYbsSvUxgYn1Xnq5f--jhjeN6U2E/edit?usp=sharing\">How do information processing systems deal with conflicting information?</a><br />\r\n<i><b>Presentation By</b></i> Daniel R. Little, The University of Melbourne, Australia</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/8fLjU_vxNtU\" width=\"560\"></iframe></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/ltpDRdmvGrA\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/8fLjU_vxNtU\" width=\"560\"></iframe></p><p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/ltpDRdmvGrA\" width=\"560\"></iframe></p><p>&nbsp;</p><p>&nbsp;</p>', '', '0', '', '0', '2015-08-05 09:46:53', '2016-10-07 02:58:50'),
(21, 'A-5119', '[2014 TMCP meeting] Identification of Mental Architectures in Face Perception Using the Systems Factorial Technology', 'admin', '影片分享', '<p style=\"margin-top:4.0pt;margin-right:0cm;margin-bottom:4.0pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph\"><span lang=\"EN-US\" style=\"font-size:11.0pt\"><a href=\"https://docs.google.com/document/d/1c8tsow-Iy_5FUdRMgE4KL8w4t_eCqfcqSFl3_ll1v8A/edit?usp=sharing\" target=\"_blank\">Identification of Mental Architectures in Face Perception Using the Systems Factorial Technology</a> </span></p>\r\n\r\n<p style=\"margin-top:4.0pt;margin-right:0cm;margin-bottom:4.0pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph\"><span lang=\"EN-US\" style=\"font-size:11pt\"><span lang=\"EN-US\" style=\"font-size:11pt\"><span lang=\"EN-US\" style=\"font-weight:bold;font-size:11pt\"><b style=\"font-size:16px;line-height:1.5;background-color:transparent\"><span lang=\"EN-US\" style=\"font-size:11pt\"><i>Presentation</i>&nbsp;<i>By</i></span></b><span lang=\"EN-US\" style=\"font-size:11pt;background-color:transparent\">&nbsp;</span>&nbsp;</span><span lang=\"EN-US\" style=\"color:black\">Mario Fific, Grand Valley State University, USA </span></span></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/g-t4SEPefJ8\" width=\"560\"></iframe><br />\r\n<br />\r\n<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/XjHZ6aAlACc\" width=\"560\"></iframe><br />\r\n&nbsp;</p>\r\n', '<p style=\"margin-top:4.0pt;margin-right:0cm;margin-bottom:4.0pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph\"><span lang=\"EN-US\" style=\"font-size:11.0pt\"><a href=\"https://docs.google.com/document/d/1c8tsow-Iy_5FUdRMgE4KL8w4t_eCqfcqSFl3_ll1v8A/edit?usp=sharing\" target=\"_blank\">Identification of Mental Architectures in Face Perception Using the Systems Factorial Technology</a> </span></p><p><span\nlang=\"EN-US\"\nstyle=\"font-size:11pt\"><span\nlang=\"EN-US\"\nstyle=\"font-size:11pt\"><span\nlang=\"EN-US\"\nstyle=\"font-weight:bold;font-size:11pt\"><b\nstyle=\"font-size:16px;line-height:1.5;background-color:transparent\"><span\nlang=\"EN-US\"\nstyle=\"font-size:11pt\"><i>Presentation</i>&nbsp;<i>By</i></span></b><span\nlang=\"EN-US\"\nstyle=\"font-size:11pt;background-color:transparent\">&nbsp;</span>&nbsp;</span><span\nlang=\"EN-US\"\nstyle=\"color:black\">Mario\nFific,\nGrand\nValley\nState\nUniversity,\nUSA\n</span></span></span></p>', '', '0', '', '0', '2015-08-05 09:52:49', '2016-10-07 02:53:56'),
(22, 'A-5758', '[2014 TMCP meeting] Context effects in spatial vision: Six dimensions of configuration dependence', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1GPAQ4EW5GQ05wa9cAbXcc3F0d_z-bqxRiqCs0YFJbJk/edit?usp=sharing\">Context effects in spatial vision: Six dimensions of configuration dependence</a>&nbsp;<br />\r\n<b><i>Presentation By </i></b>Chien-Chung Chen, National Taiwan University, Taiwan</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\"  height=\"315\" src=\"https://www.youtube.com/embed/3poA9rljZAo\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\"  height=\"315\" src=\"https://www.youtube.com/embed/3poA9rljZAo\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-08-05 09:58:20', '2016-10-07 02:59:51'),
(23, 'A-5559', '[2014 TMCP meeting] Fast categorization of objects in natural scenes : the first 200 ms of visual processing ', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1StQ7egM8WDlth9xMo7TWRXG0wHw7dHdm0Knx182EdfM/edit?usp=sharing\">Fast categorization of objects in natural scenes : the first 200 ms of visual processing</a><br />\r\n<b><i>Presentation By</i></b> Mich&egrave;le Fabre-Thorpe, University of Toulouse, France</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Ta9EB4zpdBg\" width=\"560\"></iframe></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/6en9puNz3Bo\" width=\"560\"></iframe>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b><span lang=\"EN-US\" style=\"font-size:11pt\"><font color=\"#444444\">&nbsp;</font></span></b></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Ta9EB4zpdBg\" width=\"560\"></iframe></p><p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/6en9puNz3Bo\" width=\"560\"></iframe>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b><span lang=\"EN-US\" style=\"font-size:11pt\"><font color=\"#444444\">&nbsp;</font></span></b></p>', '', '0', '', '0', '2015-08-05 10:06:29', '2015-08-24 09:17:21'),
(24, 'A-7059', '[2014 TMCP meeting] How can we recognize sensory stimuli that we have not experienced for several decades?', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1t7-sbOHXGP5bFuQ4Hc9c9TK4kitDEjKquCGjFDSTWF0/edit?usp=sharing\">How can we recognize sensory stimuli that we have not experienced for several decades?</a>&nbsp;<br />\r\n<b><i>Presentation By</i></b> Simon J. Thorpe, University of Toulouse, France &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/HbTVfNAx0iY\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/HbTVfNAx0iY\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-08-05 10:07:41', '2015-08-24 09:17:11'),
(25, 'A-8736', '[2014 TMCP meeting] Workshop Systems Factorial Technology with R ', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1H4-rft4aC_cVWVO3kzw5okWHIZcGA4TdkL8pVBXmJWY/edit?usp=sharing\">Systems Factorial Technology with R&nbsp;</a>&nbsp;<a href=\"https://www.youtube.com/watch?v=JAdGid3oi6M&amp;spfreload=10\" target=\"_blank\">video</a></p>\r\n\r\n<p style=\"margin:4pt 0cm\">Suggest reading list:</p>\r\n\r\n<p>Check out the link:&nbsp;<a href=\"https://sites.google.com/site/nckutmcp/meeting/downloads\" style=\"background-color:rgb(255,255,255)\" target=\"_blank\">Downloads</a></p>\r\n\r\n<p><br />\r\n<b><i>Presentation By</i></b> Joseph W. Houpt, Wright State University, USA<span style=\"text-align:left;line-height:1.5;background-color:transparent\"><font color=\"#000000\">&nbsp; &nbsp; &nbsp; </font></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/JAdGid3oi6M\" width=\"560\"></iframe><span style=\"text-align:left;line-height:1.5;background-color:transparent\"><font color=\"#000000\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font></span></p>\r\n', '<p><a href=\"https://docs.google.com/document/d/1H4-rft4aC_cVWVO3kzw5okWHIZcGA4TdkL8pVBXmJWY/edit?usp=sharing\">Systems Factorial Technology with R&nbsp;</a>&nbsp;<a href=\"https://www.youtube.com/watch?v=JAdGid3oi6M&amp;spfreload=10\" target=\"_blank\">video</a></p><p style=\"margin:4pt 0cm\">Suggest reading list:</p><p>Check out the link:&nbsp;<a href=\"https://sites.google.com/site/nckutmcp/meeting/downloads\" style=\"background-color:rgb(255,255,255)\" target=\"_blank\">Downloads</a></p><p><iframe\nallowfullscreen=\"\"\nframeborder=\"0\"\nheight=\"315\"\nsrc=\"https://www.youtube.com/embed/JAdGid3oi6M\"\nwidth=\"560\"></iframe><span\nstyle=\"text-align:left;line-height:1.5;background-color:transparent\"><font\ncolor=\"#000000\">&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n&nbsp;\n</font></span></p>', '', '0', '', '0', '2015-08-05 10:15:37', '2015-08-24 09:17:00'),
(26, 'A-3896', '[2014 TMCP meeting]  Workshop Tools for simulating from parametric models of information processing architecture in [R]', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1lwwaWVdUZ1XZxRU2m5lUKMhTTjygbG37ISb5np_qseU/edit?usp=sharing\">Tools for simulating from parametric models of information processing architecture in [R]</a><br />\r\n<br />\r\nR code and test data:<br />\r\nCheck out the link: <a href=\"https://sites.google.com/site/nckutmcp/meeting/downloads\" target=\"_blank\">Downloads</a><br />\r\n<br />\r\n<b><i>Presentation By </i></b> Daniel R. Little, The University of Melbourne, Australia &nbsp; &nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/gn5m1Krrg2c\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/gn5m1Krrg2c\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-08-05 10:19:52', '2015-08-24 09:16:41'),
(27, 'A-5902', '[2014 TMCP meeting]  Oral Presentation  ', 'admin', '影片分享', '<p><span lang=\"EN-US\" style=\"font-weight:bold;color:rgb(0,112,192)\"><a href=\"https://docs.google.com/document/d/1Y3o39tMc4quwex-gt27LTRqITCEz_enlNyTacdFeg5A/edit?usp=sharing\" target=\"_blank\">Oral Presentation</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-weight:bold;line-height:1.5;background-color:transparent\"><font color=\"#444444\"><span style=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\" style=\"font-size:11pt\">(Session&nbsp;</span></span><font style=\"line-height:1.5;background-color:transparent\"><span style=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\" style=\"font-size:11pt\">Host:</span></span></font></font></span><font color=\"#444444\"><span style=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\">&nbsp;</span></span><span style=\"font-size:12pt;line-height:1.5;background-color:transparent\">Pi-Chun Huang)</span></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span lang=\"EN-US\">1. <b>Conditions under which affine representations are also Fechnerian under the power law of similarity on the Weber sensitivities </b></span><span style=\"background-color:transparent;line-height:1.5\">- Yung-Fong Hsu, </span><i style=\"line-height:1.5\">Department of Psychology, National Taiwan University</i><span style=\"background-color:transparent;line-height:1.5\">&nbsp; &nbsp;</span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/evdftfUYb-8\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span lang=\"EN-US\">2. <b>Temporal characteristics of the collinear masking effect in visual search </b>- Li Jingling, and Ching-Wen Chiu, <i>Graduate Institute of Neural and Cognitive Sciences</i>, <i>China Medical University</i></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/qSs9NTmnBQA\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span lang=\"EN-US\">3. <b>Specialization and generalization in developing the other-race effect </b>- Sarina Hui-Lin Chien<sup>1</sup>, Tsung-Ren Huang<sup>2</sup>, and Jing-Fong Wang<sup>1</sup>, <sup>1</sup><i>Institute of Neural &amp; Cognitive Sciences, China Medical University</i>, <sup>2</sup><i>Department of Psychology, National Taiwan University</i></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/9fbfnFQddx8\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span lang=\"EN-US\">4. <b>Male observers perceived female facial parts more attractive than the whole face </b>- Chihiro Saegusa, and Katsumi Watanabe, <i>Research Center of Advanced Science and Technology, The University of Tokyo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </i></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Ls25UTx-T2g\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span lang=\"EN-US\">5. <b>Order Effect and Time Varying Category</b>- Lee-Xieng Yang, and Hao-Ting Wang, <i>Department of Psychology, National Chengchi University</i></span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/QidGEk8umQA\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span lang=\"EN-US\" style=\"font-weight:bold;color:rgb(0,112,192)\"><a href=\"https://docs.google.com/document/d/1Y3o39tMc4quwex-gt27LTRqITCEz_enlNyTacdFeg5A/edit?usp=sharing\" target=\"_blank\">Oral Presentation</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span\nstyle=\"font-weight:bold;line-height:1.5;background-color:transparent\"><font color=\"#444444\"><span style=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\" style=\"font-size:11pt\">(Session&nbsp;</span></span><font style=\"line-height:1.5;background-color:transparent\"><span\nstyle=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\" style=\"font-size:11pt\">Host:</span></span></font></font></span><font color=\"#444444\"><span style=\"line-height:1.5;background-color:transparent\"><span lang=\"EN-US\">&nbsp;</span></span><span\nstyle=\"font-size:12pt;line-height:1.5;background-color:transparent\">Pi-Chun Huang)</span></font></p>', '', '0', '', '0', '2015-08-05 10:45:55', '2015-08-24 09:15:44'),
(28, 'A-8648', '[2014 TMCP meeting] Quantifying Configural Superiority with the Capacity Coefficient', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1CWgRqE-AiBMd7DdHqurlNaNqeLrbXEloylnsNHd3_nI/edit?usp=sharing\">Quantifying Configural Superiority with the Capacity Coefficient</a><br />\r\n<b style=\"line-height:1.5\"><i>Presentation By</i></b><span style=\"background-color:transparent;line-height:1.5\"> Joseph W. Houpt, Wright State University, USA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/XNKdNwfGzwQ?list=UUayybNJIdybj849oUB9noxQ\" width=\"560\"></iframe><span style=\"background-color:transparent;line-height:1.5\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/XNKdNwfGzwQ?list=UUayybNJIdybj849oUB9noxQ\" width=\"560\"></iframe><span style=\"background-color:transparent;line-height:1.5\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>', '', '0', '', '0', '2015-08-05 10:47:50', '2015-08-24 09:16:18'),
(29, 'A-7548', '[2014 TMCP meeting]  The Modal Research Design for SFT Application in Face Perception: Conjunctive/Disjunctive-rule Stimulus Structures (AND/OR) and a Novel Signature of Holistic Face Perception: “Snake Wiggle”', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/17s0I5ReIouPeQLHgyDShpufPNOZ9bw1xKqE_OrteIVA/edit?usp=sharing\">The Modal Research Design for SFT Application in Face Perception: Conjunctive/Disjunctive-rule Stimulus Structures (AND/OR) and a Novel Signature of Holistic Face Perception: &ldquo;Snake Wiggle&rdquo;</a><br />\r\n<b><i>Presentation By</i></b> Mario Fific, Grand Valley State University, USA &nbsp; &nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Jt7Q-QHHNzs\" width=\"560\"></iframe>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/8J4FKKAD9YA\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Jt7Q-QHHNzs\" width=\"560\"></iframe>&nbsp; &nbsp;&nbsp;</p><p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/8J4FKKAD9YA\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-08-05 10:49:16', '2015-08-24 09:16:08'),
(30, 'A-6785', '[2014 TMCP meeting] An Introduction to Response Time General Recognition Theory (RTGRT): The Parallel Theory', 'admin', '影片分享', '<p><a href=\"https://docs.google.com/document/d/1e152yfFvoISLjZElFkG4l_mrwIImHBeGwxsEkpJzFTw/edit?usp=sharing\">An Introduction to Response Time General Recognition Theory (RTGRT): The Parallel Theory</a><br />\r\n<b>Presentation By</b> James T. Townsend, Indiana University, USA &nbsp;</p>\r\n\r\n<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/pWkrZIQkx9g?list=UUayybNJIdybj849oUB9noxQ\" width=\"560\"></iframe></p>\r\n', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/pWkrZIQkx9g?list=UUayybNJIdybj849oUB9noxQ\" width=\"560\"></iframe></p>', '', '0', '', '0', '2015-08-05 10:50:35', '2015-08-24 09:15:34'),
(31, 'A-4719', '[Meeting] NCKU_PSY_ joint meeting Facebook 開幕了', 'admin', '公告', '<p>as title ~</p>\r\n\r\n<p>成功大學心理系　ＮＣＫＵ＿ＰＳＹ＿ＪＯＩＮＴ　ＭＥＥＴＩＮＧ　</p>\r\n\r\n<p>Facebook 專頁　開店了，歡迎願意加入這個meeting 的先進學長學姐教授們，跟我們聯絡，謝謝</p>\r\n\r\n<p><a href=\"https://www.facebook.com/groups/731756996970049/?fref=ts\">https://www.facebook.com/groups/731756996970049/?fref=ts</a></p>\r\n', '<p>as title ~</p><p>成功大學心理系　ＮＣＫＵ＿ＰＳＹ＿ＪＯＩＮＴ　ＭＥＥＴＩＮＧ　</p><p>Facebook 專頁　開店了，歡迎願意加入這個meeting 的先進學長學姐教授們，跟我們聯絡，謝謝</p><p><a href=\"https://www.facebook.com/groups/731756996970049/?fref=ts\">https://www.facebook.com/groups/731756996970049/?fref=ts</a></p>', '', '0', '', '0', '2015-08-12 06:39:44', '2015-08-12 06:39:44'),
(32, 'A-6673', '[LAB] 畢業學長 許景淳學長 回娘家~~~', 'admin', '公告', '<p>餓絲抬頭 ~~ 畢業學長 許景淳　昨天回娘家了 ~~~</p>\r\n\r\n<p>可惜沒有帶娘家豬腳 ( 哈哈 ~ )</p>\r\n\r\n<p>有圖有真相，恭喜減肥成功 XD ~~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/bBd9Jzm.jpg\" style=\"width: 450px; height: 338px;\" /></p>\r\n', '<p>餓絲抬頭 ~~ 畢業學長 許景淳　昨天回娘家了 ~~~</p><p>可惜沒有帶娘家豬腳 ( 哈哈 ~ )</p><p>有圖有真相，恭喜減肥成功 XD ~~~</p><p>&nbsp;</p>', '', '0', '', '0', '2015-08-18 03:30:19', '2015-08-26 06:13:27'),
(33, 'A-8126', '貝式分析在序列抽樣模型的應用工作坊 !!!!', 'admin', '公告', '<p>as title&nbsp;</p>\n\n<p>貝式分析在序列抽樣模型的應用工作坊 2015&nbsp;</p>\n\n<p>Official Website&nbsp;<span style=\"line-height: 1.6em;\">開張囉</span></p>\n\n<p>歡迎大家報名參加</p>\n\n<p>https://sites.google.com/site/nckumathpsy2015/</p>\n\n<p>&nbsp;</p>\n', '<p>as title&nbsp;</p><p>貝式分析在序列抽樣模型的應用工作坊 2015&nbsp;</p><p>Official Website&nbsp;<span style=\"line-height: 1.6em;\">開張囉</span></p><p>歡迎大家報名參加</p>', '', '0', 'https://sites.google.com/site/nckumathpsy2015/', '0', '2015-09-01 07:38:08', '2015-09-01 07:38:08'),
(34, 'A-7988', 'Inpsy訪問 - 成大心理系 楊政達教授', 'admin', '公告', '<p>Inpsy訪問 - 成大心理系 楊政達教授</p>\r\n\r\n<p>http://www.slideshare.net/elone530/inpsy</p>\r\n\r\n<p>心理感受的重量- 淺談心理物理學</p>\r\n', '<p>Inpsy訪問 - 成大心理系 楊政達教授</p><p>http://www.slideshare.net/elone530/inpsy</p><p>心理感受的重量- 淺談心理物理學</p>', '', '0', '', '0', '2015-09-01 08:05:46', '2015-09-01 08:05:46'),
(35, 'A-6772', '[[ 狂賀 ]] 恭喜楊政達老師獲選十大傑出青年!!', 'admin', '公告', '<p>中華民國第五十三屆十大傑出青年當選公布記者會於2015.10.05上午在立法院舉行，</p>\n\n<p>其中「科技及技術研究發展類」的傑出青年人選為<strong>成大心理系楊政達副教授!</strong>!</p>\n\n<p>ヽ(&forall;ﾟ )人(ﾟ&forall;ﾟ)人( ﾟ&forall;)&nbsp;恭喜楊政達老師榮獲十大傑出青年&nbsp;(&forall;ﾟ )人(ﾟ&forall;ﾟ)人( ﾟ&forall;)ﾉ</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/Bz0xfNt.jpg\" style=\"width:100%;\" /></p>\n\n<h3>本次十大傑出青年共選出九位優秀的傑出青年，</h3>\n\n<p>含成大心理系副教授楊政達（科技及技術研究發展類）、大江生醫公司總經理林詠翔（企業、創業及經濟發展類）、<span style=\"line-height: 1.6em;\">天主教善牧社會福利基金會花蓮區主任曾梅玲（社會服務類）、 &nbsp;舉重國手林子琦（體育技藝類）、</span><span style=\"line-height: 1.6em;\">歌手蕭敬騰（文化及藝術類）、金門地檢署主任檢察官聶眾（公共行政類）、</span><span style=\"line-height: 20.8px;\">鋼琴家黃凱盈（華裔青年特別獎）、</span><span style=\"line-height: 1.6em;\">國立海洋生物博物館副研究員何宣慶（農漁環保類）、混障綜藝團團員郭韋齊（兒童、性別及人權關懷類）。</span></p>\n', '<p>中華民國第五十三屆十大傑出青年當選公布記者會於2015.10.05上午在立法院舉行，</p><p>其中「科技及技術研究發展類」的傑出青年人選為<strong>成大心理系楊政達副教授!</strong>!</p><p>ヽ(&forall;ﾟ )人(ﾟ&forall;ﾟ)人( ﾟ&forall;)&nbsp;恭喜楊政達老師榮獲十大傑出青年&nbsp;(&forall;ﾟ )人(ﾟ&forall;ﾟ)人( ﾟ&forall;)ﾉ</p><p><img alt=\"\" src=\"http://i.imgur.com/Bz0xfNt.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '1', '2015-10-06 08:21:47', '2015-10-13 09:50:52'),
(36, 'A-4699', '大愛電視十大青年整日貼身專訪!', 'admin', '公告', '<p>2015/10/08</p>\n\n<p>今天大愛電視特別到成大，對十大傑出青年的楊政達老師做專訪囉!!</p>\n\n<p>有一台大大的攝影機在一旁跟著，就像大明星一樣引人注意呢!&nbsp;(๑&bull;̀ㅂ&bull;́)و✧</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/3ZRHgNq.jpg\" style=\"width:100%;\" /></p>\n', '<p>2015/10/08</p><p>今天大愛電視特別到成大，對十大傑出青年的楊政達老師做專訪囉!!</p><p>有一台大大的攝影機在一旁跟著，就像大明星一樣引人注意呢!&nbsp;(๑&bull;̀ㅂ&bull;́)و✧</p><p><img alt=\"\" src=\"http://i.imgur.com/3ZRHgNq.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-10-14 08:11:45', '2015-10-14 08:29:58'),
(37, 'A-1335', 'VCMlab打卡新景點! 美麗的小盆栽夥伴ヽ(✿ﾟ▽ﾟ)ノ', 'admin', '公告', '<p>各位最近經過楊老師辦公室時有發現我們的新盆栽夥伴嗎?</p>\n\n<p>他是前社科院院長、現國北大的校長何志欽先生特別送給楊老師的唷!!</p>\n\n<p>走過、路過別忘的多看幾眼!! &nbsp;٩(๑&bull;̀&omega;&bull;́๑)۶</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/W66s8mm.jpg\" style=\"width:100%;\" /></p>\n', '<p>各位最近經過楊老師辦公室時有發現我們的新盆栽夥伴嗎?</p><p>他是前社科院院長、現國北大的校長何志欽先生特別送給楊老師的唷!!</p><p>走過、路過別忘的多看幾眼!! &nbsp;٩(๑&bull;̀&omega;&bull;́๑)۶</p><p><img alt=\"\" src=\"http://i.imgur.com/W66s8mm.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-10-14 08:27:27', '2015-10-14 08:27:27'),
(38, 'A-2282', '大愛電視台 十傑專訪節目', 'admin', '公告', '<p>還記得上次大愛電視台的整日貼身專訪嗎?&nbsp;&nbsp; 節目 &quot; 2015十傑之光 &quot; 近期已撥出囉!!</p>\n\n<p>楊政達老師精彩的節目請千萬別錯過唷，以下為連結網址<br />\n<a href=\"http://www.daai.tv/daai-web/news/topic_content.php?id=965844&amp;cls=1006\">http://www.daai.tv/daai-web/news/topic_content.php?id=965844&amp;cls=1006</a></p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/X8XRswL.jpg\" style=\"width:100%;\" /></p>\n\n<p>&nbsp;</p>\n', '<p>還記得上次大愛電視台的整日貼身專訪嗎?&nbsp;&nbsp; 節目 &quot; 2015十傑之光 &quot; 近期已撥出囉!!</p><p><img alt=\"\" src=\"http://i.imgur.com/X8XRswL.jpg\" style=\"width:100%;\" /></p><p>&nbsp;</p>', '', '0', '', '0', '2015-10-26 16:21:26', '2015-10-29 09:42:33'),
(39, 'A-5483', '[[狂賀]]榮獲104臺綜大年輕學者創新研究獎佳作', 'admin', '公告', '<p>在104台綜大&quot;年輕學者創新研究成果選拔&quot;中</p>\r\n\r\n<p>楊政達老師的研究計畫&quot;視力無eye:眼睛檢查自己來&quot;榮獲 &quot;創新研究獎佳作&quot;</p>\r\n\r\n<p>以下為104台綜大&quot;年輕學者創新研究成果選拔&quot;審查結果</p>\r\n\r\n<p><a href=\"http://ord.ncku.edu.tw/files/14-1003-144625,r1844-1.php?Lang=zh-tw\">http://ord.ncku.edu.tw/files/14-1003-144625,r1844-1.php?Lang=zh-tw</a></p>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"1\" style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 17.3333px; line-height: 29.4667px; width: 777px;\">\r\n	<tbody>\r\n		<tr>\r\n			<th>獎項</th>\r\n			<th>序號</th>\r\n			<th>姓名</th>\r\n			<th>學校</th>\r\n			<th>領域</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">傑出獎</td>\r\n			<td style=\"vertical-align: top;\">CCU01</td>\r\n			<td style=\"vertical-align: top;\">羅習五</td>\r\n			<td style=\"vertical-align: top;\">中正大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">優等獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU04</td>\r\n			<td style=\"vertical-align: top;\">黃執中</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">優等獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU01</td>\r\n			<td style=\"vertical-align: top;\">莊漢聲</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">優等獎</td>\r\n			<td style=\"vertical-align: top;\">CCU09</td>\r\n			<td style=\"vertical-align: top;\">陳育文</td>\r\n			<td style=\"vertical-align: top;\">中正大學</td>\r\n			<td style=\"vertical-align: top;\">數理組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">優等獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU20</td>\r\n			<td style=\"vertical-align: top;\">蔡文杰</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">生醫組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">優等獎</td>\r\n			<td style=\"vertical-align: top;\">CCU04</td>\r\n			<td style=\"vertical-align: top;\">張國恩</td>\r\n			<td style=\"vertical-align: top;\">中正大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU30</td>\r\n			<td style=\"vertical-align: top;\">黃芷翎</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">生醫組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCHU06</td>\r\n			<td style=\"vertical-align: top;\">許哲瑋</td>\r\n			<td style=\"vertical-align: top;\">中興大學</td>\r\n			<td style=\"vertical-align: top;\">生醫組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU03</td>\r\n			<td style=\"vertical-align: top;\">劉至行</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\"><span style=\"background-color:Yellow;\"><strong>佳作獎</strong></span></td>\r\n			<td style=\"vertical-align: top;\"><span style=\"background-color:Yellow;\"><strong>NCKU25</strong></span></td>\r\n			<td style=\"vertical-align: top;\"><span style=\"background-color:Yellow;\"><strong>楊政達</strong></span></td>\r\n			<td style=\"vertical-align: top;\"><span style=\"background-color:Yellow;\"><strong>成功大學</strong></span></td>\r\n			<td style=\"vertical-align: top;\"><span style=\"background-color:Yellow;\"><strong>人社組</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">CCU02</td>\r\n			<td style=\"vertical-align: top;\">賴槿峰</td>\r\n			<td style=\"vertical-align: top;\">中正大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCHU03</td>\r\n			<td style=\"vertical-align: top;\">李明蒼</td>\r\n			<td style=\"vertical-align: top;\">中興大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU02</td>\r\n			<td style=\"vertical-align: top;\">曾碩彥</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NSYSU13</td>\r\n			<td style=\"vertical-align: top;\">雷漢杰</td>\r\n			<td style=\"vertical-align: top;\">中山大學</td>\r\n			<td style=\"vertical-align: top;\">數理組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">CCU08</td>\r\n			<td style=\"vertical-align: top;\">陸子強</td>\r\n			<td style=\"vertical-align: top;\">中正大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NSYSU03</td>\r\n			<td style=\"vertical-align: top;\">魏嘉建</td>\r\n			<td style=\"vertical-align: top;\">中山大學</td>\r\n			<td style=\"vertical-align: top;\">工程組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NSYSU06</td>\r\n			<td style=\"vertical-align: top;\">陳俊霖</td>\r\n			<td style=\"vertical-align: top;\">中山大學</td>\r\n			<td style=\"vertical-align: top;\">生醫組</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align: top;\">佳作獎</td>\r\n			<td style=\"vertical-align: top;\">NCKU24</td>\r\n			<td style=\"vertical-align: top;\">邱靜如</td>\r\n			<td style=\"vertical-align: top;\">成功大學</td>\r\n			<td style=\"vertical-align: top;\">人社組</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>在104台綜大&quot;年輕學者創新研究成果選拔&quot;中</p><p>楊政達老師的研究計畫&quot;視力無eye:眼睛檢查自己來&quot;榮獲 &quot;創新研究獎佳作&quot;</p><p>以下為104台綜大&quot;年輕學者創新研究成果選拔&quot;審查結果</p><p><a href=\"http://ord.ncku.edu.tw/files/14-1003-144625,r1844-1.php?Lang=zh-tw\">http://ord.ncku.edu.tw/files/14-1003-144625,r1844-1.php?Lang=zh-tw</a></p>', '', '0', '', '0', '2015-10-29 09:35:26', '2015-10-29 09:57:16'),
(40, 'A-4562', '楊政達老師的五院拜會行程', 'admin', '公告', '<p>楊政達老師獲選十大傑出青年後，有滿滿的行程需要跑呀!!</p>\n\n<p>今天是&quot;當選人公關拜會行程 &quot; ! ! &nbsp;&nbsp;<span style=\"line-height: 1.6em;\">從行政院到總統府，五院都跑透透囉</span></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/e6cegNV.jpg\" style=\"width:100%;\" /></p>\n\n<p><a href=\"http://www.ey.gov.tw/News_Content2.aspx?n=F8BAEBE9491FC830&amp;sms=99606AC2FCD53A3A&amp;s=EE0CE2D63488B6BE\" style=\"font-size: 13px; line-height: 20.8px;\">http://www.ey.gov.tw/News_Content2.aspx?n=F8BAEBE9491FC830&amp;sms=99606AC2FCD53A3A&amp;s=EE0CE2D63488B6BE</a></p>\n', '<p>楊政達老師獲選十大傑出青年後，有滿滿的行程需要跑呀!!</p><p>今天是&quot;當選人公關拜會行程 &quot; ! ! &nbsp;&nbsp;<span style=\"line-height: 1.6em;\">從行政院到總統府，五院都跑透透囉</span></p><p>&nbsp;</p><p><img alt=\"\" src=\"http://i.imgur.com/e6cegNV.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-10-29 10:02:47', '2015-10-29 10:07:11'),
(41, 'A-4856', '楊政達老師參與 第53屆十大傑出青年 青年創新論壇', 'admin', '公告', '<p>第53屆十大傑出青年 青年創新論壇</p>\r\n\r\n<p><span style=\"color: rgb(76, 76, 62); font-family: Arial, Helvetica, sans-serif; letter-spacing: 1.04px; line-height: 23.4px; background-color: rgb(255, 252, 235);\">透過傑出青年的分享，希望能激勵年輕人培養自身能力、肩負更大的社會責任。</span></p>\r\n\r\n<p><span style=\"color: rgb(76, 76, 62); font-family: Arial, Helvetica, sans-serif; letter-spacing: 1.04px; line-height: 23.4px; background-color: rgb(255, 252, 235);\">精采影片不容錯過唷!!</span></p>\r\n\r\n<p><a href=\"https://www.youtube.com/watch?v=TIXdiZ6ilY4&amp;feature=youtu.be\">https://www.youtube.com/watch?v=TIXdiZ6ilY4&amp;feature=youtu.be</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>第53屆十大傑出青年 青年創新論壇</p><p><span style=\"color: rgb(76, 76, 62); font-family: Arial, Helvetica, sans-serif; letter-spacing: 1.04px; line-height: 23.4px; background-color: rgb(255, 252, 235);\">透過傑出青年的分享，希望能激勵年輕人培養自身能力、肩負更大的社會責任。</span></p><p><span style=\"color: rgb(76, 76, 62); font-family: Arial, Helvetica, sans-serif; letter-spacing: 1.04px; line-height: 23.4px; background-color: rgb(255, 252, 235);\">精采影片不容錯過唷!!</span></p><p><a href=\"https://www.youtube.com/watch?v=TIXdiZ6ilY4&amp;feature=youtu.be\">https://www.youtube.com/watch?v=TIXdiZ6ilY4&amp;feature=youtu.be</a></p>', '', '0', '', '0', '2015-11-19 08:40:47', '2015-11-19 08:40:47'),
(42, 'A-1745', '楊政達老師參與十大傑出青年頒獎典禮', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/TxzJgZ0.jpg\" style=\"width:100%;\" /></p>\n', '<p><img alt=\"\" src=\"http://i.imgur.com/TxzJgZ0.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2015-11-19 09:42:11', '2015-11-19 09:43:53'),
(43, 'A-4589', '貝式分析在序列抽樣模型的應用工作坊', 'admin', '公告', '<p style=\"color: rgb(0, 0, 0); font-family: pmingliu, serif; font-size: 16px; line-height: normal; background-image: initial; background-repeat: initial;\"><img alt=\"\" src=\"http://i.imgur.com/7p3PATY.jpg\" style=\"width:100%;\" /></p>\n\n<p>為了普及序列抽樣分析模型，並引進最新、潮流的貝式版本的分析。</p>\n\n<p>我們邀請澳洲數學心理學大師Andrew Heathcote、Ami Eidels與Daniel Little</p>\n\n<p>至成功大學給予專題演講與實作訓練。<span style=\"line-height: 1.6em;\">​透過兩天會議教導學員相關的理論知識，</span></p>\n\n<p><span style=\"line-height: 1.6em;\">應用R語言工具箱進行資料分析與推論，進行實作分析以達學以致用功效。</span></p>\n', '<p style=\"color: rgb(0, 0, 0); font-family: pmingliu, serif; font-size: 16px; line-height: normal; background-image: initial; background-repeat: initial;\"><img alt=\"\" src=\"http://i.imgur.com/7p3PATY.jpg\" style=\"width:100%;\" /></p><p>為了普及序列抽樣分析模型，並引進最新、潮流的貝式版本的分析。</p><p>我們邀請澳洲數學心理學大師Andrew Heathcote、Ami Eidels與Daniel Little</p><p>至成功大學給予專題演講與實作訓練。<span style=\"line-height: 1.6em;\">​透過兩天會議教導學員相關的理論知識，</span></p>', '', '0', '', '0', '2015-11-19 10:55:28', '2015-11-19 11:06:12'),
(44, 'A-5604', '[認知、科技與設計課程]  葉怡玉老師的UX工作坊', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/KbvbytU.jpg\" style=\"line-height: 1.6em; width:100%;\" /></p>\n\n<p style=\"font-size: 13px; line-height: 20.8px;\">2015/11/21</p>\n\n<p style=\"font-size: 13px; line-height: 20.8px;\">葉怡玉老師特地南下為我們進行UX工作坊的教學</p>\n\n<p style=\"font-size: 13px; line-height: 20.8px;\">謝謝葉老師的精彩課程</p>\n\n<p style=\"font-size: 13px; line-height: 20.8px;\">也謝謝楊政達老師跟黃碧群老師全程的教導跟協助</p>\n\n<p style=\"font-size: 13px; line-height: 20.8px;\">使UX工作坊順利落幕</p>\n', '<p><img alt=\"\" src=\"http://i.imgur.com/KbvbytU.jpg\" style=\"line-height: 1.6em; width:100%;\" /></p><p style=\"font-size: 13px; line-height: 20.8px;\">2015/11/21</p><p style=\"font-size: 13px; line-height: 20.8px;\">葉怡玉老師特地南下為我們進行UX工作坊的教學</p><p style=\"font-size: 13px; line-height: 20.8px;\">謝謝葉老師的精彩課程</p>', '', '0', '', '0', '2015-11-23 01:52:01', '2015-11-26 06:47:54'),
(45, 'A-7110', '2016.01.07張仁和老師來成大演講', 'admin', '公告', '<p>今天張老師來成大為通識心理學進行演講 &quot; 社會與文化心理學 : 變動的世界與變動的心 &quot;</p>\n\n<p>在演講後張老師與VCMLab的成員一起共進午餐，是好吃的永林牛肉鍋唷!!</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/Fc3tyfy.jpg\" style=\"width:100%;\" /></p>\n', '<p>今天張老師來成大為通識心理學進行演講 &quot; 社會與文化心理學 : 變動的世界與變動的心 &quot;</p><p>在演講後張老師與VCMLab的成員一起共進午餐，是好吃的永林牛肉鍋唷!!</p><p><img alt=\"\" src=\"http://i.imgur.com/Fc3tyfy.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2016-01-18 10:08:20', '2016-01-18 10:08:20'),
(46, 'A-4021', '2016.01.08 認知、科技與設計課程期末成果展圓滿結束', 'admin', '公告', '<p>今天是 &quot; 認知、科技與設計課程期末成果展 &quot;</p>\n\n<p>同學們的想法和理念都非常的新穎兼具創意!!</p>\n\n<p>謝謝參與成果展的全體人員</p>\n\n<p><img alt=\"\" src=\"http://i.imgur.com/s2tGhiA.jpg\" style=\"width:100%;\" /></p>\n', '<p>今天是 &quot; 認知、科技與設計課程期末成果展 &quot;</p><p>同學們的想法和理念都非常的新穎兼具創意!!</p><p>謝謝參與成果展的全體人員</p><p><img alt=\"\" src=\"http://i.imgur.com/s2tGhiA.jpg\" style=\"width:100%;\" /></p>', '', '0', '', '0', '2016-01-18 10:11:59', '2016-01-18 10:11:59'),
(47, 'A-3190', '楊政達老師-體驗劇場助教一名', 'admin', '誠徵公告', '<p>1、[工作地點] 社科院大樓80201</p>\r\n\r\n<p>2、[工作職稱] 體驗劇場助教</p>\r\n\r\n<p>3、[工作條件] 1. 不限科系，工設、資訊、工程、等相關科系尤佳<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2. 凡有有興趣者皆可參加</p>\r\n\r\n<p>4、[工作內容] 跟課、協助備課、使用者經驗、協助app介面設計與改善<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 錄取者2/20需參加助教工作坊<br />\r\n5、[工作時間]課程時間每周二5~6節，其他工作時間可彈性調整<br />\r\n6、[聘期] 105/3開始，共5個月<br />\r\n7、[薪資待遇] 5000元/月</p>\r\n\r\n<p>8、[聯絡方式] 意者請將個人履歷表、自傳以e-mail方式回覆<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 至張小姐 jessicalikeu@gmail.com<br />\r\n9、[課程介紹]&nbsp;<br />\r\nhttp://class-qry.acad.ncku.edu.tw/syllabus/online_display.php?syear=0104&amp;sem=2&amp;co_no=D836100&amp;class_code=</p>\r\n\r\n<p>欲應徵者，信件標題註明 [應徵體驗劇場助教]-王小明<br />\r\n請備妥&quot;簡歷&quot;電子檔寄至jessicalikeu@gmail.com，</p>\r\n', '<p>1、[工作地點] 社科院大樓80201</p><p>2、[工作職稱] 體驗劇場助教</p>', '', '0', '', '1', '2016-01-27 02:43:41', '2016-01-27 02:45:50'),
(48, 'A-8181', '楊政達老師「永續藍海 熠星賞評」年度成果展 接受表揚', 'admin', '公告', '<div dir=\"ltr\">由國立成功大學頂尖總中心在成大藝坊舉辦「永續藍海 熠星賞評」年度成果展，<span style=\"line-height: 1.2em; font-size: 13px;\">恭喜楊政達老師獲得表揚!!</span></div>\r\n', '', '', '0', '', '1', '2016-02-23 07:30:41', '2016-02-23 07:35:02'),
(49, 'A-3056', '楊教授所開立之通識心理學名列103學年度下學期學生選課第一志願前十名', 'admin', '公告', '<p><strong>楊政達教授通識課程名列成功大學學生<u>第1志願</u>的前十名，從過往的十大課程來看，學生選修最迫切的都在心理以及健康方面，創意或領導的主題也頗受歡迎，這反映出學生除了他們的專門之外，通識課程的確提供了另一個全人教育的方向。社會科學或生命科學領域的課，通常理論與實務兼具，科際整合或批判思考討論的機會多，頗受同學好評。</strong></p>\r\n', '<p><strong>楊政達教授通識課程名列成功大學學生<u>第1志願</u>的前十名，從過往的十大課程來看，學生選修最迫切的都在心理以及健康方面，創意或領導的主題也頗受歡迎，這反映出學生除了他們的專門之外，通識課程的確提供了另一個全人教育的方向。社會科學或生命科學領域的課，通常理論與實務兼具，科際整合或批判思考討論的機會多，頗受同學好評。</strong></p>', '', '0', '', '0', '2016-03-02 05:04:03', '2016-03-02 05:04:03'),
(50, 'A-8345', '視覺新課程即將開始', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/mo6m0DC.jpg\" style=\"width: 100%\" /></p>\n\n<p>心理學與臨床眼科的結合、從基礎到實作的豐富內容</p>\n\n<p>研究團隊包含成大心理學系的楊政達副教授、龔俊嘉副教授、黃碧群助理教授、<br />\n輔仁大學醫學系的李憶菁教授以及台北榮總的林柏剛醫師</p>\n\n<p>精彩的課程有你的參與會更佳驚艷</p>\n\n<p><br />\n&nbsp;</p>\n', '<p><img alt=\"\" src=\"http://i.imgur.com/mo6m0DC.jpg\" style=\"width: 100%\" /></p><p>心理學與臨床眼科的結合、從基礎到實作的豐富內容</p><p>精彩的課程有你的參與會更佳驚艷</p>', '', '0', '', '0', '2016-03-03 02:55:28', '2016-03-03 02:58:00'),
(51, 'A-8000', 'VCMLab歡迎你的加入', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/WAEzwZm.jpg\" style=\"width:100%\" /></p>\n', '<p><img alt=\"\" src=\"http://i.imgur.com/WAEzwZm.jpg\" style=\"width:100%\" /></p>', '', '0', '', '0', '2016-03-03 02:56:57', '2016-03-03 02:58:08');
INSERT INTO `source_list` (`No`, `id`, `title`, `author`, `class`, `content`, `content_preview`, `permission`, `is_delete`, `link`, `marquee`, `creat_time`, `edit_time`) VALUES
(52, 'A-4542', '楊政達老師至佳音電台接受專訪', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/dw9VhVE.jpg\" style=\"width:100%;\"/></p>\n', '<p><img alt=\"\" src=\"http://i.imgur.com/dw9VhVE.jpg\" style=\"width:100%;\"></p><br>', '', '0', '', '0', '2016-03-28 07:03:47', '2016-03-28 07:03:47'),
(53, 'A-7082', '[演講公告] 使用者經驗與遊戲化設計', 'admin', '公告', '<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">演講主題：使用者經驗與遊戲化設計</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">主 講 人：蔡世斌（新創團隊Wishcan Founder &amp; UX Strategy）</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">演講時間：4/19(二) 13:00-15:00</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">演講地點：<font color=\"#000000\">光復校區中文系館1F文學院講堂</font></div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">演講大綱：</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">&nbsp;</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">一、Gamification操作手法概要</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">二、服務功能解構</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">三、內部動機與外部動機</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">四、四種玩家類型</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">五、成就機制與新流狀態</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">&nbsp;</div>\r\n\r\n<div style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: normal; font-size: 14px;\">\r\n<blockquote class=\"imgur-embed-pub\" data-id=\"7MsAN9i\" lang=\"en\"><a href=\"//imgur.com/7MsAN9i\">View post on imgur.com</a></blockquote>\r\n<script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script></div>\r\n', '', '', '0', '', '1', '2016-03-29 03:35:31', '2016-03-29 03:36:13'),
(54, 'A-3362', '老師寫的書出版了', 'admin', '公告', '<p>書名:Mathematical Models of Perception and Cognition Volume II<br />\r\n是由幾位大師共同辛苦編寫而成的,現在可以看到<a href=\"https://books.google.com.tw/books?id=d_4yDAAAQBAJ&amp;pg=PT67&amp;lpg=PT67&amp;dq=Mathematical+Models+of+Perception+and+Cognition+Volume+2&amp;source=bl&amp;ots=SfLKwAEt3g&amp;sig=SU9O2lUmQ_xY585qB_vHXMC9UC8&amp;hl=zh-TW&amp;sa=X&amp;ved=0ahUKEwiu26K08oXNAhUEpJQKHaqrAmUQ6AEIIDAA#v=onepage&amp;q=Mathematical%20Models%20of%20Perception%20and%20Cognition%20Volume%202&amp;f=false\">線上電子書</a>了</p>\r\n\r\n<p>第10章是老師寫的<br />\r\nSystems Factorial Technology Provides New Insights on the Perceptual Comparison and Decision Process in Change Detection Yang Cheng-Ta&nbsp;</p>\r\n', '', '', '0', '', '1', '2016-06-01 10:57:52', '2016-06-01 10:58:48'),
(55, 'A-5283', '[恭賀] 楊政達老師 榮獲 2016中央研究院年輕學者研究著作獎', 'admin', '公告', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/9FLoSlo.jpg\" style=\"width:100%\" /></p>\r\n', '<p>&nbsp;</p><p><img alt=\"\" src=\"http://i.imgur.com/9FLoSlo.jpg\" style=\"width:100%\" /></p>', '', '0', '', '0', '2016-06-02 07:35:10', '2016-06-26 09:26:38'),
(56, 'A-9495', '[恭賀]實驗室畢業學生張婷昀同學申請上多所頂尖學校博士班，為她鼓掌喝采!!!', 'admin', '公告', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">恭喜實驗室畢業學生張婷昀同學申請上多所頂尖學校博士班，為她鼓掌喝采!!!</span></p>\r\n\r\n<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">以下是申請上學校名單:</span></p>\r\n\r\n<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">1.McMaster University(CA) Psychology, Neuroscience, &amp; Behaviour</span><br style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\" />\r\n<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">2.McMaster University(CA) MiNDS</span><br style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\" />\r\n<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">3.Western University(CA)&nbsp; Neuroscience</span><br style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\" />\r\n<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">4.University of Minnesota(US) Psychology</span><br style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\" />\r\n<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">5.University of Florida(US) Applied Physiology &amp; Kinesiology</span><br style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\" />\r\n<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">6.Vanderbilt University(US) Psychological Sciences</span></p>\r\n', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">恭喜實驗室畢業學生張婷昀同學申請上多所頂尖學校博士班，為她鼓掌喝采!!!</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.25px; line-height: normal;\">以下是申請上學校名單:</span></p>', '', '0', '', '0', '2016-06-21 05:22:11', '2016-06-21 09:17:15'),
(57, 'A-3590', '7/21-23/2016崑曲研習工作坊 開始報名嚕！！！', 'admin', '公告', '<p><img alt=\"\" src=\"http://i.imgur.com/JZFaBn0.jpg?1\" style=\"width: 100%;\" /></p>\r\n\r\n<p style=\"margin: 0px 0px 6px; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif; font-size: 15px; line-height: 20.7px;\">崑曲研習工作坊 開始報名嚕！！！</p>\r\n\r\n<p style=\"margin: 6px 0px; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif; font-size: 15px; line-height: 20.7px;\">研習時間：21-23/7/2016<br />\r\n報到時間：09:45-10:00 (21/7)<br />\r\n報到地點：成大光復校區 中文系1樓講堂</p>\r\n\r\n<div style=\"display: inline; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif; font-size: 15px; line-height: 20.7px;\">\r\n<p style=\"margin: 0px 0px 6px;\">一律線上報名：<a data-saferedirecturl=\"https://www.google.com/url?hl=zh-TW&amp;q=http://bit.ly/29Y1YNo&amp;source=gmail&amp;ust=1468897270355000&amp;usg=AFQjCNFfFLrnxLttAhzG1vglcGnlutk_2Q\" href=\"http://bit.ly/29Y1YNo\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); text-decoration: none;\" target=\"_blank\">http://bit.ly/29Y1YNo</a><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 6px;\">報名要快，名額只限30人！！！</p>\r\n</div>\r\n', '<p><img alt=\"\" src=\"http://i.imgur.com/JZFaBn0.jpg?1\" style=\"width: 100%;\" /></p><p style=\"margin: 0px 0px 6px; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif; font-size: 15px; line-height: 20.7px;\">崑曲研習工作坊 開始報名嚕！！！</p><p style=\"margin: 0px 0px 6px;\">報名要快，名額只限30人！！！</p>', '', '0', '', '0', '2016-07-18 06:07:26', '2016-07-30 04:53:24'),
(58, 'A-8795', '楊老師發表文章於科技部人文司10509『人文與社會科學簡訊』-從澳洲數學心理學發展談台灣心理學的發展', 'admin', '文章分享', '<p>~從澳洲數學心理學發展談台灣心理學的發展</p>\r\n\r\n<p><iframe frameborder=\"0\" src=\"http://docs.google.com/gview?url=http://vcmlab.psychology.ncku.edu.tw/vcmlab/files/105科技部人文與社會科學簡訊發表-從澳洲數學心理學發展談臺灣心理學的發展.pdf&amp;embedded=true\" style=\"width:900px; height:700px;\"></iframe></p>\r\n', '<p>~從澳洲數學心理學發展談台灣心理學的發展</p><p><iframe frameborder=\"0\" src=\"http://docs.google.com/gview?url=http://vcmlab.psychology.ncku.edu.tw/vcmlab/files/105科技部人文與社會科學簡訊發表-從澳洲數學心理學發展談臺灣心理學的發展.pdf&amp;embedded=true\" style=\"width:900px; height:700px;\"></iframe></p>', '', '0', '', '1', '2016-10-05 10:29:48', '2016-10-07 03:29:02'),
(59, 'A-2309', '成大心理學系誠徵眼動研究專題生1名', 'admin', '誠徵公告', '<p>【誠徵】成大心理學系誠徵眼動研究專題生1名</p>\r\n\r\n<p><br />\r\n1、[工作地點] 成大社會科學大樓心理系北棟5樓538室</p>\r\n\r\n<p>2、[工作職稱] 眼動研究專題生</p>\r\n\r\n<p>3、[工作條件] 心理學系、理工學院相關科系，對眼動相關研究感興趣者尤佳</p>\r\n\r\n<p>4、[工作內容] 學習眼動程式編寫、收集與分析資料以及論文寫作</p>\r\n\r\n<p>5、[工作時間] 彈性可面談，需配合調整工作時間</p>\r\n\r\n<p>6、[聯絡方式與備註] 如欲應徵者，請備妥請將個人資料、系別、電話等以e-mail方式回覆至z10403034@email.ncku.edu.tw 張小姐，在跟您約時間與楊老師面談。/ 辦公室電話06-2386728 / 實驗室地址:成大社會科學大樓心理系北棟5樓540室</p>\r\n\r\n<p>7、[信件標題] 請應徵者於信件標註&quot;眼動研究專題生--xxx(您的姓名)&quot;</p>\r\n\r\n<p>公告單位:成功大學心理系 楊政達老師辦公室<br />\r\n相關網址 : 成功大學心理系http://psychology.ncku.edu.tw/<br />\r\nVCMLAB http://vcmlab.psychology.ncku.edu.tw/vcmlab/</p>\r\n', '<p>【誠徵】成大心理學系誠徵眼動研究專題生1名</p><p>2、[工作職稱] 眼動研究專題生</p><p>3、[工作條件] 心理學系、理工學院相關科系，對眼動相關研究感興趣者尤佳</p><p>4、[工作內容] 學習眼動程式編寫、收集與分析資料以及論文寫作</p>', '', '0', '', '1', '2016-10-05 10:30:55', '2016-10-05 10:30:55'),
(60, 'A-8414', '楊老師發表文章於科技部人文司10509『人文與社會科學簡訊』-從澳洲數學心理學發展談台灣心理學的發展', 'admin', '公告', '<p>題目:</p>\r\n\r\n<p>從澳洲數學心理學發展談台灣心理學的發展</p>\r\n\r\n<p><iframe frameborder=\"0\" src=\"http://docs.google.com/gview?url=http://vcmlab.psychology.ncku.edu.tw/vcmlab/files/105科技部人文與社會科學簡訊發表-從澳洲數學心理學發展談臺灣心理學的發展.pdf&amp;embedded=true\" style=\"width:800px; height:700px;\"></iframe></p>\r\n', '<p>題目:</p><p>從澳洲數學心理學發展談台灣心理學的發展</p><p><iframe frameborder=\"0\" src=\"http://docs.google.com/gview?url=http://vcmlab.psychology.ncku.edu.tw/vcmlab/files/105科技部人文與社會科學簡訊發表-從澳洲數學心理學發展談臺灣心理學的發展.pdf&amp;embedded=true\" style=\"width:800px; height:700px;\"></iframe></p>', '', '0', '', '1', '2016-10-06 04:05:58', '2016-10-07 03:35:51'),
(61, 'A-9884', '1月4日歷史文物館開幕，楊老師和中文系高美華老師將率領修課學生進行開幕演出喔～歡迎大家共襄盛舉！', 'admin', '公告', '<p><img src=\"http://vcmlab.psychology.ncku.edu.tw/vcmlab/img/%E9%96%8B%E5%B9%95.jpg\" style=\"width:100%;></p>\r\n', '<p><img src=\"http://vcmlab.psychology.ncku.edu.tw/vcmlab/img/%E9%96%8B%E5%B9%95.jpg\" style=\"width:100%;></p>', '', '0', '', '1', '2016-12-29 04:59:34', '2016-12-29 06:20:29'),
(62, 'A-7084', '由Daniel Little, Nicholas Altieri, Mario Fific 與楊老師合著的書Systems Factorial Technology 已經出版囉!!', 'admin', '公告', '<p>有興趣的人可以看看喔~</p>\r\n\r\n<p>書名:<br />\r\n&nbsp;Systems Factorial Technology: A Theory Driven Methodology for the Identification of Perceptual and Cognitive Mechanisms<br />\r\n&nbsp;</p>\r\n', '<p>有興趣的人可以看看喔~</p>', '', '0', 'https://www.elsevier.com/books/systems-factorial-technology/little/978-0-12-804315-8', '1', '2017-04-14 04:07:37', '2017-04-14 04:07:37'),
(63, 'A-1582', '打造東方矽文明：楊政達》閱讀教育扎文創的根', 'admin', '文章分享', '<p>~打造東方矽文明：楊政達》閱讀教育扎文創的根</p>\r\n', '<p>~打造東方矽文明：楊政達》閱讀教育扎文創的根</p>', '', '1', 'http://opinion.chinatimes.com/20170423002887-262105', '1', '2017-04-26 07:41:38', '2017-04-26 07:41:38'),
(64, 'A-5809', '楊老師投稿文章~打造東方矽文明：楊政達》閱讀教育扎文創的根 登上中時電子報', 'admin', '公告', '<p><iframe height=\"800px;\" src=\"https://drive.google.com/file/d/0B9D4n8sa2MQkX0hqM1QxcUp2dVU/preview\" width=\"100%\"></iframe></p>\r\n', '<p><iframe height=\"800px;\" src=\"https://drive.google.com/file/d/0B9D4n8sa2MQkX0hqM1QxcUp2dVU/preview\" width=\"100%\"></iframe></p>', '', '0', '', '1', '2017-04-26 07:59:53', '2017-05-22 05:30:44'),
(65, 'A-5887', '結合戲劇與解謎 成大創新課程期末展演「散，墜」6月10/11登場', 'admin', '公告', '<p>​</p>\r\n<script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script><script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"\">></script>\r\n\r\n<blockquote class=\"imgur-embed-pub\" data-id=\"a/KvaEw\" lang=\"en\">&nbsp;</blockquote>\r\n<script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>\r\n\r\n<blockquote class=\"imgur-embed-pub\" data-id=\"a/m75Co\" lang=\"en\">&nbsp;</blockquote>\r\n<script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>\r\n\r\n<p><span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">成功大學「體驗劇場」與「古典戲曲評賞」課程期末共同展演「散，墜」， 6月10日、11日分別於成大光復校區鳳凰樹劇場、歷史文物館盛大舉行，觀眾除了進入劇場欣賞演出，還能透過大型實境解謎遊戲深入了解故事內容，別出心裁的活動，要帶給觀眾全新的體驗，歡迎各界蒞臨欣賞。</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">體驗劇場、古典戲曲評賞，是成大心理系教授楊政達與中文系高美華教授共同帶領學生執行「成大創意三角洲計畫」的創新課程教學，兩位老師分別開課並共同授課，不僅將心理學的知識與古典劇落的美學融入教學，更企圖共創不同以往的劇場表演。</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">「散，墜」，的主軸為崑劇玉簪記，6月10日下午14時00分於鳳凰樹劇場開演。演出劇目包含〈琴挑〉、〈問病〉、〈偷詩〉及〈秋江〉。由修課學生、鑽研崑曲多年的楊政達老師與高美華老師，以及專業的崑劇團隊共同演出，要呈現出精緻典雅、藝文薈萃的傳統崑劇表演。另有學生新編的創意玉簪記短劇。</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">6月11日上午9時至17時在歷史文物館登場的是大型實境解謎遊戲。修課學生與芒果遊戲工作室共同製作，以玉簪記故事的時代背景為基底，學生們發揮創意並投注大量時間與腦力產出謎題，帶領玩者藉由解謎過程，一步步了解玉簪記的故事內容，讓玩者如玉簪記的男女主角，在布景裡尋求關鍵、再度逢。</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">「散，墜」邀請畢業校友、成大師生、喜愛崑曲與戲劇的朋友們，共同欣賞參與玉簪記的文化意涵，並藉以傳承、推廣崑曲藝術，希望以成大校園為基地，成大學生為種子，讓古典劇曲的幼苗能夠深植年輕學子的心，進而成長茁壯。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">「散，墜」，以兩個字象徵玉簪記男女主角潘必正與陳妙常的邂逅分離、墜入情網，在傳統演出的同時也嘗試重新演繹崑曲文化，使觀眾得以多種角度欣賞戲曲之美。為期兩天的活動，歡迎各位的蒞臨。</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">崑曲演出時間：106年6月10日 13：30入場 / 14：00開演</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">崑曲演出地點：成功大學鳳凰樹劇場</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">實境解謎時間：106年6月11日 9：00開放 / 17：00結束</span><br style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">實境解謎地點：成功大學歷史文物館</span></p>\r\n\r\n<p><a href=\"https://www.facebook.com/%E6%95%A3%E5%A2%9C-904547896351682/\"><span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">「散，墜」</span></a><a href=\"https://www.facebook.com/%E6%95%A3%E5%A2%9C-904547896351682/\"><font color=\"#666666\" face=\"pmingliu, arial, verdana, verdana\"><span style=\"font-size: 15px;\">粉絲專頁</span></font></a></p>\r\n', '<p>​</p><p><a href=\"https://www.facebook.com/%E6%95%A3%E5%A2%9C-904547896351682/\"><span style=\"color: rgb(102, 102, 102); font-family: pmingliu, arial, verdana, verdana; font-size: 15px;\">「散，墜」</span></a><a href=\"https://www.facebook.com/%E6%95%A3%E5%A2%9C-904547896351682/\"><font color=\"#666666\" face=\"pmingliu, arial, verdana, verdana\"><span style=\"font-size: 15px;\">粉絲專頁</span></font></a></p>', '', '0', '', '1', '2017-06-08 07:57:09', '2017-06-08 09:59:36'),
(66, 'A-5377', '恭喜 專題生 黃軍元獲得科技部大專生專題計劃補助', 'admin', '公告', '<p><span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_PLAN_CHI_DESCt\">計畫名稱：</span><span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_PLAN_CHI_DESCc\">利用系統多因子技術探討複合式搜尋歷程</span><br />\r\n<span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_ST_ENDt\">執行起迄：</span><span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_ST_ENDc\">2017/07/01~2018/02/28</span><br />\r\n<span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_PROFESSORt\">指導教授：</span><span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_PROFESSORc\">楊政達</span><br />\r\n<span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_AUD_AMTt\">核定金額：</span><span id=\"wUctlAwardQueryPage_grdResult_ctl02_lblAWARD_AUD_AMTc\">48,000元</span></p>\r\n', '', '', '0', '', '1', '2017-06-22 04:18:22', '2017-06-22 04:18:22'),
(67, 'A-3804', '校內訪問「年輕學者典範」專欄系列報導 勇者無懼-楊政達教授 把挫折當成挑戰', 'admin', '公告', '<p><iframe height=\"800px;\" src=\"https://drive.google.com/file/d/0B9D4n8sa2MQkRGdKRTRFb1JRa3c/preview\" width=\"100%\"></iframe></p>\r\n', '<p><iframe height=\"800px;\" src=\"https://drive.google.com/file/d/0B9D4n8sa2MQkRGdKRTRFb1JRa3c/preview\" width=\"100%\"></iframe></p>', '', '0', '', '1', '2017-07-14 04:23:35', '2017-07-14 04:29:20');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `account_web_master`
--
ALTER TABLE `account_web_master`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `album_list`
--
ALTER TABLE `album_list`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `coop_list`
--
ALTER TABLE `coop_list`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `cv_list`
--
ALTER TABLE `cv_list`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `event_list`
--
ALTER TABLE `event_list`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `lab_member`
--
ALTER TABLE `lab_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `paper_list`
--
ALTER TABLE `paper_list`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `source_list`
--
ALTER TABLE `source_list`
  ADD PRIMARY KEY (`No`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `account_web_master`
--
ALTER TABLE `account_web_master`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用資料表 AUTO_INCREMENT `album_list`
--
ALTER TABLE `album_list`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用資料表 AUTO_INCREMENT `coop_list`
--
ALTER TABLE `coop_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `course_list`
--
ALTER TABLE `course_list`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- 使用資料表 AUTO_INCREMENT `cv_list`
--
ALTER TABLE `cv_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用資料表 AUTO_INCREMENT `event_list`
--
ALTER TABLE `event_list`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- 使用資料表 AUTO_INCREMENT `lab_member`
--
ALTER TABLE `lab_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `paper_list`
--
ALTER TABLE `paper_list`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- 使用資料表 AUTO_INCREMENT `source_list`
--
ALTER TABLE `source_list`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
