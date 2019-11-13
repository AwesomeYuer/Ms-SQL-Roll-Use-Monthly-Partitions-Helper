USE [MonthlyPartitionsTest]
GO
/****** Object:  UserDefinedFunction [dbo].[SCF_GetMonthlyPartitionNo]    Script Date: 11/13/2019 11:34:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [dbo].[SCF_GetMonthlyPartitionNo] 
(
	@TableName varchar(128)
	, @MonthDate date = null
)
/*

select dbo.SCF_GetMonthlyPartitionNo('Test_Monthly', '2026-01-01')
	
*/

RETURNS int
AS
BEGIN
	if @MonthDate is null
	begin
		set @MonthDate = GETDATE()
	end
	declare @ int = -1
	;with TPartitions
	as
	(
		select
			  a.LeftValue
			, a.RightValue
			, @MonthDate			as MonthDate
			, a.[PartitionNumber]
			, a.FileGroupName
		from
			iTVF_TablesPartitionsStorageInfo
					(
						@TableName
					) a
	)
	, T
	as
	(
		select
			*
		from
			TPartitions a
		where
			(
				(
					a.LeftValue = a.RightValue
					and
					not exists
						(
							select
								1
							from
								TPartitions aa
							where
								aa.LeftValue < a.LeftValue
						)
				)
				or
				a.LeftValue <= @MonthDate
			)
			and
			(
				(
					a.LeftValue is not null
					and
					a.RightValue is null
					and
					not exists
						(
							select
								1
							from
								TPartitions aa
							where
								aa.LeftValue > a.LeftValue
						)
				)
				or
				a.RightValue > @MonthDate
			)
		)
	select
		@ = a.[PartitionNumber]
	from
		T a
	return @
END
