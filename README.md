# Ms-SQL-Roll-Use-Monthly-Partitions-Helper

```
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
```
