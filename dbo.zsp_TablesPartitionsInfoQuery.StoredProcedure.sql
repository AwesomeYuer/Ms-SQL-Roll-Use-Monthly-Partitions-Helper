USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_TablesPartitionsInfoQuery]    Script Date: 11/22/2019 2:10:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_TablesPartitionsInfoQuery]

@TableName varchar(128) = null

as
begin


select
	*
from
	iTVF_TablesPartitionsStorageInfo(@TableName) a
order by
	a.TableName
	, a.PartitionNumber

end
GO
