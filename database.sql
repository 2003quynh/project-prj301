USE [master]
GO
/****** Object:  Database [Project_PRJ]    Script Date: 10/11/2023 9:50:22 SA ******/
CREATE DATABASE [Project_PRJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_PRJ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project_PRJ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_PRJ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Project_PRJ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project_PRJ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_PRJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_PRJ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_PRJ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_PRJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_PRJ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_PRJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_PRJ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_PRJ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_PRJ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_PRJ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_PRJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_PRJ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_PRJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_PRJ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_PRJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_PRJ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_PRJ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project_PRJ] SET  MULTI_USER 
GO
ALTER DATABASE [Project_PRJ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_PRJ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_PRJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_PRJ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_PRJ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_PRJ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project_PRJ] SET QUERY_STORE = OFF
GO
USE [Project_PRJ]
GO
/****** Object:  User [admin]    Script Date: 10/11/2023 9:50:22 SA ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [abc]    Script Date: 10/11/2023 9:50:22 SA ******/
CREATE USER [abc] FOR LOGIN [abc] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[product_variant_id] [int] NULL,
	[profile_id] [int] NULL,
 CONSTRAINT [cart_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[time] [datetime] NULL,
	[phone] [varchar](15) NULL,
	[ship_cod] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime] NULL,
	[shipped_date] [datetime] NULL,
	[total_money] [numeric](19, 0) NULL,
	[status] [int] NULL,
	[customer_id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[note] [ntext] NOT NULL,
	[delivery_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[order_id] [int] NOT NULL,
	[product_variant_id] [int] NOT NULL,
	[price] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_image]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [product_image_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_variant]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_variant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size] [varchar](10) NULL,
	[product_id] [int] NOT NULL,
	[color] [nvarchar](25) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [product_variant_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[sold] [int] NULL,
	[price] [numeric](19, 0) NULL,
	[description] [ntext] NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[gender] [bit] NULL,
	[season] [bit] NULL,
	[category_id] [int] NULL,
	[description_summary] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profile]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[birthday] [datetime] NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](255) NULL,
	[tel] [varchar](15) NULL,
	[email] [varchar](255) NOT NULL,
	[image] [varchar](255) NULL,
	[role] [int] NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 10/11/2023 9:50:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[star] [int] NULL,
	[post_at] [datetime] NULL,
	[profile_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (1, 1, 3, 2)
INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (2, 1, 4, 2)
INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (3, 2, 5, 2)
INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (5, 2, 9, 7)
INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (6, 2, 9, 8)
INSERT [dbo].[cart] ([id], [quantity], [product_variant_id], [profile_id]) VALUES (45, 1, 29, 4)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'Váy')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Quần & Áo')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'Giày')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[delivery] ON 

INSERT [dbo].[delivery] ([id], [name], [time], [phone], [ship_cod]) VALUES (1, N'VNPress', CAST(N'2020-11-07T12:06:01.000' AS DateTime), N'0987654321', CAST(10000 AS Numeric(19, 0)))
INSERT [dbo].[delivery] ([id], [name], [time], [phone], [ship_cod]) VALUES (2, N'Ship nhanh', CAST(N'2018-11-09T12:06:28.000' AS DateTime), N'0112233445', CAST(30000 AS Numeric(19, 0)))
SET IDENTITY_INSERT [dbo].[delivery] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (3, CAST(N'2023-11-07T12:08:59.000' AS DateTime), CAST(N'2023-11-08T12:09:05.000' AS DateTime), CAST(200000 AS Numeric(19, 0)), 1, 4, N'Dung', N'nhà ông Bảy Cũ;Bình Yên;Thạch Thất;Hà Nội', N'0123456789', N'no', 1)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (4, CAST(N'2023-11-11T12:08:59.000' AS DateTime), CAST(N'2023-11-15T12:09:05.000' AS DateTime), CAST(19000 AS Numeric(19, 0)), 2, 4, N'Dung', N'nhà ông Bảy Cũ;Bình Yên;Thạch Thất;Hà Nội', N'0123456789', N'no', 1)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (5, CAST(N'2023-11-09T02:58:37.600' AS DateTime), NULL, CAST(300000 AS Numeric(19, 0)), 0, 9, N'Thang', N'nha moi;Thach Hoa;district;Ha Noi', N'0123456789', N'nhanh len shop, em gap mac vay di du tiec', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (6, CAST(N'2023-10-10T04:00:16.000' AS DateTime), CAST(N'2023-10-12T04:00:25.000' AS DateTime), CAST(700000 AS Numeric(19, 0)), 2, 2, N'Trang', N'nhà ông Bảy Cũ;Bình Yên;Thạch Thất;Hà Nội', N'0987654321', N'Shopdeptrai', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (7, CAST(N'2023-10-10T04:00:16.000' AS DateTime), CAST(N'2023-10-12T04:00:25.000' AS DateTime), CAST(300000 AS Numeric(19, 0)), 2, 8, N'Quy', N'nha moi;Thach Hoa;district;Ha Noi', N'0123456789', N'no', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (8, CAST(N'2023-10-10T04:00:16.000' AS DateTime), CAST(N'2023-10-12T04:00:25.000' AS DateTime), CAST(200000 AS Numeric(19, 0)), 2, 2, N'Trang', N'nha moi;Thach Hoa;district;Ha Noi', N'0123456789', N'no', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (9, CAST(N'2023-10-10T04:00:16.000' AS DateTime), CAST(N'2023-10-12T04:00:25.000' AS DateTime), CAST(20000 AS Numeric(19, 0)), 2, 9, N'Thang', N'nhà ông Bảy Cũ;Bình Yên;Thạch Thất;Hà Nội', N'0123456789', N'no', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (10, CAST(N'2023-11-10T06:42:50.043' AS DateTime), NULL, CAST(4000 AS Numeric(19, 0)), 0, 4, N'Dung', N'nhà ông Bảy Cũ;Bình Yên;Bình Yên;Hà Nội', N'0123456789', N'ko o', 2)
INSERT [dbo].[order] ([id], [order_date], [shipped_date], [total_money], [status], [customer_id], [name], [address], [phone], [note], [delivery_id]) VALUES (11, CAST(N'2023-11-10T06:43:10.850' AS DateTime), NULL, CAST(0 AS Numeric(19, 0)), 0, 4, N'Dung', N'nhà ông Bảy Cũ;Bình Yên;Bình Yên;Hà Nội', N'0123456789', N'no', 2)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([id], [quantity], [order_id], [product_variant_id], [price]) VALUES (1, 1, 3, 11, CAST(100000 AS Numeric(19, 0)))
INSERT [dbo].[order_detail] ([id], [quantity], [order_id], [product_variant_id], [price]) VALUES (2, 1, 3, 12, CAST(100000 AS Numeric(19, 0)))
INSERT [dbo].[order_detail] ([id], [quantity], [order_id], [product_variant_id], [price]) VALUES (3, 3, 5, 9, CAST(100000 AS Numeric(19, 0)))
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[product_image] ON 

INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (2, N'img/products/giay_01_1.png', 10)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (3, N'img/products/kaki_quan.png', 6)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (4, N'img/products/vay_16.jpg', 5)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (6, N'img/products/nhan_01.png', 9)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (7, N'img/products/vay_15.jpg', 4)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (12, N'img/products/giay_01_2.png', 10)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (13, N'img/products/giay_01_3.png', 10)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (14, N'img/products/giay_01_4.png', 10)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (15, N'img/products/vay_02.jpg', 11)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (16, N'img/products/vay_02_02.png', 11)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (17, N'img/products/vay_02_03.png', 11)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (18, N'img/products/vay_02_04.png', 11)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (19, N'img/products/vay_03.jpg', 12)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (20, N'img/products/vay_03_02.png', 12)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (21, N'img/products/vay_03_03.png', 12)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (22, N'img/products/quanao_01.jpg', 13)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (23, N'img/products/quanao_01_02.jpg', 13)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (24, N'img/products/quanao_01_02.jpg', 13)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (25, N'img/products/vay_05.jpg', 14)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (26, N'img/products/vay_05_02.png', 14)
INSERT [dbo].[product_image] ([id], [image], [product_id]) VALUES (27, N'img/products/vay_01.jpg', 3)
SET IDENTITY_INSERT [dbo].[product_image] OFF
GO
SET IDENTITY_INSERT [dbo].[product_variant] ON 

INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (1, N'S', 3, N'White', 12)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (2, N'S', 3, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (3, N'L', 3, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (4, N'M', 3, N'Black', 15)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (5, N'L', 3, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (6, N'S', 4, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (7, N'S', 4, N'Green', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (8, N'S', 4, N'Pink', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (9, N'S', 5, N'Black', 7)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (10, N'M', 5, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (11, N'L', 5, N'Pink', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (12, N'L', 5, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (13, N'S', 6, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (14, N'S', 6, N'Red', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (15, N'L', 6, N'Red', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (16, N'null', 9, N'null', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (17, N'36', 10, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (18, N'37', 10, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (19, N'38', 10, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (20, N'39', 10, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (21, N'40', 10, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (22, N'S', 11, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (23, N'S', 12, N'White', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (24, N'S', 12, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (25, N'S', 13, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (26, N'L', 14, N'Black', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (27, N'L', 14, N'White', 26)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (28, N'S', 14, N'Pink', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (29, N'S', 14, N'White', 28)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (30, N'S', 15, N'Red', 20)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (31, N'L', 15, N'Red', 10)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (32, N'L', 15, N'Blue', 15)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (40, N'M', 3, N'Pink', 1)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (41, N'S', 22, N'Black', 6)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (42, N'S', 22, N'White', 13)
INSERT [dbo].[product_variant] ([id], [size], [product_id], [color], [quantity]) VALUES (43, N'S', 23, N'Pink', 10)
SET IDENTITY_INSERT [dbo].[product_variant] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (3, 58, 1, CAST(150000 AS Numeric(19, 0)), N'Váy tapta tay bồng chân bom lưới hồ điệp
︎ Size: S M L
︎ Màu: đen, trắng', N'img/products/vay_01.jpg', N'Váy tapta tay bồng chân bom lưới hồ điệp', 1, 0, 1, N'Váy tapta tay bồng chân bom lưới hồ điệp
︎ Size: S M L
︎ Màu: đen, trắng')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (4, 30, 0, CAST(200000 AS Numeric(19, 0)), N'size: sml
màu: hồng
3 món: chân váy, áo sơ mi, áo 2 dây mặc trongtrong
chất: chân váy tuyết mưa đính đá, áo 2 dây trong chất lụa, áo sơ mi ngoài chất tơ voan 
công dụng: mặc hàng ngày
xuất sứ: việt nam', N'img/products/vay_15.jpg', N'Pampi mini dress váy voan hai dây trễ vai tay bồng', 1, 0, 1, N'3 món: chân váy, áo sơ mi, áo 2 dây mặc trongtrong
chất: chân váy tuyết mưa đính đá, áo 2 dây trong ')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (5, 40, 0, CAST(100000 AS Numeric(19, 0)), N'SIZE S DƯỚI 42KG- TÙY CHIỀU CAO-SIZE M: 47kg SIZE L :DƯỚI 52KG. TÙY CHIỀU CAO KHÁCH CÓ THỂ IB VỚI SHOP ĐỂ LỰA CHỌN SIZE PHÙ HỢP NHÉ. KÈM HÌNH CHỤP THẬT MẪU MẶC 100% ĐỂ KHÁCH LỰA CHỌN, TRÁNH ĐỔI TRẢ HÀNG, MẪU 160CM 47KG MẶC SIZE M', N'img/products/vay_16.jpg', N'ĐẦM MAXI XỐP NỮ ĐI BIỂN SIÊU HOT THẢ DÁNG CỰC XINH PU SS63', 1, 0, 1, N'SIZE S DƯỚI 42KG- TÙY CHIỀU CAO-SIZE M: 47kg SIZE L :DƯỚI 52KG. TÙY CHIỀU CAO KHÁCH CÓ THỂ IB VỚI SH')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (6, 30, 0, CAST(100000 AS Numeric(19, 0)), N'Tên sản phẩm: QUẦN Suông Túi Hộp LƯNG THUN NAM ỐNG RỘNG PHONG CÁCH HÀN QUỐC
⭐Bảng size bên shop các bạn tham khảo ạ:
Size M: Dành cho người nặng từ 42kg - 55kg
Size L : Dành cho người nặng từ 56kg - 68kg
Size XL: Dành cho người nặng từ 69kg  - 80kg
👉 Bảng size mang tính chất tham khảo bạn có thể lấy size to hơn hoặc nhỏ theo yêu cầu của bạn!
Màu sắc: Đen – Be – Nâu
Lưu ý: Các bạn có thể nhắn tin cho Shop để tư vấn size.', N'img/products/kaki_quan.png', N'Quần Suông Túi Hộp chất kaki cao cấp basic nam nữ ống suông rộng, Quần lưng thun co giãn 4 màu tôn dáng, form rộng', NULL, 1, 2, N'Tên sản phẩm: QUẦN Suông Túi Hộp LƯNG THUN NAM ỐNG RỘNG PHONG CÁCH HÀN QUỐC')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (9, 10, 0, CAST(2000 AS Numeric(19, 0)), N'Loại sản phẩm: Nhẫn

Chất liệu: hợp kim

Quy trình xử lý: mạ điện

Phong cách: Phim hoạt hình

Phân loại phong cách: Tươi mát và ngọt ngào

Danh mục sản phẩm: trang trí tay

Đối tượng áp dụng: phụ nữ', N'img/products/nhan_01.png', N'Nhẫn Khắc Chữ Cái A-Z Đính Kim Cương Nhân Tạo Phong Cách Mới Cho Nữ', 1, NULL, 4, N'Loại sản phẩm: Nhẫn

Chất liệu: hợp kim

Đối tượng áp dụng: phụ nữ')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (10, 50, 0, CAST(199000 AS Numeric(19, 0)), N'- Chất liệu: da mềm
- Màu sắc: đen 
-kiểu dáng thời trang

- phù hợp với mọi lứa tuổi 

- Kích thước: 35,36,37,38,39', N'img/products/giay_01.png', N'Giày Thể Thao Nữ Canvar Te Tua G01 Độn Đế Siêu Đẹp', NULL, NULL, 3, N'- Chất liệu: da mềm
- Màu sắc: đen 
-kiểu dáng thời trang')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (11, 10, 0, CAST(150000 AS Numeric(19, 0)), N'Chiều dài tay áo Tay ngắn
Phong cách Cơ bản, Hàn Quốc, Retro
Dịp Hằng Ngày
Kiểu váy váy xòe
Rất lớn Không
Chiều dài quần Khác
Chiều dài váy Midi
Xuất xứ Việt Nam
Mẫu Trơn
Mùa Xuân hè thu
Tên tổ chức chịu trách nhiệm sản xuất HD Store
Địa chỉ tổ chức chịu trách nhiệm sản xuất Hh1c Linh Đàm-Hà Nội
Chất liệu Trượt
Cổ áo Cổ vuông', N'img/products/vay_02.jpg', N'Váy xoè tay phồng viền đính cườm dự tiệc đầm trắng cổ vuông tiệc cưới', 1, 0, 1, N'Chiều dài tay áo Tay ngắn
Phong cách Cơ bản, Hàn Quốc, Retro
Dịp Hằng Ngày
Kiểu váy váy xòe
')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (12, 20, 0, CAST(150000 AS Numeric(19, 0)), N'Váy tapta tay tơ nhún eo đá dây cổ cánh hoa
▪︎ Size: S M L
▪︎ Màu: đen, trắng, hồng', N'img/products/vay_03.jpg', N'Váy tapta tay tơ nhún eo đá dây cổ cánh hoa', 1, 0, 1, N'Váy tapta tay tơ nhún eo đá dây cổ cánh hoa
▪︎ Size: S M L
▪︎ Màu: đen, trắng, hồng')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (13, 10, 0, CAST(150000 AS Numeric(19, 0)), N'', N'img/products/quanao_01.jpg', N'Set Chanel áo nt cổ trắng đen logo ngực', 1, 0, 1, N'Set Chanel áo nt cổ trắng đen logo ngực')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (14, 40, 0, CAST(2000 AS Numeric(19, 0)), N'THÔNG TIN SẢN PHẨM
Tên SP :  Đầm xòe ngắn tà sexy phối tay phồng cổ dây cực đẹp, phối kèm quần đùi trong cho chị em tự tin hơn
Màu sắc : Đen
Chất liệu : lụa
Size : Freesize dưới 65kg (Tùy chiều cao)
Đặc điểm: Đầm được thiết kế theo style Hàn Quốc trẻ trung và năng động', N'img/products/vay_05.jpg', N'Đầm xòe ngắn tà sexy phối tay phồng cổ dây', 0, NULL, 1, N'THÔNG TIN SẢN PHẨM
Tên SP :  Đầm xòe ngắn tà sexy phối tay phồng cổ dây cực đẹp, phối kèm quần đùi trong cho chị em tự tin hơn
Màu sắc : Đen
Chất liệu : lụa')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (15, 45, 0, CAST(200000 AS Numeric(19, 0)), N'1.Nội dung bắt buộc cho TẤT CẢ các loại hàng hóa/dịch vụ: 

- Cơ Sở Sản Xuất:  Cửa hàng 7.Beautiful

- Chủ cơ sở: Đào Minh Đức

- Địa chỉ : 61/72/16 Bằng Liệt Hoàng Mai HN

- SDT: 0824079923

2. Thông tin sản phẩm: 

- Tên SP: Váy bò tay ngắn, đầm nữ túi ngực kèm đai, thiết kế kiểu dáng thanh lịch nữ tính màu xinh 7.Beautiful V162

- Mã SP : V162

- Kiểu dáng : thiết kế dáng A kiểu ngắn và dài, có kèm đai rời

- Màu sắc :  xanh bò đậm

- Size : S M L

- Chất liệu : vải bò dày dặn', N'img/products/vay_18.png', N'Váy bò , đầm Jean tay ngắn, đầm nữ túi ngực kèm đai thắt eo, thiết kế kiểu dáng thanh lịch nữ tính', NULL, NULL, 1, N'Tên SP: Váy bò tay ngắn, đầm nữ túi ngực kèm đai, thiết kế kiểu dáng thanh lịch nữ tính màu xinh 7.Beautiful V162')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (22, 24, 1, CAST(300000 AS Numeric(19, 0)), N'ádasdfd', N'img/products/01.jpg', N'sjkdfhe', NULL, NULL, 1, N'dfsfs')
INSERT [dbo].[products] ([id], [quantity], [sold], [price], [description], [image], [name], [gender], [season], [category_id], [description_summary]) VALUES (23, 10, 1, CAST(100000 AS Numeric(19, 0)), N'agsg', N'img/products/347229068_979839490125645_8701477226332002650_n (1).jpg', N'vay mowis', NULL, NULL, 2, N'sgsad')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[profile] ON 

INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (1, N'Nguyễn Thị Quỳnh', CAST(N'2003-04-10T00:00:00.000' AS DateTime), 0, N'Hưng Yên', N'0364611780', N'quynhnthe171282@fpt.edu.vn', N'img/avatar/admin_Quynh.JPG', 0, N'quynh03', N'0123456')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (2, N'Nguyễn Lê Quỳnh Trang', CAST(N'2003-09-14T00:00:00.000' AS DateTime), 0, N'Hà Tĩnh', N'0123456789', N'trangngokngeck@gmail.com', NULL, 2, N'trangngokngheck', N'0123')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (4, N'Hoàng Mai Dung', CAST(N'2003-02-16T00:00:00.000' AS DateTime), 0, N'Thanh Hóa', N'0213456789', N'dungngokngheck@gmail.com', NULL, 2, N'dungngokngeck', N'01234')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (7, N'Lê Thị Quỳnh', NULL, NULL, NULL, NULL, N'quynhquanquai@gmail.com', NULL, 2, N'quynhquanquai', N'1234')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (8, N'Đào Xuân Quý', NULL, NULL, NULL, NULL, N'quyngokngheck@gmail.com', NULL, 2, N'quyngokngheck', N'1234')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (9, N'Ngô Sỹ Thắng', CAST(N'2003-03-12T00:00:00.000' AS DateTime), 1, N'Nghệ An', N'0111111111', N'thangngokngheck@gmail.com', NULL, 2, N'thangngokngheck', N'1234')
INSERT [dbo].[profile] ([id], [name], [birthday], [gender], [address], [tel], [email], [image], [role], [username], [password]) VALUES (10, N'Hà Việt Hiếu', NULL, NULL, NULL, NULL, N'hieungokngheck@gmail.com', NULL, 2, N'hieungokngheck', N'1234')
SET IDENTITY_INSERT [dbo].[profile] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__profile__F3DBC572CE761DC5]    Script Date: 10/11/2023 9:50:22 SA ******/
ALTER TABLE [dbo].[profile] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[order] ADD  DEFAULT (getdate()) FOR [order_date]
GO
ALTER TABLE [dbo].[order] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT ((0)) FOR [sold]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT ((2)) FOR [role]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [cart_product_variant_fk] FOREIGN KEY([product_variant_id])
REFERENCES [dbo].[product_variant] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [cart_product_variant_fk]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [cart_profile__fk] FOREIGN KEY([profile_id])
REFERENCES [dbo].[profile] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [cart_profile__fk]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKorder345583] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[delivery] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKorder345583]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [order_profile__fk] FOREIGN KEY([customer_id])
REFERENCES [dbo].[profile] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [order_profile__fk]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKorder_deta881103] FOREIGN KEY([product_variant_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKorder_deta881103]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKorder_deta945545] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKorder_deta945545]
GO
ALTER TABLE [dbo].[product_image]  WITH CHECK ADD  CONSTRAINT [product_image_products__fk] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[product_image] CHECK CONSTRAINT [product_image_products__fk]
GO
ALTER TABLE [dbo].[product_variant]  WITH CHECK ADD  CONSTRAINT [product_size_products__fk] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[product_variant] CHECK CONSTRAINT [product_size_products__fk]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [products_categories__fk] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [products_categories__fk]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FKreview561705] FOREIGN KEY([profile_id])
REFERENCES [dbo].[profile] ([id])
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FKreview561705]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FKreview98359] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FKreview98359]
GO
USE [master]
GO
ALTER DATABASE [Project_PRJ] SET  READ_WRITE 
GO
