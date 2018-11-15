﻿CREATE TABLE [Invalid].[EmploymentStatusMonitoring] (
    [EmploymentStatusMonitoring_Id] INT           NULL,
    [LearnerEmploymentStatus_Id]    INT           NULL,
    [UKPRN]                         INT           NULL,
    [LearnRefNumber]                VARCHAR (100) NULL,
    [DateEmpStatApp]                DATE          NULL,
    [ESMType]                       VARCHAR (100) NULL,
    [ESMCode]                       BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_EmploymentStatusMonitoring]
    ON [Invalid].[EmploymentStatusMonitoring]([LearnerEmploymentStatus_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_EmploymentStatusMonitoring]
    ON [Invalid].[EmploymentStatusMonitoring]([LearnRefNumber] ASC, [DateEmpStatApp] ASC, [ESMType] ASC);

