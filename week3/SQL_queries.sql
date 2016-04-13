#Join:
SELECT e.isbn, b.title, s.stock, s.retail FROM editions AS e, books AS b, stock AS s WHERE publisher_id = 59 AND e.book_id = b.id AND e.isbn = s.isbn AND s.stock > 0;

#Case: 
SELECT e.isbn, CASE WHEN e.type = 'h' THEN 'Hardcover' WHEN e.type = 'p' THEN 'Paperback' END FROM editions AS e;

SELECT b.title, e.publication FROM books AS b, editions AS e;

