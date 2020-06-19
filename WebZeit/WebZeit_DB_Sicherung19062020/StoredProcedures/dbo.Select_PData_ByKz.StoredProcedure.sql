/****** Object:  StoredProcedure [dbo].[Select_PData_ByKz]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_PData_ByKz] 
@Kz varchar(5) AS SET NOCOUNT ON;		
BEGIN
	SELECT idPersonal,Vorname,Nachname,idAbteilung,Telefonnummer,Kurzzeichen,UserPassword,isAdmin,AnwesendStatus from personal where Kurzzeichen = @Kz;
END
GO
