USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]
as
begin
/*
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
*/
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
	  a.PartitionNumber
	, a.FileGroupName
	, a.LeftValue						as [LeftInclusiveValue]
	, a.RightValue						as [RightExclusiveValue]
	, a.StorageRows
	, sum(a.StorageRows) over ()		as [Total StorageRows]
	, min(b.DataDate)					as [Min Data Value]
	, max(b.DataDate)					as [Max Data Value]
	, count(b.DataDate)					as [Rows In Partition]
	, sum(count(b.DataDate)) over ()	as [Total Rows In All Partitions]
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
