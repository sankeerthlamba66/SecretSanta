CREATE TABLE [dbo].[empoyeeProjects] (
    [Join_Date]   DATE NULL,
    [Exit_Date]   DATE NULL,
    [Employee_Id] INT  NULL,
    [Project_Id]  INT  NULL,
    FOREIGN KEY ([Employee_Id]) REFERENCES [dbo].[employees] ([employee_id]),
    FOREIGN KEY ([Project_Id]) REFERENCES [dbo].[Projects] ([Project_Id])
);

