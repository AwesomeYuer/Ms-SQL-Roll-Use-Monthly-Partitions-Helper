USE [MonthlyPartitionsTest]
GO
/****** Object:  StoredProcedure [dbo].[zsp_CreateSampleTable]    Script Date: 11/22/2019 2:10:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_CreateSampleTable]
as
begin
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_Monthly]') AND type in (N'U'))
BEGIN
	drop Table Test_Monthly
end

IF EXISTS (SELECT * FROM sys.partition_schemes WHERE name = N'UPS_Test_Monthly')
begin
	drop PARTITION
			SCHEME UPS_Test_Monthly
end

IF EXISTS (SELECT * FROM sys.partition_functions WHERE name = N'UPF_Test_Monthly')
begin
	drop PARTITION FUNCTION
					[UPF_Test_Monthly]
end

CREATE PARTITION FUNCTION [UPF_Test_Monthly](date)
AS RANGE right FOR VALUES --[x,y)
(
	  '2019-01-01'
	, '2019-02-01'
	, '2019-03-01'
	, '2019-04-01'
	, '2019-05-01'
	, '2019-06-01'
	, '2019-07-01'
	, '2019-08-01'
	, '2019-09-01'
	, '2019-10-01'
	, '2019-11-01'
	, '2019-12-01'

	, '2020-01-01'
	, '2020-02-01'
	, '2020-03-01'
	, '2020-04-01'
	, '2020-05-01'
	, '2020-06-01'
	, '2020-07-01'
	, '2020-08-01'
	, '2020-09-01'
	, '2020-10-01'
	, '2020-11-01'
	, '2020-12-01'

	, '2021-01-01'
	, '2021-02-01'
	, '2021-03-01'
	, '2021-04-01'
	, '2021-05-01'
	, '2021-06-01'
	, '2021-07-01'
	, '2021-08-01'
	, '2021-09-01'
	, '2021-10-01'
	, '2021-11-01'
	, '2021-12-01'
);


CREATE PARTITION SCHEME UPS_Test_Monthly
AS PARTITION [UPF_Test_Monthly]
TO
(
	  [FG_Test_Monthly_Y00M00]

	, [FG_Test_Monthly_Y01M01]
	, [FG_Test_Monthly_Y01M02]
	, [FG_Test_Monthly_Y01M03]
	, [FG_Test_Monthly_Y01M04]
	, [FG_Test_Monthly_Y01M05]
	, [FG_Test_Monthly_Y01M06]
	, [FG_Test_Monthly_Y01M07]
	, [FG_Test_Monthly_Y01M08]
	, [FG_Test_Monthly_Y01M09]
	, [FG_Test_Monthly_Y01M10]
	, [FG_Test_Monthly_Y01M11]
	, [FG_Test_Monthly_Y01M12]

	, [FG_Test_Monthly_Y02M01]
	, [FG_Test_Monthly_Y02M02]
	, [FG_Test_Monthly_Y02M03]
	, [FG_Test_Monthly_Y02M04]
	, [FG_Test_Monthly_Y02M05]
	, [FG_Test_Monthly_Y02M06]
	, [FG_Test_Monthly_Y02M07]
	, [FG_Test_Monthly_Y02M08]
	, [FG_Test_Monthly_Y02M09]
	, [FG_Test_Monthly_Y02M10]
	, [FG_Test_Monthly_Y02M11]
	, [FG_Test_Monthly_Y02M12]

	, [FG_Test_Monthly_Y03M01]
	, [FG_Test_Monthly_Y03M02]
	, [FG_Test_Monthly_Y03M03]
	, [FG_Test_Monthly_Y03M04]
	, [FG_Test_Monthly_Y03M05]
	, [FG_Test_Monthly_Y03M06]
	, [FG_Test_Monthly_Y03M07]
	, [FG_Test_Monthly_Y03M08]
	, [FG_Test_Monthly_Y03M09]
	, [FG_Test_Monthly_Y03M10]
	, [FG_Test_Monthly_Y03M11]
	, [FG_Test_Monthly_Y03M12]
	
)


create Table Test_Monthly
(
	DataDate date
	, Remark nvarchar(64) null
)
on ups_test_monthly(datadate)

CREATE CLUSTERED INDEX [c_a_Dd] ON [dbo].[Test_Monthly]
	(
		[DataDate] ASC
	)
WITH
	(
		  PAD_INDEX = OFF
		, STATISTICS_NORECOMPUTE = OFF
		, SORT_IN_TEMPDB = OFF
		, DROP_EXISTING = OFF
		, ONLINE = OFF
		, ALLOW_ROW_LOCKS = ON
		, ALLOW_PAGE_LOCKS = ON
	)
ON
	[UPS_Test_Monthly]([DataDate])

CREATE INDEX [nc_a_Dd] ON [dbo].[Test_Monthly]
	(
		[DataDate] ASC
	)
WITH
	(
		  PAD_INDEX = OFF
		, STATISTICS_NORECOMPUTE = OFF
		, SORT_IN_TEMPDB = OFF
		, DROP_EXISTING = OFF
		, ONLINE = OFF
		, ALLOW_ROW_LOCKS = ON
		, ALLOW_PAGE_LOCKS = ON
	)
ON
	[UPS_Test_Monthly]([DataDate])

end
GO
