CREATE TABLE [Invalid].[SourceFile] (
    [SourceFile_Id]       INT          NULL,
    [UKPRN]               INT          NULL,
    [SourceFileName]      VARCHAR (50) NULL,
    [FilePreparationDate] DATE         NULL,
    [SoftwareSupplier]    VARCHAR (40) NULL,
    [SoftwarePackage]     VARCHAR (30) NULL,
    [Release]             VARCHAR (20) NULL,
    [SerialNo]            VARCHAR (2)  NULL,
    [DateTime]            DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_SourceFile]
    ON [Invalid].[SourceFile]([SourceFileName] ASC);

