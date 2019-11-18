# Ms-SQL-Roll-Use-Monthly-Partitions-Helper

```TSQL

--单元测试
--重建分区表
--exec zsp_CreateSampleTable
--生成测试数据
--exec zsp_GenerateSampleMonthlyData '2052-6-2', 30
--滚动1次分区之前
--exec [zsp_TablesPartitionsInfoQuery]
--滚动1次分区
exec [zsp_OnDemandMonthlyTruncateMergeNextUsedSplitPartitions] 'Test_Monthly', '2024-07-01'
--滚动1次分区之后
--exec [zsp_TablesPartitionsInfoQuery]
--查询Sample表分区中数据
exec zsp_SampleMonthlyDataPartitionsInfoQuery
--获取日期所在分区编号
--select dbo.SVF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')


```
