/****** Object:  StoredProcedure [dbo].[Select_Person_Abteilung]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Person_Abteilung]
@PAbteilung int as set nocount on;
BEGIN
	SELECT Personal.Vorname,Personal.Nachname,Telefonnummer,Abteilung.Abteilungsname,Personal.idPersonal,Personal.AnwesendStatus from Personal,Abteilung 
    WHERE  Abteilung.idAbteilung = @PAbteilung and Personal.idAbteilung = @PAbteilung;
END ;;
GO
