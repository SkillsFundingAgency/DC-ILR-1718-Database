CREATE TABLE [DataLock].[ValidationErrorByPeriod] (
    [Ukprn]                  BIGINT       NULL,
    [LearnRefNumber]         VARCHAR (12) NULL,
    [AimSeqNumber]           INT          NULL,
    [RuleId]                 VARCHAR (50) NULL,
    [PriceEpisodeIdentifier] VARCHAR (25) NOT NULL,
    [Period]                 INT          NULL,
    [CollectionPeriodName]   VARCHAR (8)  NOT NULL,
    [CollectionPeriodMonth]  INT          NOT NULL,
    [CollectionPeriodYear]   INT          NOT NULL
);

