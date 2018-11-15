﻿CREATE TABLE [Valid].[LearningDeliveryFAM] (
    [UKPRN]               INT          NOT NULL,
    [LearnRefNumber]      VARCHAR (12) NOT NULL,
    [AimSeqNumber]        INT          NOT NULL,
    [LearnDelFAMType]     VARCHAR (3)  NOT NULL,
    [LearnDelFAMCode]     VARCHAR (5)  NOT NULL,
    [LearnDelFAMDateFrom] DATE         NULL,
    [LearnDelFAMDateTo]   DATE         NULL
);


GO
CREATE CLUSTERED INDEX [IX_Valid_LearningDeliveryFAM]
    ON [Valid].[LearningDeliveryFAM]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [LearnDelFAMType] ASC, [LearnDelFAMDateFrom] ASC);

