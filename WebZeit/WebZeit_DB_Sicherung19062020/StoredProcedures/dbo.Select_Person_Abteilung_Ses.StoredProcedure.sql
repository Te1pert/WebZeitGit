/****** Object:  StoredProcedure [dbo].[Select_Person_Abteilung_Ses]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Person_Abteilung_Ses]
@SessionID varchar(45) as Set nocount on;

BEGIN
	DECLARE @PKurzzeichen as varchar(3);
	DECLARE @PAbteilung as int;
	set @PKurzzeichen = (SELECT Kurzzeichen from clientsession where SessionName = @SessionID);
    set @PAbteilung = (SELECT IdAbteilung from personal where Kurzzeichen = @PKurzzeichen);
	SELECT Personal.Vorname,Personal.Nachname,Telefonnummer,Abteilung.Abteilungsname,Personal.idPersonal,Personal.AnwesendStatus from Personal,Abteilung 
    WHERE  Abteilung.idAbteilung = @PAbteilung and Personal.idAbteilung = @PAbteilung;
END ;;
GO
