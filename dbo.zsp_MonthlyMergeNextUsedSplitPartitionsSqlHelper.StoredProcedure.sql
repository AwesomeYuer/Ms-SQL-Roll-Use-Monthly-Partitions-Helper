USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 10/30/2019 3:47:14 PM ******/
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
TRUNCATE TABLE %s WITH (PARTITIONS (1 to 2));'
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
ALTER PARTITION SCHEME ups_%s
NEXT USED %s
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
ALTER PARTITION FUNCTION upf_%s()  
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
