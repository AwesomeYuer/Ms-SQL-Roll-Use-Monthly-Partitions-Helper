USE [master]
GO
/****** Object:  Database [MonthlyPartitionsTest]    Script Date: 10/26/2019 9:22:23 PM ******/
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
( NAME = N'FG_Test_Monthly_Y02M12_File_01', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\FG_Test_Monthly_Y02M12_File_01.mdf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MonthlyPartitionsTest_log', FILENAME = N'D:\MSSQL\Data\MonthlyPartitionsTest\MonthlyPartitionsTest_log.ldf' , SIZE = 16384KB , MAXSIZE = 2048GB , FILEGROWTH = 8192KB )
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
USE [MonthlyPartitionsTest]
GO
/****** Object:  PartitionFunction [UPF_Test_Monthly]    Script Date: 10/26/2019 9:22:23 PM ******/
CREATE PARTITION FUNCTION [UPF_Test_Monthly](date) AS RANGE RIGHT FOR VALUES (N'2025-11-01T00:00:00.000', N'2025-12-01T00:00:00.000', N'2026-01-01T00:00:00.000', N'2026-02-01T00:00:00.000', N'2026-03-01T00:00:00.000', N'2026-04-01T00:00:00.000', N'2026-05-01T00:00:00.000', N'2026-06-01T00:00:00.000', N'2026-07-01T00:00:00.000', N'2026-08-01T00:00:00.000', N'2026-09-01T00:00:00.000', N'2026-10-01T00:00:00.000', N'2026-11-01T00:00:00.000', N'2026-12-01T00:00:00.000', N'2027-01-01T00:00:00.000', N'2027-02-01T00:00:00.000', N'2027-03-01T00:00:00.000', N'2027-04-01T00:00:00.000', N'2027-05-01T00:00:00.000', N'2027-06-01T00:00:00.000', N'2027-07-01T00:00:00.000', N'2027-08-01T00:00:00.000', N'2027-09-01T00:00:00.000', N'2027-10-01T00:00:00.000')
GO
/****** Object:  PartitionScheme [UPS_Test_Monthly]    Script Date: 10/26/2019 9:22:23 PM ******/
CREATE PARTITION SCHEME [UPS_Test_Monthly] AS PARTITION [UPF_Test_Monthly] TO ([FG_Test_Monthly_Y00M00], [FG_Test_Monthly_Y02M11], [FG_Test_Monthly_Y02M12], [FG_Test_Monthly_Y01M01], [FG_Test_Monthly_Y01M02], [FG_Test_Monthly_Y01M03], [FG_Test_Monthly_Y01M04], [FG_Test_Monthly_Y01M05], [FG_Test_Monthly_Y01M06], [FG_Test_Monthly_Y01M07], [FG_Test_Monthly_Y01M08], [FG_Test_Monthly_Y01M09], [FG_Test_Monthly_Y01M10], [FG_Test_Monthly_Y01M11], [FG_Test_Monthly_Y01M12], [FG_Test_Monthly_Y02M01], [FG_Test_Monthly_Y02M02], [FG_Test_Monthly_Y02M03], [FG_Test_Monthly_Y02M04], [FG_Test_Monthly_Y02M05], [FG_Test_Monthly_Y02M06], [FG_Test_Monthly_Y02M07], [FG_Test_Monthly_Y02M08], [FG_Test_Monthly_Y02M09], [FG_Test_Monthly_Y02M10])
GO
/****** Object:  UserDefinedFunction [dbo].[SCF_GetMonthlyPartitionNo]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[SCF_GetMonthlyPartitionNo] 
(
	@TableName varchar(128)
	, @MonthDate date
)
/*

select dbo.SCF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
	

*/

RETURNS int
AS
BEGIN
	-- Declare the return variable here
	--declare @MonthFirstDate date
	--set @MonthFirstDate = dateadd(MONTH, DATEDIFF(MONTH,0,@MonthDate),0)
	--declare @NextMonthFirstDate date
	--set @NextMonthFirstDate = dateadd(MONTH, 1, @MonthFirstDate)

	declare @ int = -1
	;with T0
	as
	(
		select
			a.LeftValue
			, a.RightValue
			, @MonthDate		as MonthDate
			, a.destination_id
			, a.FileGroupName
		from
			iTVF_TablesPartitionsInfo(@TableName) a
	)
	, T
	as
	(
		select
			*
		from
			T0 a
		where
			(
				(
					a.LeftValue = a.RightValue
					and
					not exists
						(
							select
								1
							from
								T0 aa
							where
								aa.LeftValue < a.LeftValue
						
						)
				)
				or
				a.LeftValue <= @MonthDate
			)
			and
			(
				(
					a.LeftValue is not null
					and
					a.RightValue is null
					and
					not exists
						(
							select
								1
							from
								T0 aa
							where
								aa.LeftValue > a.LeftValue
						
						)
				)
				or
				a.RightValue > @MonthDate
			)
		)
	select
		@ = a.destination_id
	from
		T a

	return @




END
GO
/****** Object:  UserDefinedFunction [dbo].[iTVF_TablesPartitionsInfo]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[iTVF_TablesPartitionsInfo] 
(	
	-- Add the parameters for the function here
	@TableName varchar(128)
)
RETURNS TABLE 
AS
RETURN 
(
WITH TBINFO
AS
(
	SELECT
		SchemaName						= S.name
		, TableName						= TB.name
		, PartitionScheme				= PS.name
		, PartitionFunction				= PF.name
		, PartitionFunctionRangeType	=
											CASE
												WHEN
													boundary_value_on_right = 0
														THEN 'LEFT'
												ELSE
													'RIGHT'
											END
		, PartitionFunctionFanout		= PF.fanout
		, SchemaID						= S.schema_id
		, ObjectID						= TB.object_id
		, PartitionSchemeID				= PS.data_space_id
		, PartitionFunctionID			= PS.function_id
	FROM
		sys.schemas S
			INNER JOIN
				sys.tables TB
					ON
						S.schema_id = TB.schema_id
			INNER JOIN
				sys.indexes IDX
					on
						TB.object_id = IDX.object_id
						AND
						IDX.index_id < 2
			INNER JOIN
				sys.partition_schemes PS
					ON
						PS.data_space_id = IDX.data_space_id
			INNER JOIN
				sys.partition_functions PF
					ON
						PS.function_id = PF.function_id
)
, PF1
AS
(
	SELECT 
		PFP.function_id
		, PFR.boundary_id
		, PFR.value
		, Type					= CONVERT
									(
										sysname
										, 
											CASE
												T.name
													WHEN
														'numeric'
															THEN
																'decimal'
													WHEN
														'real'
															THEN
																'float'
													ELSE
														T.name
											END
											+
											CASE 
												WHEN
													T.name IN('decimal', 'numeric')
														THEN
															QUOTENAME
															(
																RTRIM(PFP.precision) 
																+
																CASE
																	WHEN
																		PFP.scale > 0
																			THEN
																				',' + RTRIM(PFP.scale)
																	ELSE
																		''
																END
																,
																'()'
															)
													WHEN
														T.name IN('float', 'real')
															THEN
																QUOTENAME(PFP.precision, '()')
													WHEN
														T.name LIKE 'n%char'
															THEN
																QUOTENAME(PFP.max_length / 2, '()')
													WHEN
														T.name LIKE '%char'
														OR
														T.name LIKE '%binary'
															THEN
																QUOTENAME(PFP.max_length, '()')
												ELSE
													''
											END
										)
	FROM
		sys.partition_parameters PFP
			LEFT JOIN
				sys.partition_range_values PFR
					ON
						PFR.function_id = PFP.function_id
						AND
						PFR.parameter_id = PFP.parameter_id
			INNER JOIN
				sys.types T
					ON
						PFP.system_type_id = T.system_type_id
)
, PF2
AS
(
	SELECT
		*
	FROM
		PF1
	UNION ALL
	SELECT
		function_id
		, boundary_id = boundary_id - 1
		, value
		, type
	FROM
		PF1
	WHERE
		boundary_id = 1
),
PF
AS
(
	SELECT 
		B.function_id
		, boundary_id = ISNULL(B.boundary_id + 1, 1)
		, b.value as LeftValue
		, a.value as RightValue
		
		, value =
			STUFF
				(

					
					CASE
						WHEN
							A.boundary_id = 1
								THEN ''
						ELSE
							' AND [partition_column_name] '
							+ PF.MoreThan
							+ ' '
							+ CONVERT(varchar(max), B.value)
					END
					+
					CASE
						WHEN
							A.boundary_id IS NULL
								THEN ''
						ELSE
							' AND [partition_column_name] '
							+ PF.LessThan
							+ ' '
							+ CONVERT(varchar(max), A.value)
					END
					, 1
					, 5
					, ''
				)
		, B.Type
	FROM
		PF1 A		
			RIGHT JOIN
				PF2 B
					ON
						A.function_id = B.function_id
						AND
							(
								A.boundary_id - 1 = B.boundary_id
								OR
								(
									A.boundary_id IS NULL
									AND
									B.boundary_id IS NULL
								)
							)
			INNER JOIN
				(
					SELECT
						function_id
						, LessThan =
										CASE 
											WHEN
												boundary_value_on_right = 0
													THEN
														'<='
											ELSE
												'<'
										END
						, MoreThan = 
										CASE
											WHEN
												boundary_value_on_right = 0
													THEN '>'
											ELSE
												'>='
										END
					FROM
						sys.partition_functions 
				) PF
			ON
				B.function_id = PF.function_id
)
, PS
AS
(
	SELECT 
		DDS.partition_scheme_id
		, DDS.destination_id
		, FileGroupName = FG.name
		, IsReadOnly = FG.is_read_only
	FROM
		sys.destination_data_spaces DDS
			INNER JOIN
				sys.filegroups FG
					ON
						DDS.data_space_id = FG.data_space_id
)
, PINFO
AS
(
	SELECT
		RowID = ROW_NUMBER() OVER(ORDER BY SchemaID, ObjectID, PS.destination_id)
		, TB.SchemaName
		, TB.TableName
		, TB.PartitionScheme
		, PS.destination_id
		, PS.FileGroupName
		, PS.IsReadOnly
		, TB.PartitionFunction
		, TB.PartitionFunctionRangeType
		, TB.PartitionFunctionFanout
		, PF.boundary_id
		, PF.Type
		, PF.value
		, pf.RightValue
		, pf.LeftValue
	FROM
		TBINFO TB
			INNER JOIN
				PS
					ON
						TB.PartitionSchemeID = PS.partition_scheme_id
			LEFT JOIN
				PF
					ON
						TB.PartitionFunctionID = PF.function_id
						AND
						PS.destination_id = PF.boundary_id
)
SELECT 
	----v1
	--@MergeDate		= cast(min(v2) as date) --as [Merge]
	--, @SplitDate	= cast(max(v2) as date) --as [Split]
	--, @Years		= (count(1) - 1)/12
	  TableName
	, PartitionFunction
	, PartitionScheme
	, FileGroupName
	, LeftValue
	, RightValue
	, Min(RightValue) over (partition by PartitionFunction) MinRightValue
	, Max(RightValue) over (partition by PartitionFunction) MaxRightValue
	, Min(LeftValue) over (partition by PartitionFunction) MinLeftValue
	, Max(LeftValue) over (partition by PartitionFunction) MaxLeftValue
	, boundary_id = ISNULL(CONVERT(varchar(20), boundary_id), '')
	, destination_id
	, RowID
	, SchemaName
	, IsReadOnly
	, PartitionFunctionRangeType
	, PartitionFunctionFanout
	, Type = ISNULL(Type, N'')
	, value =
			CASE
				PartitionFunctionFanout 
					WHEN
						1
							THEN
								'<ALL Data>'
					ELSE
						ISNULL(value, N'<NEXT USED>')
			END
FROM
	PINFO
where
	(
		@TableName is null
		or
		TableName = @TableName
	)
)
GO
/****** Object:  Table [dbo].[Test_Monthly]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Monthly](
	[DataDate] [date] NULL
) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  StoredProcedure [dbo].[zsp_CreateSampleTable]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_CreateSampleTable]
as
begin

drop Table Test_Monthly
drop PARTITION SCHEME UPS_Test_Monthly
drop PARTITION FUNCTION [UPF_Test_Monthly]

CREATE PARTITION FUNCTION [UPF_Test_Monthly] (date)
AS RANGE RIGHT FOR VALUES --[x,y)
(
	  '2019-01-01'
	, '2019-02-01'
	, '2019-03-01'
	, '2019-04-01'
	, '2019-05-01'
	, '2019-06-01'
	, '2019-07-01'
	, '2019-08-01'
	, '2019-09-01'
	, '2019-10-01'
	, '2019-11-01'
	, '2019-12-01'
	, '2020-01-01'
	, '2020-02-01'
	, '2020-03-01'
	, '2020-04-01'
	, '2020-05-01'
	, '2020-06-01'
	, '2020-07-01'
	, '2020-08-01'
	, '2020-09-01'
	, '2020-10-01'
	, '2020-11-01'
	, '2020-12-01'
);


CREATE PARTITION SCHEME UPS_Test_Monthly
AS PARTITION [UPF_Test_Monthly]
TO
(
	 [FG_Test_Monthly_Y00M00]
	,[FG_Test_Monthly_Y01M01]
	,[FG_Test_Monthly_Y01M02]
	,[FG_Test_Monthly_Y01M03]
	,[FG_Test_Monthly_Y01M04]
	,[FG_Test_Monthly_Y01M05]
	,[FG_Test_Monthly_Y01M06]
	,[FG_Test_Monthly_Y01M07]
	,[FG_Test_Monthly_Y01M08]
	,[FG_Test_Monthly_Y01M09]
	,[FG_Test_Monthly_Y01M10]
	,[FG_Test_Monthly_Y01M11]
	,[FG_Test_Monthly_Y01M12]
	,[FG_Test_Monthly_Y02M01]
	,[FG_Test_Monthly_Y02M02]
	,[FG_Test_Monthly_Y02M03]
	,[FG_Test_Monthly_Y02M04]
	,[FG_Test_Monthly_Y02M05]
	,[FG_Test_Monthly_Y02M06]
	,[FG_Test_Monthly_Y02M07]
	,[FG_Test_Monthly_Y02M08]
	,[FG_Test_Monthly_Y02M09]
	,[FG_Test_Monthly_Y02M10]
	,[FG_Test_Monthly_Y02M11]
	,[FG_Test_Monthly_Y02M12]
	
)


create Table Test_Monthly
(
	DataDate date

)
on ups_test_monthly(datadate)
end
GO
/****** Object:  StoredProcedure [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]
@TableNameWithout_Monthly nvarchar(128) = N'Test'
as
/*
--单元测试
--重建分区表
--exec zsp_CreateSampleTable
--滚动1次分区之前
exec [zsp_TablesPartitionsInfoQuery]
--滚动1次分区
exec [zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]
--滚动1次分区之后
exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
--exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SCF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
*/

begin

set xact_abort on
begin transaction
declare @MergeDate date
declare @SplitDate date
declare @Years int

declare @TableName nvarchar(128) = @TableNameWithout_Monthly + N'_Monthly'

;WITH T
AS
(
	select
		*
	from
		iTVF_TablesPartitionsInfo(@TableName) a
)
SELECT 
	--v1
	@MergeDate		= cast(min(a.LeftValue) as date) --as [Merge]
	, @SplitDate	= cast(max(a.LeftValue) as date) --as [Split]
	, @Years		= (count(1) - 1)/12
FROM
	T a
where
	a.TableName = @TableName
--ORDER BY RowID


select
	@MergeDate				as HeadMergeDate
	, @SplitDate			as TailSplitDate
	, DATEDIFF(MONTH,@MergeDate,@SplitDate)	as Months

--=====================================================================

declare @SqlTemplate nvarchar(max)
declare @Sql nvarchar(max)


--=====================================================================
set @SqlTemplate = N'
truncate table %s WITH (PARTITIONS (1));'
set @Sql = FORMATMESSAGE
				(
					@SqlTemplate
					, @TableName
				)

print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION FUNCTION upf_%s()  
merge RANGE (''%s'')
'
set @Sql = FORMATMESSAGE
				(
					@SqlTemplate
					, @TableName
					, cast(@MergeDate as nvarchar(10))
				)

print @sql
exec (@sql)

--=====================================================================

declare @SplitYearID int
set @SplitDate = DATEADD(month, 1, @SplitDate)
set @SplitYearID = 1 + Year(@SplitDate) % @Years
declare @SplitMonth int
set @SplitMonth = Month(@SplitDate) 

set @SqlTemplate = N'
ALTER PARTITION scheme ups_%s
next used FG_%s_%s
'

set @Sql = FORMATMESSAGE
			(
				@SqlTemplate
				, @TableName
				, @TableName
				,
					'Y' 
					+ right('0' + cast(@SplitYearID as varchar(2)),2)
					+ 'M'
					+ right('0' + cast(@SplitMonth as varchar(2)),2)
			)
print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION FUNCTION upf_%s()  
split RANGE (''%s'');'

set @Sql = FORMATMESSAGE
				(
					@SqlTemplate
					, @TableName
					, cast(@SplitDate as nvarchar(10))
				)
print @sql
exec (@sql)

--=====================================================================
commit transaction

--exec (@sql)



--ALTER PARTITION scheme ups_monthly ()  
--next used ;

--ALTER PARTITION FUNCTION upf_monthly ()  
--split RANGE (@);

--ALTER PARTITION FUNCTION upf_monthly ()  
--merge RANGE ('2019-02-01');

end

GO
/****** Object:  StoredProcedure [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]
as
begin

SELECT
	$partition.UPF_Test_Monthly(DataDate) AS [Partition Number]
	, min(DataDate) AS [Min DataDate]
	, max(DataDate) AS [Max DataDate]
	, count(*) AS [Rows In Partition]
FROM Test_Monthly with(nolock)
GROUP BY $partition.UPF_Test_Monthly(DataDate)
ORDER BY [Partition Number]

end
GO
/****** Object:  StoredProcedure [dbo].[zsp_TablesPartitionsInfoQuery]    Script Date: 10/26/2019 9:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_TablesPartitionsInfoQuery]

@TableName varchar(128) = null

as
begin


select
	*
from
	iTVF_TablesPartitionsInfo(@TableName) a
order by
	a.TableName
	, a.rowid

end
GO
USE [master]
GO
ALTER DATABASE [MonthlyPartitionsTest] SET  READ_WRITE 
GO
