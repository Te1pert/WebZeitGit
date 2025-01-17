/****** Object:  Table [dbo].[nachrichten]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nachrichten](
	[idNachrichten] [int] IDENTITY(1,1) NOT NULL,
	[AbsenderKz] [varchar](3) NULL,
	[EmpfaengerKz] [varchar](45) NULL,
	[NachrichtText] [varchar](5000) NULL,
	[SendeDatum] [datetime] NOT NULL,
	[Betreff] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNachrichten] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[nachrichten] ON 

INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (1, N'trt', N'trt', N'sfdf', CAST(N'2020-05-18T21:06:15.397' AS DateTime), N'sfsdsf')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (2, N'trt', N'fpr', N'SDFsdf', CAST(N'2020-05-18T21:14:05.053' AS DateTime), N'Test2')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (3, N'mmu', N'fpr', N'Hallo,

Mfg Tobi', CAST(N'2020-05-23T19:35:27.227' AS DateTime), N'Hallo')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (4, N'trt', N'fpr', N'Nachricht', CAST(N'2020-06-11T16:37:51.900' AS DateTime), N'Test')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (5, N'mmu', N'trt', N'Test', CAST(N'2020-06-13T18:07:03.463' AS DateTime), N'Hallo')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (7, N'trt', N'trt', N'Hallo Herr Haber,
willkommen im Zeiterfassungsprogramm WebZeit!
Viel Spaß!', CAST(N'2020-06-15T19:34:59.653' AS DateTime), N'Willkommen!')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (8, N'trt', N'fpr', N'', CAST(N'2020-06-15T19:40:41.513' AS DateTime), N'xcy')
INSERT [dbo].[nachrichten] ([idNachrichten], [AbsenderKz], [EmpfaengerKz], [NachrichtText], [SendeDatum], [Betreff]) VALUES (9, N'trt', N'fpr', N'Hallo Herr blb,

es ist dunkel.', CAST(N'2020-06-15T20:17:19.717' AS DateTime), N'hallo')
SET IDENTITY_INSERT [dbo].[nachrichten] OFF
GO
ALTER TABLE [dbo].[nachrichten] ADD  DEFAULT (getdate()) FOR [SendeDatum]
GO
