USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 10/28/2019 12:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper]
@TableNameWithout_Monthly nvarchar(128) = N'Test'
as
/*
--单元测试
--重建分区表
--exec zsp_CreateSampleTable
--生成测试数据
--exec zsp_GenerateSampleMonthlyData '2012-6-2', 30
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
truncate table %s WITH (PARTITIONS (1 to 2));'
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

