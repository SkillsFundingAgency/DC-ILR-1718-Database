CREATE TABLE [DataLock].[ValidationErrorByPeriod] (
	[ID]					INT		   IDENTITY (1, 1) NOT NULL,
    [Ukprn]                  BIGINT       NULL,
    [LearnRefNumber]         VARCHAR (12) NULL,
    [AimSeqNumber]           INT          NULL,
    [RuleId]                 VARCHAR (50) NULL,
    [PriceEpisodeIdentifier] VARCHAR (25) NOT NULL,
    [Period]                 INT          NULL,
    [CollectionPeriodName]   VARCHAR (8)  NOT NULL,
    [CollectionPeriodMonth]  INT          NOT NULL,
    [CollectionPeriodYear]   INT          NOT NULL,
	CONSTRAINT [PK_ValidationErrorByPeriod] PRIMARY KEY ([ID])
);

