USE [QLBanVeMayBay]
GO
/****** Object:  Table [dbo].[CHUYENBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENBAY](
	[MaChuyenBay] [varchar](10) NOT NULL,
	[NgayDi] [date] NULL,
	[NgayDen] [date] NULL,
	[GioKhoiHanh] [time](7) NULL,
	[SoGheThuongGia] [int] NULL,
	[SoGhePhoThong] [int] NULL,
	[MaTuyenBay] [varchar](10) NULL,
	[MaMayBay] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDichVu] [varchar](10) NOT NULL,
	[Mave] [varchar](10) NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[GiaDichVu] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC,
	[Mave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGMAYBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGMAYBAY](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGVE]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGVE](
	[MaHangVe] [varchar](10) NOT NULL,
	[TenHangVe] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANHKHACH]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANHKHACH](
	[CCCD] [varchar](12) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[DienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHoaDon] [varchar](10) NOT NULL,
	[NgayLap] [varchar](20) NULL,
	[CCCD] [varchar](12) NULL,
	[MaNhanVien] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaVe] [varchar](10) NOT NULL,
	[SoGheDat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIVE]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVE](
	[MaLoaiVe] [varchar](10) NOT NULL,
	[TenLoaiVe] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAYBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAYBAY](
	[MaMayBay] [varchar](10) NOT NULL,
	[MaHang] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMayBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [varchar](10) NOT NULL,
	[MatKhau] [varchar](30) NULL,
	[VaiTro] [nvarchar](30) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[DienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Hinh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANBAY](
	[MaSanBay] [varchar](10) NOT NULL,
	[TenSanBay] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[DiaDiem] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TUYENBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUYENBAY](
	[MaTuyenBay] [varchar](10) NOT NULL,
	[MaSanBayDi] [varchar](10) NULL,
	[MaSanBayDen] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VEMAYBAY]    Script Date: 31/07/2024 4:13:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VEMAYBAY](
	[MaVe] [varchar](10) NOT NULL,
	[MaHangVe] [varchar](10) NULL,
	[MaLoaiVe] [varchar](10) NULL,
	[MaChuyenBay] [varchar](10) NULL,
	[GiaBan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHUYENBAY] ([MaChuyenBay], [NgayDi], [NgayDen], [GioKhoiHanh], [SoGheThuongGia], [SoGhePhoThong], [MaTuyenBay], [MaMayBay]) VALUES (N'CB01', CAST(N'2024-12-01' AS Date), CAST(N'2024-12-02' AS Date), CAST(N'08:20:00' AS Time), 18, 151, N'TB04', N'MB04')
INSERT [dbo].[CHUYENBAY] ([MaChuyenBay], [NgayDi], [NgayDen], [GioKhoiHanh], [SoGheThuongGia], [SoGhePhoThong], [MaTuyenBay], [MaMayBay]) VALUES (N'CB02', CAST(N'2024-12-01' AS Date), CAST(N'2024-12-03' AS Date), CAST(N'22:00:00' AS Time), 24, 156, N'TB01', N'MB01')
INSERT [dbo].[CHUYENBAY] ([MaChuyenBay], [NgayDi], [NgayDen], [GioKhoiHanh], [SoGheThuongGia], [SoGhePhoThong], [MaTuyenBay], [MaMayBay]) VALUES (N'CB03', CAST(N'2024-12-03' AS Date), CAST(N'2024-12-05' AS Date), CAST(N'07:30:00' AS Time), 8, 195, N'TB02', N'MB02')
INSERT [dbo].[CHUYENBAY] ([MaChuyenBay], [NgayDi], [NgayDen], [GioKhoiHanh], [SoGheThuongGia], [SoGhePhoThong], [MaTuyenBay], [MaMayBay]) VALUES (N'CB04', CAST(N'2024-12-04' AS Date), CAST(N'2024-12-05' AS Date), CAST(N'11:00:00' AS Time), 28, 183, N'TB05', N'MB05')
INSERT [dbo].[CHUYENBAY] ([MaChuyenBay], [NgayDi], [NgayDen], [GioKhoiHanh], [SoGheThuongGia], [SoGhePhoThong], [MaTuyenBay], [MaMayBay]) VALUES (N'CB05', CAST(N'2024-12-11' AS Date), CAST(N'2024-12-13' AS Date), CAST(N'18:20:00' AS Time), 16, 168, N'TB03', N'MB03')
GO
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV01', N'V01', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV01', N'V05', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV02', N'V02', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV02', N'V04', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV03', N'V03', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV04', N'V02', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV04', N'V04', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV05', N'V01', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV05', N'V05', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV06', N'V06', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV06', N'V10', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV07', N'V07', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV07', N'V08', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV08', N'V08', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV08', N'V09', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV09', N'V07', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV09', N'V09', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV10', N'V10', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV11', N'V11', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV11', N'V14', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV12', N'V11', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV12', N'V12', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV13', N'V13', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV13', N'V15', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV14', N'V14', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV14', N'V16', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV15', N'V15', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV15', N'V17', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV16', N'V18', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV17', N'V19', N'Wifi', 0.2)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV18', N'V20', N'Suất ăn đặc biệt', 0.75)
INSERT [dbo].[DICHVU] ([MaDichVu], [Mave], [TenDichVu], [GiaDichVu]) VALUES (N'DV19', N'V14', N'Suất ăn đặc biệt', 0.75)
GO
INSERT [dbo].[HANGMAYBAY] ([MaHang], [TenHang], [QuocGia]) VALUES (N'HMB01', N'JetStar Pacific Airlines', N'Việt Nam')
INSERT [dbo].[HANGMAYBAY] ([MaHang], [TenHang], [QuocGia]) VALUES (N'HMB02', N'Aegean Airlines', N'Hy Lạp')
INSERT [dbo].[HANGMAYBAY] ([MaHang], [TenHang], [QuocGia]) VALUES (N'HMB03', N'Wamos Air', N'Tây Ban Nha')
INSERT [dbo].[HANGMAYBAY] ([MaHang], [TenHang], [QuocGia]) VALUES (N'HMB04', N'United Airlines', N'Hoa Kỳ')
INSERT [dbo].[HANGMAYBAY] ([MaHang], [TenHang], [QuocGia]) VALUES (N'HMB05', N'EgyptAir', N'Ai Cập')
GO
INSERT [dbo].[HANGVE] ([MaHangVe], [TenHangVe]) VALUES (N'HV01', N'Thương gia')
INSERT [dbo].[HANGVE] ([MaHangVe], [TenHangVe]) VALUES (N'HV02', N'Phổ thông')
GO
INSERT [dbo].[HANHKHACH] ([CCCD], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'012123456787', N'Nguyễn Huy Hoàng', 1, N'0123456732', N'hoangnvh@gmail.com', N'Bắc Ninh')
INSERT [dbo].[HANHKHACH] ([CCCD], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'012123456788', N'Nguyễn Minh Ý', 1, N'0123456788', N'minhy@gmail.com', N'Phú Yên')
INSERT [dbo].[HANHKHACH] ([CCCD], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'012123456789', N'Ngô Tuấn Đức', 1, N'0123456789', N'ducnt@gmail.com', N'TP Hồ Chí Minh')
INSERT [dbo].[HANHKHACH] ([CCCD], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'012221462830', N'Hồ Hoàng Tông', 0, N'0856985586', N'tonghh@gmail.com', N'Phú Yên')
GO
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD01', N'2024-11-11', N'012221462830', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD02', N'2023-10-13', N'012123456789', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD03', N'2022-09-14', N'012123456788', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD04', N'2021-08-17', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD06', N'2019-07-02', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD08', N'2017-03-06', N'012123456789', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD09', N'2016-03-08', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD10', N'2015-01-10', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD100', N'2017-03-21', N'012123456787', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD101', N'2024-09-09', N'012123456788', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD102', N'2024-11-02', N'012123456788', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD103', N'2024-07-18', N'012123456789', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD104', N'2024-02-20', N'012123456788', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD105', N'2024-10-20', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD107', N'2024-01-09', N'012123456787', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD108', N'2024-06-27', N'012123456789', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD109', N'2024-04-80', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD11', N'2014-02-21', N'012123456788', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD110', N'2024-06-04', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD111', N'2024-11-17', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD112', N'2024-05-23', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD113', N'2024-07-24', N'012123456789', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD114', N'2024-03-28', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD115', N'2024-08-17', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD116', N'2024-07-31', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD12', N'2016-01-22', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD13', N'2018-04-23', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD14', N'2020-05-24', N'012123456789', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD15', N'2022-06-25', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD18', N'2022-06-22', N'012221462830', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD19', N'2017-04-25', N'012221462830', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD21', N'2023-04-27', N'012123456787', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD23', N'2019-06-16', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD24', N'2024-07-05', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD26', N'2022-02-06', N'012221462830', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD28', N'2016-05-24', N'012123456789', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD29', N'2018-10-22', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD30', N'2019-04-28', N'012123456788', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD31', N'2017-04-20', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD32', N'2020-06-06', N'012123456789', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD33', N'2021-02-28', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD34', N'2019-10-07', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD35', N'2019-04-04', N'012221462830', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD36', N'2023-10-14', N'012221462830', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD37', N'2019-04-24', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD38', N'2022-05-27', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD39', N'2016-11-26', N'012123456789', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD40', N'2022-03-21', N'012123456789', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD41', N'2021-01-13', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD42', N'2019-06-27', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD43', N'2024-11-29', N'012123456788', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD44', N'2017-02-24', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD45', N'2020-05-11', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD46', N'2017-11-11', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD47', N'2018-07-26', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD48', N'2019-11-02', N'012123456789', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD49', N'2022-03-02', N'012123456787', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD50', N'2020-06-28', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD51', N'2016-07-23', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD52', N'2022-12-16', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD54', N'2019-09-14', N'012221462830', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD58', N'2017-06-12', N'012123456789', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD59', N'2015-09-08', N'012221462830', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD60', N'2017-07-16', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD63', N'2017-04-23', N'012123456787', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD64', N'2022-10-19', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD65', N'2022-02-09', N'012123456789', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD67', N'2023-02-12', N'012123456788', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD68', N'2024-01-23', N'012123456788', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD69', N'2022-06-05', N'012123456789', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD71', N'2022-04-25', N'012123456789', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD72', N'2015-11-25', N'012123456788', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD74', N'2021-04-11', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD75', N'2015-04-09', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD76', N'2022-06-03', N'012123456788', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD77', N'2016-06-26', N'012221462830', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD78', N'2023-06-04', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD81', N'2016-01-22', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD82', N'2021-01-25', N'012221462830', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD83', N'2020-09-19', N'012123456788', N'NV03')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD84', N'2021-11-25', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD85', N'2017-12-24', N'012123456788', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD87', N'2016-01-02', N'012221462830', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD88', N'2020-08-04', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD89', N'2020-05-24', N'012123456788', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD90', N'2020-11-03', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD91', N'2020-10-27', N'012123456787', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD92', N'2019-03-18', N'012123456788', N'NV01')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD93', N'2019-03-05', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD94', N'2017-12-17', N'012221462830', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD95', N'2023-06-21', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD96', N'2016-08-12', N'012123456787', N'NV02')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD97', N'2017-11-10', N'012221462830', N'NV05')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD98', N'2021-12-03', N'012123456789', N'NV04')
INSERT [dbo].[HOADON] ([MaHoaDon], [NgayLap], [CCCD], [MaNhanVien]) VALUES (N'HD99', N'2016-08-13', N'012123456789', N'NV02')
GO
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD01', N'V02', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD01', N'V15', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD01', N'V18', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD02', N'V12', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD02', N'V14', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD02', N'V18', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD03', N'V06', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD03', N'V13', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD03', N'V20', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD04', N'V11', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD04', N'V13', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD04', N'V17', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD06', N'V03', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD06', N'V08', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD06', N'V11', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD08', N'V06', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD08', N'V16', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD09', N'V03', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD09', N'V04', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD10', N'V07', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD10', N'V14', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD10', N'V19', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD100', N'V06', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD100', N'V08', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD11', N'V10', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD11', N'V13', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD11', N'V18', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD12', N'V15', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD12', N'V19', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD12', N'V20', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD13', N'V04', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD13', N'V07', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD13', N'V12', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD14', N'V04', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD14', N'V07', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD14', N'V19', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD15', N'V05', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD15', N'V08', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD15', N'V19', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD18', N'V04', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD18', N'V19', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD19', N'V01', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD19', N'V10', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD21', N'V05', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD21', N'V10', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD21', N'V19', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD23', N'V18', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD24', N'V08', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD24', N'V10', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD26', N'V02', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD26', N'V04', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD26', N'V07', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD28', N'V06', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD28', N'V09', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD29', N'V06', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD29', N'V10', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD29', N'V18', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD30', N'V10', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD30', N'V19', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD31', N'V03', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD31', N'V11', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD31', N'V13', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD32', N'V03', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD32', N'V13', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD32', N'V15', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD33', N'V05', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD33', N'V18', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD34', N'V11', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD34', N'V15', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD35', N'V11', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD35', N'V13', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD36', N'V06', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD36', N'V09', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD36', N'V16', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD37', N'V04', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD37', N'V07', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD38', N'V01', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD38', N'V12', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD39', N'V06', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD39', N'V11', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD40', N'V11', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD41', N'V06', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD41', N'V13', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD41', N'V20', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD42', N'V02', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD42', N'V05', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD42', N'V16', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD43', N'V07', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD43', N'V08', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD43', N'V15', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD44', N'V02', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD44', N'V06', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD44', N'V20', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD45', N'V14', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD45', N'V17', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD45', N'V18', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD46', N'V12', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD46', N'V16', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD47', N'V03', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD47', N'V07', 8)
GO
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD48', N'V07', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD48', N'V13', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD49', N'V05', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD49', N'V15', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD50', N'V04', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD50', N'V05', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD51', N'V02', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD51', N'V04', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD51', N'V10', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD52', N'V07', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD52', N'V19', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD54', N'V02', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD54', N'V07', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD54', N'V14', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD58', N'V10', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD58', N'V13', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD59', N'V03', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD59', N'V18', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD60', N'V09', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD60', N'V12', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD60', N'V15', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD63', N'V08', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD63', N'V15', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD63', N'V17', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD64', N'V03', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD64', N'V07', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD64', N'V17', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD65', N'V01', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD65', N'V05', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD65', N'V12', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD67', N'V05', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD67', N'V11', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD67', N'V12', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD68', N'V01', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD68', N'V11', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD68', N'V13', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD69', N'V08', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD69', N'V11', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD71', N'V03', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD71', N'V12', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD71', N'V15', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD72', N'V12', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD72', N'V13', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD74', N'V04', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD74', N'V07', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD75', N'V08', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD75', N'V16', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD75', N'V17', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD76', N'V06', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD76', N'V20', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD77', N'V02', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD77', N'V04', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD78', N'V09', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD78', N'V13', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD81', N'V09', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD81', N'V15', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD81', N'V17', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD82', N'V06', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD82', N'V12', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD82', N'V17', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD83', N'V02', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD83', N'V16', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD84', N'V02', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD84', N'V07', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD84', N'V16', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD85', N'V11', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD85', N'V19', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD87', N'V08', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD87', N'V18', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD88', N'V11', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD88', N'V15', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD89', N'V06', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD89', N'V11', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD90', N'V13', 10)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD90', N'V19', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD91', N'V12', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD91', N'V14', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD92', N'V06', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD92', N'V07', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD93', N'V02', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD93', N'V13', 4)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD94', N'V09', 8)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD94', N'V19', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD95', N'V08', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD95', N'V09', 2)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD96', N'V02', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD96', N'V15', 9)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD97', N'V15', 5)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD97', N'V19', 1)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD98', N'V10', 3)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD98', N'V16', 6)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD99', N'V09', 7)
INSERT [dbo].[HOADONCHITIET] ([MaHoaDon], [MaVe], [SoGheDat]) VALUES (N'HD99', N'V17', 5)
GO
INSERT [dbo].[LOAIVE] ([MaLoaiVe], [TenLoaiVe]) VALUES (N'LV01', N'Khứ hồi')
INSERT [dbo].[LOAIVE] ([MaLoaiVe], [TenLoaiVe]) VALUES (N'LV02', N'Một chiều')
GO
INSERT [dbo].[MAYBAY] ([MaMayBay], [MaHang]) VALUES (N'MB01', N'HMB01')
INSERT [dbo].[MAYBAY] ([MaMayBay], [MaHang]) VALUES (N'MB02', N'HMB02')
INSERT [dbo].[MAYBAY] ([MaMayBay], [MaHang]) VALUES (N'MB03', N'HMB03')
INSERT [dbo].[MAYBAY] ([MaMayBay], [MaHang]) VALUES (N'MB04', N'HMB04')
INSERT [dbo].[MAYBAY] ([MaMayBay], [MaHang]) VALUES (N'MB05', N'HMB05')
GO
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MatKhau], [VaiTro], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi], [Hinh]) VALUES (N'NV01', N'123', N'Nhân viên', N'Nguyễn Văn Hòa', 1, N'0123456789', N'hoanv@gmail.com', N'Bắc Giang', N'croatia.jpg')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MatKhau], [VaiTro], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi], [Hinh]) VALUES (N'NV02', N'123', N'Trưởng phòng', N'Nguyễn Hoài Anh', 1, N'0123456788', N'anhnh@gmail.com', N'Bắc Ninh', N'trump.jpg')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MatKhau], [VaiTro], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi], [Hinh]) VALUES (N'NV03', N'123', N'Nhân viên', N'Bùi Ngọc Khánh', 1, N'0123456787', N'khanhbn@gmail.com', N'Hà Nội', N'phap.jpg')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MatKhau], [VaiTro], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi], [Hinh]) VALUES (N'NV04', N'123', N'Trưởng phòng', N'Nguyễn Vũ Huy Hoàng', 1, N'0123456786', N'hoangnvh@gmail.com', N'Bắc Ninh', N'putin.jpg')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [MatKhau], [VaiTro], [HoTen], [GioiTinh], [DienThoai], [Email], [DiaChi], [Hinh]) VALUES (N'NV05', N'123', N'Nhân viên', N'Lường Thị Trang', 0, N'0123456785', N'tranglt@gmail.com', N'Hà Nội', N'oldUSA.jpg')
GO
INSERT [dbo].[SANBAY] ([MaSanBay], [TenSanBay], [QuocGia], [DiaDiem]) VALUES (N'SB01', N'Tân Sơn Nhất', N'Việt Nam', N'Hồ Chí Minh')
INSERT [dbo].[SANBAY] ([MaSanBay], [TenSanBay], [QuocGia], [DiaDiem]) VALUES (N'SB02', N'Eleftherios Venizelos', N'Hy Lạp', N'Athens')
INSERT [dbo].[SANBAY] ([MaSanBay], [TenSanBay], [QuocGia], [DiaDiem]) VALUES (N'SB03', N'Madrid Barajas', N'Tây Ban Nha', N'Madrid')
INSERT [dbo].[SANBAY] ([MaSanBay], [TenSanBay], [QuocGia], [DiaDiem]) VALUES (N'SB04', N'Chicago OHare', N'Hoa Kỳ', N'Chicago')
INSERT [dbo].[SANBAY] ([MaSanBay], [TenSanBay], [QuocGia], [DiaDiem]) VALUES (N'SB05', N'Cairo', N'Ai Cập', N'Cairo')
GO
INSERT [dbo].[TUYENBAY] ([MaTuyenBay], [MaSanBayDi], [MaSanBayDen]) VALUES (N'TB01', N'SB01', N'SB02')
INSERT [dbo].[TUYENBAY] ([MaTuyenBay], [MaSanBayDi], [MaSanBayDen]) VALUES (N'TB02', N'SB02', N'SB03')
INSERT [dbo].[TUYENBAY] ([MaTuyenBay], [MaSanBayDi], [MaSanBayDen]) VALUES (N'TB03', N'SB03', N'SB04')
INSERT [dbo].[TUYENBAY] ([MaTuyenBay], [MaSanBayDi], [MaSanBayDen]) VALUES (N'TB04', N'SB04', N'SB05')
INSERT [dbo].[TUYENBAY] ([MaTuyenBay], [MaSanBayDi], [MaSanBayDen]) VALUES (N'TB05', N'SB05', N'SB01')
GO
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V01', N'HV01', N'LV01', N'CB01', 11)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V02', N'HV02', N'LV02', N'CB02', 7)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V03', N'HV02', N'LV01', N'CB03', 12)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V04', N'HV01', N'LV01', N'CB04', 14)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V05', N'HV02', N'LV01', N'CB05', 6)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V06', N'HV02', N'LV02', N'CB05', 12)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V07', N'HV02', N'LV02', N'CB04', 14)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V08', N'HV02', N'LV02', N'CB03', 16)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V09', N'HV01', N'LV01', N'CB02', 18)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V10', N'HV01', N'LV01', N'CB01', 20)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V11', N'HV01', N'LV01', N'CB04', 19)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V12', N'HV01', N'LV02', N'CB01', 17)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V13', N'HV01', N'LV01', N'CB05', 15)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V14', N'HV02', N'LV02', N'CB03', 13)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V15', N'HV02', N'LV01', N'CB02', 11)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V16', N'HV02', N'LV01', N'CB02', 6)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V17', N'HV01', N'LV02', N'CB05', 12)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V18', N'HV02', N'LV01', N'CB03', 18)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V19', N'HV01', N'LV01', N'CB04', 24)
INSERT [dbo].[VEMAYBAY] ([MaVe], [MaHangVe], [MaLoaiVe], [MaChuyenBay], [GiaBan]) VALUES (N'V20', N'HV02', N'LV02', N'CB01', 12)
GO
ALTER TABLE [dbo].[HANHKHACH] ADD  DEFAULT ((1)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaMayBay])
REFERENCES [dbo].[MAYBAY] ([MaMayBay])
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaTuyenBay])
REFERENCES [dbo].[TUYENBAY] ([MaTuyenBay])
GO
ALTER TABLE [dbo].[DICHVU]  WITH CHECK ADD FOREIGN KEY([Mave])
REFERENCES [dbo].[VEMAYBAY] ([MaVe])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([CCCD])
REFERENCES [dbo].[HANHKHACH] ([CCCD])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [dbo].[VEMAYBAY] ([MaVe])
GO
ALTER TABLE [dbo].[MAYBAY]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[HANGMAYBAY] ([MaHang])
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaSanBayDi])
REFERENCES [dbo].[SANBAY] ([MaSanBay])
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaSanBayDen])
REFERENCES [dbo].[SANBAY] ([MaSanBay])
GO
ALTER TABLE [dbo].[VEMAYBAY]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [dbo].[VEMAYBAY]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [dbo].[HANGVE] ([MaHangVe])
GO
ALTER TABLE [dbo].[VEMAYBAY]  WITH CHECK ADD FOREIGN KEY([MaLoaiVe])
REFERENCES [dbo].[LOAIVE] ([MaLoaiVe])
GO
