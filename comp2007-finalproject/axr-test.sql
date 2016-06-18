DROP TABLE  [dbo].[Games];
GO
DROP TABLE  [dbo].[Teams];
GO
CREATE TABLE [dbo].[Teams]
(
	[TeamId] INT NOT NULL PRIMARY KEY IDENTITY,
	[TeamName] VARCHAR (50) NOT NULL UNIQUE 
);
GO
CREATE TABLE [dbo].[Games]
(
	[GameId] INT NOT NULL PRIMARY KEY,
	[HomeTeamId] INT NOT NULL,
	[AwayTeamId] INT NOT NULL,
	[HomePoints] INT NOT NULL DEFAULT 0,
	[AwayPoints] INT NOT NULL DEFAULT 0,
	[Spectators] INT NOT NULL DEFAULT 0,
	[GameDate] INT NOT NULL,
	CONSTRAINT fk_home FOREIGN KEY ([HomeTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
    CONSTRAINT fk_away FOREIGN KEY ([AwayTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
	CONSTRAINT chk_teams CHECk ([HomeTeamId] <> [AwayTeamId]),
	CONSTRAINT chk_values_gte_0 CHECK ([HomePoints] >= 0 AND [AwayPoints] >= 0 AND [Spectators] >=0)
);
GO



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

