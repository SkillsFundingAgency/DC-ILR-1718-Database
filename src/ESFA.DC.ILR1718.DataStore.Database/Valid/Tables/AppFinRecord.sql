CREATE TABLE [Valid].[AppFinRecord] (
	[ID]				INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [AimSeqNumber]   INT          NOT NULL,
    [AFinType]       VARCHAR (3)  NOT NULL,
    [AFinCode]       INT          NOT NULL,
    [AFinDate]       DATE         NOT NULL,
    [AFinAmount]     INT          NOT NULL,
	CONSTRAINT [PK_AppFinRecord] PRIMARY KEY ([ID])
);

