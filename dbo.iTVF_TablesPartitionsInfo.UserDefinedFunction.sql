USE [MonthlyPartitionsTest]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[iTVF_TablesPartitionsInfo] 
(	
	-- Add the parameters for the function here
	@TableName varchar(128)
)
RETURNS TABLE 
AS
RETURN 
(
WITH TBINFO
AS
(
	SELECT
		  SchemaName					= S.name
		, TableName						= TB.name
		, PartitionScheme				= PS.name
		, PartitionFunction				= PF.name
		, PartitionFunctionRangeType	=
											CASE
												WHEN
													boundary_value_on_right = 0
														THEN 'LEFT'
												ELSE
													'RIGHT'
											END
		, PartitionFunctionFanout		= PF.fanout
		, SchemaID						= S.schema_id
		, ObjectID						= TB.object_id
		, PartitionSchemeID				= PS.data_space_id
		, PartitionFunctionID			= PS.function_id
		--, partition_number				= p.partition_number
	FROM
		sys.schemas S
			INNER JOIN
				sys.tables TB
					ON
						S.schema_id = TB.schema_id
			INNER JOIN
				sys.indexes IDX
					on
						TB.object_id = IDX.object_id
						AND
						IDX.index_id < 2
			--JOIN
			--	sys.partitions as p 
			--		on 
			--		IDX.object_id = p.object_id 
			--		and
			--		IDX.index_id = p.index_id
			INNER JOIN
				sys.partition_schemes PS
					ON
						PS.data_space_id = IDX.data_space_id
			INNER JOIN
				sys.partition_functions PF
					ON
						PS.function_id = PF.function_id
)
, PF1
AS
(
	SELECT 
		PFP.function_id
		, PFR.boundary_id
		, PFR.value
		, Type					= CONVERT
									(
										sysname
										, 
											CASE
												T.name
													WHEN
														'numeric'
															THEN
																'decimal'
													WHEN
														'real'
															THEN
																'float'
													ELSE
														T.name
											END
											+
											CASE 
												WHEN
													T.name IN('decimal', 'numeric')
														THEN
															QUOTENAME
															(
																RTRIM(PFP.precision) 
																+
																CASE
																	WHEN
																		PFP.scale > 0
																			THEN
																				',' + RTRIM(PFP.scale)
																	ELSE
																		''
																END
																,
																'()'
															)
													WHEN
														T.name IN('float', 'real')
															THEN
																QUOTENAME(PFP.precision, '()')
													WHEN
														T.name LIKE 'n%char'
															THEN
																QUOTENAME(PFP.max_length / 2, '()')
													WHEN
														T.name LIKE '%char'
														OR
														T.name LIKE '%binary'
															THEN
																QUOTENAME(PFP.max_length, '()')
												ELSE
													''
											END
										)
	FROM
		sys.partition_parameters PFP
			LEFT JOIN
				sys.partition_range_values PFR
					ON
						PFR.function_id = PFP.function_id
						AND
						PFR.parameter_id = PFP.parameter_id
			INNER JOIN
				sys.types T
					ON
						PFP.system_type_id = T.system_type_id
)
, PF2
AS
(
	SELECT
		*
	FROM
		PF1
	UNION ALL
	SELECT
		function_id
		, boundary_id = boundary_id - 1
		, value
		, type
	FROM
		PF1
	WHERE
		boundary_id = 1
),
PF
AS
(
	SELECT 
		B.function_id
		, boundary_id = ISNULL(B.boundary_id + 1, 1)
		, b.value as LeftValue
		, a.value as RightValue
		
		, value =
			STUFF
				(

					
					CASE
						WHEN
							A.boundary_id = 1
								THEN ''
						ELSE
							' AND [partition_column_name] '
							+ PF.MoreThan
							+ ' '
							+ CONVERT(varchar(max), B.value)
					END
					+
					CASE
						WHEN
							A.boundary_id IS NULL
								THEN ''
						ELSE
							' AND [partition_column_name] '
							+ PF.LessThan
							+ ' '
							+ CONVERT(varchar(max), A.value)
					END
					, 1
					, 5
					, ''
				)
		, B.Type
	FROM
		PF1 A		
			RIGHT JOIN
				PF2 B
					ON
						A.function_id = B.function_id
						AND
							(
								A.boundary_id - 1 = B.boundary_id
								OR
								(
									A.boundary_id IS NULL
									AND
									B.boundary_id IS NULL
								)
							)
			INNER JOIN
				(
					SELECT
						function_id
						, LessThan =
										CASE 
											WHEN
												boundary_value_on_right = 0
													THEN
														'<='
											ELSE
												'<'
										END
						, MoreThan = 
										CASE
											WHEN
												boundary_value_on_right = 0
													THEN '>'
											ELSE
												'>='
										END
					FROM
						sys.partition_functions 
				) PF
			ON
				B.function_id = PF.function_id
)
, PS
AS
(
	SELECT 
		DDS.partition_scheme_id
		, DDS.destination_id
		, FileGroupName = FG.name
		, IsReadOnly = FG.is_read_only
	FROM
		sys.destination_data_spaces DDS
			INNER JOIN
				sys.filegroups FG
					ON
						DDS.data_space_id = FG.data_space_id
)
, PINFO
AS
(
	SELECT
		RowID = ROW_NUMBER() OVER(ORDER BY SchemaID, ObjectID, PS.destination_id)
		, TB.SchemaName
		, TB.TableName
		, TB.PartitionScheme
		--, tb.partition_number
		, PS.destination_id
		, PS.FileGroupName
		, PS.IsReadOnly
		, TB.PartitionFunction
		, TB.PartitionFunctionRangeType
		, TB.PartitionFunctionFanout
		, PF.boundary_id
		, PF.Type
		, PF.value
		, pf.RightValue
		, pf.LeftValue
	FROM
		TBINFO TB
			INNER JOIN
				PS
					ON
						TB.PartitionSchemeID = PS.partition_scheme_id
			LEFT JOIN
				PF
					ON
						TB.PartitionFunctionID = PF.function_id
						AND
						PS.destination_id = PF.boundary_id
)
SELECT 
	----v1
	--@MergeDate		= cast(min(v2) as date) --as [Merge]
	--, @SplitDate	= cast(max(v2) as date) --as [Split]
	--, @Years		= (count(1) - 1)/12
	  a.TableName
	, a.PartitionFunction
	, a.PartitionScheme
	, a.FileGroupName
	, a.LeftValue
	, a.RightValue
	, Min(a.RightValue)	over (partition by a.PartitionFunction)	as MinRightValue
	, Max(a.RightValue)	over (partition by a.PartitionFunction)	as MaxRightValue
	, Min(a.LeftValue)	over (partition by a.PartitionFunction)	as MinLeftValue
	, Max(a.LeftValue)	over (partition by a.PartitionFunction)	as MaxLeftValue
	--, a.partition_number
	, ISNULL(CONVERT(varchar(20), a.boundary_id), '')			as boundary_id 
	, a.destination_id
	, a.RowID
	, a.SchemaName
	, a.IsReadOnly
	, a.PartitionFunctionRangeType
	, a.PartitionFunctionFanout
	, ISNULL(a.Type, N'')										as Type
	, 
		CASE
			PartitionFunctionFanout 
				WHEN
					1
						THEN
							'<ALL Data>'
				ELSE
					ISNULL(a.value, N'<NEXT USED>')
		END														as [value]
FROM
	PINFO a
where
	(
		@TableName is null
		or
		a.TableName = @TableName
	)
)
GO