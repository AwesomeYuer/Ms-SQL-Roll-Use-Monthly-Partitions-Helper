USE [MonthlyPartitionsTest]
GO
/****** Object:  Table [dbo].[Test_Monthly]    Script Date: 10/28/2019 5:26:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Monthly](
	[DataDate] [date] NULL
) ON [UPS_Test_Monthly]([DataDate])
GO
