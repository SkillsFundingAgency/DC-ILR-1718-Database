CREATE TABLE [Valid].[LearnerFAM] (
	[ID]			  INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [LearnFAMType]   VARCHAR (3)  NULL,
    [LearnFAMCode]   INT          NOT NULL,
	CONSTRAINT [PK_LearnerFAM] PRIMARY KEY ([ID])
);
