USE [master]
GO
/****** Object:  Database [MonthlyPartitionsTest]    Script Date: 11/22/2019 2:10:45 PM ******/
CREATE DATABASE [MonthlyPartitionsTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MonthlyPartitionsTest', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\MonthlyPartitionsTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 8192KB ), 
 FILEGROUP [FG_Test_Monthly_Y00M00] 
( NAME = N'FG_Test_Monthly_Y00M00_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y00M00_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M01] 
( NAME = N'FG_Test_Monthly_Y01M01_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M01_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M02] 
( NAME = N'FG_Test_Monthly_Y01M02_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M02_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M03] 
( NAME = N'FG_Test_Monthly_Y01M03_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M03_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M04] 
( NAME = N'FG_Test_Monthly_Y01M04_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M04_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M05] 
( NAME = N'FG_Test_Monthly_Y01M05_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M05_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M06] 
( NAME = N'FG_Test_Monthly_Y01M06_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M06_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M07] 
( NAME = N'FG_Test_Monthly_Y01M07_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M07_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M08] 
( NAME = N'FG_Test_Monthly_Y01M08_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M08_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M09] 
( NAME = N'FG_Test_Monthly_Y01M09_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M09_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M10] 
( NAME = N'FG_Test_Monthly_Y01M10_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M10_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M11] 
( NAME = N'FG_Test_Monthly_Y01M11_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M11_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y01M12] 
( NAME = N'FG_Test_Monthly_Y01M12_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y01M12_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M01] 
( NAME = N'FG_Test_Monthly_Y02M01_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M01_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M02] 
( NAME = N'FG_Test_Monthly_Y02M02_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M02_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M03] 
( NAME = N'FG_Test_Monthly_Y02M03_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M03_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M04] 
( NAME = N'FG_Test_Monthly_Y02M04_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M04_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M05] 
( NAME = N'FG_Test_Monthly_Y02M05_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M05_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M06] 
( NAME = N'FG_Test_Monthly_Y02M06_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M06_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M07] 
( NAME = N'FG_Test_Monthly_Y02M07_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M07_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M08] 
( NAME = N'FG_Test_Monthly_Y02M08_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M08_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M09] 
( NAME = N'FG_Test_Monthly_Y02M09_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M09_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M10] 
( NAME = N'FG_Test_Monthly_Y02M10_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M10_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M11] 
( NAME = N'FG_Test_Monthly_Y02M11_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M11_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y02M12] 
( NAME = N'FG_Test_Monthly_Y02M12_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M12_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M01] 
( NAME = N'FG_Test_Monthly_Y03M01_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M01_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M02] 
( NAME = N'FG_Test_Monthly_Y03M02_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M02_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M03] 
( NAME = N'FG_Test_Monthly_Y03M03_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M03_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M04] 
( NAME = N'FG_Test_Monthly_Y03M04_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M04_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M05] 
( NAME = N'FG_Test_Monthly_Y03M05_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M05_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M06] 
( NAME = N'FG_Test_Monthly_Y03M06_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M06_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M07] 
( NAME = N'FG_Test_Monthly_Y03M07_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M07_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M08] 
( NAME = N'FG_Test_Monthly_Y03M08_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M08_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M09] 
( NAME = N'FG_Test_Monthly_Y03M09_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M09_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M10] 
( NAME = N'FG_Test_Monthly_Y03M10_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M10_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M11] 
( NAME = N'FG_Test_Monthly_Y03M11_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M11_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [FG_Test_Monthly_Y03M12] 
( NAME = N'FG_Test_Monthly_Y03M12_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y03M12_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MonthlyPartitionsTest_log', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\MonthlyPartitionsTest_log.ldf' , SIZE = 40960KB , MAXSIZE = 2048GB , FILEGROWTH = 8192KB )
GO
ALTER DATABASE [MonthlyPartitionsTest] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MonthlyPartitionsTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET RECOVERY FULL 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET  MULTI_USER 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MonthlyPartitionsTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MonthlyPartitionsTest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MonthlyPartitionsTest', N'ON'
GO
ALTER DATABASE [MonthlyPartitionsTest] SET QUERY_STORE = OFF
GO
ALTER DATABASE [MonthlyPartitionsTest] SET  READ_WRITE 
GO
