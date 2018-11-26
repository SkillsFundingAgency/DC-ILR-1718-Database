CREATE TABLE [Rulebase].[DV_global] (
	[ID]			  INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]           INT          NULL,
    [RulebaseVersion] VARCHAR (10) NULL,
	CONSTRAINT [PK_DV_global] PRIMARY KEY ([ID])
);

