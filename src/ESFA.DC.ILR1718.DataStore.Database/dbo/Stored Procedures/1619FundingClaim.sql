
CREATE PROCEDURE [dbo].[1619FundingClaim] 
@UKPRN int  
AS
BEGIN
	SELECT
		SN.FundLine, SN.RateBand, SN.StudentNumbers, SN.DeliveryToDate, SN.RateBandSortOrder, SN.FundlineSortOrder 
	FROM
	(
		SELECT   [FundLine]      
				,[RateBand]
				,COUNT(LearnRefNumber) AS StudentNumbers
				,SUM(OnProgPayment) AS DeliveryToDate		
				,RateBandSortOrder = CASE WHEN RateBand = '540+ hours (Band 5)' THEN 1
										  WHEN RateBand = '450+ hours (Band 4a)' THEN 2
										  WHEN RateBand = '450 to 539 hours (Band 4b)' THEN 3
										  WHEN RateBand = '360 to 449 hours (Band 3)' THEN 4
										  WHEN RateBand = '280 to 359 hours (Band 2)' THEN 5 
										  WHEN RateBand = 'Up to 279 hours (Band 1)' THEN 6 
									 ELSE 7 END 
				,'1' AS FundlineSortOrder
		FROM [Rulebase].[EFA_Learner]
		WHERE UKPRN=@UKPRN AND StartFund=1 AND Fundline = '14-16 Direct Funded Students'
		GROUP BY FundLine, RateBand 
	
		UNION ALL

		SELECT   '16-19 Students (including High Needs Students)' AS [FundLine]        
				,[RateBand]
				,COUNT(LearnRefNumber) AS StudentNumbers
				,SUM(OnProgPayment) AS DeliveryToDate		
				,RateBandSortOrder = CASE WHEN RateBand = '540+ hours (Band 5)' THEN 1
										  WHEN RateBand = '450+ hours (Band 4a)' THEN 2
										  WHEN RateBand = '450 to 539 hours (Band 4b)' THEN 3
										  WHEN RateBand = '360 to 449 hours (Band 3)' THEN 4
										  WHEN RateBand = '280 to 359 hours (Band 2)' THEN 5 
										  WHEN RateBand = 'Up to 279 hours (Band 1)' THEN 6 
									 ELSE 7 END 
				,'2' AS FundlineSortOrder
		FROM [Rulebase].[EFA_Learner]
		WHERE UKPRN=@UKPRN AND StartFund=1 AND (Fundline = '16-19 Students (excluding High Needs Students)' OR FundLine = '16-19 High Needs Students')
		GROUP BY RateBand 

		UNION ALL

		SELECT   [FundLine]      
				,[RateBand]
				,COUNT(LearnRefNumber) AS StudentNumbers
				,SUM(OnProgPayment) AS DeliveryToDate		
				,RateBandSortOrder = CASE WHEN RateBand = '540+ hours (Band 5)' THEN 1
										  WHEN RateBand = '450+ hours (Band 4a)' THEN 2
										  WHEN RateBand = '450 to 539 hours (Band 4b)' THEN 3
										  WHEN RateBand = '360 to 449 hours (Band 3)' THEN 4
										  WHEN RateBand = '280 to 359 hours (Band 2)' THEN 5 
										  WHEN RateBand = 'Up to 279 hours (Band 1)' THEN 6 
									 ELSE 7 END 
				,'3' AS FundlineSortOrder
		FROM [Rulebase].[EFA_Learner]
		WHERE UKPRN=@UKPRN AND StartFund=1 AND Fundline = '19-24 Students with an EHCP'
		GROUP BY FundLine, RateBand 

		UNION ALL

		SELECT   [FundLine]      
				,[RateBand]
				,COUNT(LearnRefNumber) AS StudentNumbers
				,SUM(OnProgPayment) AS DeliveryToDate		
				,RateBandSortOrder = CASE WHEN RateBand = '540+ hours (Band 5)' THEN 1
										  WHEN RateBand = '450+ hours (Band 4a)' THEN 2
										  WHEN RateBand = '450 to 539 hours (Band 4b)' THEN 3
										  WHEN RateBand = '360 to 449 hours (Band 3)' THEN 4
										  WHEN RateBand = '280 to 359 hours (Band 2)' THEN 5 
										  WHEN RateBand = 'Up to 279 hours (Band 1)' THEN 6 
									 ELSE 7 END  
				,'4' AS FundlineSortOrder
		FROM [Rulebase].[EFA_Learner]
		WHERE UKPRN=@UKPRN AND StartFund=1 AND Fundline = '19+ Continuing Students (excluding EHCP)'
		GROUP BY FundLine, RateBand 
	) AS SN
	ORDER BY SN.FundlineSortOrder, SN.RateBandSortOrder 
END 
