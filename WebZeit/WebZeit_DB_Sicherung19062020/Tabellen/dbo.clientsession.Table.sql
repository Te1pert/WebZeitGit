/****** Object:  Table [dbo].[clientsession]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientsession](
	[idClientSession] [int] IDENTITY(1,1) NOT NULL,
	[Kurzzeichen] [varchar](10) NOT NULL,
	[SessionName] [varchar](45) NOT NULL,
	[Stamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClientSession] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clientsession] ON 

INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (1, N'trt', N'4644642f-9a32-101c-cb50-185253497734', CAST(N'2020-05-12T12:49:29.153' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (2, N'trt', N'15795703-3667-f653-3779-b0feac5a2efa', CAST(N'2020-05-12T12:50:38.290' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (3, N'trt', N'e277b752-7228-6335-b5de-d2b80e88f681', CAST(N'2020-05-12T12:53:23.693' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (4, N'trt', N'520f4ea0-22d7-2940-b61e-c5a6a8c03438', CAST(N'2020-05-12T13:01:58.430' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (5, N'trt', N'4cad05f6-1e6c-b63e-92b5-c872ee5d2fc7', CAST(N'2020-05-12T13:05:48.823' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (6, N'trt', N'32fc42a5-a382-5302-ebf0-959c928c8ce0', CAST(N'2020-05-12T13:15:21.010' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (7, N'trt', N'bc7e68cd-41db-a618-a971-28e2b24139e1', CAST(N'2020-05-12T13:55:51.603' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (8, N'trt', N'338c2163-c366-9c23-64cf-9b83f272cc38', CAST(N'2020-05-12T14:20:02.853' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (9, N'trt', N'84fa8598-2a2e-58cc-48b7-a3e20fcadcc3', CAST(N'2020-05-12T14:28:32.270' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (10, N'trt', N'3a767981-cb22-abe7-c633-86ca14443735', CAST(N'2020-05-12T14:37:10.093' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (11, N'trt', N'01aefcfb-1dae-9210-8b6d-bf146b231a99', CAST(N'2020-05-12T14:40:57.507' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (12, N'trt', N'c2f9ee2c-0aba-30df-3e4c-77baf1d3f572', CAST(N'2020-05-12T15:16:30.820' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (13, N'cbo', N'aac3e130-bcdc-8ee3-661b-68ad31f36415', CAST(N'2020-05-12T15:18:31.473' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (14, N'trt', N'6a7312d6-97af-01a5-537c-247ce9ab854a', CAST(N'2020-05-12T15:20:02.117' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (15, N'trt', N'e6322837-cafa-634d-508e-ad8d6c950547', CAST(N'2020-05-12T15:20:58.133' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (16, N'trt', N'cdde9d55-1934-f261-d384-57819300f8ee', CAST(N'2020-05-12T19:32:52.180' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (17, N'trt', N'e8655cad-4fd0-d928-abbc-586b40ca7e58', CAST(N'2020-05-13T20:02:53.350' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (18, N'trt', N'e8655cad-4fd0-d928-abbc-586b40ca7e58', CAST(N'2020-05-13T20:05:50.287' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (19, N'trt', N'b8f6f346-b540-fa00-63f9-b495650b2749', CAST(N'2020-05-13T20:26:11.883' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (20, N'trt', N'071e16c3-b3fd-01ad-b136-b6702c1e6c3d', CAST(N'2020-05-13T21:03:30.110' AS DateTime))
INSERT [dbo].[clientsession] ([idClientSession], [Kurzzeichen], [SessionName], [Stamp]) VALUES (21, N'trt', N'9cc0cfa5-9bbf-9be1-5a27-f6f5d61feda9', CAST(N'2020-05-14T13:00:22.320' AS DateTime))
SET IDENTITY_INSERT [dbo].[clientsession] OFF
GO
ALTER TABLE [dbo].[clientsession] ADD  DEFAULT (dateadd(hour,(2),getdate())) FOR [Stamp]
GO
