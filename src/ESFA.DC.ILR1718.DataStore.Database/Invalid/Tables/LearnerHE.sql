﻿CREATE TABLE [Invalid].[LearnerHE] (
    [LearnerHE_Id]   INT            NULL,
    [Learner_Id]     INT            NULL,
    [UKPRN]          INT            NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [UCASPERID]      VARCHAR (1000) NULL,
    [TTACCOM]        BIGINT         NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearnerHE]
    ON [Invalid].[LearnerHE]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerHE]
    ON [Invalid].[LearnerHE]([LearnRefNumber] ASC);

