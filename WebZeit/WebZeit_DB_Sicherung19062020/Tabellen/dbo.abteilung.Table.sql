/****** Object:  Table [dbo].[abteilung]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abteilung](
	[idAbteilung] [int] IDENTITY(1,1) NOT NULL,
	[Abteilungsname] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAbteilung] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[abteilung] ON 

INSERT [dbo].[abteilung] ([idAbteilung], [Abteilungsname]) VALUES (1, N'EO')
INSERT [dbo].[abteilung] ([idAbteilung], [Abteilungsname]) VALUES (2, N'HR')
INSERT [dbo].[abteilung] ([idAbteilung], [Abteilungsname]) VALUES (3, N'MO')
INSERT [dbo].[abteilung] ([idAbteilung], [Abteilungsname]) VALUES (4, N'KON')
SET IDENTITY_INSERT [dbo].[abteilung] OFF
GO
