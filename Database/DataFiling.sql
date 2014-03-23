USE ProductDevelopment;

INSERT INTO Persons(LastName, FirstName, Position) VALUES ('Chaika','Daria','QA');
INSERT INTO Persons(LastName, FirstName, Position) VALUES ('Ivanov','Petro','QA');
INSERT INTO Persons(LastName, FirstName, Position) VALUES ('Petrenko','Ivan','Dev');
INSERT INTO Persons(LastName, FirstName, Position) VALUES ('Ivanov','Dmytro','Dev');


INSERT INTO Products(Name, Manager) VALUES ('Mobile App',1);
INSERT INTO Products(Name, Manager) VALUES ('Web Site',3);


INSERT INTO Bugs(ProductId, Title, Description, Status, ReportedBy, AssignedTo, CreationDate) 
           VALUES (1,'Login issue','Login page is not working corectly','In Progress',1,3,'2014-02-05');
INSERT INTO Bugs(ProductId, Title, Description, Status, ReportedBy, AssignedTo, CreationDate) 
           VALUES (1,'Background job issue','Background job doesnt work properly','New',1,4,'2014-02-07');
INSERT INTO Bugs(ProductId, Title, Description, Status, ReportedBy, AssignedTo, CreationDate) 
           VALUES (2,'About page issue','About page is not displayed correctly in IE','Completed',2,4,'2014-01-17');