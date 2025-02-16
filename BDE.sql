USE [master]
GO
/****** Object:  Database [BDE]    Script Date: 9/6/2023 10:58:22 ******/
CREATE DATABASE [BDE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BDE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BDE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BDE] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDE] SET RECOVERY FULL 
GO
ALTER DATABASE [BDE] SET  MULTI_USER 
GO
ALTER DATABASE [BDE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDE', N'ON'
GO
ALTER DATABASE [BDE] SET QUERY_STORE = ON
GO
ALTER DATABASE [BDE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BDE]
GO
/****** Object:  User [nohelia]    Script Date: 9/6/2023 10:58:22 ******/
CREATE USER [nohelia] FOR LOGIN [nohelia] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Camp]    Script Date: 9/6/2023 10:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camp](
	[nombcamp] [varchar](50) NOT NULL,
	[edadcamp] [int] NOT NULL,
	[direcamp] [varchar](50) NOT NULL,
	[telcamp] [varchar](50) NOT NULL,
	[enfermcamp] [varchar](50) NOT NULL,
	[descricamp] [varchar](50) NOT NULL,
	[fechamp] [varchar](50) NOT NULL,
	[tipocamp] [varchar](50) NOT NULL,
	[controlcamp] [varchar](50) NOT NULL,
	[sectorcamp] [varchar](50) NOT NULL,
	[personalcamp] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[direcamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 9/6/2023 10:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Nombre] [varchar](50) NOT NULL,
	[Cargo] [varchar](50) NOT NULL,
	[Departamento] [varchar](50) NOT NULL,
	[Sexo] [nvarchar](10) NOT NULL,
	[Salario] [float] NOT NULL,
	[SalarioNeto] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 9/6/2023 10:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[nombreR] [varchar](50) NOT NULL,
	[edadR] [int] NOT NULL,
	[direccionR] [varchar](50) NOT NULL,
	[telefonoR] [varchar](50) NOT NULL,
	[enfermedadesR] [varchar](50) NOT NULL,
	[descripcionR] [varchar](50) NOT NULL,
	[fecha] [varchar](50) NOT NULL,
	[tipoVR] [varchar](50) NOT NULL,
	[controlVR] [varchar](50) NOT NULL,
	[fechaadmin] [varchar](50) NOT NULL,
	[proximaVR] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[direccionR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacunas]    Script Date: 9/6/2023 10:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacunas](
	[nombrev] [varchar](50) NOT NULL,
	[tipov] [varchar](50) NOT NULL,
	[dosis] [float] NOT NULL,
	[venci] [varchar](50) NOT NULL,
	[controlE] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[efectos] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Camp] ([nombcamp], [edadcamp], [direcamp], [telcamp], [enfermcamp], [descricamp], [fechamp], [tipocamp], [controlcamp], [sectorcamp], [personalcamp]) VALUES (N'Francisco', 19, N'Km13', N'22283912', N'Covid', N'Fiebre', N'2023-05-13', N'Covid', N'18+', N'Masaya', N'Nohelia')
INSERT [dbo].[Camp] ([nombcamp], [edadcamp], [direcamp], [telcamp], [enfermcamp], [descricamp], [fechamp], [tipocamp], [controlcamp], [sectorcamp], [personalcamp]) VALUES (N'Julian', 14, N'Parque Principal de Granada', N'22348475', N'Influenza', N'Vomito', N'2023-08-13', N'Influenza', N'12-18', N'Granada', N'Maria')
INSERT [dbo].[Camp] ([nombcamp], [edadcamp], [direcamp], [telcamp], [enfermcamp], [descricamp], [fechamp], [tipocamp], [controlcamp], [sectorcamp], [personalcamp]) VALUES (N'Maria', 19, N'Ticabus', N'2233141', N'Covid', N'Fiebre', N'2024', N'Covid', N'18+', N'Masaya', N'Joshua')
GO
INSERT [dbo].[Empleado] ([Nombre], [Cargo], [Departamento], [Sexo], [Salario], [SalarioNeto]) VALUES (N'Joshua', N'Supervisor', N'Enfermería', N'H', 12500, 9881.25)
INSERT [dbo].[Empleado] ([Nombre], [Cargo], [Departamento], [Sexo], [Salario], [SalarioNeto]) VALUES (N'Maria', N'Enfermera', N'Laboratorio', N'F', 13000, 10276.5)
INSERT [dbo].[Empleado] ([Nombre], [Cargo], [Departamento], [Sexo], [Salario], [SalarioNeto]) VALUES (N'Nohelia', N'Doctora', N'Pediatría', N'F', 23000, 18181.5)
GO
INSERT [dbo].[Registro] ([nombreR], [edadR], [direccionR], [telefonoR], [enfermedadesR], [descripcionR], [fecha], [tipoVR], [controlVR], [fechaadmin], [proximaVR]) VALUES (N'Alessandro', 18, N'Batahola Sur', N'23451351', N'Covid', N'Vomito', N'2023 - 04 - 14', N'Covid', N'18+', N'2023 - 04 - 14', N'2024 - 04 - 14')
INSERT [dbo].[Registro] ([nombreR], [edadR], [direccionR], [telefonoR], [enfermedadesR], [descripcionR], [fecha], [tipoVR], [controlVR], [fechaadmin], [proximaVR]) VALUES (N'Juliana', 21, N'Bolonia', N'3413123', N'Asma', N'Vomito', N'13/05/2023', N'Covid', N'18+', N'13/05/2023', N'13/05/2024')
INSERT [dbo].[Registro] ([nombreR], [edadR], [direccionR], [telefonoR], [enfermedadesR], [descripcionR], [fecha], [tipoVR], [controlVR], [fechaadmin], [proximaVR]) VALUES (N'Gabriel', 20, N'Dimitrov', N'3948193', N'VPH', N'Vomito', N'2023-04-13', N'VPH', N'12-18', N'2023-04-13', N'2024-04-13')
INSERT [dbo].[Registro] ([nombreR], [edadR], [direccionR], [telefonoR], [enfermedadesR], [descripcionR], [fecha], [tipoVR], [controlVR], [fechaadmin], [proximaVR]) VALUES (N'Alexander', 14, N'Rubenia', N'3413123', N'Asma', N'Dolor de estómago', N'23/05/2023', N'Influenza', N'12-18', N'23/05/2023', N'23/05/2024')
INSERT [dbo].[Registro] ([nombreR], [edadR], [direccionR], [telefonoR], [enfermedadesR], [descripcionR], [fecha], [tipoVR], [controlVR], [fechaadmin], [proximaVR]) VALUES (N'Joel', 19, N'TicaBus', N'22281271', N'Fiebre', N'Dolor de cabeza', N'30/05/2023', N'Covid', N'18+', N'30/05/2023', N'30/05/2024')
GO
INSERT [dbo].[Vacunas] ([nombrev], [tipov], [dosis], [venci], [controlE], [descripcion], [efectos]) VALUES (N'Abdala', N'Covid', 3.3, N'2023', N'18+', N'Contra el covid', N'Fiebre')
INSERT [dbo].[Vacunas] ([nombrev], [tipov], [dosis], [venci], [controlE], [descripcion], [efectos]) VALUES (N'RGH0', N'Influenza', 4, N'2023', N'12-18', N'Contra la Influenza', N'Vomito')
INSERT [dbo].[Vacunas] ([nombrev], [tipov], [dosis], [venci], [controlE], [descripcion], [efectos]) VALUES (N'Gardasil', N'VPH', 2.1, N'2024-05-12', N'12-18', N'Contra el papiloma humaon', N'')
GO
USE [master]
GO
ALTER DATABASE [BDE] SET  READ_WRITE 
GO
