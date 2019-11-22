USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_TablesPartitionsStorage]    Script Date: 11/22/2019 2:10:45 PM ******/
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
