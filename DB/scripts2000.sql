USE [master]
GO
/****** Object:  Database [dulich]    Script Date: 08/13/2014 18:18:24 ******/
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'dulich')
BEGIN
CREATE DATABASE [dulich] ON  PRIMARY 
( NAME = N'TVPLPM_Data', FILENAME = N'E:\My WebSite\Dulich\MVC\DB\demo2012.ttv.vn_Data.MDF' , SIZE = 3008KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TVPLPM_Log', FILENAME = N'E:\My WebSite\Dulich\MVC\DB\demo2012.ttv.vn_Log.LDF' , SIZE = 1280KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
END
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'dulich', @new_cmptlevel=80
GO
ALTER DATABASE [dulich] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dulich] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dulich] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dulich] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dulich] SET ARITHABORT OFF
GO
ALTER DATABASE [dulich] SET AUTO_CLOSE ON
GO
ALTER DATABASE [dulich] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dulich] SET AUTO_SHRINK ON
GO
ALTER DATABASE [dulich] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dulich] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dulich] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dulich] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dulich] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dulich] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dulich] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dulich] SET  READ_WRITE
GO
ALTER DATABASE [dulich] SET RECOVERY SIMPLE
GO
ALTER DATABASE [dulich] SET  MULTI_USER
GO
ALTER DATABASE [dulich] SET TORN_PAGE_DETECTION OFF
GO
if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'dulich', @optname = 'db chaining', @optvalue = 'OFF'
 end
GO
USE [dulich]
GO
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sys_Module]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Sys_Module](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Layout] [varchar](255) NULL,
	[Type] [varchar](50) NULL,
	[TypeName] [varchar](50) NULL,
	[AssemblyName] [varchar](100) NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_T_CONTROL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Module] ON
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (1, N'MO : Tin tức', CONVERT(TEXT, N'MNews'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MNewsController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 1)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (3, N'ĐK : Tin tức', CONVERT(TEXT, N'CNews'), CONVERT(TEXT, N'Home,SidebarNews'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CNewsController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 5)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (4, N'ĐK :  Static', CONVERT(TEXT, N'CStatic'), CONVERT(TEXT, N'Support,FaceGroup,Footer'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CStaticController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 2)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (5, N'MO : Bài viết', CONVERT(TEXT, N'MContent'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MContentController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 2)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (6, N'MO : Liên hệ', CONVERT(TEXT, N'MFeedback'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MFeedbackController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 3)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (7, N'ĐK : Quảng cáo/Liên kết', CONVERT(TEXT, N'CAdv'), CONVERT(TEXT, N'Logo,SidebarLeft'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CAdvController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 4)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (8, N'ĐK : Menu', CONVERT(TEXT, N'CMenu'), CONVERT(TEXT, N'Top'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CMenuController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 1)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (9, N'ĐK : Văn bản', CONVERT(TEXT, N'CText'), CONVERT(TEXT, N'Default'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CTextController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 3)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (10, N'MO : Tìm kiếm', CONVERT(TEXT, N'MSearch'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MSearchController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 6)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (11, N'MO : SiteMap', CONVERT(TEXT, N'MSiteMap'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MSiteMapController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 7)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (12, N'MO : Tags', CONVERT(TEXT, N'MTag'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MTagController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 8)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (13, N'MO : Tour', CONVERT(TEXT, N'MTour'), CONVERT(TEXT, N''), CONVERT(TEXT, N'MODULE'), CONVERT(TEXT, N'HL.Lib.Controllers.MTourController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 9)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (14, N'ĐK : Tour', CONVERT(TEXT, N'CTour'), CONVERT(TEXT, N'CarouselTour,HomeBlock,SidebarTour,SlideTour'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CTourController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 10)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (15, N'ĐK : Video', CONVERT(TEXT, N'CVideo'), CONVERT(TEXT, N'Sidebar'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CVideoController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 11)
INSERT [dbo].[Sys_Module] ([ID], [Name], [Code], [Layout], [Type], [TypeName], [AssemblyName], [Order]) VALUES (16, N'ĐK : Album', CONVERT(TEXT, N'CAlbum'), CONVERT(TEXT, N'AlbumSidebar'), CONVERT(TEXT, N'CONTROL'), CONVERT(TEXT, N'HL.Lib.Controllers.CAlbumController'), CONVERT(TEXT, N'HLv1.0.MVC.Lib, Version=1.0.0.0, Culture=Neutral,PublicKeyToken=null'), 12)
SET IDENTITY_INSERT [dbo].[Sys_Module] OFF
/****** Object:  Table [dbo].[Sys_Lang]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sys_Lang]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Sys_Lang](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_T_LANG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Lang] ([ID], [Name], [Code]) VALUES (1, N'Việt Nam', CONVERT(TEXT, N'vi-VN'))
INSERT [dbo].[Sys_Lang] ([ID], [Name], [Code]) VALUES (2, N'English', CONVERT(TEXT, N'en-US'))
INSERT [dbo].[Sys_Lang] ([ID], [Name], [Code]) VALUES (3, N'Chinese', CONVERT(TEXT, N'zh-cn'))
/****** Object:  Table [dbo].[Mod_Video]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Video]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[State] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Code] [varchar](200) NULL,
	[Content] [ntext] NULL,
	[File] [nvarchar](200) NULL,
	[LinkVideo] [nvarchar](500) NULL,
	[Published] [datetime] NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_Mod_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mod_Tour]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Tour]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Tour](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[State] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Code] [varchar](200) NULL,
	[Tags] [nvarchar](1000) NULL,
	[Summary] [ntext] NULL,
	[Price] [decimal](18, 0) NULL,
	[SalePrice] [decimal](18, 0) NULL,
	[TimeTotal] [nvarchar](100) NULL,
	[StartDate] [nvarchar](50) NULL,
	[Schedule] [nvarchar](500) NULL,
	[Locations] [nvarchar](300) NULL,
	[Content] [ntext] NULL,
	[ScheduleDetail] [ntext] NULL,
	[File] [nvarchar](200) NULL,
	[Img_Slide] [nvarchar](200) NULL,
	[Map] [nvarchar](1000) NULL,
	[Published] [datetime] NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_Mod_Tour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mod_Tag]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Tag]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [varchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Keywords] [nvarchar](1000) NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Mod_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mod_Tag] ON
INSERT [dbo].[Mod_Tag] ([ID], [Name], [Code], [Title], [Keywords], [Description]) VALUES (3, N'Thiết kế web', CONVERT(TEXT, N'Thiet-ke-web'), NULL, NULL, NULL)
INSERT [dbo].[Mod_Tag] ([ID], [Name], [Code], [Title], [Keywords], [Description]) VALUES (4, N'Công ty thiết kế', CONVERT(TEXT, N'Cong-ty-thiet-ke'), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mod_Tag] OFF
/****** Object:  Table [dbo].[Mod_Order]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Order]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerAddress] [nvarchar](150) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CusomerPhone] [nvarchar](15) NULL,
	[TourID] [int] NULL,
	[TourName] [nvarchar](300) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Adults] [int] NULL,
	[Children1] [int] NULL,
	[Children2] [int] NULL,
	[Comment] [ntext] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_Mod_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mod_Online]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Online]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Online](
	[SessionID] [varchar](50) NULL,
	[TimeValue] [bigint] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Mod_Online] ([SessionID], [TimeValue]) VALUES (CONVERT(TEXT, N'54qgbohcbszptgbicbhadz0k'), 635435504277143281)
/****** Object:  Table [dbo].[Mod_NewsTag]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_NewsTag]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_NewsTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NewsID] [int] NULL,
	[TagID] [int] NULL,
 CONSTRAINT [PK_Mod_NewsTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Mod_NewsTag] ON
INSERT [dbo].[Mod_NewsTag] ([ID], [NewsID], [TagID]) VALUES (3, 5646, 2)
INSERT [dbo].[Mod_NewsTag] ([ID], [NewsID], [TagID]) VALUES (4, 5646, 3)
INSERT [dbo].[Mod_NewsTag] ([ID], [NewsID], [TagID]) VALUES (5, 5646, 4)
SET IDENTITY_INSERT [dbo].[Mod_NewsTag] OFF
/****** Object:  Table [dbo].[CP_User]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_User]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_T_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CP_User] ON
INSERT [dbo].[CP_User] ([ID], [LoginName], [Password], [Name], [Address], [Phone], [Email], [Activity]) VALUES (1, CONVERT(TEXT, N'admin'), CONVERT(TEXT, N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C'), N'TTV', N'Tầng 17, Tháp B, Tòa Nhà Hà Thành Plaza, 102 Thái Thịnh, Đống Đa, TP. Hà Nội', N'0902885886', N'contact@ttv.vn', 1)
SET IDENTITY_INSERT [dbo].[CP_User] OFF
/****** Object:  Table [dbo].[CP_Role]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_Role]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Lock] [bit] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_T_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CP_Role] ON
INSERT [dbo].[CP_Role] ([ID], [Name], [Code], [Lock], [Order]) VALUES (1, N'Administrator', NULL, 1, 1)
INSERT [dbo].[CP_Role] ([ID], [Name], [Code], [Lock], [Order]) VALUES (2, N'Thành viên', NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[CP_Role] OFF
/****** Object:  Table [dbo].[CP_Module]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_Module]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_Module](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Access] [int] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_T_ADMIN_MODULE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CP_Module] ON
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (1, N'QUẢN TRỊ HỆ THỐNG', CONVERT(TEXT, N'SysAdministrator'), 1, 1)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (8, N'Quản lý  -  File tải lên', CONVERT(TEXT, N'ModFile'), 15, 90)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (56, N'Quản lý  - Quảng cáo/Liên kết', CONVERT(TEXT, N'ModAdv'), 31, 10)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (57, N'Quản lý  - Liên hệ', CONVERT(TEXT, N'ModFeedback'), 9, 100)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (58, N'Quản lý  - Bài viết', CONVERT(TEXT, N'ModNews'), 31, 5)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (68, N'Quản lý  - Tags', CONVERT(TEXT, N'ModTag'), 31, 6)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (69, N'Quản lý - Tours', CONVERT(TEXT, N'ModTour'), 31, 101)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (70, N'Quản lý - Đặt Tour', CONVERT(TEXT, N'ModOrder'), 31, 102)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (71, N'Quản lý - Video', CONVERT(TEXT, N'ModVideo'), 31, 103)
INSERT [dbo].[CP_Module] ([ID], [Name], [Code], [Access], [Order]) VALUES (72, N'Quản lý - Album Ảnh', CONVERT(TEXT, N'ModAlbum'), 31, 104)
SET IDENTITY_INSERT [dbo].[CP_Module] OFF
/****** Object:  Table [dbo].[Mod_ImagesTour]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_ImagesTour]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_ImagesTour](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TourID] [int] NULL,
	[File] [nvarchar](200) NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_Mod_ImagesTour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Mod_Feedback]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Feedback]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [ntext] NULL,
	[IP] [varchar](50) NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_T_FEEDBACK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mod_AlbumDetail]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_AlbumDetail]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_AlbumDetail](
	[ID] [int] NULL,
	[AlbumID] [int] NULL,
	[File] [nvarchar](200) NULL,
	[Activity] [bit] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Mod_Album]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Album]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Album](
	[ID] [int] NULL,
	[MenuID] [int] NULL,
	[State] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Code] [varchar](200) NULL,
	[Content] [ntext] NULL,
	[File] [nvarchar](200) NULL,
	[Publisher] [datetime] NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Web_Setting]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Web_Setting]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Web_Setting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Value] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_SETTING] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Web_Setting] ON
INSERT [dbo].[Web_Setting] ([ID], [Name], [Code], [Value]) VALUES (1, N'So lan truy cap', CONVERT(TEXT, N'VISIT'), N'23334')
INSERT [dbo].[Web_Setting] ([ID], [Name], [Code], [Value]) VALUES (3, N'Thoi gian Cache', CONVERT(TEXT, N'TIMECACHE'), N'120')
INSERT [dbo].[Web_Setting] ([ID], [Name], [Code], [Value]) VALUES (4, N'GoogleAnalytics.Email', CONVERT(TEXT, N'GoogleAnalytics.Email'), N'mail.ttv.2009@gmail.com')
INSERT [dbo].[Web_Setting] ([ID], [Name], [Code], [Value]) VALUES (5, N'GoogleAnalytics.Password', CONVERT(TEXT, N'GoogleAnalytics.Password'), N'TTV2009123')
INSERT [dbo].[Web_Setting] ([ID], [Name], [Code], [Value]) VALUES (6, N'GoogleAnalytics.ProfileId', CONVERT(TEXT, N'GoogleAnalytics.ProfileId'), N'39761791')
SET IDENTITY_INSERT [dbo].[Web_Setting] OFF
/****** Object:  Table [dbo].[Web_Resource]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Web_Resource]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Web_Resource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LangID] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Value] [ntext] NULL,
 CONSTRAINT [PK_T_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Web_Resource] ON
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (152, 2, CONVERT(TEXT, N'Web_Footer'), N'<strong> <br /> @ Copyright by TNS Holdings.<br />
')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (153, 2, CONVERT(TEXT, N'Web_Support'), N'<span style="font-size: 20px;">Customer Center</span>
<span style="font-size: 20px; color: #781e19;">+84.437.8686.70</span>')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (154, 2, CONVERT(TEXT, N'Web_HOME'), N'Home')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (155, 2, CONVERT(TEXT, N'Web_Pager'), N'Trang')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (156, 2, CONVERT(TEXT, N'Web_Download'), N'Tải về')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (157, 2, CONVERT(TEXT, N'Web_FB_Title'), N'Title')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (158, 2, CONVERT(TEXT, N'Web_FB_Content'), N'Content')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (159, 2, CONVERT(TEXT, N'Web_FB_Name'), N'By')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (160, 2, CONVERT(TEXT, N'Web_FB_Phone'), N'
Phone')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (161, 2, CONVERT(TEXT, N'Web_FB_Email'), N'Email')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (162, 2, CONVERT(TEXT, N'Web_FB_Submit'), N'Send information')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (163, 2, CONVERT(TEXT, N'Web_FBE_Title'), N'Nhập - Tiêu đề')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (164, 2, CONVERT(TEXT, N'Web_FBE_Content'), N'Nhập - Nội dung')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (165, 2, CONVERT(TEXT, N'Web_FBE_Name'), N'Nhập - Người gửi')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (166, 2, CONVERT(TEXT, N'Web_FBE_Phone'), N'Nhập - Điện thoại')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (167, 2, CONVERT(TEXT, N'Web_FBE_Mess'), N'Các thông tin nhập còn thiếu hoặc chưa chính xác')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (168, 2, CONVERT(TEXT, N'Web_FB_SuccessMess'), N'Cảm ơn bạn đã liên hệ với chúng tôi!')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (169, 3, CONVERT(TEXT, N'Web_Footer'), N'© Copyright by TNS Group.<br />
                Văn phòng Hà Nội: 1194/12a1 đường Láng, Đống Đa, Hà Nội
                <br />
                By <a href="">TTV.VN </a>')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (170, 3, CONVERT(TEXT, N'Web_Support'), N'<span style="font-size: 20px;">Customer Center</span>
<span style="font-size: 20px; color: #781e19;">+84.437.8686.70</span>')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (171, 3, CONVERT(TEXT, N'Web_HOME'), N'TRANG CHỦ')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (172, 3, CONVERT(TEXT, N'Web_Pager'), N'Trang')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (173, 3, CONVERT(TEXT, N'Web_Download'), N'Tải về')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (174, 3, CONVERT(TEXT, N'Web_FB_Title'), N'Tiêu đề')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (175, 3, CONVERT(TEXT, N'Web_FB_Content'), N'Nội dung')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (176, 3, CONVERT(TEXT, N'Web_FB_Name'), N'Người gửi')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (177, 3, CONVERT(TEXT, N'Web_FB_Phone'), N'Điện thoại')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (178, 3, CONVERT(TEXT, N'Web_FB_Email'), N'Email')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (179, 3, CONVERT(TEXT, N'Web_FB_Submit'), N'Gửi thông tin')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (180, 3, CONVERT(TEXT, N'Web_FBE_Title'), N'Nhập - Tiêu đề')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (181, 3, CONVERT(TEXT, N'Web_FBE_Content'), N'Nhập - Nội dung')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (182, 3, CONVERT(TEXT, N'Web_FBE_Name'), N'Nhập - Người gửi')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (183, 3, CONVERT(TEXT, N'Web_FBE_Phone'), N'Nhập - Điện thoại')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (184, 3, CONVERT(TEXT, N'Web_FBE_Mess'), N'Các thông tin nhập còn thiếu hoặc chưa chính xác')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (185, 3, CONVERT(TEXT, N'Web_FB_SuccessMess'), N'Cảm ơn bạn đã liên hệ với chúng tôi!')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (187, 2, CONVERT(TEXT, N'Web_Search'), N'Search...')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (188, 3, CONVERT(TEXT, N'Web_Search'), N'Search...')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (189, 1, CONVERT(TEXT, N'Support_Content'), N'<li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>
            <li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>
            <li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>
            <li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>
			<li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>
			<li>
                <a href="ymsgr:sendim?{$item.yahoo}"><img src="/Content/style/images/yahoo.png" /></a><a href="skype:{$item.skype}?chat" title="Gọi hoặc chat bằng Skype"><img src="/Content/style/images/skype.png" /></a>
                <p>Tư vấn 1</p>
            </li>')
INSERT [dbo].[Web_Resource] ([ID], [LangID], [Code], [Value]) VALUES (190, 1, CONVERT(TEXT, N'Footer_Content'), N'<p style="font-weight: bold">CÔNG TY TNHH ĐÀO VŨ</p>
<p>Add: Số 89, Tổ 50, Phường Dịch Vọng Hậu, Cầu Giấy, Hà Nội.</p>
<p>VPGD: Tầng 18, Toà Nhà N105, Nguyễn Phong Sắc, Cầu Giấy, Hà Nội.</p>
<p>Tell: 0463 282 111 - Mobile: 0936 774 998</p>
<p>E-mail: lienhe@daovu.vn - Website: www.daovu.vn</p>')
SET IDENTITY_INSERT [dbo].[Web_Resource] OFF
/****** Object:  Table [dbo].[Web_Menu]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Web_Menu]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Web_Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LangID] [int] NULL,
	[ParentID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [varchar](100) NULL,
	[Type] [varchar](50) NULL,
	[Custom] [nvarchar](1000) NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_T_MENU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Web_Menu] ON
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (353, 1, 0, N'Danh mục Bài viết', CONVERT(TEXT, N'Danh-muc-Bai-viet'), CONVERT(TEXT, N'News'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (546, 1, 0, N'Danh mục Quảng cáo', CONVERT(TEXT, N'Danh-muc-Quang-cao'), CONVERT(TEXT, N'Adv'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1209, 1, 0, N'Loại Tour Du lịch', CONVERT(TEXT, N'Loai-Tour-Du-lich'), CONVERT(TEXT, N'Tour'), NULL, 3, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1210, 1, 1209, N'Tour Trong Nước', CONVERT(TEXT, N'Tour-Trong-Nuoc'), CONVERT(TEXT, N'Tour'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1211, 1, 1209, N'Tour Quốc Tế', CONVERT(TEXT, N'Tour-Quoc-Te'), CONVERT(TEXT, N'Tour'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1212, 1, 1209, N'Tổ Chức Sự Kiện', CONVERT(TEXT, N'To-chuc-su-kien'), CONVERT(TEXT, N'Tour'), NULL, 3, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1213, 1, 1210, N'Tour miền Bắc', CONVERT(TEXT, N'Tour-mien-Bac'), CONVERT(TEXT, N'Tour'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1214, 1, 1210, N'Tour miền Trung - Tây Nguyên', CONVERT(TEXT, N'Tour-mien-Trung-Tay-Nguyen'), CONVERT(TEXT, N'Tour'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1215, 1, 1210, N'Tour miền Nam', CONVERT(TEXT, N'Tour-mien-Nam'), CONVERT(TEXT, N'Tour'), NULL, 3, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1216, 1, 1211, N'Tour Châu Á', CONVERT(TEXT, N'Tour-Chau-A'), CONVERT(TEXT, N'Tour'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1217, 1, 1211, N'Tour Châu Âu', CONVERT(TEXT, N'Tour-Chau-Au'), CONVERT(TEXT, N'Tour'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1218, 1, 1211, N'Tour Châu Phi', CONVERT(TEXT, N'Tour-Chau-Phi'), CONVERT(TEXT, N'Tour'), NULL, 3, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1219, 1, 353, N'Kinh Nghiện Du Lịch', CONVERT(TEXT, N'Kinh-Nghien-Du-Lich'), CONVERT(TEXT, N'News'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1220, 1, 353, N'Dịch Vụ', CONVERT(TEXT, N'Dich-Vu'), CONVERT(TEXT, N'News'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1221, 1, 546, N'Logo', CONVERT(TEXT, N'Logo'), CONVERT(TEXT, N'Adv'), NULL, 1, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1222, 1, 546, N'Quảng cáo bên trái', CONVERT(TEXT, N'Quang-cao-ben-trai'), CONVERT(TEXT, N'Adv'), NULL, 2, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1223, 1, 0, N'Video', CONVERT(TEXT, N'Video'), CONVERT(TEXT, N'Video'), NULL, 4, 1)
INSERT [dbo].[Web_Menu] ([ID], [LangID], [ParentID], [Name], [Code], [Type], [Custom], [Order], [Activity]) VALUES (1224, 1, 0, N'Thư viện ảnh', CONVERT(TEXT, N'Thu-vien-anh'), CONVERT(TEXT, N'Album'), NULL, 5, 1)
SET IDENTITY_INSERT [dbo].[Web_Menu] OFF
/****** Object:  Table [dbo].[Sys_Template]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sys_Template]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Sys_Template](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LangID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[File] [varchar](50) NULL,
	[Custom] [ntext] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_T_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Template] ON
INSERT [dbo].[Sys_Template] ([ID], [LangID], [Name], [File], [Custom], [Order]) VALUES (1, 1, N'Trang chủ', CONVERT(TEXT, N'Default.Master'), N'Template_LeftContent=CNews|CKinhNghiemDuLich,CTour|CSidebarTourTrongNuoc,CTour|CSidebarTourQuocTe,CVideo|CVideoSidebar,CAlbum|CAlbumSidebar
Template_MainContent=CTour|CTourTrongNuoc,CTour|CTourQuocTe,CNews|CMainKinhNghiemDuLich
Logo.MenuID=546
Logo.ViewLayout=Logo
MenuTop.PageID=1
MenuTop.ViewLayout=Top
MainSlide.MenuID=1209
MainSlide.ViewLayout=SlideTour
CarouselTour.MenuID=1209
CarouselTour.ViewLayout=CarouselTour
Support.ViewLayout=Support
CTourTrongNuoc.MenuID=1210
CTourTrongNuoc.ViewLayout=HomeBlock
CTourQuocTe.MenuID=1211
CTourQuocTe.ViewLayout=HomeBlock
Footer.ViewLayout=Footer
CVideoSidebar.ViewLayout=Sidebar
CKinhNghiemDuLich.MenuID=1219
CKinhNghiemDuLich.Title=Kinh nghiệm du lịch
CKinhNghiemDuLich.ViewLayout=SidebarNews
CSidebarTourTrongNuoc.MenuID=1210
CSidebarTourTrongNuoc.PageSize=5
CSidebarTourTrongNuoc.Title=Tour Trong nước
CSidebarTourTrongNuoc.ViewLayout=SidebarTour
CSidebarTourQuocTe.MenuID=1211
CSidebarTourQuocTe.PageSize=5
CSidebarTourQuocTe.Title=Tour Quốc Tế
CSidebarTourQuocTe.ViewLayout=SidebarTour
CMainKinhNghiemDuLich.MenuID=1219
CMainKinhNghiemDuLich.PageSize=10
CMainKinhNghiemDuLich.Title=Kinh nghiệm du lịch
CMainKinhNghiemDuLich.ViewLayout=Home
CAlbumSidebar.MenuID=1224
CAlbumSidebar.PageSize=8
CAlbumSidebar.Title=Album Ảnh
CAlbumSidebar.ViewLayout=AlbumSidebar', 1)
INSERT [dbo].[Sys_Template] ([ID], [LangID], [Name], [File], [Custom], [Order]) VALUES (5, 2, N'Trang chủ', CONVERT(TEXT, N'Default.Master'), N'hlMenuTop.PageID=57
hlMenuTop.ViewLayout=Top
hlBackground.MenuID=1208
hlBackground.ViewLayout=Default
hlHome.MenuID=1204
hlHome.ViewLayout=Home', 1)
INSERT [dbo].[Sys_Template] ([ID], [LangID], [Name], [File], [Custom], [Order]) VALUES (6, 2, N'Trang con', CONVERT(TEXT, N'Level1.Master '), N'Template_Left=CMenu|hlLeftMenu,CAdv|hlLeftAdv
Template_Right=HLMODULE
hlMenuTop.PageID=57
hlMenuTop.ViewLayout=Top
hlBanner.MenuID=1206
hlBanner.ViewLayout=Banner
hlLeftMenu.ViewLayout=Left
hlLeftAdv.MenuID=1205
hlLeftAdv.ViewLayout=Left
', 2)
INSERT [dbo].[Sys_Template] ([ID], [LangID], [Name], [File], [Custom], [Order]) VALUES (7, 2, N'Trang tài liệu', CONVERT(TEXT, N'Level1.Master'), N'Template_Left=CMenu|hlLeftMenu,CAdv|hlLeftAdv
Template_Right=HLMODULE
hlMenuTop.PageID=57
hlMenuTop.ViewLayout=Top
hlBanner.MenuID=1206
hlBanner.ViewLayout=Banner
hlLeftMenu.ViewLayout=Left2
hlLeftAdv.MenuID=1205
hlLeftAdv.ViewLayout=Left
', 3)
INSERT [dbo].[Sys_Template] ([ID], [LangID], [Name], [File], [Custom], [Order]) VALUES (9, 1, N'Trang Con', CONVERT(TEXT, N'PageContent.Master'), N'Template_LeftContent=CNews|CKinhNghiemDuLich,CTour|CSidebarTourTrongNuoc,CTour|CSidebarTourQuocTe,CVideo|CVideoSidebar,CAlbum|CAlbumSidebar
Template_MainContent=HLMODULE
Logo.MenuID=1221
Logo.ViewLayout=Logo
MenuTop.PageID=1
MenuTop.ViewLayout=Top
MainSlide.ViewLayout=SlideTour
CarouselTour.ViewLayout=CarouselTour
Support.ViewLayout=Support
Footer.ViewLayout=Footer
CVideoSidebar.ViewLayout=Sidebar
CKinhNghiemDuLich.MenuID=1219
CKinhNghiemDuLich.Title=Kinh nghiệm du lịch
CKinhNghiemDuLich.ViewLayout=SidebarNews
CSidebarTourTrongNuoc.MenuID=1210
CSidebarTourTrongNuoc.PageSize=5
CSidebarTourTrongNuoc.Title=Tour Trong nước
CSidebarTourTrongNuoc.ViewLayout=SidebarTour
CSidebarTourQuocTe.MenuID=1211
CSidebarTourQuocTe.PageSize=5
CSidebarTourQuocTe.Title=Tour Quốc Tế
CSidebarTourQuocTe.ViewLayout=SidebarTour
CVideoSidebar.MenuID=1223
CVideoSidebar.Title=Video
CAlbumSidebar.MenuID=1224
CAlbumSidebar.PageSize=8
CAlbumSidebar.Title=Album Ảnh
CAlbumSidebar.ViewLayout=AlbumSidebar', 2)
SET IDENTITY_INSERT [dbo].[Sys_Template] OFF
/****** Object:  Table [dbo].[CP_UserRole]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_UserRole]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_UserRole](
	[UserID] [int] NULL,
	[RoleID] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[CP_UserRole] ([UserID], [RoleID]) VALUES (2, 2)
INSERT [dbo].[CP_UserRole] ([UserID], [RoleID]) VALUES (1, 1)
/****** Object:  Table [dbo].[CP_UserLog]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_UserLog]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_UserLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[IP] [varchar](50) NULL,
	[Note] [nvarchar](100) NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_T_USER_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CP_UserLog] ON
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1384, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A382002214AA AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1385, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A38200D59D73 AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1386, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A384017F7E90 AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1387, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A38500B82A45 AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1388, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A38600ADF889 AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1389, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A38601123161 AS DateTime))
INSERT [dbo].[CP_UserLog] ([ID], [UserID], [IP], [Note], [Created]) VALUES (1390, 1, CONVERT(TEXT, N'::1'), N'Đăng nhập hệ thống.', CAST(0x0000A3860113CA42 AS DateTime))
SET IDENTITY_INSERT [dbo].[CP_UserLog] OFF
/****** Object:  Table [dbo].[CP_Access]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[CP_Access]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[CP_Access](
	[RefID] [int] NULL,
	[RoleID] [int] NULL,
	[UserID] [int] NULL,
	[Type] [varchar](50) NULL,
	[Value] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (1, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 1)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (8, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 15)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (56, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (57, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 9)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (58, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (8, 2, 0, CONVERT(TEXT, N'CP.MODULE'), 11)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (56, 2, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (57, 2, 0, CONVERT(TEXT, N'CP.MODULE'), 9)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (58, 2, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (68, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (69, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (70, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (71, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
INSERT [dbo].[CP_Access] ([RefID], [RoleID], [UserID], [Type], [Value]) VALUES (72, 1, 0, CONVERT(TEXT, N'CP.MODULE'), 31)
/****** Object:  Table [dbo].[Mod_News]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_News]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[State] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [varchar](100) NULL,
	[Tags] [nvarchar](1000) NULL,
	[Summary] [nvarchar](1000) NULL,
	[Content] [ntext] NULL,
	[Custom] [nvarchar](1000) NULL,
	[File] [nvarchar](100) NULL,
	[Published] [datetime] NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_T_NEWS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mod_News] ON
INSERT [dbo].[Mod_News] ([ID], [MenuID], [State], [Name], [Code], [Tags], [Summary], [Content], [Custom], [File], [Published], [Order], [Activity]) VALUES (5714, 1219, 0, N'Kinh nghiệm du lịch Phú Quốc', CONVERT(TEXT, N'Kinh-nghiem-du-lich-Phu-Quoc'), N'', N'<p>
	Ph&uacute; Quốc đảo ngọc với nhiều b&atilde;i biển hoang sơ nước trong xanh c&aacute;t trắng mịn l&agrave; nơi nghĩ dưỡng l&yacute; th&uacute; cho du kh&aacute;ch trong v&agrave; ngo&agrave;i nước. Phần lớn du kh&aacute;ch đến du lịch Ph&uacute; Quốc th&ocirc;ng qua c&aacute;c c&ocirc;ng ty lữ h&agrave;nh, điều n&agrave;y c&oacute; c&aacute;i lợi l&agrave; du kh&aacute;ch kh&ocirc;ng cần phải quan t&acirc;m tới việc đi lại, ăn ở, chương tr&igrave;nh tham quan&hellip;Tuy nhi&ecirc;n cũng c&oacute; mặt hạn chế l&agrave; bị b&oacute; buột trong một khu&ocirc;n khổ hất định, chi ph&iacute; cao, kh&ocirc;ng cảm nhận hết c&aacute;i hay của Ph&uacute; Quốc m&agrave; chỉ c&oacute; đi du lịch bụi mới cảm nhận được hết.&nbsp; Phần n&agrave;y m&igrave;nh sẽ tr&igrave;nh b&agrave;y kinh nghiệm du lịch Ph&uacute; Quốc sao cho tiện nhất rẻ nhất cho c&aacute;c bạn muốn du lịch tự t&uacute;c đến Ph&uacute; Quốc.</p>
', N'<div class="lineheight" style="font-family: Arial, Tahoma; font-size: 13px; line-height: 20px; color: rgb(34, 34, 34); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
	<div style="font-family: Arial, Tahoma; font-size: 10pt;">
		<p style="text-align: center;">
			<span id="content_fvcontent_lbimage" style="font-family: Arial,Tahoma; font-size: 13px; color: rgb(34, 34, 34); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px;"><img alt="Kinh nghiệm du lịch Phú Quốc" border="0" class="image13" src="http://kinhnghiemdulich.edu.vn/upload/tintuc/kinh-nghiem-du-lich-phu-quoc-tu-tuc.JPG" style="font-family: Arial,Tahoma; font-size: 10pt; margin-bottom: 10px;" title="Kinh nghiệm du lịch Phú Quốc" width="600" /></span></p>
		<h2 style="font-family: Segoe-UI,Proxima-Nova,Helvetica,Arial,sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: center;">
			M&ugrave;a du lịch Ph&uacute; Quốc</h2>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			M&ugrave;a du lịch Ph&uacute; Quốc l&agrave; từ th&aacute;ng cuối th&aacute;ng 10 đến th&aacute;ng 3 năm sau. M&ugrave;a Ph&uacute; Quốc rất đ&ocirc;ng kh&aacute;ch, gi&aacute; ph&ograve;ng kh&aacute;ch sạn thường tăng phi m&atilde;, việc t&igrave;m được một kh&aacute;ch sạn như &yacute; m&agrave; gi&aacute; tương đối cũng kh&ocirc;ng đơn giản, b&ecirc;n cạnh đ&oacute; l&agrave; sự chen lấn ở c&aacute;c b&atilde;i tắm, ăn uống ở Ph&uacute; Quốc thời điểm n&agrave;y cũng với gi&aacute; đắt đỏ nhưng chất lượng th&igrave; kh&ocirc;ng ra g&igrave;. M&ugrave;a n&agrave;y chỉ th&iacute;ch hợp cho những ai nhiều tiền đến đ&acirc;y nghỉ dưỡng ở những khu resort cao cấp, c&ograve;n với d&acirc;n du lịch bụi th&igrave; theo m&igrave;nh l&agrave; kh&ocirc;ng n&ecirc;n.<span class="Apple-converted-space">&nbsp;</span><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			M&ugrave;a du lịch thấp điểm của Ph&uacute; Quốc l&agrave; từ cuối th&aacute;ng tư đến đầu th&aacute;ng 10. Thời tiết m&agrave;u n&agrave;y ở Ph&uacute; Quốc thường mưa nhiều, d&ocirc;i khi c&oacute; b&atilde;o, n&ecirc;n lượng du kh&aacute;ch tới đ&acirc;y giảm hẳn, do vậy gi&aacute; cả dịch vụ cũng rất dễ chịu. Tốt nhất c&aacute;c bạn n&ecirc;n đi du lịch Ph&uacute; Quốc v&agrave;o khoảng đầu th&aacute;ng 4 hoặc cuối th&aacute;ng 10, hai thời điểm n&agrave;y l&agrave; đầu v&agrave; cuối m&ugrave;a mưa, n&ecirc;n lượng mưa giảm, cảnh cũng rất đẹp, gi&aacute; dịch vụ rẻ, kh&aacute;ch du lịch thưa.</p>
		<div style="font-family: Arial,Tahoma; font-size: 10pt; text-align: center;">
			<img alt="ban-do-du-lich-phu-quoc.jpg" border="0" height="900" src="http://kinhnghiemdulich.edu.vn/kinhnghiemdulich.edu.vn/upload/phuquoc/ban-do-du-lich-phu-quoc.jpg" style="font-family: Arial, Tahoma; font-size: 10pt;" width="600" /><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Bản đồ du lịch Ph&uacute; Quốc</div>
		<p style="text-align: center;">
			&nbsp;</p>
		<h2 style="font-family: Segoe-UI,Proxima-Nova,Helvetica,Arial,sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: center;">
			N&ecirc;n du lịch Ph&uacute; Quốc theo tour hay đi tự t&uacute;c</h2>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Như phần tr&ecirc;n m&igrave;nh đ&atilde; n&oacute;i, nếu bạn muốn đi nghỉ dưỡng th&igrave; n&ecirc;n theo tour cho khỏe kho lo lắng g&igrave; cả, c&ograve;n nếu l&agrave; d&acirc;n nh&agrave; phượt th&igrave; n&ecirc;n đi tự t&uacute;c để đỡ dược chi ph&iacute; v&agrave; th&otilde;a m&atilde;n c&aacute;i th&uacute; kh&aacute;m ph&aacute;.</p>
		<h2 style="font-family: Segoe-UI,Proxima-Nova,Helvetica,Arial,sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: center;">
			C&aacute;ch đến Ph&uacute; Quốc</h2>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Với c&aacute;c bạn ở TPHCM v&agrave; c&aacute;c tỉnh l&acirc;n cận thuộc miền Nam th&igrave; c&oacute; thể đến Ph&uacute; Quốc bằng xe kh&aacute;ch, m&aacute;y bay hoặc xe m&aacute;y. Nhưng theo m&igrave;nh c&aacute;c bạn n&ecirc;n đi bằng xe kh&aacute;ch l&agrave; &iacute;t tốn k&eacute;m nhất. Với bạn n&agrave;o kh&ocirc;ng c&oacute; nhiếu thời gian th&igrave; đi m&aacute;y bay l&agrave; lựa chọn bắt buột. C&ograve;n đi xe m&aacute;y th&igrave; theo m&igrave;nh l&agrave; kh&ocirc;ng n&ecirc;n v&iacute; qu&atilde;ng đường kh&aacute; xa.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Với c&aacute;c bạn ở H&agrave; Nội v&agrave; miền Bắc th&igrave; c&oacute; thể đi bằng m&aacute;y bay. Phần n&agrave;y m&igrave;nh chỉ tr&igrave;nh b&agrave;y c&aacute;ch đi bằng m&aacute;y bay ở H&agrave; Nội đi Ph&uacute; Quốc. Nếu muốn đi bằng xe kh&aacute;ch, th&igrave; c&aacute;c bạn cứ bắt xe v&agrave;o TPHCM, rồi theo hướng dẫn b&ecirc;n dưới m&agrave; bắt xe đi Ph&uacute; Quốc.</p>
		<h3 style="font-family: Arial,Tahoma; font-size: 12pt; font-weight: bold; color: rgb(3, 77, 126); line-height: 20.8px; margin: 0px; text-align: center;">
			Đi Ph&uacute; Quốc bằng xe kh&aacute;ch</h3>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Để đến được Ph&uacute; Quốc bằng xe kh&aacute;ch, đầu ti&ecirc;n bạn phải bắt xe đi Rạch Gi&aacute;, từ Rạch gi&aacute;, đi t&agrave;u cao tốc đến Ph&uacute; Quốc. Bạn c&oacute; thể ra bến Xe miền T&acirc;y mua v&eacute; xe đi Rạch Gi&aacute; hoặc li&ecirc;n hệ trực tiếp c&aacute;c nh&agrave; xe đi Rạch Gi&aacute;. Trong c&aacute;c nh&agrave; xe theo m&igrave;nh th&igrave; xe của Mai Linh v&agrave; Phương Trang l&agrave; lựa chọn ưu ti&ecirc;n, ngo&agrave;i ra bạn c&oacute; thể đi xe của Tuyết hon hoặc Ch&acirc;u H&agrave;. Kinh nghiệm l&agrave; bạn n&ecirc;n đi chuyến 11h đ&ecirc;m, như vậy sẽ tranh thủ nghỉ ngơi tr&ecirc;n xe lu&ocirc;n. S&aacute;ng h&ocirc;m sau tới nơi sẽ c&oacute; được trọn một ng&agrave;y đi kh&aacute;m ph&aacute;.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Địa chỉ Bến xe Miền T&acirc;y: 395 Kinh Dương Vương, An Lạc, Quận B&igrave;nh T&acirc;n, TPHCM. Điện thoại: (08) 38.752.953 &ndash; 38.776.594<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Xe đi Rạch Gi&aacute; mất khoảng 6 tiếng, dừng hai 2 lần:&nbsp; Lần 1 ở Khu vực tiền Giang (thường l&agrave; ở C&aacute;i B&egrave;) cho kh&aacute;ch ăn uống đi vệ sinh. Lần 2 l&agrave; qua Ph&agrave; V&agrave;m Cống thuộc tỉnh Đồng Th&aacute;p,&nbsp; bạn sẽ phải xuống xe để đi qua Ph&agrave;, thường th&igrave; người đi bộ sẽ qua Ph&agrave; trước, xe đi qua sau, n&ecirc;n bạn phải mất khoảng 5 &ndash; 10 chờ, nhớ bản số xe để khỏi phải lạc nh&eacute;. Trước khi l&ecirc;n ph&agrave; t&agrave;i xế sẽ ph&aacute;t v&eacute; cho từng người.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Trước khi đến Rạch Gi&aacute; bạn hỏi b&aacute;c t&agrave;i xe &ldquo; Trung Chuyển&rdquo; n&agrave;o đến bến t&agrave;u, bạn đi xe n&agrave;y sẽ kh&ocirc;ng tốn Ph&iacute;. L&uacute;c l&ecirc;n xe bạn nhớ n&oacute;i t&agrave;i xế cho bạn đến bến T&agrave;u Cao Tốc. Ch&uacute; &yacute; đừng nghe lời mấy anh xe &ocirc;m coi chừng bị mất tiền oan.</p>
		<h3 style="font-family: Arial,Tahoma; font-size: 12pt; font-weight: bold; color: rgb(3, 77, 126); line-height: 20.8px; margin: 0px; text-align: center;">
			T&agrave;u cao tốc đi Ph&uacute; Quốc</h3>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			T&agrave;u từ Rạch Gi&aacute; đi Ph&uacute; Quốc khởi h&agrave;nh v&agrave;o 8h s&aacute;ng mỗi ng&agrave;y, mua v&eacute; ở tại bến T&agrave;u.&nbsp; Gi&aacute; t&agrave;u khoảng 320.000đ. Hiện tại c&oacute; 3 h&atilde;ng t&agrave;u cao tốc sau đi Ph&uacute; Quốc từ Rạch Gi&aacute;: Superdong (1 &ndash; 6), Savanna, Dương&nbsp; Đ&ocirc;ng Express ( 01 chiếc t&agrave;u ) T&agrave;u chạy khoảng 2h30 ph&uacute;t. Tr&ecirc;n tất cả t&agrave;u cao tốc đi Ph&uacute; quốc đều c&oacute; m&aacute;y điều h&ograve;a bật suốt tuyến , Tivi LCD 32 in phục vụ chương tr&igrave;nh văn nghệ cho h&agrave;nh kh&aacute;ch , ngo&agrave;i ra đội ngủ phục vụ tr&ecirc;n t&agrave;u đều rất dễ chịu lu&ocirc;n sẵn s&agrave;ng gi&uacute;p đỡ h&agrave;nh kh&aacute;ch , đ&acirc;y l&agrave; h&igrave;nh ảnh tốt đẹp đầu ti&ecirc;n m&agrave; Ph&uacute; quốc ghi điểm với kh&aacute;ch du lịch trước khi đến đảo. T&agrave;u từ Ph&uacute; Quốc đi Rạch Gi&aacute; khởi h&agrave;nh v&agrave;o 1h trưa với gi&aacute; v&agrave; thơi gian như tr&ecirc;n.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<b style="font-family: Arial, Tahoma; font-size: 10pt;">Từ H&agrave; Ti&ecirc;n cũng c&oacute; t&agrave;u cao tốc đi Ph&uacute; Quốc:</b><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			T&agrave;u Superdong 1 từ H&agrave; Ti&ecirc;n đi Ph&uacute; quốc , khởi&nbsp; h&agrave;nh l&uacute;c 13h15 , thời gian đi l&agrave; 1 tiếng 10 ph&uacute;t, gi&aacute; v&eacute; người lớn 230.000đ , trẻ em tr&ecirc;n 06 tuổi l&agrave; 160.000đ, Ph&uacute; quốc đi H&agrave; Ti&ecirc;n , khởi h&agrave;nh l&uacute;c 8h00 , gi&aacute; v&eacute; như tr&ecirc;n<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Ph&agrave; Thạnh Thới : Khởi h&agrave;nh tại H&agrave; Ti&ecirc;n l&uacute;c 8h s&aacute;ng , thời gian đi l&agrave; 2h30 ph&uacute;t . Tuyến Ph&uacute; quốc về H&agrave; Ti&ecirc;n l&uacute;c 14h , thời gian đi như tr&ecirc;n<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			T&agrave;u cao tốc Hồng T&acirc;m : Khởi h&agrave;nh tại Bến t&agrave;u H&agrave; Ti&ecirc;n l&uacute;c 13h30 v&agrave; quay về tại cảng H&agrave;m Ninh (Ph&uacute; Quốc) l&uacute;c 08h30 , thời gian chạy l&agrave; 1h30 ph&uacute;t.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<b style="font-family: Arial, Tahoma; font-size: 10pt;">Kinh nghiệm</b>: C&aacute;c bạn c&oacute; thể kết hợp du lịch H&agrave; Ti&ecirc;n V&agrave; Ph&uacute; Quốc. Xem chi tiết b&agrave;i viết:<span class="Apple-converted-space">&nbsp;</span><b style="font-family: Arial, Tahoma; font-size: 10pt;"><a href="http://kinhnghiemdulich.edu.vn/kinh-nghiem-du-lich-trong-nuoc/kinh-nghiem-du-lich-ha-tien-434.html" style="font-family: Arial, Tahoma; font-size: 10pt; color: rgb(0, 0, 255); text-decoration: none; font-weight: normal; line-height: 17.3333320617676px;" target="_blank" title="Kinh nghiệm du lịch Hà Tiên ">Kinh nghiệm du lịch H&agrave; Ti&ecirc;n<span class="Apple-converted-space">&nbsp;</span></a></b><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			* V&agrave;o m&ugrave;a cao điểm c&aacute;c bạn n&ecirc;n đặt v&eacute; t&agrave;u trước. C&oacute; thể đặt trực tuyến qua website:<a href="http://vetauphuquoc.vn/" style="font-family: Arial, Tahoma; font-size: 10pt; color: rgb(0, 0, 255); text-decoration: none; font-weight: bold; line-height: 17.3333320617676px;">http://vetauphuquoc.vn</a><span class="Apple-converted-space">&nbsp;</span>hoặc Li&ecirc;n hệ c&aacute;c h&atilde;ng t&agrave;u:<span class="Apple-converted-space">&nbsp;</span><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<b style="font-family: Arial, Tahoma; font-size: 10pt;">T&agrave;u Savanna<span class="Apple-converted-space">&nbsp;</span></b><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Địa chỉ: Số 12 Đường Tự Do; Vĩnh Thanh; Rạch Gi&aacute; (gần bến t&agrave;u)<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Số điện thoại ph&ograve;ng v&eacute;: 0773.692.888<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Gi&aacute; v&eacute; người lớn : 270.000/lượt, trẻ em 6-12 tuổi 200.000/lượt<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Website: http://savannaexpress.com<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<b style="font-family: Arial, Tahoma; font-size: 10pt;">T&agrave;u Superdong</b><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Địa chỉ: Số 14 Đường Tự Do; Vĩnh Thanh; Rạch Gi&aacute; (gần bến t&agrave;u)<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Số điện thoại ph&ograve;ng v&eacute;: 077 877742 - 077 877 741<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Gi&aacute; v&eacute; người lớn : 270.000/lượt.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<b style="font-family: Arial, Tahoma; font-size: 10pt;">Ph&agrave; Thạnh Thới</b><br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Khu phố 1, P.T&ocirc; Ch&acirc;u, TX. H&agrave; Ti&ecirc;n, Tỉnh Ki&ecirc;n Giang<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Tel: 0773.957.239<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Fax: 0773.957.238<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Hotline 1: 0919-2222-53<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Hotline 2: 0913-128-957<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			phathanhthoi@yahoo.com</p>
		<h3 style="font-family: Arial,Tahoma; font-size: 12pt; font-weight: bold; color: rgb(3, 77, 126); line-height: 20.8px; margin: 0px; text-align: center;">
			Đi Ph&uacute; Quốc bằng m&aacute;y bay</h3>
		<p style="text-align: center;">
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Hiện tại c&oacute; hai h&atilde;ng bay khai th&aacute;c đường bay đến Ph&uacute; Quốc l&agrave; Vietnam Airlines v&agrave; VietjetAir . Đầu năm 2013 Ph&uacute; Quốc vừa kh&aacute;nh th&agrave;nh s&acirc;n bay quốc tế, n&ecirc;n c&oacute; nhiều đường bay trực tiếp đến Ph&uacute; Quốc với sự tham gia của h&atilde;ng VietjetAir với gi&aacute; v&ocirc; c&ugrave;ng rẻ với gi&aacute; khoảng 1,7 tr cho v&eacute; khứ hồi. C&aacute;c bạn&nbsp; n&ecirc;n đi của h&atilde;ng Vietjet v&igrave; gi&aacute; sẽ rẻ hơn, m&agrave; m&aacute;y m&aacute;y bay đời mới, to v&agrave; đẹp hơn Vietnam Airlines.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Ri&ecirc;ng c&aacute;c bạn ở H&agrave; Nội th&igrave; chỉ c&oacute; thể đi của Vietnam airlines th&ocirc;i v&igrave; VietJet chưa c&oacute; đường bay từ H&agrave; Nội đi Ph&uacute; Quốc. Một b&agrave;i to&aacute;n kinh tế l&agrave; bạn n&ecirc;n mua v&eacute; v&agrave;o TPHCM thăm th&uacute; cho đ&atilde; rối mua v&eacute; VietjetAir đi Ph&uacute; Quốc. gi&aacute; từ H&agrave; Nội đi Ph&uacute; Quốc khoảng 6tr khứ hồi.<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			<br style="font-family: Arial, Tahoma; font-size: 10pt;" />
			Khi mua ve c&aacute;c bạn nhớ mua lu&ocirc;n h&agrave;nh l&yacute; k&yacute; gởi, v&igrave; khi về sẽ cần phải mau qu&agrave; c&aacute;p nữa. Gi&aacute; khoảng 150.000/20kg. Trường hợp kh&ocirc;ng mua trước th&igrave; khi về sẽ tốn ph&aacute;i gấp đ&ocirc;i.</p>
	</div>
</div>
<p style="text-align: center;">
	&nbsp;</p>
', N'', N'~/Data/upload/images/news/tour.jpg', CAST(0x0000A3860113B3ED AS DateTime), 1, 1)
INSERT [dbo].[Mod_News] ([ID], [MenuID], [State], [Name], [Code], [Tags], [Summary], [Content], [Custom], [File], [Published], [Order], [Activity]) VALUES (5715, 1219, 0, N'Món ngon ở Lai Châu', CONVERT(TEXT, N'Mon-ngon-o-Lai-Chau'), N'', N'<p>
	Kh&aacute;c với những m&oacute;n ăn của chốn phố thị phồn hoa nhộn nhịp, Lai Ch&acirc;u kh&ocirc;ng chỉ c&oacute; cảnh đẹp với n&uacute;i non tr&ugrave;ng điệp, m&agrave; c&ograve;n c&oacute; những m&oacute;n ăn đặc trưng; hấp dẫn của v&ugrave;ng T&acirc;y Bắc. Ẩm thực Lai Ch&acirc;u kh&ocirc;ng đơn thuần l&agrave; ngon, m&agrave; c&ograve;n chứa đựng cả nền văn h&oacute;a của mỗi d&acirc;n tộc, chứa đựng t&igrave;nh đất v&agrave; t&igrave;nh người nơi đ&acirc;y.</p>
', N'<div class="lineheight" style="font-size: 10pt; line-height: 20px; padding-top: 10px; width: 600px; text-align: justify;">
	&nbsp;</div>
<div class="lineheight" style="font-family: Arial, Tahoma; font-size: 13px; line-height: 20px;">
	<div style="font-size: 10pt;">
		<p style="text-align: justify;">
			Kh&aacute;c với những m&oacute;n ăn của chốn phố thị phồn hoa nhộn nhịp, Lai Ch&acirc;u kh&ocirc;ng chỉ c&oacute; cảnh đẹp với n&uacute;i non tr&ugrave;ng điệp, m&agrave; c&ograve;n c&oacute; những m&oacute;n ăn đặc trưng; hấp dẫn của v&ugrave;ng T&acirc;y Bắc. Ẩm thực Lai Ch&acirc;u kh&ocirc;ng đơn thuần l&agrave; ngon, m&agrave; c&ograve;n chứa đựng cả nền văn h&oacute;a của mỗi d&acirc;n tộc, chứa đựng t&igrave;nh đất v&agrave; t&igrave;nh người nơi đ&acirc;y.</p>
		<p style="text-align: center;">
			<img alt="Món ngon ở Lai Châu" border="0" class="image13" src="http://kinhnghiemdulich.edu.vn/upload/tintuc/thit-lon-hun-khoi.jpg" style="font-size: 10pt; margin-bottom: 10px;" title="Món ngon ở Lai Châu" width="600" /></p>
		<p style="text-align: justify;">
			Đến Lai Ch&acirc;u, tận hưởng cảm gi&aacute;c b&igrave;nh y&ecirc;n khi được sống giữa c&aacute;c bản l&agrave;ng đơn sơ; giản dị, h&ograve;a trong kh&ocirc;ng gian tươi đẹp của miền sơn cước, ngắm những nụ cười đầy rạng ngời của những c&ocirc; thiếu nữ v&ugrave;ng cao, v&agrave; thưởng thức c&aacute;c m&oacute;n ăn d&acirc;n tộc với dư vị đậm đ&agrave; quyện với hương rừng c&ugrave;ng c&aacute;i l&agrave;nh lạnh của v&ugrave;ng cao,&hellip;Lai Ch&acirc;u quả l&agrave; nơi dừng ch&acirc;n l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch du lịch v&agrave; mong muốn được thưởng thức những m&oacute;n ăn đậm chất n&uacute;i.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			X&ocirc;i t&iacute;m</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			Được tạo n&ecirc;n bởi những b&agrave;n tay kh&eacute;o l&eacute;o của những người phụ nữ Th&aacute;i, D&aacute;y,&hellip; với b&iacute; quyết ri&ecirc;ng, từ những hạt nếp hương thơm dẻo, trải qua những c&ocirc;ng đoạn chế biến kĩ lưỡng, đ&atilde; cho ra đời m&oacute;n x&ocirc;i t&iacute;m thơm ngon, hấp dẫn mọi thực kh&aacute;ch gần xa.<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			X&ocirc;i t&iacute;m c&oacute; m&agrave;u t&iacute;m đặc trưng của c&acirc;y khẩu cắm, quyện với hương thơm v&agrave; dẻo ngọt của nếp thơm, khiến những ai đ&atilde; một lần nếm thử th&igrave; sẽ chẳng thể n&agrave;o qu&ecirc;n được hương vị ấy.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			Để c&oacute; được m&oacute;n x&ocirc;i t&iacute;m thơm ngon, người ta chọn loại nếp c&oacute; hương thơm v&agrave; ngọt, hạt đều v&agrave; kh&ocirc;ng lẫn th&oacute;c, sau đ&oacute; vo sạch, rồi ng&acirc;m trong nước l&atilde; từ 6 &ndash; giờ. Lấy l&aacute; v&agrave; c&agrave;nh của c&acirc;y khẩu cắm đem rửa sạch, đem luộc, dợi đến khi nước đ&atilde; chuyển sang m&agrave;u t&iacute;m v&agrave; s&aacute;nh l&agrave; được. Đợi nước l&agrave; nguội, th&igrave; cho v&agrave;o gạo nếp ng&acirc;m th&ecirc;m 2 -3 giờ nữa. Sau đ&oacute; đổ gạo nếp l&ecirc;n ch&otilde; được đục bằng th&acirc;n c&acirc;y sung, bắp đầu nấu. Đợi cho đến khi x&ocirc;i đ&atilde; ch&iacute;n, xới từng lớp x&ocirc;i thấy m&agrave;u t&iacute;m tươi, b&oacute;ng, hạt x&ocirc;i dẻo nhưng kh&ocirc;ng d&iacute;nh, c&oacute; m&ugrave;i thơm ng&agrave;o ngạt l&agrave; bạn đ&atilde; c&oacute; được m&oacute;n x&ocirc;i t&iacute;m thơm ngọt.&nbsp;<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			Giữa c&aacute;i se lạnh của m&ugrave;a đ&ocirc;ng, m&ugrave;i thơm ngạy của x&ocirc;i t&iacute;m chắc chắn khiến kh&oacute; ai c&oacute; thể k&igrave;m l&ograve;ng được.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			Thịt lợn hun kh&oacute;i</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			L&agrave; m&oacute;n ăn truyền thống của một số d&acirc;n tộc v&ugrave;ng cao n&oacute;i chung v&agrave; người Ph&uacute; Nả n&oacute;i ri&ecirc;ng, thịt lợn hun kh&oacute;i ch&iacute;nh l&agrave; m&oacute;n ăn độc đ&aacute;o, mang đạm chất n&uacute;i với hương vị kh&aacute; ấn tượng.<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			Kh&ocirc;ng phải bất cứ m&ugrave;a n&agrave;o bạn cũng c&oacute; thể l&agrave;m được m&oacute;n thịt lợn hun kh&oacute;i, m&agrave; chỉ c&oacute; m&ugrave;a đ&ocirc;ng bạn mới c&oacute; thể l&agrave;m được m&oacute;n n&agrave;y, v&igrave; thời tiết v&agrave; kh&iacute; hậu ở v&ugrave;ng n&uacute;i T&acirc;y Bắc rất kh&oacute; dự đo&aacute;n trước được, nếu l&agrave;m kh&ocirc;ng đ&uacute;ng m&ugrave;a th&igrave; m&oacute;n thịt lợn kh&oacute;i n&agrave;y sẽ kh&ocirc;ng ăn được.Để l&agrave;m được m&oacute;n thịt lợn hun kh&oacute;i n&agrave;y, thịt lợn sẽ được ướp giai vị trong thời gian kh&aacute; d&agrave;i; khoảng từ 5 &ndash; 7 ng&agrave;y, sau đ&oacute; mới được treo l&ecirc;n g&aacute;c bếp v&agrave; hun kh&oacute;i. Hun kh&oacute;i cho đến khi thịt đ&atilde; kh&ocirc;, mỡ đ&atilde; chảy hết l&agrave; được.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			Những miếng thịt lợn sau khi đ&atilde; được hun kh&oacute;i v&agrave; ch&iacute;n kĩ, người ta cắt ch&uacute;ng ra th&agrave;nh những miếng vừa ăn để thưởng thức. Vị vừa ăn c&ugrave;ng với hương thơm của c&aacute;c loại gia vị như: quả mắc kh&eacute;n, ớt, thảo quả,&hellip; v&agrave; cả hương thơm đặc biệt của kh&oacute;i với vị ngọt ngọt của thịt, chắn chắn sẽ khiến cảm bạn cảm thấy rất th&uacute; vị khi được nếm thử m&oacute;n ăn n&agrave;y.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			Lợn cắp n&aacute;ch</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			Lợn cắp n&aacute;ch hay c&ograve;n gọi l&agrave; lợn lửng, đ&acirc;y l&agrave; lo&agrave;i lợn chỉ c&oacute; ở v&ugrave;ng cao, v&agrave; nhiều nhất ở Lai Ch&acirc;u. Từ khi mới sinh, ch&uacute;ng đ&atilde; được thả v&agrave;o rừng để tự kiếm sống. Lo&agrave;i lợn n&agrave;y c&oacute; sức chịu đựng rất giỏi, ch&uacute;ng c&oacute; thể sống được bằng việc tự t&igrave;m thức ăn rừng để ăn. Lợn n&agrave;y khi mới sinh vẫn c&oacute; thể chạy nhảy v&agrave; tự kiếm ăn được, ch&uacute;ng chỉ thường theo bố mẹ v&agrave;i ng&agrave;y rồi sau đ&oacute; tự t&aacute;ch ra. V&agrave; đặc biệt lo&agrave;i lợn n&agrave;y kh&ocirc;ng bao giờ đi xa, ch&uacute;ng chỉ quẩn quanh ở một khoảng nhất định.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			Do phải tự kiếm ăn, kh&ocirc;ng được nu&ocirc;i dưỡng hay chăm s&oacute;c kĩ lưỡng, n&ecirc;n lợn cắp n&aacute;ch thuộc loại si&ecirc;u chậm lớn. Mỗi năm ch&uacute;ng chỉ tang tối đa 10kg, sau đ&oacute; dường như kh&ocirc;ng tăng nữa. Thức ăn ch&iacute;nh của lợn cắp n&aacute;ch l&agrave; l&aacute; c&acirc;y, rễ, củ của c&acirc;y rừng, v&igrave; vậy thịt của n&oacute; kh&ocirc;ng c&oacute; mở, miếng n&agrave;o c&oacute; mở cũng kh&ocirc;ng bị ngấy v&agrave; rất thơm ngon.<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			C&oacute; rất nhiều c&aacute;ch để lợn cắp n&aacute;ch th&agrave;nh đặc sản như: tiết canh, luộc, nướng, hun kh&oacute;i,&hellip;Nếu c&oacute; dịp đến Lai Ch&acirc;u, h&atilde;y thưởng thức m&oacute;n lơn cắp n&aacute;ch thơm ngon bạn nh&eacute;.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			C&aacute; b&oacute;ng v&ugrave;i tro</h2>
		<p style="text-align: justify;">
			&nbsp;<br style="font-size: 10pt;" />
			C&aacute; b&oacute;ng v&ugrave;i tro, m&oacute;n ăn hấp dẫn với hương thơm của sả, của gừng,.., một ch&uacute;t vị cay của ớt v&agrave; của ti&ecirc;u, hay của l&aacute; dong. Khi thưởng thức m&oacute;n, bạn sẽ cảm nhận được m&ugrave;i thơm đặc biệt của c&aacute;c loại gia vị n&uacute;i rừng được pha trộn rất ho&agrave;n hảo, c&aacute; ngậy nhưng lại kh&ocirc;ng b&eacute;o một ch&uacute;t n&agrave;o. C&aacute; b&oacute;ng v&ugrave;i tro được ăn k&egrave;m với cơm, x&ocirc;i hoặc d&ugrave;ng để nhắm rượu.&nbsp;</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			Măng nộm hoa ban</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			Nếu bạn đ&atilde; c&oacute; dịp một lần đến Lai Ch&acirc;u, gh&eacute; bản người Th&aacute;i, th&igrave; ắt hản bạn sẽ kh&ocirc;ng qu&ecirc;n được khoảnh khắc b&ugrave;i ng&ugrave;i khi được nghe kể về truyền thuyết đầy cảm động Hoa Ban &ndash; Măng Đắng, hay khi được thưởng thức m&oacute;n ăn cực ngon chứa đủ hương vị.<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			C&aacute;i t&ecirc;n dường như đ&atilde; n&oacute;i l&ecirc;n tất cả, nhưng để c&oacute; được m&oacute;n Măng nộm hoa ban hấp dẫn như củ người Th&aacute;i ở Lai Ch&acirc;u th&igrave; kh&ocirc;ng đơn giản ch&uacute;t n&agrave;o. Bởi ngo&agrave;i sự kh&eacute;o l&eacute;o của ngừi chế biến, th&igrave; kh&acirc;u chọn nguy&ecirc;n liệu của hết sức quan trọng.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			Gấp từng miếng nộm để thưởng thức, cảm nhận vị đậm đ&agrave; v&agrave; thơm của c&aacute; nướng, một ch&uacute;t đắng của măng tươi hay một ch&uacute;t ngầy ngậy của hoa ban,&hellip; quả thật rất tuyệt vời.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			Nộm rau dớn</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			Nộm rau dớn hay c&ograve;n gọi l&agrave; &ldquo;pắt c&uacute;t&rdquo;, l&agrave; m&oacute;n ăn đặc trưng của đồng b&agrave;o T&acirc;y Bắc n&oacute;i chung v&agrave; người Th&aacute;i ở Lai Ch&acirc;u n&oacute;i ri&ecirc;ng.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			Để l&agrave;m nộm rau dớn, người ta h&aacute;i ngọn rau dớn ngon, l&agrave; b&aacute;nh tẻ, sau đ&oacute; rửa sạch, phơi nắng cho t&aacute;i. Rồi cho rau dớn v&agrave;o ch&otilde; gỗ để đổ, sau khoảng 20 ph&uacute;t để rau ch&iacute;n v&agrave; giữ được m&agrave;u xanh. Rau dớn nhất thiết phải được đổ chứ kh&ocirc;ng luộc, như vậy mới giữ được vị b&ugrave;i v&agrave; ngọt của m&oacute;n nộm n&agrave;y. Khi rau đ&atilde; ch&iacute;n, vớt ra, cho v&agrave;o c&aacute;c loại gia vị như: ớt, chanh, gừng,.., sau đ&oacute; trộn đều v&agrave; để khoảng 5 ph&uacute;t để rau được thấm gia vị, rồi cuối c&ugrave;ng cho lạc rang gi&atilde; nhỏ v&agrave;o. Vậy l&agrave; bạn đ&atilde; c&oacute; được m&oacute;n nộm rau dớn thơm ngon.<br style="font-size: 10pt;" />
			<br style="font-size: 10pt;" />
			M&oacute;n nộm rau dớn được xem l&agrave; ho&agrave;n hảo khi người d&ugrave;ng c&oacute; thể cảm nhận được vị b&igrave; của rau dớn, m&ugrave;i thơm đặc trưng của c&aacute;c loại rau, c&ugrave;ng với vị chua v&agrave; cay của c&aacute;c loại gia vị kh&aacute;c.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			R&ecirc;u đ&aacute;</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			Được xem l&agrave; m&oacute;n ăn kh&ocirc;ng thể thiếu trong m&acirc;m rượu trong buổi lễ hứa h&ocirc;n của c&aacute;c đ&ocirc;i trai g&aacute;i của đồng b&agrave;o Th&aacute;i ở Lai Ch&acirc;u, R&ecirc;u đ&aacute; được chế biến th&agrave;nh nhiều m&oacute;n ăn kh&aacute;c nhau như: canh r&ecirc;u đ&aacute;; r&ecirc;u nướng; r&ecirc;u x&agrave;o l&aacute; tỏi&hellip;<br style="font-size: 10pt;" />
			&nbsp;<br style="font-size: 10pt;" />
			Để c&oacute; được m&oacute;n r&ecirc;u ngon đ&ograve;i hỏi người chế biến phải c&oacute; sự ki&ecirc;n nhẫn v&agrave; kĩ lưỡng. Trước ti&ecirc;n phải vớt r&ecirc;u l&ecirc;n, rửa thật kĩ trong nước sạch để loại bỏ hết chất bẩn ( hoặc bỏ r&ecirc;u l&ecirc;n tảng đ&aacute; hoặc l&ecirc;n thớt, d&ugrave;ng thanh gỗ để đạp, như vậy r&ecirc;u sẽ sạch như &yacute; muốn). R&ecirc;u đ&aacute; sau khi qua sơ chế sẽ c&oacute; m&agrave;u xanh đậm, mềm v&agrave; m&aacute;t. Rồi qua những c&ocirc;ng đoạn sơ chế, bạn sẽ c&oacute; được những m&oacute;n ăn l&agrave;m từ r&ecirc;u thơm ngon v&agrave; độc đ&aacute;o.</p>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: justify;">
			Ngo&agrave;i những m&oacute;n ăn kể tr&ecirc;n, đến Lai Ch&acirc;u bạn c&ograve;n c&oacute; cơ hội thưởng thức nhiều m&oacute;n ăn hấp dẫn kh&aacute;c như:</h2>
		<p style="text-align: justify;">
			<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Canh tiết l&aacute; đắng<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Ch&aacute;o ấu tẩu<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Thắng cố<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Cơm lam Lai Ch&acirc;u<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;B&aacute;nh M&atilde; biệt Bọt hay b&aacute;nh Kh&aacute;u si&nbsp;<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Gan lơn x&agrave;o gừng (T&ugrave;ng han x&aacute;o xung)<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Thịt lợn thăng th&aacute;i nhỏ x&agrave;o gừng (X&eacute;o x&aacute;o)<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Đậu hủ nhồi thịt lợn hoặc thịt g&agrave; băm nhỏ ( T&igrave; pẩu nhảng)<br style="font-size: 10pt;" />
			-&nbsp;&nbsp; &nbsp;Rượu ng&ocirc; S&ugrave;ng Ph&agrave;i,v.v..</p>
	</div>
</div>
<p>
	&nbsp;</p>
', N'', N'~/Data/upload/images/news/hinhanh.jpg', CAST(0x0000A3860114EA16 AS DateTime), 2, 1)
INSERT [dbo].[Mod_News] ([ID], [MenuID], [State], [Name], [Code], [Tags], [Summary], [Content], [Custom], [File], [Published], [Order], [Activity]) VALUES (5716, 1219, 0, N'Những trải nghiệm bạn nhất định phải thử khi đến Đà Nẵng', CONVERT(TEXT, N'Nhung-trai-nghiem-ban-nhat-dinh-phai-thu-khi-den-Da-Nang'), N'', N'<p>
	Đ&agrave; Nẵng l&agrave; th&agrave;nh phố lớn thứ ba của Việt Nam, v&agrave; c&oacute; &iacute;t nhất 5 điều tuyệt vời m&agrave; du kh&aacute;ch n&ecirc;n d&agrave;nh sự quan t&acirc;m khi đặt ch&acirc;n tới điểm du lịch th&uacute; vị n&agrave;y.</p>
', N'<div class="lineheight" style="font-size: 10pt; line-height: 20px; padding-top: 10px; width: 600px; text-align: center;">
	&nbsp;</div>
<div class="lineheight" style="font-family: Arial, Tahoma; font-size: 13px; line-height: 20px;">
	<div style="font-size: 10pt;">
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24; text-align: center;">
			<img alt="Những trải nghiệm bạn nhất định phải thử khi đến Đà Nẵng" border="0" class="image13" src="http://kinhnghiemdulich.edu.vn/upload/tintuc/nhung-trai-nghiem-can-thu-khi-toi-da-nang.jpg" style="font-family: Arial, Tahoma; font-size: 10pt; line-height: 20px; margin-bottom: 10px;" title="Những trải nghiệm bạn nhất định phải thử khi đến Đà Nẵng" width="600" /></h2>
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24;">
			Đi c&aacute;p treo B&agrave; N&agrave;</h2>
		&nbsp;<br style="font-size: 10pt;" />
		Nếu bạn sợ độ cao, bạn sẽ gần như được giải tho&aacute;t bản th&acirc;n ra khỏi nỗi sợ h&atilde;i đ&oacute; nhờ quang cảnh hung vĩ xung quanh khi nh&igrave;n từ ph&iacute;a b&ecirc;n trong khoang c&aacute;p treo. Cảnh quan tại đ&acirc;y quả thực đẹp như một bức tranh vẽ, v&agrave; hệ thống c&aacute;p treo n&agrave;y cũng ch&iacute;nh l&agrave; một trong những hệ thống c&aacute;p treo d&agrave;i nhất thế giới.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		C&aacute;p treo sẽ đưa bạn tới hai trạm chuyển kh&aacute;c nhau. Trạm chuyển đầu ti&ecirc;n, bạn c&oacute; thể tới thăm ng&ocirc;i ch&ugrave;a tr&ecirc;n n&uacute;i gần đ&oacute; v&agrave; ở trạm chuyển tiếp theo, một c&ocirc;ng vi&ecirc;n đang trong qu&aacute; tr&igrave;nh ho&agrave;n thiện.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		Tầm nh&igrave;n bao qu&aacute;t trải khắp th&agrave;nh phố Đ&agrave; Nẵng, đỉnh n&uacute;i B&agrave; N&agrave; v&agrave; rất nhiều th&aacute;c nước uốn lượn xung quanh, đ&oacute; l&agrave; tất cả những g&igrave; tuyệt vời nhất m&agrave; chuyến đi mang lại. Với gi&aacute; cho mỗi chuyến tham quan khoảng 35 USD (tương đương 700.000 đồng), chắc chắn B&agrave; N&agrave; sẽ l&agrave; một điểm du lịch kh&ocirc;ng thể bỏ qua khi đến Đ&agrave; Nẵng.<br style="font-size: 10pt;" />
		<br style="font-size: 10pt;" />
		<br style="font-size: 10pt;" />
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24;">
			Tới thăm ch&ugrave;a Ph&aacute;p L&acirc;m</h2>
		<br style="font-size: 10pt;" />
		Sau khi cải tạo, ng&ocirc;i ch&ugrave;a n&agrave;y đ&atilde; dần trở n&ecirc;n nổi tiếng với bức tượng phật bằng v&agrave;ng khổng lồ trong khu&ocirc;n vi&ecirc;n ng&ocirc;i ch&ugrave;a c&ugrave;ng ba bức tượng lớn kh&aacute;c được đặt ph&iacute;a ngo&agrave;i. Sự sắp xếp n&agrave;y đ&atilde; tạo cho nơi đ&acirc;y một cảnh quan lung linh đến ch&oacute;i l&ograve;a. V&agrave;o l&uacute;c s&aacute;ng sớm hay khi chiều t&agrave;, đ&acirc;y l&agrave; thời điểm l&yacute; tưởng nhất để tận hưởng kh&ocirc;ng gian tĩnh lặng của ng&ocirc;i ch&ugrave;a.<br style="font-size: 10pt;" />
		<br style="font-size: 10pt;" />
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24;">
			Thu&ecirc; xe m&aacute;y hoặc xe đạp dạo quanh th&agrave;nh phố</h2>
		&nbsp;<br style="font-size: 10pt;" />
		Đ&agrave; Nẵng với lợi thế về địa h&igrave;nh, được xem như một cảng biển để t&agrave;u thuyền thuận tiện cập bến. Th&agrave;nh phố nằm n&eacute;p m&igrave;nh giữa H&agrave; Nội v&agrave; TP HCM gi&uacute;p cho việc đi tới c&aacute;c tỉnh th&agrave;nh l&acirc;n cận từ Đ&agrave; Nẵng trở n&ecirc;n dễ d&agrave;ng hơn.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		Bạn c&oacute; thể tự l&aacute;i xe về hướng Bắc để tới Hội An v&agrave; qua đ&ecirc;m tại một thị trấn nhỏ với mức chi ph&iacute; hợp l&yacute;, sau đ&oacute; chạy xe về Huế - th&agrave;nh phố cố đ&ocirc; với những ng&ocirc;i nh&agrave; xinh xắn c&ugrave;ng lối kiến tr&uacute;c mang d&aacute;ng dấp lịch sử cổ k&iacute;nh. Cũng tr&ecirc;n h&agrave;nh tr&igrave;nh n&agrave;y, bạn c&oacute; thể tự t&igrave;m kiếm một v&agrave;i khung cảnh đặc trưng, mới lạ suốt dọc h&agrave;nh tr&igrave;nh bằng việc dừng ch&acirc;n tại v&agrave;i ng&ocirc;i l&agrave;ng nhỏ, nơi bạn c&oacute; thể lần đầu ti&ecirc;n được chạm tay v&agrave;o văn h&oacute;a nghệ thuật d&acirc;n gian thực sự của người Việt.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		<br style="font-size: 10pt;" />
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24;">
			Tham quan ch&ugrave;a Phổ Đ&agrave; (Đ&agrave; Nẵng)</h2>
		&nbsp;<br style="font-size: 10pt;" />
		Được s&aacute;ng lập v&agrave; x&acirc;y dựng bởi h&ograve;a thượng Th&iacute;ch T&ocirc;n Thắng v&agrave;o năm 1927 v&agrave; được kh&ocirc;i phục một v&agrave;i lần tới tận năm 1983, ng&ocirc;i ch&ugrave;a n&agrave;y l&agrave; điểm đến kh&ocirc;ng thể bỏ qua tại Đ&agrave; Nẵng.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		Kiến tr&uacute;c ng&ocirc;i ch&ugrave;a được xếp v&agrave;o h&agrave;ng tuyệt vời, v&agrave; n&oacute; c&ograve;n được t&ocirc;n th&ecirc;m bởi chiếc hồ lớn h&igrave;nh bầu dục ở ph&iacute;a trước, chưa kể bức tượng đ&aacute; trắng Quan &Acirc;m (nữ thần của th&aacute;nh thiện v&agrave; t&igrave;nh thương) cao hơn 3 m&eacute;t. B&ecirc;n cạnh đ&oacute; l&agrave; đ&agrave;i tưởng niệm v&ocirc; c&ugrave;ng ấn tượng, được dựng l&ecirc;n ở vị tr&iacute; quan trọng n&agrave;y trong &iacute;t nhất 30 năm, với mục đ&iacute;ch răn dạy c&aacute;c tăng ni phật tử v&agrave; cũng ch&iacute;nh l&agrave; nơi để nghi&ecirc;n cứu những gi&aacute; trị, kiến thức cốt l&otilde;i Phật gi&aacute;o.<br style="font-size: 10pt;" />
		<br style="font-size: 10pt;" />
		<h2 style="font-family: Segoe-UI, Proxima-Nova, Helvetica, Arial, sans-serif; font-size: 30px; font-weight: normal; margin-bottom: 5px; margin-top: 0px; line-height: 1.24;">
			&nbsp;Trải nghiệm n&uacute;i Ngũ H&agrave;nh Sơn</h2>
		&nbsp;<br style="font-size: 10pt;" />
		Để c&oacute; một chuyến tham quan thực sự đặc biệt, h&atilde;y d&agrave;nh ra trọn vẹn một ng&agrave;y để thưởng ngoạn v&agrave; kh&aacute;m ph&aacute; n&uacute;i Ngũ H&agrave;nh Sơn &ndash; ngọn n&uacute;i đ&aacute; v&ocirc;i được đặt t&ecirc;n theo năm nguy&ecirc;n tố của đất trời.<br style="font-size: 10pt;" />
		&nbsp;<br style="font-size: 10pt;" />
		Với một số lượng lớn c&aacute;c hang động v&agrave; đường hầm kết nối với nhau bởi tự nhi&ecirc;n, bạn kh&ocirc;ng thể kh&ocirc;ng th&iacute;ch th&uacute; v&agrave; t&ograve; m&ograve; trong việc kh&aacute;m ph&aacute; tất cả ng&otilde; ng&aacute;ch của ngọn n&uacute;i n&agrave;y. Ngo&agrave;i ra, việc nghỉ lại qua đ&ecirc;m tại những kh&aacute;ch sạn trong khu vực cũng sẽ đem lại cho bạn nhiều cảm nhận v&ocirc; c&ugrave;ng th&uacute; vị.</div>
</div>
<p>
	&nbsp;</p>
', N'', N'~/Data/upload/images/news/album.jpg', CAST(0x0000A386012AC570 AS DateTime), 3, 1)
SET IDENTITY_INSERT [dbo].[Mod_News] OFF
/****** Object:  Table [dbo].[Sys_Page]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sys_Page]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Sys_Page](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [int] NULL,
	[ModuleID] [int] NULL,
	[LangID] [int] NULL,
	[MenuID] [int] NULL,
	[ParentID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [varchar](100) NULL,
	[Custom] [ntext] NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_T_PAGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Page] ON
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (1, 0, 0, 1, 0, 0, N'Menu Top', CONVERT(TEXT, N'-'), N'', 1, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (15, 1, 0, 1, 0, 1, N'Trang chủ', CONVERT(TEXT, N'Trang-chu'), N'', 1, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (139, 9, 1, 1, 1219, 1, N'Kinh nghiệm du lịch', CONVERT(TEXT, N'Kinh-nghiem-du-lich'), N'MNews.PageSize=1', 2, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (140, 9, 13, 1, 1210, 1, N'Tour trong nước', CONVERT(TEXT, N'Tour-trong-nuoc'), N'', 3, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (141, 9, 13, 1, 1211, 1, N'Tour quốc tế', CONVERT(TEXT, N'Tour-quoc-te'), N'', 4, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (142, 9, 13, 1, 1212, 1, N'Tổ chức sự kiện', CONVERT(TEXT, N'To-chuc-su-kien'), N'MTour.PageSize=10', 5, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (143, 9, 1, 1, 1220, 1, N'Dịch vụ', CONVERT(TEXT, N'Dich-vu'), N'MNews.PageSize=10', 6, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (144, 9, 13, 1, 1213, 140, N'Tour Miền Bắc', CONVERT(TEXT, N'Tour-Mien-Bac'), N'', 1, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (145, 9, 13, 1, 1214, 140, N'Tour Miền Trung - Tây Nguyên', CONVERT(TEXT, N'Tour-Mien-Trung-Tay-Nguyen'), N'', 2, 1)
INSERT [dbo].[Sys_Page] ([ID], [TemplateID], [ModuleID], [LangID], [MenuID], [ParentID], [Name], [Code], [Custom], [Order], [Activity]) VALUES (146, 9, 13, 1, 1215, 140, N'Tour Miền Nam', CONVERT(TEXT, N'Tour-Mien-Nam'), N'', 3, 1)
SET IDENTITY_INSERT [dbo].[Sys_Page] OFF
/****** Object:  Table [dbo].[Mod_Adv]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Mod_Adv]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Mod_Adv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[AdvCode] [nvarchar](1000) NULL,
	[File] [nvarchar](100) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[AddInTag] [nvarchar](100) NULL,
	[URL] [nvarchar](100) NULL,
	[Target] [varchar](50) NULL,
	[Order] [int] NULL,
	[Activity] [bit] NULL,
 CONSTRAINT [PK_T_ADV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mod_Adv] ON
INSERT [dbo].[Mod_Adv] ([ID], [MenuID], [Name], [AdvCode], [File], [Width], [Height], [AddInTag], [URL], [Target], [Order], [Activity]) VALUES (258, 1221, N'Logo', N'', N'~/Data/upload/images/Adv/logo.png', 0, 0, N'', N'/', CONVERT(TEXT, N''), 1, 1)
SET IDENTITY_INSERT [dbo].[Mod_Adv] OFF
/****** Object:  Table [dbo].[Sys_Site]    Script Date: 08/13/2014 18:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sys_Site]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Sys_Site](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NULL,
	[LangID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Custom] [nvarchar](1000) NULL,
	[Default] [bit] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_T_APP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Site] ON
INSERT [dbo].[Sys_Site] ([ID], [PageID], [LangID], [Name], [Code], [Custom], [Default], [Order]) VALUES (1, 15, 1, N'VN', CONVERT(TEXT, N'vn'), N'', 1, 3)
INSERT [dbo].[Sys_Site] ([ID], [PageID], [LangID], [Name], [Code], [Custom], [Default], [Order]) VALUES (2, 97, 2, N'EN', CONVERT(TEXT, N'en'), N'', 0, 1)
SET IDENTITY_INSERT [dbo].[Sys_Site] OFF
/****** Object:  ForeignKey [FK_T_RESOURCE_T_LANG]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_RESOURCE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Web_Resource]  WITH NOCHECK ADD  CONSTRAINT [FK_T_RESOURCE_T_LANG] FOREIGN KEY([LangID])
REFERENCES [dbo].[Sys_Lang] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_RESOURCE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Web_Resource] NOCHECK CONSTRAINT [FK_T_RESOURCE_T_LANG]
GO
/****** Object:  ForeignKey [FK_T_MENU_T_LANG]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_MENU_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Web_Menu]  WITH NOCHECK ADD  CONSTRAINT [FK_T_MENU_T_LANG] FOREIGN KEY([LangID])
REFERENCES [dbo].[Sys_Lang] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_MENU_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Web_Menu] NOCHECK CONSTRAINT [FK_T_MENU_T_LANG]
GO
/****** Object:  ForeignKey [FK_T_TEMPLATE_T_LANG]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_TEMPLATE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Template]  WITH NOCHECK ADD  CONSTRAINT [FK_T_TEMPLATE_T_LANG] FOREIGN KEY([LangID])
REFERENCES [dbo].[Sys_Lang] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_TEMPLATE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Template] NOCHECK CONSTRAINT [FK_T_TEMPLATE_T_LANG]
GO
/****** Object:  ForeignKey [FK_T_USER_ROLE_T_ROLE]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ROLE_T_ROLE]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserRole]  WITH NOCHECK ADD  CONSTRAINT [FK_T_USER_ROLE_T_ROLE] FOREIGN KEY([RoleID])
REFERENCES [dbo].[CP_Role] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ROLE_T_ROLE]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserRole] NOCHECK CONSTRAINT [FK_T_USER_ROLE_T_ROLE]
GO
/****** Object:  ForeignKey [FK_T_USER_ROLE_T_USER]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ROLE_T_USER]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserRole]  WITH NOCHECK ADD  CONSTRAINT [FK_T_USER_ROLE_T_USER] FOREIGN KEY([UserID])
REFERENCES [dbo].[CP_User] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ROLE_T_USER]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserRole] NOCHECK CONSTRAINT [FK_T_USER_ROLE_T_USER]
GO
/****** Object:  ForeignKey [FK_Sys.CP.UserLog_Sys.CP.User]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Sys.CP.UserLog_Sys.CP.User]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserLog]  WITH NOCHECK ADD  CONSTRAINT [FK_Sys.CP.UserLog_Sys.CP.User] FOREIGN KEY([UserID])
REFERENCES [dbo].[CP_User] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Sys.CP.UserLog_Sys.CP.User]') AND type = 'F')
ALTER TABLE [dbo].[CP_UserLog] NOCHECK CONSTRAINT [FK_Sys.CP.UserLog_Sys.CP.User]
GO
/****** Object:  ForeignKey [FK_Sys.CP.Access_Sys.CP.User]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Sys.CP.Access_Sys.CP.User]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access]  WITH NOCHECK ADD  CONSTRAINT [FK_Sys.CP.Access_Sys.CP.User] FOREIGN KEY([UserID])
REFERENCES [dbo].[CP_User] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Sys.CP.Access_Sys.CP.User]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access] NOCHECK CONSTRAINT [FK_Sys.CP.Access_Sys.CP.User]
GO
/****** Object:  ForeignKey [FK_T_USER_ACCESS_T_ROLE]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ACCESS_T_ROLE]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access]  WITH NOCHECK ADD  CONSTRAINT [FK_T_USER_ACCESS_T_ROLE] FOREIGN KEY([RoleID])
REFERENCES [dbo].[CP_Role] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ACCESS_T_ROLE]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access] NOCHECK CONSTRAINT [FK_T_USER_ACCESS_T_ROLE]
GO
/****** Object:  ForeignKey [FK_T_USER_ACCESS_T_USER_MODULE]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ACCESS_T_USER_MODULE]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access]  WITH NOCHECK ADD  CONSTRAINT [FK_T_USER_ACCESS_T_USER_MODULE] FOREIGN KEY([RefID])
REFERENCES [dbo].[CP_Module] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_USER_ACCESS_T_USER_MODULE]') AND type = 'F')
ALTER TABLE [dbo].[CP_Access] NOCHECK CONSTRAINT [FK_T_USER_ACCESS_T_USER_MODULE]
GO
/****** Object:  ForeignKey [FK_T_NEWS_T_MENU]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_NEWS_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Mod_News]  WITH NOCHECK ADD  CONSTRAINT [FK_T_NEWS_T_MENU] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Web_Menu] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_NEWS_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Mod_News] NOCHECK CONSTRAINT [FK_T_NEWS_T_MENU]
GO
/****** Object:  ForeignKey [FK_T_PAGE_T_CONTROL]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_CONTROL]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page]  WITH NOCHECK ADD  CONSTRAINT [FK_T_PAGE_T_CONTROL] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Sys_Module] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_CONTROL]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page] NOCHECK CONSTRAINT [FK_T_PAGE_T_CONTROL]
GO
/****** Object:  ForeignKey [FK_T_PAGE_T_LANG]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page]  WITH NOCHECK ADD  CONSTRAINT [FK_T_PAGE_T_LANG] FOREIGN KEY([LangID])
REFERENCES [dbo].[Sys_Lang] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page] NOCHECK CONSTRAINT [FK_T_PAGE_T_LANG]
GO
/****** Object:  ForeignKey [FK_T_PAGE_T_MENU]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page]  WITH NOCHECK ADD  CONSTRAINT [FK_T_PAGE_T_MENU] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Web_Menu] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page] NOCHECK CONSTRAINT [FK_T_PAGE_T_MENU]
GO
/****** Object:  ForeignKey [FK_T_PAGE_T_TEMPLATE]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_TEMPLATE]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page]  WITH NOCHECK ADD  CONSTRAINT [FK_T_PAGE_T_TEMPLATE] FOREIGN KEY([TemplateID])
REFERENCES [dbo].[Sys_Template] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_PAGE_T_TEMPLATE]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Page] NOCHECK CONSTRAINT [FK_T_PAGE_T_TEMPLATE]
GO
/****** Object:  ForeignKey [FK_T_ADV_T_MENU]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_ADV_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Mod_Adv]  WITH NOCHECK ADD  CONSTRAINT [FK_T_ADV_T_MENU] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Web_Menu] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_ADV_T_MENU]') AND type = 'F')
ALTER TABLE [dbo].[Mod_Adv] NOCHECK CONSTRAINT [FK_T_ADV_T_MENU]
GO
/****** Object:  ForeignKey [FK_T_APP_T_PAGE]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_APP_T_PAGE]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Site]  WITH NOCHECK ADD  CONSTRAINT [FK_T_APP_T_PAGE] FOREIGN KEY([PageID])
REFERENCES [dbo].[Sys_Page] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_APP_T_PAGE]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Site] NOCHECK CONSTRAINT [FK_T_APP_T_PAGE]
GO
/****** Object:  ForeignKey [FK_T_SITE_T_LANG]    Script Date: 08/13/2014 18:18:27 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_SITE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Site]  WITH NOCHECK ADD  CONSTRAINT [FK_T_SITE_T_LANG] FOREIGN KEY([LangID])
REFERENCES [dbo].[Sys_Lang] ([ID])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_T_SITE_T_LANG]') AND type = 'F')
ALTER TABLE [dbo].[Sys_Site] NOCHECK CONSTRAINT [FK_T_SITE_T_LANG]
GO
