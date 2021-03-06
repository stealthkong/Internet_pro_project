USE [master]
GO
/****** Object:  Database [missCalculations]    Script Date: 5/2/2016 5:36:56 PM ******/
CREATE DATABASE [missCalculations]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'missCalculations', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\missCalculations.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'missCalculations_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\missCalculations_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [missCalculations] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [missCalculations].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [missCalculations] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [missCalculations] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [missCalculations] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [missCalculations] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [missCalculations] SET ARITHABORT OFF 
GO
ALTER DATABASE [missCalculations] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [missCalculations] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [missCalculations] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [missCalculations] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [missCalculations] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [missCalculations] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [missCalculations] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [missCalculations] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [missCalculations] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [missCalculations] SET  DISABLE_BROKER 
GO
ALTER DATABASE [missCalculations] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [missCalculations] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [missCalculations] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [missCalculations] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [missCalculations] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [missCalculations] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [missCalculations] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [missCalculations] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [missCalculations] SET  MULTI_USER 
GO
ALTER DATABASE [missCalculations] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [missCalculations] SET DB_CHAINING OFF 
GO
ALTER DATABASE [missCalculations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [missCalculations] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [missCalculations] SET DELAYED_DURABILITY = DISABLED 
GO
USE [missCalculations]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/2/2016 5:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [int] IDENTITY(1,1) NOT NULL,
	[Admin_UName] [nvarchar](50) NOT NULL,
	[Admin_Password] [nvarchar](50) NOT NULL,
	[Admin_FName] [nvarchar](50) NOT NULL,
	[Admin_LName] [nvarchar](50) NOT NULL,
	[Admin_Email] [nvarchar](50) NOT NULL,
	[Admin_Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Merchandise]    Script Date: 5/2/2016 5:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merchandise](
	[Merch_ID] [int] IDENTITY(1,1) NOT NULL,
	[Merch_Name] [nvarchar](50) NOT NULL,
	[Merch_Price] [float] NOT NULL,
	[Merch_Description] [nvarchar](50) NULL,
	[Merch_Image] [image] NULL,
 CONSTRAINT [PK_Merchandise] PRIMARY KEY CLUSTERED 
(
	[Merch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 5/2/2016 5:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ticket_Name] [nvarchar](50) NOT NULL,
	[Ticket_Description] [nvarchar](50) NULL,
	[Ticket_Date] [date] NOT NULL,
	[Ticket_Genre] [nvarchar](50) NOT NULL,
	[Ticket_Price] [float] NOT NULL,
	[Ticket_Image] [image] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/2/2016 5:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Uname] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](50) NOT NULL,
	[User_FName] [nvarchar](50) NOT NULL,
	[User_LName] [nvarchar](50) NOT NULL,
	[User_Street] [nvarchar](50) NULL,
	[User_City] [nvarchar](50) NOT NULL,
	[User_Zip] [int] NOT NULL,
	[User_DOB] [date] NOT NULL,
	[User_Phone] [nvarchar](50) NOT NULL,
	[User_Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [missCalculations] SET  READ_WRITE 
GO
