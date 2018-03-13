-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2018 lúc 04:33 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vpp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `k` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `v` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`id`, `k`, `v`) VALUES
(1, 'left-sidebar', '<h3 style=\"text-align: center;\"><span style=\"color: #ff0000;\"><img src=\"img/banner1.jpg\" width=\"190\" height=\"70\" />&nbsp; Nội dung quảng c&aacute;o !</span></h3>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>'),
(2, 'banner-main', '<p style=\"text-align: center;\"><img src=\"img/banner2.PNG\" alt=\"\" width=\"1347\" height=\"512\" /></p>\r\n<h1 style=\"text-align: center;\"><span style=\"color: #ff9900;\"><strong>Ch&agrave;o mừng bạn đ&atilde; đến với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i !</strong></span></h1>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(3, '1', '<p><img src=\"img/logo.png\" alt=\"\" width=\"670\" height=\"250\" /></p>'),
(4, '2', '<p><img src=\"img/logo.png\" width=\"327\" height=\"122\" /></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `ten` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `ten`, `diachi`, `email`, `sdt`, `content`) VALUES
(1, 'asdasda', 'asdasd', 'cuongdcdev@gmail.com', '0123456789', 'asdasd'),
(2, 'cuong', 'ở nhà', 'duongcuong96@gmail.com', '0123456789', 'adasdasdasdasd'),
(3, 'tuana', 'Hà nội', 'chientuan084@gmail.com', '0989765049', 'bán hoa trái phép'),
(4, 'BVGV', 'BHBH', 'chientuan084@gmail.com', '0989765049', 'dhbhbh bbebsbhbeshbd bdshb hbhsb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `info`) VALUES
(13, 'Đầm xinh', 'Đầm'),
(14, 'Váy', 'VáyVáyVáyVáyVáy'),
(15, 'Quần Âu', 'Quần ÂuQuần ÂuQuần Âu'),
(16, 'Áo khoác', 'Áo khoác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp`
--

CREATE TABLE `sp` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp`
--

INSERT INTO `sp` (`id`, `menu`, `avatar`, `name`, `info`, `excerpt`, `price`) VALUES
(15, 13, 'ngoc.jpg', 'Bộ thể thao', '<p>L&agrave; bộ kết hợp phong c&aacute;ch trẻ trung hiện đại, tinh nghịch, ph&ugrave; hợp với những bạn năng động</p>', '', '200000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 : đang chờ giao | 1 : ok | -1 : hủy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`id`, `ten`, `diachi`, `sdt`, `email`, `status`) VALUES
(1, 'cuong', 'cuong', '1234566', 'cuong@gmail.com', 0),
(2, 'cuong', 'cuong', '1234566', 'cuong@gmail.com', 0),
(3, 'cuong', 'cuong', '1234566', 'cuong@gmail.com', 0),
(4, 'cuong', 'cuong', '1234566', 'cuong@gmail.com', 0),
(5, 'cường', 'cuong', '1234566', 'cuong@gmail.com', 0),
(6, 'tuan', 'Thanh Hoa', '01666665545', 'chientuan084@gmail.com', 0),
(7, 'vbhvbhbh', 'bhdbhbhbhb', '545455', 'chientuan084@gmail.com', 0),
(8, 'ggyhgyg', 'ygygy', '554545454', 'chientuan084@gmail.com', 0),
(9, 'dffghbgf', 'Ha Noi', '0989765049', 'chientuan084@gmail.com', 0),
(10, 'tuan', 'tuan', '01646562678', 'ngoc@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `info`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Bờ la bờ lô bờ la là ra bờ ao\r\n');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `k` (`k`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `sp`
--
ALTER TABLE `sp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
