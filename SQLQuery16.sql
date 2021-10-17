CREATE TABLE [dbo].[DonorActivation] (
    [D_Id]         INT              NOT NULL,
    [ActivationCode] UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([D_Id] ASC)
);