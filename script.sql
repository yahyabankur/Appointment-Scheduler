USE [master]
GO
/****** Object:  Database [Appointment]    Script Date: 10/02/2023 15:48:41 ******/
CREATE DATABASE [Appointment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Register', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2022\MSSQL\DATA\Register.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Register_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2022\MSSQL\DATA\Register_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Appointment] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Appointment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Appointment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Appointment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Appointment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Appointment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Appointment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Appointment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Appointment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Appointment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Appointment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Appointment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Appointment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Appointment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Appointment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Appointment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Appointment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Appointment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Appointment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Appointment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Appointment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Appointment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Appointment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Appointment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Appointment] SET RECOVERY FULL 
GO
ALTER DATABASE [Appointment] SET  MULTI_USER 
GO
ALTER DATABASE [Appointment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Appointment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Appointment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Appointment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Appointment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Appointment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Appointment', N'ON'
GO
ALTER DATABASE [Appointment] SET QUERY_STORE = ON
GO
ALTER DATABASE [Appointment] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Appointment]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 10/02/2023 15:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail](
	[Email] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Plot] [varchar](50) NOT NULL,
	[Size] [varchar](50) NOT NULL,
	[Region] [varchar](50) NOT NULL,
	[Question] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Detail] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 10/02/2023 15:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Uname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Password] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spGetalldata]    Script Date: 10/02/2023 15:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[spGetalldata]
as
Begin
select * from Detail
End
GO
USE [master]
GO
ALTER DATABASE [Appointment] SET  READ_WRITE 
GO
