USE [MonthlyPartitionsTest]
GO
CREATE PARTITION SCHEME [UPS_Test_Monthly] AS PARTITION [UPF_Test_Monthly] TO ([FG_Test_Monthly_Y00M00], [FG_Test_Monthly_Y01M07], [FG_Test_Monthly_Y01M08], [FG_Test_Monthly_Y01M09], [FG_Test_Monthly_Y01M10], [FG_Test_Monthly_Y01M11], [FG_Test_Monthly_Y01M12], [FG_Test_Monthly_Y02M01], [FG_Test_Monthly_Y02M02], [FG_Test_Monthly_Y02M03], [FG_Test_Monthly_Y02M04], [FG_Test_Monthly_Y02M05], [FG_Test_Monthly_Y02M06], [FG_Test_Monthly_Y02M07], [FG_Test_Monthly_Y02M08], [FG_Test_Monthly_Y02M09], [FG_Test_Monthly_Y02M10], [FG_Test_Monthly_Y02M11], [FG_Test_Monthly_Y02M12], [FG_Test_Monthly_Y03M01], [FG_Test_Monthly_Y03M02], [FG_Test_Monthly_Y03M03], [FG_Test_Monthly_Y03M04], [FG_Test_Monthly_Y03M05], [FG_Test_Monthly_Y03M06], [FG_Test_Monthly_Y03M07], [FG_Test_Monthly_Y03M08], [FG_Test_Monthly_Y03M09], [FG_Test_Monthly_Y03M10], [FG_Test_Monthly_Y03M11], [FG_Test_Monthly_Y03M12], [FG_Test_Monthly_Y01M01], [FG_Test_Monthly_Y01M02], [FG_Test_Monthly_Y01M03], [FG_Test_Monthly_Y01M04], [FG_Test_Monthly_Y01M05], [FG_Test_Monthly_Y01M06])
GO
