DECLARE

    @Date DATE = '2024-12-02'


-- create the summary table
create table #summary
(AsofDate Date,
 Restriction Varchar(500),
 Limit varchar(50),
 Status varchar(5),
 StatuswExceptions varchar(5),
 Comment varchar(500))

 insert into #summary
 values
 (@Date,'Agent Long-term Credit Rating','A',NULL,NULL,NULL),
 (@Date,'Assets on Loan','75%',NULL,NULL,NULL),
 (@Date,'Equities on Loan','95%',NULL,NULL,NULL),
 (@Date,'Value of Collateral','102%',NULL,NULL,NULL),
 (@Date,'Collateral shall be readily marketable securities (8 Categories)',NULL,NULL,NULL,NULL),
 (@Date,'Repo Leverage Less than 2x',NULL,NULL,NULL,NULL),
 (@Date,'Only Equity/FI/ILB/RRB on Loan',NULL,NULL,NULL,NULL)

 -- create the summary table on the strategy level
 create table #summary_2
(AsofDate Date,
 Client varchar(50),
 IPS_Strategy varchar(100),
 Counterparty varchar(50),
 Restriction Varchar(500),
 Limit varchar(50),
 Status varchar(5),
 StatuswExceptions varchar(5),
 Comment varchar(500))

insert into #summary_2 -- confirm + RRB
values
(@Date,	'IMCO',	'Canadian Public Equity',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Canadian Public Equity',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Canadian Public Equity',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Emerging Markets Public Equity',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Emerging Markets Public Equity',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Emerging Markets Public Equity',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Global Public Equity',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Global Public Equity',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'IMCO',	'Global Public Equity',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	NULL,	NULL,	'CIBC Mellon',	'Agent Long-term Credit Rating',	'A',	NULL,	NULL,	NULL),
(@Date,	NULL,	NULL,	NULL,	'Equities on Loan',	'0.95',	NULL,	NULL,	NULL),
(@Date,	NULL,	NULL,	NULL,	'Repo Leverage Less than 2x',	NULL,	NULL,	NULL,	NULL),
(@Date,	NULL,	NULL,	'State Street Bank and Trust Company',	'Agent Long-term Credit Rating',	'A',	NULL,	NULL,	NULL),
(@Date,	NULL,	NULL,	NULL,	'Only Equity/FI/ILB/RRB on Loan',	NULL,	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'OPB',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBINS',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Government Short Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBLRI',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Long Term Fixed Income',	'State Street Bank and Trust Company',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Long Term Fixed Income',	'State Street Bank and Trust Company',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Long Term Fixed Income',	'State Street Bank and Trust Company',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Mid Term Fixed Income',	'State Street Bank and Trust Company',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Mid Term Fixed Income',	'State Street Bank and Trust Company',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Mid Term Fixed Income',	'State Street Bank and Trust Company',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Short Term Fixed Income',	'State Street Bank and Trust Company',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Short Term Fixed Income',	'State Street Bank and Trust Company',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Government Short Term Fixed Income',	'State Street Bank and Trust Company',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond',	'State Street Bank and Trust Company',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond',	'State Street Bank and Trust Company',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond',	'State Street Bank and Trust Company',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'WSIBPEN',	'Inflation Linked Bond - Legacy RRB',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Inflation Linked Bond',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Inflation Linked Bond',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Inflation Linked Bond',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'PJPP Public Equity ACWI Strategy',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'PJPP Public Equity ACWI Strategy',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'PJPP Public Equity ACWI Strategy',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Assets on Loan',	'0.75',	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
(@Date,	'PJPP',	'Government Long Term Fixed Income',	'CIBC Mellon',	'Value of Collateral',	'1.02',	NULL,	NULL,	NULL)
--(@Date,	'WSIBPEN',	NULL,	'State Street Bank and Trust Company',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL), -- PEN can't be on loan for now
--(@Date,	'OPB',	NULL,	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
--(@Date,	'WSIBINS',	NULL,	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL),
--(@Date,	'WSIBLRI',	NULL,	'CIBC Mellon',	'Collateral shall be readily marketable securities (8 Categories)',	NULL,	NULL,	NULL,	NULL)



select * into #position from [EDW_Mart].[Risk_Manager_Aggregate_FI_Public_Private_HP_Report]
where asofdate = @Date
and PortfolioParameter not like '%benchmark%' 
and PortfolioParameter in ('OPBC0005_HP','WSA01_HP','WSIC1002_HP','WSIC0059_HP','PJBC0004_HP','IMCC0001','IMCC0010','IMCC0015')
and client in ('OPB','WSIBPEN','WSIBINS','WSIBLRI','PJPP','IMCO') 

select asofdate, client, ips_strategy, sum(pv) as MV 
into #strategy_mv
from #position 
group by asofdate, client, IPS_Strategy
order by asofdate, client, IPS_Strategy


------------------------------------------------------Agent Long-term Credit Rating Check-----------------------------------------
--Check if Securities Lending Agents have a minimum long-term credit rating of A. If not, the agent that breached the limit will be listed.

Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Agent Long-term Credit Rating'
Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Agent Long-term Credit Rating' and Counterparty = 'CIBC Mellon'
Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Agent Long-term Credit Rating' and Counterparty = 'State Street Bank and Trust Company'

------------------------------------------------------Value of Collateral Check-----------------------------------------

-- Prepare the mapping table for CustodyAcctNumber to be mapped into the corresponding strategy
select distinct Client_ID as Client, IPS_Strategy, Portfolio_ID, Portfolio_Name
into #port_mapping
from EDW_Mart.Risk_Manager_Portfolio_Hierarchy 
where Effective_Date = @Date
and ((IPS_Strategy like '%public equity%' and Client_ID = 'IMCO') or (IPS_Strategy not like '%public equity%'))
and Portfolio_ID not in ('IMP092K','IMP092N','IMP092M','IMP082K','IMP082N','IMP082M','IMAB020','IMAB300','IMAB030','WSW7','WS2X') --remove repo accounts
order by Client_ID, Portfolio_ID, Portfolio_Name

insert into #port_mapping -- manually add repo accounts
values
('WSIBINS','Government Long Term Fixed Income','IMP082K','NA'),
('WSIBINS','Inflation Linked Bond','IMP082N','NA'),
('WSIBINS','Inflation Linked Bond - Legacy RRB','IMP082M','NA'),
('WSIBLRI','Government Long Term Fixed Income','IMP092K','NA'),
('WSIBLRI','Inflation Linked Bond','IMP092N','NA'),
('WSIBLRI','Inflation Linked Bond - Legacy RRB','IMP092M','NA'),
('OPB','Government Long Term Fixed Income','IMAB020','NA'),
('WSIBPEN','Inflation Linked Bond','WSW7','NA'),
('WSIBPEN','Inflation Linked Bond - Legacy RRB','WS2X','NA'),
('OPB','Inflation Linked Bond','IMAB030','NA'),
('OPB','Inflation Linked Bond - Legacy RRB','IMAB300','NA'),
('OPB','Emerging Markets Public Equity','IMAE050','NA')

-- map position level sec lending to strategies
-- Check if any value of the collateral is less than 102% of the market value of the loaned securities.

SELECT *,
case
	when CollateralPercent < 102 then 'R'
		else 'G'
	end as Limit_Value_of_Col,
case
	when c.IPS_Strategy not in (
	'Inflation Linked Bond',
	'Inflation Linked Bond - Legacy RRB',
	'Government Short Term Fixed Income',
	'Government Mid Term Fixed Income',
	'Government Long Term Fixed Income',
	'PJPP Public Equity ACWI Strategy',
	'Canadian Public Equity',
	'Emerging Markets Public Equity',
	'Global Public Equity') then 'R'
	when c.IPS_Strategy is null then 'R'
		else 'G'
	end as Limit_on_loan
into #main
FROM [EDW_Mart].[Risk_Manager_Security_Lending_Detail_Collateral_by_Manager_Data] a
left join [EDW_Mart].[Risk_Manager_Eagle_Entity_Xreference] b
on a.CustodyAcctNumber = b.XREF_ACCOUNT_ID
left join #port_mapping c
on c.Portfolio_ID = b.ENTITY_ID
WHERE [ReportDate] = @Date
--and IsinNum <> 'KYG2160B1005' -- CHINA LUMENA NEW MATERIALS COR


-- update main summary
IF (Select count(*) from #main where Limit_Value_of_Col='R') = 0
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Value of Collateral'
ELSE
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Value of Collateral'

-- update breakdown summary
IF (Select count(*) from #main where Limit_Value_of_Col='R') = 0
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Value of Collateral'
ELSE
	Declare @breach_value_of_col TABLE(Client varchar(50), IPS_Strategy varchar(100))

	insert into @breach_value_of_col (Client, ips_strategy)
	select distinct client, IPS_Strategy from #main 
	where Limit_Value_of_Col = 'R'

	UPDATE s
	SET s.Status = 'R', 
	s.StatuswExceptions = 'R'
	FROM #summary_2 s
	JOIN @breach_value_of_col bvc ON s.Client = bvc.Client AND s.IPS_Strategy = bvc.IPS_Strategy
	WHERE s.Restriction = 'Value of Collateral'

Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Value of Collateral' and Status is null and StatuswExceptions is null	

------------------------------------------------------Repo Leverage Less than 2x Check-----------------------------------------
-- check if repo exposure is equal or larger than 2 times of the client's strategy level MV
select account_number as IMCO_PortfolioID, c.Client, c.IPS_Strategy, abs(sum(notional_value_base)) as Repo_Exposure, c.MV as Strategy_MV, abs(sum(Notional_Value_Base))/c.MV as Leverage,
case when abs(sum(Notional_Value_Base))/c.MV >= 2 then 'R'
	else 'G'
	end as Limit_Leverage
into #temp_repo
FROM [EDW_Mart].[Risk_Manager_Asset_and_Accrual] a
left join #port_mapping b
ON a.Account_Number = b.Portfolio_ID
left join #strategy_mv c
on b.Client = c.Client
and b.IPS_Strategy = c.IPS_Strategy
where 
a.Effective_Date = @Date
and Security_Type = 'REPO'
and Account_Number in (select distinct portfolio_ID from #main
where portfolio_id in
('IMP092K','IMP092N','IMP092M','IMP082K','IMP082N','IMP082M','IMAB020','IMAB300','IMAB030','WSW7','WS2X'))
group by account_number, c.Client, c.IPS_Strategy, c.MV
order by Account_Number, c.Client, c.IPS_Strategy, c.MV


update #temp_repo
set Limit_Leverage = 'R' where IMCO_PortfolioID in ('WSW7','WS2X')

-- update main summary
IF (Select count(*) from #temp_repo where Limit_Leverage='R') = 0
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Repo Leverage Less than 2x'
ELSE
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Repo Leverage Less than 2x'

-- update breakdown summary
IF (Select count(*) from #temp_repo where Limit_Leverage='R') = 0
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Repo Leverage Less than 2x'
ELSE
	Declare @breach_leverage TABLE(Client varchar(50), IPS_Strategy varchar(100))

	insert into @breach_leverage (Client, ips_strategy)
	select distinct client, IPS_Strategy from #temp_repo 
	where Limit_Leverage = 'R'

	UPDATE s
	SET s.Status = 'R', 
	s.StatuswExceptions = 'R'
	FROM #summary_2 s
	JOIN @breach_leverage bl ON s.Client = bl.Client AND s.IPS_Strategy = bl.IPS_Strategy
	WHERE s.Restriction = 'Repo Leverage Less than 2x'

Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Repo Leverage Less than 2x' and Status is null and StatuswExceptions is null	


------------------------------------------------------Asset on Loan Percentage Check-----------------------------------------
-- The maximum percentage of assets that may be on loan at a given time in respect of an IMCO Strategy of OPB is 75%
-- aggregate sec lending on the strategy level
select 
Client, 
IPS_Strategy, 
--CustodyAcctNumber, -- confirm?
sum(MarketValue) as sl_MV 
into #sl_strategy from #main
where ReportDate = @Date
group by 
--CustodyAcctNumber, 
Client, IPS_Strategy


-- check the asset on loan percentage on the strategy level
select 
b.AsOfDate,
--a.CustodyAcctNumber,
b.Client, b.IPS_Strategy, a.sl_MV, b.mv as Strategy_MV, a.sl_MV/b.mv as Percent_on_Loan,
	case 
		when a.sl_MV/b.mv>0.75 then 'R' 
		else 'G'
	end as Limit
into #asset_on_loan from #sl_strategy a 
left join #strategy_mv b 
on a.Client = b.client 
and a.IPS_Strategy = b.IPS_Strategy

--WSIBPEN can't be on loan for now
update #asset_on_loan set Limit = 'R' where Client = 'WSIBPEN'
update #asset_on_loan set Limit = 'R' where client is null

-- update the summary table
IF (Select count(*) from #asset_on_loan where Limit = 'R') = 0
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Assets on Loan'
ELSE
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Assets on Loan'

-- update breakdown summary
IF (Select count(*) from #asset_on_loan where Limit = 'R') = 0
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Assets on Loan'
ELSE
	Declare @breach_assets_on_loan TABLE(Client varchar(50), IPS_Strategy varchar(100))

	insert into @breach_assets_on_loan (Client, ips_strategy)
	select distinct client, IPS_Strategy from #asset_on_loan 
	where Limit = 'R'

	UPDATE s
	SET s.Status = 'R', 
	s.StatuswExceptions = 'R'
	FROM #summary_2 s
	JOIN @breach_assets_on_loan aol ON s.Client = aol.Client AND s.IPS_Strategy = aol.IPS_Strategy
	WHERE s.Restriction = 'Assets on Loan'

Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Assets on Loan' and Status is null and StatuswExceptions is null


------------------------------------------------------Equity on Loan Percentage Check-----------------------------------------

-- pull the current shares of equities from AA
select isin, Security_Description, sum(Shares_Par) as total_amount
into #aa_equity
from [EDW_Mart].[Risk_Manager_Asset_and_Accrual]
where Effective_Date = @Date
and Asset_Type_Name = 'Equity'
group by ISIN, Security_Description

-- pull the equities that have been lent out
select ReportDate, IsinNum, SecurityDescription, SUM(LoanQuantity) as Total_MV_Lent into #equity_lent
from #main a
where a.SecurityMinorType = 'Equity' 
and a.ReportDate = @Date
group by ReportDate, IsinNum, SecurityDescription

select b.Isin, b.Security_Description, Total_MV_Lent, total_amount,
case
	when total_amount = 0 then 1
	else Total_MV_Lent/abs(total_amount) end as Percentage,	
case 
	when total_amount = 0 and Total_MV_Lent <> 0 then 'R'
	when Total_MV_Lent/abs(total_amount)>0.95 then 'R' 
	when Total_MV_Lent/abs(total_amount) is Null then 'R'
	else 'G'
	end as Limit
into #eq_on_loan
from #equity_lent a
left join #aa_equity b
on a.IsinNum = b.isin
order by a.IsinNum


--select * from #aa_equity where total_amount = 0
--select * from #eq_on_loan where Limit = 'R'

-- pull the current exposure in equities from RM
--select isin, sum(amount) as total_amount into #mv_eq from #position 
--where 
--positionType in ('Equity','Private Equity')
--and IMCO_Fund
---- case US05278C1071 and US88557W1018
----,'Equity Future','Equity Option','Equity Future Option','Preferred Equity','Convertible Bond','Contingent Convertible Bond') - didn't include derivatives since they can't be lent?
--and client <> 'IMCO'
--group by isin


--select MarketValue, * from #main where IsinNum = 'US3024913036'
--select pv, * from #position where isin = 'US3024913036' and client <> 'IMCO' 
--and (IMCO_Product in ('Equity','Private Equity','ETF')
--or (IMCO_Product = 'Depository Receipt' and positionType = 'Equity')) 


-- case US05278C1071 and US88557W1018
--,'Equity Future','Equity Option','Equity Future Option','Preferred Equity','Convertible Bond','Contingent Convertible Bond') - didn't include derivatives since they can't be lent?


-- check for equity lent out: The maximum percentage of equity securities 
-- held by IMCO on behalf of clients in a particular issuer across IMCO strategies that may be on loan will be 95%
--select ReportDate, IsinNum, SecurityDescription, Total_MV_Lent, total_amount, Total_MV_Lent/abs(total_amount) as Percentage,	
--	case 
--		when Total_MV_Lent/abs(total_amount)>0.95 then 'R' 
--		when Total_MV_Lent/abs(total_amount) is Null then 'R' 
--		else 'G'
--	end as Limit
--into #eq_on_loan
--from #equity_lent a
--left join #mv_eq b
--on a.IsinNum = b.isin
--order by IsinNum

--select * from #eq_on_loan where limit = 'R'

--select * from #main where IsinNum =  'US83304A1060'
--select DAE,positionType,Asset_Name,IMCO_Product, * from #position where isin = 'US83304A1060'
--select * from #position where isin = 'US83304A1060'

-- update the summary tables
IF (Select count(*) from #eq_on_loan where Limit = 'R')  = 0
BEGIN
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Equities on Loan'
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Equities on Loan'
END
ELSE
BEGIN
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Equities on Loan'
	Update #summary_2 set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Equities on Loan' --legacy position

END

------------------------------------------------------Only Equity/FI/ILB/RRB on Loan Check-----------------------------------------

-- update the summary tables
IF (select count(*) from #main where Limit_on_loan='R') = 0
BEGIN
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Only Equity/FI/ILB/RRB on Loan'
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Only Equity/FI/ILB/RRB on Loan'
END

ELSE
BEGIN
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Only Equity/FI/ILB/RRB on Loan'
	Update #summary_2 set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Only Equity/FI/ILB/RRB on Loan'
END


------------------------------------------------------Collateral Type Check-----------------------------------------
SELECT distinct
[ReportName]
      ,[CurrencyParameter]
      ,[PortfolioParameter]
      ,[AsOfDate]
      ,[PricingDate]
      ,[AnalysisDate]
      ,[Submitted]
      ,[RowGroup]
      ,[Level]
      ,[NettingSetCounterpartyEntity]
      ,[nettingSetValuationEntity]
      ,[NettingSet]
      ,[Name]
      ,[CounterpartyEntityName]
      ,[ValuationEntityName]
      ,[positionType]
      ,[Asset_Type]
      ,[RMG_RML4InputIsCollateral]
      ,[marginingHaircut]
      ,[amount]
      ,[NettingSetTermsName]
      ,[CCEPositionID]
      ,[isin]
      ,[cusip]
      ,[IMCO_PortfolioID]
      ,[forwardCurrency]
      ,[settleCurrency]
      ,[currency]
      ,[maturityDate]
      ,[baseCreditExposure]
      ,[notionalInLocalCurrency]
      ,[notionalInBaseCurrency]
      ,[presentValue]
      ,[baseCreditSupportAmount]
      ,[resultPeakValue]
      ,[resultPeakHorizon]
      ,[ratingSP]
      ,[ratingMoodys]
      ,[IndustrySector]
      ,[CompositeSubSector]
      ,[UltimateCountryOfRisk]
      ,[issuerType]
      ,[assetType]
      ,[Time_to_Maturity_Total]
into #temp_col
FROM [EDW_Mart].[Risk_Manager_CCRPFESummary] where AnalysisDate = @Date and Asset_Type = 'RECEIVED COLLATERAL' and level not in (0,1,2)


select ROW_NUMBER() over(order by name) as index_num, *,
case
	when ratingSP = 'AAA' then 1
	when ratingSP = 'AA+' then 2
	when ratingSP = 'AA' then 3
	when ratingSP = 'AA-' then 4
	when ratingSP = 'A+' then 5
	when ratingSP = 'A' then 6
	when ratingSP = 'A-' then 7
	when ratingSP = 'BBB+' then 8
	when ratingSP = 'BBB' then 9
	else 100
end as ratingSP_num,
case
	when ratingMoodys = 'Aaa' then 1
	when ratingMoodys = 'Aa1' then 2
	when ratingMoodys = 'Aa2' then 3
	when ratingMoodys = 'Aa3' then 4
	when ratingMoodys = 'A1' then 5
	when ratingMoodys = 'A2' then 6
	when ratingMoodys = 'A3' then 7
	when ratingMoodys = 'Baa1' then 8
	when ratingMoodys = 'Baa2' then 9
	else 100
end as ratingMoodys_num
into #temp_pfe from #temp_col


select * into #col_breach from #temp_pfe where
index_num not in (select index_num from #temp_pfe where UltimateCountryOfRisk = 'CA' and issuerType in ('AGNC','SOVR')) --a
and index_num not in (select index_num from #temp_pfe where UltimateCountryOfRisk = 'CA' and IndustrySector = 'AGNCY' and Name like '%CANADA HOUSING TRUST%')
and index_num not in(select index_num from #temp_pfe where NAME LIKE '%NHA MBS%' OR NAME LIKE '%NHS MABS%')
and index_num not in(select index_num from #temp_pfe where UltimateCountryOfRisk = 'CA' and issuerType = 'PROV' and ratingMoodys_num <= 6 and ratingMoodys_num <= 6) --b
and index_num not in(select index_num from #temp_pfe where UltimateCountryOfRisk in ('US','FR','DE','GB','JP','IT') and issuerType in ('SOVR') and positionType = 'Generic Bond') --c & d
and index_num not in(select index_num from #temp_pfe where issuerType = 'CORP' and ratingMoodys_num <= 9 and ratingMoodys_num <= 9) --f
and index_num not in(select index_num from #temp_pfe where positionType in ('Generic Convertible Bond','Contingent Convertible Bond')) --g
and index_num not in(select index_num from #temp_pfe where positionType in ('Equity')) --h


--select * from #col_breach

delete from #col_breach where isin = 'CA74812ZZM09'


select a.*, b.XREF_ACCOUNT_ID, b.ENTITY_ID, c.*
into #col_breach_full
from [EDW_Mart].[Risk_Manager_OTC_Counterparty_Exposure_Collateral_Mapping_Data] a
join  [EDW_Mart].[Risk_Manager_Eagle_Entity_Xreference] b
on a.Account = b.Xref_Account_Id
join #port_mapping c
on c.Portfolio_ID = b.Entity_Id
and ISIN in (select distinct ISIN from #col_breach)
where As_of_Date = @Date


-- update the summary table
IF (Select count(*) from #col_breach_full) = 0
	Update #summary set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Collateral shall be readily marketable securities (8 Categories)'
ELSE
	Update #summary set Status = 'R', StatuswExceptions = 'R' where Restriction = 'Collateral shall be readily marketable securities (8 Categories)'

-- update breakdown summary
IF (Select count(*) from #col_breach_full) = 0
	Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Collateral shall be readily marketable securities (8 Categories)'
ELSE
	Declare @breach_col TABLE(Client varchar(50), IPS_Strategy varchar(100))

	insert into @breach_col (Client, ips_strategy)
	select distinct client, IPS_Strategy from #col_breach_full 

	UPDATE s
	SET s.Status = 'R', 
	s.StatuswExceptions = 'R'
	FROM #summary_2 s
	JOIN @breach_col col ON s.Client = col.Client AND s.IPS_Strategy = col.IPS_Strategy
	WHERE s.Restriction = 'Collateral shall be readily marketable securities (8 Categories)'

Update #summary_2 set Status = 'G', StatuswExceptions = 'G' where Restriction = 'Collateral shall be readily marketable securities (8 Categories)' and Status is null and StatuswExceptions is null



select count(*) from [EDW_Mart].[Risk_Manager_Aggregate_FI_Public_Private_HP_Report] where AsOfDate = @Date
select count(*) from EDW_Mart.Risk_Manager_Portfolio_Hierarchy where Effective_Date = @Date
select count(*) from [EDW_Mart].[Risk_Manager_Security_Lending_Detail_Collateral_by_Manager_Data] where ReportDate = @Date
select count(*) from [EDW_Mart].[Risk_Manager_Asset_and_Accrual] where Effective_Date = @Date
select count(*) from [EDW_Mart].[Risk_Manager_CCRPFESummary] where AsOfDate = @Date
select count(*) from [EDW_Mart].[Risk_Manager_OTC_Counterparty_Exposure_Collateral_Mapping_Data] where As_of_Date = @Date

select * from #summary
select * from #summary_2 where status = 'R'


--select * from #asset_on_loan --WHERE Limit = 'R'
select isin, Security_Description, Total_MV_Lent, total_amount, Format(Percentage,'P') as Percentage, Limit from #eq_on_loan WHERE Limit = 'R'
--select * from #temp_repo
select * from #main where Limit_on_loan ='R'
select * from #main where Limit_Value_of_Col ='R'
select * from #col_breach_full
select * from #col_breach


--select LoanQuantity, * from [EDW_Mart].[Risk_Manager_Security_Lending_Detail_Collateral_by_Manager_Data] where ReportDate = '2024-04-29' and IsinNum = 'GB00BF8Q6K64'

--select Shares_Par, * from [EDW_Mart].[Risk_Manager_Asset_and_Accrual] where Effective_Date = '2024-04-29' and ISIN = 'GB00BF8Q6K64'

--select * from [EDW_Mart].[Risk_Manager_OTC_Counterparty_Exposure_Collateral_Mapping_Data] where As_of_Date = '2024-08-15' and isin like '%CA62979ZKQ14%'

--select a.*, b.XREF_ACCOUNT_ID, b.ENTITY_ID, c.*
--from [EDW_Mart].[Risk_Manager_OTC_Counterparty_Exposure_Collateral_Mapping_Data] a
--join  [EDW_Mart].[Risk_Manager_Eagle_Entity_Xreference] b
--on a.Account = b.Xref_Account_Id
--join #port_mapping c
--on c.Portfolio_ID = b.Entity_Id
--where As_of_Date = '2024-08-16'
--and Security_Description like '%KINGDOM OF BELGIUM 0.9 22JUN29 144A%'
