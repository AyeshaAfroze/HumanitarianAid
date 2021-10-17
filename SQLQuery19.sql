CREATE TABLE [dbo].[NeedyActivation] (
    [N_Id]         INT              NOT NULL,
    [ActivationCode] UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([N_Id] ASC)
);