CREATE TABLE [Rulebase].[ESFVAL_global] (
    [ID]			INT				IDENTITY (1, 1) NOT NULL,
    [UKPRN]           INT          NULL,
    [RulebaseVersion] VARCHAR (10) NULL,
	CONSTRAINT [PK_ESFVAL_global] PRIMARY KEY ([ID])
);

