CREATE TABLE [Rulebase].[SFA_global] (
    [UKPRN]                       VARCHAR (8)   NOT NULL,
    [CurFundYr]                   VARCHAR (9)   NULL,
    [LARSVersion]                 VARCHAR (100) NULL,
    [OrgVersion]                  VARCHAR (100) NULL,
    [PostcodeDisadvantageVersion] VARCHAR (50)  NULL,
    [RulebaseVersion]             VARCHAR (10)  NULL,
    PRIMARY KEY CLUSTERED ([UKPRN] ASC)
);

