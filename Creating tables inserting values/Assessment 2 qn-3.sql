CREATE PROCEDURE sp_list_books_by_subject_name
      @subject_name VARCHAR(50)
AS
BEGIN
   BEGIN TRANSACTION;
   SELECT Title,Author,Subject,Publisher,Quantity,Price
   FROM Book
   WHERE Subject=@subject_name;
   COMMIT TRANSACTION;
END

GO

EXECUTE sp_list_books_by_subject_name 'Prog';
