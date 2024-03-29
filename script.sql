USE [master]
GO
/****** Object:  Database [Project_NgoTungSon]    Script Date: 7/24/2019 10:23:11 PM ******/
CREATE DATABASE [Project_NgoTungSon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_NgoTungSon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Project_NgoTungSon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_NgoTungSon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Project_NgoTungSon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Project_NgoTungSon] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_NgoTungSon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_NgoTungSon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_NgoTungSon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_NgoTungSon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project_NgoTungSon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_NgoTungSon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project_NgoTungSon] SET  MULTI_USER 
GO
ALTER DATABASE [Project_NgoTungSon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_NgoTungSon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_NgoTungSon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_NgoTungSon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_NgoTungSon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_NgoTungSon] SET QUERY_STORE = OFF
GO
USE [Project_NgoTungSon]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[Servlet_Path] [nvarchar](50) NOT NULL,
	[Servlet_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[Servlet_Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info_User]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_User](
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Info_User] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Name] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Style] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Descripetion] [nvarchar](max) NULL,
	[Date_add] [varchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[url] [varchar](max) NULL,
	[ID_Item] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID_Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_User]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_User](
	[ID_User] [int] NULL,
	[ID_Item] [int] NULL,
	[SoLuong] [int] NULL,
	[Size] [int] NULL,
	[TongTien] [nvarchar](50) NULL,
	[NgayMua] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [nvarchar](50) NOT NULL,
	[Role_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[Role_ID] [nvarchar](50) NOT NULL,
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Role_Account_1] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC,
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 7/24/2019 10:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[Role_ID] [nvarchar](50) NOT NULL,
	[Servlet_Path] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC,
	[Servlet_Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([UserName], [PassWord], [ID_User]) VALUES (N'dongdaohieu', N'daohieu571999', 1)
INSERT [dbo].[Account] ([UserName], [PassWord], [ID_User]) VALUES (N'nguyenducthuan', N'daohieu571999', 2)
INSERT [dbo].[Account] ([UserName], [PassWord], [ID_User]) VALUES (N'trananhtuan', N'daohieu571999', 3)
INSERT [dbo].[Account] ([UserName], [PassWord], [ID_User]) VALUES (N'nguyen duc hai', N'daohieu571999', 4)
INSERT [dbo].[Account] ([UserName], [PassWord], [ID_User]) VALUES (N'dong dao hieu', N'daohieu571999', 6)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Feature] ([Servlet_Path], [Servlet_Name]) VALUES (N'Buy', N'Buy')
INSERT [dbo].[Feature] ([Servlet_Path], [Servlet_Name]) VALUES (N'Create', N'Create')
INSERT [dbo].[Feature] ([Servlet_Path], [Servlet_Name]) VALUES (N'Delete', N'Delete')
SET IDENTITY_INSERT [dbo].[Info_User] ON 

INSERT [dbo].[Info_User] ([Email], [Address], [Phone], [ID_User]) VALUES (N'daohieu571999@gmail.com', N'Ha Noi', N'0981883846', 1)
INSERT [dbo].[Info_User] ([Email], [Address], [Phone], [ID_User]) VALUES (N'thuannguyenduc@gmail.com', N'Ha Nam', N'1234567789', 2)
INSERT [dbo].[Info_User] ([Email], [Address], [Phone], [ID_User]) VALUES (N'tuanTA@fpt.edu.vn', N'Ninh Binh', N'2343452312', 3)
INSERT [dbo].[Info_User] ([Email], [Address], [Phone], [ID_User]) VALUES (N'hai@gmail.com.vn', N'TP.HCM', N'0912345212', 4)
SET IDENTITY_INSERT [dbo].[Info_User] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS YESTERDAY', N'550.000 VND', N'HIGH TOP - MOONSTRUCK PIRATE', N'35 – 46', N'
Using leather Suede, Nappa leather and Canvas fabric at the same time, "Yesterday" evokes a sense of both classic and modern. If you do not feel that you are in your middle age, not old, but also through your youth, perhaps you are the "yesterday" type?', N'09/08/2018', N'Male', N'ImageData/pro_vintas_A61044_1.jpg', 3)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS YESTERDAY', N'480.000 VND', N'LOW TOP - MOONSTRUCK PIRATE', N'35 – 46', N'
Simultaneously using Nappa leather and Canvas fabric, "Yesterday" reminds people of a feeling of both classic and modern. If you do not feel that you are in your middle age, not yet old, but also through your youth, perhaps you are the "yesterday" type?', N'09/10/2017', N'Male', N'ImageData/pro_vintas_A61035_1-1.jpg', 4)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS EARTH', N'580.000 VND', N'LOW TOP - GOAT', N'35 – 46', N'
In the Low Top, Upper is covered with Suede leather, adding a touch of Nappa leather in the logo on the blade, a quiet tone reminiscent of a forest tree. A product for souls who like to wander, love freedom and love.', N'10/10/2018', N'Male', N'ImageData/pro_vintas_A61034_1.jpg', 5)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS THE NEW MILITARY', N'495.000 VND', N'HIGH TOP - CAPULET OLIVE', N'35 – 46', N'Wearing a dusty, rustic look and inspired by the military uniforms of many army soldiers, Vintas "The New Military" offers a unique "soldier" for those who love "Military" style. and subtle, resilient souls.', N'12/06/2018', N'Male', N'ImageData/pro_vintas_A61043_1.jpg', 6)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS MISTER', N'465.000 VND', N'LOW TOP - JET PIRATE
', N'35 – 46', N'
The traditional Low Top silhouette, combined with classic, sexy color schemes with old Canvas fabric, leather Suede on the Upper and a small part of Nappa leather in logo on the tongue. A choice of those who want to accentuate maturity, calmness and gentleness for their outfit.', N'01/02/2019', N'Male', N'ImageData/pro_vintas_A61037_1.jpg', 7)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS BLEACHED SAND', N'450.000 VND', N'SLIP ON - BLEACHED SAND', N'35 – 46', N'
Sand collection with old nostalgic features and neutral colors with a high level of application, helps you adapt to many circumstances, up to the mountain, but also cannot get lost in the sea.', N'01/02/2019', N'Female', N'ImageData/pro_vintas_A61046_1.jpg', 8)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS MISTER', N'580.000 VND', N'LOW TOP - NARCISSUEDE', N'35 – 46', N'
Traditional Low Top silhouette, combined with classic, old-fashioned color schemes with leather Suede. A choice of those who want to accentuate maturity, calmness and gentleness for their outfit.', N'05/08/2018', N'Female', N'ImageData/pro_vintas_A61039_1.jpg', 9)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS MISTER', N'465.000 VND', N'LOW TOP - SLATE CARAFE', N'35 – 46', N'
The traditional Low Top silhouette, combined with classic, sexy color schemes with old Canvas fabric, leather Suede on the Upper and a small part of Nappa leather in logo on the tongue. A choice of those who want to accentuate maturity, calmness and gentleness for their outfit.', N'09/10/2019', N'Female', N'ImageData/pro_vintas_A61038_1-1.jpg', 10)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS SAIGON 1980S', N'480.000 VND', N'LOW TOP - DARK DENIM', N'35 – 46', N'
Inspired by the typical colors of the 80s Saigon streets, Vintas "Saigon 1980s" is a collection of ancient beauty and nostalgia. For those who love the old, quiet, "Saigon 1980s" promises to be a must-have item for your shoe cabinet.', N'20/11/2015', N'Female', N'ImageData/pro_vintas_A61031_1.jpg', 11)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS THE NEW MILITARY', N'465.000 VND', N'LOW TOP - ARONA', N'35 – 46', N'
Wearing a dusty, rustic look and inspired by the military uniforms of many army soldiers, Vintas "The New Military" offers a unique "soldier" for those who love "Military" style. and subtle, resilient souls.', N'20/12/2019', N'Female', N'ImageData/pro_vintas_A61028_1.jpg', 12)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS THE NEW MILITARY', N'465.000 VND', N'LOW TOP - DARK EARTH', N'35 – 46', N'
Wearing a dusty, rustic look and inspired by the military uniforms of many army soldiers, Vintas "The New Military" offers a unique "soldier" for those who love "Military" style. and subtle, resilient souls.', N'11/12/2018', N'Male', N'ImageData/pro_vintas_A61027_1.jpg', 13)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS YESTERDAY', N'480.000 VND', N'SLIP ON - MOONSTRUCK PIRATE', N'35 – 46', N'Simultaneously using Nappa leather and Canvas fabric, "Yesterday" reminds people of a feeling of both classic and modern. If you do not feel that you are in your middle age, not yet old, but also through your youth, perhaps you are the "yesterday" type?', N'10/06/2019', N'Female', N'ImageData/pro_vintas_A61049_1.jpg', 14)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS SAIGON 1980S ', N'480.000 VND', N'LOW TOP - VIN BLACK', N'35 – 46', N'
Inspired by the typical colors of the 80s Saigon streets, Vintas "Saigon 1980s" is a collection of ancient beauty and nostalgia. For those who love the old, quiet, "Saigon 1980s" promises to be a must-have item for your shoe cabinet.', N'12/05/2018', N'Male', N'ImageData/pro_vintas_A61032_1.jpg', 15)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'VINTAS SAIGON 1980S', N'480.000 VND', N'LOW TOP - SEDONA SAGE', N'35 – 46', N'
Inspired by the typical colors of the 80s Saigon streets, Vintas "Saigon 1980s" is a collection of ancient beauty and nostalgia. For those who love the old, quiet, "Saigon 1980s" promises to be a must-have item for your shoe cabinet.', N'15/06/2008', N'Female', N'ImageData/pro_vintas_A61030_1.jpg', 16)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'BASAS PU MONO', N'490.000 VND', N'LOW TOP - ALL WHITE', N'35 – 46', N'
Belonging to the Basas line with a characteristic minimalism and the ability to combine every day outfit, Basas "New Simple Life" is for simple but non-monotonous, ordinary people who are not ordinary. Classic Low Top silhouette, never outdated is a pleasant choice for those days of carefree, thoughtless.', N'12/12/2019', N'Male', N'ImageData/pro_basas_A61009_1_fixed.jpg', 17)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'BASAS BUMPER GUM', N'450.000 VND', N'SLIP ON - OFFWHITE/GUM', N'35 - 46', N'Still the classic white of the Basas line, but the nose of the "Bumper Gum" Basas products possesses a completely different appearance thanks to the innovative, innovative brown rough rubber. "Bumper Gum" is a pair of shoes for those looking for something new from familiar, traditional things.', N'2019-07-10', N'Female', N'ImageData/stu_basas_A61024_1.jpg', 18)
INSERT [dbo].[Item] ([Name], [Price], [Style], [Size], [Descripetion], [Date_add], [Gender], [url], [ID_Item]) VALUES (N'BASAS MONO', N'450.000 VND', N'LOW TOP - DARK GREY', N'35 - 46', N'
Classic look. Simple colors with a color base, "ton-ton" with upper. Basas "Mono" Pack promises to be an exciting highlight for your shoe cabinet.', N'2019-07-11', N'Female', N'ImageUpload/stu_basas_A61007_1.jpg', 56)
SET IDENTITY_INSERT [dbo].[Item] OFF
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 6, 1, 35, N'495000', N'23/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 8, 1, 35, N'450000', N'23/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (2, 6, 2, 36, N'990000', N'23/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 9, 1, 35, N'580000', N'24/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 3, 1, 35, N'550000', N'23/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 18, 1, 35, N'450000', N'24/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (1, 8, 1, 35, N'450000', N'23/07/2019')
INSERT [dbo].[Item_User] ([ID_User], [ID_Item], [SoLuong], [Size], [TongTien], [NgayMua]) VALUES (2, 8, 1, 35, N'450000', N'23/07/2019')
INSERT [dbo].[Role] ([Role_ID], [Role_Name]) VALUES (N'1', N'admin')
INSERT [dbo].[Role] ([Role_ID], [Role_Name]) VALUES (N'2', N'guest')
SET IDENTITY_INSERT [dbo].[Role_Account] ON 

INSERT [dbo].[Role_Account] ([Role_ID], [ID_User]) VALUES (N'1', 1)
INSERT [dbo].[Role_Account] ([Role_ID], [ID_User]) VALUES (N'2', 2)
INSERT [dbo].[Role_Account] ([Role_ID], [ID_User]) VALUES (N'2', 3)
INSERT [dbo].[Role_Account] ([Role_ID], [ID_User]) VALUES (N'2', 4)
INSERT [dbo].[Role_Account] ([Role_ID], [ID_User]) VALUES (N'2', 6)
SET IDENTITY_INSERT [dbo].[Role_Account] OFF
INSERT [dbo].[Role_Feature] ([Role_ID], [Servlet_Path]) VALUES (N'1', N'Buy')
INSERT [dbo].[Role_Feature] ([Role_ID], [Servlet_Path]) VALUES (N'1', N'Create')
INSERT [dbo].[Role_Feature] ([Role_ID], [Servlet_Path]) VALUES (N'1', N'Delete')
INSERT [dbo].[Role_Feature] ([Role_ID], [Servlet_Path]) VALUES (N'2', N'Buy')
USE [master]
GO
ALTER DATABASE [Project_NgoTungSon] SET  READ_WRITE 
GO
