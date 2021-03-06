USE [master]
GO
/****** Object:  Database [inventarioDB]    Script Date: 17/12/2020 7:22:08 ******/
CREATE DATABASE [inventarioDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'inventarioDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\inventarioDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'inventarioDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\inventarioDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [inventarioDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inventarioDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inventarioDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [inventarioDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [inventarioDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [inventarioDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [inventarioDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [inventarioDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [inventarioDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [inventarioDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [inventarioDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [inventarioDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [inventarioDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [inventarioDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [inventarioDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [inventarioDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [inventarioDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [inventarioDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [inventarioDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [inventarioDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [inventarioDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [inventarioDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [inventarioDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [inventarioDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [inventarioDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [inventarioDB] SET  MULTI_USER 
GO
ALTER DATABASE [inventarioDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [inventarioDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [inventarioDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [inventarioDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [inventarioDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [inventarioDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [inventarioDB] SET QUERY_STORE = OFF
GO
USE [inventarioDB]
GO
/****** Object:  Table [dbo].[elementoInventariable]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elementoInventariable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](30) NULL,
	[notas] [text] NULL,
	[idPersona] [int] NULL,
	[idUbicacion] [int] NULL,
	[idMarcaYModelo] [int] NULL,
 CONSTRAINT [PK__elemento__3213E83FFEDB65E1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcaymodelo]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcaymodelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomb] [varchar](100) NOT NULL,
 CONSTRAINT [PK__marcaymo__3213E83F5C3EB07D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monitor]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monitor](
	[id] [int] NOT NULL,
	[tamanoPantalla] [real] NULL,
	[ResolucionX] [int] NULL,
	[ResolucionY] [int] NULL,
	[idWorkstation] [int] NULL,
 CONSTRAINT [PK__monitor__3213E83F7556065E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenador]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenador](
	[id] [int] NOT NULL,
	[nomb] [varchar](50) NULL,
	[NumeroSerie] [varchar](50) NULL,
	[memoria] [int] NULL,
	[unidadMemoria] [tinyint] NULL,
	[DiscoDuro] [int] NULL,
	[unidadDiscoDuro] [tinyint] NULL,
	[idProcesador] [int] NULL,
	[velocidadProcesador] [real] NULL,
 CONSTRAINT [PK__ordenado__3213E83F58AB600B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomb] [varchar](60) NOT NULL,
 CONSTRAINT [PK__persona__3213E83F9FD87F46] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portatil]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portatil](
	[id] [int] NOT NULL,
	[tamanoPantalla] [real] NULL,
 CONSTRAINT [PK__portatil__3213E83F70CD753E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[procesador]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[procesador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomb] [varchar](30) NOT NULL,
 CONSTRAINT [PK__procesad__3213E83F76C9CA1D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ubicacion]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubicacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomb] [varchar](60) NOT NULL,
 CONSTRAINT [PK__ubicacio__3213E83F8C432CE0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unidad]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unidad](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[nomb] [varchar](20) NOT NULL,
 CONSTRAINT [PK__unidad__3213E83F50522BAA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workstation]    Script Date: 17/12/2020 7:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workstation](
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indexElementoInventariableCodigo]    Script Date: 17/12/2020 7:22:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [indexElementoInventariableCodigo] ON [dbo].[elementoInventariable]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indexOrdenadorNomb]    Script Date: 17/12/2020 7:22:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [indexOrdenadorNomb] ON [dbo].[ordenador]
(
	[nomb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indexOrdenadorNumeroSerie]    Script Date: 17/12/2020 7:22:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [indexOrdenadorNumeroSerie] ON [dbo].[ordenador]
(
	[NumeroSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[elementoInventariable]  WITH CHECK ADD  CONSTRAINT [FK__elementoI__idPer__2E1BDC42] FOREIGN KEY([idPersona])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[elementoInventariable] CHECK CONSTRAINT [FK__elementoI__idPer__2E1BDC42]
GO
ALTER TABLE [dbo].[elementoInventariable]  WITH CHECK ADD  CONSTRAINT [FK_elementoInventariable_marcaymodelo] FOREIGN KEY([idMarcaYModelo])
REFERENCES [dbo].[marcaymodelo] ([id])
GO
ALTER TABLE [dbo].[elementoInventariable] CHECK CONSTRAINT [FK_elementoInventariable_marcaymodelo]
GO
ALTER TABLE [dbo].[elementoInventariable]  WITH CHECK ADD  CONSTRAINT [FK_elementoInventariable_ubicacion] FOREIGN KEY([idUbicacion])
REFERENCES [dbo].[ubicacion] ([id])
GO
ALTER TABLE [dbo].[elementoInventariable] CHECK CONSTRAINT [FK_elementoInventariable_ubicacion]
GO
ALTER TABLE [dbo].[monitor]  WITH CHECK ADD  CONSTRAINT [FK_monitor_elementoInventariable] FOREIGN KEY([id])
REFERENCES [dbo].[elementoInventariable] ([id])
GO
ALTER TABLE [dbo].[monitor] CHECK CONSTRAINT [FK_monitor_elementoInventariable]
GO
ALTER TABLE [dbo].[monitor]  WITH CHECK ADD  CONSTRAINT [FK_monitor_workstation] FOREIGN KEY([idWorkstation])
REFERENCES [dbo].[workstation] ([id])
GO
ALTER TABLE [dbo].[monitor] CHECK CONSTRAINT [FK_monitor_workstation]
GO
ALTER TABLE [dbo].[ordenador]  WITH CHECK ADD  CONSTRAINT [FK_ordenador_DiscoDuro_unidad] FOREIGN KEY([unidadDiscoDuro])
REFERENCES [dbo].[unidad] ([id])
GO
ALTER TABLE [dbo].[ordenador] CHECK CONSTRAINT [FK_ordenador_DiscoDuro_unidad]
GO
ALTER TABLE [dbo].[ordenador]  WITH CHECK ADD  CONSTRAINT [FK_ordenador_elementoInventariable] FOREIGN KEY([id])
REFERENCES [dbo].[elementoInventariable] ([id])
GO
ALTER TABLE [dbo].[ordenador] CHECK CONSTRAINT [FK_ordenador_elementoInventariable]
GO
ALTER TABLE [dbo].[ordenador]  WITH CHECK ADD  CONSTRAINT [FK_ordenador_memoria_unidad] FOREIGN KEY([unidadMemoria])
REFERENCES [dbo].[unidad] ([id])
GO
ALTER TABLE [dbo].[ordenador] CHECK CONSTRAINT [FK_ordenador_memoria_unidad]
GO
ALTER TABLE [dbo].[ordenador]  WITH CHECK ADD  CONSTRAINT [FK_ordenador_procesador] FOREIGN KEY([idProcesador])
REFERENCES [dbo].[procesador] ([id])
GO
ALTER TABLE [dbo].[ordenador] CHECK CONSTRAINT [FK_ordenador_procesador]
GO
ALTER TABLE [dbo].[portatil]  WITH CHECK ADD  CONSTRAINT [FK_portatil_ordenador] FOREIGN KEY([id])
REFERENCES [dbo].[ordenador] ([id])
GO
ALTER TABLE [dbo].[portatil] CHECK CONSTRAINT [FK_portatil_ordenador]
GO
ALTER TABLE [dbo].[workstation]  WITH CHECK ADD  CONSTRAINT [FK_workstation_ordenador] FOREIGN KEY([id])
REFERENCES [dbo].[ordenador] ([id])
GO
ALTER TABLE [dbo].[workstation] CHECK CONSTRAINT [FK_workstation_ordenador]
GO
USE [master]
GO
ALTER DATABASE [inventarioDB] SET  READ_WRITE 
GO
