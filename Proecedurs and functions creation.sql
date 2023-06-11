CREATE PROCEDURE inseartAuthors @Name nvarchar(30)
AS
insert into dbo.tblAuthor (AuthorName) values (@Name);
go;

CREATE PROCEDURE inseartEnemy @Name nvarchar(30), @Description text
AS
insert into dbo.tblEnemy(EnemyName,Description) values (@Name,@Description);
go;

CREATE PROCEDURE inseartDoctor @Number int, @Name nvarchar(30),@Date date,@Start date,@end Date
AS
insert into dbo.tblDoctor(DoctorNumber,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate) values (@Number,@Name,@Date,@Start,@end);
go;

CREATE PROCEDURE inseartCompanion @Name nvarchar(30),@WhoPlayed nvarchar(45)
AS
insert into dbo.tblCompanion (CompanionName,WhoPlayed) values (@Name,@WhoPlayed)
go;

CREATE PROCEDURE AddEpisode @SeriesNum int,@EpisodeNum int ,@EpisodeType  nvarchar(35),@title  nvarchar(35) ,
@dateRealsed date,@AutorId int,@DoctorId int,
AS
insert into dbo.tblCompanion (CompanionName,WhoPlayed) values (@Name,@WhoPlayed)

--------------------------------FunctionCompanionShower----------------------
-----ReturnAsTable--------------------------
CREATE FUNCTION [dbo].[fnCompanion] (@episodeId int)
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
CREATE FUNCTION fnCompanions (@episodeId INT)
RETURNS TABLE AS
RETURN
	SELECT DISTINCT C.CompanionName
	FROM tblEpisodeCompanion EC INNER JOIN tblCompanion C ON 
		EC.CompanionId=C.CompanionId
	WHERE EC.EpisodeId=@episodeId;

CREATE FUNCTION [dbo].fnEnemies (@episodeId int)
RETURNS VARCHAR(max) AS
	BEGIN
	DECLARE @resultSet VARCHAR(MAX)=' '
	SELECT  @resultSet= CONCAT(E.EnemyName,' , ',@resultSet)
	FROM tblEnemy E INNER JOIN tblEpisodeEnemy EE ON 
	E.EnermyId=EE.EnemyId
	WHERE EE.EpisodeId=@episodeId;
	SET @resultSet = TRIM(', ' FROM @resultSet);

    RETURN @resultSet;
END;












