/****** Object:  StoredProcedure [dbo].[Select_LoginUser]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_LoginUser]
@PKz varchar(5) as SET NOCOUNT ON;
BEGIN
	select Vorname,Nachname,idAbteilung,Telefonnummer, idPersonal,AnwesendStatus from Personal where Kurzzeichen = @Pkz; 
END ;;
GO
