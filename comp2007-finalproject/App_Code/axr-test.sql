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
	[HomeTeamId] INT NOT NULL,
	[AwayTeamId] INT NOT NULL,
	[HomePoints] INT NOT NULL DEFAULT 0,
	[AwayPoints] INT NOT NULL DEFAULT 0,
	[Spectators] INT NOT NULL DEFAULT 0,
	[GameDate] DATETIME NOT NULL,
	CONSTRAINT fk_home FOREIGN KEY ([HomeTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
    CONSTRAINT fk_away FOREIGN KEY ([AwayTeamId]) REFERENCES [dbo].[Teams]([TeamId]),
	CONSTRAINT chk_teams CHECk ([HomeTeamId] <> [AwayTeamId]),
	CONSTRAINT chk_values_gte_0 CHECK ([HomePoints] >= 0 AND [AwayPoints] >= 0 AND [Spectators] >=0)
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



--select Home,t2.TeamName as Away,TotalPoints,Spectators ,GameDate from 
--	(select
--		  t1.TeamName as Home
--		, AwayTeamId as w
--		, (HomePoints+ AwayPoints) as TotalPoints 
--		, Spectators 
--		, GameDate
--	from Games
--	inner join 
--		Teams t1 on TeamId = HomeTeamId ) p
--inner join Teams t2 on TeamId = w

--select  t1.TeamName as Home, t2.TeamName as Away, (g.HomePoints+g.AwayPoints),g.Spectators from games g
--left join teams t1 on g.HomeTeamId = t1.TeamId
--left join teams t2 on g.AwayTeamId = t2.TeamId