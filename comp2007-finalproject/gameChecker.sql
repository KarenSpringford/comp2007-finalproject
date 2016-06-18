DROP TABLE dbo.Games;
DROP TABLE dbo.Teams;

/* Object: Table [dbo].[Games] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY (1, 1) NOT NULL,
	[HomeTeam ID] [int] NOT NULL,
	[AwayTeam ID] [int] NOT NULL,
	[HomePoints] [int] NOT NULL Default '0',
	[AwayPoints] [int] NOT NULL Default '0',
	[Spectators] [int] NOT NULL,
	[GameDate] [date] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table [dbo].[Teams] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] NOT NULL Primary Key Identity,
	[TeamName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO



--	[GameID] [int] IDENTITY (1, 1) NOT NULL,
--	[HomeTeam ID] [int] NOT NULL,
--	[AwayTeam ID] [int] NOT NULL,
--	[HomePoints] [int] NOT NULL Default '0',
--	[AwayPoints] [int] NOT NULL Default '0',
--	[Spectators] [int] NOT NULL,
--	[GameDate] [date] NOT NULL,


---- Games
--INSERT INTO Games(Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('GirlScout DropOuts vs All Dodge No Balls', 2, 'GirlScout DropOuts', 20, '2016-05-25');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('DodgieBirds vs Gym Class Heroes ', 2, 'DodgieBirds' , 10,'2016-05-25');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('Not in the Face vs Much Ado About Balls', 2, 'Much Ado About Balls' , 10,'2016-05-25');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('Ballsagna vs Balls & Dolls', 2, 'Balls & Dolls' , 2,'2016-05-25');

---- Game 2 Series--
--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('GirlScout DropOuts vs Balls & Dolls', 2, 'Balls & Dolls' , 7,'2016-06-01');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES( 'All Dodge No Balls vs Ballsagna', 2, 'Ballsagna' , 0,'2016-06-01');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('DodgieBirds vs Much Ado About Balls', 2, 'DodgieBirds' , 4,'2016-06-01');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('Gym Class Heroes vs Not In the Face', 3, 'Not in the Face' , 1,'2016-06-01');

---- Game 3 Series--
--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('GirlScout DropOuts vs Not In the Face', 3, 'Not In the Face' , 4,'2016-06-08');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('All Dodge No Balls and Balls & Dolls', 2, 'All Dodge No Balls' , 7,'2016-06-08');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('DodgieBirds and Ballsagna', 3, 'Ballsagna' , 4,'2016-06-08');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('Gym Class Heroes and Much Ado About Balls', 2, 'Much Ado About Balls' , 2,'2016-06-08');

---- Game 4 Series--
--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('GirlScout DropOuts vs Much Ado About Balls', 2, 'GirlScout DropOuts' , 4,'2016-06-15');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('All Dodge No Balls and Not In the Face', 3,  'Not In the Face' , 8,'2016-06-15');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('DodgieBirds and Balls & Dolls', 3, 'DodgieBirds' , 0,'2016-06-15');

--INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
--VALUES('Gym Class Heroes and Ballsagna', 2, 'Ballsagna' , 12,'2016-06-15');


SELECT * FROM Teams;
SELECT * FROM Games;


