CREATE TABLE [dbo].[employees] (
    [employee_id]     INT           IDENTITY (1, 1) NOT NULL,
    [employee_number] VARCHAR (50)  NOT NULL,
    [employee_name]   VARCHAR (50)  NOT NULL,
    [date_of_joining] VARCHAR (50)  NULL,
    [entity]          VARCHAR (50)  NULL,
    [phone]           VARCHAR (50)  NULL,
    [email]           VARCHAR (50)  NULL,
    [santa_number]    VARCHAR (50)  NULL,
    [team]            VARCHAR (100) NULL,
    [imagePath]       VARCHAR (100) NULL,
    CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED ([employee_id] ASC)
);

