CREATE TABLE [DataLock].[ValidationError] (
    [Ukprn]                  BIGINT       NULL,
    [LearnRefNumber]         VARCHAR (12) NULL,
    [AimSeqNumber]           INT          NULL,
    [RuleId]                 VARCHAR (50) NULL,
    [PriceEpisodeIdentifier] VARCHAR (25) NOT NULL,
    [CollectionPeriodName]   VARCHAR (8)  NOT NULL,
    [CollectionPeriodMonth]  INT          NOT NULL,
    [CollectionPeriodYear]   INT          NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IDX_ValidationError_UkPrn]
    ON [DataLock].[ValidationError]([Ukprn] ASC);

