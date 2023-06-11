USE [DoctorWho]
GO
/****** Object:  UserDefinedFunction [dbo].[fnCompanion]    Script Date: 6/11/2023 4:51:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[fnCompanion] (@episodeId int)
RETURNS VARCHAR(max) AS
	BEGIN
	DECLARE @resultSet VARCHAR(MAX)=' '
	SELECT  @resultSet= CONCAT(C.CompanionName,' , ',@resultSet)
	FROM tblCompanion C INNER JOIN tblEpisodeCompanion EC ON 
	C.CompanionId=EC.CompanionId
	WHERE Ec.EpisodeId=@episodeId;
	SET @resultSet = TRIM(', ' FROM @resultSet);

    RETURN @resultSet;
END;