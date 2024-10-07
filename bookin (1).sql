create table book(
title varchar(50), 
author_id Int not null,
genre_id int, 
price decimal(8,2),
amount int,
foreign key(author_id) references author(author_id),
foreign key(genre_id) references author(author_id));

-- 2 задание

SELECT name_genre
FROM genre LEFT JOIN book
     ON genre.genre_id = book.genre_id
WHERE title is Null;


-- 3 задание
SELECT name_genre, title, name_author
FROM
    author 
    INNER JOIN  book ON author.author_id = book.author_id
    INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE genre.name_genre LIKE '%роман%'
ORDER BY title ASC;



