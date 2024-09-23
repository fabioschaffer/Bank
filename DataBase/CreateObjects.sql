CREATE TABLE City(
	Id			integer 		NOT NULL,
	Name		varchar(128)	NOT NULL,
	CONSTRAINT 	PK_City 		PRIMARY KEY (Id)
);

CREATE TABLE Person(
	Id 			integer			NOT NULL,
	Name 		varchar(128)	NOT NULL,
	CityId		integer			NOT NULL,
	Phone		numeric(11)		NULL,
	CONSTRAINT 	FK_Person_City	FOREIGN KEY (CityId) REFERENCES City(Id)
);