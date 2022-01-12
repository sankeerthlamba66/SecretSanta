CREATE TABLE [dbo].[Projects] (
    [Project_Id]          INT          NOT NULL,
    [Project_Name]        VARCHAR (50) NOT NULL,
    [Project_Description] VARCHAR (50) NULL,
    CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([Project_Id] ASC)
);

