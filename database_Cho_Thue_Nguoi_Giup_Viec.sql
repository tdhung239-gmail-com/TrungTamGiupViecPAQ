-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2021 lúc 09:04 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"thuenguoigiupviec\",\"table\":\"tuyendung\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"dichvu\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"hosonhanvien\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"lienhe\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"bangluong\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"dangkydichvu\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"khachhang\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"danhgia\"},{\"db\":\"thuenguoigiupviec\",\"table\":\"taikhoan\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-13 01:05:27', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Cơ sở dữ liệu: `thuenguoigiupviec`
--
CREATE DATABASE IF NOT EXISTS `thuenguoigiupviec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `thuenguoigiupviec`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangluong`
--

CREATE TABLE `bangluong` (
  `idBangLuong` int(11) NOT NULL,
  `maHSNV` int(11) NOT NULL,
  `maDKDV` int(11) NOT NULL,
  `tinhTrangThanhToan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangluong`
--

INSERT INTO `bangluong` (`idBangLuong`, `maHSNV`, `maDKDV`, `tinhTrangThanhToan`) VALUES
(106, 3, 202, 'chua'),
(107, 8, 203, 'chua'),
(108, 5, 204, 'xong'),
(111, 5, 209, 'xong'),
(112, 1, 207, 'chua'),
(113, 1, 210, 'xong'),
(115, 1, 205, 'chua');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkydichvu`
--

CREATE TABLE `dangkydichvu` (
  `maDKDV` int(11) NOT NULL,
  `maDichVu` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `diaChiSuDungDichVu` varchar(500) NOT NULL,
  `ngayBatDau` date DEFAULT NULL,
  `ngayKetThuc` date DEFAULT NULL,
  `gioBatDau` time DEFAULT NULL,
  `gioKetThuc` time DEFAULT NULL,
  `tinhTrangThanhToan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkydichvu`
--

INSERT INTO `dangkydichvu` (`maDKDV`, `maDichVu`, `maKhachHang`, `diaChiSuDungDichVu`, `ngayBatDau`, `ngayKetThuc`, `gioBatDau`, `gioKetThuc`, `tinhTrangThanhToan`) VALUES
(201, 1, 2, 'K41 Phan Thanh - Phường Hải Châu 1 - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-18', '2021-06-18', '13:00:00', '15:30:00', 'chua'),
(202, 3, 2, 'k35 Phan Thanh - Phường Hải Châu 1 - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-18', '2021-07-02', '00:00:00', '00:00:00', 'xong'),
(203, 6, 3, 'k30 Phan Thanh - Phường Hải Châu 1 - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-18', '2021-06-29', '00:00:00', '00:00:00', 'chua'),
(204, 1, 4, 'K39 Phan Thanh - Phường Hải Châu 1 - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-18', '2021-06-18', '12:42:00', '15:42:00', 'chua'),
(205, 1, 5, '111 Ngũ Hành Sơn - Phường Hòa Hải - Quận Ngũ Hành Sơn - Thành Phố Đà Nẵng', '2021-06-18', '2021-06-18', '14:49:00', '15:49:00', 'chua'),
(207, 1, 6, '03 Quang Trung - Phường Thạch Thang - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-19', '2021-06-19', '10:20:00', '13:20:00', 'chua'),
(208, 1, 7, 'K40 Phan Thanh - Phường Hòa An - Quận Cẩm Lệ - Thành Phố Đà Nẵng', '2021-06-23', '2021-06-23', '09:56:00', '10:57:00', 'chua'),
(209, 1, 8, '190 Nguyễn Lương Bằng - Phường Bình Hiên - Quận Hải Châu - Thành Phố Đà Nẵng', '2021-06-23', '2021-06-23', '09:57:00', '11:56:00', 'chua'),
(210, 1, 2, 'Sen Thủy - Lệ Thủy - Quảng Bình', '2021-06-23', '2021-06-23', '10:59:00', '11:59:00', 'chua'),
(211, 1, 6, 'Sen Thủy - Lệ Thủy - Quảng Bình', '2021-06-23', '2021-06-23', '13:52:00', '14:53:00', 'chua');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `maDanhGia` int(11) NOT NULL,
  `hoTen` varchar(500) NOT NULL,
  `noiDung` varchar(1000) NOT NULL,
  `hinhAnh` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `maDichVu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`maDanhGia`, `hoTen`, `noiDung`, `hinhAnh`, `video`, `maDichVu`) VALUES
(13, 'Trần Đức Hùng', 'chất lượng thật tuyệt vời!!', ' ', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `maDichVu` int(11) NOT NULL,
  `tenDichVu` varchar(100) NOT NULL,
  `gioiThieuDichVu` varchar(2000) NOT NULL,
  `hinhAnhDichVu` varchar(100) NOT NULL,
  `dieuKienLyLich` varchar(2000) NOT NULL,
  `kyNang` varchar(3000) NOT NULL,
  `hinhAnhKyNang` varchar(100) NOT NULL,
  `luongTheoGio` int(11) DEFAULT NULL,
  `luongTheoNgay` int(11) DEFAULT NULL,
  `luongTheoThang` int(11) DEFAULT NULL,
  `phiDichVuTheoGio` int(11) DEFAULT NULL,
  `phiDichVuTheoNgay` int(11) DEFAULT NULL,
  `phiDichVuTheoThang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`maDichVu`, `tenDichVu`, `gioiThieuDichVu`, `hinhAnhDichVu`, `dieuKienLyLich`, `kyNang`, `hinhAnhKyNang`, `luongTheoGio`, `luongTheoNgay`, `luongTheoThang`, `phiDichVuTheoGio`, `phiDichVuTheoNgay`, `phiDichVuTheoThang`) VALUES
(1, 'Giúp Việc Theo Giờ', 'Không thể sắp xếp thời gian để cùng một lúc làm tất cả các công việc khiến cho nhiều người băn khoăn tìm giải pháp khắc phục. Hãy để cho những người Giúp việc làm đỡ bạn điều đó. Sử dụng người giúp việc của Giúp việc PAQ, các bạn sẽ được cung cấp các loại hình dịch vụ khác nhau nhằm đáp ứng mọi nhu cầu của khách hàng. Bạn đang có nhu cầu tìm kiếm người giúp việc nhưng vẫn muốn đảm bảo không gian riêng tư của gia đình? Dịch vụ giúp việc theo giờ của Trung tâm giúp việc PAQ hứa hẹn là lựa chọn lý tưởng dành cho bạn. ', 'gvtg.jpg', 'Người giúp việc có lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương.\r\nPhẩm chất tốt, trung thực thật thà và không có tiền án tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 'Làm tất cả các công việc theo yêu cầu của chủ nhà trong giờ cố định: chăm sóc người ốm, người già, dọn dẹp nhà cửa, nấu ăn, giặt giũ quần áo, đưa đón trẻ đi học… giúp bạn tiết kiệm thời gian làm những việc khác.\r\nĐảm bảo nhà cửa luôn gọn gàng sạch sẽ giúp bạn cảm thấy tinh thần thoải mái hơn.\r\nCam kết làm việc đúng và đủ số giờ, đảm bảo hoàn thành tốt công việc và yêu cầu gia chủ đề ra, trung thực, tận tâm, trách nhiệm', 'gvtg2.jpg', 60000, 0, 0, 100000, 0, 0),
(2, 'Giúp Việc Trông Trẻ', 'Ở trong thành phố Đà Nẵng hiện nay nhu cầu tìm người giúp việc đặc biệt là người chăm bé. Vì tại các thành phố lớn cuộc sống hiên đại các bà mẹ sinh con xong phải quay lại công việc không có thời gian để chăm sóc con của mình, ông bà nội ngoại, người thân thì đều bận rộn không lên được. Lúc này phương án tốt nhất là bạn tìm một người giúp việc chăm bé có kinh nghiệm, yêu thương chăm sóc một cách chu đáo nhất. Bạn băn khoăn không biết chọn dịch vụ giúp việc nào phù hợp với nhà mình.', 'chambe1.jpg', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương đặc biệt không mắc các tiền án, tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.\r\nCác tiêu chí và kỹ năng cơ bản cần phải có của người giúp việc trông trẻ.', 'Biết tắm bé khi mới sinh, cho bé ăn uống theo đúng giờ giấc, không ăn uống linh tinh, người giúp việc hay trò chuyện và chơi cùng bé…\r\nHiểu biêt những kiến thức về bệnh lý thường gặp về trẻ nhỏ.\r\n', 'motacv_chambe.jpg', 0, 0, 6000000, 0, 0, 1000000),
(3, 'Chăm Người Bệnh', 'Cuộc sống ngày càng phát triển mọi người đều lo làm việc mà không có thời gian chăm sóc gia đình nhất là người thân của mình không may bị bệnh. Không thể sắp xếp thời gian hợp lí để vừa có thể đảm bảo công việc vừa đảm bảo chăm sóc tốt cho người thân khiến cho nhiều người băn khoăn và vô cùng áp lực. Vậy thì tại sao bạn lại không đi tìm người giúp việc thay thế mình. Hãy để cho những người làm công việc chăm sóc sức khoẻ bệnh nhân làm đỡ bạn điều đó. Đến với Trung tâm giúp việc PAQ chúng tôi các bạn sẽ được cung cấp Dịch vụ chăm sóc người bệnh tại bệnh viện và tại các gia đình nhằm đáp ứng mọi nhu cầu của bạn.', 'csnb1.jpg', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương. Phẩm chất tốt, trung thực thật thà và không có tiền án tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 'Công việc cần thiết: Cho bệnh nhân ăn uống theo yêu cầu của chủ nhà. Chăm sóc bệnh nhân 24/24, vệ sinh cá nhân cho bệnh nhân như thay đồ, giặt giũ quần áo, chăn màn… Theo dõi việc uống thuốc của bệnh nhân, theo dõi mạch, nhiệt độ, huyết áp, dịch truyền. Cho bệnh nhân uống thuốc đúng giờ theo đơn thuốc của bác sĩ, đảm bảo người bệnh có sự tiến triển về sức khoẻ.\r\nCông việc khác: Đọc sách, truyện, tài liệu, nói chuyện, chia sẻ, tâm sự, đi dạo theo yêu cầu của bệnh nhân giúp cho tâm trạng bệnh nhân tốt hơn, tránh sự bi quan về bệnh tật.\r\nTheo dõi tình trạng sức khoẻ bệnh nhân, thông báo cho người nhà và bác sĩ thường xuyên để kịp thời điều trị. Gọi cho gia đình, bác sỹ và gọi cấp cứu khi cần thiết.\r\nNgoài các công việc chính còn có thể làm các việc theo yêu cầu của gia đình liên quan đến người bệnh khi cần.\r\nThái độ: Luôn lễ phép, nét mặt tươi tỉnh, không ngại việc.', 'csnb2.jpg', 0, 500000, 0, 0, 500000, 0),
(4, 'Chăm Sóc Người Già', 'Hiện nay, nhiều gia đình có người già, người ốm, người cao tuổi… mà con cháu lại khá bận rộn, không cân bằng được công việc ở cơ quan với công việc trong gia đình nên thời gian chăm sóc người già thật ít ỏi. Nhận thấy được nhu cầu đó, Trung tâm giúp việc PAQ cung cấp dịch vụ chăm sóc người già. Trong gói dịch vụ chăm sóc người cao tuổi, giúp việc của chúng tôi được đào tạo có thể làm việc nhà, chăm sóc, trông nom cẩn thận, chu đáo cho người già cao tuổi, người ốm…', 'csng1.jpg', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 'Kỹ năng giao tiếp: Chăm sóc cẩn thận, chu đáo, biết cách nói chuyện, tâm sự chia sẻ với các cụ, chủ động sắp xếp thời gian để các cụ ra ngoài đi dạo, giao lưu nói chuyện tạo tâm lý thoải mái thư giãn.\r\nKỹ năng phục vụ người cao tuổi trong việc nấu nướng và chế biến thực phẩm: lên thực đơn đi chợ, lựa chọn những nguồn thực phẩm an toàn và phù hợp cho người cao tuổi, người ốm.\r\nKỹ năng phục vụ người cao tuổi trong việc ăn uống: chuẩn bị bữa ăn kịp thời, chu đáo, và hoàn tất, hợp với khẩu vị nhu cầu của người già. Ăn uống khoa học, có thể chia làm nhiều bữa nhỏ cùng với chế độ dinh dưỡng giàu thực vật.\r\nCác công việc vệ sinh cho người cao tuổi: tắm rửa, đóng bỉm, thay đồ, giặt đồ…\r\nXử lý các tình huống liên quan người cao tuổi: giúp người cao tuổi uống thuốc, đi ngủ đúng giờ. Xử lý các tình huống phát sinh đo đường huyết, đo huyết áp, sơ cứu thông thường…', 'csng2.jpg', 0, 0, 6000000, 0, 0, 1000000),
(6, 'Giúp Việc Nhà', 'Cuộc sống hiện đại có rất nhiều thứ để lo toan, bận rộ. Chúng ta đều phải cân nhắc thời gian dành cho công việc, gia đình, và bản thân. Từ công việc hàng ngày, đưa đón con đi học, chơi với con, các hoạt động thể dục thể thao, thời gian nghĩ ngơi. Chính vì thế để giúp mọi người có thời gian tận hưởng cuộc sống hơn. Dịch vụ giúp việc nhà của chúng tôi ra đời.\r\nNgười giúp việc nhà theo giờ sẽ giúp khách hàng giảm bớt đi các công việc thường nhật trong gia đình. Như lau chùi, dọn dẹp, gấp chăn màn, giặt ủi, nấu ăn,… Mà không làm thay đổi những sắp xếp thuận tiện theo thói quen của chủ nhà.\r\n\r\nCác nhân viên giúp việc nhà theo giờ của chúng tôi với kỹ năng chuyên nghiệp. Được đào tạo kỹ lưỡng cả về phong cách giao tiếp và kinh nghiệm làm việc. Chắc chắn sẽ làm hài lòng bạn khi lựa chọn chúng tôi.', 'gvnha1.jpg', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương đặc biệt không mắc các tiền án, tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 'Giặt ủi tấm ga trải giường, lau giọn bàn ghế sạch sẽ ngăn nắp\r\nGiặt ủi quần áo, phơi khô và gấp gọn lại\r\nĐi chợ, nấu ăn theo yêu cầu\r\nLàm sạch nhà để xe, hàng hiên, cổng ra vào,vv..', 'gvnha2.jpg', 0, 0, 5000000, 0, 0, 800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosonhanvien`
--

CREATE TABLE `hosonhanvien` (
  `maHSNV` int(11) NOT NULL,
  `hoTen` varchar(255) NOT NULL,
  `namSinh` date NOT NULL,
  `sdt` bigint(11) NOT NULL,
  `queQuan` varchar(500) NOT NULL,
  `noiCuTruHienTai` varchar(5000) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tinhTrangLamViec` varchar(50) NOT NULL,
  `tinhTrangDuyetHoSo` varchar(50) NOT NULL,
  `maDichVu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hosonhanvien`
--

INSERT INTO `hosonhanvien` (`maHSNV`, `hoTen`, `namSinh`, `sdt`, `queQuan`, `noiCuTruHienTai`, `hinhanh`, `tinhTrangLamViec`, `tinhTrangDuyetHoSo`, `maDichVu`) VALUES
(1, 'Thanh Mai', '1990-09-07', 899195753, 'Hà Tĩnh', 'Đà Nẵng', 'thanhmai.jpg', 'ranh', 'xong', 1),
(2, 'Thanh Ngân', '1990-08-07', 889195754, 'Nghệ An', 'Đà Nẵng', 'thanhngan.jpg', 'ranh', 'xong', 2),
(3, 'Thanh Nga', '1990-08-03', 889195757, 'Quảng Trị', 'Đà Nẵng', 'thanhnga.jpg', 'ranh', 'xong', 3),
(4, 'Thanh Tâm', '1990-08-07', 889195754, 'Quảng Bình', 'Đà Nẵng', 'thanhtam.jpg', 'ranh', 'xong', 4),
(5, 'Thanh Thanh', '1990-08-08', 889195752, 'Quảng Nam', 'Đà Nẵng', 'thanhthanh.jpg', 'ranh', 'xong', 1),
(6, 'Thanh Thảo', '1990-08-05', 889195759, 'Nghệ An', 'Đà Nẵng', 'thanhthao.jpg', 'ranh', 'xong', 2),
(7, 'Thanh Thơm', '1990-08-11', 889195751, 'Thanh Hóa', 'Đà Nẵng', 'thanhthom.jpg', 'ranh', 'xong', 3),
(8, 'Thanh Thúy', '1990-08-21', 899195566, 'Đà Nẵng', 'Đà Nẵng', 'thanhthuy.jpg', 'ranh', 'xong', 6),
(11, 'Thanh Thuong', '1990-08-01', 889195741, 'Đà Nẵng', 'Đà Nẵng', 'thanhnga.jpg', 'ranh', 'xong', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKhachHang` int(11) NOT NULL,
  `tenKhachHang` varchar(500) NOT NULL,
  `sdt` bigint(11) NOT NULL,
  `diaChi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKhachHang`, `tenKhachHang`, `sdt`, `diaChi`) VALUES
(1, 'Trần Hùng', 899195753, 'K40 Phan Thanh - Đà Nẵng'),
(2, 'Nguyễn Hùng', 899195759, 'k35 Phan Thanh-Đà Nẵng'),
(3, 'Trần Hùng', 899195758, 'k30 Phan Thanh-Đà Nẵng'),
(4, 'Dương Mạnh Hùng', 899195755, 'K39 Phan Thanh-Đà Nẵng'),
(5, 'Trần Đức Hùng', 899195759, '111 Ngũ Hành Sơn-Đà Nẵng'),
(6, 'Trần Thị Thúy Trinh', 905000000, '03 Quang Trung'),
(7, 'Dương Mạnh Hùng', 899195753, 'Sen Thủy'),
(8, 'Dương Mạnh Hùng', 899195753, 'Sen Thủy 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `maLienHe` int(11) NOT NULL,
  `tenLienHe` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `sdt` bigint(20) NOT NULL,
  `thongDiep` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`maLienHe`, `tenLienHe`, `email`, `sdt`, `thongDiep`) VALUES
(52, 'Trần Đức Hùng', 'NULL', 899195759, 'Warning tại mã đăng ký dich vụ (205): Khách hàng Trần Đức Hùng đã đăng ký dịch vụ thành công nhưng chưa chọn được nhân viên phù hợp'),
(53, 'Hùng Đức Trần', 'tranung148@gmail.com', 889195753, 'tôi  muốn biết rõ thêm thông tin chi tiết giúp việc chăm sóc trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TenTaiKhoan` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TenTaiKhoan`, `MatKhau`) VALUES
('Hung239', 'hung1234'),
('Hunghayngu', 'Hunghayngu'),
('Quoc219', 'quocdethuong'),
('Tai123', 'nhattai123'),
('Tuandethuong', 'Tuandethuong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
--

CREATE TABLE `thongtin` (
  `id` int(11) NOT NULL,
  `tuoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `tuoi`) VALUES
(1, 12),
(2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendung`
--

CREATE TABLE `tuyendung` (
  `maTuyenDung` int(11) NOT NULL,
  `tieuDeTuyenDung` varchar(255) NOT NULL,
  `moTaChung` varchar(5000) NOT NULL,
  `hinhAnh` varchar(100) NOT NULL,
  `moTaCongViec` varchar(3000) NOT NULL,
  `quyenLoi` varchar(2000) NOT NULL,
  `yeuCauCongViec` varchar(2000) NOT NULL,
  `maDichVu` int(11) NOT NULL,
  `tatBat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tuyendung`
--

INSERT INTO `tuyendung` (`maTuyenDung`, `tieuDeTuyenDung`, `moTaChung`, `hinhAnh`, `moTaCongViec`, `quyenLoi`, `yeuCauCongViec`, `maDichVu`, `tatBat`) VALUES
(1, 'Giúp Việc Theo Giờ', 'Tìm việc làm giúp việc nhà theo giờ hiện nay đã trở thành một công việc có sức hút lớn đối với nguồn lao động có nhiều thời gian rảnh rỗi. Nhất là nguồn lao động sinh viên, người trung tuổi muốn đi làm giờ hành chính và vẫn có thời gian dành cho gia đình. Nếu các bạn sinh viên, các mẹ đang có nhu cầu tìm một công việc ổn định, không yêu cầu kỹ năng phải đào tạo qua trường lớp lâu năm và có mức lương ổn định. Hãy đến với giúp việc PAQ, các bạn sinh viên, các mẹ hoàn toàn có một công việc theo giờ ổn định như mong muốn.', 'giupviectheogio.jpg', 'Những công việc thường ngày như  lau chùi, nấu ăn, dọn dẹp, giặt quần áo,….hoặc các công việc khác theo yêu cầu của chủ nhà. \r\n\r\nCác công việc giúp việc chăm bé theo giờ cần yêu cầu kỹ năng kinh nghiệm liên quan đến bé từ 1 tháng tuổi đến 5 tuổi. Giúp việc chăm người già theo giờ cần người hiểu tâm lý người già, có hiểu biết một số bệnh của người già để biết cách chăm sóc từng người phù hợp.\r\n\r\nCó sức khỏe, biết sắp xếp công việc khoa học để đảm bảo hoàn thành công việc trong đúng thời gian quy định. Ngay cả khi bạn ở nhà nghỉ cũng có thể gọi người giúp việc theo giờ đến dọn dẹp và thực hiện những công việc mình mong muốn. Thời gian của bạn và của cả người đi làm giúp việc cũng vô cùng linh hoạt, chủ động.', 'Đưa đón người lao động ngay tại bến xe. Khi bạn xuống xe, sẽ có người đưa bạn về công ty.\r\nTại công ty bạn sẽ được miễn phí bao ăn, ở, đi lại mà không tốn một đồng nào.\r\nMiễn phí tư vấn cho bạn các công việc phù hợp với bản thân.\r\nĐưa đón người lao động đến nhà chủ xem công việc và xem chủ nhà.\r\nTrong thời gian làm việc, nếu bạn cảm thấy không hợp, chỉ cần yêu cầu với công ty, chúng tôi sẽ tìm cho bạn chủ nhà khác hoặc công việc khác phù hợp với bạn hơn.', 'Người giúp việc có lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương.\r\nPhẩm chất tốt, trung thực thật thà và không có tiền án tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 1, 0),
(2, 'Giúp Việc Trông Trẻ', 'Tìm việc làm trông trẻ hiện nay được nhiều người biết đến với mong muốn cải thiện cuộc sống và tìm một công việc ổn định. Thay vì thời gian nhàn rỗi, bạn nên tìm cho mình 1 công việc phù hợp với mình, có được thu nhập tốt. Và việc làm giữ trẻ là một trong những công việc như vậy. Giúp việc PAQ - giúp việc ở lại hàng đầu Việt Nam  là một trong những công ty hàng đầu về lĩnh vực cung cấp dịch vụ giúp việc, tìm việc cho người lao động. Có hàng nghìn người đã được công ty tạo việc làm, có cuộc sống ổn định. Đến với chúng tôi, bạn hoàn toàn yên tâm. Bạn sẽ được đón ngay tại bến xe khi vừa xuống xe khách, không còn sợ cảnh lạc đường mà nhiều người là đầu lên thành phố mắc phải. Bạn sẽ được bao ăn ở, đi lại, bạn hãy đến với chúng tôi, các công việc khác hãy để chúng tôi lo thay giúp bạn.', 'motacv_chambe.jpg', 'Khi em bé mới sinh, công việc của người giúp việc sẽ là phụ giúp mẹ bé trông bé, pha sữa, nấu ăn, giặt giũ cho bé và cả nhà. Sau khi mẹ bé hết thời gian nghỉ sinh và trở lại công việc cơ quan, người giúp việc sẽ là người chịu trách nhiệm chính trong việc chăm sóc bé. Vai trò của người chăm sóc em bé lúc này là hết sức quan trọng.\r\nGiúp việc chăm bé chắc chắn phải là một người yêu trẻ và sẵn sàng chăm sóc trẻ con. Thông thường các bé còn nhỏ nên không tránh khỏi việc quấy khóc hay dỗi hờn nên khó tránh việc bực bội trong người. Đối với những người yêu trẻ họ sẽ có sự kiên nhẫn để có thể dỗ dành và chăm sóc bé như con cháu của mình.Người giúp việc trông trẻ cần phải hoạt ngôn, khéo ăn khéo nói và không được nói ngọng nói lắp.\r\nNgười giúp việc trông trẻ phải có kỹ năng, kiến thức và kinh nghiệm chăm sóc trẻ nhỏ.\r\nChăm chỉ, chịu khó, thật thà, sạch sẽ là những điều kiện bắt buộc khác trong quá trình tuyển chọn người giúp việc của trung tâm giúp việc PAQ.', 'Đưa đón người lao động ngay tại bến xe. Khi bạn xuống xe, sẽ có người đưa bạn về công ty. Tại công ty bạn sẽ được miễn phí bao ăn, ở, đi lại mà không tốn một đồng nào. Miễn phí tư vấn cho bạn các công việc phù hợp với bản thân. Đưa đón người lao động đến nhà chủ xem công việc và xem chủ nhà. Trong thời gian làm việc, nếu bạn cảm thấy không hợp, chỉ cần yêu cầu với công ty, chúng tôi sẽ tìm cho bạn chủ nhà khác hoặc công việc khác phù hợp với bạn hơn.', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương đặc biệt không mắc các tiền án, tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 2, 1),
(3, 'Chăm Người Bệnh', 'Tìm việc làm chăm sóc người bệnh là nhu cầu chính đáng của những người đang muốn có thu nhập ổn định mà không đòi hỏi phải có trình độ chuyên môn. Cuộc sống bận rộn khiến con cái không thể chăm sóc người bệnh, đây chính là cơ hội rất tốt để những người đang có nhu cầu tìm việc làm kiếm thêm thu nhập. Giúp việc PAQ - giúp việc ở lại hàng đầu Việt Nam chính là trung tâm cung ứng lao động tìm việc làm cho người lao động có trình độ thấp uy tín nhất tại Đà Nẵng. Với trâm ngôn \"uy tín làm nên thương hiệu\" nên không khó hiểu vì sao chúng tôi đang đứng đầu thị trường về dịch vụ người giúp việc.', 'chamsocngbenh.jpg', 'Công việc cần thiết: Cho bệnh nhân ăn uống theo yêu cầu của chủ nhà. Chăm sóc bệnh nhân 24/24, vệ sinh cá nhân cho bệnh nhân như thay đồ, giặt giũ quần áo, chăn màn… Theo dõi việc uống thuốc của bệnh nhân, theo dõi mạch, nhiệt độ, huyết áp, dịch truyền. Cho bệnh nhân uống thuốc đúng giờ theo đơn thuốc của bác sĩ, đảm bảo người bệnh có sự tiến triển về sức khoẻ.\r\nCông việc khác: Đọc sách, truyện, tài liệu, nói chuyện, chia sẻ, tâm sự, đi dạo theo yêu cầu của bệnh nhân giúp cho tâm trạng bệnh nhân tốt hơn, tránh sự bi quan về bệnh tật.\r\nTheo dõi tình trạng sức khoẻ bệnh nhân, thông báo cho người nhà và bác sĩ thường xuyên để kịp thời điều trị. Gọi cho gia đình, bác sỹ và gọi cấp cứu khi cần thiết.\r\nNgoài các công việc chính còn có thể làm các việc theo yêu cầu của gia đình liên quan đến người bệnh khi cần.\r\nThái độ: Luôn lễ phép, nét mặt tươi tỉnh, không ngại việc.', 'Đưa đón người lao động ngay tại bến xe. Khi bạn xuống xe, sẽ có người đưa bạn về công ty. Tại công ty bạn sẽ được miễn phí bao ăn, ở, đi lại mà không tốn một đồng nào. Miễn phí tư vấn cho bạn các công việc phù hợp với bản thân. Đưa đón người lao động đến nhà chủ xem công việc và xem chủ nhà. Trong thời gian làm việc, nếu bạn cảm thấy không hợp, chỉ cần yêu cầu với công ty, chúng tôi sẽ tìm cho bạn chủ nhà khác hoặc công việc khác phù hợp với bạn hơn.', 'Cam kết cung cấp người giúp việc chăm sóc người bệnh tại bệnh viện và tại các gia đình thật thà, chăm chỉ, chuyên môn, có kinh nghiệm chăm những ca nặng như bệnh nhân phẫu thuật, ăn xông hút đờm…\r\nĐội ngũ chuyên nghiệp sẵn sàng phục vụ 24/24.\r\nNguồn gốc rõ ràng, có giấy tờ chứng minh, là người thân quen của các thành viên Trung tâm.\r\nChi phí giới thiệu ở trên là rất ít, chỉ đủ cho chi phí điện thoại và quảng cáo.\r\nCông ty có đăng ký đầy đủ giấy tờ và xuất hóa đơn đỏ.', 3, 0),
(4, 'Chăm Sóc Người Già', 'Tìm việc làm chăm sóc người già là nhu cầu chính đáng của những người đang muốn có thu nhập ổn định mà không đòi hỏi phải có trình độ chuyên môn. Cuộc sống bận rộn khiến con cái không thể chăm sóc ông bà, đây chính là cơ hội rất tốt để những người đang có nhu cầu tìm việc làm kiếm thêm thu nhập. Giúp việc PAQ - giúp việc ở lại hàng đầu Việt Nam chính là trung tâm cung ứng lao động tìm việc làm cho người lao động có trình độ thấp uy tín nhất tại Đà Nẵng. Với trâm ngôn \"uy tín làm nên thương hiệu\" nên không khó hiểu vì sao chúng tôi đang đứng đầu thị trường về dịch vụ người giúp việc.', 'giupviec_lh.jpg', 'Yêu thương chăm sóc người già như người thân trong gia đình.\r\nBiết lắng nghe, chia sẻ, nói chuyện cho người già không còn cảm thấy cô đơn.\r\nNgười già hay bị đãng trí, cần ân cần, nhẹ nhàng chăm sóc.\r\nSức khỏe người già yêu, đôi khi không thể tự đi lại 1 mình, bạn hãy cùng họ đi dạo vào mỗi buổi sáng, chiều theo yêu cầu của từng gia chủ.\r\nNgười già không tự vệ sinh cá nhân, bạn cần giúp họ khi được yêu cầu giúp đỡ.\r\nNấu ăn phù hợp với khẩu vị của người già....\r\n', 'Đưa đón người lao động ngay tại bến xe. Khi bạn xuống xe, sẽ có người đưa bạn về công ty. Tại công ty bạn sẽ được miễn phí bao ăn, ở, đi lại mà không tốn một đồng nào. Miễn phí tư vấn cho bạn các công việc phù hợp với bản thân. Đưa đón người lao động đến nhà chủ xem công việc và xem chủ nhà. Trong thời gian làm việc, nếu bạn cảm thấy không hợp, chỉ cần yêu cầu với công ty, chúng tôi sẽ tìm cho bạn chủ nhà khác hoặc công việc khác phù hợp với bạn hơn.', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương. Phẩm chất tốt, trung thực thật thà và không có tiền án tiền sự.\r\nCó giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 4, 1),
(11, 'Giúp Việc Nhà', 'Tìm việc làm giúp việc nhà hiện nay đã trở thành một công việc có sức hút lớn đối với nguồn lao động có nhiều thời gian rảnh rỗi. Nhất là nguồn lao động sinh viên, người trung tuổi muốn đi làm giờ hành chính và vẫn có thời gian dành cho gia đình. Nếu các bạn sinh viên, các mẹ đang có nhu cầu tìm một công việc ổn định, không yêu cầu kỹ năng phải đào tạo qua trường lớp lâu năm và có mức lương ổn định. Hãy đến với giúp việc PAQ, các bạn sinh viên, các mẹ hoàn toàn có một công việc nhà ổn định như mong muốn.', 'gvnha2.jpg', 'Luôn luôn hổ trợ khách hàng ở mức cao nhất\r\nCó trách nhiệm với các sự cố hư hỏng hay mất mát do nhân viên gây ra\r\nLàm sạch toàn diện giúp ngôi nhà của bạn trở nên lung linh như mới\r\nQuy trình giúp việc nhà và dọn dẹp nhà cửa được tùy chỉnh. Để phù hợp với nhu cầu và lịch trình sinh hoạt của khách hàng\r\nNhân viên có thể tự dọn dẹp nhà cửa của khách hàng khi khách hàng không có nhà. \r\n Giặt ủi tấm ga trải giường, lau giọn bàn ghế sạch sẽ ngăn nắp Giặt ủi quần áo, phơi khô và gấp gọn lại Đi chợ, nấu ăn theo yêu cầu Làm sạch nhà để xe, hàng hiên, cổng ra vào,vv..\r\n', 'Đưa đón người lao động ngay tại bến xe. Khi bạn xuống xe, sẽ có người đưa bạn về công ty. Tại công ty bạn sẽ được miễn phí bao ăn, ở, đi lại mà không tốn một đồng nào. Miễn phí tư vấn cho bạn các công việc phù hợp với bản thân. Đưa đón người lao động đến nhà chủ xem công việc và xem chủ nhà. Trong thời gian làm việc, nếu bạn cảm thấy không hợp, chỉ cần yêu cầu với công ty, chúng tôi sẽ tìm cho bạn chủ nhà khác hoặc công việc khác phù hợp với bạn hơn.', 'Lý lịch đầy đủ, nhân thân rõ ràng, có cam kết, dấu xác nhận của chính quyền địa phương đặc biệt không mắc các tiền án, tiền sự. Có giấy xác nhận kiểm tra sức khỏe của các bệnh viện cấp quận, huyện trở lên. Đảm bảo không mắc các bệnh truyền nhiễm.', 6, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangluong`
--
ALTER TABLE `bangluong`
  ADD PRIMARY KEY (`idBangLuong`);

--
-- Chỉ mục cho bảng `dangkydichvu`
--
ALTER TABLE `dangkydichvu`
  ADD PRIMARY KEY (`maDKDV`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`maDanhGia`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`maDichVu`);

--
-- Chỉ mục cho bảng `hosonhanvien`
--
ALTER TABLE `hosonhanvien`
  ADD PRIMARY KEY (`maHSNV`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`maLienHe`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`maTuyenDung`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangluong`
--
ALTER TABLE `bangluong`
  MODIFY `idBangLuong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `dangkydichvu`
--
ALTER TABLE `dangkydichvu`
  MODIFY `maDKDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `maDanhGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `maDichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hosonhanvien`
--
ALTER TABLE `hosonhanvien`
  MODIFY `maHSNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `maLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `maTuyenDung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
