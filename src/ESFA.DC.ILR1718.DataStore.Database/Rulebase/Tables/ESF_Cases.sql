CREATE TABLE [Rulebase].[ESF_Cases] (
	[ID]			  INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT          NULL,
    [LearnRefNumber] VARCHAR (12) NULL,
    [CaseData]       XML          NOT NULL,
	CONSTRAINT [PK_ESF_Cases] PRIMARY KEY ([ID])
);

