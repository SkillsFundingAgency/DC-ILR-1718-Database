CREATE TABLE [Invalid].[LearnerFAM] (
    [LearnerFAM_Id]  INT            NULL,
    [Learner_Id]     INT            NULL,
    [UKPRN]          INT            NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [LearnFAMType]   VARCHAR (1000) NULL,
    [LearnFAMCode]   BIGINT         NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearnerFAM]
    ON [Invalid].[LearnerFAM]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerFAM]
    ON [Invalid].[LearnerFAM]([LearnRefNumber] ASC);

