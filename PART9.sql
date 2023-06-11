CREATE PROCEDURE spSummariseEpisodes
AS
SELECT TOP(3) C.CompanionId as id, COUNT(*) AS Apperence,C.CompanionName,' ' AS EnemyName
FROM [DoctorWho].[dbo].[tblEpisodeCompanion] EC
INNER JOIN tblCompanion C ON EC.CompanionId = C.CompanionId
INNER JOIN tblEpisodeEnemy EE on EC.EpisodeId=EE.EpisodeId
GROUP BY C.CompanionId, C.CompanionName
UNION All
SELECT TOP(3) E.EnermyId, COUNT(*) AS EnemeyApperence,' ' CompanionName ,E.EnemyName
FROM [DoctorWho].[dbo].[tblEpisodeEnemy] EE
INNER JOIN tblEnemy E ON EE.EnemyId = E.EnermyId
GROUP BY E.EnermyId, E.EnemyName



