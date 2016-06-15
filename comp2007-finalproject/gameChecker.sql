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
	[TeamName] [varchar](50) NOT NULL,
	[TotalPoints] [int] NOT NULL,
	[Description] [varchar] (100) NOT NULL,
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
	[TeamID] [int] IDENTITY (1, 1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[Points] [int] NOT NULL,
	[Description] [varchar] (100) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

--Teams
INSERT INTO Teams(Name, Points, Description)
VALUES ('Team01', 5, 'GirlScout DropOuts');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team02', 3 , 'All Dodge No Balls');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team03', 8 , 'DodgieBirds');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team04', 1 , 'Gym Class Heroes');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team05', 6 , 'Not In the Face');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team06', 4 , 'Much Ado About Balls');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team07', 5 , 'Ballsagna');

INSERT INTO Teams(Name, Points, Description)
VALUES ('Team08', 5 , 'Balls & Dolls');


-- Games
INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 1', 2, 'Game between Team01 and Team02', 'Team01', 20, '2016-05-25');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 1', 2, 'Game between Team03 and Team04', 'Team03' , 10,'2016-05-25');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 1', 2, 'Game between Team05 and Team06', 'Team06' , 10,'2016-05-25');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 1', 2, 'Game between Team07 and Team08', 'Team08' , 2,'2016-05-25');

-- Game 2 Series--
INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 2', 2, 'Game between Team0 and Team04', 'Team03' , 10,'2016-06-01');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 2', 2, 'Game between Team01 and Team08', 'Team08' , 7,'2016-06-01');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 2', 2, 'Game between Team02 and Team07', 'Team07' , 0,'2016-06-01');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 2', 2, 'Game between Team03 and Team06', 'Team03' , 4,'2016-06-01');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 2', 3, 'Game between Team04 and Team05', 'Team05' , 1,'2016-06-01');

-- Game 3 Series--
INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 3', 3, 'Game between Team01 and Team05', 'Team05' , 4,'2016-06-08');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 3', 2, 'Game between Team02 and Team08', 'Team02' , 7,'2016-06-08');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 3', 3, 'Game between Team03 and Team07', 'Team03' , 4,'2016-06-08');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 3', 2, 'Game between Team04 and Team06', 'Team06' , 2,'2016-06-08');

-- Game 4 Series--
INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 4', 2, 'Game between Team01 and Team06', 'Team01' , 4,'2016-06-15');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 4', 3, 'Game between Team02 and Team05', 'Team05' , 8,'2016-06-15');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 4', 3, 'Game between Team03 and Team08', 'Team03' , 0,'2016-06-15');

INSERT INTO Games(Name, TotalPoints, Description, Winner, Spectators, GameDate)
VALUES('Game 4', 2, 'Game between Team04 and Team07', 'Team07' , 12,'2016-06-15');




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