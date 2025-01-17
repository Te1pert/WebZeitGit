/****** Object:  Table [dbo].[logs]    Script Date: 19.06.2020 12:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logs](
	[idLog] [int] NOT NULL,
	[LogText] [varchar](45) NULL,
	[CurrentTimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[logs] ADD  DEFAULT (NULL) FOR [CurrentTimeStamp]
GO
