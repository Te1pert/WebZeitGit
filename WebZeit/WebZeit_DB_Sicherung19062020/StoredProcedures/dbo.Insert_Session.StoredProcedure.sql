/****** Object:  StoredProcedure [dbo].[Insert_Session]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Session]
@Kurzzeichen varchar(10),@SessionName varchar(45) as SET NOCOUNT ON;
BEGIN
	Insert into clientsession (Kurzzeichen,SessionName) VALUES (@Kurzzeichen, @SessionName);  
END 
GO
