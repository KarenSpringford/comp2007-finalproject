DROP TABLE Games;
DROP TABLE Teams;

/* Object: Table [dbo].[Games] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY (1, 1) NOT NULL,
	[Description] [varchar] (100) NOT NULL,
	[TotalPoints] [int] NOT NULL Default '0',
	[Winner] [varchar](50),
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
	[Points] [int] NOT NULL DEFAULT ' ',
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

--Teams
INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('GirlScout DropOuts', 5);

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('All Dodge No Balls', 3);

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('DodgieBirds', 8 );

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('Gym Class Heroes', 1);

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('Not In the Face', 6 );

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('Much Ado About Balls', 4 );

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('Ballsagna', 5 );

INSERT INTO Teams(TeamID, TeamName, Points)
VALUES ('Balls & Dolls', 5 );


-- Games
INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('GirlScout DropOuts vs All Dodge No Balls', 2, 'GirlScout DropOuts', 20, '2016-05-25');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('DodgieBirds vs Gym Class Heroes ', 2, 'DodgieBirds' , 10,'2016-05-25');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('Not in the Face vs Much Ado About Balls', 2, 'Much Ado About Balls' , 10,'2016-05-25');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('Ballsagna vs Balls & Dolls', 2, 'Balls & Dolls' , 2,'2016-05-25');

-- Game 2 Series--
INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('GirlScout DropOuts vs Balls & Dolls', 2, 'Balls & Dolls' , 7,'2016-06-01');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES( 'All Dodge No Balls vs Ballsagna', 2, 'Ballsagna' , 0,'2016-06-01');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('DodgieBirds vs Much Ado About Balls', 2, 'DodgieBirds' , 4,'2016-06-01');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('Gym Class Heroes vs Not In the Face', 3, 'Not in the Face' , 1,'2016-06-01');

-- Game 3 Series--
INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('GirlScout DropOuts vs Not In the Face', 3, 'Not In the Face' , 4,'2016-06-08');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('All Dodge No Balls and Balls & Dolls', 2, 'All Dodge No Balls' , 7,'2016-06-08');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('DodgieBirds and Ballsagna', 3, 'Ballsagna' , 4,'2016-06-08');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('Gym Class Heroes and Much Ado About Balls', 2, 'Much Ado About Balls' , 2,'2016-06-08');

-- Game 4 Series--
INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('GirlScout DropOuts vs Much Ado About Balls', 2, 'GirlScout DropOuts' , 4,'2016-06-15');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('All Dodge No Balls and Not In the Face', 3,  'Not In the Face' , 8,'2016-06-15');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('DodgieBirds and Balls & Dolls', 3, 'DodgieBirds' , 0,'2016-06-15');

INSERT INTO Games(GameID, Description, TotalPoints, Winner, Spectators, GameDate)
VALUES('Gym Class Heroes and Ballsagna', 2, 'Ballsagna' , 12,'2016-06-15');


SELECT * FROM Teams;
SELECT * FROM Games;


-- Object: Table [dbo].[Users] 
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [dbo].[Players](
-- [PlayerID] [int] IDENTITY (1, 1) NOT NULL,
-- [UserName] [varchar](50) NOT NULL,
-- Email] [varchar] (50) NOT NULL,
-- [Password] [varchar] (100) NOT NULL,
-- CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
-- (
-- [UserID] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- ) ON [PRIMARY]
-- GO
-- SET ANSI_PADDING OFF
-- GO