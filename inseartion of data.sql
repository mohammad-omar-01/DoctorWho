use DoctorWho;
--------------------#Authors--------------------------------------------
EXEC dbo.inseartAuthors 'William Hartnell';
EXEC dbo.inseartAuthors 'Sydney Newman';
EXEC dbo.inseartAuthors 'David Whitaker';
EXEC dbo.inseartAuthors 'John Lucarotti';
EXEC dbo.inseartAuthors 'Terry Nation';
--------------------#Enemey---------------------------------------------
exec dbo.inseartEnemy 'Dalek','The Daleks are a fictional extraterrestrial race of extremely
xenophobic mutants principally portrayed in the British science fiction television programme Doctor Who'
exec dbo.inseartEnemy 'Cybermen','Cybermens are emotionless robots from another world that constantly change their design'
exec dbo.inseartEnemy 'The Master','He is the Doctors Moriarty: a renegade Time Lord who may be the heros intellectual equal, but who is also his moral opposite'
exec dbo.inseartEnemy 'Davros','Davros is a character from the long-running British science fiction television series Doctor Who.'
exec dbo.inseartEnemy 'Sontarans','The Sontarans are a fictional race of extraterrestrial humanoids principally portrayed in t
he British science fiction television programme Doctor Who'

---------------------------#Doctors--------------------------------
exec dbo.inseartDoctor 1,'William Hartnell','1908-08-01','1963-10-01','1966-10-01'
exec dbo.inseartDoctor 3,'Jon Pertwee','1913-08-01','1970-01-01','1974-06-01'
exec dbo.inseartDoctor 5,'Peter Davison','1954-03-01','1982-01-01','1984-03-01'
exec dbo.inseartDoctor 7,'Michael Jayston','1968-11-01','1986-10-01','1986-10-01'
exec dbo.inseartDoctor 9,'Sylvester McCoy','1962-7-26','1987-10-01','1989-10-01'
--------------------------#Compainions------------------------------

exec dbo.inseartCompanion 'Susan Foreman','Carole Ann Ford'
exec dbo.inseartCompanion 'Ian Chesterton','William Russell'
exec dbo.inseartCompanion 'Steven Taylor','Peter Purves'
exec dbo.inseartCompanion 'Sara Kingdom','Jean Marsh'
exec dbo.inseartCompanion 'Anneke Wills','Polly'
-------------------------#Episodes----------------------
INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (1, 1, 'Regular', 'An Unearthly Child', '1963-11-23', 15, 60, 'Introduction of the First Doctor');
INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (1, 2, 'Regular', 'The Daleks', '1963-12-21', 16, 60, 'First appearance of the Daleks');
INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (1, 3, 'Regular', 'The Edge of Destruction', '1964-02-08', 17, 60, 'Bottle episode set entirely inside the TARDIS');
INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (1, 4, 'Regular', 'Marco Polo', '1964-02-22', 18, 60, 'Historical adventure in the time of Marco Polo');
INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (1, 5, 'Regular', 'The Keys of Marinus', '1964-04-11', 19, 60, 'The Doctor and companions search for the keys of an alien machine');


--------------------------#EpisodeEnemy------------------

-- Inserting records into tblEpisodeEnemy
INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES (30, 6); -- EpisodeId 30 and EnemyId 6 (The Tribe of Gum)

INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES (31, 1); -- EpisodeId 31 and EnemyId 1 (Dalek)

INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES (32, 15); -- EpisodeId 32 has no specific enemy

INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES (33, 7); -- EpisodeId 33 and EnemyId 7 (Tegana)

INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES (34, 8); -- EpisodeId 34 and EnemyId 8 (Voord)
-----------------------ComoaninEposide---------------
-- Inserting records into tblEpisodeCompanion

-- Companion Carole Ann Ford (Susan Foreman) in "An Unearthly Child"
INSERT INTO tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES (30, 70);

-- Companion William Russell (Ian Chesterton) in multiple episodes
INSERT INTO tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES
  (30, 71),
  (31, 71),
  (32, 71),
  (33, 71),
  (34, 71);

-- Companion Peter Purves (Steven Taylor) in "The Daleks" and "The Edge of Destruction"
INSERT INTO tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES
  (31, 72),
  (32, 72);
  
-- Companion Jean Marsh (Sara Kingdom) in "The Daleks"
INSERT INTO tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES (31, 73);

-- Companion Polly in "The Keys of Marinus"
INSERT INTO tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES (34, 74);

