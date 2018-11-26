﻿CREATE TABLE [Valid].[LearningDeliveryWorkPlacement] (
	[ID]				INT		   IDENTITY (1, 1) NOT NULL,
    [UKPRN]              INT          NOT NULL,
    [LearnRefNumber]     VARCHAR (12) NOT NULL,
    [AimSeqNumber]       INT          NOT NULL,
    [WorkPlaceStartDate] DATE         NOT NULL,
    [WorkPlaceEndDate]   DATE         NULL,
    [WorkPlaceHours]     INT          NULL,
    [WorkPlaceMode]      INT          NOT NULL,
    [WorkPlaceEmpId]     INT          NULL,
	CONSTRAINT [PK_LearningDeliveryWorkPlacement] PRIMARY KEY ([ID])
);


GO
CREATE CLUSTERED INDEX [IX_Valid_LearningDeliveryWorkPlacement]
    ON [Valid].[LearningDeliveryWorkPlacement]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [WorkPlaceStartDate] ASC, [WorkPlaceMode] ASC, [WorkPlaceEmpId] ASC);

