/****** Object:  Table [dbo].[personal]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[idPersonal] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](45) NOT NULL,
	[Nachname] [varchar](45) NOT NULL,
	[idAbteilung] [int] NOT NULL,
	[Telefonnummer] [varchar](45) NULL,
	[Kurzzeichen] [varchar](3) NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[isAdmin] [tinyint] NULL,
	[Zeitnachweis] [varchar](10) NULL,
	[AnwesendStatus] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[personal] ON 

INSERT [dbo].[personal] ([idPersonal], [Vorname], [Nachname], [idAbteilung], [Telefonnummer], [Kurzzeichen], [UserPassword], [isAdmin], [Zeitnachweis], [AnwesendStatus]) VALUES (1, N'Tobias', N'Reipert', 1, N'1879', N'trt', N'Y5MGh8aW6/4=', 1, NULL, 1)
INSERT [dbo].[personal] ([idPersonal], [Vorname], [Nachname], [idAbteilung], [Telefonnummer], [Kurzzeichen], [UserPassword], [isAdmin], [Zeitnachweis], [AnwesendStatus]) VALUES (2, N'Fabian', N'Präger', 1, N'1234', N'fpr', N'Y5MGh8aW6/4=', 1, NULL, 0)
INSERT [dbo].[personal] ([idPersonal], [Vorname], [Nachname], [idAbteilung], [Telefonnummer], [Kurzzeichen], [UserPassword], [isAdmin], [Zeitnachweis], [AnwesendStatus]) VALUES (3, N'Max', N'Mustermann', 2, N'1234', N'mmu', N'Y5MGh8aW6/4=', 0, NULL, 0)
INSERT [dbo].[personal] ([idPersonal], [Vorname], [Nachname], [idAbteilung], [Telefonnummer], [Kurzzeichen], [UserPassword], [isAdmin], [Zeitnachweis], [AnwesendStatus]) VALUES (4, N'Perter', N'Müller', 3, N'4561', N'pmu', N'Y5MGh8aW6/4=', 1, NULL, 0)
INSERT [dbo].[personal] ([idPersonal], [Vorname], [Nachname], [idAbteilung], [Telefonnummer], [Kurzzeichen], [UserPassword], [isAdmin], [Zeitnachweis], [AnwesendStatus]) VALUES (5, N'Nico', N'Botta', 4, N'5655', N'nbo', N'Y5MGh8aW6/4=', 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[personal] OFF
GO
ALTER TABLE [dbo].[personal] ADD  DEFAULT (NULL) FOR [Telefonnummer]
GO
ALTER TABLE [dbo].[personal] ADD  DEFAULT (NULL) FOR [Kurzzeichen]
GO
ALTER TABLE [dbo].[personal] ADD  DEFAULT ('0') FOR [isAdmin]
GO
ALTER TABLE [dbo].[personal] ADD  DEFAULT (NULL) FOR [Zeitnachweis]
GO
ALTER TABLE [dbo].[personal] ADD  DEFAULT ('0') FOR [AnwesendStatus]
GO
