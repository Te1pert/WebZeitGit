/****** Object:  StoredProcedure [dbo].[Select_UserSessions]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_UserSessions]
@sessionId varchar(50)

AS SET NOCOUNT ON;
BEGIN
    Select Stamp from clientsession where SessionName = @sessionId;
END
GO
