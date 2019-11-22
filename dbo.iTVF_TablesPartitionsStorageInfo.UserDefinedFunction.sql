USE [MonthlyPartitionsTest]
GO
/****** Object:  UserDefinedFunction [dbo].[iTVF_TablesPartitionsStorageInfo]    Script Date: 11/22/2019 2:10:45 PM ******/
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
with TPartitions
as
(
	SELECT
		  sc.name											as [SchemeName]
		, so.name											as [TableName]
		, p.partition_number								as [PartitionNumber]
		, pf.name											as [PartitionFunction]
		, ps.name											as [PartitionScheme]
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
, T 
as
(
	select
		a.*
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
	from
		TPartitions a
)
select
	a.SchemeName
	, a.TableName
	, a.PartitionFunction
	, a.PartitionScheme
	, a.PartitionNumber
	, a.FileGroupName
	, a.BoundaryType
	, a.BoundaryValue
	, a.LeftValue
	, a.RightValue
	--, min(a.LeftValue) over()				as MinLeftValue
	--, max(a.LeftValue) over()				as MaxLeftValue
	--, min(a.RightValue) over()			as MinRightValue
	--, max(a.RightValue) over()			as MaxRightValue
	, min(a.BoundaryValue) over()			as MinBoundaryValue
	, max(a.BoundaryValue) over()			as MaxBoundaryValue
	, count(a.BoundaryValue) over()			as CountBoundaryValue
	, a.StorageRows
	, sum(a.StorageRows) over()				as TotalStorageRows
	, a.IndexID
	, a.IndexStructure
	, a.InRowReservedInGB
	, a.LobReservedInGB
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
