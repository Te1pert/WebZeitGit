/****** Object:  StoredProcedure [dbo].[SELECT_Zeitnachweise_ByPId]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SELECT_Zeitnachweise_ByPId]
@PId int AS SET NOCOUNT ON;
BEGIN
	SELECT zeitnachweis.Datum,zeitnachweis.Kommen,zeitnachweis.Gehen,zeitnachweis.TagesIst from zeitnachweis where IdPersonal =  @PId;
END
GO
