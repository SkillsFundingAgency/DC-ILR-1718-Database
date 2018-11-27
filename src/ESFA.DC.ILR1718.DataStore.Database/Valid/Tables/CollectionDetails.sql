CREATE TABLE [Valid].[CollectionDetails] (
	[ID]				INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]               INT         NOT NULL,
    [Collection]          VARCHAR (3) NOT NULL,
    [Year]                VARCHAR (4) NOT NULL,
    [FilePreparationDate] DATE        NULL,
	CONSTRAINT [PK_CollectionDetails] PRIMARY KEY ([ID])
);

