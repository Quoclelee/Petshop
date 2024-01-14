-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 08:42 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thucung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blsanpham`
--

CREATE TABLE `blsanpham` (
  `id_bl` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `binh_luan` text NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blsanpham`
--

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(1, 1, 'aneuuahe', '0987654321', 'bé rất ngoan và dth', '2023-05-06 09:19:30'),
(2, 2, 'sdfhs', '0987654321', 'thú khỏe mạnh nha', '2023-05-06 09:19:30'),
(3, 3, 'hưehgu', '0987654321', 'hơi quậy', '2023-05-06 09:19:30'),
(4, 4, 'htnrtmr', '0987654321', 'ok', '2023-05-06 09:19:30'),
(5, 5, 'sbffebr', '0987654321', 'bé hơi yếu', '2023-05-06 09:19:30'),
(6, 6, 'Hoàng Minh Tuấn', '0987654321', 'ngoan', '2022-06-19 10:41:27'),
(7, 10, 'vnfddnf', '0987654321', 'hết hàng r', '2022-06-20 14:32:34'),
(8, 13, 'fjrsjsjtr', '0987654321', 'ok', '2022-07-17 15:05:12'),
(9, 19, 'Lê Văn Tân', '0987654321', 'đẹp nha', '2022-02-28 05:23:01'),
(11, 21, 'Nguyễn Thị Hồng', '0987654321', 'ok', '2022-03-14 03:34:35'),
(12, 28, 'Le Van Tan', '0987654321', 'suc khoe bé rất tốt', '2022-04-07 12:40:38'),
(15, 29, 'Quat Dai Ca', '0987654321', 'dc', '2022-04-27 14:44:25'),
(16, 31, 'qwqwq', '0987654321', 're', '2022-04-27 14:50:29'),
(17, 25, 'wqwq', '0987654321', 'ok', '2022-04-27 15:18:07'),
(18, 34, 'ahihi', '0987654321', 'sản phẩm tốt', '2023-07-05 10:27:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'Giống chó cảnh\r\n'),
(2, 'Giống mèo cảnh'),
(3, 'Phụ kiện thú cưng'),
(4, 'Spa & Crooming'),
(5, 'Hợp tác giống'),
(6, 'Phổ biến nhất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id_quangcao` int(11) NOT NULL,
  `id_thue` int(11) NOT NULL,
  `ten_anh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id_quangcao`, `id_thue`, `ten_anh`) VALUES
(1, 3, 'banner01.png'),
(2, 3, 'banner02.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) NOT NULL,
  `anh_sp` varchar(255) NOT NULL,
  `gia_sp` varchar(255) NOT NULL,
  `bao_hanh` varchar(255) NOT NULL,
  `phu_kien` varchar(255) NOT NULL,
  `tinh_trang` varchar(255) NOT NULL,
  `khuyen_mai` varchar(255) NOT NULL,
  `trang_thai` varchar(255) NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(1, 1, 'Bull Pháp', 'Bull-Phap.jpg', '2.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(2, 1, 'Corgi', 'Pembroke-Welsh-Corgi.jpg', '1.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, ''),
(3, 1, 'Shiba', 'Shiba-375x375.jpg', '5.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, ''),
(4, 1, 'Samoyed', 'Samoyed.jpg', '5.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(5, 2, 'Mainee Coon', 'Maine-coon.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n'),
(6, 2, 'Ragdoll', 'Ragdoll.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(7, 2, 'Munchkin', 'meo-munchkin.jpg', '5.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(8, 2, 'Khao Manee', 'Khao-Manee-375x375.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(9, 1, 'Boder Collie', 'Border-Collie.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Giảm 500,000đ khi mua bé thứ 2', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 0, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(10, 4, 'Bengal', 'Bengal.jpg', '2.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(11, 2, 'Ba Tư', 'Meo-ba-tu.jpg', '2.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(12, 2, 'Anh Lông Ngắn', 'Meo-Anh-Long-Ngan.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.'),
(13, 2, 'Anh Lông Dài', 'Meo-Anh-Long-Dai.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n'),
(14, 1, 'Husky', 'Husky.jpg', '5.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n'),
(15, 1, 'Pug', 'Pug.jpg', '3.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n'),
(16, 1, 'Phốc Sóc', 'Phoc-Soc.jpg', '1.000.000', 'Bảo hành 365 ngày', 'Giảm 500,000đ khi mua bé thứ 2', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n'),
(17, 1, 'Alaska', 'Alaska.jpg', '5.000.000', 'Bảo hành 365 ngày', 'Miễn phí khám sức khỏe tháng đầu tiên', 'Sức khỏe 100%', 'Bảo hiểm sức khỏe lên tới 1,000,000đ', 'Còn hàng', 1, 'Bé hoàn toàn khỏe mạnh và được tiêm chủng theo quy định. Quý khách có thể an tâm khi đưa bé về nhà mà không phải lo về các vấn đề mầm bệnh.\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, 'ad@gmail.com', '123', 2),
(2, 'quoc@gmail.com', '123', 1),
(3, 'huong@gmail.com', '123', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Chỉ mục cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id_quangcao`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id_quangcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
