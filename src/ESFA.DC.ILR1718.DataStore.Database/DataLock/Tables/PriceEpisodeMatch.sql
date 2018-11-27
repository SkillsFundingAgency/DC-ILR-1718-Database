CREATE TABLE [DataLock].[PriceEpisodeMatch] (
	[ID]					INT		   IDENTITY (1, 1) NOT NULL,
    [Ukprn]                  BIGINT       NOT NULL,
    [PriceEpisodeIdentifier] VARCHAR (25) NOT NULL,
    [LearnRefNumber]         VARCHAR (12) NULL,
    [AimSeqNumber]           INT          NULL,
    [CommitmentId]           BIGINT       NULL,
    [CollectionPeriodName]   VARCHAR (8)  NOT NULL,
    [CollectionPeriodMonth]  INT          NOT NULL,
    [CollectionPeriodYear]   INT          NOT NULL,
    [IsSuccess]              BIT          NOT NULL,
	CONSTRAINT [PK_PriceEpisodeMatch] PRIMARY KEY ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IDX_PriceEpisodeMatch_UkPrn]
    ON [DataLock].[PriceEpisodeMatch]([Ukprn] ASC);

