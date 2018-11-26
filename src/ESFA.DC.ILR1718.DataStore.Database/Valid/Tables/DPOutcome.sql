﻿CREATE TABLE [Valid].[DPOutcome] (
	[ID]				INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [OutType]        VARCHAR (3)  NOT NULL,
    [OutCode]        INT          NOT NULL,
    [OutStartDate]   DATE         NOT NULL,
    [OutEndDate]     DATE         NULL,
    [OutCollDate]    DATE         NOT NULL,
	CONSTRAINT [PK_DPOutcome] PRIMARY KEY ([ID])
);


GO
CREATE CLUSTERED INDEX [IX_Valid_DPOutcome]
    ON [Valid].[DPOutcome]([UKPRN] ASC, [LearnRefNumber] ASC, [OutType] ASC, [OutCode] ASC, [OutStartDate] ASC);

