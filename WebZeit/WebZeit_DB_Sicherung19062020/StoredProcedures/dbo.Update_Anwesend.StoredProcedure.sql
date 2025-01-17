/****** Object:  StoredProcedure [dbo].[Update_Anwesend]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Anwesend]
@Pid int, @AnwValue int as SET NOCOUNT ON;
BEGIN
	
    DECLARE @CurrentStatus as int;
	DECLARE @DateExist as int;
	DECLARE @Kommen as datetime;
	DECLARE @Gehen as datetime;
	SET @CurrentStatus = (SELECT personal.AnwesendStatus FROM personal WHERE idPersonal = @Pid);
    SET @DateExist =  (SELECT count(zeitnachweis.datum) from zeitnachweis where idPersonal = @Pid and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))));
	SELECT @CurrentStatus, @DateExist;
    
	IF @CurrentStatus = 0 
	BEGIN
        IF @DateExist = 0 
		BEGIN
			INSERT INTO zeitnachweis(IdPersonal,Datum,Kommen) values (@Pid, (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))),dateadd(hour, 2, sysdatetime()));
        END
		ELSE
		BEGIN
			UPDATE zeitnachweis set Kommen = dateadd(hour, 2, dateadd(hour, 2, sysdatetime())) where idPersonal = @Pid and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime())));
		END
        Update Personal set AnwesendStatus = 1 where idPersonal = @Pid;
    END
    ELSE
	BEGIN
		IF @CurrentStatus = 1 and @AnwValue = 0 
			BEGIN
			Update zeitnachweis set Gehen = dateadd(hour, 2, dateadd(hour, 2, sysdatetime())) where idPersonal = @Pid and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime())));
            set @Kommen = (SELECT Kommen from zeitnachweis where idPersonal = @Pid and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))));
            
			set @Gehen = (SELECT TagesIst from zeitnachweis where IdPersonal = @Pid and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))));
			Update zeitnachweis set TagesIst = (SELECT CONVERT(int,((SELECT DATEDIFF(second,@Kommen,dateadd(hour, 2, sysdatetime())))+@Gehen))) where idPersonal = @Pid;	
			
            Update Personal set AnwesendStatus = 0 where idPersonal = @Pid;
        END
    END

	
END
GO
