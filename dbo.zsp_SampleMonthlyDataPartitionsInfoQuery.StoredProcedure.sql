USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]    Script Date: 10/28/2019 5:26:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_SampleMonthlyDataPartitionsInfoQuery]
as
begin

SELECT
	$partition.UPF_Test_Monthly(a.DataDate)		AS [Partition Number]
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

;with TPartition
as
(
	select
		*
	from
		iTVF_TablesPartitionsInfo('Test_Monthly')
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
	--$partition.
	  a.destination_id 
	, b.[PartitionNo]
	, a.FileGroupName
	, a.LeftValue						as [LeftInclusiveValue]
	, a.RightValue						as [RightExclusiveValue]
	, min(b.DataDate)					AS [MinValue]
	, max(b.DataDate)					AS [MaxValue]
	, count(b.DataDate)					AS [Rows In Partition]
	, sum(count(b.DataDate)) over ()	AS [Total Rows In All Partitions]
FROM
	TPartition a
		left join
			TData b
				on
					a.destination_id = b.[PartitionNo]
			
GROUP BY
	a.destination_id 
	, b.[PartitionNo]
	, a.FileGroupName
	, a.LeftValue
	, a.RightValue
ORDER BY
	a.destination_id 
	, b.[PartitionNo]



end
GO
