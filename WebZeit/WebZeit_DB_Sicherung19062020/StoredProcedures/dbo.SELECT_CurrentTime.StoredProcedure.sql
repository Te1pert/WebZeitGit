/****** Object:  StoredProcedure [dbo].[SELECT_CurrentTime]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_CurrentTime]
@PId int as SET NOCOUNT ON;
BEGIN
	DECLARE @DateExist as int;
	DECLARE @TagesIst as int;
	DECLARE @Kommen as datetime;
	DECLARE @Diff as int;
	DECLARE @anwesend as int;
	set @DateExist =  (SELECT count(zeitnachweis.datum) from zeitnachweis where idPersonal = @PId and Datum = (SELECT CONVERT(date,SYSDATETIME())));
    if @DateExist > 0
		BEGIN
			set @TagesIst = (SELECT TagesIst from zeitnachweis WHERE idPersonal = @PId and Datum = (SELECT CONVERT(date,SYSDATETIME())));
			set @Kommen = (Select Kommen from zeitnachweis WHERE idPersonal = @PId and Datum = (SELECT CONVERT(date,SYSDATETIME())));
			set @Diff = (Datediff(Second,@Kommen,SYSDATETIME()));
			set @anwesend = (Select personal.AnwesendStatus FROM personal WHERE idPersonal = @PId);
			select @Diff as diff, DATEPART(SECOND,@TagesIst) as tagesist;
			if @anwesend = 1 
			BEGIN
				Select @Diff+@TagesIst as zeit;
			END
			else
			BEGIN
				Select @TagesIst;
			END
		END
	
	else
	BEGIN
		SELECT 0;
    END 
END 
GO
