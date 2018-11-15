CREATE TABLE [Invalid].[AppFinRecord] (
    [AppFinRecord_Id]     INT           NULL,
    [UKPRN]               INT           NULL,
    [LearningDelivery_Id] INT           NULL,
    [LearnRefNumber]      VARCHAR (100) NULL,
    [AimSeqNumber]        BIGINT        NULL,
    [AFinType]            VARCHAR (100) NULL,
    [AFinCode]            BIGINT        NULL,
    [AFinDate]            DATE          NULL,
    [AFinAmount]          BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_AppFinRecord]
    ON [Invalid].[AppFinRecord]([LearningDelivery_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_AppFinRecord]
    ON [Invalid].[AppFinRecord]([LearnRefNumber] ASC, [AimSeqNumber] ASC, [AFinType] ASC);

