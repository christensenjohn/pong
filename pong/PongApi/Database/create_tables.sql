CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Deleted] [datetime] NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Created]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Updated]
GO


CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[TeamSize] [int] NOT NULL,
    [CreatedByUserId] int NOT NULL,
    [UpdatedByUserId] int NOT NULL,
    [DeletedByUserId] int NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Deleted] [datetime] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Game] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Created]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Updated]
GO

CREATE TABLE [dbo].[GameParticipants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
    [GameId] [int] NOT NULL,
    [Accepted] [BIT] NOT NULL,
    [Won] [BIT] NOT NULL,
    [CreatedByUserId] int NOT NULL,
    [UpdatedByUserId] int NOT NULL,
    [DeletedByUserId] int NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Deleted] [datetime] NULL
) ON [PRIMARY]


GO

ALTER TABLE [dbo].[GameParticipants] ADD  CONSTRAINT [PK_GameParticipants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Game] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Created]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Updated]
GO

ALTER TABLE [dbo].[GameParticipants]  WITH CHECK ADD CONSTRAINT [FK_GameParticipants_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO

ALTER TABLE [dbo].[GameParticipants]  WITH CHECK ADD CONSTRAINT [FK_GameParticipants_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
GO

CREATE TABLE [dbo].[Rank](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RankScore] [float] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Deleted] [datetime] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Rank] ADD  CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Rank] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Created]
GO
ALTER TABLE [dbo].[Rank] ADD  DEFAULT (SYSUTCDATETIME()) FOR [Updated]
GO

ALTER TABLE [dbo].[Rank]  WITH CHECK ADD CONSTRAINT [FK_Rank_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
