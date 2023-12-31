USE [master]
GO
/****** Object:  Database [projectPRJnew]    Script Date: 20/07/2023 1:39:41 CH ******/
CREATE DATABASE [projectPRJnew]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projectFake', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\projectFake.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projectFake_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\projectFake_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [projectPRJnew] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectPRJnew].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectPRJnew] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projectPRJnew] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projectPRJnew] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projectPRJnew] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projectPRJnew] SET ARITHABORT OFF 
GO
ALTER DATABASE [projectPRJnew] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [projectPRJnew] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projectPRJnew] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projectPRJnew] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projectPRJnew] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projectPRJnew] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projectPRJnew] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projectPRJnew] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projectPRJnew] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projectPRJnew] SET  ENABLE_BROKER 
GO
ALTER DATABASE [projectPRJnew] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projectPRJnew] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projectPRJnew] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projectPRJnew] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projectPRJnew] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projectPRJnew] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [projectPRJnew] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projectPRJnew] SET RECOVERY FULL 
GO
ALTER DATABASE [projectPRJnew] SET  MULTI_USER 
GO
ALTER DATABASE [projectPRJnew] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projectPRJnew] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projectPRJnew] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projectPRJnew] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projectPRJnew] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projectPRJnew] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'projectPRJnew', N'ON'
GO
ALTER DATABASE [projectPRJnew] SET QUERY_STORE = OFF
GO
USE [projectPRJnew]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20/07/2023 1:39:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[idC] [int] NOT NULL,
	[nameC] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 20/07/2023 1:39:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[idO] [int] NULL,
	[idP] [int] NULL,
	[quantity] [int] NULL,
	[price] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20/07/2023 1:39:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[idO] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[uid] [int] NULL,
	[totalMoney] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[idO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/07/2023 1:39:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idP] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[img] [nvarchar](max) NULL,
	[price] [real] NULL,
	[tiltle] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[idC] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20/07/2023 1:39:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[roleid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([idC], [nameC]) VALUES (1, N'Iphone')
INSERT [dbo].[Category] ([idC], [nameC]) VALUES (2, N'Samsung')
INSERT [dbo].[Category] ([idC], [nameC]) VALUES (3, N'Oppo')
INSERT [dbo].[Category] ([idC], [nameC]) VALUES (4, N'LG')
INSERT [dbo].[Category] ([idC], [nameC]) VALUES (5, N'Sony')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (4, N'Iphone 1 ', N'https://cdn.tgdd.vn/Files/2020/04/09/1247866/untitled-3_800x450.jpg', 1000, N'vv', N'vv', 1, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (13, N'Iphone 2  ', N'https://bachlongmobile.com/bnews/wp-content/uploads/2020/10/nen-mua-iphone-12-series-chinh-hang-hay-nhap-khau-00.jpg', 5000, N'vv', N'vv', 1, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (14, N'Iphone 3', N'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/106924/Originals/camera-iphone-03.jpg', 2000, N'vv', N'vv', 1, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (15, N'Iphone 4', N'https://image-us.24h.com.vn/upload/2-2022/images/2022-05-01/2-1651360418-437-width660height440.jpg', 1500, N'  vv', N'vv', 1, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (16, N'Iphone 5', N'https://image-us.24h.com.vn/upload/4-2021/images/2021-12-05/2-1638638953-200-width660height439.jpg', 50000, N'vv', N'vv', 1, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (17, N'Samsung 1', N'https://img.global.news.samsung.com/vn/wp-content/uploads/2023/02/1.-GalaxyS23Series_KV_2P.jpg', 20000, N'x', N'x', 2, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (18, N'Samsung 2', N'https://stcv4.hnammobile.com/downloads/f/danh-gia-chi-tiet-galaxy-a04s-co-thuc-su-tot-voi-muc-gia-chi-duoi-4-trieu-dong-01667553755.jpg', 15000, N'xx', N'xx', 2, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (19, N'Samsung 3', N'https://static.toiimg.com/thumb/msid-97567818,width-800,resizemode-4,imgsize-8258/share.jpg', 20000, N'vv', N'vv', 2, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (20, N'Oppo 1 ', N'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/71500/Originals/tren-tay-oppo-a5-fptshop-11.jpg', 19000, N'vv', N'vv', 3, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (21, N'Oppo 2', N'https://icdn.dantri.com.vn/thumb_w/660/2021/07/31/oppo-reno6-z-1-1627668496637.jpg', 20000, N'vv', N'vv', 3, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (24, N'Oppo 3', N'https://kenh14cdn.com/203336854389633024/2022/8/18/photo-1-1660835518109228149861.jpg', 12000, N'vv', N'vv', 3, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (25, N'Oppo 4', N'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2023/2/1/1143319/DSC09041---Copy-2.jpg', 15000, N'vv', N'vv', 3, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (26, N'LG 1 ', N'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/4/7/896638/LG-Wing.jpeg', 20000, N'vv', N'vv', 4, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (27, N'LG 2', N'https://cdn.sforum.vn/sforum/wp-content/uploads/2020/05/LG_velvet_price_revealed_1588774.jpg', 9000, N'vv', N'vv', 4, NULL)
INSERT [dbo].[Product] ([idP], [name], [img], [price], [tiltle], [description], [idC], [quantity]) VALUES (28, N'Sony 1 ', N'https://images2.thanhnien.vn/528068263637045248/2023/2/13/sony-xperia-v-16762567042991753330817.jpg', 20000, N'vv', N'vv', 5, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (1, N'admin', N'admin', N'          admin', N'        12345', N'Hanoi', 1)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (4, N'abc', N'abc', N'abcde', N'12345', N'Hanoi', 0)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (5, N'ddd', N'ddd', N'ddd', N'12345', N'Hanoi', 0)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (6, N'abc', NULL, N'abc', NULL, NULL, NULL)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (15, N'thanhnthe163528@fpt.edu.vn', N'111', N'  Tiến Thành K16_HL', N'  ', N'', 0)
INSERT [dbo].[User] ([uid], [account], [password], [fullname], [phone], [address], [roleid]) VALUES (16, N'anhdvhe163622@fpt.edu.vn', NULL, N'Do Viet Anh (K16_HL)', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD FOREIGN KEY([idO])
REFERENCES [dbo].[Orders] ([idO])
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD FOREIGN KEY([idP])
REFERENCES [dbo].[Product] ([idP])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([uid])
REFERENCES [dbo].[User] ([uid])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([idC])
REFERENCES [dbo].[Category] ([idC])
GO
USE [master]
GO
ALTER DATABASE [projectPRJnew] SET  READ_WRITE 
GO
