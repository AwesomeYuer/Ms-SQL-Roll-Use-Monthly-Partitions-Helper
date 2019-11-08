USE [master]
GO
/****** Object:  Database [MonthlyPartitionsTest]    Script Date: 11/8/2019 10:52:39 AM ******/
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
USE [MonthlyPartitionsTest]
GO
/****** Object:  PartitionFunction [UPF_Test_Monthly]    Script Date: 11/8/2019 10:52:39 AM ******/
CREATE PARTITION FUNCTION [UPF_Test_Monthly](date) AS RANGE RIGHT FOR VALUES (N'2020-01-01T00:00:00.000', N'2020-02-01T00:00:00.000', N'2020-03-01T00:00:00.000', N'2020-04-01T00:00:00.000', N'2020-05-01T00:00:00.000', N'2020-06-01T00:00:00.000', N'2020-07-01T00:00:00.000', N'2020-08-01T00:00:00.000', N'2020-09-01T00:00:00.000', N'2020-10-01T00:00:00.000', N'2020-11-01T00:00:00.000', N'2020-12-01T00:00:00.000', N'2021-01-01T00:00:00.000', N'2021-02-01T00:00:00.000', N'2021-03-01T00:00:00.000', N'2021-04-01T00:00:00.000', N'2021-05-01T00:00:00.000', N'2021-06-01T00:00:00.000', N'2021-07-01T00:00:00.000', N'2021-08-01T00:00:00.000', N'2021-09-01T00:00:00.000', N'2021-10-01T00:00:00.000', N'2021-11-01T00:00:00.000', N'2021-12-01T00:00:00.000')
GO
/****** Object:  PartitionScheme [UPS_Test_Monthly]    Script Date: 11/8/2019 10:52:39 AM ******/
CREATE PARTITION SCHEME [UPS_Test_Monthly] AS PARTITION [UPF_Test_Monthly] TO ([FG_Test_Monthly_Y00M00], [FG_Test_Monthly_Y02M01], [FG_Test_Monthly_Y02M02], [FG_Test_Monthly_Y02M03], [FG_Test_Monthly_Y02M04], [FG_Test_Monthly_Y02M05], [FG_Test_Monthly_Y02M06], [FG_Test_Monthly_Y02M07], [FG_Test_Monthly_Y02M08], [FG_Test_Monthly_Y02M09], [FG_Test_Monthly_Y02M10], [FG_Test_Monthly_Y02M11], [FG_Test_Monthly_Y02M12], [FG_Test_Monthly_Y01M01], [FG_Test_Monthly_Y01M02], [FG_Test_Monthly_Y01M03], [FG_Test_Monthly_Y01M04], [FG_Test_Monthly_Y01M05], [FG_Test_Monthly_Y01M06], [FG_Test_Monthly_Y01M07], [FG_Test_Monthly_Y01M08], [FG_Test_Monthly_Y01M09], [FG_Test_Monthly_Y01M10], [FG_Test_Monthly_Y01M11], [FG_Test_Monthly_Y01M12])
GO
/****** Object:  UserDefinedFunction [dbo].[SCF_GetMonthlyPartitionNo]    Script Date: 11/8/2019 10:52:39 AM ******/
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
	declare @ int = -1
	;with T0
	as
	(
		select
			a.LeftValue
			, a.RightValue
			, @MonthDate		as MonthDate
			, a.[PartitionNumber]
			, a.FileGroupName
		from
			iTVF_TablesPartitionsStorageInfo(@TableName) a
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
		@ = a.[PartitionNumber]
	from
		T a

	return @

END
GO
/****** Object:  UserDefinedFunction [dbo].[iTVF_TablesPartitionsInfo]    Script Date: 11/8/2019 10:52:39 AM ******/
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
		  SchemaName					= S.name
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
		--, partition_number				= p.partition_number
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
			--JOIN
			--	sys.partitions as p 
			--		on 
			--		IDX.object_id = p.object_id 
			--		and
			--		IDX.index_id = p.index_id
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
		--, tb.partition_number
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
	  a.TableName
	, a.PartitionFunction
	, a.PartitionScheme
	, a.FileGroupName
	, a.LeftValue
	, a.RightValue
	, Min(a.RightValue)	over (partition by a.PartitionFunction)	as MinRightValue
	, Max(a.RightValue)	over (partition by a.PartitionFunction)	as MaxRightValue
	, Min(a.LeftValue)	over (partition by a.PartitionFunction)	as MinLeftValue
	, Max(a.LeftValue)	over (partition by a.PartitionFunction)	as MaxLeftValue
	--, a.partition_number
	, ISNULL(CONVERT(varchar(20), a.boundary_id), '')			as boundary_id 
	, a.destination_id
	, a.RowID
	, a.SchemaName
	, a.IsReadOnly
	, a.PartitionFunctionRangeType
	, a.PartitionFunctionFanout
	, ISNULL(a.Type, N'')										as Type
	, 
		CASE
			PartitionFunctionFanout 
				WHEN
					1
						THEN
							'<ALL Data>'
				ELSE
					ISNULL(a.value, N'<NEXT USED>')
		END														as [value]
FROM
	PINFO a
where
	(
		@TableName is null
		or
		a.TableName = @TableName
	)
)
GO
/****** Object:  UserDefinedFunction [dbo].[iTVF_TablesPartitionsStorageInfo]    Script Date: 11/8/2019 10:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[iTVF_TablesPartitionsStorageInfo] 
(	
	-- Add the parameters for the function here
	@TableName varchar(128)
)
RETURNS TABLE 
/*
SP_help 'sys.partition_range_values'
select
	*
from
	[iTVF_TablesPartitionsStorageInfo](null) a
*/
AS
RETURN 
(
with T
as
(
	SELECT
		  sc.name											as [SchemeName]
		, so.name											as [TableName]
		, p.partition_number								as [PartitionNumber]
		, pf.name											as [PartitionFunction]
		, pf.boundary_value_on_right						as BoundaryValueOnRight
		, iif
			(
				pf.boundary_value_on_right = 1
				, '[x , y)'
				, '(x , y]'
			)												as [BoundaryType]
		, prv.value											as [BoundaryOrignalValue]
		, isnull
			(
				prv.value
				, 
					iif
					(
						pf.boundary_value_on_right = 1
						, min
							(
								cast(prv.value as Date)
							) over (partition by pf.name) 
						, max
							(
								cast(prv.value as Date)
							) over (partition by pf.name) 
					)
			)												as BoundaryValue
		, fg.name											as [FileGroupName]
		, si.index_id										as [IndexID]
		, si.type_desc										as [IndexStructure]
		, si.name											as [Index]
		, stat.row_count									as [StorageRows]
		, stat.in_row_reserved_page_count * 8./1024./1024.	as [InRowReservedInGB]
		, stat.lob_reserved_page_count * 8./1024./1024.		as [LobReservedInGB]
	FROM
		sys.partition_functions AS pf
			JOIN
				sys.partition_schemes as ps
					on
						ps.function_id = pf.function_id
			JOIN
				sys.indexes as si
					on
						si.data_space_id = ps.data_space_id
						and
						si.index_id < 2
			JOIN
				sys.objects as so
					on
						si.object_id = so.object_id
			JOIN
				sys.schemas as sc
					on
						so.schema_id = sc.schema_id
			JOIN
				sys.partitions as p
					on 
						si.object_id = p.object_id 
						and
						si.index_id = p.index_id
			LEFT JOIN
				sys.partition_range_values as prv
					on
						prv.function_id = pf.function_id
						and
						p.partition_number
						=
						iif
							(
								pf.boundary_value_on_right = 1
								, prv.boundary_id + 1
								, prv.boundary_id
							)
						/*
							For left-based functions, partition_number = boundary_id, 
							for right-based functions we need to add 1
						*/
			JOIN
				sys.dm_db_partition_stats as stat
					on
						stat.object_id = p.object_id
						and
						stat.index_id = p.index_id
						and
						stat.index_id = p.index_id
						and
						stat.partition_id = p.partition_id
						and
						stat.partition_number = p.partition_number
			JOIN
				sys.allocation_units as au
						on
							au.container_id = p.hobt_id
							and
							au.type_desc ='IN_ROW_DATA' 
							/* Avoiding double rows for columnstore indexes. */
							/* We can pick up LOB page count from partition_stats */
			JOIN
				sys.filegroups as fg
					on
						fg.data_space_id = au.data_space_id
	where
		(
			@TableName is null
			or
			so.[name] = @TableName
		)
	)
	select
		--a.*
		--, 
		  a.TableName
		, a.PartitionFunction
	
		, a.PartitionNumber
		, a.FileGroupName
		, a.BoundaryType
		, a.BoundaryValue
		, cast(a.BoundaryValue as date)			as LeftValue
		, cast
			(
				lead(a.BoundaryValue) 
					over
						(
							partition by a.[PartitionFunction]
							order by a.BoundaryValue
						)
				as date
			)									as RightValue
		, a.StorageRows	
	from
		T a
	--ORDER BY
	--	SchemeName
	--	, TableName
	--	, [IndexID]
	--	, [PartitionFunction]
	--	, [PartitionNumber]

)
GO
/****** Object:  Table [dbo].[Test_Monthly]    Script Date: 11/8/2019 10:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Monthly](
	[DataDate] [date] NULL
) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [c_a_Dd]    Script Date: 11/8/2019 10:52:39 AM ******/
CREATE CLUSTERED INDEX [c_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [nc_a_Dd]    Script Date: 11/8/2019 10:52:39 AM ******/
CREATE NONCLUSTERED INDEX [nc_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  StoredProcedure [dbo].[zsp_CreateSampleTable]    Script Date: 11/8/2019 10:52:39 AM ******/
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
AS RANGE right FOR VALUES --[x,y)
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

CREATE CLUSTERED INDEX [c_a_Dd] ON [dbo].[Test_Monthly]
	(
		[DataDate] ASC
	)
WITH
	(
		  PAD_INDEX = OFF
		, STATISTICS_NORECOMPUTE = OFF
		, SORT_IN_TEMPDB = OFF
		, DROP_EXISTING = OFF
		, ONLINE = OFF
		, ALLOW_ROW_LOCKS = ON
		, ALLOW_PAGE_LOCKS = ON
	)
ON
	[UPS_Test_Monthly]([DataDate])

CREATE INDEX [nc_a_Dd] ON [dbo].[Test_Monthly]
	(
		[DataDate] ASC
	)
WITH
	(
		  PAD_INDEX = OFF
		, STATISTICS_NORECOMPUTE = OFF
		, SORT_IN_TEMPDB = OFF
		, DROP_EXISTING = OFF
		, ONLINE = OFF
		, ALLOW_ROW_LOCKS = ON
		, ALLOW_PAGE_LOCKS = ON
	)
ON
	[UPS_Test_Monthly]([DataDate])






end
GO
/****** Object:  StoredProcedure [dbo].[zsp_GenerateSampleMonthlyData]    Script Date: 11/8/2019 10:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_GenerateSampleMonthlyData]
@BaseDate date = null
, @Months int = 30
as
begin
if (@BaseDate is null)
begin
	set @BaseDate = GETDATE()
end

;with TSequence
as
(
	select
		0 as ID
	union all
	select
		ID + 1
	from
		TSequence
	where
		ID < @Months - 1
)
, T
as
(
	select
		a.ID
		, 
			DATEADD
				(
					MONTH
					,a.ID
					,DATEADD
						(
							MONTH
							, DATEDIFF(month, 0, @BaseDate)
							, 0
						)
				)	as MonthDate
		, b.ID as ID2

	from
		TSequence a
		,
		(
			select
				top (2)
					a.ID
			from
				TSequence a
			order by
				a.ID
		) b
)
insert into
	Test_Monthly
		(
			DataDate
		)
select
	cast
		(
			IIF
				(
					a.ID2 = 0
					, a.MonthDate
					, EOMONTH(a.MonthDate)
				)
				as date
		) as [MonthDate]
from
	T a
order by
	1







end
GO
/****** Object:  StoredProcedure [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 11/8/2019 10:52:39 AM ******/
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
--生成测试数据
--exec zsp_GenerateSampleMonthlyData '2052-6-2', 30
--滚动1次分区之前
--exec [zsp_TablesPartitionsInfoQuery]
--滚动1次分区
exec [zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]
--滚动1次分区之后
--exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SCF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
*/

begin

set xact_abort on
begin transaction
declare @MergeDate date
declare @SplitDate date

declare @Partition2FileGroupName nvarchar(64)

declare @TableName nvarchar(128) = @TableNameWithout_Monthly + N'_Monthly'

;WITH T
AS
(
	select
		*
	from
		iTVF_TablesPartitionsStorageInfo
				(
					@TableName
				) a
)
SELECT 
	  @MergeDate		= cast(min(a.BoundaryValue) as date) --as [Merge]
	, @SplitDate		= cast(max(a.BoundaryValue) as date) --as [Split]
FROM
	T a
where
	a.TableName = @TableName

;WITH T
AS
(
	select
		*
	from
		iTVF_TablesPartitionsStorageInfo
				(
					@TableName
				) a
)
SELECT 
	@Partition2FileGroupName = a.FileGroupName	
FROM
	T a
where
	a.TableName = @TableName
	and
	a.PartitionNumber = 2

select
	  @MergeDate					as MergeDateOnHead
	, @SplitDate					as SplitDateOnTail
	, DATEDIFF
		(
			MONTH
			, @MergeDate
			, @SplitDate
		)							as Months
	, @Partition2FileGroupName		as Partition2FileGroupName

--=====================================================================

declare @SqlTemplate nvarchar(max)
declare @Sql nvarchar(max)

--=====================================================================

set @SqlTemplate = N'
TRUNCATE TABLE [%s] WITH (PARTITIONS (1 to 2))
'
set @Sql = FORMATMESSAGE
				(
					@SqlTemplate
					, @TableName
				)

print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION FUNCTION [upf_%s]()  
MERGE RANGE (''%s'')
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

set @SqlTemplate = N'
ALTER PARTITION SCHEME [ups_%s]
NEXT USED [%s]
'
set @Sql = FORMATMESSAGE
				(
					  @SqlTemplate
					, @TableName
					, @Partition2FileGroupName
				)
print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION FUNCTION [upf_%s]()  
SPLIT RANGE (''%s'')
'
set @SplitDate = DATEADD(month, 1, @SplitDate)
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
/****** Object:  StoredProcedure [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]    Script Date: 11/8/2019 10:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]
as
begin

SELECT
	  $partition.UPF_Test_Monthly(a.DataDate)	AS [Partition Number]
	, min(a.DataDate)							AS [Min DataDate]
	, max(a.DataDate)							AS [Max DataDate]
	, count(*)									AS [Rows In Partition]
	, sum(count(*)) over ()						AS [Total Rows In All Partitions]
FROM
	Test_Monthly a with(nolock)
GROUP BY
	$partition.UPF_Test_Monthly(a.DataDate)
ORDER BY
	[Partition Number]

;with TPartitions
as
(
	select
		*
	from
		iTVF_TablesPartitionsStorageInfo('Test_Monthly')
)
, TData
as
(
	select
		  $partition.UPF_Test_Monthly(a.DataDate) AS [PartitionNo]
		, a.*
	from
		Test_Monthly a
)
SELECT
	--$partition.
	  a.PartitionNumber
	, a.FileGroupName
	, a.LeftValue						as [LeftInclusiveValue]
	, a.RightValue						as [RightExclusiveValue]
	, a.StorageRows
	, sum(a.StorageRows) over ()		as [Total StorageRows]
	, min(b.DataDate)					AS [Min Data Value]
	, max(b.DataDate)					AS [Max Data Value]
	, count(b.DataDate)					AS [Rows In Partition]
	, sum(count(b.DataDate)) over ()	AS [Total Rows In All Partitions]
FROM
	TPartitions a
		left join
			TData b
				on
					a.PartitionNumber = b.[PartitionNo]
			
GROUP BY
	a.PartitionNumber 
	, b.[PartitionNo]
	, a.FileGroupName
	, a.LeftValue
	, a.RightValue
	, a.StorageRows
ORDER BY
	a.PartitionNumber 
	


end
GO
/****** Object:  StoredProcedure [dbo].[zsp_TablesPartitionsInfoQuery]    Script Date: 11/8/2019 10:52:39 AM ******/
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
/****** Object:  StoredProcedure [dbo].[zsp_TablesPartitionsStorage]    Script Date: 11/8/2019 10:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_TablesPartitionsStorage]
as
begin

SELECT
   a.*
FROM
	iTVF_TablesPartitionsStorageInfo(null) a
ORDER BY
	  a.SchemeName
	, a.TableName
	, a.[IndexID]
	, a.[PartitionFunction]
	, a.[PartitionNumber]

end
GO
USE [master]
GO
ALTER DATABASE [MonthlyPartitionsTest] SET  READ_WRITE 
GO
