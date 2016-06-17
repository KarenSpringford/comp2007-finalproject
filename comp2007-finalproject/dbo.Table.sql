DROP TABLE [dbo].[Teams]

CREATE TABLE [dbo].[Teams] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [TeamName] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


INSERT INTO [dbo].[Teams] VALUES ('Banana')