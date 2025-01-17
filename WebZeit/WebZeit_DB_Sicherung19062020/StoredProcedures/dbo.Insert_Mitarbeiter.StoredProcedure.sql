/****** Object:  StoredProcedure [dbo].[Insert_Mitarbeiter]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Mitarbeiter]
@_idAbteilung int,@_Kurzzeichen varchar(10),@_Vorname varchar(50), @_Nachname varchar(50),@_Telefonnummer varchar(50),@_UserPassword varchar(50),@_isAdmin tinyint as SET NOCOUNT ON;
BEGIN
	insert into Personal(idAbteilung,Kurzzeichen,Vorname,Nachname,Telefonnummer,UserPassword,isAdmin) VALUES(
		@_idAbteilung,
        @_Kurzzeichen,
        @_Vorname,
        @_Nachname,
        @_Telefonnummer,
        @_UserPassword,
        @_isAdmin
        );
END
GO
