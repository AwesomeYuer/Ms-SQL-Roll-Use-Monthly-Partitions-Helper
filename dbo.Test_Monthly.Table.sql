USE [MonthlyPartitionsTest]
GO
/****** Object:  Table [dbo].[Test_Monthly]    Script Date: 10/29/2019 12:10:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Monthly](
	[DataDate] [date] NULL
) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [cidx_a_Dd]    Script Date: 10/29/2019 12:10:53 AM ******/
CREATE CLUSTERED INDEX [cidx_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
/****** Object:  Index [idx_a_Dd]    Script Date: 10/29/2019 12:10:53 AM ******/
CREATE NONCLUSTERED INDEX [idx_a_Dd] ON [dbo].[Test_Monthly]
(
	[DataDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [UPS_Test_Monthly]([DataDate])
GO
