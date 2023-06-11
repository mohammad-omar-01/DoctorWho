----------------------------View Creation ---------------------------

alter VIEW  viewEpisodes AS 
	SELECT A.AuthorName ,D.DoctorName, E.Title , dbo.fnEnemies(EpisodeId) AS EnemyNames , dbo.fnCompanion(EpisodeId) AS CompainonNames

	FROM tblEpisode E left outer JOIN tblAuthor A ON 
	E.AuthorId=a.AuthorId 
	left outer JOIN tblDoctor D ON 
	E.DoctorID= D.DoctorId;

-------------------------#Test VIEW-----------------------
SELECT * FROM dbo.viewEpisodes WHERE DoctorName is Not Null;



	



	
