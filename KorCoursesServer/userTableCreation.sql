use KorCoursesServer

create table Users (
	Id int not null Primary Key Identity,

	FirstName nvarchar(25) not null,

	LastName nvarchar(25) not null,

	Email nvarchar(25) not null unique check (Email != ''),

	Password nvarchar(25) not null,

) 
