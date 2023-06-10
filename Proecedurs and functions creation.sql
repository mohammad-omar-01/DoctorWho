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








