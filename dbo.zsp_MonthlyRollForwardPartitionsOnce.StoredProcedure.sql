USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_MonthlyRollForwardPartitionsOnce]
	@TableName nvarchar(128) = N'Test_Monthly'
	, @WithTransaction bit = 0
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
exec [zsp_MonthlyRollForwardPartitionsOnce] 
--滚动1次分区之后
--exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SVF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
--获取日期所在按月独占分区编号 (-1: 该日期无该月独占分区, 0: 该日期已滚动过期, N: 该日期的独占按月分区编号)
--select dbo.SVF_GetMonthlyExclusivePartitionNo('Test_Monthly', '2026-01-01')
*/
begin

if (@WithTransaction = 1)
begin
	set xact_abort on
	begin transaction
end

declare @MergeDate date
declare @SplitDate date
declare @PartitionFunctionName varchar(128)
declare @PartitionSchemeName varchar(128)
declare @PartitionNo2FileGroupName nvarchar(64)

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
	@PartitionNo2FileGroupName = a.FileGroupName	
FROM
	T a
where
	a.TableName = @TableName
	and
	a.PartitionNumber = 2

select
	  @MergeDate						as MergeDateOnHead
	, @SplitDate						as SplitDateOnTail
	, DATEDIFF
		(
			MONTH
			, @MergeDate
			, @SplitDate
		)								as Months
	, @PartitionNo2FileGroupName		as Partition2FileGroupName

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
					, @PartitionNo2FileGroupName
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
if (@WithTransaction = 1)
begin
	commit transaction
end

--exec (@sql)

--ALTER PARTITION scheme ups_monthly ()  
--next used ;

--ALTER PARTITION FUNCTION upf_monthly ()  
--split RANGE (@);

--ALTER PARTITION FUNCTION upf_monthly ()  
--merge RANGE ('2019-02-01');

end

GO
