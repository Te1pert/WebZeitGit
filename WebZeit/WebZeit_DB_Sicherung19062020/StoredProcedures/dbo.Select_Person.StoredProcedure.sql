/****** Object:  StoredProcedure [dbo].[Select_Person]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Person] AS SET NOCOUNT ON;
BEGIN
	SELECT idPersonal,Vorname,Nachname,idAbteilung, Telefonnummer,Kurzzeichen from Personal;
END ;;
GO
