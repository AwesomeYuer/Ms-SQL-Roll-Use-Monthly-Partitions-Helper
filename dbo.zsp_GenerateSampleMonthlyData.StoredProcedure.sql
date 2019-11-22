USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[zsp_GenerateSampleMonthlyData]
	@BaseDate date = null
	, @Months int = 30
as
begin
if (@BaseDate is null)
begin
	set @BaseDate = GETDATE()
end

;with TSequence
as
(
	select
		0 as ID
	union all
	select
		ID + 1
	from
		TSequence
	where
		ID < @Months - 1
)
, T
as
(
	select
		  a.ID
		, 
			DATEADD
				(
					  MONTH
					, a.ID
					, DATEADD
						(
							MONTH
							, DATEDIFF(month, 0, @BaseDate)
							, 0
						)
				)	as MonthDate
		, b.ID as ID2

	from
		TSequence a
		,
		(
			select
				top (2)
					a.ID
			from
				TSequence a
			order by
				a.ID
		) b
)
insert into
	Test_Monthly
		(
			DataDate
		)
select
	cast
		(
			IIF
				(
					a.ID2 = 0
					, a.MonthDate
					, EOMONTH(a.MonthDate)
				)
				as date
		) as [MonthDate]
from
	T a
order by
	1

end
GO
