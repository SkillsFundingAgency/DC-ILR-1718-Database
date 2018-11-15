CREATE TABLE [Valid].[LearnerFAM] (
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [LearnFAMType]   VARCHAR (3)  NULL,
    [LearnFAMCode]   INT          NOT NULL
);


GO
CREATE CLUSTERED INDEX [IX_Valid_LearnerFAM]
    ON [Valid].[LearnerFAM]([UKPRN] ASC, [LearnRefNumber] ASC);

