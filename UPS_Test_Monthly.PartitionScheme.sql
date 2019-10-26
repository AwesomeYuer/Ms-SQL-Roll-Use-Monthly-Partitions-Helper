USE [MonthlyPartitionsTest]
GO
/****** Object:  PartitionScheme [UPS_Test_Monthly]    Script Date: 10/26/2019 9:10:25 PM ******/
CREATE PARTITION SCHEME [UPS_Test_Monthly] AS PARTITION [UPF_Test_Monthly] TO ([FG_Test_Monthly_Y00M00], [FG_Test_Monthly_Y02M11], [FG_Test_Monthly_Y02M12], [FG_Test_Monthly_Y01M01], [FG_Test_Monthly_Y01M02], [FG_Test_Monthly_Y01M03], [FG_Test_Monthly_Y01M04], [FG_Test_Monthly_Y01M05], [FG_Test_Monthly_Y01M06], [FG_Test_Monthly_Y01M07], [FG_Test_Monthly_Y01M08], [FG_Test_Monthly_Y01M09], [FG_Test_Monthly_Y01M10], [FG_Test_Monthly_Y01M11], [FG_Test_Monthly_Y01M12], [FG_Test_Monthly_Y02M01], [FG_Test_Monthly_Y02M02], [FG_Test_Monthly_Y02M03], [FG_Test_Monthly_Y02M04], [FG_Test_Monthly_Y02M05], [FG_Test_Monthly_Y02M06], [FG_Test_Monthly_Y02M07], [FG_Test_Monthly_Y02M08], [FG_Test_Monthly_Y02M09], [FG_Test_Monthly_Y02M10])
GO
