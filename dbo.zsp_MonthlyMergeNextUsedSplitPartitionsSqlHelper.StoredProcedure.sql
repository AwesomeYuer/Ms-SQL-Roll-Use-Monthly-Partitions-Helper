USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 11/13/2019 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]
@TableName nvarchar(128) = N'Test_Monthly'
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
declare @PartitionFunctionName varchar(128)
declare @PartitionSchemeName varchar(128)


declare @Partition2FileGroupName nvarchar(64)

--declare @TableName nvarchar(128) = @TableNameWithout_Monthly + N'_Monthly'

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
	  @MergeDate				= cast(min(a.BoundaryValue) as date) --as [Merge]
	, @SplitDate				= cast(max(a.BoundaryValue) as date) --as [Split]
	, @PartitionFunctionName	= max(a.PartitionFunction)
	, @PartitionSchemeName		= max(a.PartitionScheme)
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
ALTER PARTITION FUNCTION [%s]()  
MERGE RANGE (''%s'')
'
set @Sql = FORMATMESSAGE
				(
					  @SqlTemplate
					, @PartitionFunctionName
					, cast(@MergeDate as nvarchar(10))
				)

print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION SCHEME [%s]
NEXT USED [%s]
'
set @Sql = FORMATMESSAGE
				(
					  @SqlTemplate
					, @PartitionSchemeName
					, @Partition2FileGroupName
				)
print @sql
exec (@sql)

--=====================================================================

set @SqlTemplate = N'
ALTER PARTITION FUNCTION [%s]()  
SPLIT RANGE (''%s'')
'
set @SplitDate = DATEADD(month, 1, @SplitDate)
set @Sql = FORMATMESSAGE
				(
					  @SqlTemplate
					, @PartitionFunctionName
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
