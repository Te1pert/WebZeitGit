/****** Object:  StoredProcedure [dbo].[Update_Stamp_ByPId]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Stamp_ByPId]
@PId int AS SET NOCOUNT ON;
BEGIN
	DECLARE @AnwStatus as int;
	DECLARE @CurZeitCounter as int;
	DECLARE @CurTagesIst as int;
	DECLARE @Kommen as DateTime;

	

	if @CurTagesIst is null set @CurTagesIst = 0;  
	
	set @CurZeitCounter = (SELECT Max(dbo.zeitnachweis.ZeitCounter) from zeitnachweis 
		where IdPersonal = @PId and Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime())))
		);
	if @CurZeitCounter is null BEGIN set @CurZeitCounter = -1 END;

	set @AnwStatus = (SELECT dbo.personal.AnwesendStatus from dbo.personal where idPersonal = @PId);

	set @CurTagesIst = (SELECT TagesIst from dbo.zeitnachweis where 
		IdPersonal = @PId and 
		ZeitCounter = @CurZeitCounter-1 and
		Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))));

	set @Kommen = (SELECT dbo.zeitnachweis.Kommen from zeitnachweis where
		IdPersonal = @PId and 
		ZeitCounter = @CurZeitCounter and
		Datum = (SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))));
	Select @Kommen as Kommen;
	select @AnwStatus as anwSt;
	select @CurZeitCounter as CurZeitCou;
	select @CurTagesIst as CurTaIst;
	if @AnwStatus = 0
		BEGIN

			INSERT INTO dbo.zeitnachweis(Datum,Kommen,ZeitCounter,IdPersonal)
				VALUES(
				(SELECT CONVERT(date,dateadd(hour, 2, sysdatetime()))),
				dateadd(hour, 2, sysdatetime()),
				@CurZeitCounter+1,
				@PId);
			UPDATE dbo.personal set AnwesendStatus = 1 where idPersonal = @PId;
		END
	ELSE 
		BEGIN
			if @CurZeitCounter = 0 
			BEGIN 
				Update dbo.zeitnachweis set 
					Gehen = dateadd(hour, 2, sysdatetime()),
					TagesIst = CONVERT(int,
						(Select DATEDIFF(second,@Kommen,dateadd(hour, 2, sysdatetime()))))
					WHERE IdPersonal = @PId and ZeitCounter = @CurZeitCounter;
			
				Update dbo.personal set AnwesendStatus = 0 where idPersonal = @PId;
			END
			ELSE 
			BEGIN
				Update dbo.zeitnachweis set 
					Gehen = dateadd(hour, 2, sysdatetime()),
					TagesIst = CONVERT(int,
						(Select DATEDIFF(second,@Kommen,dateadd(hour, 2, sysdatetime())))+@CurTagesIst)
					WHERE IdPersonal = @PId and ZeitCounter = @CurZeitCounter;
			
				Update dbo.personal set AnwesendStatus = 0 where idPersonal = @PId;
			END
		END
END
GO
