--2)Queries
--a)
SELECT Title
FROM Book
WHERE Price BETWEEN 100 AND 300;
--b)
SELECT Title,Author
FROM Book
WHERE Subject='Prog' and Publisher='BPB';
--c)
SELECT Title,Author,Subject,Publisher,Quantity,Price
FROM Book
WHERE Price>130
ORDER BY Quantity;
--d)
SELECT Title,Author,Subject,Publisher,Quantity,Price
FROM Book
WHERE Quantity<4;
--e)
SELECT Publisher,SUM(Quantity)Total_quantity_of_books,COUNT(Title)No_of_distinct_book
FROM Book
GROUP BY Publisher;
--f)
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Rich dad poor dad','Robert Kyosaki','Finance','Maanjul',5,250.00);
--g)
UPDATE Book
SET Price+=30
WHERE Title='TURBO C++';
--h)
SELECT Title,SUM(Price*Quantity)Total_Price
FROM Book
GROUP BY Title;

SELECT MIN(Price) FROM Book;--40

SELECT SUM(Price*Quantity)Tot_bookprice_for_quantity_morethan_3 FROM Book
WHERE Quantity > 3;--9928

SELECT AVG(Price)Avg_PriceOfBook_for_quantity_lessthan_4 FROM Book
WHERE Quantity < 4;--143

SELECT COUNT(DISTINCT Publisher)No_of_distinct_publishers
FROM Book;--8

SELECT Title,
       Author,
       Subject,
       Publisher,
       Quantity,
       Price
FROM Book;

SELECT Title
FROM Book
WHERE Title LIKE 'd%';
GO

CREATE PROCEDURE sp_list_books_btwn_200_and_300
AS
BEGIN
  SELECT Title,
       Author,
       Subject,
       Publisher,
       Quantity,
       Price
  FROM Book
  WHERE Price BETWEEN 200 AND 300;
END
GO

EXECUTE sp_list_books_btwn_200_and_300;