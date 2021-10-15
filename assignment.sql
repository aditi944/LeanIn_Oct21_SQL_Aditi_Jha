//Ans 1
CREATE DATABASE hw_student;
  
  CREATE TABLE students_data(
    RollNum int primary KEY NOT NULL AUTO_INCREMENT,
    FirstName varchar(255) NOT NULL DEFAULT 'UNKNOWN',
    LastName varchar(255) NULL ,
    ClasRank int NOT NULL
   
);

INSERT INTO students_data(
RollNum, FirstName, LastName,ClasRank)
VALUES 
( 1, 'kavita',  'gupta', 17),
( 2, 'Aditi',  'jha', 1),
( 3, 'gawar',  'ladki', 7),
( 4, 'padhaku',  'bachi', 344),
( 5, 'akalmand',  'ladki', 4),
( 6, 'kabu',  'bharti', 3),
( 7, 'karna',  'veer', 27);

select * from students_data;

select RollNum, FirstName, ClasRank from students_data;


//Ans 2
CREATE TABLE teachers(
 
    Id_no int AUTO_INCREMENT primary KEY,
    Name varchar(255) not null DEFAULT 'unknown user',
    Adress varchar(255) NULL,
    Age int NOT NULL
    
);


INSERT INTO teachers(
Id_no, Name, Adress, Age)
VALUES 
('Priety Goel','Shimla Road, Himachal Pradesh',35), ('Sunil
Kumar Verma', 'LodhiRoad, New Delhi',28),
('Priyanka','Tonk,Rajasthan',31)
('Anshika kapoor')
('Dwarka, Delhi',25),('Tonk,Rajasthan',38)
('Sakshi',28),('Sangam Jha',31);

DROP TABLE students_data;
DROP TABLE teachers;
DROP DATABASE hw_student;


//Ans 3
CREATE DATABASE pastry_shop;

USE pastry_shop;

CREATE TABLE Menu(
    S_No INT NOT NULL AUTO_INCREMENT,
    Pastry_name VARCHAR(30) NOT NULL DEFAULT 'UNAVAILABLE',
    Price INT NOT NULL DEFAULT '9999',
    PRIMARY KEY(S_No)
);

DESC Menu;

INSERT INTO Menu(Pastry_name,Price)
VALUES ('Vanilla pastry',70),('Butter cookie pastry',78),('Chocolate pastry',88),('Cream & nut pastry',99),('Light vegan pastry',99),('Red velvet pastry',89);

INSERT INTO Menu(S_No,Pastry_name,Price)
VALUES (100,'Fruit & nut pastry',88),(150,'Mixed fruit pastry ',85),(9,'Honey cream pastry',76);

INSERT INTO Menu(Pastry_name,Price)
VALUES ('Dark forest pastry',89),('mango pastry',75);

INSERT INTO Menu(Price)
VALUES (88),(90),(76);

INSERT INTO Menu(Pastry_name)
VALUES ('Strawberry pastry'),('Ice cream and pastry combo');

SELECT * FROM Menu;
