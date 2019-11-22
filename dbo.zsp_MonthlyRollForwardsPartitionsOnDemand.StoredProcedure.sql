USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_MonthlyRollForwardsPartitionsOnDemand]
	@TableName nvarchar(128) = N'Test_Monthly'
	, @Date date --= null
	, @RollForwardsLimit int = 1
as
/*
--单元测试
--重建分区表
--exec zsp_CreateSampleTable
--生成测试数据
--exec zsp_GenerateSampleMonthlyData '2030-10-2', 30
--滚动分区之前
--exec [zsp_TablesPartitionsInfoQuery]
--按需滚动分区并使目标日期参数所在月独占使用分区 [YYYY-02-01, YYYY-03-01)
exec [zsp_MonthlyRollForwardsPartitionsOnDemand] 'Test_Monthly', '2024-07-01'
--滚动分区之后
--exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SVF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
--获取日期所在按月独占分区编号 (-1: 该日期无该月独占分区, 0: 该日期已滚动过期, N: 该日期的独占按月分区编号)
--select dbo.SVF_GetMonthlyExclusivePartitionNo('Test_Monthly', '2026-01-01')
*/
begin
	set xact_abort on

	declare @MonthlyExclusivePartitionNo int = -1
	declare @ int = 0

	while (@MonthlyExclusivePartitionNo < 0)
	begin
		begin transaction
			select
				@MonthlyExclusivePartitionNo
					= dbo.[SVF_GetMonthlyExclusivePartitionNo]
							(
								@TableName
								, @Date
							)
			--select 1/0
			if (@MonthlyExclusivePartitionNo < 0)
			begin
				exec [zsp_MonthlyRollForwardPartitionsOnce]
						@TableName
				--select 1/0
				set @ += 1
			end
			--select 1/0
		commit transaction
		--select @@error as error
		if (@ >= @RollForwardsLimit)
		begin
			break
		end
	end
end

GO
