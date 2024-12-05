select * from [EDW_Mart].[Risk_Manager_Aggregate_FI_Public_Private_HP_Report] 
where asofdate = '2024-12-02' and currency is null
 
select * from  [EDW_Mart].[Risk_Manager_Derivative_VaR_Report] where AsOfDate in ('2024-12-02')
 

-- Run for the second step, if there's data existed in the first table in the output
DECLARE	@return_value int
 
EXEC	@return_value = [RISK].[sp_IPS_VaR]
		@xDate = '2024-12-02'
 
SELECT	'Return Value' = @return_value
 
GO
 
SELECT *
  FROM [RISK].[PA_IPS_RelativeVaR] order by AsOfDate desc, Last_Update_Date desc

--Run for the last step
DECLARE	@return_value int

EXEC	@return_value = [RISK].[sp_TP_FX_Exposure]
		@xDate = '2024-09-03'

SELECT	'Return Value' = @return_value

GO

