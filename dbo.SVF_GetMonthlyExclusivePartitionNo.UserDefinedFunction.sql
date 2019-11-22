USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[SVF_GetMonthlyExclusivePartitionNo] 
(
	@TableName varchar(128)
	, @Date date = null
)
/*

--获取日期所在按月独占分区编号 (-1: 该日期无该月独占分区, 0: 该日期已滚动过期, N: 该日期的独占按月分区编号)
select dbo.[SVF_GetMonthlyExclusivePartitionNo]('Test_Monthly', '2010-01-01')
	
*/

RETURNS int
AS
BEGIN
	if @Date is null
	begin
		set @Date = GETDATE()
	end
	declare @ int = -1
	;with TPartitions
	as
	(
		select
			a.*
		from
			iTVF_TablesPartitionsStorageInfo
					(
						@TableName
					) a
	)
	select
		@ = 0
	where
		(
			select
				min(aa.BoundaryValue)
			from
				TPartitions aa
		) > @Date


	if (@ < 0)
	begin
		;with TPartitions
		as
		(
			select
				  a.LeftValue
				, a.RightValue
				, @Date					as MonthDate
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
					a.LeftValue <= @Date
				)
				and
				(
					(
						a.LeftValue is not null
						and
						a.RightValue is not null
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
					a.RightValue > @Date
				)
			)
		select
			@ = a.[PartitionNumber]
		from
			T a
	end
	return @
END
GO
