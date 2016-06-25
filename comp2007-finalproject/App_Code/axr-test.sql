DROP TABLE  [dbo].[Games];
DROP TABLE  [dbo].[Teams];
CREATE TABLE [dbo].[Teams]
(
	[TeamId] INT NOT NULL PRIMARY KEY IDENTITY,
	[TeamName] VARCHAR (50) NOT NULL UNIQUE 
);
CREATE TABLE [dbo].[Games]
(
	[GameId] INT NOT NULL PRIMARY KEY IDENTITY,
	[GameName] VARCHAR (50) NOT NULL,
	[HomeTeamId] INT NOT NULL,
	[AwayTeamId] INT NOT NULL,
	[HomePoints] INT NOT NULL DEFAULT 0,
	[AwayPoints] INT NOT NULL DEFAULT 0,
	[Spectators] INT NOT NULL DEFAULT 0,
	[GameDate] DATETIME NOT NULL,
	CONSTRAINT fk_home FOREIGN KEY ([HomeTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
    CONSTRAINT fk_away FOREIGN KEY ([AwayTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
	CONSTRAINT chk_teams CHECk ([HomeTeamId] <> [AwayTeamId]),
	CONSTRAINT chk_values_gte_0 CHECK ([Spectators] >=0),
	CONSTRAINT score_valid CHECK ([HomePoints] >=0 AND [HomePoints] <=3 AND [AwayPoints] >=0 AND [AwayPoints] <= 3)
);



--Teams
INSERT INTO Teams 
VALUES ('GirlScout DropOuts')
, ('All Dodge No Balls')
, ('DodgieBirds')
, ('Gym Class Heroes')
, ('Not In the Face')
, ('Much Ado About Balls')
, ('Ballsagna')
, ('Balls & Dolls');

INSERT INTO Games
VALUES ('Initial', 1, 2, 1,2,1000, '2016-05-13 12:00:00')
, ('Revenge', 1, 2, 3,1,1000, '2016-05-14 12:00:00')
, ('Comeback', 1, 2, 2,0,1000, '2016-05-15 12:00:00')
, ('Series End', 1, 2, 3,1,1000, '2016-05-16 12:00:00')

