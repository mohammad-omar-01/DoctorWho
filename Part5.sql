---------------part 5 ----------------------
---------------# Delete companions with no apperance in the eposides i have------------------------
delete from tblCompanion 
where tblCompanion.CompanionId not in (
 SELECT distinct CompanionId
    FROM tblEpisodeCompanion
)


