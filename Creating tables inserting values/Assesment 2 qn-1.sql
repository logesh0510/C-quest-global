--1)create table and insert data
CREATE TABLE Book (Title VARCHAR(50) PRIMARY KEY,
                   Author VARCHAR(50) UNIQUE NOT NULL,
                   Subject VARCHAR(50) NOT NULL,
                   Publisher VARCHAR(50) NOT NULL,
                   Quantity INT NOT NULL,
                   Price FLOAT NOT NULL);

INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Data Structure','Lipschute','DS','McGraw',4,217.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('DOS Guide','NORTRON','OS','PHI',3,175.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Turbo c++','Robort Lafore','Prog','Galgotia',5,270.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Dbase Dummies','Palmer','DBMS','PustakM',7,130.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Mastering Windows','Cowart','OS','BPB',1,225.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Computer Studies','French','FND','Galgotia',2,75.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('COBOL','Stern','Prog','John W',4,1000.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Guide Network','Freed','NET','Zpress',3,200.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Basic for Beginners','Norton','Prog','BPB',3,40.00);
INSERT INTO Book(Title,Author,Subject,Publisher,Quantity,Price)
VALUES('Advanced Pascal','Schildt','Prog','McGraw',4,350.00);

SELECT Title,Author,Subject,Publisher,Quantity,Price FROM Book;

DROP TABLE Book;