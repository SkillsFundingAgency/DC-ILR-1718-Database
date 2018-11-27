CREATE TABLE [Rulebase].[DV_Cases] (
	[ID]			 INT		  IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NULL,
    [CaseData]       XML          NOT NULL,
	CONSTRAINT [PK_DV_Cases] PRIMARY KEY ([ID])
);

