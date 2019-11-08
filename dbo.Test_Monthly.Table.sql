USE [MonthlyPartitionsTest]
GO
/****** Object:  Table [dbo].[Test_Monthly]    Script Date: 11/8/2019 10:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Monthly](
	[DataDate] [date] NULL
) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [c_a_Dd]    Script Date: 11/8/2019 10:52:09 AM ******/
CREATE CLUSTERED INDEX [c_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [nc_a_Dd]    Script Date: 11/8/2019 10:52:09 AM ******/
CREATE NONCLUSTERED INDEX [nc_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
