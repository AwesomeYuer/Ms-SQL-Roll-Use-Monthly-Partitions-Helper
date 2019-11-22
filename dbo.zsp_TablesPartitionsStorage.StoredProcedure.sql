USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_TablesPartitionsStorage]
as
begin

SELECT
   a.*
FROM
	iTVF_TablesPartitionsStorageInfo(null) a
ORDER BY
	 a.SchemeName
	, a.TableName
	--, a.[IndexID]
	, a.[PartitionFunction]
	, a.[PartitionNumber]

end
GO
