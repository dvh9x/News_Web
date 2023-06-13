-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 03, 2023 lúc 02:03 PM
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
-- Cơ sở dữ liệu: `webtintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhchon`
--

CREATE TABLE `binhchon` (
  `idBC` int(11) NOT NULL,
  `MoTa` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhchon`
--

INSERT INTO `binhchon` (`idBC`, `MoTa`) VALUES
(1, 'Bạn nghĩ sao về đội tuyển VN dưới thời HLV Calisto?'),
(2, 'Bạn dự đoán đội nào vô địch giải Ngoại hạng Anh mùa này?'),
(3, 'Bạn thích làm gì trong các nghề dưới đây?'),
(4, 'Bạn sẽ cho con làm gì trong kỳ nghỉ hè này?'),
(5, 'Superman mặc quần màu gì?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `hoten` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `noidung` text NOT NULL,
  `idTin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `HoTen` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `NoiDung` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `HoTen`, `Email`, `NoiDung`) VALUES
(1, 'hứa chí phước', 'huachiphuoc@gmail.com', 'whdiwdlkj'),
(2, 'Bành Thị Bũm', 'banhbum@yahoo.com', '298790173\r\nlwidjqopwd\r\nwdqpowud');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `idWebLink` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL DEFAULT '',
  `Url` varchar(255) NOT NULL DEFAULT '',
  `ThuTu` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`idWebLink`, `Ten`, `Url`, `ThuTu`) VALUES
(1, 'Nhất Nghệ', 'http://nhatnghe.com', 0),
(2, 'Vnexpress', 'http://vnexpress.net', 0),
(3, 'Dân Trí', 'http://dantri.com.vn', 0),
(4, 'Tài liệu thiết kế web', 'http://khoapham.vn', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `idLT` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL DEFAULT '',
  `Ten_KhongDau` varchar(255) NOT NULL,
  `ThuTu` tinyint(11) NOT NULL DEFAULT 0,
  `AnHien` tinyint(1) NOT NULL DEFAULT 1,
  `idTL` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`idLT`, `Ten`, `Ten_KhongDau`, `ThuTu`, `AnHien`, `idTL`) VALUES
(1, 'Tin Hoạt Động', 'Tin-Hoat-Dong', 1, 1, 1),
(2, 'Tin Tức Chuyển Đổi Số', 'Tin-Tuc-Chuyen-Doi-So', 2, 1, 1),
(3, 'Tin Tức An Toàn Thông Tin', 'Tin-Tuc-An-Toan-Thong-Tin', 3, 1, 1),
(4, 'Thông tin-Số liệu', 'So-lieu', 1, 1, 2),
(5, 'Phân Tích', 'Phan-Tich', 4, 1, 2),
(6, 'Thông tin Hoạt động', 'Thong-tin', 1, 1, 3),
(7, 'Thông báo tổ chức thi', 'Thong-bao-to-chuc-thi', 3, 1, 4),
(8, 'Thi cấp chứng chỉ ứng dụng CNTT cơ bản', 'Thi-Cap-chung-chi-cntt-co-ban', 4, 1, 4),
(9, 'Tài liệu Hướng dẫn', 'Tai-lieu', 1, 1, 5),
(10, 'Ảnh', 'Anh', 2, 1, 6),
(11, 'Video', 'Video', 3, 1, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongan`
--

CREATE TABLE `phuongan` (
  `idPA` int(11) NOT NULL,
  `Mota` varchar(255) NOT NULL DEFAULT '',
  `SoLanChon` int(11) DEFAULT 0,
  `idBC` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongan`
--

INSERT INTO `phuongan` (`idPA`, `Mota`, `SoLanChon`, `idBC`) VALUES
(1, 'Thành công', 0, 1),
(2, 'Thất  bại', 0, 1),
(3, 'Làm công chức nhà nước', 0, 3),
(4, 'Làm cho các công ty', 0, 3),
(5, 'Làm trong các cơ quan nghiên cứu', 0, 3),
(6, 'Các lĩnh vực khác', 0, 3),
(7, 'Còn tuỳ thuộc VFF', 0, 1),
(8, 'MU', 0, 2),
(9, 'Chelsea', 0, 2),
(10, 'Đi học thêm', 0, 4),
(11, 'Chơi ở nhà', 0, 4),
(12, 'Đi du lịch', 0, 4),
(13, 'Đến các câu lạc bộ thiếu nhi', 0, 4),
(14, 'Xanh', 0, 5),
(15, 'Đỏ', 0, 5),
(16, 'Vàng', 0, 5),
(17, 'Hồng', 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `idQC` int(11) NOT NULL,
  `vitri` int(11) NOT NULL,
  `MoTa` varchar(255) NOT NULL DEFAULT '',
  `Url` varchar(255) NOT NULL DEFAULT '',
  `urlHinh` varchar(255) NOT NULL DEFAULT '',
  `SoLanClick` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`idQC`, `vitri`, `MoTa`, `Url`, `urlHinh`, `SoLanClick`) VALUES
(25, 1, 'Thế giới di động', 'http://khoapham.vn', '1.png', 1),
(26, 1, 'Bán laptop', 'http://khoapham.vn', '2.png', 0),
(27, 1, 'Viettel Telecom', 'http://khoapham.vn', '3.png', 0),
(28, 2, 'Lập trình iOS', 'http://khoapham.vn', 'ios.jpg', 0),
(29, 2, 'Lập trình Facebook Application', 'http://khoapham.vn', 'laptrinhfacebook.png', 0),
(30, 2, 'Lập trình PHP&MySQL', 'http://khoapham.vn', 'php_mysql.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien`
--

CREATE TABLE `sukien` (
  `idSK` int(11) NOT NULL,
  `MoTa` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sukien`
--

INSERT INTO `sukien` (`idSK`, `MoTa`) VALUES
(0, 'Không có sự kiện'),
(2, 'Valentine'),
(3, 'Huấn luyện viên Mourinho'),
(4, 'Du Học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTL` int(11) NOT NULL,
  `TenTL` varchar(255) NOT NULL DEFAULT '',
  `TenTL_KhongDau` varchar(255) NOT NULL,
  `ThuTu` int(11) DEFAULT 0,
  `AnHien` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTL`, `TenTL`, `TenTL_KhongDau`, `ThuTu`, `AnHien`) VALUES
(1, 'TIN TỨC', 'TIN-TUC', 1, 1),
(2, 'NGHỆ AN IOC', 'NGHE-AN-IOC', 2, 1),
(3, 'HOẠT ĐỘNG GBTT', 'HOAT-DONG-GBTT', 3, 1),
(4, 'CHỨNG CHỈ UDCNTT CƠ BẢN', 'CHUNG-CHI-UDCNTT-CO-BAN', 4, 1),
(5, 'HỔ TRỢ ỨNG DỤNG CNTT', 'HO-TRO-UNG-DUNG-CNTT', 5, 1),
(6, 'THƯ VIỆN ẢNH', 'THU-VIEN-ANH', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL DEFAULT '',
  `TieuDe_KhongDau` varchar(255) NOT NULL,
  `TomTat` varchar(1000) DEFAULT NULL,
  `urlHinh` varchar(255) DEFAULT NULL,
  `Ngay` date DEFAULT '0000-00-00',
  `idUser` int(11) NOT NULL DEFAULT 0,
  `Content` text DEFAULT NULL,
  `idLT` int(11) NOT NULL DEFAULT 0,
  `idTL` int(11) DEFAULT 1,
  `SoLanXem` int(11) DEFAULT 0,
  `TinNoiBat` tinyint(1) DEFAULT 0,
  `AnHien` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`idTin`, `TieuDe`, `TieuDe_KhongDau`, `TomTat`, `urlHinh`, `Ngay`, `idUser`, `Content`, `idLT`, `idTL`, `SoLanXem`, `TinNoiBat`, `AnHien`) VALUES
(162, 'Hội nghị giao ban báo chí tháng 6 năm 2023', '100--Hoc-Phi-Cho-7-Truong-Dh-Tai-Anh', 'Sáng 1/6, Ban Tuyên giáo Tỉnh ủy phối hợp với Sở Thông tin và Truyền thông, Hội Nhà báo Nghệ An tổ chức Hội nghị Giao ban báo chí tháng 6 năm 2023. Dự hội nghị có đồng chí Nguyễn Thị Thu Hường - Uỷ viên BTV, Trưởng Ban Tuyên giáo Tỉnh ủy.', 'duhoc-250.jpg', NULL, 22, '        </div>\r\n        <div id=\"news-bodyhtml\" class=\"bodytext margin-bottom-lg\">\r\n            <div style=\"text-align: justify;\">\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"1\" height=\"300\" src=\"/uploads/news/2023/06/1_1.jpg\" width=\"500\" />\r\n<figcaption><em>Đồng chí Nguyễn Bá Hảo - Phó Giám đốc Sở TT&amp;TT phát biểu tại Hội nghị.</em></figcaption>\r\n</figure>\r\n</div>\r\nTrong tháng 5, những vấn đề, sự kiện nổi bật trên các lĩnh vực thời sự, chính trị, kinh tế, xã hội, quốc phòng, an ninh, văn hóa, văn nghệ và dân sinh đã được các cơ quan báo chí thông tin, tuyên truyền đầy đủ, kịp thời. Đặc biệt là các hoạt động kỷ niệm 133 năm ngày sinh Chủ tịch Hồ Chí Minh; 69 năm Chiến thắng Điện Biên Phủ; Kỳ họp thứ 13 HĐND tỉnh khóa XVIII, nhiệm kỳ 2021 - 2026; Cuộc họp Bộ Chính trị cho ý kiến về Báo cáo tổng kết 10 năm thực hiện Nghị quyết số 26 của Bộ Chính trị khóa XI về phương hướng, nhiệm vụ phát triển tỉnh Nghệ An đến năm 2020, ban hành Nghị quyết mới về xây dựng và phát triển tỉnh Nghệ An đến năm 2030, tầm nhìn đến năm 2045...<br />\r\n&nbsp;\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"2\" height=\"300\" src=\"/uploads/news/2023/06/2_1.jpg\" width=\"500\" />\r\n<figcaption><em>Đồng chí Trần Minh Ngọc - Giám đốc Đài PTTH Nghệ An, Chủ tịch Hội nhà báo tỉnh phát biểu tại Hội nghị.</em></figcaption>\r\n</figure>\r\n</div>\r\nVề định hướng tuyên truyền trong tháng 6, Ban Tuyên giáo Tỉnh ủy đề nghị các cơ quan báo chí đẩy mạnh tuyên truyền 9 nội dung trọng tâm. Trong đó tập trung tuyên truyền Kỳ họp thứ 5, Quốc hội khóa XV; Chương trình hành động thực hiện Nghị quyết Đại hội Đảng bộ tỉnh lần thứ XIX và Nghị quyết Đại hội toàn quốc lần thứ XIII của Đảng...; Tiếp tục tuyên truyền các phong trào, mô hình, điển hình trong Học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh; Các hoạt động dân sinh và tích cực hưởng ứng các giải báo chí năm 2023.<br />\r\n&nbsp;\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"3\" height=\"300\" src=\"/uploads/news/2023/06/3.jpg\" width=\"500\" />\r\n<figcaption><em>Đồng chí Phạm Ngọc Cảnh - Phó Trưởng Ban Tuyên giáo Tỉnh uỷ phát biểu tại Hội nghị.</em></figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nTại hội nghị, Ban Chỉ đạo phong trào thi đua “Dân vận khéo” cấp tỉnh đã thông tin về Kế hoạch tổ chức cuộc thi báo chí viết về mô hình, điển hình “Dân vận khéo&quot; tiêu biểu tỉnh Nghệ An năm 2023.<br />\r\n&nbsp;\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"4\" height=\"300\" src=\"/uploads/news/2023/06/4.jpg\" width=\"500\" />\r\n<figcaption><em>Toàn cảnh Hội nghị.</em></figcaption>\r\n</figure>\r\n</div>\r\nLãnh đạo Sở Giáo dục và Đào tạo cũng thông tin về kỳ thi tuyển sinh vào lớp 10, thi tốt nghiệp THPT Quốc gia năm 2023.</div>\r\n        </div>\r\n                <div class=\"margin-bottom-lg\">\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Tác giả: </strong>Lê Hằng - Cảnh Toàn\r\n            </p>\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Nguồn tin: </strong><a title=\"https://truyenhinhnghean.vn\" rel=\"nofollow\" href=\"https://truyenhinhnghean.vn/bao-chi-va-cuoc-song/202306/hoi-nghi-giao-ban-bao-chi-thang-6-nam-2023-4bb5d29/\" target=\"_blank\">Đài phát thanh và truyền hình Nghệ An</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div>', 4, 1, 921, 0, 1),
(329, 'Trung tâm điều hành thông minh sẽ từng bước truyền tải, kết nối số liệu tới các phòng họp trực tuyến của tỉnh', 'Trieu-Tien-Tan-Cong:-Khong-Hoan-Toan-Bat-Ngo', 'Đó là yêu cầu của Phó Chủ tịch UBND tỉnh Lê Ngọc Hoa tại cuộc họp đánh giá tình hình triển khai thực hiện Trung tâm điều hành thông minh tỉnh Nghệ An vào chiều nay (7/10). Tham dự cuộc họp có đại diện lãnh đạo các sở, ngành, đơn vị liên quan.', 'quang-canh.jpg', NULL, 22, '<div id=\"news-bodyhtml\" class=\"bodytext margin-bottom-lg\">\r\n            Trung tâm điều hành thông minh (IOC) được xây dựng, hình thành, đưa vào hoạt động &nbsp;nhằm trở thành “bộ não” tổng hợp, chỉ huy, điều hành toàn bộ các hoạt động của tỉnh thông qua việc thu thập, phân tích, chuẩn hóa dữ liệu; đồng thời phục vụ đắc lực cho công tác lãnh đạo, chỉ đạo điều hành của các đơn vị, địa phương.\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"Quang cảnh cuộc họp\" height=\"374\" src=\"https://storage-vnportal.vnpt.vn/nan-ubnd/1/quantritintuc/quang-canh-1-637692283443382019.jpg\" width=\"640\" />\r\n<figcaption><em>Quang cảnh cuộc họp</em></figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nHiện nay đã có 9 phân hệ đang triển khai trong hệ thống IOC gồm: Kinh tế - xã hội; Hành chính công; Hệ thống quản lý văn bản điện tử; Hệ thống điều hành Y tế; Hệ thống điều hành Giáo dục; Hệ thống Quản lý phản ánh và tương tác trực tuyến; Hệ thống Du lịch; Hệ thống giám sát An toàn thông tin; Giám sát An ninh trật tự và An toàn giao thông.\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"Phó Giám đốc Sở TT&amp;TT Phan Nguyên Hào báo cáo kết quả quản trị, vận hành hệ thống giám sát, điều hành Đô thị thông minh tỉnh 9 tháng đầu năm 2021\" height=\"415\" src=\"https://storage-vnportal.vnpt.vn/nan-ubnd/1/quantritintuc/dc-hao637692283209596897.jpg\" width=\"640\" />\r\n<figcaption><em>Phó Giám đốc Sở TT&amp;TT Phan Nguyên Hào báo cáo kết quả quản trị, vận hành hệ thống giám sát, điều hành Đô thị thông minh tỉnh 9 tháng đầu năm 2021</em></figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nTrong 9 tháng đầu năm, phân hệ Hệ thống quản lý văn bản và điều hành đã tiếp nhận 5.238.802 văn bản đến, 791/903 văn bản đi; 509.345 văn bản đi gửi trên trục liên thông, 256.177 văn bản đi có ký số. Phân hệ Hành chính công tiếp nhận 283.175 hồ sơ. Phân hệ điều hành Y tế cập nhật 1.260.513 hồ sơ.<br />\r\n<br />\r\nNgày 3/12/2020, UBND tỉnh đã ban hành Kế hoạch số 694/KH-UBND về triển khai Đề án thí điểm xây dựng Đô thị thông minh tỉnh Nghệ An giai đoạn 2020 – 2022 trong đó có nhiệm vụ triển khai các dịch vụ kết nối đến IOC và ban hành Quyết định số 482/QĐ-UBND ngày 26/02/2021 về Quy chế quản lý, vận hành và sử dụng Hệ thống giám sát, điều hành đô thị thông minh tỉnh Nghệ An. Tuy nhiên, vẫn chưa có sự vào cuộc quyết liệt của lãnh đạo các đơn vị được phân công chủ trì triển khai các nội dung trong kế hoạch trên nên Trung tâm IOC chưa thật sự phát huy hiệu quả hoạt động; các cơ quan liên quan chưa thực sự quan tâm và thực hiện chức năng nhiệm vụ theo quy chế. Các sở, ngành, điạ phương chưa thực sự tham gia vận hành, cung cấp dữ liệu cho IOC. Thực tế dữ liệu đang rời rạc tại các ngành, địa phương nên chưa tạo được dòng chảy dữ liệu trên IOC, chưa phát huy được vai trò của IOC trong việc phục vụ lãnh đạo chính quyền. Dữ liệu một số lĩnh vực đang được cập nhật một cách thủ công và chưa được cập nhật thường xuyên. Các chức năng hệ thống IOC chưa hoàn thiện. Các hệ thống phần mềm quản lý, tổng hợp, thống kê chuyên ngành chưa được xây dựng hoặc chưa có cơ chế để chia sẻ, tích hợp vào IOC của tỉnh.<br />\r\n<br />\r\nBên cạnh đó, hiện chưa xây dựng được các bộ tiêu chí, bộ chỉ số giám sát cho từng lĩnh vực gắn với nhu cầu của lãnh đạo. Nhiều thông tin, chỉ số được hiện thị trên IOC nhưng chưa chú trọng vào các vấn đề nóng, có tính thời sự và cần thúc đẩy mà lãnh đạo quan tâm dẫn đến việc thông tin quan trọng bị lẫn vào thông tin không quan trọng nên không thấy sự nổi bật.\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"Đồng chí Trần Minh Tuệ - Phó Giám đốc Sở Y tế đề nghị cần kiểm tra rà soát lại hệ thống dữ liệu điều hành Y tế để đồng bộ dữ liệu\" height=\"430\" src=\"https://storage-vnportal.vnpt.vn/nan-ubnd/1/quantritintuc/dc-tue637692282976603924.jpg\" width=\"640\" />\r\n<figcaption><em>Đồng chí Trần Minh Tuệ - Phó Giám đốc Sở Y tế đề nghị cần kiểm tra rà soát lại hệ thống dữ liệu điều hành Y tế để đồng bộ dữ liệu</em></figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nTại cuộc họp, đại diện lãnh đạo các sở, ngành đánh giá việc triển khai Trung tâm điều hành thông minh tỉnh nhằm cập nhật thông tin của các hoạt động kinh tế - xã hội, nâng cao hiệu quả hoạt động của chính quyền các cấp, thúc đẩy sự phát triển kinh tế - xã hội trên địa bàn tỉnh. Tuy nhiên, cần kiểm tra rà soát lại hệ thống dữ liệu điều hành Y tế để đồng bộ dữ liệu; cần đưa hệ thống camera giám sát dịch tại các khu dân cư, phản ánh trực tuyến người dân trên hệ thống; thông qua hệ thống camera giám sát đô thị thông minh sẽ giúp phát hiện và xử lý các hành vi vi phạm về an ninh trật tự, an toàn giao thông...\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"Phó Chủ tịch UBND tỉnh Lê Ngọc Hoa phát biểu chỉ đạo\" height=\"422\" src=\"https://storage-vnportal.vnpt.vn/nan-ubnd/1/quantritintuc/dc-hoa-1637692282578989918.jpg\" width=\"640\" />\r\n<figcaption>Phó Chủ tịch UBND tỉnh Lê Ngọc Hoa phát biểu chỉ đạo</figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nKết luận cuộc họp, đồng chí Lê Ngọc Hoa – Phó Chủ tịch UBND tỉnh đánh giá việc đưa Trung tâm điều hành thông minh của tỉnh vào hoạt động nhằm phục vụ cho công tác nắm bắt, chỉ đạo, điều hành phát triển kinh tế - xã hội, an ninh trật tự trên địa bàn tỉnh cho lãnh đạo tỉnh, các sở, ban, ngành. Đây sẽ là nền tảng để dần hoàn thiện, hướng tới mục tiêu giám sát tất cả hoạt động trên các lĩnh vực quan trọng của địa phương, vì vậy, đề nghị các đơn vị phối hợp tiếp tục hoàn thiện các chức năng của hệ thống Trung tâm điều hành thông minh.<br />\r\n<br />\r\n“Trong thời gian qua, Cổng COVID-19 tỉnh chính thức đi vào hoạt động sau 2 tuần có ý tưởng là minh chứng cho sự lãnh đạo đồng bộ, triển khai quyết liệt của lãnh đạo tỉnh về sử dụng các nền tảng công nghệ nhằm phục vụ cho người dân, doanh nghiệp và chính quyền.” – Phó Chủ tịch UBND tỉnh nhấn mạnh.<br />\r\n<br />\r\nPhó Chủ tịch UBND tỉnh yêu cầu các đại biểu nghiên cứu góp ý vào dự thảo Quyết định về việc ban hành Quy chế hoạt động và phân công nhiệm vụ cho thành viên Ban chỉ đạo và Tổ giúp việc triển khai Trung tâm điều hành thông minh tỉnh Nghệ An để UBND tỉnh ban hành Quy chế hoạt động và phân công vai trò, trách nhiệm cụ thể cho từng thành viên. Trước mắt, từ tháng 11, Trung tâm điều hành thông minh sẽ từng bước triển khai việc truyền tải, kết nối số liệu tới các phòng họp trực tuyến của tỉnh.\r\n        </div>\r\n                <div class=\"margin-bottom-lg\">\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Tác giả: </strong>Kim Oanh\r\n            </p>\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Nguồn tin: </strong><a title=\"https://nghean.gov.vn\" rel=\"nofollow\" href=\"https://nghean.gov.vn/kinh-te-chinh-tri/trung-tam-dieu-hanh-thong-minh-se-tung-buoc-truyen-tai-ket-noi-so-lieu-toi-cac-phong-hop-truc-tu-361823\" target=\"_blank\">Cổng Thông tin điện tử tỉnh Nghệ An</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div>', 8, 2, 1164, 0, 1),
(573, 'Xem xét, xử lý trách nhiệm người đứng đầu nếu để tình hình trật tự an toàn giao thông phức tạp do thiếu lãnh đạo, thanh tra, giám sát', 'xem-xet', 'Chiều 26/5, UBND tỉnh tổ chức Hội nghị trực tuyến quán triệt triển khai thực hiện Chỉ thị số 10/CT-TTg ngày 19/4/2023 của Thủ tướng Chính phủ về tăng cường công tác bảo đảm trật tự an toàn giao thông (TTATGT) đường bộ trong tình hình mới và công tác bảo đảm TTATGT tại các tuyến đường liên thôn, liên xã trên địa bàn tỉnh Nghệ An. Đồng chí Nguyễn Văn Đệ - Tỉnh ủy viên, Phó Chủ tịch UBND tỉnh chủ trì Hội nghị.', '1_25.jpg', NULL, 22, '<strong>Quá trình xử lý các vi phạm về giao thông phải tuyệt đối thượng tôn pháp luật, <em>“Không có vùng cấm, không có ngoại lệ”</em></strong><br />\r\n<br />\r\nNgày 19/4/2023, Thủ tướng Chính phủ ban hành Chỉ thị 10/CT-TTg về tăng cường công tác bảo đảm TTATGT đường bộ trong tình hình mới với 09 nhóm nhiệm vụ, giải pháp trọng tâm. Mục tiêu của công tác bảo đảm TTATGT là: <em>“Thiết lập trật tự, kỷ cương trong chấp hành pháp luật về giao thông của cả người tham gia giao thông và lực lượng thực thi pháp luật về giao thông; xây dựng ý thức tự giác, ứng xử văn minh, chuẩn mực của người dân khi tham gia giao thông, từng bước hình thành rõ nét văn hóa giao thông trong Nhân dân; giảm thiểu tai nạn giao thông, trọng tâm là bảo đảm an ninh, an toàn sức khỏe, tính mạng, tài sản của Nhân dân; khắc phục tình trạng ùn tắc giao thông”</em>.<br />\r\n&nbsp;\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"2\" height=\"434\" src=\"/uploads/news/2023/05/2_21.jpg\" width=\"640\" />\r\n<figcaption><em>Đ/c Trần Tuấn Ngọc – Phó Giám đốc Công an tỉnh quán triệt nội dung triển khai thực hiện Chỉ thị số 10/CT-TTg. </em></figcaption>\r\n</figure>\r\n</div>\r\nQuán triệt nghiêm túc chỉ đạo của Thủ tướng Chính phủ tại Chỉ thị 10/CT-TTg, UBND tỉnh đã ban hành Kế hoạch số 328/KH-UBND ngày 06/5/2023 để tổ chức triển khai thực hiện. Kế hoạch xác định công tác bảo đảm TTATGT là nội dung đặc biệt quan trọng; đồng thời nâng cao vai trò, trách nhiệm của người đứng đầu, phát huy sức mạnh của cả hệ thống chính trị và toàn dân; phấn đấu đạt mục tiêu khắc phục ùn tắc giao thông, hạn chế thấp nhất tai nạn giao thông. Cụ thể hoá các nhiệm vụ được giao và xác định việc triển khai thực hiện Chỉ thị 10/CT-TTg là nội dung trọng tâm, thực hiện thường xuyên, liên tục, đồng bộ, sát hợp với thực tiễn.<br />\r\n<br />\r\nUBND tỉnh xác định 09 nhóm nhiệm vụ, giải pháp trọng tâm. Cụ thể, tập trung triển khai thực hiện nghiêm, hiệu quả chỉ đạo của Đảng, Nhà nước trong công tác bảo đảm TTATGT. Các Sở, ban, ngành, địa phương phải thực hiện đầy đủ trách nhiệm trong quản lý nhà nước về bảo đảm TTATGT. Người đứng đầu cấp ủy, chính quyền các cấp chịu trách nhiệm toàn diện về công tác bảo đảm TTATGT trên địa bàn phụ trách. Xem xét, xử lý trách nhiệm người đứng đầu nếu để tình hình TTATGT phức tạp do thiếu lãnh đạo, chỉ đạo, thanh tra, kiểm tra, giám sát hoặc thực hiện không đầy đủ trách nhiệm trong phạm vi quản lý. Tất cả các vụ tai nạn giao thông gây hậu quả đặc biệt nghiêm trọng xảy ra phải được xem xét, cá thể hóa, xử lý trách nhiệm của các tập thể, cá nhân liên quan.<br />\r\n<br />\r\nĐồng thời, siết chặt kỷ luật, kỷ cương, tăng cường thanh tra, kiểm tra, điều tra, xử lý nghiêm các hành vi vi phạm pháp luật, sai phạm, tiêu cực về giao thông. Quá trình xử lý các vi phạm về giao thông phải tuyệt đối thượng tôn pháp luật, “Không có vùng cấm, không có ngoại lệ”. Tập trung phát hiện, xử lý nghiêm vi phạm là nguyên nhân chính dẫn đến tai nạn giao thông.<br />\r\n<br />\r\nCác cơ quan, đơn vị phải đổi mới nội dung, hình thức tuyên truyền. Tập trung rà soát, sửa đổi, bổ sung hoàn thiện cơ chế, quy định về công tác bảo đảm TTATGT, trọng tâm là góp ý và ủng hộ hoàn thiện Dự án Luật TTATGT đường bộ và Luật Đường bộ. Xây dựng lộ trình thực hiện đồng bộ quy hoạch hạ tầng giao thông gắn với quy hoạch phát triển kinh tế - xã hội. Phát hiện và tham mưu chỉ đạo khắc phục kịp thời các “điểm đen”, “điểm tiềm ẩn”, “điểm bất cập về hạ tầng giao thông” và các bất hợp lý trong tổ chức giao thông.<br />\r\n<br />\r\nCùng với đó, nâng cao hiệu quả công tác đăng ký, quản lý phương tiện theo hướng định danh phương tiện gắn với định danh cá nhân. Nghiên cứu, thể chế hóa phương thức cấp biển kiểm soát phương tiện có giới hạn và trả phí sở hữu biển kiểm soát. Tăng cường đầu tư cơ sở vật chất, trang bị phương tiện cho các lực lượng chuyên trách. Triển khai đồng bộ các giải pháp phòng ngừa, khắc phục ùn tắc giao thông; tăng cường các giải pháp bảo đảm trật tự đô thị, quản lý lòng đường, hè phố.<br />\r\n&nbsp;\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"3\" height=\"418\" src=\"/uploads/news/2023/05/3_16.jpg\" width=\"640\" />\r\n<figcaption><em>Đ/c Lê Thanh Nghị - Trưởng phòng Cảnh sát giao thông Công an tỉnh trình bày dự thảo Kế hoạch về tăng cường công tác bảo đảm TTATGT tại các tuyến đường liên thôn, liên xã; các điểm giao cắt giữa các tuyến đường liên thôn, liên xã với nhau và với các tuyến huyện lộ, tỉnh lộ, quốc lộ, đường sắt trên địa bàn tỉnh.</em></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"4\" height=\"409\" src=\"/uploads/news/2023/05/4_11.jpg\" width=\"640\" />\r\n<figcaption><em>Đ/c Nguyễn Văn Hải – Phó Giám đốc Sở GTVT cho biết sẽ chủ trì tổ chức rà soát các “điểm đen”, “điểm tiềm ẩn” tai nạn giao thông và các bất hợp lý trong tổ chức giao thông để đề ra kế hoạch, lộ trình giải quyết khắc phục.</em></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"5\" height=\"422\" src=\"/uploads/news/2023/05/5_6.jpg\" width=\"640\" />\r\n<figcaption><em>Đ/c Đào Công Lợi - Phó Giám đốc Sở GD&amp;ĐT đề nghị các địa phương tăng cường giáo dục pháp luật về an toàn giao thông trong các cơ sở giáo dục.</em></figcaption>\r\n</figure>\r\n</div>\r\n<strong>Xác định việc triển khai thực hiện Chỉ thị 10/CT-TTg, Kế hoạch số 328/KH-UBND là tiền đề để hoàn thành mục tiêu kìm giữ và làm giảm tai nạn giao thông </strong>\r\n\r\n<div class=\"image-center\">\r\n<figure class=\"image\"><img alt=\"6\" height=\"382\" src=\"/uploads/news/2023/05/6_3.jpg\" width=\"640\" />\r\n<figcaption><em>Đ/c Nguyễn Văn Đệ - Phó Chủ tịch UBND tỉnh phát biểu.</em></figcaption>\r\n</figure>\r\n</div>\r\n<br />\r\nĐể tập trung triển khai đồng bộ các giải pháp bảo đảm TTATGT trên địa bàn tỉnh trong thời gian tới, phát biểu tại Hội nghị, đồng chí Nguyễn Văn Đệ - Phó Chủ tịch UBND tỉnh yêu cầu Thủ trưởng các Sở, ban, ngành, đoàn thể cấp tỉnh, cấp ủy, chính quyền các cấp phải xác định việc triển khai thực hiện Chỉ thị 10/CT-TTg của Thủ tướng Chính phủ, Kế hoạch số 328/KH-UBND của UBND tỉnh là nhiệm vụ đặc biệt quan trọng, cấp thiết, là tiền đề, cơ sở để hoàn thành mục tiêu kìm giữ và tiếp tục làm giảm tai nạn giao thông trên cả 03 tiêu chí (về số vụ, số người chết và số người bị thương) một cách căn cơ, bền vững. Trên cơ sở đó, các đơn vị, địa phương phải xác định rõ trách nhiệm, nhiệm vụ, nội dung và tinh thần quyết tâm chính trị cao nhất trong chỉ đạo, tổ chức triển khai thực hiện.<br />\r\n<br />\r\nNgay sau Hội nghị này, Phó Chủ tịch UBND tỉnh yêu cầu Thủ trưởng các Sở, ban, ngành, đoàn thể cấp tỉnh, chính quyền cấp huyện, cấp xã phải khẩn trương xây dựng Kế hoạch triển khai thực hiện nghiêm túc Chỉ thị 10/CT-TTg, Kế hoạch số 328/KH-UBND; đồng thời tổ chức Hội nghị quán triệt, triển khai thực hiện nghiêm túc, bảo đảm chất lượng. Quá trình nghiên cứu xây dựng Kế hoạch phải bám sát các nhiệm vụ được giao để cụ thể hóa các nhiệm vụ, giải pháp phù hợp với đặc điểm tình hình đơn vị, địa phương; phân công rõ trách nhiệm, nhiệm vụ, lộ trình, thời gian thực hiện, tuyệt đối không xây dựng Kế hoạch theo kiểu “cho có”, sao chép lại Kế hoạch của UBND tỉnh.<br />\r\n<br />\r\nCác đơn vị, địa phương quán triệt, yêu cầu 100% cán bộ, đảng viên, công chức, viên chức và lực lượng vũ trang chấp hành nghiêm các quy định của pháp luật về giao thông, nhất là thực hiện nghiêm quy định “Đã uống rượu, bia không điều khiển phương tiện giao thông”; tuyệt đối không can thiệp, tác động vào quá trình xử lý vi phạm pháp luật về giao thông của các cơ quan chức năng. Từ đó, sớm hình thành văn hóa “Đã ra đường phải chấp hành nghiêm pháp luật về an toàn giao thông” trước hết trong đội ngũ cán bộ, công chức, viên chức và lực lượng vũ trang.<br />\r\n<br />\r\nNgoài các nhiệm vụ cụ thể đã được chỉ rõ tại Kế hoạch số 328/KH-UBND, Phó Chủ tịch UBND tỉnh cũng giao các nhiệm vụ cụ thể cho các Sở, ngành, đơn vị liên quan. Trong đó, Sở GTVT sớm tham mưu ban hành bộ tiêu chí đánh giá hoàn thành nhiệm vụ thực hiện công tác bảo đảm TTATGT của Ban An toàn giao thông cấp tỉnh, cấp huyện nhằm gắn trách nhiệm của người đứng đầu của chính quyền, địa phương trong công tác bảo đảm TTATGT...<br />\r\n<br />\r\nUBND các huyện, thành, thị căn cứ nhiệm vụ trong Kế hoạch của UBND tỉnh để lãnh đạo, chỉ đạo triển khai, thực hiện đảm bảo hiệu quả, phù hợp với tình hình thực tế trên địa bàn. Trong đó, đặc biệt lưu ý phải phát huy tinh thần trách nhiệm, quyết tâm cao, vào cuộc mạnh mẽ, quyết liệt của cả hệ thống chính trị từ huyện đến xã, thôn, xóm. Địa bàn nào không tổ chức thực hiện đầy đủ các nội dung Chỉ thị 10/CT-TTg, để tình hình TTATGT diễn biến phức tạp, tai nạn giao thông tăng, xảy ra các vụ tai nạn giao thông gây hậu quả đặc biệt nghiêm trọng thì Chủ tịch UBND cấp huyện phải chịu trách nhiệm trước Chủ tịch UBND tỉnh...</div>\r\n&nbsp;\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:835px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div><br />\r\n			Trong 05 tháng đầu năm 2023, tình hình TTATGT trên địa bàn đã có những kết quả nổi bật. Kết quả xử lý vi phạm về TTATGT đạt cao; lực lượng Cảnh sát giao thông đã xử phạt 28.364 trường hợp với số tiền hơn 57,4 tỷ đồng, lực lượng Thanh tra giao thông đã xử phạt 421 trường hợp với số tiền hơn 01 tỷ đồng. Kết quả xử lý vi phạm trên các chuyên đề trọng điểm đều đạt cao, trong đó việc xử lý vi phạm về nồng độ cồn 6.174 trường hợp, đã tạo nên hiệu ứng rất tích cực, thay đổi được nhận thức của người dân khi tham gia giao thông...</div>\r\n\r\n			<div>Từ đầu năm 2023 đến nay, UBND tỉnh đã chỉ đạo xử lý, giải quyết được 20 điểm đen, 32 điểm tiềm ẩn tai nạn giao thông; không xảy ra ùn tắc giao thông, tai nạn giao thông được kìm giữ và làm giảm 02 tiêu chí so với cùng kỳ năm 2022. Đặc biệt, trong dịp nghỉ Lễ Giỗ tổ Hùng vương và Lễ 30/4, 01/5/2023, mặc dù là kỳ nghỉ lễ kéo dài; tuy nhiên, lực lượng Cảnh sát giao thông toàn tỉnh đã tổ chức ứng trực 100% quân số, khắc phục mọi khó khăn, huy động tối đa lực lượng tổ chức tuần tra, kiểm soát đảm bảo TTATGT 24/24h, không để xảy ra các vụ tai nạn giao thông đặc biệt nghiêm trọng.<br />\r\n			&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n        </div>\r\n                <div class=\"margin-bottom-lg\">\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Tác giả: </strong>Kim Oanh\r\n            </p>\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Nguồn tin: </strong><a title=\"https://nghean.gov.vn\" rel=\"nofollow\" href=\"https://nghean.gov.vn/tin-noi-bat/xem-xet-xu-ly-trach-nhiem-nguoi-dung-dau-neu-de-tinh-hinh-trat-tu-an-toan-giao-thong-phuc-tap-do-569138\" target=\"_blank\">Cổng Thông tin điện tử tỉnh Nghệ An</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n', 12, 3, 2366, 0, 1),
(1182, 'Thông báo nhận hồ sơ ôn tập, thi cấp chứng chỉ Ứng dụng CNTT theo &quot;Chuẩn kỹ năng sử dụng CNTT cơ bản&quot; quy định tại Thông tư 03&#x002F;2014&#x002F;TT-BTTTT', 'q', 'Trung tâm Công nghệ thông tin và Truyền thông Nghệ An được giao nhiệm vụ tổ chức thi và cấp chứng chỉ ứng dụng công nghệ thông tin cơ bản theo Quyết định số 1058/QĐ-SGDĐT của Sở Giáo dục đào tạo Nghệ An. Chứng chỉ ứng dụng CNTT cơ bản hiện là chứng chỉ của hệ thống giáo dục quốc dân nhằm xác nhận trình độ, năng lực sử dụng CNTT theo Chuẩn kĩ năng sử dụng CNTT quy định tại Thông tư số 03/2014/TT-BTTTT của Bộ trưởng Bộ Thông tin và Truyền thông', 'ccudcnttcb.jpg', NULL, 22, '<div id=\"news-bodyhtml\" class=\"bodytext margin-bottom-lg\">\r\n            <div style=\"text-align: justify;\">Căn cứ Thông tư số 03/2014/TT-BTTTT ngày 11/03/2014 của Bộ Thông tin và Truyền thông quy định Chuẩn kỹ năng sử dụng công nghệ thông tin;<br />\r\nCăn cứ Thông tư liên tịch số 17/2016/TTLT-BGDĐT-BTTTT ngày 21/6/2016 của Bộ Giáo dục Đào tạo và Bộ Thông tin Truyền thông về việc quy định tổ chức thi và cấp chứng chỉ ứng dụng công nghệ thông tin;<br />\r\nCăn cứ Quyết định số 1058/QĐ-SGDĐT ngày 25/9/2018 của Sở Giáo dục và Đào tạo Nghệ An về việc giao nhiệm vụ tổ chức thi và cấp chứng chỉ ứng dụng công nghệ thông tin cho Trung tâm Công nghệ Thông tin và Truyền thông thuộc Sở Thông tin và Truyền thông Nghệ An;<br />\r\n<br />\r\nTrung tâm Công nghệ Thông tin và Truyền thông Nghệ An liên tục mở lớp ôn tập và thi cấp chứng chỉ Ứng dụng Công nghệ thông tin cơ bản (theo chuẩn kỹ năng được quy định tại Thông tư 03/2014/TT-BTTTT) như sau:<br />\r\n<br />\r\n<strong>1. Đối tượng nộp hồ sơ:&nbsp;</strong></div>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Cán bộ, công chức, viên chức và người lao động trong các cơ quan, đơn vị;</li>\r\n	<li style=\"text-align: justify;\">Học sinh, Sinh viên và các đối tượng khác có nhu cầu được cấp Chứng chỉ ứng dụng CNTT cơ bản.</li>\r\n	<li style=\"text-align: justify;\">Đối với các cơ quan tổ chức đăng ký đề nghị gửi kèm theo danh sách học viên</li>\r\n</ul>\r\n\r\n<div style=\"text-align: justify;\"><strong>2. Địa điểm học ôn, thi:</strong><br />\r\n<br />\r\nTrung tâm CNTT&amp;TT Nghệ An (Số 6, đường Trần Huy Liệu, Tp Vinh, tỉnh Nghệ An).<br />\r\n<br />\r\n<strong>3. Thời gian ôn, thi:</strong><br />\r\n<br />\r\nVào các ngày thứ 7, chủ nhật hàng tuần.<br />\r\n<br />\r\n<strong>4. Nội dung chương trình:</strong><br />\r\n<br />\r\nNội dung gồm 02 phần thi: Lý thuyết và thực hành (lý thuyết thi trắc nghiệm trên máy tính, thực hành thi trực tiếp trên máy tính).<br />\r\n<br />\r\n<strong>5. Hồ sơ đăng ký bao gồm:</strong></div>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Đơn xin đăng ký theo mẫu của Trung tâm CNTT&amp;TT Nghệ An &lt;<a href=\"/uploads/udcnttcb/mau_don_dang_ky.docx\">link&nbsp;tải mẫu đơn đăng ký</a>&gt;</li>\r\n	<li style=\"text-align: justify;\">Hai (02) ảnh 3x4 (theo kiểu ảnh chứng minh nhân dân được chụp không quá 6 tháng trước ngày đăng ký dự thi, mặt sau của ảnh ghi rõ họ và tên, ngày, tháng, năm sinh, nơi sinh);</li>\r\n	<li style=\"text-align: justify;\">Bản photo CMND/Hộ chiếu/Thẻ căn cước (Thẻ có hình).</li>\r\n</ul>\r\n\r\n<div style=\"text-align: justify;\"><br />\r\n<strong>6. Lệ phí ôn và thi:</strong><br />\r\n<br />\r\nTổng học phí và lệ phí thi: 1.000.000 VNĐ/học viên, bao gồm cả lệ phí ôn thi, lệ phí thi và lệ phí cấp chứng chỉ.<br />\r\n<br />\r\n<strong>7. Chứng chỉ:</strong><br />\r\n<br />\r\n&nbsp;Học viên có kết quả thi đạt sẽ được Trung tâm CNTT&amp;TT Nghệ An cấp chứng chỉ Ứng dụng CNTT cơ bản theo mẫu quy định của Bộ Giáo dục Đào tạo có giá trị toàn quốc.<br />\r\n<br />\r\n<strong>8. Địa điểm tiếp nhận hồ sơ:</strong></div>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Phòng Nghiệp vụ Kỹ thuật và Truyền thông, Trung tâm Công nghệ thông tin và Truyền thông.</li>\r\n	<li style=\"text-align: justify;\">Số 6, đường Trần Huy Liệu, Tp Vinh, tỉnh Nghệ An.</li>\r\n	<li style=\"text-align: justify;\">Điện thoại: 02388. 687 567 hoặc 0915 599 594 (Ông Nguyễn Văn Thương – Phó Trưởng phòng Nghiệp vụ kỹ thuật và truyền thông).</li>\r\n	<li style=\"text-align: justify;\">Website: <a href=\"http://www.nait.vn\">http://www.nait.vn</a>.</li>\r\n</ul>\r\n        </div>\r\n                <div class=\"margin-bottom-lg\">\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Tác giả: </strong><a href=\"/author/Phan-Binh-Giang/\">Phan Bình Giang</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div>\r\n', 19, 4, 6, 0, 1),
(12, 'Thư viện ảnh', '100--Hoc-Phi-Cho-7-Truong-Dh-Tai-Anh', '', 'duhoc-250.jpg', NULL, 22, '', 10, 6, 2, 0, 1),
(1183, 'Hướng dẫn kiểm tra tốc độ đường truyền số liệu chuyên dùng', 'Tro-Lai', 'Tài liệu hướng dẫn sử dụng Hệ thống CSDL Quốc gia về KNTC\r\n', 'nait.vn-pst.png', NULL, 22, '<div class=\"news_column panel panel-default newsdetail\">\r\n    <div class=\"panel-body\">\r\n        \r\n                <div class=\"clearfix\">\r\n             <div class=\"hometext m-bottom\"></div>\r\n        </div>\r\n        <div id=\"news-bodyhtml\" class=\"bodytext margin-bottom-lg\">\r\n            <strong>Bước 1: Kiểm tra cấu hình</strong>\r\n<ul>\r\n	<li>Kiểm tra cấu hình định tuyến trên thiết bị Modem, Router đảm bảo các giải địa chỉ: <strong>10.122.0.0/16; 10.123.0.0/16; 172.17.0.0/16; 10.21.0.0/16 </strong>được định tuyến qua Gateway đường truyền số liệu chuyên dùng.</li>\r\n	<li>Kiểm tra cấu hình DNS server trên thiết bị Modem, Router trỏ đến các địa chỉ lần lượt là: Primary DNS server (DNS1) = <strong>10.122.250.250</strong>; Secondary DNS server (DNS2) = <strong>8.8.8.8</strong>.</li>\r\n	<li>Kiểm tra ping thông đến địa chỉ IP <strong>10.122.249.89</strong>. Nếu ping thông thì chuyển qua <strong>Bước 2</strong>.</li>\r\n</ul>\r\n<br />\r\n<em><u><strong>Chú ý</strong></u></em>: Nếu các thông số chưa phù hợp, hoặc ping không thông đến địa chỉ IP <strong>10.122.249.89</strong> thì liên hệ với Trung tâm Viễn thông của VNPT Nghệ An để được hỗ trợ.<br />\r\n<br />\r\n<strong>Bước 2: &nbsp;</strong><br />\r\nMở trình duyệt truy cập vào địa chỉ http://10.122.249.89 hệ thống sẽ tự động đo hoặc bấm vào nút Start. Sau quá trình đo kết thúc, hệ thống báo kết quả và lưu vào cơ sở dữ liệu.\r\n<div class=\"image-center\"><a href=\"/uploads/news/nait.vn-pst.png\"><img alt=\"\" height=\"346\" src=\"/uploads/news/nait.vn-pst.png\" width=\"640\" /></a></div>\r\n&nbsp;\r\n        </div>\r\n                <div class=\"margin-bottom-lg\">\r\n                        <p class=\"h5 text-right\">\r\n                <strong>Tác giả: </strong><a href=\"/author/Phan-Binh-Giang/\">Phan Bình Giang</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div>\r\n', 22, 5, 629, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Dienthoai` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgayDangKy` date NOT NULL DEFAULT '0000-00-00',
  `idGroup` int(11) NOT NULL DEFAULT 0,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `RandomKey` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `HoTen`, `Username`, `Password`, `DiaChi`, `Dienthoai`, `Email`, `NgayDangKy`, `idGroup`, `NgaySinh`, `GioiTinh`, `Active`, `RandomKey`) VALUES
(21, 'Gia Hu', 'giahu', 'c4ca4238a0b923820dcc509a6f75849b', '123 meo meo chấm cơm', '0912345678', 'giahu@localhost.com', '2009-01-22', 1, '1972-01-01', 0, 1, 'f29c0f1c5f3cc955ceed26b4a4d6e1d9'),
(20, 'Tí', 'ti', 'c4ca4238a0b923820dcc509a6f75849b', '456, abc chấm  cơm chấm vê en', '089874563', 'ti@localhost.com', '2009-01-20', 1, '1971-01-01', 1, 1, '1e932f24dc0aa4e7a6ac2beec387416d'),
(22, 'Tèo', 'teo', 'c4ca4238a0b923820dcc509a6f75849b', '789 gia hu chấm vê en', '32648372', 'teo@localhost.com', '2009-02-07', 1, '1970-01-01', 1, 1, 'cfc69414187bd8ade5c17c797a107525'),
(25, 'quan', 'quan1', 'quan', NULL, NULL, 'quan@yahoo.com', '2011-08-12', 0, '2011-08-03', 1, 1, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  ADD PRIMARY KEY (`idBC`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`idWebLink`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idLT`);

--
-- Chỉ mục cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  ADD PRIMARY KEY (`idPA`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`idQC`);

--
-- Chỉ mục cho bảng `sukien`
--
ALTER TABLE `sukien`
  ADD PRIMARY KEY (`idSK`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTL`),
  ADD UNIQUE KEY `TenTL` (`TenTL`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  MODIFY `idBC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `idWebLink` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `idLT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  MODIFY `idPA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `idQC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sukien`
--
ALTER TABLE `sukien`
  MODIFY `idSK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1631;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
