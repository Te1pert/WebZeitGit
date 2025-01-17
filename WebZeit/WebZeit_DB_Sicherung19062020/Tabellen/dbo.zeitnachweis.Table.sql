/****** Object:  Table [dbo].[zeitnachweis]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zeitnachweis](
	[IdPersonal] [int] NOT NULL,
	[Datum] [datetime] NOT NULL,
	[Kommen] [datetime] NULL,
	[Gehen] [datetime] NULL,
	[TagesIst] [int] NULL,
	[ZeitCounter] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPersonal] ASC,
	[Datum] ASC,
	[ZeitCounter] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T17:04:14.623' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:14:25.193' AS DateTime), CAST(N'2020-06-17T20:15:06.380' AS DateTime), 12, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-26T00:00:00.000' AS DateTime), CAST(N'2020-05-26T14:42:07.387' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-26T00:00:00.000' AS DateTime), CAST(N'2020-05-26T14:42:34.850' AS DateTime), CAST(N'2020-06-17T20:15:06.380' AS DateTime), 12, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-26T00:00:00.000' AS DateTime), CAST(N'2020-05-26T14:59:17.303' AS DateTime), CAST(N'2020-06-17T20:39:05.760' AS DateTime), 13, 2)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-05-30T00:00:00.000' AS DateTime), CAST(N'2020-05-30T15:35:40.277' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-03T00:00:00.000' AS DateTime), CAST(N'2020-06-03T14:45:41.950' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-03T00:00:00.000' AS DateTime), CAST(N'2020-06-03T14:45:45.457' AS DateTime), CAST(N'2020-06-17T20:15:06.380' AS DateTime), 12, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-11T00:00:00.000' AS DateTime), CAST(N'2020-06-11T20:44:18.463' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-13T00:00:00.000' AS DateTime), CAST(N'2020-06-13T11:23:01.213' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-15T00:00:00.000' AS DateTime), CAST(N'2020-06-15T20:18:07.890' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-17T00:00:00.000' AS DateTime), CAST(N'2020-06-17T18:13:55.647' AS DateTime), CAST(N'2020-06-17T18:14:02.003' AS DateTime), 7, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-17T00:00:00.000' AS DateTime), CAST(N'2020-06-17T20:15:01.050' AS DateTime), CAST(N'2020-06-17T20:15:06.380' AS DateTime), 12, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-17T00:00:00.000' AS DateTime), CAST(N'2020-06-17T20:39:04.590' AS DateTime), CAST(N'2020-06-17T20:39:05.760' AS DateTime), 13, 2)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (1, CAST(N'2020-06-17T00:00:00.000' AS DateTime), CAST(N'2020-06-17T20:41:20.697' AS DateTime), NULL, 0, 3)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (2, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:38:43.687' AS DateTime), CAST(N'2020-06-16T07:03:45.730' AS DateTime), 13, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (2, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(N'2020-06-16T07:03:32.873' AS DateTime), CAST(N'2020-06-16T07:03:45.730' AS DateTime), 13, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (2, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(N'2020-06-16T07:03:50.073' AS DateTime), CAST(N'2020-06-16T07:03:51.263' AS DateTime), 14, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (2, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(N'2020-06-16T07:03:52.420' AS DateTime), CAST(N'2020-06-16T07:03:53.263' AS DateTime), 15, 2)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T16:40:08.050' AS DateTime), CAST(N'2020-06-13T18:06:34.373' AS DateTime), 21, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T16:40:50.883' AS DateTime), CAST(N'2020-05-23T16:41:03.313' AS DateTime), 25, 1)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T16:41:15.843' AS DateTime), CAST(N'2020-05-23T16:41:24.237' AS DateTime), 34, 2)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:16:06.037' AS DateTime), CAST(N'2020-05-23T19:16:12.510' AS DateTime), 40, 3)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:16:13.677' AS DateTime), CAST(N'2020-05-23T19:16:47.337' AS DateTime), 74, 4)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:36:01.933' AS DateTime), CAST(N'2020-05-23T19:36:05.167' AS DateTime), 78, 5)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-05-23T00:00:00.000' AS DateTime), CAST(N'2020-05-23T19:36:11.153' AS DateTime), CAST(N'2020-05-23T19:36:14.773' AS DateTime), 81, 6)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (3, CAST(N'2020-06-13T00:00:00.000' AS DateTime), CAST(N'2020-06-13T18:06:13.513' AS DateTime), CAST(N'2020-06-13T18:06:34.373' AS DateTime), 21, 0)
INSERT [dbo].[zeitnachweis] ([IdPersonal], [Datum], [Kommen], [Gehen], [TagesIst], [ZeitCounter]) VALUES (5, CAST(N'2020-06-13T00:00:00.000' AS DateTime), CAST(N'2020-06-13T18:10:54.763' AS DateTime), CAST(N'2020-06-13T18:10:58.073' AS DateTime), 4, 0)
GO
ALTER TABLE [dbo].[zeitnachweis] ADD  DEFAULT (NULL) FOR [Kommen]
GO
ALTER TABLE [dbo].[zeitnachweis] ADD  DEFAULT (NULL) FOR [Gehen]
GO
ALTER TABLE [dbo].[zeitnachweis] ADD  DEFAULT ('0') FOR [TagesIst]
GO
