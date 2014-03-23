Create DATABASE ProductDevelopment;

USE ProductDevelopment;

CREATE TABLE Persons
(
id int NOT NULL AUTO_INCREMENT, 
LastName nvarchar(256) NOT NULL,
FirstName nvarchar(256) NOT NULL,
Position nvarchar(256) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Products
(
id int NOT NULL AUTO_INCREMENT,
Name nvarchar(256) NOT NULL,
Manager int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (Manager) 
        REFERENCES Persons(id)
);

CREATE TABLE Bugs
(
id int NOT NULL AUTO_INCREMENT,
ProductId int NOT NULL,
Title nvarchar(256) NOT NULL,
Description Text,
Status nvarchar(256) NOT NULL,
ReportedBy int NOT NULL,
AssignedTo int,
CreationDate Date NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (ProductId) 
        REFERENCES Products(id),
FOREIGN KEY (ReportedBy) 
        REFERENCES Persons(id),
FOREIGN KEY (AssignedTo) 
        REFERENCES Persons(id)
);