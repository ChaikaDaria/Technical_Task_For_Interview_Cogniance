USE ProductDevelopment;

SELECT LastName, FirstName, Position
FROM Persons
WHERE LastName = 'Ivanov';

SELECT pr.Name Product, p.LastName, p.FirstName, p.Position 
FROM Persons as p JOIN Products as pr ON p.Id = pr.Manager;

SELECT p.Name Product, COUNT(b.id) BugsCount
FROM Bugs b JOIN Products p ON b.ProductId = p.Id
GROUP BY p.Id, p.Name;