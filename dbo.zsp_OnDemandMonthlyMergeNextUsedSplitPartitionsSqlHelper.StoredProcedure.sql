USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_OnDemandMonthlyMergeNextUsedSplitPartitionsSqlHelper]    Script Date: 11/18/2019 10:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_OnDemandMonthlyMergeNextUsedSplitPartitionsSqlHelper]
	@TableName nvarchar(128) = N'Test_Monthly'
	, @Date date --= null
	, @SplitsCountLimit int = 1
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
exec [zsp_OnDemandMonthlyMergeNextUsedSplitPartitionsSqlHelper] 'Test_Monthly', '2024-07-01'
--滚动1次分区之后
--exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SVF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
*/
begin

set xact_abort on

declare @rows int = -1
declare @ int = 0

while (@rows <= 0)
begin
	set @rows = 0
	begin transaction
		--select 1/0
		;with TPartitions
		as
		(
			select
				a.*
			from
				iTVF_TablesPartitionsStorageInfo
						(
							@TableName
						) a
		)
		select
			@rows += 1
		from
			TPartitions a
		where
			--a.LeftValue is not null
			--and
			a.RightValue is not null
			and
			a.LeftValue < a.RightValue
			and
			(
				(
					a.LeftValue <=  @Date
					and
					a.RightValue > @Date
				)
				or
				@Date <
				(
					select
						min(aa.BoundaryValue)
					from
						TPartitions aa
					where
						--aa.LeftValue is not null
						--and
						aa.RightValue is not null
						and
						aa.LeftValue < a.RightValue
				) 
			)
		if (@rows = 0)
		begin
			exec [zsp_MonthlyMergeNextUsedSplitPartitionsSqlHelper] @TableName
			--select 1/0
			set @ += 1
		end
		--select 1/0
	commit transaction
	--select @@error as error
	if (@ >= @SplitsCountLimit)
	begin
		break
	end
end
end

GO
