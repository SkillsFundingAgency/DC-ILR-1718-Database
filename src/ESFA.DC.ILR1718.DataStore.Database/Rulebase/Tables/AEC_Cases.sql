CREATE TABLE [Rulebase].[AEC_Cases] (
    [ID]			INT				IDENTITY (1, 1) NOT NULL,
    [LearnRefNumber] VARCHAR (12) NULL,
    [UKPRN]          INT          NULL,
    [CaseData]       XML          NOT NULL,
	CONSTRAINT [PK_AEC_Cases] PRIMARY KEY ([ID])
);

