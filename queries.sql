-- Query 1: Books per author
SELECT a.AuthorID, COUNT(b.ISBN) as BookCount
FROM Author as a
LEFT JOIN Book as b
ON a.AuthorID = b.AuthorID 
GROUP BY a.AuthorName;

-- Authors per book --  
SELECT b.ISBN, COUNT(a.AuthorID) as AuthorsCount 
From Book as b
LEFT JOIN Author as a
ON b.AuthorID = a.AuthorID
GROUP BY b.ISBN;

-- Author royalties on a book --
SELECT b.ISBN, b.Royalty
FROM Book as b;

-- Book royalties per author -- 

SELECT a.AuthorID, b.Royalty
FROM Author as a
RIGHT JOIN Book as b
ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorID;

-- Books in a genre
SELECT b.Genre, count(ISBN)
FROM Book as b
GROUP BY b.Genre;

-- Books published by a publisher-- 
SELECT p.PublisherID, COUNT(b.ISBN) As NoOfBooksPublished
FROM Publisher as p
RIGHT JOIN Book as b
ON p.PublisherID = b.PublisherID
GROUP by p.Name;

-- Editors per book -- 
SELECT b.ISBN, b.Title, count(b.EditorID)As NoOfEditors
FROM Book as b
GROUP by b.Title;

-- Books per Editor -- 
SELECT e.Name, count(b.ISBN) AS NoOfBooks
FROM Book as b
RIGHT JOIN Editor as e
ON e.EditorID = b.EditorID
GROUP By e.Name;

-- Books in an Order -- 
SELECT od.OrderID, count(od.BookID) As No_of_Books
FROM OrderDetails as od
GROUP By od.OrderID;

-- Orders for a book -- 
SELECT sa.ISBN, count(sa.OrderID) As No_Of_Orders
FROM Sales as sa
GROUP by sa.ISBN;

-- Customer orders -- 
SELECT sa.OrderID, sa.CustomerID, sa.Amount as OrderAmount
FROM Sales as sa
INNER JOIN Customer as c
ON c.CustomerID = sa.CustomerID
INNER JOIN Orders as o
ON o.OrderID = sa.OrderID;

-- Orders per customer -- 
SELECT c.CustomerID, count(sa.OrderID) as Orders_for_customer
FROM Sales as sa
INNER JOIN Customers as c
ON c.CustomerID = sa.CustomerID
GROUP by c.Name;


 












