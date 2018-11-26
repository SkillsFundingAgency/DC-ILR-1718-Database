CREATE TABLE [Rulebase].[ESF_global] (
	[ID]			  INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]           INT          NULL,
    [RulebaseVersion] VARCHAR (10) NULL,
	CONSTRAINT [PK_ESF_global] PRIMARY KEY ([ID])
);

