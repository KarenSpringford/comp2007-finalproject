DROP TABLE [dbo].[Teams]

CREATE TABLE [dbo].[Teams] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [TeamName] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


INSERT INTO [dbo].[Teams] VALUES ('Banana')

--Teams
INSERT INTO Teams VALUES ('GirlScout DropOuts');
INSERT INTO Teams VALUES ('All Dodge No Balls');
INSERT INTO Teams VALUES ('DodgieBirds');
INSERT INTO Teams VALUES ('Gym Class Heroes');
INSERT INTO Teams VALUES ('Not In the Face');
INSERT INTO Teams VALUES ('Much Ado About Balls');
INSERT INTO Teams VALUES ('Ballsagna');
INSERT INTO Teams VALUES ('Balls & Dolls');