USE [master]
GO
/****** Object:  Database [TiendaOnline]    Script Date: 10/17/2018 16:23:32 ******/
CREATE DATABASE [TiendaOnline] 
--ON  PRIMARY 
--( NAME = N'TiendaOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TiendaOnline.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--( NAME = N'TiendaOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TiendaOnline_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TiendaOnline] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TiendaOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TiendaOnline] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TiendaOnline] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TiendaOnline] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TiendaOnline] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TiendaOnline] SET ARITHABORT OFF
GO
ALTER DATABASE [TiendaOnline] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TiendaOnline] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TiendaOnline] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TiendaOnline] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TiendaOnline] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TiendaOnline] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TiendaOnline] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TiendaOnline] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TiendaOnline] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TiendaOnline] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TiendaOnline] SET  DISABLE_BROKER
GO
ALTER DATABASE [TiendaOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TiendaOnline] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TiendaOnline] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TiendaOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TiendaOnline] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TiendaOnline] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TiendaOnline] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TiendaOnline] SET  READ_WRITE
GO
ALTER DATABASE [TiendaOnline] SET RECOVERY FULL
GO
ALTER DATABASE [TiendaOnline] SET  MULTI_USER
GO
ALTER DATABASE [TiendaOnline] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TiendaOnline] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TiendaOnline', N'ON'
GO
USE [TiendaOnline]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/17/2018 16:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Puntos] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([idUsuario], [Nombre], [Apellido], [FechaNacimiento], [Usuario], [Password], [Puntos]) VALUES (0, N'Kevin', N'Marshall', NULL, N'sosicky', N'1234', 7)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 10/17/2018 16:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[idTipoProd] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[idTipoProd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON
INSERT [dbo].[TipoProducto] ([idTipoProd], [Descripcion]) VALUES (1, N'Ofimática')
INSERT [dbo].[TipoProducto] ([idTipoProd], [Descripcion]) VALUES (2, N'Antivirus')
INSERT [dbo].[TipoProducto] ([idTipoProd], [Descripcion]) VALUES (3, N'Games')
INSERT [dbo].[TipoProducto] ([idTipoProd], [Descripcion]) VALUES (4, N'Softwares')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
/****** Object:  Table [dbo].[Boleta]    Script Date: 10/17/2018 16:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleta](
	[idBoleta] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Total] [int] NULL,
	[PtosAcumulados] [int] NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Boleta] PRIMARY KEY CLUSTERED 
(
	[idBoleta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/17/2018 16:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [int] NULL,
	[PtosCompra] [int] NULL,
	[PtosCanje] [int] NULL,
	[idTipoProd] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([idProducto], [Nombre], [Precio], [PtosCompra], [PtosCanje], [idTipoProd]) VALUES (1, N'PowerPoint', 8990, 3, 10, 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[CarroCompras]    Script Date: 10/17/2018 16:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarroCompras](
	[idBoleta] [int] NULL,
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[idCarroCompra] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CarroCompras] PRIMARY KEY CLUSTERED 
(
	[idCarroCompra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Boleta_Usuario]    Script Date: 10/17/2018 16:23:36 ******/
ALTER TABLE [dbo].[Boleta]  WITH CHECK ADD  CONSTRAINT [FK_Boleta_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Boleta] CHECK CONSTRAINT [FK_Boleta_Usuario]
GO
/****** Object:  ForeignKey [FK_Producto_TipoProducto]    Script Date: 10/17/2018 16:23:36 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoProducto] FOREIGN KEY([idTipoProd])
REFERENCES [dbo].[TipoProducto] ([idTipoProd])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_TipoProducto]
GO
/****** Object:  ForeignKey [FK_CarroCompras_Boleta]    Script Date: 10/17/2018 16:23:36 ******/
ALTER TABLE [dbo].[CarroCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarroCompras_Boleta] FOREIGN KEY([idBoleta])
REFERENCES [dbo].[Boleta] ([idBoleta])
GO
ALTER TABLE [dbo].[CarroCompras] CHECK CONSTRAINT [FK_CarroCompras_Boleta]
GO
/****** Object:  ForeignKey [FK_CarroCompras_Producto]    Script Date: 10/17/2018 16:23:36 ******/
ALTER TABLE [dbo].[CarroCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarroCompras_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[CarroCompras] CHECK CONSTRAINT [FK_CarroCompras_Producto]
GO
