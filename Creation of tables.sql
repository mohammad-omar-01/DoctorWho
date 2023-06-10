use [DoctorWho]; 

create table tblEpisode (
EpisodeId int primary key,
SeriesNumber int,
EpisodeNumber int,
EpisodeType varchar (25),
Title varchar (40),
EpisodeDate Date,
AuthorId int,
DoctorId int,
Notes text
);

create table tblEnemy (
EnermyId int,
EnemyName varchar (25),
Description text,
);

alter table tblEnemy 
drop column EnermyId;

alter table tblEnemy 
add  EnemyId int not null;

alter table tblEnemy
add constraint PK_tblEnemy PRIMARY KEY (EnemyId);

create table tblEpisodeEnemy (
EpisodeEnemyId int not null,
EpisodeId int not null,
EnemyId int not null,
primary key (EpisodeEnemyId),
FOREIGN KEY (EpisodeId) REFERENCES [tblEpisode](EpisodeId)
)
alter table tblEpisodeEnemy
ADD FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId);

create table tblAuthor (
AuthorId int not null,
AuthorName nvarchar(25),
primary key (AuthorId)
)

create table tblDoctor (
DoctorId int not null,
DoctorNumber int,
DoctorName varchar(45),
BirthDate date,
FirstEpisodeDate date,
LastEpisodeDate date,
primary key (DoctorId)
)
create table tblEpisodeCompanion (
EpisodeCompanionId int not null,
EpisodeId int not null,
CompanionId int not null,
primary key (EpisodeCompanionId),
Foreign key (EpisodeId) references [tblEpisode](EpisodeId) 
)
create table tblCompanion (
CompanionId int primary key,
CompanionName varchar(45),
WhoPlayed varchar(45)
)





