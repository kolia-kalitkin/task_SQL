-- Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
-- Таблица Films

-- +----+---------------------+----------------+--------------+--------------+
-- | id | title               | director       | release_year | running_time |
-- +----+---------------------+----------------+--------------+--------------+
-- | 1  | Toy Story 2         | John Lasseter  | 1999         | 93           |
-- | 2  | WALL-E              | Andrew Stanton | 2008         | 104          |
-- | 3  | Ratatouille         | Brad Bird      | 2007         | 115          |
-- | 4  | Up                  | Pete Docter    | 2009         | 101          |
-- | 5  | Brave               | Brenda Chapman | 2012         | 102          |
-- | 6  | Monsters University | Dan Scanlon    | 2013         | 110          |
-- | 7  | Cars 2              | John Lasseter  | 2011         | 120          |
-- | 8  | Finding Nemo        | Andrew Stanton | 2003         | 107          |
-- | 9  | Toy Story           | John Lasseter  | 1995         | 81           |
-- | 10 | The Incredibles     | Brad Bird      | 2004         | 116          |
-- +----+---------------------+----------------+--------------+--------------+
-- Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — год выхода, пятое — продолжительность в минутах.
-- Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера, год выпуска), режиссером которых является John Lasseter и которые были выпущены до 2000 года.
-- Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля release_year.
-- 
SELECT title, director, release_year
FROM Films
WHERE director = 'John Lasseter' AND release_year < 2000
ORDER BY release_year 
-- 
-- ----------------------------------------
SELECT title,
	   director, 
       release_year
FROM Films
WHERE director IN ('John Lasseter') AND release_year < 2000
ORDER BY release_year;
-- ----------------------------------------


SELECT
    f.title,
    f.director,
    f.release_year
FROM Films AS f
WHERE f.director = "John Lasseter" AND f.release_year < 2000
ORDER BY f.release_year;
-- ----------------------------------------



/* Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+--------------+--------------+
| id | title               | director       | release_year | running_time |
+----+---------------------+----------------+--------------+--------------+
| 1  | Toy Story 2         | John Lasseter  | 1999         | 93           |
| 2  | WALL-E              | Andrew Stanton | 2008         | 104          |
| 3  | Ratatouille         | Brad Bird      | 2007         | 115          |
| 4  | Up                  | Pete Docter    | 2009         | 101          |
| 5  | Brave               | Brenda Chapman | 2012         | 102          |
| 6  | Monsters University | Dan Scanlon    | 2013         | 110          |
| 7  | Cars 2              | John Lasseter  | 2011         | 120          |
| 8  | Finding Nemo        | Andrew Stanton | 2003         | 107          |
| 9  | Toy Story           | John Lasseter  | 1995         | 81           |
| 10 | The Incredibles     | Brad Bird      | 2004         | 116          |
+----+---------------------+----------------+--------------+--------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — год выхода, пятое — продолжительность в минутах.

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, год выпуска), которые были выпущены в 1999 году или в 2009​​​ ​​​​году.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля release_year.
Результат запроса

+-------------+--------------+
| title       | release_year |
+-------------+--------------+
| Up          | 2009         |
| Toy Story 2 | 1999         |
+-------------+--------------+
*/
-- ----------------------------------------
SELECT title,	   
       running_time
FROM Films
WHERE running_time < 100 OR running_time > 110
ORDER BY running_time DESC;
-- ----------------------------------------
SELECT title, running_time
  FROM Films
 WHERE running_time NOT BETWEEN 100 AND 110
 ORDER BY 2 DESC;
-- ----------------------------------------



/* 

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+--------------+--------------+
| id | title               | director       | release_year | running_time |
+----+---------------------+----------------+--------------+--------------+
| 1  | Toy Story 2         | John Lasseter  | 1999         | 93           |
| 2  | WALL-E              | Andrew Stanton | 2008         | 104          |
| 3  | Ratatouille         | Brad Bird      | 2007         | 115          |
| 4  | Up                  | Pete Docter    | 2009         | 101          |
| 5  | Brave               | Brenda Chapman | 2012         | 102          |
| 6  | Monsters University | Dan Scanlon    | 2013         | 110          |
| 7  | Cars 2              | John Lasseter  | 2011         | 120          |
| 8  | Finding Nemo        | Andrew Stanton | 2003         | 107          |
| 9  | Toy Story           | John Lasseter  | 1995         | 81           |
| 10 | The Incredibles     | Brad Bird      | 2004         | 116          |
+----+---------------------+----------------+--------------+--------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — год выхода, пятое — продолжительность в минутах.

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера, продолжительность), режиссером которых является John Lasseter или Andrew Stanton и которые длятся более 100 минут.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director, при совпадении — в порядке возрастания значения поля title.
Результат запроса

+--------------+----------------+--------------+
| title        | director       | running_time |
+--------------+----------------+--------------+
| Finding Nemo | Andrew Stanton | 107          |
| WALL-E       | Andrew Stanton | 104          |
| Cars 2       | John Lasseter  | 120          |
+--------------+----------------+--------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(20),
    director     VARCHAR(20),
    release_year INT,
    running_time INT
);

INSERT INTO Films (title, director, release_year, running_time) 
VALUES ('Toy Story 2', 'John Lasseter', 1999, 93),
       ('WALL-E', 'Andrew Stanton', 2008, 104),
       ('Ratatouille', 'Brad Bird', 2007, 115),
       ('Up', 'Pete Docter', 2009, 101),
       ('Brave', 'Brenda Chapman', 2012, 102),
       ('Monsters University', 'Dan Scanlon', 2013, 110),
       ('Cars 2', 'John Lasseter', 2011, 120),
       ('Finding Nemo', 'Andrew Stanton', 2003, 107),
       ('Toy Story', 'John Lasseter', 1995, 81),
       ('The Incredibles', 'Brad Bird', 2004, 116);
*/
-- ----------------------------------------
SELECT title,
	   director,	   
       running_time
FROM Films
WHERE director IN ('John Lasseter','Andrew Stanton') 
	  AND running_time > 100  
ORDER BY director, title;
-- ----------------------------------------


SELECT title,
	   director,	   
       running_time
FROM Films
WHERE director IN ('John Lasseter','Andrew Stanton') 
	  AND running_time > 100  
ORDER BY 2, 1;
-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+--------------+--------------+
| id | title               | director       | release_year | running_time |
+----+---------------------+----------------+--------------+--------------+
| 1  | Toy Story 2         | John Lasseter  | 1999         | 93           |
| 2  | WALL-E              | Andrew Stanton | 2008         | 104          |
| 3  | Ratatouille         | Brad Bird      | 2007         | 115          |
| 4  | Up                  | Pete Docter    | 2009         | 101          |
| 5  | Brave               | Brenda Chapman | 2012         | 102          |
| 6  | Monsters University | Dan Scanlon    | 2013         | 110          |
| 7  | Cars 2              | John Lasseter  | 2011         | 120          |
| 8  | Finding Nemo        | Andrew Stanton | 2003         | 107          |
| 9  | Toy Story           | John Lasseter  | 1995         | 81           |
| 10 | The Incredibles     | Brad Bird      | 2004         | 116          |
+----+---------------------+----------------+--------------+--------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — год выхода, пятое — продолжительность в минутах.

Напишите запрос, который извлекает из предложенной базы данных всю информацию о фильмах под названиями WALL-E, Up, Brave и Toy Story.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля release_year.
Результат запроса

+----+-----------+----------------+--------------+--------------+
| id | title     | director       | release_year | running_time |
+----+-----------+----------------+--------------+--------------+
| 9  | Toy Story | John Lasseter  | 1995         | 81           |
| 2  | WALL-E    | Andrew Stanton | 2008         | 104          |
| 4  | Up        | Pete Docter    | 2009         | 101          |
| 5  | Brave     | Brenda Chapman | 2012         | 102          |
+----+-----------+----------------+--------------+--------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(20),
    director     VARCHAR(20),
    release_year INT,
    running_time INT
);

INSERT INTO Films (title, director, release_year, running_time) 
VALUES ('Toy Story 2', 'John Lasseter', 1999, 93),
       ('WALL-E', 'Andrew Stanton', 2008, 104),
       ('Ratatouille', 'Brad Bird', 2007, 115),
       ('Up', 'Pete Docter', 2009, 101),
       ('Brave', 'Brenda Chapman', 2012, 102),
       ('Monsters University', 'Dan Scanlon', 2013, 110),
       ('Cars 2', 'John Lasseter', 2011, 120),
       ('Finding Nemo', 'Andrew Stanton', 2003, 107),
       ('Toy Story', 'John Lasseter', 1995, 81),
       ('The Incredibles', 'Brad Bird', 2004, 116);

*/  
-- ----------------------------------------
SELECT *
FROM Films
WHERE title IN ('WALL-E', 'Up', 'Brave', 'Toy Story') 
ORDER BY release_year;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+--------------+--------------+
| id | title               | director       | release_year | running_time |
+----+---------------------+----------------+--------------+--------------+
| 1  | Toy Story 2         | John Lasseter  | 1999         | 93           |
| 2  | WALL-E              | Andrew Stanton | 2008         | 104          |
| 3  | Ratatouille         | Brad Bird      | 2007         | 115          |
| 4  | Up                  | Pete Docter    | 2009         | 101          |
| 5  | Brave               | Brenda Chapman | 2012         | 102          |
| 6  | Monsters University | Dan Scanlon    | 2013         | 110          |
| 7  | Cars 2              | John Lasseter  | 2011         | 120          |
| 8  | Finding Nemo        | Andrew Stanton | 2003         | 107          |
| 9  | Toy Story           | John Lasseter  | 1995         | 81           |
| 10 | The Incredibles     | Brad Bird      | 2004         | 116          |
+----+---------------------+----------------+--------------+--------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — год выхода, пятое — продолжительность в минутах.

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера, год выпуска), которые были выпущены не в 2004, 2008 и 2012 годах.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director, при совпадении — в порядке убывания значения поля release_year.
Результат запроса

+---------------------+----------------+--------------+
| title               | director       | release_year |
+---------------------+----------------+--------------+
| Finding Nemo        | Andrew Stanton | 2003         |
| Ratatouille         | Brad Bird      | 2007         |
| Monsters University | Dan Scanlon    | 2013         |
| Cars 2              | John Lasseter  | 2011         |
| Toy Story 2         | John Lasseter  | 1999         |
| Toy Story           | John Lasseter  | 1995         |
| Up                  | Pete Docter    | 2009         |
+---------------------+----------------+--------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(20),
    director     VARCHAR(20),
    release_year INT,
    running_time INT
);

INSERT INTO Films (title, director, release_year, running_time) 
VALUES ('Toy Story 2', 'John Lasseter', 1999, 93),
       ('WALL-E', 'Andrew Stanton', 2008, 104),
       ('Ratatouille', 'Brad Bird', 2007, 115),
       ('Up', 'Pete Docter', 2009, 101),
       ('Brave', 'Brenda Chapman', 2012, 102),
       ('Monsters University', 'Dan Scanlon', 2013, 110),
       ('Cars 2', 'John Lasseter', 2011, 120),
       ('Finding Nemo', 'Andrew Stanton', 2003, 107),
       ('Toy Story', 'John Lasseter', 1995, 81),
       ('The Incredibles', 'Brad Bird', 2004, 116);

*/
-- ----------------------------------------
SELECT title,
       director,
       release_year
FROM Films
WHERE release_year NOT IN ('2004', '2008', '2012') 
ORDER BY director, release_year DESC;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+
| id | title               | director       |
+----+---------------------+----------------+
| 1  | Toy Story 3         | Lee Unkrich    |
| 2  | Monsters University | Dan Scanlon    |
| 3  | Toy Story 2         | John Lasseter  |
| 4  | WALL-E              | Andrew Stanton |
| 5  | Ratatouille         | Brad Bird      |
| 6  | Up                  | Pete Docter    |
| 7  | Brave               | Brenda Chapman |
| 8  | Finding Nemo        | Andrew Stanton |
| 9  | Toy Story           | John Lasseter  |
| 10 | The Incredibles     | Brad Bird      |
+----+---------------------+----------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера), которые принадлежат серии Toy Story.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля title.
Результат запроса

+-------------+---------------+
| title       | director      |
+-------------+---------------+
| Toy Story   | John Lasseter |
| Toy Story 2 | John Lasseter |
| Toy Story 3 | Lee Unkrich   |
+-------------+---------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(40),
    director     VARCHAR(40)
);

INSERT INTO Films (title, director)
VALUES ('Toy Story 3', 'Lee Unkrich'),
       ('Monsters University', 'Dan Scanlon'),
       ('Toy Story 2', 'John Lasseter'),
       ('WALL-E', 'Andrew Stanton'),
       ('Ratatouille', 'Brad Bird'),
       ('Up', 'Pete Docter'),
       ('Brave', 'Brenda Chapman'),
       ('Finding Nemo', 'Andrew Stanton'),
       ('Toy Story', 'John Lasseter'),
       ('The Incredibles', 'Brad Bird');

*/
-- ----------------------------------------
SELECT title,
	   director
FROM Films
WHERE title LIKE 'Toy Story%'
ORDER BY title;
-- ----------------------------------------
 
-- ----------------------------------------



/*
Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных уникальные имена и фамилии режиссеров, имена которых начинаются на букву B.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director.
Результат запроса

+----------------+
| director       |
+----------------+
| Brad Bird      |
| Brenda Chapman |
+----------------+

Скрипт для создания таблицы Films
 */
-- ----------------------------------------
SELECT DISTINCT director
FROM Films
WHERE director LIKE 'B%'
ORDER BY director;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films


Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных уникальные имена и фамилии режиссеров, фамилии которых заканчиваются на сочетание букв er.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director.
Результат запроса

+---------------+
| director      |
+---------------+
| John Lasseter |
| Pete Docter   |
+---------------+

Скрипт для создания таблицы Films

*/
-- ----------------------------------------
SELECT DISTINCT director
FROM Films
WHERE director LIKE '%er'
-- ----------------------------------------
-- 
-- ----------------------------------------



/*
Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных уникальные имена и фамилии режиссеров, фамилии которых начинаются на букву S и заканчиваются на букву n.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director.
Результат запроса

+----------------+
| director       |
+----------------+
| Andrew Stanton |
| Dan Scanlon    |
+----------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(40),
    director     VARCHAR(40)
);

INSERT INTO Films (title, director)
VALUES ('Toy Story 3', 'Lee Unkrich'),
       ('Monsters University', 'Dan Scanlon'),
       ('Toy Story 2', 'John Lasseter'),
       ('WALL-E', 'Andrew Stanton'),
       ('Ratatouille', 'Brad Bird'),
       ('Up', 'Pete Docter'),
       ('Brave', 'Brenda Chapman'),
       ('Finding Nemo', 'Andrew Stanton'),
       ('Toy Story', 'John Lasseter'),
       ('The Incredibles', 'Brad Bird'),
       ('Dug Days', 'Bob Peterson');

*/
-- ----------------------------------------
SELECT DISTINCT director
FROM Films
WHERE director LIKE '% S%n'
ORDER BY director;
-- ----------------------------------------
-- 
-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films


Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных уникальные имена и фамилии режиссеров, имена которых состоят из четырех букв.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director.
Результат запроса

+---------------+
| director      |
+---------------+
| Brad Bird     |
| John Lasseter |
| Pete Docter   |
+---------------+

Скрипт для создания таблицы Films

*/
-- ----------------------------------------
SELECT DISTINCT director
FROM Films
WHERE director LIKE '____ %'
ORDER BY director;
-- ----------------------------------------
-- 
-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных уникальные имена и фамилии режиссеров, фамилии которых состоят из семи и более букв.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля director.
Результат запроса

+----------------+
| director       |
+----------------+
| Andrew Stanton |
| Brenda Chapman |
| Dan Scanlon    |
| John Lasseter  |
| Lee Unkrich    |
+----------------+

Скрипт для создания таблицы Films

*/
-- ----------------------------------------
SELECT DISTINCT director
FROM Films
WHERE director LIKE '% _______%'
ORDER BY director;
-- ----------------------------------------
-- 
-- ----------------------------------------



/*Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера), названия которых не содержат строчную букву t.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля title.
Результат запроса

+-----------------+----------------+
| title           | director       |
+-----------------+----------------+
| Brave           | Brenda Chapman |
| Finding Nemo    | Andrew Stanton |
| The Incredibles | Brad Bird      |
| Up              | Pete Docter    |
| WALL-E          | Andrew Stanton |
+-----------------+----------------+

Скрипт для создания таблицы Films*/
-- ----------------------------------------
SELECT title,
	   director
FROM Films
WHERE title NOT LIKE BINARY '%t%'
ORDER BY title;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера), названия которых состоят из двух и более слов.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля title.
Результат запроса

+---------------------+----------------+
| title               | director       |
+---------------------+----------------+
| Finding Nemo        | Andrew Stanton |
| Monsters University | Dan Scanlon    |
| The Incredibles     | Brad Bird      |
| Toy Story           | John Lasseter  |
| Toy Story 2         | John Lasseter  |
| Toy Story 3         | Lee Unkrich    |
+---------------------+----------------+

Скрипт для создания таблицы Films*/
-- ----------------------------------------
SELECT title, director
FROM Films
WHERE title LIKE '_% _%'
ORDER BY title
-- ----------------------------------------
SELECT title,
	   director
FROM Films
WHERE title LIKE '% % %'
	  OR title LIKE '% %' 
ORDER BY title;
-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+
| id | title               | director       |
+----+---------------------+----------------+
| 1  | Toy Story 3         | Lee Unkrich    |
| 2  | Monsters University | Dan Scanlon    |
| 3  | Toy Story 2         | John Lasseter  |
| 4  | WALL-E              | Andrew Stanton |
| 5  | Ratatouille         | Brad Bird      |
| 6  | Up                  | Pete Docter    |
| 7  | Brave               | Brenda Chapman |
| 8  | Finding Nemo        | Andrew Stanton |
| 9  | Toy Story           | John Lasseter  |
| 10 | The Incredibles     | Brad Bird      |
+----+---------------------+----------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (название, имя и фамилия режиссера), названия которых состоят из одного слова.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля title.
Результат запроса

+-------------+----------------+
| title       | director       |
+-------------+----------------+
| Brave       | Brenda Chapman |
| Ratatouille | Brad Bird      |
| Up          | Pete Docter    |
| WALL-E      | Andrew Stanton |
+-------------+----------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(40),
    director     VARCHAR(40)
);

INSERT INTO Films (title, director)
VALUES ('Toy Story 3', 'Lee Unkrich'),
       ('Monsters University', 'Dan Scanlon'),
       ('Toy Story 2', 'John Lasseter'),
       ('WALL-E', 'Andrew Stanton'),
       ('Ratatouille', 'Brad Bird'),
       ('Up', 'Pete Docter'),
       ('Brave', 'Brenda Chapman'),
       ('Finding Nemo', 'Andrew Stanton'),
       ('Toy Story', 'John Lasseter'),
       ('The Incredibles', 'Brad Bird');

Примечание. Словом будем считать любую последовательность из одного и более непробельных символов. Например, название фильма Toy Story 3 состоит из трех слов: Toy, Story и 3.
*/
-- ----------------------------------------
SELECT title,
	   director
FROM Films
WHERE title NOT LIKE '% %' 
ORDER BY title;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

+----+-------------------+--------------------+--------------------+--------+-------+-----------+
| id | title             | director           | composer           | rating | price | purchases |
+----+-------------------+--------------------+--------------------+--------+-------+-----------+
| 1  | Venom             | Ruben Fleischer    | Ludwig Goransson   | 6.9    | 4.99  | 2143535   |
| 2  | Aladdin           | Guy Ritchie        | Alan Menken        | 7.3    | 3.99  | 3253263   |
| 3  | Encanto           | Jared Bush         | Germaine Franco    | 7.5    | 2.99  | 451245    |
| 4  | The Witches       | Robert Zemeckis    | Alan Silvestri     | 5.7    | 1.99  | 67441     |
| 5  | Blade Runner 2049 | Denis Villeneuve   | Benjamin Wallfisch | 7.8    | 5.99  | 2164214   |
| 6  | Equilibrium       | Kurt Wimmer        | Klaus Badelt       | 7.9    | 5.99  | 54124561  |
| 7  | Ready or Not      | Matthew Bettinelli | Brian Tyler        | 6.9    | 4.99  | 541234    |
| 8  | Fast X            | Louis Leterrier    | Brian Tyler        | 6.1    | 3.99  | 454113    |
| 9  | John Wick         | Chad Stahelski     | Tyler Bates        | 7.0    | 4.99  | 1247322   |
| 10 | Fight Club        | David Fincher      | Dust Brothers      | 8.7    | 5.99  | 17641285  |
+----+-------------------+--------------------+--------------------+--------+-------+-----------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое – имя и фамилию композитора, пятое – рейтинг, шестое – цену в долларах, седьмое – количество проданных копий.

Напишите запрос, который извлекает из предложенной базы данных идентификаторы и названия всех фильмов.

При этом в результирующей таблице идентификатор и название каждого фильма должны быть указаны в одном поле c псевдонимом movie в следующем формате:

<идентификатор фильма>. <название фильма>

Результат запроса

+----------------------+
| movie                |
+----------------------+
| 1. Venom             |
| 2. Aladdin           |
| 3. Encanto           |
| 4. The Witches       |
| 5. Blade Runner 2049 |
| 6. Equilibrium       |
| 7. Ready or Not      |
| 8. Fast X            |
| 9. John Wick         |
| 10. Fight Club       |
+----------------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    title     VARCHAR(20),
    director  VARCHAR(20),
    composer  VARCHAR(20),
    rating    DECIMAL(2, 1),
    price     DECIMAL(3, 2),
    purchases INT
);

INSERT INTO Films (title, director, composer, rating, price, purchases)
VALUES ('Venom', 'Ruben Fleischer', 'Ludwig Goransson', 6.9, 4.99, 2143535),
       ('Aladdin', 'Guy Ritchie', 'Alan Menken', 7.3, 3.99, 3253263),
       ('Encanto', 'Jared Bush', 'Germaine Franco', 7.5, 2.99, 451245),
       ('The Witches', 'Robert Zemeckis', 'Alan Silvestri', 5.7, 1.99, 67441),
       ('Blade Runner 2049', 'Denis Villeneuve', 'Benjamin Wallfisch', 7.8, 5.99, 2164214),
       ('Equilibrium', 'Kurt Wimmer', 'Klaus Badelt', 7.9, 5.99, 54124561),
       ('Ready or Not', 'Matthew Bettinelli', 'Brian Tyler', 6.9, 4.99, 541234),
       ('Fast X', 'Louis Leterrier', 'Brian Tyler', 6.1, 3.99, 454113),
       ('John Wick', 'Chad Stahelski', 'Tyler Bates', 7.0, 4.99, 1247322),
       ('Fight Club', 'David Fincher', 'Dust Brothers', 8.7, 5.99, 17641285);

Примечание. Записи в результирующей таблице могут быть расположены в произвольном порядке.
*/
-- ----------------------------------------
SELECT concat_ws('. ', id, title) AS movie
FROM Films;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех фильмах: идентификатор, название, цена.

При этом в результирующей таблице идентификатор и название каждого фильма должны быть указаны в одном поле c псевдонимом movie в следующем формате:

<идентификатор фильма>. <название фильма>

Цена каждого фильма должна быть записана в следующем формате:

€<цена>

Результат запроса
Скрипт для создания таблицы Films*/
-- ----------------------------------------
SELECT CONCAT_WS('. ', id, title) AS movie,
	   CONCAT('€', price) AS price
FROM Films;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех фильмах: название, имя и фамилия режиссера, имя и фамилия композитора.

При этом в результирующей таблице информация о каждом фильме должна быть указана в одном поле c псевдонимом movie_info в следующем формате:

<название фильма>: <имя и фамилия режиссера>, <имя и фамилия композитора>

Результат запроса
Скрипт для создания таблицы Films*/
-- ----------------------------------------
SELECT CONCAT(title, ': ', director, ', ', composer) AS movie_info
FROM Films;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

Кинотеатр устанавливает определенную цену для каждого фильма, а также ведет подсчет проданных копий. Прибылью фильма кинотеатр называет произведение цены фильма и количества ее проданных копий.

Напишите запрос, который определяет три самых прибыльных фильма и указывает следующую информацию о них: название, прибыль.

Поле с прибылью фильма должно иметь псевдоним profit.
Результат запроса
Скрипт для создания таблицы Films

Примечание. Записи в результирующей таблице могут быть расположены в произвольном порядке.*/
-- ----------------------------------------
SELECT title,
	   price * purchases AS profit
FROM Films
ORDER BY profit DESC
LIMIT 3
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

Напишите запрос, который извлекает из предложенной базы данных названия фильмов и их цены, взятые со скидкой 30%. При этом в результирующую таблицу должны быть добавлены только те фильмы, скидочная цена которых меньше 4 долларов.

Поле со скидочной ценой фильма должно иметь псевдоним discount_price.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля discount_price.*/
-- ----------------------------------------
SELECT title,
	   price * 0.3 AS discount_price
FROM Films
WHERE price * 0.3 < 4
ORDER BY profit DESC
LIMIT 3
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая онлайн-кинотеатру "Окко". Она включает таблицу Films, которая хранит информацию о доступных в кинотеатре фильмах.
Таблица Films

Напишите запрос, извлекающий из предложенной базы данных информацию о фильмах (идентификатор, название, цена, рейтинг), рейтинг которых больше 7.

При этом в результирующей таблице идентификатор и название каждого фильма должны быть указаны в одном поле c псевдонимом movie в следующем формате:

<идентификатор фильма>. <название фильма>

Цена каждого фильма должна быть переведена в евро согласно курсу $1 = €1.1 и указана в поле с псевдонимом price_in_eur в следующем формате:

€<цена>

Рейтинг каждого фильма должен быть умножен на 10 и указан в поле с псевдонимом score в следующем формате:

<рейтинг>%

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля rating.
Результат запроса

+----------------------+--------------+--------+
| movie                | price_in_eur | score  |
+----------------------+--------------+--------+
| 10. Fight Club       | €6.589       | 100.0% |
| 6. Equilibrium       | €6.589       | 79.0%  |
| 5. Blade Runner 2049 | €6.589       | 78.0%  |
| 3. Encanto           | €3.289       | 75.0%  |
| 2. Aladdin           | €4.389       | 73.0%  |
+----------------------+--------------+--------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    title     VARCHAR(20),
    director  VARCHAR(20),
    composer  VARCHAR(20),
    rating    DECIMAL(3, 1),
    price     DECIMAL(3, 2),
    purchases INT
);

INSERT INTO Films (title, director, composer, rating, price, purchases)
VALUES ('Venom', 'Ruben Fleischer', 'Ludwig Goransson', 6.9, 4.99, 2143535),
       ('Aladdin', 'Guy Ritchie', 'Alan Menken', 7.3, 3.99, 3253263),
       ('Encanto', 'Jared Bush', 'Germaine Franco', 7.5, 2.99, 451245),
       ('The Witches', 'Robert Zemeckis', 'Alan Silvestri', 5.7, 1.99, 67441),
       ('Blade Runner 2049', 'Denis Villeneuve', 'Benjamin Wallfisch', 7.8, 5.99, 2164214),
       ('Equilibrium', 'Kurt Wimmer', 'Klaus Badelt', 7.9, 5.99, 54124561),
       ('Ready or Not', 'Matthew Bettinelli', 'Brian Tyler', 6.9, 4.99, 541234),
       ('Fast X', 'Louis Leterrier', 'Brian Tyler', 6.1, 3.99, 454113),
       ('John Wick', 'Chad Stahelski', 'Tyler Bates', 7.0, 4.99, 1247322),
       ('Fight Club', 'David Fincher', 'Dust Brothers', 10.0, 5.99, 17641285);

*/
-- ----------------------------------------
SELECT CONCAT(id, '. ', title) AS movie,	   
	   CONCAT('€', price * 1.1) AS price_in_eur,
       CONCAT(rating * 10, '%') AS score
FROM Films
WHERE rating > 7
ORDER BY rating DESC;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+
| id | name        | surname   | country |
+----+-------------+-----------+---------+
| 1  | Christopher | Nolan     | England |
| 2  | Steven      | Spielberg | USA     |
| 3  | Quentin     | Tarantino | USA     |
| 4  | Martin      | Scorsese  | USA     |
| 5  | David       | Fincher   | USA     |
| 6  | Ridley      | Scott     | England |
| 7  | Stanley     | Kubrick   | USA     |
| 8  | Clint       | Eastwood  | USA     |
| 9  | James       | Cameron   | Canada  |
| 10 | Tim         | Burton    | USA     |
+----+-------------+-----------+---------+

Первое поле таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения.

Напишите запрос, который извлекает из предложенной базы данных имена всех режиссеров, а также определяет количество символов в имени каждого режиссера.

Поле с количеством символов в имени режиссера должно иметь псевдоним name_length.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name_length, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+-------------+-------------+
| name        | name_length |
+-------------+-------------+
| Tim         | 3           |
| Clint       | 5           |
| David       | 5           |
| James       | 5           |
| Martin      | 6           |
| Ridley      | 6           |
| Steven      | 6           |
| Quentin     | 7           |
| Stanley     | 7           |
| Christopher | 11          |
+-------------+-------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40)
);

INSERT INTO Directors (name, surname, country)
VALUES ('Christopher', 'Nolan', 'England'),
       ('Steven', 'Spielberg', 'USA'),
       ('Quentin', 'Tarantino', 'USA'),
       ('Martin', 'Scorsese', 'USA'),
       ('David', 'Fincher', 'USA'),
       ('Ridley', 'Scott', 'England'),
       ('Stanley', 'Kubrick', 'USA'),
       ('Clint', 'Eastwood', 'USA'),
       ('James', 'Cameron', 'Canada'),
       ('Tim', 'Burton', 'USA');

*/
-- ----------------------------------------
SELECT name,	   
	   CHAR_LENGTH(name) AS name_length
FROM Directors
ORDER BY name_length, name;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии режиссеров, имя которых состоит из 6 и менее символов.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+--------+-----------+
| name   | surname   |
+--------+-----------+
| Clint  | Eastwood  |
| David  | Fincher   |
| James  | Cameron   |
| Martin | Scorsese  |
| Ridley | Scott     |
| Steven | Spielberg |
| Tim    | Burton    |
+--------+-----------+

*/
-- ----------------------------------------
SELECT name,	   
	   surname
FROM Directors
WHERE CHAR_LENGTH(name) <= 6
ORDER BY name;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+
| id | name        | surname   | country |
+----+-------------+-----------+---------+
| 1  | christopher | nolan     | England |
| 2  | Steven      | Spielberg | USA     |
| 3  | Quentin     | tarantino | USA     |
| 4  | Martin      | Scorsese  | USA     |
| 5  | David       | Fincher   | USA     |
| 6  | ridley      | Scott     | England |
| 7  | stanley     | Kubrick   | USA     |
| 8  | Clint       | Eastwood  | USA     |
| 9  | James       | cameron   | Canada  |
| 10 | tim         | burton    | USA     |
+----+-------------+-----------+---------+

Первое поле таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии режиссеров, имя или фамилия которых записаны в нижнем регистре.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+
| name        | surname   |
+-------------+-----------+
| christopher | nolan     |
| James       | cameron   |
| Quentin     | tarantino |
| ridley      | Scott     |
| stanley     | Kubrick   |
| tim         | burton    |
+-------------+-----------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40)
);

INSERT INTO Directors (name, surname, country)
VALUES ('christopher', 'nolan', 'England'),
       ('Steven', 'Spielberg', 'USA'),
       ('Quentin', 'tarantino', 'USA'),
       ('Martin', 'Scorsese', 'USA'),
       ('David', 'Fincher', 'USA'),
       ('ridley', 'Scott', 'England'),
       ('stanley', 'Kubrick', 'USA'),
       ('Clint', 'Eastwood', 'USA'),
       ('James', 'cameron', 'Canada'),
       ('tim', 'burton', 'USA');


*/
-- ----------------------------------------
SELECT name,	   
	   surname
FROM Directors
WHERE name LIKE BINARY LOWER(name)
	  OR surname LIKE BINARY LOWER(surname)
ORDER BY name;

-- -----способ 2---------------------------------
SELECT name, surname
FROM Directors
WHERE (BINARY LOWER(name) = name) OR (BINARY LOWER(surname) = surname)
ORDER BY name
-- ------способ 3----------------------------------

SELECT name, surname
FROM Directors
WHERE ASCII(name) BETWEEN 97 AND 122 OR ASCII(surname) BETWEEN 97 AND 122
ORDER BY name



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+
| id | name        | surname   | country |
+----+-------------+-----------+---------+
| 1  | Christopher | Nolan     | England |
| 2  | Steven      | Spielberg | USA     |
| 3  | Quentin     | Tarantino | USA     |
| 4  | Martin      | Scorsese  | USA     |
| 5  | David       | Fincher   | USA     |
| 6  | Ridley      | Scott     | England |
| 7  | Stanley     | Kubrick   | USA     |
| 8  | Clint       | Eastwood  | USA     |
| 9  | James       | Cameron   | Canada  |
| 10 | Tim         | Burton    | USA     |
+----+-------------+-----------+---------+

Первое поле таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, страна рождения. При этом в результирующей таблице название страны рождения каждого режиссера должно быть записано в верхнем регистре.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля country, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+---------+
| name        | surname   | country |
+-------------+-----------+---------+
| James       | Cameron   | CANADA  |
| Christopher | Nolan     | ENGLAND |
| Ridley      | Scott     | ENGLAND |
| Clint       | Eastwood  | USA     |
| David       | Fincher   | USA     |
| Martin      | Scorsese  | USA     |
| Quentin     | Tarantino | USA     |
| Stanley     | Kubrick   | USA     |
| Steven      | Spielberg | USA     |
| Tim         | Burton    | USA     |
+-------------+-----------+---------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40)
);

INSERT INTO Directors (name, surname, country)
VALUES ('Christopher', 'Nolan', 'England'),
       ('Steven', 'Spielberg', 'USA'),
       ('Quentin', 'Tarantino', 'USA'),
       ('Martin', 'Scorsese', 'USA'),
       ('David', 'Fincher', 'USA'),
       ('Ridley', 'Scott', 'England'),
       ('Stanley', 'Kubrick', 'USA'),
       ('Clint', 'Eastwood', 'USA'),
       ('James', 'Cameron', 'Canada'),
       ('Tim', 'Burton', 'USA');

*/
-- ----------------------------------------
SELECT name,	   
	   surname,
       UPPER(country) AS country
FROM Directors
ORDER BY country, name;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+
| id | name        | surname   | country |
+----+-------------+-----------+---------+
| 1  | Christopher | Nolan     | England |
| 2  | Steven      | Spielberg | USA     |
| 3  | Quentin     | Tarantino | USA     |
| 4  | Martin      | Scorsese  | USA     |
| 5  | David       | Fincher   | USA     |
| 6  | Ridley      | Scott     | England |
| 7  | Stanley     | Kubrick   | USA     |
| 8  | Clint       | Eastwood  | USA     |
| 9  | James       | Cameron   | Canada  |
| 10 | Tim         | Burton    | USA     |
+----+-------------+-----------+---------+

Первое поле таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии всех режиссеров. При этом в результирующей таблице все символы в имени каждого режиссера должны быть заменены звездочками (*).

Записи в результирующей таблице должны быть расположены в порядке убывания количества символов в имени режиссера, при совпадении — в лексикографическом порядке фамилий режиссеров.
Результат запроса

+-------------+-----------+
| name        | surname   |
+-------------+-----------+
| *********** | Nolan     |
| *******     | Kubrick   |
| *******     | Tarantino |
| ******      | Scorsese  |
| ******      | Scott     |
| ******      | Spielberg |
| *****       | Cameron   |
| *****       | Eastwood  |
| *****       | Fincher   |
| ***         | Burton    |
+-------------+-----------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40)
);

INSERT INTO Directors (name, surname, country)
VALUES ('Christopher', 'Nolan', 'England'),
       ('Steven', 'Spielberg', 'USA'),
       ('Quentin', 'Tarantino', 'USA'),
       ('Martin', 'Scorsese', 'USA'),
       ('David', 'Fincher', 'USA'),
       ('Ridley', 'Scott', 'England'),
       ('Stanley', 'Kubrick', 'USA'),
       ('Clint', 'Eastwood', 'USA'),
       ('James', 'Cameron', 'Canada'),
       ('Tim', 'Burton', 'USA');

*/
-- ----------------------------------------
SELECT REPEAT('*', CHAR_LENGTH(name)) AS name,	   
	   surname       
FROM Directors
ORDER BY CHAR_LENGTH(name) DESC,
		 surname;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+--------+
| id | name        | surname   | rating |
+----+-------------+-----------+--------+
| 1  | Christopher | Nolan     | 90     |
| 2  | Steven      | Spielberg | 79     |
| 3  | Quentin     | Tarantino | 95     |
| 4  | Martin      | Scorsese  | 68     |
| 5  | David       | Fincher   | 100    |
| 6  | Ridley      | Scott     | 54     |
| 7  | Stanley     | Kubrick   | 9      |
| 8  | Clint       | Eastwood  | 74     |
| 9  | James       | Cameron   | 8      |
| 10 | Tim         | Burton    | 41     |
+----+-------------+-----------+--------+

Первое поле таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — рейтинг по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, рейтинг.

При этом в результирующей таблице рейтинг каждого режиссера должен быть записан в следующем формате:

<рейтинг>%

Более того, рейтинги, представленные однозначными числами, должны быть предварены двумя незначащими нулями, а рейтинги, представленные двухзначными числами, — одним незначащим нулем.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля rating.
Результат запроса

+-------------+-----------+--------+
| name        | surname   | rating |
+-------------+-----------+--------+
| James       | Cameron   | 008%   |
| Stanley     | Kubrick   | 009%   |
| Tim         | Burton    | 041%   |
| Ridley      | Scott     | 054%   |
| Martin      | Scorsese  | 068%   |
| Clint       | Eastwood  | 074%   |
| Steven      | Spielberg | 079%   |
| Christopher | Nolan     | 090%   |
| Quentin     | Tarantino | 095%   |
| David       | Fincher   | 100%   |
+-------------+-----------+--------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    rating  INT
);

INSERT INTO Directors (name, surname, rating)
VALUES ('Christopher', 'Nolan', 90),
       ('Steven', 'Spielberg', 79),
       ('Quentin', 'Tarantino', 95),
       ('Martin', 'Scorsese', 68),
       ('David', 'Fincher', 100),
       ('Ridley', 'Scott', 54),
       ('Stanley', 'Kubrick', 9),
       ('Clint', 'Eastwood', 74),
       ('James', 'Cameron', 8),
       ('Tim', 'Burton', 41);

*/
-- ----------------------------------------
SELECT name,	   
	   surname,
       LPAD(CONCAT(rating, '%'), 4, '0') AS rating
FROM Directors
ORDER BY rating;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая языковому сервису Google Translate. Она включает таблицу Palindromes, которая хранит информацию о словах, являющихся палиндромами на английском и/или русском языках.
Таблица Palindromes

+----+---------+----------+
| id | english | russian  |
+----+---------+----------+
| 1  | hut     | шалаш    |
| 2  | rotor   | ротор    |
| 3  | tenet   | принцип  |
| 4  | radar   | радар    |
| 5  | flood   | потоп    |
| 6  | level   | уровень  |
| 7  | madam   | мадам    |
| 8  | deed    | поступок |
| 9  | it      | оно      |
| 10 | kayak   | каяк     |
+----+---------+----------+

Первое поле таблицы содержит идентификатор слова, второе — английский вариант написания слова, третье — русский вариант написания слова.

Напишите запрос, извлекающий из предложенной базы данных слова (в обоих вариантах написания), которые являются палиндромами на английском и русском языках одновременно.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля english.
Результат запроса

+---------+---------+
| english | russian |
+---------+---------+
| madam   | мадам   |
| radar   | радар   |
| rotor   | ротор   |
+---------+---------+

Скрипт для создания таблицы Palindromes

DROP TABLE IF EXISTS Palindromes;
CREATE TABLE Palindromes
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    english VARCHAR(40),
    russian VARCHAR(40)
);

INSERT INTO Palindromes(english, russian)
VALUES ('hut', 'шалаш'),
       ('rotor', 'ротор'),
       ('tenet', 'принцип'),
       ('radar', 'радар'),
       ('flood', 'потоп'),
       ('level', 'уровень'),
       ('madam', 'мадам'),
       ('deed', 'поступок'),
       ('it', 'оно'),
       ('kayak', 'каяк');

Примечание. Палиндром — слово, одинаково читающееся в обоих направлениях.
*/
-- ----------1------------------------------
SELECT english,	   
	   russian       
FROM Palindromes
WHERE rtrim(english) = REVERSE(rtrim(english)) 
	  AND rtrim(russian) = REVERSE(rtrim(russian))
ORDER BY english;
-- ----------2------------------------------
SELECT english, russian
FROM Palindromes
WHERE english = REVERSE(english) AND
      russian = REVERSE(russian)
ORDER BY english
-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая языковому сервису Google Translate. Она включает таблицу Palindromes, которая хранит информацию о словах, являющихся палиндромами на английском и/или русском языках.
Таблица Palindromes

+----+---------+----------+
| id | english | russian  |
+----+---------+----------+
| 1  | hut     | шалаш    |
| 2  | rotor   | ротор    |
| 3  | tenet   | принцип  |
| 4  | radar   | радар    |
| 5  | flood   | потоп    |
| 6  | level   | уровень  |
| 7  | madam   | мадам    |
| 8  | deed    | поступок |
| 9  | it      | оно      |
| 10 | kayak   | каяк     |
+----+---------+----------+

Первое поле таблицы содержит идентификатор слова, второе — английский вариант написания слова, третье — русский вариант написания слова.

Напишите запрос, извлекающий из предложенной базы данных слова (в английском варианте написания), которые являются палиндромами только на английском языке. При этом в результирующей таблице каждое слово должно быть повторено столько раз, сколько в нем содержится символов.
Результат запроса

+---------------------------+
| english                   |
+---------------------------+
| tenettenettenettenettenet |
| levellevellevellevellevel |
| deeddeeddeeddeed          |
| kayakkayakkayakkayakkayak |
+---------------------------+

Скрипт для создания таблицы Palindromes

DROP TABLE IF EXISTS Palindromes;
CREATE TABLE Palindromes
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    english VARCHAR(40),
    russian VARCHAR(40)
);

INSERT INTO Palindromes(english, russian)
VALUES ('hut', 'шалаш'),
       ('rotor', 'ротор'),
       ('tenet', 'принцип'),
       ('radar', 'радар'),
       ('flood', 'потоп'),
       ('level', 'уровень'),
       ('madam', 'мадам'),
       ('deed', 'поступок'),
       ('it', 'оно'),
       ('kayak', 'каяк');

Примечание 1. Палиндром — слово, которое одинаково читается в обоих направлениях.

Примечание 2. Записи в результирующей таблице могут быть расположены в произвольном порядке.
*/
-- ----------------------------------------
SELECT REPEAT(english, CHAR_LENGTH(english)) AS english	         
FROM Palindromes
WHERE english = REVERSE(english) AND russian != REVERSE(russian);
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая банку HSBC. Она включает таблицу Clients, которая хранит информацию о клиентах банка.
Таблица Clients

+----+-------------+-----------+---------------------+
| id | name        | surname   | card_number         |
+----+-------------+-----------+---------------------+
| 1  | Christopher | Nolan     | 3409-4719-9958-3769 |
| 2  | Steven      | Spielberg | 3757-1304-6041-2423 |
| 3  | Quentin     | Tarantino | 3456-7725-6011-8486 |
| 4  | Martin      | Scorsese  | 3717-9339-7641-9962 |
| 5  | David       | Fincher   | 3789-9065-8560-1250 |
| 6  | Ridley      | Scott     | 3711-7949-7232-0127 |
| 7  | Stanley     | Kubrick   | 3736-9259-2982-7717 |
| 8  | Clint       | Eastwood  | 3484-1457-1207-8953 |
| 9  | James       | Cameron   | 3430-5919-7308-6348 |
| 10 | Tim         | Burton    | 3781-9214-6430-8051 |
+----+-------------+-----------+---------------------+

Первое поле этой таблицы содержит идентификатор клиента, второе — имя, третье — фамилию, четвертое — номер карты.

Напишите запрос, извлекающий из предложенной базы данных информацию о клиентах банка (имя, фамилия, номер банковской карты), фамилии которых начинаются на букву S. При этом в результирующей таблице номер банковской карты каждого клиента должен быть записан без дефисов.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля surname.
Результат запроса

+--------+-----------+------------------+
| name   | surname   | card_number      |
+--------+-----------+------------------+
| Martin | Scorsese  | 3717933976419962 |
| Ridley | Scott     | 3711794972320127 |
| Steven | Spielberg | 3757130460412423 |
+--------+-----------+------------------+

Скрипт для создания таблицы Clients

DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(40),
    surname     VARCHAR(40),
    card_number VARCHAR(40)
);

INSERT INTO Clients (name, surname, card_number)
VALUES ('Christopher', 'Nolan', '3409-4719-9958-3769'),
       ('Steven', 'Spielberg', '3757-1304-6041-2423'),
       ('Quentin', 'Tarantino', '3456-7725-6011-8486'),
       ('Martin', 'Scorsese', '3717-9339-7641-9962'),
       ('David', 'Fincher', '3789-9065-8560-1250'),
       ('Ridley', 'Scott', '3711-7949-7232-0127'),
       ('Stanley', 'Kubrick', '3736-9259-2982-7717'),
       ('Clint', 'Eastwood', '3484-1457-1207-8953'),
       ('James', 'Cameron', '3430-5919-7308-6348'),
       ('Tim', 'Burton', '3781-9214-6430-8051');

*/
-- --------1--------------------------------
SELECT name,
	   surname,       
       replace(card_number, '-', '') AS card_number
FROM Clients
WHERE LEFT(surname, 1) = 'S'
ORDER BY surname;
-- ---------2-------------------------------
SELECT name,
       surname,
       REPLACE(card_number, '-', '') AS card_number
FROM Clients
WHERE surname LIKE 's%'
ORDER BY surname
-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая банку HSBC. Она включает таблицу Clients, которая хранит информацию о клиентах банка.
Таблица Clients

+----+-------------+-----------+---------------------+
| id | name        | surname   | card_number         |
+----+-------------+-----------+---------------------+
| 1  | Christopher | Nolan     | 3409-4719-9958-3769 |
| 2  | Steven      | Spielberg | 3757-1304-6041-2423 |
| 3  | Quentin     | Tarantino | 3456-7725-6011-8486 |
| 4  | Martin      | Scorsese  | 3717-9339-7641-9962 |
| 5  | David       | Fincher   | 3789-9065-8560-1250 |
| 6  | Ridley      | Scott     | 3711-7949-7232-0127 |
| 7  | Stanley     | Kubrick   | 3736-9259-2982-7717 |
| 8  | Clint       | Eastwood  | 3484-1457-1207-8953 |
| 9  | James       | Cameron   | 3430-5919-7308-6348 |
| 10 | Tim         | Burton    | 3781-9214-6430-8051 |
+----+-------------+-----------+---------------------+

Первое поле этой таблицы содержит идентификатор клиента, второе — имя, третье — фамилию, четвертое — номер карты.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию о первых пяти клиентах банка: идентификатор, имя, фамилия, номер банковской карты. При этом в результирующей таблице номер банковской карты каждого клиента должен быть записан без дефисов, а первые 12 цифр номера должны быть заменены звездочками (*).
Результат запроса

+----+-------------+-----------+------------------+
| id | name        | surname   | card_number      |
+----+-------------+-----------+------------------+
| 1  | Christopher | Nolan     | ************3769 |
| 2  | Steven      | Spielberg | ************2423 |
| 3  | Quentin     | Tarantino | ************8486 |
| 4  | Martin      | Scorsese  | ************9962 |
| 5  | David       | Fincher   | ************1250 |
+----+-------------+-----------+------------------+

Скрипт для создания таблицы Clients

DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(40),
    surname     VARCHAR(40),
    card_number VARCHAR(40)
);

INSERT INTO Clients (name, surname, card_number)
VALUES ('Christopher', 'Nolan', '3409-4719-9958-3769'),
       ('Steven', 'Spielberg', '3757-1304-6041-2423'),
       ('Quentin', 'Tarantino', '3456-7725-6011-8486'),
       ('Martin', 'Scorsese', '3717-9339-7641-9962'),
       ('David', 'Fincher', '3789-9065-8560-1250'),
       ('Ridley', 'Scott', '3711-7949-7232-0127'),
       ('Stanley', 'Kubrick', '3736-9259-2982-7717'),
       ('Clint', 'Eastwood', '3484-1457-1207-8953'),
       ('James', 'Cameron', '3430-5919-7308-6348'),
       ('Tim', 'Burton', '3781-9214-6430-8051');

Примечание. Записи в результирующей таблице могут быть расположены в произвольном порядке.
*/
-- ----------------------------------------
SELECT id,
	   name,
	   surname,       
       LPAD(
			RIGHT(card_number, 4), 
            CHAR_LENGTH(REPLACE(card_number, '-', '')),
            '*') AS card_number
FROM Clients
LIMIT 5;
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии всех режиссеров.

При этом в результирующей таблице имя и фамилия каждого режиссера должны быть указаны в одном поле c псевдонимом director в следующем формате:

<первая буква в имени режиссера>. <фамилия режиссера>

Записи в результирующей таблице должны быть расположены в лексикографическом порядке первой буквы в имени режиссера, при совпадении — в лексикографическом порядке фамилии режиссера.
Результат запроса

+--------------+
| director     |
+--------------+
| C. Eastwood  |
| C. Nolan     |
| D. Fincher   |
| J. Cameron   |
| M. Scorsese  |
| Q. Tarantino |
| R. Scott     |
| S. Kubrick   |
| S. Spielberg |
| T. Burton    |
+--------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

*/
-- ----------------------------------------
SELECT  RPAD(LEFT(name, 1), CHAR_LENGTH(name), '*') AS name,
		RPAD(LEFT(surname, 1), CHAR_LENGTH(surname), '*') AS surname	
FROM Directors
ORDER BY LEFT(name, 1), LEFT(surname, 1);
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: идентификатор, имя, фамилия, локальная часть адреса электронной почты.

Поле с локальной частью адреса электронной почты режиссера должно иметь псевдоним local_part.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля id.
Результат запроса

+----+-------------+-----------+------------+
| id | name        | surname   | local_part |
+----+-------------+-----------+------------+
| 10 | Tim         | Burton    | timmy      |
| 9  | James       | Cameron   | jamesava   |
| 8  | Clint       | Eastwood  | cowboy     |
| 7  | Stanley     | Kubrick   | bigstan    |
| 6  | Ridley      | Scott     | riddler    |
| 5  | David       | Fincher   | dfincher   |
| 4  | Martin      | Scorsese  | martins    |
| 3  | Quentin     | Tarantino | queen      |
| 2  | Steven      | Spielberg | sspil      |
| 1  | Christopher | Nolan     | chris      |
+----+-------------+-----------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

Примечание. Адрес электронной почты состоит из двух частей, разделенных символом @. Левая часть адреса называется локальной, правая — доменной. Например, в адресе programmer@pygen.ru локальной частью является programmer, доменной — pygen.ru.*/
-- ----------------------------------------
SELECT
    id,
    name,
    surname,
    LEFT(email, LOCATE('@', email) - 1) AS local_part
FROM 
    Directors
ORDER BY
    id DESC
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | martin      | scorsese  | martins@outlook.com  |
| 5  | david       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | clint       | eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, извлекающий из предложенной базы данных имена и фамилии режиссеров, имя или фамилия которых записаны в нижнем регистре. При этом в результирующей таблице имя и фамилия каждого режиссера должны быть записаны с заглавной буквы.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+
| name        | surname   |
+-------------+-----------+
| Christopher | Nolan     |
| Clint       | Eastwood  |
| David       | Fincher   |
| Martin      | Scorsese  |
| Steven      | Spielberg |
| Tim         | Burton    |
+-------------+-----------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('martin', 'scorsese', 'martins@outlook.com'),
       ('david', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('clint', 'eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'burton', 'timmy@icloud.com');

*/
-- ----------------------------------------
SELECT  
	CONCAT(
			UPPER(LEFT(name, 1)),
            SUBSTRING(name, 2)    
		  ) AS name,    
    
    CONCAT(
			UPPER(LEFT(surname, 1)),
            SUBSTRING(surname, 2)    
		  ) AS surname	

FROM Directors

WHERE
	BINARY name = LOWER(name)
    OR BINARY surname = LOWER(surname)

ORDER BY
	name;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, локальная часть адреса электронной почты, доменная часть адреса электронной почты.

Поле с локальной частью адреса электронной почты режиссера должно иметь псевдоним local_part, поле с доменной частью — domain.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+------------+-------------+
| name        | surname   | local_part | domain      |
+-------------+-----------+------------+-------------+
| Christopher | Nolan     | chris      | gmail.com   |
| Clint       | Eastwood  | cowboy     | yahoo.com   |
| David       | Fincher   | dfincher   | outlook.com |
| James       | Cameron   | jamesava   | yahoo.com   |
| Martin      | Scorsese  | martins    | outlook.com |
| Quentin     | Tarantino | queen      | gmail.com   |
| Ridley      | Scott     | riddler    | gmail.com   |
| Stanley     | Kubrick   | bigstan    | icloud.com  |
| Steven      | Spielberg | sspil      | outlook.com |
| Tim         | Burton    | timmy      | icloud.com  |
+-------------+-----------+------------+-------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

Примечание. Адрес электронной почты состоит из двух частей, разделенных символом @. Левая часть адреса называется локальной, правая — доменной. Например, в адресе programmer@pygen.ru локальной частью является programmer, доменной — pygen.ru.*/
-- ----------------------------------------
SELECT  
	name,
    surname,
    LOWER(SUBSTRING_INDEX(email, '@', 1)) AS local_part,
    LOWER(SUBSTRING_INDEX(email, '@', -1)) AS domain

FROM
	Directors

ORDER BY
	name;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, извлекающий из предложенной базы данных информацию о режиссерах (имя, фамилия, адрес электронной почты), в адресах электронной почты которых доменная часть равна outlook.com. При этом в результирующей таблице доменная часть в адресе электронной почты каждого режиссера должна быть заменена на pygen.ru.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля email.
Результат запроса

+--------+-----------+-------------------+
| name   | surname   | email             |
+--------+-----------+-------------------+
| David  | Fincher   | dfincher@pygen.ru |
| Martin | Scorsese  | martins@pygen.ru  |
| Steven | Spielberg | sspil@pygen.ru    |
+--------+-----------+-------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

Примечание. Адрес электронной почты состоит из двух частей, разделенных символом @. Левая часть адреса называется локальной, правая — доменной. Например, в адресе programmer@pygen.ru локальной частью является programmer, доменной — pygen.ru.*/
-- --------------1--------------------------
SELECT  
	name,
    surname,
    CONCAT(
			LOWER(SUBSTRING_INDEX(email, '@', 1)),
			'@pygen.ru'            
			) AS email    

FROM
	Directors

WHERE
	LOWER(SUBSTRING_INDEX(email, '@', -1)) = 'outlook.com'

ORDER BY
	name;

-- ------------2----------------------------
SELECT name, surname, REPLACE(email, 'outlook.com', 'pygen.ru') email FROM Directors
WHERE email LIKE '%outlook.com'
ORDER BY 3
-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, адрес электронной почты. При этом в результирующей таблице все символы в локальной части адреса электронной почты каждого режиссера должны быть заменены звездочками (*).

Записи в результирующей таблице должны быть расположены в лексикографическом порядке исходной локальной части адреса электронной почты режиссера.
Результат запроса

+-------------+-----------+----------------------+
| name        | surname   | email                |
+-------------+-----------+----------------------+
| Stanley     | Kubrick   | *******@icloud.com   |
| Christopher | Nolan     | *****@gmail.com      |
| Clint       | Eastwood  | ******@yahoo.com     |
| David       | Fincher   | ********@outlook.com |
| James       | Cameron   | ********@yahoo.com   |
| Martin      | Scorsese  | *******@outlook.com  |
| Quentin     | Tarantino | *****@gmail.com      |
| Ridley      | Scott     | *******@gmail.com    |
| Steven      | Spielberg | *****@outlook.com    |
| Tim         | Burton    | *****@icloud.com     |
+-------------+-----------+----------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

Примечание. Адрес электронной почты состоит из двух частей, разделенных символом @. Левая часть адреса называется локальной, правая — доменной. Например, в адресе programmer@pygen.ru локальной частью является programmer, доменной — pygen.ru.*/
-- ----------1------------------------------
SELECT  
	name,
    surname,
    CONCAT(REPEAT('*', CHAR_LENGTH(SUBSTRING_INDEX(email, '@', 1))), '@', SUBSTRING_INDEX(email, '@', -1)) AS email   
FROM
	Directors
ORDER BY
	SUBSTRING_INDEX(email, '@', 1);
-- -------2---------------------------------
SELECT name, surname, 
       LPAD(SUBSTRING(email, LOCATE('@', email)), CHAR_LENGTH(email), '*') AS email
FROM Directors
ORDER BY SUBSTRING_INDEX(email, '@', 1)
-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+
| id | title               | director       |
+----+---------------------+----------------+
| 1  | Toy Story 2         | John Lasseter  |
| 2  | WALL-E              | Andrew Stanton |
| 3  | Ratatouille         | Brad Bird      |
| 4  | Up                  | Pete Docter    |
| 5  | Brave               | Brenda Chapman |
| 6  | Monsters University | Dan Scanlon    |
| 7  | Cars 2              | John Lasseter  |
| 8  | Finding Nemo        | Andrew Stanton |
| 9  | Toy Story           | John Lasseter  |
| 10 | The Incredibles     | Brad Bird      |
+----+---------------------+----------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера.

Напишите запрос, который извлекает из предложенной базы данных названия пяти случайных фильмов.
Возможный результат запроса

+---------------------+
| title               |
+---------------------+
| Finding Nemo        |
| The Incredibles     |
| Up                  |
| WALL-E              |
| Ratatouille         |
+---------------------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(20),
    director VARCHAR(20)
);

INSERT INTO Films (title, director)
VALUES ('Toy Story 2', 'John Lasseter'),
       ('WALL-E', 'Andrew Stanton'),
       ('Ratatouille', 'Brad Bird'),
       ('Up', 'Pete Docter'),
       ('Brave', 'Brenda Chapman'),
       ('Monsters University', 'Dan Scanlon'),
       ('Cars 2', 'John Lasseter'),
       ('Finding Nemo', 'Andrew Stanton'),
       ('Toy Story', 'John Lasseter'),
       ('The Incredibles', 'Brad Bird');

*/
-- ----------------------------------------
SELECT  
	title
FROM
	Sizes
ORDER BY
	RAND()
LIMIT 5
-- ----------------------------------------
SELECT title
FROM Films
ORDER BY RAND()
LIMIT 5
-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая заводу Tesla Gigafactory. Она включает таблицу Sizes, которая хранит информацию о размерах изготавливаемых на заводе деталей.
Таблица Sizes

+----+--------------+-----------------+-------------+
| id | nominal_size | limit_deviation | actual_size |
+----+--------------+-----------------+-------------+
| 1  | 18           | 0.30            | 17.70       |
| 2  | 26           | 0.20            | 25.60       |
| 3  | 14           | 0.40            | 14.10       |
| 4  | 42           | 0.90            | 41.00       |
| 5  | 36           | 0.30            | 36.00       |
| 6  | 24           | 0.10            | 24.20       |
| 7  | 8            | 0.20            | 7.90        |
| 8  | 4            | 0.20            | 4.10        |
| 9  | 1            | 0.50            | 1.50        |
| 10 | 49           | 1.00            | 47.00       |
+----+--------------+-----------------+-------------+

Первое поле этой таблицы содержит идентификатор детали, второе — номинальный размер, третье — допустимую погрешность, четвертое — действительный размер.

Каждая деталь имеет номинальный размер и действительный. Номинальным размером называют размер, определенный инженером при проектировании детали. Действительным размером называют фактический размер детали, полученный после ее изготовления и измерения. Также для каждой детали определяют допустимую погрешность — величину, на которую действительный размер детали может отличаться от номинального. Завод считает деталь бракованной, если разница между ее действительным и номинальным размерами превышает допустимую погрешность.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию о деталях: действительный размер, допустимая погрешность, разница между действительным и номинальным размерами. При этом в результирующую таблицу должны быть добавлены только те детали, которые не являются бракованными.

Поле с разницей между действительным и номинальным размерами детали должно иметь псевдоним difference.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля actual_size.
Результат запроса

+-------------+-----------------+------------+
| actual_size | limit_deviation | difference |
+-------------+-----------------+------------+
| 1.50        | 0.50            | 0.50       |
| 4.10        | 0.20            | 0.10       |
| 7.90        | 0.20            | 0.10       |
| 14.10       | 0.40            | 0.10       |
| 17.70       | 0.30            | 0.30       |
| 36.00       | 0.30            | 0.00       |
+-------------+-----------------+------------+

Скрипт для создания таблицы Sizes

DROP TABLE IF EXISTS Sizes;
CREATE TABLE Sizes
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    nominal_size    INT,
    limit_deviation DECIMAL(3, 2),
    actual_size     DECIMAL(4, 2)
);

INSERT INTO Sizes (nominal_size, limit_deviation, actual_size)
VALUES (18, 0.3, 17.7),
       (26, 0.2, 25.6),
       (14, 0.4, 14.1),
       (42, 0.9, 41),
       (36, 0.3, 36),
       (24, 0.1, 24.2),
       (8, 0.2, 7.9),
       (4.3, 0.2, 4.1),
       (1, 0.5, 1.5),
       (49, 1, 47);

*/
-- ----------------------------------------
SELECT  
	actual_size,
    limit_deviation,
    ABS(actual_size - nominal_size) AS difference    
FROM
	Sizes
WHERE ABS(nominal_size - actual_size) <= limit_deviation 
ORDER BY
	actual_size
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая геосервису "2ГИС". Она включает таблицу Points, которая хранит координаты произвольных точек на плоскости.
Таблица Points

+----+----+
| x  | y  |
+----+----+
| 5  | 7  |
| 21 | 25 |
| 10 | 19 |
| 19 | 29 |
| 0  | 0  |
| 4  | 19 |
| 23 | 1  |
| 22 | 20 |
| 3  | 15 |
| 6  | 18 |
+----+----+

Первое поле этой таблицы содержит координату точки по оси xx, второе — координату точки по оси yy.

Напишите запрос, который извлекает из предложенной базы данных координаты точек, а также определяет, насколько каждая точка удалена от начала координат. При этом в результирующую таблицу должны быть добавлены координаты только тех точек, которые удалены от начала координат на значение больше 20.

Поле с расстоянием от точки до начала координат должно иметь псевдоним distance. Значения в поле distance должны быть округлены до 2 знаков после запятой.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля distance.
Результат запроса

+----+----+----------+
| x  | y  | distance |
+----+----+----------+
| 19 | 29 | 34.67    |
| 21 | 25 | 32.65    |
| 22 | 20 | 29.73    |
| 23 | 1  | 23.02    |
| 10 | 19 | 21.47    |
+----+----+----------+

Скрипт для создания таблицы Points

DROP TABLE IF EXISTS Points;
CREATE TABLE Points
(
    x INT,
    y INT
);

INSERT INTO Points (x, y)
VALUES (5, 7),
       (21, 25),
       (10, 19),
       (19, 29),
       (0, 0),
       (4, 19),
       (23, 1),
       (22, 20),
       (3, 15),
       (6, 18);

Примечание. Расстояние от точки с координатами (x,y) до начала координат вычисляется по формуле sqrt(x2+y2)
​.*/
-- ----------------------------------------
SELECT  
	x,
    y,
    ROUND(SQRT(POW(x, 2) + POW(y, 2)), 2) AS distance    
FROM
	Points
WHERE SQRT(POW(x, 2) + POW(y, 2)) > 20
ORDER BY
	distance DESC
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая анимационной студии Pixar. Она включает таблицу Films, которая хранит информацию о фильмах студии.
Таблица Films

+----+---------------------+----------------+--------------+
| id | title               | director       | running_time |
+----+---------------------+----------------+--------------+
| 1  | Toy Story 2         | John Lasseter  | 69           |
| 2  | WALL-E              | Andrew Stanton | 104          |
| 3  | Ratatouille         | Brad Bird      | 125          |
| 4  | Up                  | Pete Docter    | 101          |
| 5  | Brave               | Brenda Chapman | 102          |
| 6  | Monsters University | Dan Scanlon    | 110          |
| 7  | Cars 2              | John Lasseter  | 120          |
| 8  | Finding Nemo        | Andrew Stanton | 107          |
| 9  | Toy Story           | John Lasseter  | 61           |
| 10 | The Incredibles     | Brad Bird      | 126          |
+----+---------------------+----------------+--------------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — имя и фамилию режиссера, четвертое — продолжительность в минутах.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех фильмах: название, имя и фамилия режиссера, продолжительность.

При этом в результирующей таблице продолжительность каждого фильма должна быть переведена в часы и минуты и указана в поле с псевдонимом timing в следующем формате:

<часы>:<минуты>

Более того, значения часов и минут, представленные однозначными числами, должны быть предварены одним незначащим нулем.

Записи в результирующей таблице должны быть расположены в порядке убывания продолжительности фильма.
Результат запроса

+---------------------+----------------+--------+
| title               | director       | timing |
+---------------------+----------------+--------+
| The Incredibles     | Brad Bird      | 02:06  |
| Ratatouille         | Brad Bird      | 02:05  |
| Cars 2              | John Lasseter  | 02:00  |
| Monsters University | Dan Scanlon    | 01:50  |
| Finding Nemo        | Andrew Stanton | 01:47  |
| WALL-E              | Andrew Stanton | 01:44  |
| Brave               | Brenda Chapman | 01:42  |
| Up                  | Pete Docter    | 01:41  |
| Toy Story 2         | John Lasseter  | 01:09  |
| Toy Story           | John Lasseter  | 01:01  |
+---------------------+----------------+--------+

Скрипт для создания таблицы Films

DROP TABLE IF EXISTS Films;
CREATE TABLE Films
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(20),
    director     VARCHAR(20),
    running_time INT
);

INSERT INTO Films (title, director, running_time)
VALUES ('Toy Story 2', 'John Lasseter', 69),
       ('WALL-E', 'Andrew Stanton', 104),
       ('Ratatouille', 'Brad Bird', 125),
       ('Up', 'Pete Docter', 101),
       ('Brave', 'Brenda Chapman', 102),
       ('Monsters University', 'Dan Scanlon', 110),
       ('Cars 2', 'John Lasseter', 120),
       ('Finding Nemo', 'Andrew Stanton', 107),
       ('Toy Story', 'John Lasseter', 61),
       ('The Incredibles', 'Brad Bird', 126);

*/
-- ----------------------------------------
SELECT  
	CONCAT('[', a, '; ', b, ']') AS 'range',   
	ROUND(RAND() * (b - a) + a) AS random_value    
FROM
	Ranges
ORDER BY
	id
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая математическому ресурсу CleverStudents. Она включает таблицу PrimeNumbers, которая хранит первые десять простых чисел.
Таблица PrimeNumbers

+-----+
| num |
+-----+
| 2   |
| 3   |
| 5   |
| 7   |
| 11  |
| 13  |
| 17  |
| 19  |
| 23  |
| 29  |
+-----+

Напишите запрос, который извлекает из предложенной базы данных все простые числа, а также представляет каждое из них в двоичной, восьмеричной и шестнадцатеричной системах счисления.

Поле с числом в двоичной системе счисления должно иметь псевдоним bin, поле с числом в восьмеричной системе счисления — oct, поле с числом в шестнадцатеричной системе счисления — hex.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля num.
Результат запроса

+-----+-------+-----+-----+
| num | bin   | oct | hex |
+-----+-------+-----+-----+
| 29  | 11101 | 35  | 1D  |
| 23  | 10111 | 27  | 17  |
| 19  | 10011 | 23  | 13  |
| 17  | 10001 | 21  | 11  |
| 13  | 1101  | 15  | D   |
| 11  | 1011  | 13  | B   |
| 7   | 111   | 7   | 7   |
| 5   | 101   | 5   | 5   |
| 3   | 11    | 3   | 3   |
| 2   | 10    | 2   | 2   |
+-----+-------+-----+-----+

Скрипт для создания таблицы PrimeNumbers

DROP TABLE IF EXISTS PrimeNumbers;
CREATE TABLE PrimeNumbers
(
    num INT
);

INSERT INTO PrimeNumbers (num)
VALUES (2),
       (3),
       (5),
       (7),
       (11),
       (13),
       (17),
       (19),
       (23),
       (29);

*/
-- ----------------------------------------
SELECT  
	num,
    CONV(num, 10, 2) AS bin,
    CONV(num, 10, 8) AS oct,
    CONV(num, 10, 16) AS hex    
FROM
	PrimeNumbers
ORDER BY
	num DESC
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая математическому ресурсу CleverStudents. Она включает таблицу Angles, которая хранит градусные меры стандартных углов в тригонометрии.
Таблица Angles

+-------+
| angle |
+-------+
| 0     |
| 30    |
| 45    |
| 60    |
| 90    |
| 120   |
| 135   |
| 150   |
| 180   |
| 210   |
| 225   |
| 240   |
| 270   |
| 300   |
| 315   |
| 330   |
| 360   |
+-------+

Напишите запрос, который извлекает из предложенной базы градусные меры всех углов, а также вычисляет синус и косинус каждого угла.

При этом в результирующей таблице градусная мера каждого угла должна быть указана в поле с псевдонимом x в следующем формате:

<градусная мера>°

Поле с синусом угла должно иметь псевдоним sin(x), поле с косинусом угла — cos(x). Значения в полях sin(x) и cos(x) должны быть округлены до 1 знака после запятой.

Записи в результирующей таблице должны быть расположены в порядке возрастания градусной меры угла.
Результат запроса

+------+--------+--------+
| x    | sin(x) | cos(x) |
+------+--------+--------+
| 0°   | 0.0    | 1.0    |
| 30°  | 0.5    | 0.9    |
| 45°  | 0.7    | 0.7    |
| 60°  | 0.9    | 0.5    |
| 90°  | 1.0    | 0.0    |
| 120° | 0.9    | -0.5   |
| 135° | 0.7    | -0.7   |
| 150° | 0.5    | -0.9   |
| 180° | 0.0    | -1.0   |
| 210° | -0.5   | -0.9   |
| 225° | -0.7   | -0.7   |
| 240° | -0.9   | -0.5   |
| 270° | -1.0   | -0.0   |
| 300° | -0.9   | 0.5    |
| 315° | -0.7   | 0.7    |
| 330° | -0.5   | 0.9    |
| 360° | -0.0   | 1.0    |
+------+--------+--------+

Скрипт для создания таблицы Angles

DROP TABLE IF EXISTS Angles;
CREATE TABLE Angles
(
    angle INT PRIMARY KEY
);

INSERT INTO Angles (angle)
VALUES (0),
       (30),
       (45),
       (60),
       (90),
       (120),
       (135),
       (150),
       (180),
       (210),
       (225),
       (240),
       (270),
       (300),
       (315),
       (330),
       (360);

*/
-- ----------------------------------------
SELECT  
	CONCAT(angle, '°') AS x,
    ROUND(SIN(RADIANS(angle)), 1) AS `sin(x)`,
    ROUND(COS(RADIANS(angle)), 1) AS `cos(x)`
FROM
	Angles
ORDER BY
	angle
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая неизвестному агрегатору рецензий на фильмы. Она включает таблицу Movies, которая хранит информацию о фильмах и их оценках на различных сервисах.
Таблица Movies

+----+-------------------------------------+-------------+------------+------+------------+-----------+
| id | title                               | flickmetrix | metacritic | imdb | letterboxd | kinopoisk |
+----+-------------------------------------+-------------+------------+------+------------+-----------+
| 1  | The Godfather                       | 95          | 100        | 92   | 92         | 87        |
| 2  | Parasite                            | 92          | 96         | 85   | 92         | 80        |
| 3  | Pulp Fiction                        | 90          | 94         | 89   | 86         | 87        |
| 4  | Spirited Away                       | 90          | 96         | 86   | 90         | 85        |
| 5  | Alien                               | 88          | 89         | 85   | 86         | 79        |
| 6  | The Dark Knight                     | 88          | 84         | 90   | 89         | 85        |
| 7  | Spider-Man: Across the Spider-Verse | 87          | 86         | 87   | 90         | 85        |
| 8  | No Country for Old Men              | 87          | 92         | 82   | 86         | 72        |
+----+-------------------------------------+-------------+------------+------+------------+-----------+

Первое поле этой таблицы содержит идентификатор фильма, второе — название, третье — оценку на сервисе FlickMetric, четвертое — оценку на сервисе Metacritic, пятое — оценку на сервисе IMDb, шестое — оценку на сервисе Letterboxd, седьмое — оценку на сервисе "Кинопоиск".

Напишите запрос, который извлекает из предложенной базы данных названия всех фильмов, а также определяет среднюю оценку каждого фильма, при этом не учитывая самую высокую и самую низкую оценки.

Поле со средней оценкой фильма должно иметь псевдоним average_rating. Значения в поле average_rating должны быть округлены до 2 знаков после запятой.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля average_rating, при совпадении — в порядке возрастания значения поля title.
Результат запроса

+-------------------------------------+----------------+
| title                               | average_rating |
+-------------------------------------+----------------+
| The Godfather                       | 93.00          |
| Parasite                            | 89.67          |
| Pulp Fiction                        | 88.67          |
| Spirited Away                       | 88.67          |
| The Dark Knight                     | 87.33          |
| Spider-Man: Across the Spider-Verse | 86.67          |
| Alien                               | 86.33          |
| No Country for Old Men              | 85.00          |
+-------------------------------------+----------------+

Скрипт для создания таблицы Movies

DROP TABLE IF EXISTS Movies;
CREATE TABLE Movies
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(40),
    flickmetrix INT,
    metacritic  INT,
    imdb        INT,
    letterboxd  INT,
    kinopoisk   INT
);

INSERT INTO Movies (title, flickmetrix, metacritic, imdb, letterboxd, kinopoisk)
VALUES ('The Godfather', 95, 100, 92, 92, 87),
       ('Parasite', 92, 96, 85, 92, 80),
       ('Pulp Fiction', 90, 94, 89, 86, 87),
       ('Spirited Away', 90, 96, 86, 90, 85),
       ('Alien', 88, 89, 85, 86, 79),
       ('The Dark Knight', 88, 84, 90, 89, 85),
       ('Spider-Man: Across the Spider-Verse', 87, 86, 87, 90, 85),
       ('No Country for Old Men', 87, 92, 82, 86, 72);

Примечание 1. Гарантируется, что у каждого фильма есть только одна самая высокая оценка и только одна самая низкая оценка.

Примечание 2. Например, средняя оценка фильма под названием The Godfather без учета самой высокой и самой низкой оценок вычисляется следующим образом:
95+92+923=93
395+92+92​=93*/
-- ----------------------------------------
SELECT
	title,
    ROUND((flickmetrix + metacritic + imdb + letterboxd + kinopoisk - GREATEST(flickmetrix, metacritic, imdb, letterboxd, kinopoisk) - LEAST(flickmetrix, metacritic, imdb, letterboxd, kinopoisk)) / 3, 2) AS average_rating
FROM
	Movies
ORDER BY
	average_rating DESC,
    title
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+----------+-----------+----------+--------+
| id | name    | surname  | hire_year | hire_day | salary |
+----+---------+----------+-----------+----------+--------+
| 1  | Larry   | Page     | 1998      | 190      | 100000 |
| 2  | Sergey  | Brin     | 2019      | 319      | 110000 |
| 3  | Sundar  | Pichai   | 2009      | 313      | 130000 |
| 4  | Ruth    | Porat    | 2005      | 330      | 90000  |
| 5  | Sundar  | Nadella  | 1995      | 8        | 125000 |
| 6  | Jeff    | Bezos    | 2003      | 131      | 85000  |
| 7  | Marissa | Mayer    | 2007      | 267      | 95000  |
| 8  | Susan   | Wojcicki | 1988      | 124      | 120000 |
| 9  | Eric    | Schmidt  | 1991      | 321      | 115000 |
| 10 | Sheryl  | Sandberg | 2012      | 201      | 90000  |
+----+---------+----------+-----------+----------+--------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — год приема на работу, пятое — порядковый номер дня приема на работу, седьмое — заработную плату в долларах. Например, сотрудник с идентификатором 5 был принят на работу в 8 по счету день в 1995 году, что соответствует дате 1995-01-08.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех сотрудниках компании: имя, фамилия, год приема на работу, порядковый номер дня приема на работу.

При этом в результирующей таблице имя и фамилия каждого сотрудника должны быть указаны в одном поле c псевдонимом staffer в следующем формате:

<имя> <фамилия>

Год и порядковый номер дня приема на работу каждого сотрудника должны быть преобразованы в дату и указаны в одном поле c псевдонимом hire_date.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля hire_date.
Результат запроса

+-----------------+------------+
| staffer         | hire_date  |
+-----------------+------------+
| Sergey Brin     | 2019-11-15 |
| Sheryl Sandberg | 2012-07-19 |
| Sundar Pichai   | 2009-11-09 |
| Marissa Mayer   | 2007-09-24 |
| Ruth Porat      | 2005-11-26 |
| Jeff Bezos      | 2003-05-11 |
| Larry Page      | 1998-07-09 |
| Sundar Nadella  | 1995-01-08 |
| Eric Schmidt    | 1991-11-17 |
| Susan Wojcicki  | 1988-05-03 |
+-----------------+------------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    hire_year  YEAR,
    hire_day   INT,
    salary     INT
);

INSERT INTO Staff (name, surname, hire_year, hire_day, salary)
VALUES ('Larry', 'Page', 1998, 190, 100000),
       ('Sergey', 'Brin', 2019, 319, 110000),
       ('Sundar', 'Pichai', 2009, 313, 130000),
       ('Ruth', 'Porat', 2005, 330, 90000),
       ('Sundar', 'Nadella', 1995, 8, 125000),
       ('Jeff', 'Bezos', 2003, 131, 85000),
       ('Marissa', 'Mayer', 2007, 267, 95000),
       ('Susan', 'Wojcicki', 1988, 124, 120000),
       ('Eric', 'Schmidt', 1991, 321, 115000),
       ('Sheryl', 'Sandberg', 2012, 201, 90000);

*/
-- ----------------------------------------
SELECT
	CONCAT(name, ' ', surname) AS staffer,
	MAKEDATE(hire_year, hire_day) AS hire_date
FROM
	Staff
ORDER BY
	hire_date DESC
-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+----------+------------+--------+
| id | name    | surname  | hire_date  | salary |
+----+---------+----------+------------+--------+
| 1  | Larry   | Page     | 1998-07-09 | 100000 |
| 2  | Sergey  | Brin     | 2019-11-15 | 110000 |
| 3  | Sundar  | Pichai   | 2009-11-09 | 130000 |
| 4  | Ruth    | Porat    | 2005-11-26 | 90000  |
| 5  | Sundar  | Nadella  | 1995-01-08 | 125000 |
| 6  | Jeff    | Bezos    | 2003-05-11 | 85000  |
| 7  | Marissa | Mayer    | 2007-09-24 | 95000  |
| 8  | Susan   | Wojcicki | 1988-05-03 | 120000 |
| 9  | Eric    | Schmidt  | 1991-11-17 | 115000 |
| 10 | Sheryl  | Sandberg | 2012-07-19 | 90000  |
+----+---------+----------+------------+--------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — дату приема на работу, пятое — заработную плату в долларах.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех сотрудниках компании: имя, фамилия, дата приема на работу.

При этом в результирующей таблице имя и фамилия каждого сотрудника должны быть указаны в одном поле c псевдонимом staffer в следующем формате:

<имя> <фамилия>

Дата приема на работу каждого сотрудника должна быть увеличена на 1 год и 6 месяцев.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля hire_date.
Результат запроса

+-----------------+------------+
| staffer         | hire_date  |
+-----------------+------------+
| Sergey Brin     | 2021-05-15 |
| Sheryl Sandberg | 2014-01-19 |
| Sundar Pichai   | 2011-05-09 |
| Marissa Mayer   | 2009-03-24 |
| Ruth Porat      | 2007-05-26 |
| Jeff Bezos      | 2004-11-11 |
| Larry Page      | 2000-01-09 |
| Sundar Nadella  | 1996-07-08 |
| Eric Schmidt    | 1993-05-17 |
| Susan Wojcicki  | 1989-11-03 |
+-----------------+------------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(20),
    surname   VARCHAR(20),
    hire_date DATE,
    salary    INT
);

INSERT INTO Staff (name, surname, hire_date, salary)
VALUES ('Larry', 'Page', '1998-07-09', 100000),
       ('Sergey', 'Brin', '2019-11-15', 110000),
       ('Sundar', 'Pichai', '2009-11-09', 130000),
       ('Ruth', 'Porat', '2005-11-26', 90000),
       ('Sundar', 'Nadella', '1995-01-08', 125000),
       ('Jeff', 'Bezos', '2003-05-11', 85000),
       ('Marissa', 'Mayer', '2007-09-24', 95000),
       ('Susan', 'Wojcicki', '1988-05-03', 120000),
       ('Eric', 'Schmidt', '1991-11-17', 115000),
       ('Sheryl', 'Sandberg', '2012-07-19', 90000);

*/
-- ----------------------------------------
SELECT
	CONCAT(name, ' ', surname) AS staffer,
	hire_date + INTERVAL '1-6' YEAR_MONTH AS hire_date
FROM
	Staff
ORDER BY
	hire_date DESC;

-- ----------------------------------------

-- ----------------------------------------




/*

Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+----------+------------+--------+
| id | name    | surname  | hire_date  | salary |
+----+---------+----------+------------+--------+
| 1  | Larry   | Page     | 1998-07-09 | 100000 |
| 2  | Sergey  | Brin     | 2019-11-15 | 110000 |
| 3  | Sundar  | Pichai   | 2009-11-09 | 130000 |
| 4  | Ruth    | Porat    | 2005-11-26 | 90000  |
| 5  | Sundar  | Nadella  | 1995-01-08 | 125000 |
| 6  | Jeff    | Bezos    | 2003-05-11 | 85000  |
| 7  | Marissa | Mayer    | 2007-09-24 | 95000  |
| 8  | Susan   | Wojcicki | 1988-05-03 | 120000 |
| 9  | Eric    | Schmidt  | 1991-11-17 | 115000 |
| 10 | Sheryl  | Sandberg | 2012-07-19 | 90000  |
+----+---------+----------+------------+--------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — дату приема на работу, пятое — заработную плату в долларах.

Согласно правилам компании Google, первую заработную плату сотрудники компании получают в последний день первого месяца работы. Например, сотрудник, который устроился на работу 2007-09-24, первую заработную плату получит 2007-09-30.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии всех сотрудников компании, а также для каждого сотрудника указывает дату получения им первой заработной платы.

При этом в результирующей таблице имя и фамилия каждого сотрудника должны быть указаны в одном поле c псевдонимом staffer в следующем формате:

<имя> <фамилия>

Поле с датой получения сотрудником первой заработной платы должно иметь псевдонимом first_salary.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля salary.
Результат запроса

+-----------------+--------------+
| staffer         | first_salary |
+-----------------+--------------+
| Sundar Pichai   | 2009-11-30   |
| Sundar Nadella  | 1995-01-31   |
| Susan Wojcicki  | 1988-05-31   |
| Eric Schmidt    | 1991-11-30   |
| Sergey Brin     | 2019-11-30   |
| Larry Page      | 1998-07-31   |
| Marissa Mayer   | 2007-09-30   |
| Ruth Porat      | 2005-11-30   |
| Sheryl Sandberg | 2012-07-31   |
| Jeff Bezos      | 2003-05-31   |
+-----------------+--------------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(20),
    surname   VARCHAR(20),
    hire_date DATE,
    salary    INT
);

INSERT INTO Staff (name, surname, hire_date, salary)
VALUES ('Larry', 'Page', '1998-07-09', 100000),
       ('Sergey', 'Brin', '2019-11-15', 110000),
       ('Sundar', 'Pichai', '2009-11-09', 130000),
       ('Ruth', 'Porat', '2005-11-26', 90000),
       ('Sundar', 'Nadella', '1995-01-08', 125000),
       ('Jeff', 'Bezos', '2003-05-11', 85000),
       ('Marissa', 'Mayer', '2007-09-24', 95000),
       ('Susan', 'Wojcicki', '1988-05-03', 120000),
       ('Eric', 'Schmidt', '1991-11-17', 115000),
       ('Sheryl', 'Sandberg', '2012-07-19', 90000);

*/
-- ----------------------------------------
SELECT
	CONCAT(name, ' ', surname) AS staffer,
	LAST_DAY(hire_date) AS first_salary 
FROM
	Staff
ORDER BY
	salary DESC;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+----------+------------+--------+
| id | name    | surname  | hire_date  | salary |
+----+---------+----------+------------+--------+
| 1  | Larry   | Page     | 1998-07-09 | 100000 |
| 2  | Sergey  | Brin     | 2019-11-16 | 110000 |
| 3  | Sundar  | Pichai   | 2009-11-09 | 130000 |
| 4  | Ruth    | Porat    | 2005-11-26 | 90000  |
| 5  | Sundar  | Nadella  | 1995-01-08 | 125000 |
| 6  | Jeff    | Bezos    | 2003-05-11 | 85000  |
| 7  | Marissa | Mayer    | 2007-09-24 | 95000  |
| 8  | Susan   | Wojcicki | 1988-05-03 | 120000 |
| 9  | Eric    | Schmidt  | 1991-11-17 | 115000 |
| 10 | Sheryl  | Sandberg | 2012-07-19 | 90000  |
+----+---------+----------+------------+--------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — дату приема на работу, пятое — заработную плату в долларах.

Согласно правилам компании Google, первую заработную плату сотрудники компании получают в последний день первого месяца работы. Например, сотрудник, который устроился на работу 2007-09-24, первую заработную плату получит 2007-09-30.

Напишите запрос, извлекающий из предложенной базы данных имена и фамилии сотрудников, которые на момент получения своей первой заработной платы проработали в компании меньше 15 дней.

При этом в результирующей таблице имя и фамилия каждого сотрудника должны быть указаны в одном поле c псевдонимом staffer в следующем формате:

<имя> <фамилия>

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля staffer.
Результат запроса

+-----------------+
| staffer         |
+-----------------+
| Eric Schmidt    |
| Marissa Mayer   |
| Ruth Porat      |
| Sheryl Sandberg |
+-----------------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(20),
    surname   VARCHAR(20),
    hire_date DATE,
    salary    INT
);

INSERT INTO Staff (name, surname, hire_date, salary)
VALUES ('Larry', 'Page', '1998-07-09', 100000),
       ('Sergey', 'Brin', '2019-11-16', 110000),
       ('Sundar', 'Pichai', '2009-11-09', 130000),
       ('Ruth', 'Porat', '2005-11-26', 90000),
       ('Sundar', 'Nadella', '1995-01-08', 125000),
       ('Jeff', 'Bezos', '2003-05-11', 85000),
       ('Marissa', 'Mayer', '2007-09-24', 95000),
       ('Susan', 'Wojcicki', '1988-05-03', 120000),
       ('Eric', 'Schmidt', '1991-11-17', 115000),
       ('Sheryl', 'Sandberg', '2012-07-19', 90000);

Примечание. День, в который сотрудник устроился на работу, считается отработанным. День, в который сотрудник получил первую заработную плату, также считается отработанным. Например, сотрудник, который устроился на работу 2007-09-24 и получил первую заработную плату 2007-09-30, на момент получения первой заработной платы проработал в компании 7 дней.*/
-- ----------------------------------------
SELECT
	CONCAT(name, ' ', surname) AS staffer    
FROM
	Staff
WHERE TO_DAYS(LAST_DAY(hire_date)) - TO_DAYS(hire_date) + 1 < 15
ORDER BY
	staffer;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+----------+------------+--------+
| id | name    | surname  | hire_date  | salary |
+----+---------+----------+------------+--------+
| 1  | Larry   | Page     | 1998-09-04 | 100000 |
| 2  | Sergey  | Brin     | 1998-09-04 | 110000 |
| 3  | Sundar  | Pichai   | 2009-11-09 | 130000 |
| 4  | Ruth    | Porat    | 2005-11-26 | 90000  |
| 5  | Sundar  | Nadella  | 1998-11-24 | 125000 |
| 6  | Jeff    | Bezos    | 1998-11-22 | 85000  |
| 7  | Marissa | Mayer    | 2007-09-24 | 95000  |
| 8  | Susan   | Wojcicki | 1998-11-23 | 120000 |
| 9  | Eric    | Schmidt  | 2019-11-15 | 115000 |
| 10 | Sheryl  | Sandberg | 2012-07-19 | 90000  |
+----+---------+----------+------------+--------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — дату приема на работу, пятое — заработную плату в долларах.

Напишите запрос, извлекающий из предложенной базы данных имена и фамилии сотрудников, которые на 2023-07-15 проработали в компании больше 9000 дней.

При этом в результирующей таблице имя и фамилия каждого сотрудника должны быть указаны в одном поле c псевдонимом staffer в следующем формате:

<имя> <фамилия>

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля hire_date.
Результат запроса

+-------------+
| staffer     |
+-------------+
| Larry Page  |
| Sergey Brin |
| Jeff Bezos  |
+-------------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(20),
    surname   VARCHAR(20),
    hire_date DATE,
    salary    INT
);

INSERT INTO Staff (name, surname, hire_date, salary)
VALUES ('Larry', 'Page', '1998-09-04', 100000),
       ('Sergey', 'Brin', '1998-09-04', 110000),
       ('Sundar', 'Pichai', '2009-11-09', 130000),
       ('Ruth', 'Porat', '2005-11-26', 90000),
       ('Sundar', 'Nadella', '1998-11-24', 125000),
       ('Jeff', 'Bezos', '1998-11-22', 85000),
       ('Marissa', 'Mayer', '2007-09-24', 95000),
       ('Susan', 'Wojcicki', '1998-11-23', 120000),
       ('Eric', 'Schmidt', '2019-11-15', 115000),
       ('Sheryl', 'Sandberg', '2012-07-19', 90000);

Примечание. День, в который сотрудник устроился на работу, считается отработанным, сама же дата 2023-07-15 отработанной не считается. Например, сотрудник, который устроился на работу 2023-07-13, проработал в компании 2 дня, а сотрудник, который устроился 2023-07-15, — 0 дней.*/
-- ----------------------------------------
SELECT
	CONCAT(name, ' ', surname) AS staffer    
FROM
	Staff
WHERE TO_DAYS('2023-07-15') - TO_DAYS(hire_date) > 9000
ORDER BY
	hire_date;
-- ----------------------------------------

-- ----------------------------------------




/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

Напишите запрос, который извлекает из предложенной базы данных всю информацию о каждом актере, а также разбивает все составные данные (имя и фамилия, дата и время рождения) по отдельным полям.

Поле с именем актера должно иметь псевдоним name, поле с фамилией — surname, поле с датой рождения — birth_date, поле с временем рождения — birth_time.
Результат запроса

+----+----------+------------+------------+------------+
| id | name     | surname    | birth_date | birth_time |
+----+----------+------------+------------+------------+
| 1  | Johnny   | Depp       | 1963-06-09 | 19:10:00   |
| 2  | Natalie  | Portman    | 1981-06-09 | 06:15:00   |
| 3  | Scarlett | Johansson  | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie      | 1975-06-04 | 05:55:00   |
| 5  | Brad     | Pitt       | 1963-12-18 | 10:10:00   |
| 6  | Meryl    | Streep     | 1949-06-22 | 08:05:00   |
| 7  | Leonardo | DiCaprio   | 1974-11-11 | 02:47:00   |
| 8  | Tom      | Hanks      | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston    | 1969-02-11 | 14:25:00   |
| 10 | Denzel   | Washington | 1954-12-28 | 01:40:00   |
+----+----------+------------+------------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    actor      VARCHAR(50),
    birth_date DATETIME
);

INSERT INTO Actors (actor, birth_date)
VALUES ('Johnny Depp', '1963-06-09 19:10:00'),
       ('Natalie Portman', '1981-06-09 06:15:00'),
       ('Scarlett Johansson', '1984-11-22 18:30:00'),
       ('Angelina Jolie', '1975-06-04 05:55:00'),
       ('Brad Pitt', '1963-12-18 10:10:00'),
       ('Meryl Streep', '1949-06-22 08:05:00'),
       ('Leonardo DiCaprio', '1974-11-11 02:47:00'),
       ('Tom Hanks', '1956-07-09 15:20:00'),
       ('Jennifer Aniston', '1969-02-11 14:25:00'),
       ('Denzel Washington', '1954-12-28 01:40:00');

Примечание 1. Компоненты времени (часы, минуты, секунды) в поле birth_time результирующей таблицы необязательно должны быть предварены незначащими нулями.

Примечание 2. Записи в результирующей таблице могут быть расположены в произвольном порядке.
*/
-- ---------------1-------------------------
SELECT
	id,
    substring_index(actor, ' ', 1) AS name,
    substring_index(actor, ' ', -1) AS surname,
    DATE(birth_date) AS birth_date,
    TIME(birth_date) AS birth_time
FROM
	Actors;
-- ---------------2-------------------------
SELECT
    id,
    SUBSTRING_INDEX(actor, ' ', 1) AS name,
    SUBSTRING_INDEX(actor, ' ', -1) AS surname,
    DATE(birth_date) AS 'birth_date',
    DATE_FORMAT(birth_date, '%H:%i:%s') AS 'birth_time'    
FROM
    Actors;
-- ----------------------------------------



/*
Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+------------+------------+------------+
| id | name     | surname    | birth_date | birth_time |
+----+----------+------------+------------+------------+
| 1  | Johnny   | Depp       | 1963-06-09 | 19:10:00   |
| 2  | Natalie  | Portman    | 1981-06-09 | 18:00:00   |
| 3  | Scarlett | Johansson  | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie      | 1975-06-04 | 05:55:00   |
| 5  | Brad     | Pitt       | 1963-12-18 | 10:00:00   |
| 6  | Meryl    | Streep     | 1949-06-22 | 08:05:00   |
| 7  | Leonardo | DiCaprio   | 1974-11-11 | 09:55:00   |
| 8  | Tom      | Hanks      | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston    | 1969-02-11 | 14:25:00   |
| 10 | Denzel   | Washington | 1954-12-28 | 10:40:00   |
+----+----------+------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, время рождения), которые родились в 8, 10 или 18 часов.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля birth_time.
Результат запроса

+----------+------------+------------+
| name     | surname    | birth_time |
+----------+------------+------------+
| Meryl    | Streep     | 08:05:00   |
| Brad     | Pitt       | 10:00:00   |
| Denzel   | Washington | 10:40:00   |
| Natalie  | Portman    | 18:00:00   |
| Scarlett | Johansson  | 18:30:00   |
+----------+------------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE,
    birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES
  ('Johnny', 'Depp', '1963-06-09', '19:10:00'),
  ('Natalie', 'Portman', '1981-06-09', '18:00:00'),
  ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
  ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
  ('Brad', 'Pitt', '1963-12-18', '10:00:00'),
  ('Meryl', 'Streep', '1949-06-22', '08:05:00'),
  ('Leonardo', 'DiCaprio', '1974-11-11', '09:55:00'),
  ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
  ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
  ('Denzel', 'Washington', '1954-12-28', '10:40:00');

Примечание. Компоненты времени (часы, минуты, секунды) в поле birth_time результирующей таблицы необязательно должны быть предварены незначащими нулями.
*/
-- ----------------------------------------
SELECT	
    name,
    surname,    
    birth_time
FROM
	Actors
WHERE
	HOUR(birth_time) = 8 
    OR HOUR(birth_time) = 10
    OR HOUR(birth_time) = 18
ORDER BY
	birth_time;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+------------+------------+
| id | name     | surname     | birth_date | birth_time |
+----+----------+-------------+------------+------------+
| 1  | Paul     | Walker      | 1973-09-12 | 19:10:00   |
| 2  | Emma     | Wiklund     | 1968-09-13 | 06:15:00   |
| 3  | Scarlett | Johansson   | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie       | 1975-06-04 | 05:55:00   |
| 5  | Trevor   | Duke-Moretz | 1986-09-13 | 10:10:00   |
| 6  | Meryl    | Streep      | 1949-06-22 | 08:05:00   |
| 7  | Tyler    | Hoechlin    | 1987-09-11 | 02:47:00   |
| 8  | Tom      | Hanks       | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston     | 1969-02-11 | 14:25:00   |
| 10 | Andrew   | Lincoln     | 1973-09-14 | 01:40:00   |
+----+----------+-------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения), которые родились раньше Дня программиста.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля birth_date.
Результат запроса

+----------+----------+------------+
| name     | surname  | birth_date |
+----------+----------+------------+
| Meryl    | Streep   | 1949-06-22 |
| Tom      | Hanks    | 1956-07-09 |
| Jennifer | Aniston  | 1969-02-11 |
| Paul     | Walker   | 1973-09-12 |
| Angelina | Jolie    | 1975-06-04 |
| Tyler    | Hoechlin | 1987-09-11 |
+----------+----------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE,
    birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Paul', 'Walker', '1973-09-12', '19:10:00'),
       ('Emma', 'Wiklund', '1968-09-13', '06:15:00'),
       ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
       ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
       ('Trevor', 'Duke-Moretz', '1986-09-13', '10:10:00'),
       ('Meryl', 'Streep', '1949-06-22', '08:05:00'),
       ('Tyler', 'Hoechlin', '1987-09-11', '02:47:00'),
       ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
       ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
       ('Andrew', 'Lincoln', '1973-09-14', '01:40:00');

Примечание. День программиста — праздник, отмечаемый в 256 день года. Число 256 (2^8) выбрано по той причине, что это количество различных значений, которые можно выразить с помощью восьмиразрядного байта. Также это максимальная целая степень числа 2, которая не превышает количество дней в году (365 или 366).

*/
-- ----------------------------------------
SELECT	
    name,
    surname,    
    birth_date
FROM
	Actors
WHERE
	dayofyear(birth_date) < 256
ORDER BY
	birth_date;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+------------+------------+------------+
| id | name     | surname    | birth_date | birth_time |
+----+----------+------------+------------+------------+
| 1  | Johnny   | Depp       | 1963-06-09 | 19:10:00   |
| 2  | Natalie  | Portman    | 1981-06-09 | 06:15:00   |
| 3  | Scarlett | Johansson  | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie      | 1975-06-04 | 05:55:00   |
| 5  | Brad     | Pitt       | 1963-12-18 | 10:10:00   |
| 6  | Meryl    | Streep     | 1949-06-22 | 08:05:00   |
| 7  | Leonardo | DiCaprio   | 1974-11-11 | 02:47:00   |
| 8  | Tom      | Hanks      | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston    | 1969-02-11 | 14:25:00   |
| 10 | Denzel   | Washington | 1954-12-28 | 01:40:00   |
+----+----------+------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения), которые родились в среду.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля birth_date.
Результат запроса

+----------+---------+------------+
| name     | surname | birth_date |
+----------+---------+------------+
| Meryl    | Streep  | 1949-06-22 |
| Brad     | Pitt    | 1963-12-18 |
| Angelina | Jolie   | 1975-06-04 |
+----------+---------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE,
    birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Johnny', 'Depp', '1963-06-09', '19:10:00'),
       ('Natalie', 'Portman', '1981-06-09', '06:15:00'),
       ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
       ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
       ('Brad', 'Pitt', '1963-12-18', '10:10:00'),
       ('Meryl', 'Streep', '1949-06-22', '08:05:00'),
       ('Leonardo', 'DiCaprio', '1974-11-11', '02:47:00'),
       ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
       ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
       ('Denzel', 'Washington', '1954-12-28', '01:40:00');

*/
-- -----------1-----------------------------
SELECT	
    name,
    surname,    
    birth_date    
FROM
	Actors
WHERE
	dayname(birth_date) = 'Wednesday'
ORDER BY
	birth_date;
-- -----------2-----------------------------

SET lc_time_names = 'ru_RU';
SELECT	
    name,
    surname,    
    birth_date    
FROM
	Actors
WHERE
	dayname(birth_date) = 'Среда'
ORDER BY
	birth_date;
-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+-----------+------------+------------+------------+
| id | name      | surname    | birth_date | birth_time |
+----+-----------+------------+------------+------------+
| 1  | Kristen   | Stewart    | 1990-04-09 | 02:47:00   |
| 2  | Chris     | Hemsworth  | 1983-08-11 | 08:05:00   |
| 3  | Zac       | Efron      | 1974-10-18 | 02:47:00   |
| 4  | Tom       | Hanks      | 1956-07-09 | 15:20:00   |
| 5  | Jennifer  | Aniston    | 1969-02-11 | 14:25:00   |
| 6  | Natalie   | Portman    | 1981-06-09 | 06:15:00   |
| 7  | Scarlett  | Johansson  | 1984-11-22 | 18:30:00   |
| 8  | Angelina  | Jolie      | 1975-06-04 | 05:55:00   |
| 9  | Charlize  | Theron     | 1975-08-07 | 19:10:00   |
| 10 | Denzel    | Washington | 1954-12-28 | 01:40:00   |
| 11 | Kate      | Winslet    | 1975-09-05 | 10:10:00   |
| 12 | Elizabeth | Olsen      | 1989-02-16 | 02:47:00   |
+----+-----------+------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения), которые родились позже 1975 года во 2 или 4 квартале.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля birth_time.
Результат запроса

+----------+-----------+------------+
| name     | surname   | birth_date |
+----------+-----------+------------+
| Scarlett | Johansson | 1984-11-22 |
| Natalie  | Portman   | 1981-06-09 |
| Kristen  | Stewart   | 1990-04-09 |
+----------+-----------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE,
    birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Kristen', 'Stewart', '1990-04-09', '02:47:00'),
       ('Chris', 'Hemsworth', '1983-08-11', '08:05:00'),
       ('Zac', 'Efron', '1974-10-18', '02:47:00'),
       ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
       ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
       ('Natalie', 'Portman', '1981-06-09', '06:15:00'),
       ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
       ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
       ('Charlize', 'Theron', '1975-08-07', '19:10:00'),
       ('Denzel', 'Washington', '1954-12-28', '01:40:00'),
       ('Kate', 'Winslet', '1975-09-05', '10:10:00'),
       ('Elizabeth', 'Olsen', '1989-02-16', '02:47:00');

*/
-- ----------------------------------------
SELECT	
    name,
    surname,    
    birth_date    
FROM
	Actors
WHERE
	YEAR(birth_date) > 1975 AND (QUARTER(birth_date) = 2 OR QUARTER(birth_date) = 4)
ORDER BY
	birth_time DESC;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+-----------+-----------+------------+------------+
| id | name      | surname   | birth_date | birth_time |
+----+-----------+-----------+------------+------------+
| 1  | Robbie    | Williams  | 1974-02-13 | 12:10:00   |
| 2  | Tom       | Cruise    | 1990-10-11 | 08:25:00   |
| 3  | Christian | Bale      | 1990-12-11 | 15:40:00   |
| 4  | Chris     | Hemsworth | 1983-08-11 | 22:00:00   |
| 5  | Meryl     | Streep    | 1949-07-20 | 14:30:00   |
| 6  | Naomi     | Campbell  | 1970-05-22 | 09:30:00   |
| 7  | Cate      | Blanchett | 1969-03-21 | 13:45:00   |
| 8  | Joaquin   | Phoenix   | 1990-05-14 | 13:30:00   |
| 9  | Johnny    | Depp      | 1963-06-09 | 11:15:00   |
| 10 | Brad      | Pitt      | 1963-07-18 | 09:30:00   |
| 11 | Leonardo  | DiCaprio  | 1974-11-11 | 10:45:00   |
| 12 | Will      | Smith     | 1968-09-25 | 08:50:00   |
| 13 | Penelope  | Cruz      | 1956-06-14 | 12:00:00   |
| 14 | Tom       | Hanks     | 1956-07-10 | 12:00:00   |
| 15 | Julianne  | Moore     | 1960-01-11 | 14:20:00   |
| 16 | Emma      | Watson    | 1990-04-15 | 10:10:00   |
+----+-----------+-----------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения), которые родились с мая по июль включительно.

При этом в результирующей таблице дата рождения каждого актера должна быть записана в следующем формате:

<день месяца> <полное название месяца> <год>

Результат запроса

+----------+----------+--------------+
| name     | surname  | birth_date   |
+----------+----------+--------------+
| Meryl    | Streep   | 20 July 1949 |
| Naomi    | Campbell | 22 May 1970  |
| Joaquin  | Phoenix  | 14 May 1990  |
| Johnny   | Depp     | 9 June 1963  |
| Brad     | Pitt     | 18 July 1963 |
| Penelope | Cruz     | 14 June 1956 |
| Tom      | Hanks    | 10 July 1956 |
+----------+----------+--------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE,
    birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Robbie', 'Williams', '1974-02-13', '12:10:00'),
       ('Tom', 'Cruise', '1990-10-11', '08:25:00'),
       ('Christian', 'Bale', '1990-12-11', '15:40:00'),
       ('Chris', 'Hemsworth', '1983-08-11', '22:00:00'),
       ('Meryl', 'Streep', '1949-07-20', '14:30:00'),
       ('Naomi', 'Campbell', '1970-05-22', '09:30:00'),
       ('Cate', 'Blanchett', '1969-03-21', '13:45:00'),
       ('Joaquin', 'Phoenix', '1990-05-14', '13:30:00'),
       ('Johnny', 'Depp', '1963-06-09', '11:15:00'),
       ('Brad', 'Pitt', '1963-07-18', '09:30:00'),
       ('Leonardo', 'DiCaprio', '1974-11-11', '10:45:00'),
       ('Will', 'Smith', '1968-09-25', '08:50:00'),
       ('Penelope', 'Cruz', '1956-06-14', '12:00:00'),
       ('Tom', 'Hanks', '1956-07-10', '12:00:00'),
       ('Julianne', 'Moore', '1960-01-11', '14:20:00'),
       ('Emma', 'Watson', '1990-04-15', '10:10:00');

*/
-- ----------------------------------------
SELECT	
    name,
    surname,    
    CONCAT_WS(' ', DAY(birth_date), MONTHNAME(birth_date), YEAR(birth_date)) AS birth_date    
FROM
	Actors
WHERE
	MONTH(birth_date) BETWEEN 5 AND 7  
--  MONTH(birth_date) IN (5, 6, 7);
--  MONTH(birth_date) >= 5 AND MONTH(birth_date) <= 7;

-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису Delivery Club. Она включает таблицу Orders, которая хранит информацию о заказах пользователей сервиса.
Таблица Orders

+----+---------------+---------------------+-------------------+
| id | customer_name | order_time          | spent_on_delivery |
+----+---------------+---------------------+-------------------+
| 1  | John          | 2023-10-23 12:00:00 | 01:35:00          |
| 2  | Alice         | 2023-10-23 14:30:00 | 03:20:00          |
| 3  | Bob           | 2023-10-23 08:45:00 | 04:50:00          |
| 4  | Eve           | 2023-10-24 15:30:00 | 02:15:00          |
| 5  | Charlie       | 2023-10-24 09:00:00 | 03:30:00          |
| 6  | Grace         | 2023-10-24 10:30:00 | 05:45:00          |
| 7  | Daniel        | 2023-10-24 14:15:00 | 04:10:00          |
| 8  | Fiona         | 2023-10-25 11:00:00 | 02:55:00          |
| 9  | George        | 2023-10-25 09:30:00 | 03:40:00          |
| 10 | Helen         | 2023-10-26 07:45:00 | 04:20:00          |
| 11 | Ivan          | 2023-10-26 11:30:00 | 03:25:00          |
| 12 | Ahti          | 2023-11-24 10:00:00 | 01:15:00          |
| 13 | Julia         | 2023-10-27 12:00:00 | 05:30:00          |
| 14 | Kevin         | 2023-10-30 10:15:00 | 03:55:00          |
| 15 | Linda         | 2023-11-01 10:30:00 | 05:10:00          |
| 16 | Michael       | 2023-11-01 12:45:00 | 02:15:00          |
+----+---------------+---------------------+-------------------+

Первое поле этой таблицы содержит идентификатор заказа, второе — имя заказчика, третье — дату и время оформления заказа, четвертое — время, потраченное на доставку.

Напишите запрос, извлекающий из предложенной базы данных информацию о заказе (имя заказчика, время доставки), который 24 октября 2023 года был доставлен позже всех.

Поле с временем доставки заказа должно иметь псевдоним delivery_datetime.
Результат запроса

+---------------+---------------------+
| customer_name | delivery_datetime   |
+---------------+---------------------+
| Daniel        | 2023-10-24 18:25:00 |
+---------------+---------------------+

Скрипт для создания таблицы Orders

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders
(
   id                INT AUTO_INCREMENT PRIMARY KEY,
   customer_name     VARCHAR(50),
   order_time        DATETIME,
   spent_on_delivery TIME
);

INSERT INTO Orders (customer_name, order_time, spent_on_delivery)
VALUES ('John', '2023-10-23 12:00:00', '01:35:00'),
       ('Alice', '2023-10-23 14:30:00', '03:20:00'),
       ('Bob', '2023-10-23 08:45:00', '04:50:00'),
       ('Eve', '2023-10-24 15:30:00', '02:15:00'),
       ('Charlie', '2023-10-24 09:00:00', '03:30:00'),
       ('Grace', '2023-10-24 10:30:00', '05:45:00'),
       ('Daniel', '2023-10-24 14:15:00', '04:10:00'),
       ('Fiona', '2023-10-25 11:00:00', '02:55:00'),
       ('George', '2023-10-25 09:30:00', '03:40:00'),
       ('Helen', '2023-10-26 07:45:00', '04:20:00'),
       ('Ivan', '2023-10-26 11:30:00', '03:25:00'),
       ('Ahti', '2023-11-24 10:00:00', '01:15:00'),
       ('Julia', '2023-10-27 12:00:00', '05:30:00'),
       ('Kevin', '2023-10-30 10:15:00', '03:55:00'),
       ('Linda', '2023-11-01 10:30:00', '05:10:00'),
       ('Michael', '2023-11-01 12:45:00', '02:15:00');

Примечание. Гарантируется, что каждый заказ был доставлен в тот же день, в который он был оформлен. Также гарантируется, что 24 октября 2023 года только один заказ был доставлен позже всех.
*/
-- ----------------------------------------
SELECT
	customer_name,
    addtime(order_time, spent_on_delivery) AS delivery_datetime
FROM
	Orders
WHERE DATE(order_time) = '2023-10-24'
ORDER BY
	delivery_datetime DESC
LIMIT 1;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Tasks, которая хранит информацию о задачах, выполняемых сотрудниками компании.
Таблица Tasks

+----+----------------------+------------------------------+------------+------------+
| id | executor             | task                         | task_start | task_end   |
+----+----------------------+------------------------------+------------+------------+
| 1  | Larry Page           | Develop new search algorithm | 2023-10-23 | 2023-10-25 |
| 2  | Sergey Brin          | Analyze user data            | 2023-10-23 | 2023-10-28 |
| 3  | Sundar Pichai        | Launch new product           | 2023-10-24 | 2023-11-03 |
| 4  | Ruth Porat           | Financial analysis           | 2023-10-24 | 2023-10-26 |
| 5  | Eric Schmidt         | Meet with investors          | 2023-10-25 | 2023-10-31 |
| 6  | Susan Wojcicki       | Content strategy             | 2023-10-25 | 2023-10-31 |
| 7  | Hiroshi Lockheimer   | Mobile platform development  | 2023-10-26 | 2023-11-03 |
| 8  | Thomas Kurian        | Cloud services expansion     | 2023-10-26 | 2023-10-28 |
| 9  | Jeff Dean            | Machine learning research    | 2023-10-27 | 2023-11-01 |
| 10 | Aparna Chennapragada | User experience design       | 2023-10-28 | 2023-11-03 |
+----+----------------------+------------------------------+------------+------------+

Первое поле этой таблицы содержит идентификатор задачи, второе — имя и фамилию сотрудника, выполняющего задачу, третье — описание задачи, четвертое — дату начала выполнения задачи, пятое — дату окончания выполнения задачи.

Согласно статистике компании Google, на выполнение каждой задачи уходит минимум один день. В день начала выполнения задачи, а также в день окончания ее выполнения задача считается активной. Например, задача, выполнение которой началось 2023-11-15 и закончилось 2023-11-18, считается выполненной за 4 дня.

Напишите запрос, извлекающий из предложенной базы данных информацию о задаче (описание, имя и фамилия выполняющего, количество потраченных на выполнение дней), которая была выполнена за наибольшее количество дней.

Поле с количеством дней, потраченных на выполнение задачи, должно иметь псевдоним days_spent.
Результат запроса

+--------------------+---------------+------------+
| task               | executor      | days_spent |
+--------------------+---------------+------------+
| Launch new product | Sundar Pichai | 11         |
+--------------------+---------------+------------+

Скрипт для создания таблицы Tasks

DROP TABLE IF EXISTS Tasks;
CREATE TABLE Tasks
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   executor   VARCHAR(20),
   task       VARCHAR(100),
   task_start DATE,
   task_end   DATE
);

INSERT INTO Tasks (executor, task, task_start, task_end)
VALUES ('Larry Page', 'Develop new search algorithm', '2023-10-23', '2023-10-25'),
       ('Sergey Brin', 'Analyze user data', '2023-10-23', '2023-10-28'),
       ('Sundar Pichai', 'Launch new product', '2023-10-24', '2023-11-03'),
       ('Ruth Porat', 'Financial analysis', '2023-10-24', '2023-10-26'),
       ('Eric Schmidt', 'Meet with investors', '2023-10-25', '2023-10-31'),
       ('Susan Wojcicki', 'Content strategy', '2023-10-25', '2023-10-31'),
       ('Hiroshi Lockheimer', 'Mobile platform development', '2023-10-26', '2023-11-03'),
       ('Thomas Kurian', 'Cloud services expansion', '2023-10-26', '2023-10-28'),
       ('Jeff Dean', 'Machine learning research', '2023-10-27', '2023-11-01'),
       ('Aparna Chennapragada', 'User experience design', '2023-10-28', '2023-11-03');

*/
-- ----------------------------------------
SELECT
	task,
    executor,
    DATEDIFF(task_end, task_start) + 1 AS days_spent
FROM
	Tasks
ORDER BY
	days_spent DESC
LIMIT 1;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая стриминговому сервису Twitch. Она включает таблицу Users, которая хранит информацию о пользователях платформы.
Таблица Users

+----+-------------+--------------------+------------------+
| id | username    | subscription_start | subscription_end |
+----+-------------+--------------------+------------------+
| 1  | s1mple      | 2023-10-23         | 2023-11-24       |
| 2  | NiKo        | 2023-10-25         | 2023-11-03       |
| 3  | device      | 2023-10-27         | 2023-12-20       |
| 4  | EliGE       | 2023-10-29         | 2023-11-30       |
| 5  | ZywOo       | 2023-11-01         | 2024-11-01       |
| 6  | Magisk      | 2023-11-03         | 2024-12-04       |
| 7  | stewie2k    | 2023-11-05         | 2023-12-26       |
| 8  | coldzera    | 2023-11-10         | 2023-11-18       |
| 9  | dupreeh     | 2023-10-19         | 2023-12-10       |
| 10 | olofmeister | 2023-09-11         | 2023-12-12       |
| 11 | scream      | 2023-12-13         | 2023-12-14       |
| 12 | kennyS      | 2023-11-15         | 2023-12-16       |
| 13 | f0rest      | 2023-10-17         | 2023-12-18       |
| 14 | GuardiaN    | 2023-12-19         | 2024-01-02       |
| 15 | freakazoid  | 2023-11-21         | 2023-12-22       |
+----+-------------+--------------------+------------------+

Первое поле этой таблицы содержит идентификатор пользователя, второе — псевдоним, третье — дату начала действия подписки, четвертое — дату окончания действия подписки.

Каждый пользователь платформы Twitch имеет оформленную подписку. В день начала действия подписки, а также в день окончания ее действия подписка считается активной. Например, подписка, действие которой начинается 2023-11-15 и заканчивается 2023-11-18, считается активной 4 дня.

Напишите запрос, который извлекает из предложенной базы данных псевдонимы пользователей платформы, а также определяет, на сколько дней оформил подписку каждый пользователь. При этом в результирующую таблицу должны быть добавлены только те пользователи, которые оформили подписку минимум на 15 дней.

Поле с количеством дней, на которое пользователь оформил подписку, должно иметь псевдоним days.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля days, при совпадении — в порядке возрастания значения поля username.
Результат запроса

+-------------+------+
| username    | days |
+-------------+------+
| Magisk      | 398  |
| ZywOo       | 367  |
| olofmeister | 93   |
| f0rest      | 63   |
| device      | 55   |
| dupreeh     | 53   |
| stewie2k    | 52   |
| EliGE       | 33   |
| s1mple      | 33   |
| freakazoid  | 32   |
| kennyS      | 32   |
| GuardiaN    | 15   |
+-------------+------+

Скрипт для создания таблицы Users

DROP TABLE IF EXISTS Users;
CREATE TABLE Users
(
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    username           VARCHAR(50),
    subscription_start DATE,
    subscription_end   DATE
);

INSERT INTO Users (username, subscription_start, subscription_end)
VALUES ('s1mple', '2023-10-23', '2023-11-24'),
       ('NiKo', '2023-10-25', '2023-11-03'),
       ('device', '2023-10-27', '2023-12-20'),
       ('EliGE', '2023-10-29', '2023-11-30'),
       ('ZywOo', '2023-11-01', '2024-11-01'),
       ('Magisk', '2023-11-03', '2024-12-04'),
       ('stewie2k', '2023-11-05', '2023-12-26'),
       ('coldzera', '2023-11-10', '2023-11-18'),
       ('dupreeh', '2023-10-19', '2023-12-10'),
       ('olofmeister', '2023-09-11', '2023-12-12'),
       ('scream', '2023-12-13', '2023-12-14'),
       ('kennyS', '2023-11-15', '2023-12-16'),
       ('f0rest', '2023-10-17', '2023-12-18'),
       ('GuardiaN', '2023-12-19', '2024-01-02'),
       ('freakazoid', '2023-11-21', '2023-12-22');

*/
-- ----------------------------------------
SELECT
	username,
    DATEDIFF(subscription_end, subscription_start) + 1 AS days
FROM
	Users
WHERE DATEDIFF(subscription_end, subscription_start) + 1 >= 15
ORDER BY
	days DESC,
    username;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Tasks, которая хранит информацию о задачах, выполняемых сотрудниками компании.
Таблица Tasks

+----+----------------------+------------------------------+---------------------+---------------------+
| id | executor             | task                         | task_start          | task_end            |
+----+----------------------+------------------------------+---------------------+---------------------+
| 1  | Larry Page           | Develop new search algorithm | 2023-10-23 12:00:00 | 2023-10-25 18:00:00 |
| 2  | Sergey Brin          | Analyze user data            | 2023-10-23 12:00:00 | 2023-10-28 18:00:00 |
| 3  | Sundar Pichai        | Launch new product           | 2023-10-24 15:00:00 | 2023-10-24 16:00:00 |
| 4  | Ruth Porat           | Financial analysis           | 2023-10-24 14:30:00 | 2023-10-26 20:00:00 |
| 5  | Eric Schmidt         | Meet with investors          | 2023-10-24 15:00:00 | 2023-10-24 15:05:00 |
| 6  | Susan Wojcicki       | Content strategy             | 2023-10-25 07:00:00 | 2023-10-25 17:15:00 |
| 7  | Hiroshi Lockheimer   | Mobile platform development  | 2023-10-26 00:00:00 | 2023-11-03 00:00:00 |
| 8  | Thomas Kurian        | Cloud services expansion     | 2023-10-27 09:30:00 | 2023-10-27 15:45:00 |
| 9  | Jeff Dean            | Machine learning research    | 2023-10-30 10:15:00 | 2023-10-30 16:45:00 |
| 10 | Aparna Chennapragada | User experience design       | 2023-10-29 12:00:00 | 2023-11-04 18:00:00 |
+----+----------------------+------------------------------+---------------------+---------------------+

Первое поле этой таблицы содержит идентификатор задачи, второе — имя и фамилию сотрудника, выполняющего задачу, третье — описание задачи, четвертое — дату и время начала выполнения задачи, пятое — дату и время окончания выполнения задачи.

Напишите запрос, извлекающий из предложенной базы данных информацию о задаче (описание, имя и фамилия выполняющего, потраченное на выполнение время), которая была выполнена за наименьшее количество времени.

Поле с временем, потраченным на выполнение задачи, должно иметь псевдоним time_spent.
Результат запроса

+---------------------+--------------+------------+
| task                | executor     | time_spent |
+---------------------+--------------+------------+
| Meet with investors | Eric Schmidt | 00:05:00   |
+---------------------+--------------+------------+

Скрипт для создания таблицы Tasks

DROP TABLE IF EXISTS Tasks;
CREATE TABLE Tasks
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   executor   VARCHAR(20),
   task       VARCHAR(100),
   task_start DATETIME,
   task_end   DATETIME
);

INSERT INTO Tasks (executor, task, task_start, task_end)
VALUES ('Larry Page', 'Develop new search algorithm', '2023-10-23 12:00:00', '2023-10-25 18:00:00'),
       ('Sergey Brin', 'Analyze user data', '2023-10-23 12:00:00', '2023-10-28 18:00:00'),
       ('Sundar Pichai', 'Launch new product', '2023-10-24 15:00:00', '2023-10-24 16:00:00'),
       ('Ruth Porat', 'Financial analysis', '2023-10-24 14:30:00', '2023-10-26 20:00:00'),
       ('Eric Schmidt', 'Meet with investors', '2023-10-24 15:00:00', '2023-10-24 15:05:00'),
       ('Susan Wojcicki', 'Content strategy', '2023-10-25 07:0:00', '2023-10-25 17:15:00'),
       ('Hiroshi Lockheimer', 'Mobile platform development', '2023-10-26', '2023-11-03'),
       ('Thomas Kurian', 'Cloud services expansion', '2023-10-27 09:30:00', '2023-10-27 15:45:00'),
       ('Jeff Dean', 'Machine learning research', '2023-10-30 10:15:00', '2023-10-30 16:45:00'),
       ('Aparna Chennapragada', 'User experience design', '2023-10-29 12:00:00', '2023-11-04 18:00:00');

Примечание 1. Компоненты времени (часы, минуты, секунды) в поле time_spent результирующей таблицы необязательно должна быть предварены незначащими нулями.

Примечание 2. Гарантируется, что только одна задача была выполнена за наименьшее количество времени.
*/
-- ----------------------------------------
SELECT
	task,
    executor,
    TIMEDIFF(task_end, task_start) AS time_spent
FROM
	Tasks
ORDER BY
	time_spent
LIMIT 1;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Staff, которая хранит информацию о сотрудниках компании.
Таблица Staff

+----+---------+---------------+------------+----------+-------------+-----------+
| id | name    | surname       | work_start | work_end | break_start | break_end |
+----+---------+---------------+------------+----------+-------------+-----------+
| 1  | Sundar  | Pichai        | 07:00:00   | 17:00:00 | 12:00:00    | 13:00:00  |
| 2  | Sergey  | Brin          | 08:00:00   | 16:30:00 | 11:30:00    | 12:30:00  |
| 3  | Larry   | Page          | 06:30:00   | 15:45:00 | 12:15:00    | 12:45:00  |
| 4  | Ruth    | Porat         | 08:15:00   | 17:15:00 | 12:30:00    | 13:30:00  |
| 5  | Eric    | Schmidt       | 07:30:00   | 17:45:00 | 12:00:00    | 13:00:00  |
| 6  | Susan   | Wojcicki      | 08:30:00   | 16:30:00 | 12:45:00    | 13:45:00  |
| 7  | Hiroshi | Lockheimer    | 07:45:00   | 17:15:00 | 12:15:00    | 13:15:00  |
| 8  | Thomas  | Kurian        | 07:00:00   | 16:30:00 | 12:30:00    | 13:30:00  |
| 9  | Jeff    | Dean          | 08:15:00   | 17:00:00 | 12:45:00    | 13:45:00  |
| 10 | Aparna  | Chennapragada | 07:30:00   | 17:15:00 | 12:00:00    | 13:00:00  |
+----+---------+---------------+------------+----------+-------------+-----------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — время начала рабочего дня, пятое — время окончания рабочего дня, шестое — время начала обеденного перерыва, седьмое — время окончания обеденного перерыва.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии всех сотрудников компании, а также определяет, сколько времени каждый сотрудник проводит за работой.

При этом имя и фамилия каждого сотрудника должны быть записаны в одном поле с псевдонимом staffer в следующем формате:

<имя> <фамилия>

Поле со временем, которое сотрудник проводит за работой, должно иметь псевдоним work_time.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля work_time, при совпадении — в порядке возрастания значения поля staffer.
Результат запроса

+----------------------+-----------+
| staffer              | work_time |
+----------------------+-----------+
| Eric Schmidt         | 09:15:00  |
| Sundar Pichai        | 09:00:00  |
| Aparna Chennapragada | 08:45:00  |
| Larry Page           | 08:45:00  |
| Hiroshi Lockheimer   | 08:30:00  |
| Thomas Kurian        | 08:30:00  |
| Ruth Porat           | 08:00:00  |
| Jeff Dean            | 07:45:00  |
| Sergey Brin          | 07:30:00  |
| Susan Wojcicki       | 07:00:00  |
+----------------------+-----------+

Скрипт для создания таблицы Staff

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
  id          INT AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(20),
  surname     VARCHAR(20),
  work_start  TIME,
  work_end    TIME,
  break_start TIME,
  break_end   TIME
);

INSERT INTO Staff (name, surname, work_start, work_end, break_start, break_end)
VALUES ('Sundar', 'Pichai', '7:00:00', '17:00:00', '12:00:00', '13:00:00'),
       ('Sergey', 'Brin', '8:00:00', '16:30:00', '11:30:00', '12:30:00'),
       ('Larry', 'Page', '6:30:00', '15:45:00', '12:15:00', '12:45:00'),
       ('Ruth', 'Porat', '8:15:00', '17:15:00', '12:30:00', '13:30:00'),
       ('Eric', 'Schmidt', '7:30:00', '17:45:00', '12:00:00', '13:00:00'),
       ('Susan', 'Wojcicki', '8:30:00', '16:30:00', '12:45:00', '13:45:00'),
       ('Hiroshi', 'Lockheimer', '7:45:00', '17:15:00', '12:15:00', '13:15:00'),
       ('Thomas', 'Kurian', '7:00:00', '16:30:00', '12:30:00', '13:30:00'),
       ('Jeff', 'Dean', '8:15:00', '17:00:00', '12:45:00', '13:45:00'),
       ('Aparna', 'Chennapragada', '7:30:00', '17:15:00', '12:00:00', '13:00:00');

Примечание. Компоненты времени (часы, минуты, секунды) в поле work_time результирующей таблицы необязательно должны быть предварены незначащими нулями.*/
-- ----------------------------------------
SELECT
	CONCAT_WS(' ', name, surname) staffer,
    SUBTIME(
        TIMEDIFF(work_end, work_start), 
		TIMEDIFF(break_end, break_start)
    ) AS work_time
FROM
	Staff
ORDER BY
	work_time DESC,
    staffer;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+------------+
| id | name     | surname     | birth_date |
+----+----------+-------------+------------+
| 1  | Paul     | Walker      | 1973-09-12 |
| 2  | Emma     | Wiklund     | 1968-09-13 |
| 3  | Scarlett | Johansson   | 1984-11-22 |
| 4  | Angelina | Jolie       | 1975-06-04 |
| 5  | Trevor   | Duke-Moretz | 1986-09-13 |
| 6  | Meryl    | Streep      | 1949-06-22 |
| 7  | Tyler    | Hoechlin    | 1987-09-11 |
| 8  | Tom      | Hanks       | 1956-07-09 |
| 9  | Jennifer | Aniston     | 1969-02-11 |
| 10 | Andrew   | Lincoln     | 1973-09-14 |
+----+----------+-------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии актеров, а также определяет текущий возраст каждого актера. При этом вычисление текущего возраста должно выполняться без учета каких-либо часовых поясов.

Поле с текущим возрастом актера должно иметь псевдоним age.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля age.
Возможный результат запроса

+----------+-------------+-----+
| name     | surname     | age |
+----------+-------------+-----+
| Meryl    | Streep      | 74  |
| Tom      | Hanks       | 67  |
| Emma     | Wiklund     | 55  |
| Jennifer | Aniston     | 54  |
| Paul     | Walker      | 50  |
| Andrew   | Lincoln     | 50  |
| Angelina | Jolie       | 48  |
| Scarlett | Johansson   | 38  |
| Trevor   | Duke-Moretz | 37  |
| Tyler    | Hoechlin    | 36  |
+----------+-------------+-----+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(20),
    surname    VARCHAR(20),
    birth_date DATE
);

INSERT INTO Actors (name, surname, birth_date)
VALUES ('Paul', 'Walker', '1973-09-12'),
       ('Emma', 'Wiklund', '1968-09-13'),
       ('Scarlett', 'Johansson', '1984-11-22'),
       ('Angelina', 'Jolie', '1975-06-04'),
       ('Trevor', 'Duke-Moretz', '1986-09-13'),
       ('Meryl', 'Streep', '1949-06-22'),
       ('Tyler', 'Hoechlin', '1987-09-11'),
       ('Tom', 'Hanks', '1956-07-09'),
       ('Jennifer', 'Aniston', '1969-02-11'),
       ('Andrew', 'Lincoln', '1973-09-14');

Примечание. Результат запроса, представленный в условии задачи, является актуальным лишь на момент создания задачи и может отличаться от вашего.*/
-- ----------------------------------------
SELECT
	name, 
    surname,	
    TIMESTAMPDIFF(YEAR, birth_date, NOW()) AS age
FROM
	Actors
ORDER BY
	age DESC;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+------------+
| id | name     | surname     | birth_date |
+----+----------+-------------+------------+
| 1  | Paul     | Walker      | 1973-09-12 |
| 2  | Emma     | Wiklund     | 1968-09-13 |
| 3  | Scarlett | Johansson   | 1984-11-22 |
| 4  | Angelina | Jolie       | 1975-06-04 |
| 5  | Trevor   | Duke-Moretz | 1986-09-13 |
| 6  | Gwyneth  | Paltrow     | 1972-09-27 |
| 7  | Meryl    | Streep      | 1949-06-22 |
| 8  | Leonardo | DiCaprio    | 1972-09-13 |
| 9  | Tyler    | Hoechlin    | 1987-09-11 |
| 10 | Tom      | Hanks       | 1956-07-09 |
| 11 | Jennifer | Aniston     | 1969-02-11 |
| 12 | Andrew   | Lincoln     | 1973-09-14 |
+----+----------+-------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения), которым на 12 сентября 2023 года больше 50 лет.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля birth_date.
Результат запроса

+----------+---------+------------+
| name     | surname | birth_date |
+----------+---------+------------+
| Jennifer | Aniston | 1969-02-11 |
| Emma     | Wiklund | 1968-09-13 |
| Tom      | Hanks   | 1956-07-09 |
| Meryl    | Streep  | 1949-06-22 |
+----------+---------+------------+

Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   name       VARCHAR(20),
   surname    VARCHAR(20),
   birth_date DATE
);

INSERT INTO Actors (name, surname, birth_date)
VALUES ('Paul', 'Walker', '1973-09-12'),
       ('Emma', 'Wiklund', '1968-09-13'),
       ('Scarlett', 'Johansson', '1984-11-22'),
       ('Angelina', 'Jolie', '1975-06-04'),
       ('Trevor', 'Duke-Moretz', '1986-09-13'),
       ('Gwyneth', 'Paltrow', '1972-09-27'),
       ('Meryl', 'Streep', '1949-06-22'),
       ('Leonardo', 'DiCaprio', '1972-09-13'),
       ('Tyler', 'Hoechlin', '1987-09-11'),
       ('Tom', 'Hanks', '1956-07-09'),
       ('Jennifer', 'Aniston', '1969-02-11'),
       ('Andrew', 'Lincoln', '1973-09-14');

*/
-- ----------------------------------------
SELECT
	name, 
    surname,	
    birth_date
FROM
	Actors
WHERE TIMESTAMPDIFF(YEAR, birth_date, '2023-09-12') > 50
ORDER BY
	birth_date DESC;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису аренды автомобилей Sixt. Она включает таблицу Rental, которая хранит информацию о совершенных арендах.
Таблица Rental

+----+---------+-----------+---------------------+---------------------+
| id | name    | car_brand | rent_start          | rent_end            |
+----+---------+-----------+---------------------+---------------------+
| 1  | John    | BMW       | 2023-10-23 12:30:00 | 2023-10-23 18:00:00 |
| 2  | Alice   | Honda     | 2023-10-23 10:00:00 | 2023-10-23 14:30:00 |
| 3  | Bob     | Audi      | 2023-10-24 14:30:00 | 2023-10-24 17:00:00 |
| 4  | Charlie | BMW       | 2023-10-25 08:45:00 | 2023-10-25 12:30:00 |
| 5  | Dave    | Honda     | 2023-10-26 15:30:00 | 2023-10-26 20:15:00 |
| 6  | Emily   | Audi      | 2023-10-26 09:00:00 | 2023-10-26 15:45:00 |
| 7  | Frank   | Mercedes  | 2023-10-27 11:15:00 | 2023-11-27 17:00:00 |
| 8  | Grace   | Honda     | 2023-10-28 08:00:00 | 2023-10-28 13:45:00 |
| 9  | Hank    | Audi      | 2023-10-28 13:30:00 | 2023-10-28 18:45:00 |
| 10 | Irene   | BMW       | 2023-10-29 14:00:00 | 2023-10-29 19:30:00 |
| 11 | Jack    | Honda     | 2023-10-30 07:45:00 | 2023-10-30 12:15:00 |
| 12 | Kate    | BMW       | 2023-10-31 16:30:00 | 2023-10-31 21:00:00 |
| 13 | Lucas   | Audi      | 2023-11-01 10:15:00 | 2023-11-01 14:45:00 |
| 14 | Mary    | Mercedes  | 2023-11-02 13:00:00 | 2023-11-02 17:30:00 |
| 15 | Nina    | BMW       | 2023-11-03 09:30:00 | 2023-11-03 14:00:00 |
+----+---------+-----------+---------------------+---------------------+

Первое поле этой таблицы содержит идентификатор аренды, второе — имя арендатора, третье — марку арендованного автомобиля, четвертое — дату и время начала аренды, пятое — дату и время окончания аренды.

Сервис Sixt предлагает в аренду автомобили различных марок по цене 10 евро в час, причем количество минут и секунд во время выставления счета за аренду не учитывается. Например, если автомобиль был арендован на время 05:50:10, за него будет выставлен счет в 50 евро.

Напишите запрос, который извлекает из предложенной базы данных имена арендаторов, а также определяет, на какое время каждый арендатор взял автомобиль в аренду и какую сумму он за это заплатил. При этом в результирующую таблицу должны быть добавлены только те арендаторы, которые взяли в аренду автомобиль марки BMW.

Сумма, уплаченная каждым арендатором за аренду автомобиля, должна быть указана в поле с псевдонимом rent_amount в следующем формате:

<сумма>€

Поле со временем, на которое арендатор взял автомобиль в аренду, должно иметь псевдоним rent_time.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля rent_time, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+---------+-----------+-------------+
| name    | rent_time | rent_amount |
+---------+-----------+-------------+
| Charlie | 03:45:00  | 30€         |
| Kate    | 04:30:00  | 40€         |
| Nina    | 04:30:00  | 40€         |
| Irene   | 05:30:00  | 50€         |
| John    | 05:30:00  | 50€         |
+---------+-----------+-------------+

Скрипт для создания таблицы Rental

DROP TABLE IF EXISTS Rental;
CREATE TABLE Rental
(
   id         INT PRIMARY KEY,
   name       VARCHAR(255),
   car_brand  VARCHAR(255),
   rent_start DATETIME,
   rent_end   DATETIME
);

INSERT INTO Rental (id, name, car_brand, rent_start, rent_end)
VALUES (1, 'John', 'BMW', '2023-10-23 12:30:00', '2023-10-23 18:00:00'),
       (2, 'Alice', 'Honda', '2023-10-23 10:00:00', '2023-10-23 14:30:00'),
       (3, 'Bob', 'Audi', '2023-10-24 14:30:00', '2023-10-24 17:00:00'),
       (4, 'Charlie', 'BMW', '2023-10-25 08:45:00', '2023-10-25 12:30:00'),
       (5, 'Dave', 'Honda', '2023-10-26 15:30:00', '2023-10-26 20:15:00'),
       (6, 'Emily', 'Audi', '2023-10-26 09:00:00', '2023-10-26 15:45:00'),
       (7, 'Frank', 'Mercedes', '2023-10-27 11:15:00', '2023-11-27 17:00:00'),
       (8, 'Grace', 'Honda', '2023-10-28 08:00:00', '2023-10-28 13:45:00'),
       (9, 'Hank', 'Audi', '2023-10-28 13:30:00', '2023-10-28 18:45:00'),
       (10, 'Irene', 'BMW', '2023-10-29 14:00:00', '2023-10-29 19:30:00'),
       (11, 'Jack', 'Honda', '2023-10-30 07:45:00', '2023-10-30 12:15:00'),
       (12, 'Kate', 'BMW', '2023-10-31 16:30:00', '2023-10-31 21:00:00'),
       (13, 'Lucas', 'Audi', '2023-11-01 10:15:00', '2023-11-01 14:45:00'),
       (14, 'Mary', 'Mercedes', '2023-11-02 13:00:00', '2023-11-02 17:30:00'),
       (15, 'Nina', 'BMW', '2023-11-03 09:30:00', '2023-11-03 14:00:00');

Примечание. Гарантируется, что каждый арендатор взял автомобиль в аренду минимум на один час.*/
-- ----------------------------------------
SELECT
	name, 
    TIMEDIFF(rent_end, rent_start) AS rent_time,	
    CONCAT(HOUR(TIMEDIFF(rent_end, rent_start)) * 10, '€') AS rent_amount
FROM
	Rental
WHERE car_brand = 'BMW'
ORDER BY
	rent_time,
    name;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+------------+------------+
| id | name     | surname     | birth_date | birth_time |
+----+----------+-------------+------------+------------+
| 1  | Paul     | Walker      | 1973-09-12 | 19:10:00   |
| 2  | Emma     | Wiklund     | 1968-09-13 | 06:15:00   |
| 3  | Scarlett | Johansson   | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie       | 1975-06-04 | 05:55:00   |
| 5  | Trevor   | Duke-Moretz | 1986-09-13 | 10:10:00   |
| 6  | Meryl    | Streep      | 1949-06-22 | 08:05:00   |
| 7  | Tyler    | Hoechlin    | 1987-09-11 | 02:47:00   |
| 8  | Tom      | Hanks       | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston     | 1969-02-11 | 14:25:00   |
| 10 | Andrew   | Lincoln     | 1973-09-14 | 01:40:00   |
+----+----------+-------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения, время рождения), которые родились в первые 14 дней месяца.

При этом в результирующей таблице дата рождения каждого актера должна быть записана в следующем формате:

<день месяца>.<номер месяца>.<год>

Время рождения каждого актера должно быть записано в следующем формате:

<часы>:<минуты>

Результат запроса

+----------+-------------+------------+------------+
| name     | surname     | birth_date | birth_time |
+----------+-------------+------------+------------+
| Paul     | Walker      | 12.09.1973 | 19:10      |
| Emma     | Wiklund     | 13.09.1968 | 06:15      |
| Angelina | Jolie       | 04.06.1975 | 05:55      |
| Trevor   | Duke-Moretz | 13.09.1986 | 10:10      |
| Tyler    | Hoechlin    | 11.09.1987 | 02:47      |
| Tom      | Hanks       | 09.07.1956 | 15:20      |
| Jennifer | Aniston     | 11.02.1969 | 14:25      |
| Andrew   | Lincoln     | 14.09.1973 | 01:40      |
+----------+-------------+------------+------------+

Таблица спецификаторов формата
Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   name       VARCHAR(20),
   surname    VARCHAR(20),
   birth_date DATE,
   birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Paul', 'Walker', '1973-09-12', '19:10:00'),
       ('Emma', 'Wiklund', '1968-09-13', '06:15:00'),
       ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
       ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
       ('Trevor', 'Duke-Moretz', '1986-09-13', '10:10:00'),
       ('Meryl', 'Streep', '1949-06-22', '08:05:00'),
       ('Tyler', 'Hoechlin', '1987-09-11', '02:47:00'),
       ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
       ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
       ('Andrew', 'Lincoln', '1973-09-14', '01:40:00');

Примечание. Записи в результирующей таблице могут быть расположены в произвольном порядке.
*/
-- ----------------------------------------
SELECT
	name,
    surname,
    date_format(birth_date, '%d.%m.%Y') AS birth_date,
    date_format(birth_time, '%H:%i') birth_time
FROM
	Actors
WHERE DAY(birth_date) BETWEEN 1 AND 14;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+------------+------------+
| id | name     | surname     | birth_date | birth_time |
+----+----------+-------------+------------+------------+
| 1  | Paul     | Walker      | 1973-09-12 | 19:10:00   |
| 2  | Emma     | Wiklund     | 1968-09-13 | 06:15:00   |
| 3  | Scarlett | Johansson   | 1984-11-22 | 18:30:00   |
| 4  | Angelina | Jolie       | 1975-06-04 | 05:55:00   |
| 5  | Trevor   | Duke-Moretz | 1986-09-13 | 10:10:00   |
| 6  | Meryl    | Streep      | 1949-06-22 | 08:05:00   |
| 7  | Tyler    | Hoechlin    | 1987-09-11 | 02:47:00   |
| 8  | Tom      | Hanks       | 1956-07-09 | 15:20:00   |
| 9  | Jennifer | Aniston     | 1969-02-11 | 14:25:00   |
| 10 | Andrew   | Lincoln     | 1973-09-14 | 01:40:00   |
+----+----------+-------------+------------+------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения, время рождения), которые родились с 1969 по 1975 год включительно.

При этом дата и время рождения каждого актера должны быть указаны в одном поле с псевдонимом birth_datetime в следующем формате:

<день месяца> <полное название месяца> <год>, <часы>:<минуты>

Результат запроса

+----------+---------+--------------------------+
| name     | surname | birth_datetime           |
+----------+---------+--------------------------+
| Paul     | Walker  | 12 September 1973, 19:10 |
| Angelina | Jolie   | 04 June 1975, 05:55      |
| Jennifer | Aniston | 11 February 1969, 14:25  |
| Andrew   | Lincoln | 14 September 1973, 01:40 |
+----------+---------+--------------------------+

Таблица спецификаторов формата
Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   name       VARCHAR(20),
   surname    VARCHAR(20),
   birth_date DATE,
   birth_time TIME
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Paul', 'Walker', '1973-09-12', '19:10:00'),
       ('Emma', 'Wiklund', '1968-09-13', '06:15:00'),
       ('Scarlett', 'Johansson', '1984-11-22', '18:30:00'),
       ('Angelina', 'Jolie', '1975-06-04', '05:55:00'),
       ('Trevor', 'Duke-Moretz', '1986-09-13', '10:10:00'),
       ('Meryl', 'Streep', '1949-06-22', '08:05:00'),
       ('Tyler', 'Hoechlin', '1987-09-11', '02:47:00'),
       ('Tom', 'Hanks', '1956-07-09', '15:20:00'),
       ('Jennifer', 'Aniston', '1969-02-11', '14:25:00'),
       ('Andrew', 'Lincoln', '1973-09-14', '01:40:00');

*/
-- ----------------------------------------

SELECT
	name,
    surname,
    date_format(concat(birth_date, ' ', birth_time), '%d %M %Y, %H:%i') AS birth_datetime 
	-- DATE_FORMAT(TIMESTAMP(birth_date, birth_time), '%d %M %Y, %H:%i') AS birth_datetime
FROM
	Actors
WHERE YEAR(birth_date) BETWEEN 1969 AND 1975;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Actors, которая хранит информацию о различных популярных актерах.
Таблица Actors

+----+----------+-------------+-------------+------------------------+
| id | name     | surname     | birth_date  | birth_time             |
+----+----------+-------------+-------------+------------------------+
| 1  | Paul     | Walker      | 12 Sep 1973 | Hours: 19, Minutes: 10 |
| 2  | Emma     | Wiklund     | 13 Sep 1968 | Hours: 6, Minutes: 15  |
| 3  | Scarlett | Johansson   | 22 Nov 1984 | Hours: 18, Minutes: 30 |
| 4  | Angelina | Jolie       | 04 Jun 1975 | Hours: 5, Minutes: 55  |
| 5  | Trevor   | Duke-Moretz | 13 Sep 1986 | Hours: 10, Minutes: 10 |
| 6  | Meryl    | Streep      | 22 Jun 1949 | Hours: 8, Minutes: 5   |
| 7  | Tyler    | Hoechlin    | 11 Sep 1987 | Hours: 2, Minutes: 47  |
| 8  | Tom      | Hanks       | 09 Jul 1956 | Hours: 15, Minutes: 20 |
| 9  | Jennifer | Aniston     | 11 Feb 1969 | Hours: 14, Minutes: 25 |
| 10 | Andrew   | Lincoln     | 14 Sep 1973 | Hours: 1, Minutes: 40  |
+----+----------+-------------+-------------+------------------------+

Первое поле этой таблицы содержит идентификатор актера, второе — имя, третье — фамилию, четвертое — дату рождения, пятое — время рождения.

Напишите запрос, извлекающий из предложенной базы данных информацию об актерах (имя, фамилия, дата рождения, время рождения), которые родились в сентябре. При этом дата и время рождения каждого актера должны быть записаны в формате ISO.
Результат запроса

+--------+-------------+------------+------------+
| name   | surname     | birth_date | birth_time |
+--------+-------------+------------+------------+
| Paul   | Walker      | 1973-09-12 | 19:10:00   |
| Emma   | Wiklund     | 1968-09-13 | 06:15:00   |
| Trevor | Duke-Moretz | 1986-09-13 | 10:10:00   |
| Tyler  | Hoechlin    | 1987-09-11 | 02:47:00   |
| Andrew | Lincoln     | 1973-09-14 | 01:40:00   |
+--------+-------------+------------+------------+

Таблица спецификаторов формата
Скрипт для создания таблицы Actors

DROP TABLE IF EXISTS Actors;
CREATE TABLE Actors
(
   id         INT AUTO_INCREMENT PRIMARY KEY,
   name       VARCHAR(20),
   surname    VARCHAR(20),
   birth_date VARCHAR(20),
   birth_time VARCHAR(30)
);

INSERT INTO Actors (name, surname, birth_date, birth_time)
VALUES ('Paul', 'Walker', '12 Sep 1973', 'Hours: 19, Minutes: 10'),
       ('Emma', 'Wiklund', '13 Sep 1968', 'Hours: 6, Minutes: 15'),
       ('Scarlett', 'Johansson', '22 Nov 1984', 'Hours: 18, Minutes: 30'),
       ('Angelina', 'Jolie', '04 Jun 1975', 'Hours: 5, Minutes: 55'),
       ('Trevor', 'Duke-Moretz', '13 Sep 1986', 'Hours: 10, Minutes: 10'),
       ('Meryl', 'Streep', '22 Jun 1949', 'Hours: 8, Minutes: 5'),
       ('Tyler', 'Hoechlin', '11 Sep 1987', 'Hours: 2, Minutes: 47'),
       ('Tom', 'Hanks', '09 Jul 1956', 'Hours: 15, Minutes: 20'),
       ('Jennifer', 'Aniston', '11 Feb 1969', 'Hours: 14, Minutes: 25'),
       ('Andrew', 'Lincoln', '14 Sep 1973', 'Hours: 1, Minutes: 40');

Примечание. Записи в результирующей таблице могут быть расположены в произвольном порядке.*/
-- ----------------------------------------
SELECT
	name,
    surname,
    str_to_date(birth_date, '%d %M %Y') AS birth_date,
    str_to_date(birth_time, 'Hours: %H, Minutes: %i') AS birth_time
FROM
	Actors
WHERE month(str_to_date(birth_date, '%d %M %Y')) = 9;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, страна рождения. При этом если страной рождения режиссера является England, то в результирующей таблице она должна остаться без изменений, если какая-либо другая страна — заменена на строку Other country.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+---------------+
| name        | surname   | country       |
+-------------+-----------+---------------+
| Christopher | Nolan     | England       |
| Clint       | Eastwood  | Other country |
| David       | Fincher   | Other country |
| James       | Cameron   | Other country |
| Martin      | Scorsese  | Other country |
| Quentin     | Tarantino | Other country |
| Ridley      | Scott     | England       |
| Stanley     | Kubrick   | Other country |
| Steven      | Spielberg | Other country |
| Tim         | Burton    | Other country |
+-------------+-----------+---------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/ 
-- ----------------------------------------

SELECT
	name,
    surname,
    IF(country = 'England', 'England', 'Other country') AS country
FROM
	Directors
ORDER BY name;

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | NULL   |
| 4  | Martin      | Scorsese  | USA     | NULL   |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | NULL   |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | NULL   |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, рейтинг. При этом если рейтинг режиссера не определен, в результирующей таблице он должен быть заменен на значение 0. 

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля rating, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+--------+
| name        | surname   | rating |
+-------------+-----------+--------+
| Martin      | Scorsese  | 0      |
| Quentin     | Tarantino | 0      |
| Ridley      | Scott     | 0      |
| Tim         | Burton    | 0      |
| James       | Cameron   | 8      |
| Stanley     | Kubrick   | 9      |
| Clint       | Eastwood  | 74     |
| Steven      | Spielberg | 79     |
| Christopher | Nolan     | 90     |
| David       | Fincher   | 100    |
+-------------+-----------+--------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', NULL),
       ('Martin', 'Scorsese', 'USA', NULL),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', NULL),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', NULL);

*/
-- ----------------------------------------
SELECT
	name,
    surname,
    IFNULL(rating, 0) AS rating
FROM
	Directors
ORDER BY rating, name;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+---------+-----------+---------+--------+
| id | name    | surname   | country | rating |
+----+---------+-----------+---------+--------+
| 1  | NULL    | Nolan     | England | 90     |
| 2  | Steven  | Spielberg | USA     | 79     |
| 3  | Quentin | NULL      | USA     | 95     |
| 4  | Martin  | Scorsese  | USA     | 68     |
| 5  | NULL    | NULL      | USA     | 100    |
| 6  | Ridley  | Scott     | England | 54     |
| 7  | NULL    | NULL      | USA     | 9      |
| 8  | Clint   | Eastwood  | USA     | 74     |
| 9  | NULL    | Cameron   | Canada  | 8      |
| 10 | Tim     | Burton    | USA     | 41     |
+----+---------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных имена и рейтинги всех режиссеров. При этом если имя режиссера не определено, то в результирующей таблице оно должно быть заменено на его фамилию. Однако если фамилия режиссера также не определена, то в качестве его имени должна быть использована строка Unknown.

Поле с именем режиссера (или другим значением) должно иметь псевдоним director.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля rating.
Результат запроса

+----------+--------+
| director | rating |
+----------+--------+
| Unknown  | 100    |
| Quentin  | 95     |
| Nolan    | 90     |
| Steven   | 79     |
| Clint    | 74     |
| Martin   | 68     |
| Ridley   | 54     |
| Tim      | 41     |
| Unknown  | 9      |
| Cameron  | 8      |
+----------+--------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

INSERT INTO Directors (name, surname, country, rating)
VALUES (NULL, 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', NULL, 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       (NULL, NULL, 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       (NULL, NULL, 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       (NULL, 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT	
    IFNULL(name, ifnull(surname, 'Unknown')) AS director
    -- COALESCE(name, surname, 'Unknown') AS director
    ,
    rating
    FROM
		Directors
ORDER BY rating DESC;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех режиссерах: имя, фамилия, страна рождения, рейтинг.

При этом если страной рождения режиссера является USA, то в результирующей таблице его рейтинг должен быть увеличен на 10, если какая-либо другая страна — остаться без изменений. Более того, увеличенный рейтинг не должен быть больше 100. Например, если рейтинг режиссера равен 96, то после увеличения на 10 он должен стать равным 100.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля rating, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+-------------+-----------+---------+--------+
| name        | surname   | country | rating |
+-------------+-----------+---------+--------+
| David       | Fincher   | USA     | 100    |
| Quentin     | Tarantino | USA     | 100    |
| Christopher | Nolan     | England | 90     |
| Steven      | Spielberg | USA     | 89     |
| Clint       | Eastwood  | USA     | 84     |
| Martin      | Scorsese  | USA     | 78     |
| Ridley      | Scott     | England | 54     |
| Tim         | Burton    | USA     | 51     |
| Stanley     | Kubrick   | USA     | 19     |
| James       | Cameron   | Canada  | 8      |
+-------------+-----------+---------+--------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT	
    name,
    surname,
    country,
    if(country = 'USA', 
		if(rating <= 90, rating + 10, 100),
        rating
	) AS rating 
FROM
	Directors
ORDER BY
	rating DESC,
    name;
-- ----------------------------------------

SELECT name, surname, country,
       IF(country = 'USA', IF(rating + 10 > 100, 100, rating + 10), rating) AS rating
FROM Directors
ORDER BY rating DESC, name
-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая средней школе Мидтауна. Она включает таблицу Math, которая хранит информацию об оценках учеников выпускного класса за итоговый экзамен по математике.
Таблица Math

+----+--------+----------+-------+
| id | name   | surname  | grade |
+----+--------+----------+-------+
| 1  | Flash  | Thompson | D     |
| 2  | Peter  | Parker   | A     |
| 3  | Mary   | Jane     | D     |
| 4  | Gwen   | Stacy    | B     |
| 5  | Harry  | Osborn   | A     |
| 6  | Ben    | Reilly   | E     |
| 7  | Miles  | Morales  | A     |
| 8  | John   | Jameson  | E     |
| 9  | Curtis | Connors  | B     |
| 10 | Edward | Brock    | C     |
+----+--------+----------+-------+

Первое поле этой таблицы содержит идентификатор ученика, второе — имя, третье — фамилию, четвертое — буквенную оценку.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех учениках: имя, фамилия, оценка за экзамен.

При этом в результирующей таблице оценка каждого ученика должна быть записана в виде ее числового эквивалента:
Буквенная оценка 	Числовая оценка
A 	5
B 	4
C 	3
D 	2
E 	1

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля grade, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+--------+----------+-------+
| name   | surname  | grade |
+--------+----------+-------+
| Harry  | Osborn   | 5     |
| Miles  | Morales  | 5     |
| Peter  | Parker   | 5     |
| Curtis | Connors  | 4     |
| Gwen   | Stacy    | 4     |
| Edward | Brock    | 3     |
| Flash  | Thompson | 2     |
| Mary   | Jane     | 2     |
| Ben    | Reilly   | 1     |
| John   | Jameson  | 1     |
+--------+----------+-------+

Скрипт для создания таблицы Math

DROP TABLE IF EXISTS Math;
CREATE TABLE Math
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    surname VARCHAR(20),
    grade   VARCHAR(20)
);

INSERT INTO Math (name, surname, grade)
VALUES ('Flash', 'Thompson', 'D'),
       ('Peter', 'Parker', 'A'),
       ('Mary', 'Jane', 'D'),
       ('Gwen', 'Stacy', 'B'),
       ('Harry', 'Osborn', 'A'),
       ('Ben', 'Reilly', 'E'),
       ('Miles', 'Morales', 'A'),
       ('John', 'Jameson', 'E'),
       ('Curtis', 'Connors', 'B'),
       ('Edward', 'Brock', 'C');

*/
-- ----------------------------------------
SELECT 
	name,
    surname,
    CASE grade 
		WHEN 'A' THEN 5
        WHEN 'B' THEN 4
        WHEN 'C' THEN 3
        WHEN 'D' THEN 2
        WHEN 'E' THEN 1
    END AS grade
FROM Math
ORDER BY
	grade DESC,
	name;

-- -----2 решение --
-- вариант с CASE здесь более уместен, так как намерение программиста легко читаются. этот  код не так очевиден... хотя эффектен---------------------------------
SELECT
  name,
  surname,
  SUBSTRING(
    "54321",
    LOCATE(grade, "ABCDE"),
    1
  ) AS grade
FROM Math
ORDER BY grade DESC, name;
-- ----------------------------------------
SELECT name, surname, locate(grade, 'EDCBA') as grade
FROM Math
ORDER BY grade DESC, name;


/*

Вам доступна база данных, принадлежащая средней школе Мидтауна. Она включает таблицу Math, которая хранит информацию об оценках учеников выпускного класса за итоговый экзамен по математике.
Таблица Math

+----+--------+----------+-------+
| id | name   | surname  | grade |
+----+--------+----------+-------+
| 1  | Flash  | Thompson | D     |
| 2  | Peter  | Parker   | A     |
| 3  | Mary   | Jane     | D     |
| 4  | Gwen   | Stacy    | B     |
| 5  | Harry  | Osborn   | A     |
| 6  | Ben    | Reilly   | E     |
| 7  | Miles  | Morales  | A     |
| 8  | John   | Jameson  | E     |
| 9  | Curtis | Connors  | B     |
| 10 | Edward | Brock    | C     |
+----+--------+----------+-------+

Первое поле этой таблицы содержит идентификатор ученика, второе — имя, третье — фамилию, четвертое — буквенную оценку.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех учениках: имя, фамилия, оценка за экзамен.

При этом в результирующей таблице оценка каждого ученика должна быть указана в поле с псевдонимом result в виде ее текстового эквивалента:
Оценка 	Описание
A 	Great
B 	Great
C 	Well
D 	Bad
E 	Bad

Записи в результирующей таблице должны быть расположены в порядке убывания буквенной оценки ученика, при совпадении — в лексикографическом порядке имени ученика.
Результат запроса

+--------+----------+--------+
| name   | surname  | result |
+--------+----------+--------+
| Harry  | Osborn   | Great  |
| Miles  | Morales  | Great  |
| Peter  | Parker   | Great  |
| Curtis | Connors  | Great  |
| Gwen   | Stacy    | Great  |
| Edward | Brock    | Well   |
| Flash  | Thompson | Bad    |
| Mary   | Jane     | Bad    |
| Ben    | Reilly   | Bad    |
| John   | Jameson  | Bad    |
+--------+----------+--------+

Скрипт для создания таблицы Math

DROP TABLE IF EXISTS Math;
CREATE TABLE Math
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    surname VARCHAR(20),
    grade   VARCHAR(20)
);

INSERT INTO Math (name, surname, grade)
VALUES ('Flash', 'Thompson', 'D'),
       ('Peter', 'Parker', 'A'),
       ('Mary', 'Jane', 'D'),
       ('Gwen', 'Stacy', 'B'),
       ('Harry', 'Osborn', 'A'),
       ('Ben', 'Reilly', 'E'),
       ('Miles', 'Morales', 'A'),
       ('John', 'Jameson', 'E'),
       ('Curtis', 'Connors', 'B'),
       ('Edward', 'Brock', 'C');

Примечание. В буквенной системе оценок наибольшей считается A, наименьшей — E.
*/
-- ----------------------------------------
SELECT 
    name,
    surname,
    CASE
        WHEN grade IN ('A', 'B') THEN 'Great'
        WHEN grade = 'C' THEN 'Well'
        WHEN grade IN ('D', 'E') THEN 'Bad'
       END as result
FROM Math
ORDER BY 
    grade, name;
-- ----------------------------------------

-- ----------------------------------------



/*

Вам доступна база данных, принадлежащая средней школе Мидтауна. Она включает таблицу Math, которая хранит информацию об оценках учеников выпускного класса за итоговый экзамен по математике.
Таблица Math

+----+--------+----------+-------+
| id | name   | surname  | grade |
+----+--------+----------+-------+
| 1  | Flash  | Thompson | 99    |
| 2  | Peter  | Parker   | 84    |
| 3  | Mary   | Jane     | 9     |
| 4  | Gwen   | Stacy    | 23    |
| 5  | Harry  | Osborn   | 39    |
| 6  | Ben    | Reilly   | 77    |
| 7  | Miles  | Morales  | 59    |
| 8  | John   | Jameson  | 0     |
| 9  | Curtis | Connors  | 100   |
| 10 | Edward | Brock    | 59    |
+----+--------+----------+-------+

Первое поле этой таблицы содержит идентификатор ученика, второе — имя, третье — фамилию, четвертое — оценку по стобалльной шкале.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех учениках: имя, фамилия, оценка за экзамен.

При этом в результирующей таблице оценка каждого ученика должна быть переведена из стобалльной шкалы в пятибалльную и записана в соответствующем виде:
Стобалльная шкала 	Пятибалльная шкала
[80; 100] 	5
[60; 79] 	4
[30; 59] 	3
[10; 29] 	2
[0; 9] 	1

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля grade, при совпадении — в порядке возрастания значения поля name.
Результат запроса

+--------+----------+-------+
| name   | surname  | grade |
+--------+----------+-------+
| Curtis | Connors  | 5     |
| Flash  | Thompson | 5     |
| Peter  | Parker   | 5     |
| Ben    | Reilly   | 4     |
| Edward | Brock    | 3     |
| Harry  | Osborn   | 3     |
| Miles  | Morales  | 3     |
| Gwen   | Stacy    | 2     |
| John   | Jameson  | 1     |
| Mary   | Jane     | 1     |
+--------+----------+-------+

Скрипт для создания таблицы Math

DROP TABLE IF EXISTS Math;
CREATE TABLE Math
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    surname VARCHAR(20),
    grade   INT
);

INSERT INTO Math (name, surname, grade)
VALUES ('Flash', 'Thompson', 99),
       ('Peter', 'Parker', 84),
       ('Mary', 'Jane', 9),
       ('Gwen', 'Stacy', 23),
       ('Harry', 'Osborn', 39),
       ('Ben', 'Reilly', 77),
       ('Miles', 'Morales', 59),
       ('John', 'Jameson', 0),
       ('Curtis', 'Connors', 100),
       ('Edward', 'Brock', 59);

*/
-- ----------------------------------------
SELECT 
    name,
    surname,
    CASE
        WHEN grade BETWEEN 80 AND 100 THEN 5
        WHEN grade BETWEEN 60 AND 79 THEN 4
        WHEN grade BETWEEN 30 AND 59 THEN 3
        WHEN grade BETWEEN 10 AND 29 THEN 2
        WHEN grade BETWEEN 0 AND 9 THEN 1        
	END as grade
FROM Math
ORDER BY 
    grade DESC,
    name;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая средней школе Мидтауна. Она включает таблицу Students, которая хранит информацию об учениках школы.
Таблица Students

+----+--------+----------+----------------------------------+
| id | name   | surname  | email                            |
+----+--------+----------+----------------------------------+
| 1  | Flash  | Thompson | 99power@midtown.com              |
| 2  | Peter  | Parker   | FriendlyNeighborhood@midtown.com |
| 3  | Mary   | Jane     | redhead@gmail.com                |
| 4  | Gwen   | Stacy    | 7@yahoo.com                      |
| 5  | Harry  | Osborn   | 1justharry@outlook.com           |
| 6  | Ben    | Reilly   | R@midtown.com                    |
| 7  | Miles  | Morales  | yourspidey2@midtown.com          |
| 8  | John   | Jameson  | boss@bugle.com                   |
| 9  | Curtis | Connors  | 5@midtown.com                    |
| 10 | Edward | Brock    | WeAreVenom@midtown.com           |
+----+--------+----------+----------------------------------+

Первое поле этой таблицы содержит идентификатор ученика, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Каждый ученик средней школы Мидтауна должен иметь корректный адрес электронной почты, однако не все учащиеся соблюдают данное правило. Адрес электронный почты считается корректным, если выполняется ряд следующих условий:

    доменная часть адреса равна midtown.com
    локальная часть адреса состоит как минимум из двух символов
    первый символ в локальной части адреса не является цифрой

Напишите запрос, который извлекает из этой предложенной базы данных имена и фамилии всех учеников школы, а также проверяет на корректность адреса их электронных почт.

Поле с информацией о корректности адреса электронной почты должно иметь псевдоним email_status и содержать строку Correct, если адрес электронной почти ученика является корректным, или Incorrect в противном случае.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля name.
Результат запроса

+--------+----------+--------------+
| name   | surname  | email_status |
+--------+----------+--------------+
| Ben    | Reilly   | Incorrect    |
| Curtis | Connors  | Incorrect    |
| Edward | Brock    | Correct      |
| Flash  | Thompson | Incorrect    |
| Gwen   | Stacy    | Incorrect    |
| Harry  | Osborn   | Incorrect    |
| John   | Jameson  | Incorrect    |
| Mary   | Jane     | Incorrect    |
| Miles  | Morales  | Correct      |
| Peter  | Parker   | Correct      |
+--------+----------+--------------+

Скрипт для создания таблицы Students

DROP TABLE IF EXISTS Students;
CREATE TABLE Students
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    surname VARCHAR(20),
    email   VARCHAR(40)
);

INSERT INTO Students (name, surname, email)
VALUES ('Flash', 'Thompson', '99power@midtown.com'),
       ('Peter', 'Parker', 'FriendlyNeighborhood@midtown.com'),
       ('Mary', 'Jane', 'redhead@gmail.com'),
       ('Gwen', 'Stacy', '7@yahoo.com'),
       ('Harry', 'Osborn', '1justharry@outlook.com'),
       ('Ben', 'Reilly', 'R@midtown.com'),
       ('Miles', 'Morales', 'yourspidey2@midtown.com'),
       ('John', 'Jameson', 'boss@bugle.com'),
       ('Curtis', 'Connors', '5@midtown.com'),
       ('Edward', 'Brock', 'WeAreVenom@midtown.com');

Примечание. Адрес электронной почты состоит из двух частей, разделенных символом @. Левая часть адреса называется локальной, правая — доменной. Например, в адресе programmer@pygen.ru локальной частью является programmer, доменной — pygen.ru.*/
-- ----------------------------------------
SELECT 
    name,
    surname,
    CASE
        WHEN grade BETWEEN 80 AND 100 THEN 5
        WHEN grade BETWEEN 60 AND 79 THEN 4
        WHEN grade BETWEEN 30 AND 59 THEN 3
        WHEN grade BETWEEN 10 AND 29 THEN 2
     -- WHEN grade BETWEEN 0 AND 9 THEN 1
        ELSE 1 -- или верхняя строка       
	END as grade
FROM Math
ORDER BY 
    grade DESC,
    name;
-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------
SELECT name, surname,
       CASE
           WHEN SUBSTRING_INDEX(email, '@', -1) != 'midtown.com' THEN 'Incorrect'
           WHEN LOCATE('@', email) < 3 THEN 'Incorrect'
           WHEN LEFT(email, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') THEN 'Incorrect'
           ELSE 'Correct'
       END as email_status
FROM Students
ORDER BY name
-- ----------------------------------------

SELECT name, surname, 
       CASE 
           WHEN email NOT LIKE '__%@midtown.com' THEN 'Incorrect'
           WHEN LEFT(email, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') THEN 'Incorrect'
           ELSE 'Correct'
       END AS email_status
FROM Students
ORDER BY name
-- ----------------------------------------



/*Вам доступна база данных, принадлежащая авиакомпании Utair. Она включает таблицу Clients, которая хранит информацию о клиентах компании.
Таблица Clients

+----+--------+----------+--------+
| id | name   | surname  | status |
+----+--------+----------+--------+
| 1  | Flash  | Thompson | Gold   |
| 2  | Peter  | Parker   | Basic  |
| 3  | Mary   | Jane     | Bronze |
| 4  | Gwen   | Stacy    | Silver |
| 5  | Harry  | Osborn   | Gold   |
| 6  | Ben    | Reilly   | Basic  |
| 7  | Miles  | Morales  | Basic  |
| 8  | John   | Jameson  | Silver |
| 9  | Curtis | Connors  | Bronze |
| 10 | Edward | Brock    | Silver |
+----+--------+----------+--------+

Первое поле этой таблицы содержит идентификатор клиента, второе — имя, третье — фамилию, четвертое — статус в программе лояльности.

Каждый клиент авиакомпании Utair участвует в программе лояльности и имеет определенный статус. Самым высоким статусом считается Gold, затем идут Silver, Bronze и Basic.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех клиентах авиакомпании: имя, фамилия, статус в программе лояльности.

Записи в результирующей таблице должны быть расположены в порядке убывания статуса клиента, при совпадении — в лексикографическом порядке имени клиента.
Результат запроса

+--------+----------+--------+
| name   | surname  | status |
+--------+----------+--------+
| Flash  | Thompson | Gold   |
| Harry  | Osborn   | Gold   |
| Edward | Brock    | Silver |
| Gwen   | Stacy    | Silver |
| John   | Jameson  | Silver |
| Curtis | Connors  | Bronze |
| Mary   | Jane     | Bronze |
| Ben    | Reilly   | Basic  |
| Miles  | Morales  | Basic  |
| Peter  | Parker   | Basic  |
+--------+----------+--------+

Скрипт для создания таблицы Clients

DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    surname VARCHAR(20),
    status VARCHAR(40)
);

INSERT INTO Clients (name, surname, status)
VALUES ('Flash', 'Thompson', 'Gold'),
       ('Peter', 'Parker', 'Basic'),
       ('Mary', 'Jane', 'Bronze'),
       ('Gwen', 'Stacy', 'Silver'),
       ('Harry', 'Osborn', 'Gold'),
       ('Ben', 'Reilly', 'Basic'),
       ('Miles', 'Morales', 'Basic'),
       ('John', 'Jameson', 'Silver'),
       ('Curtis', 'Connors', 'Bronze'),
       ('Edward', 'Brock', 'Silver');

*/
-- -----------1-----------------------------
SELECT 
    name,
    surname,      
    status
FROM Clients
ORDER BY 
    CASE status
        WHEN 'Gold' THEN 4
        WHEN 'Silver' THEN 3
        WHEN 'Bronze' THEN 2
        WHEN 'Basic' THEN 1
    END DESC,
    name;

-- -----------2-----------------------------
SELECT name, surname, status
FROM Clients
ORDER BY FIELD(status, 'Basic', 'Bronze', 'Silver', 'Gold') DESC, name;
-- ----------------------------------------



/*Вам доступна база данных, принадлежащая неизвестной организации по проведению олимпиад. Она включает таблицу Results, которая хранит информацию о результатах участников определенной олимпиады.
Таблица Results

+----+----------+-------------+----------+
| id | name     | surname     | time     |
+----+----------+-------------+----------+
| 1  | Joel     | Miller      | 02:21:00 |
| 2  | Arthur   | Morgan      | 00:10:00 |
| 3  | Leonhard | Euler       | 00:59:00 |
| 4  | Alan     | Wake        | 00:32:00 |
| 5  | Alyx     | Vance       | 00:16:00 |
| 6  | Jill     | Valentine   | 00:44:00 |
| 7  | Isaac    | Clarke      | 01:01:00 |
| 8  | Gordon   | Freeman     | 00:17:00 |
| 9  | Alan     | Turing      | 00:31:00 |
| 10 | Stephen  | Hawking     | 00:23:00 |
| 11 | Ryu      | Hayabusa    | 00:41:00 |
| 12 | Johnny   | Silverhand  | 00:11:00 |
| 13 | Samus    | Aran        | 00:29:00 |
| 14 | Nathan   | Drake       | 00:54:00 |
| 15 | Erwin    | Schrodinger | 00:30:00 |
| 16 | Max      | Payne       | 01:00:00 |
| 17 | Tom      | Nook        | 00:12:00 |
+----+----------+-------------+----------+

Первое поле этой таблицы содержит идентификатор участника, второе — имя, третье — фамилию, четвертое — время, затраченное на решение олимпиады.

Организация начисляет участникам олимпиады баллы в зависимости от того, сколько времени они затратили на решение. Если участник справился с олимпиадой за 30 и меньше минут, он получит 100 баллов. За каждую лишнюю затраченную минуту участник теряет 1 балл. Таким образом, участник, завершивший олимпиаду за 31 минуту, получит 99 баллов, за 32 минуты — 98 баллов, и так далее. Если же участник затратил на решение олимпиады больше 60 минут, он получит 0 баллов.

Напишите запрос, который извлекает из предложенной базы данных имена и фамилии участников олимпиады, а также определяет количество баллов, набранное каждым из участников.

Поле с количеством баллов, набранным участником олимпиады, должно иметь псевдоним score.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля score, при совпадении — в порядке возрастания значения поля name, при совпадении — в порядке возрастания значения поля surname.
Результат запроса

+----------+-------------+-------+
| name     | surname     | score |
+----------+-------------+-------+
| Alyx     | Vance       | 100   |
| Arthur   | Morgan      | 100   |
| Erwin    | Schrodinger | 100   |
| Gordon   | Freeman     | 100   |
| Johnny   | Silverhand  | 100   |
| Samus    | Aran        | 100   |
| Stephen  | Hawking     | 100   |
| Tom      | Nook        | 100   |
| Alan     | Turing      | 99    |
| Alan     | Wake        | 98    |
| Ryu      | Hayabusa    | 89    |
| Jill     | Valentine   | 86    |
| Nathan   | Drake       | 76    |
| Leonhard | Euler       | 71    |
| Max      | Payne       | 70    |
| Isaac    | Clarke      | 0     |
| Joel     | Miller      | 0     |
+----------+-------------+-------+

Скрипт для создания таблицы Results

DROP TABLE IF EXISTS Results;
CREATE TABLE Results
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(50),
    surname VARCHAR(50),
    time    TIME
);

INSERT INTO Results (name, surname, time)
VALUES ('Joel', 'Miller', '02:21:00'),
       ('Arthur', 'Morgan', '00:10:00'),
       ('Leonhard', 'Euler', '00:59:00'),
       ('Alan', 'Wake', '00:32:00'),
       ('Alyx', 'Vance', '00:16:00'),
       ('Jill', 'Valentine', '00:44:00'),
       ('Isaac', 'Clarke', '01:01:00'),
       ('Gordon', 'Freeman', '00:17:00'),
       ('Alan', 'Turing', '00:31:00'),
       ('Stephen', 'Hawking', '00:23:00'),
       ('Ryu', 'Hayabusa', '00:41:00'),
       ('Johnny', 'Silverhand', '00:11:00'),
       ('Samus', 'Aran', '00:29:00'),
       ('Nathan', 'Drake', '00:54:00'),
       ('Erwin', 'Schrodinger', '00:30:00'),
       ('Max', 'Payne', '01:00:00'),
       ('Tom', 'Nook', '00:12:00');

*/
-- ----------------------------------------
SELECT
	name,
    surname,    
    CASE 
		WHEN (HOUR(time) * 60 + MINUTE(time)) < 31 THEN 100        
        WHEN (HOUR(time) * 60 + MINUTE(time)) > 60 THEN 0       
		ELSE 100 - (HOUR(time) * 60 + MINUTE(time)) + 30
    END AS score
From Results
ORDER BY	
    score DESC,
    name,
    surname;
-- ----------------------------------------

SELECT name, surname,
       CASE
           WHEN time > '01:00:00' THEN 0
           WHEN time < '00:30:00' THEN 100
           ELSE 100 - MINUTE(TIMEDIFF(time, '00:30:00'))
       END AS score
FROM Results
ORDER BY score DESC, name, surname
-- ----------------------------------------

SELECT
    name,
    surname,
    CASE
        WHEN TIME_TO_SEC(time) <= 1800 THEN 100
        WHEN TIME_TO_SEC(time) > 1800 and TIME_TO_SEC(time) <= 3600 THEN ROUND(100 - (TIME_TO_SEC(time) - 1800) / 60)
        ELSE 0
    END as score
FROM Results
ORDER BY score DESC, name, surname;


/*

Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который определяет средний рейтинг режиссеров из USA и указывает полученное значение в поле с псевдонимом avg_usa_rating.
Результат запроса

+----------------+
| avg_usa_rating |
+----------------+
| 66.5714        |
+----------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

Тестовые данные

    Тест №2

    Таблица Directors:

    +----+-------------+-----------+---------+--------+
    | id | name        | surname   | country | rating |
    +----+-------------+-----------+---------+--------+
    | 1  | Christopher | Nolan     | England | 90     |
    | 2  | Steven      | Spielberg | USA     | 85     |
    | 3  | Quentin     | Tarantino | USA     | 90     |
    | 4  | Martin      | Scorsese  | USA     | 63     |
    | 5  | David       | Fincher   | USA     | 100    |
    | 6  | Ridley      | Scott     | England | 54     |
    | 7  | Stanley     | Kubrick   | USA     | 29     |
    | 8  | Clint       | Eastwood  | USA     | 74     |
    | 9  | James       | Cameron   | Canada  | 8      |
    | 10 | Tim         | Burton    | USA     | 41     |
    +----+-------------+-----------+---------+--------+

    Запрос для обновления таблицы:

    TRUNCATE Directors;
    INSERT INTO Directors (name, surname, country, rating)
    VALUES ('Christopher', 'Nolan', 'England', 90),
           ('Steven', 'Spielberg', 'USA', 85),
           ('Quentin', 'Tarantino', 'USA', 90),
           ('Martin', 'Scorsese', 'USA', 63),
           ('David', 'Fincher', 'USA', 100),
           ('Ridley', 'Scott', 'England', 54),
           ('Stanley', 'Kubrick', 'USA', 29),
           ('Clint', 'Eastwood', 'USA', 74),
           ('James', 'Cameron', 'Canada', 8),
           ('Tim', 'Burton', 'USA', 41);

    Результат запроса:

    +----------------+
    | avg_usa_rating |
    +----------------+
    | 68.8571        |
    +----------------+

    Тест №3

    Таблица Directors:

    +----+----------+----------+---------+--------+
    | id | name     | surname  | country | rating |
    +----+----------+----------+---------+--------+
    | 1  | Quentin  | Jerome   | France  | 80     |
    | 2  | Akiro    | Kurosawa | Japan   | 96     |
    | 3  | Ingmar   | Bergman  | Sweden  | 88     |
    | 4  | Federico | Fellini  | Italy   | 82     |
    | 5  | Quincy   | Jones    | USA     | 82     |
    | 6  | Akira    | Sato     | Japan   | 76     |
    | 7  | Lucia    | Moretti  | Italy   | 85     |
    | 8  | Hans     | Andersen | Denmark | 78     |
    | 9  | Marta    | Gomez    | Spain   | 92     |
    | 10 | Sergei   | Ivanov   | Russia  | 84     |
    +----+----------+----------+---------+--------+

    Запрос для обновления таблицы:

    TRUNCATE Directors;
    INSERT INTO Directors (name, surname, country, rating)
    VALUES ('Quentin', 'Jerome', 'France', 80),
           ('Akiro', 'Kurosawa', 'Japan', 96),
           ('Ingmar', 'Bergman', 'Sweden', 88),
           ('Federico', 'Fellini', 'Italy', 82),
           ('Quincy', 'Jones', 'USA', 82),
           ('Akira', 'Sato', 'Japan', 76),
           ('Lucia', 'Moretti', 'Italy', 85),
           ('Hans', 'Andersen', 'Denmark', 78),
           ('Marta', 'Gomez', 'Spain', 92),
           ('Sergei', 'Ivanov', 'Russia', 84);

    Результат запроса:

    +----------------+
    | avg_usa_rating |
    +----------------+
    | 82.0000        |
    +----------------+

*/
-- ----------------------------------------
SELECT AVG(rating) AS avg_usa_rating
FROM Directors
WHERE country = 'USA'
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | NULL   |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | NULL   |
| 10 | Tim         | Burton    | USA     | NULL   |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который определяет количество режиссеров с известным рейтингом и указывает полученное значение в поле с псевдонимом num_of_rated_directors.
Результат запроса

+------------------------+
| num_of_rated_directors |
+------------------------+
| 7                      |
+------------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', NULL),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', NULL),
       ('Tim', 'Burton', 'USA', NULL);

*/
-- ----------------------------------------
SELECT COUNT(rating) AS num_of_rated_directors
FROM Directors
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

Напишите запрос, который определяет количество режиссеров из USA с рейтингом больше 50 и указывает полученное значение в поле с псевдонимом num_of_rated_usa_directors.
Результат запроса

+----------------------------+
| num_of_rated_usa_directors |
+----------------------------+
| 5                          |
+----------------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT COUNT(rating) AS num_of_rated_usa_directors
FROM Directors
WHERE country = 'USA' AND rating > 50
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, определяющий количество уникальных стран, в которых родились режиссеры, и указывающий полученное значение в поле с псевдонимом num_of_countries.
Результат запроса

+------------------+
| num_of_countries |
+------------------+
| 3                |
+------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT COUNT(DISTINCT country) AS num_of_countries
FROM Directors;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 100    |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 99     |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который определяет минимальный и максимальный рейтинги среди режиссеров из USA и указывает полученные значения в полях с псевдонимами min_rating и max_rating соответственно.
Результат запроса

+------------+------------+
| min_rating | max_rating |
+------------+------------+
| 9          | 99         |
+------------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 100),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 99),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT 
	MIN(rating) AS min_rating,
    MAX(rating) AS max_rating
FROM Directors
WHERE country = 'USA';
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, извлекающий из предложенной базы данных названия всех уникальных стран, в которых родились режиссеры.

При этом в результирующей таблице названия всех стран должны быть указаны в одном поле с псевдонимом countries в следующем формате:

<название 1-й страны>, <название 2-й страны>, ...

Более того, названия стран должны быть расположены в лексикографическом порядке.
Результат запроса

+----------------------+
| countries            |
+----------------------+
| Canada, England, USA |
+----------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT 	
    GROUP_CONCAT(DISTINCT country ORDER BY country SEPARATOR ', ') AS countries
FROM Directors;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от их страны рождения, определяет средний рейтинг режиссеров каждой группы и отображает полученный результат в виде таблицы из двух полей:

    country — название страны
    avg_rating — средний рейтинг режиссеров, родившихся в этой стране

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля avg_rating.
Результат запроса

+---------+------------+
| country | avg_rating |
+---------+------------+
| Canada  | 8.0000     |
| USA     | 66.5714    |
| England | 72.0000    |
+---------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT 	
    country,
    AVG(rating) AS avg_rating
FROM Directors
GROUP BY country 
ORDER BY avg_rating;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от их страны рождения, определяет минимальный и максимальный рейтинги среди режиссеров каждой группы и отображает полученный результат в виде таблицы из трех полей:

    country — название страны
    min_rating — минимальный рейтинг среди режиссеров этой страны
    max_rating — максимальный рейтинг среди режиссеров этой страны

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля country.
Результат запроса

+---------+------------+------------+
| country | min_rating | max_rating |
+---------+------------+------------+
| Canada  | 8          | 8          |
| England | 54         | 90         |
| USA     | 9          | 100        |
+---------+------------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT 	
    country,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating
FROM Directors
GROUP BY country 
ORDER BY max_rating;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 79     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 79     |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 74     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от их страны рождения и рейтинга, определяет количество режиссеров в каждой группе и отображает полученный результат в виде таблицы из трех полей:

    country — название страны
    rating — рейтинг
    num_of_directors — количество режиссеров, родившихся в этой стране и имеющих этот рейтинг

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля num_of_directors, при совпадении — в порядке возрастания значения поля country, при совпадении — в порядке возрастания значения поля rating
Результат запроса

+---------+--------+------------------+
| country | rating | num_of_directors |
+---------+--------+------------------+
| Canada  | 8      | 1                |
| England | 54     | 1                |
| England | 90     | 1                |
| USA     | 95     | 1                |
| USA     | 100    | 1                |
| USA     | 74     | 2                |
| USA     | 79     | 3                |
+---------+--------+------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 79),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 79),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 74);

*/
-- ----------------------------------------
SELECT 	
    country,
    rating,  
    COUNT(rating) AS num_of_directors
FROM Directors
GROUP BY rating, country
ORDER BY num_of_directors, country, rating;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 8      |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от первой буквы в их имени, определяет количество режиссеров в каждой группе и отображает полученный результат в виде таблицы из двух полей:

    letter — буква
    num_of_names — количество режиссеров, в имени которых эта буква является первой

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля num_of_names, при совпадении — в порядке возрастания значения поля letter.
Результат запроса

+--------+--------------+
| letter | num_of_names |
+--------+--------------+
| D      | 1            |
| J      | 1            |
| M      | 1            |
| Q      | 1            |
| R      | 1            |
| T      | 1            |
| C      | 2            |
| S      | 2            |
+--------+--------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 8),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT 	
    LEFT(name, 1) AS letter,      
    COUNT(name) AS num_of_names
FROM Directors
GROUP BY letter
ORDER BY num_of_names, letter;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+----------------------+
| id | name        | surname   | email                |
+----+-------------+-----------+----------------------+
| 1  | Christopher | Nolan     | chris@gmail.com      |
| 2  | Steven      | Spielberg | sspil@outlook.com    |
| 3  | Quentin     | Tarantino | queen@gmail.com      |
| 4  | Martin      | Scorsese  | martins@outlook.com  |
| 5  | David       | Fincher   | dfincher@outlook.com |
| 6  | Ridley      | Scott     | riddler@gmail.com    |
| 7  | Stanley     | Kubrick   | bigstan@icloud.com   |
| 8  | Clint       | Eastwood  | cowboy@yahoo.com     |
| 9  | James       | Cameron   | jamesava@yahoo.com   |
| 10 | Tim         | Burton    | timmy@icloud.com     |
+----+-------------+-----------+----------------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — адрес электронной почты.

Напишите запрос, который разбивает режиссеров на группы в зависимости от доменной части в адресе их электронной почты, перечисляет локальные части адресов электронных почт режиссеров каждой группы и отображает полученный результат в виде таблицы из двух полей:

    domain — доменная часть адреса электронной почты
    users — локальные имена адресов электронных почт режиссеров с этой доменной частью, перечисленные через запятую и пробел, а также расположенные в лексикографическом порядке

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля domain.
Результат запроса

+-------------+--------------------------+
| domain      | users                    |
+-------------+--------------------------+
| gmail.com   | chris, queen, riddler    |
| icloud.com  | bigstan, timmy           |
| outlook.com | dfincher, martins, sspil |
| yahoo.com   | cowboy, jamesava         |
+-------------+--------------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    email   VARCHAR(40)
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, email)
VALUES ('Christopher', 'Nolan', 'chris@gmail.com'),
       ('Steven', 'Spielberg', 'sspil@outlook.com'),
       ('Quentin', 'Tarantino', 'queen@gmail.com'),
       ('Martin', 'Scorsese', 'martins@outlook.com'),
       ('David', 'Fincher', 'dfincher@outlook.com'),
       ('Ridley', 'Scott', 'riddler@gmail.com'),
       ('Stanley', 'Kubrick', 'bigstan@icloud.com'),
       ('Clint', 'Eastwood', 'cowboy@yahoo.com'),
       ('James', 'Cameron', 'jamesava@yahoo.com'),
       ('Tim', 'Burton', 'timmy@icloud.com');

*/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Martin      | Scorsese  | USA     | 68     |
| 5  | David       | Fincher   | USA     | 100    |
| 6  | Ridley      | Scott     | England | 54     |
| 7  | Stanley     | Kubrick   | USA     | 9      |
| 8  | Clint       | Eastwood  | USA     | 74     |
| 9  | James       | Cameron   | Canada  | 11     |
| 10 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от их страны рождения, определяет средний рейтинг режиссеров каждой группы, учитывая только значения больше 10 и меньше 90, и отображает полученный результат в виде таблицы из двух полей:

    country — название страны
    avg_rating — средний рейтинг режиссеров, родившихся в этой стране

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля avg_rating.
Результат запроса

+---------+------------+
| country | avg_rating |
+---------+------------+
| Canada  | 11.0000    |
| England | 54.0000    |
| USA     | 65.5000    |
+---------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Martin', 'Scorsese', 'USA', 68),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Clint', 'Eastwood', 'USA', 74),
       ('James', 'Cameron', 'Canada', 11),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT
	country,
    AVG(rating) AS avg_rating
FROM Directors
WHERE rating BETWEEN 11 and 89
GROUP BY country
ORDER BY avg_rating

-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+---------+--------+
| id | name        | surname   | country | rating |
+----+-------------+-----------+---------+--------+
| 1  | Christopher | Nolan     | England | 90     |
| 2  | Steven      | Spielberg | USA     | 79     |
| 3  | Quentin     | Tarantino | USA     | 95     |
| 4  | Michael     | Fox       | Canada  | 60     |
| 5  | Martin      | Scorsese  | USA     | 68     |
| 6  | Salma       | Hayek     | Mexico  | 100    |
| 7  | David       | Fincher   | USA     | 100    |
| 8  | Ridley      | Scott     | England | 54     |
| 9  | Stanley     | Kubrick   | USA     | 9      |
| 10 | Mike        | Myers     | Canada  | 65     |
| 11 | Clint       | Eastwood  | USA     | 74     |
| 12 | Ryan        | Reynolds  | Canada  | 55     |
| 13 | James       | Cameron   | Canada  | 22     |
| 14 | Tim         | Burton    | USA     | 41     |
+----+-------------+-----------+---------+--------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — страну рождения, пятое — рейтинг по стобалльной шкале.

Напишите запрос, который разбивает режиссеров на группы в зависимости от их страны рождения, определяет средний рейтинг режиссеров каждой группы, учитывая только значения больше 30 и меньше 70, и отображает полученный результат в виде таблицы из двух полей:

    country — название страны
    avg_rating — средний рейтинг режиссеров, родившихся в этой стране

При этом в результирующую таблицу должна быть добавлена информация только о тех группах режиссеров, средний рейтинг которых меньше 60.

Записи в результирующей таблице должны быть расположены в порядке возрастания значения поля avg_rating.
Результат запроса

+---------+------------+
| country | avg_rating |
+---------+------------+
| England | 54.0000    |
| USA     | 54.5000    |
+---------+------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(40),
    surname VARCHAR(40),
    country VARCHAR(40),
    rating  INT
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, country, rating)
VALUES ('Christopher', 'Nolan', 'England', 90),
       ('Steven', 'Spielberg', 'USA', 79),
       ('Quentin', 'Tarantino', 'USA', 95),
       ('Michael', 'Fox', 'Canada', 60),
       ('Martin', 'Scorsese', 'USA', 68),
       ('Salma', 'Hayek', 'Mexico', 100),
       ('David', 'Fincher', 'USA', 100),
       ('Ridley', 'Scott', 'England', 54),
       ('Stanley', 'Kubrick', 'USA', 9),
       ('Mike', 'Myers', 'Canada', 65),
       ('Clint', 'Eastwood', 'USA', 74),
       ('Ryan', 'Reynolds', 'Canada', 55),
       ('James', 'Cameron', 'Canada', 22),
       ('Tim', 'Burton', 'USA', 41);

*/
-- ----------------------------------------
SELECT
	country,
    AVG(rating) AS avg_rating
FROM Directors
WHERE rating BETWEEN 31 AND 69
GROUP BY country
HAVING avg_rating < 60
ORDER BY avg_rating
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису "Кинопоиск". Она включает таблицу Directors, которая хранит информацию о различных популярных режиссерах.
Таблица Directors

+----+-------------+-----------+------------+
| id | name        | surname   | birth_date |
+----+-------------+-----------+------------+
| 1  | Christopher | Nolan     | 1970-07-30 |
| 2  | Steven      | Spielberg | 1946-12-18 |
| 3  | Quentin     | Tarantino | 1963-03-27 |
| 4  | Martin      | Scorsese  | 1942-11-17 |
| 5  | David       | Fincher   | 1962-08-28 |
| 6  | Ridley      | Scott     | 1937-11-30 |
| 7  | Stanley     | Kubrick   | 1928-07-26 |
| 8  | Clint       | Eastwood  | 1930-05-31 |
| 9  | James       | Cameron   | 1954-08-16 |
| 10 | Tim         | Burton    | 1958-08-25 |
+----+-------------+-----------+------------+

Первое поле этой таблицы содержит идентификатор режиссера, второе — имя, третье — фамилию, четвертое — дату рождения.

Напишите запрос, который разбивает режиссеров на группы в зависимости от квартала, в котором они родились, перечисляет имена и фамилии режиссеров каждой группы и отображает полученный результат в виде таблицы из двух полей:

    quarter — квартал
    directors — имена и фамилии режиссеров, которые родились в этом квартале, перечисленные через запятую и пробел, а также расположенные в лексикографическом порядке

При этом в результирующую таблицу должна быть добавлена информация только о тех группах режиссеров, количество которых больше одного.
Результат запроса

+---------+------------------------------------------------------------------------------+
| quarter | directors                                                                    |
+---------+------------------------------------------------------------------------------+
| 3       | Christopher Nolan, David Fincher, James Cameron, Stanley Kubrick, Tim Burton |
| 4       | Martin Scorsese, Ridley Scott, Steven Spielberg                              |
+---------+------------------------------------------------------------------------------+

Скрипт для создания таблицы Directors

DROP TABLE IF EXISTS Directors;
CREATE TABLE Directors
(
  id         INT PRIMARY KEY AUTO_INCREMENT,
  name       VARCHAR(20),
  surname    VARCHAR(20),
  birth_date DATE
);

TRUNCATE Directors;
INSERT INTO Directors (name, surname, birth_date)
VALUES ('Christopher', 'Nolan', '1970-07-30'),
       ('Steven', 'Spielberg', '1946-12-18'),
       ('Quentin', 'Tarantino', '1963-03-27'),
       ('Martin', 'Scorsese', '1942-11-17'),
       ('David', 'Fincher', '1962-08-28'),
       ('Ridley', 'Scott', '1937-11-30'),
       ('Stanley', 'Kubrick', '1928-07-26'),
       ('Clint', 'Eastwood', '1930-05-31'),
       ('James', 'Cameron', '1954-08-16'),
       ('Tim', 'Burton', '1958-08-25');

*/
-- ----------------------------------------
SELECT
	QUARTER(birth_date) AS quarter,
    GROUP_CONCAT(
        CONCAT_WS(' ', name, surname) 
        ORDER BY CONCAT_WS(' ', name, surname) 
        SEPARATOR ', '
    ) AS directors
FROM Directors
GROUP BY quarter
HAVING COUNT(*) > 1  --  Выборка осуществляется практически самой последней, после нее только ORDER BY и LIMIT. Группировка выполняется раньше. То есть таблица сначала разбивается на группы, а только потом уже осуществляется выборка. 


-- -------или---------------------------------
HAVING COUNT(name) > 1;
-- -------или---------------------------------
HAVING COUNT(quarter) > 1;
-- ----------------------------------------




/*Вам доступна база данных, принадлежащая банку HSBC. Она включает таблицу Bills, которая хранит информацию о счетах клиентов банка.
Таблица Bills

+----+-------------+--------+
| id | customer_id | amount |
+----+-------------+--------+
| 1  | 4           | 123.45 |
| 2  | 10          | 678.90 |
| 3  | 2           | 456.78 |
| 4  | 10          | 789.12 |
| 5  | 4           | 234.56 |
| 6  | 4           | 987.65 |
| 7  | 9           | 345.67 |
| 8  | 10          | 567.89 |
| 9  | 11          | 123.45 |
| 10 | 2           | 456.78 |
| 11 | 13          | 789.12 |
| 12 | 10          | 234.56 |
| 13 | 15          | 987.65 |
| 14 | 16          | 345.67 |
| 15 | 16          | 500.00 |
| 16 | 2           | 567.89 |
| 17 | 18          | 123.45 |
| 18 | 2           | 456.78 |
| 19 | 20          | 789.12 |
| 20 | 2           | 234.56 |
| 21 | 22          | 987.65 |
+----+-------------+--------+

Первое поле этой таблицы содержит идентификатор счета, второе — идентификатор клиента, обладающего счетом, третье — сумму на счете в долларах.

Напишите запрос, определяющий количество клиентов банка, у которых хотя бы на одном счете находится больше 500 долларов, и указывающий полученное значение в поле с псевдонимом customers_count.
Результат запроса

+-----------------+
| customers_count |
+-----------------+
| 7               |
+-----------------+

Скрипт для создания таблицы Bills

DROP TABLE IF EXISTS Bills;
CREATE TABLE Bills
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    amount      DECIMAL(10, 2)
);

TRUNCATE Bills;
INSERT INTO Bills (customer_id, amount)
VALUES (4, 123.45),
       (10, 678.90),
       (2, 456.78),
       (10, 789.12),
       (4, 234.56),
       (4, 987.65),
       (9, 345.67),
       (10, 567.89),
       (11, 123.45),
       (2, 456.78),
       (13, 789.12),
       (10, 234.56),
       (15, 987.65),
       (16, 345.67),
       (16, 500),
       (2, 567.89),
       (18, 123.45),
       (2, 456.78),
       (20, 789.12),
       (2, 234.56),
       (22, 987.65);

*/
-- ----------------------------------------
SELECT
    COUNT(DISTINCT customer_id) AS customers_count	
FROM Bills
WHERE amount > 500
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая сервису по аренде велосипедов BikeBooking. Она включает таблицу Rides, которая хранит информацию о поездках, совершенных на арендованных велосипедах.
Таблица Rides

+----+-------------+---------------------+---------------------+
| id | bike_number | start_time          | end_time            |
+----+-------------+---------------------+---------------------+
| 1  | W00678      | 2023-03-25 09:15:00 | 2023-03-25 10:30:00 |
| 2  | W00399      | 2023-03-26 14:20:00 | 2023-03-26 15:40:00 |
| 3  | W00433      | 2023-03-27 16:45:00 | 2023-03-27 17:15:00 |
| 4  | W00455      | 2023-03-28 11:30:00 | 2023-03-28 12:40:00 |
| 5  | W00576      | 2023-03-28 13:10:00 | 2023-03-28 13:40:00 |
| 6  | W00300      | 2023-03-29 08:45:00 | 2023-03-29 09:05:00 |
| 7  | W00455      | 2023-03-29 11:20:00 | 2023-03-29 12:30:00 |
| 8  | W00576      | 2023-03-30 14:00:00 | 2023-03-30 14:45:00 |
| 9  | W00300      | 2023-03-31 17:10:00 | 2023-03-31 17:30:00 |
| 10 | W00678      | 2023-04-01 09:30:00 | 2023-04-01 10:20:00 |
| 11 | W00399      | 2023-04-01 11:40:00 | 2023-04-01 12:20:00 |
| 12 | W00455      | 2023-04-02 13:15:00 | 2023-04-02 13:45:00 |
| 13 | W00576      | 2023-04-03 15:25:00 | 2023-04-03 15:50:00 |
| 14 | W00300      | 2023-04-03 16:10:00 | 2023-04-03 16:35:00 |
| 15 | W00455      | 2023-04-04 10:55:00 | 2023-04-04 11:15:00 |
| 16 | W00399      | 2023-04-04 14:30:00 | 2023-04-04 14:50:00 |
| 17 | W00576      | 2023-04-05 08:20:00 | 2023-04-05 08:45:00 |
| 18 | W00300      | 2023-04-06 12:00:00 | 2023-04-06 12:30:00 |
| 19 | W00433      | 2023-04-06 15:10:00 | 2023-04-06 15:35:00 |
| 20 | W00678      | 2023-04-07 17:45:00 | 2023-04-07 18:05:00 |
+----+-------------+---------------------+---------------------+

Первое поле этой таблицы содержит идентификатор поездки, второе — идентификатор велосипеда, третье — дату и время начала поездки, четвертое — дату и время окончания поездки.

Напишите запрос, который извлекает из предложенной базы данных идентификаторы велосипедов, а также определяет дату и время окончания самой последней поездки, совершенной на каждом велосипеде.

Поле с датой и временем окончания самой последней совершенной на велосипеде поездки должно иметь псевдоним last_ride_end.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля last_ride_end.
Результат запроса

+-------------+---------------------+
| bike_number | last_ride_end       |
+-------------+---------------------+
| W00678      | 2023-04-07 18:05:00 |
| W00433      | 2023-04-06 15:35:00 |
| W00300      | 2023-04-06 12:30:00 |
| W00576      | 2023-04-05 08:45:00 |
| W00399      | 2023-04-04 14:50:00 |
| W00455      | 2023-04-04 11:15:00 |
+-------------+---------------------+

Скрипт для создания таблицы Rides

DROP TABLE IF EXISTS Rides;
CREATE TABLE Rides
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    bike_number VARCHAR(10),
    start_time  DATETIME,
    end_time    DATETIME
);

TRUNCATE Rides;
INSERT INTO Rides (bike_number, start_time, end_time)
VALUES ('W00678', '2023-03-25 09:15:00', '2023-03-25 10:30:00'),
       ('W00399', '2023-03-26 14:20:00', '2023-03-26 15:40:00'),
       ('W00433', '2023-03-27 16:45:00', '2023-03-27 17:15:00'),
       ('W00455', '2023-03-28 11:30:00', '2023-03-28 12:40:00'),
       ('W00576', '2023-03-28 13:10:00', '2023-03-28 13:40:00'),
       ('W00300', '2023-03-29 08:45:00', '2023-03-29 09:05:00'),
       ('W00455', '2023-03-29 11:20:00', '2023-03-29 12:30:00'),
       ('W00576', '2023-03-30 14:00:00', '2023-03-30 14:45:00'),
       ('W00300', '2023-03-31 17:10:00', '2023-03-31 17:30:00'),
       ('W00678', '2023-04-01 09:30:00', '2023-04-01 10:20:00'),
       ('W00399', '2023-04-01 11:40:00', '2023-04-01 12:20:00'),
       ('W00455', '2023-04-02 13:15:00', '2023-04-02 13:45:00'),
       ('W00576', '2023-04-03 15:25:00', '2023-04-03 15:50:00'),
       ('W00300', '2023-04-03 16:10:00', '2023-04-03 16:35:00'),
       ('W00455', '2023-04-04 10:55:00', '2023-04-04 11:15:00'),
       ('W00399', '2023-04-04 14:30:00', '2023-04-04 14:50:00'),
       ('W00576', '2023-04-05 08:20:00', '2023-04-05 08:45:00'),
       ('W00300', '2023-04-06 12:00:00', '2023-04-06 12:30:00'),
       ('W00433', '2023-04-06 15:10:00', '2023-04-06 15:35:00'),
       ('W00678', '2023-04-07 17:45:00', '2023-04-07 18:05:00');

*/
-- ----------------------------------------
SELECT
	bike_number,
    MAX(end_time) AS last_ride_end    
FROM Rides
GROUP BY bike_number
ORDER BY last_ride_end DESC
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая социальной сети "ВКонтакте". Она включает таблицу Actions, которая хранит информацию о том, как пользователи сети взаимодействуют с опубликованными постами.
Таблица Actions
Первое поле этой таблицы содержит идентификатор пользователя, второе — идентификатор поста, третье — время взаимодействия, четвертое — тип взаимодействия ( — просмотреть, — оценить, — поделиться, — пожаловаться), пятое — дополнительную информацию, например, причину жалобы.

Напишите запрос, извлекающий из предложенной базы данных все причины жалоб на посты, а также определяющий количество постов, на которые пожаловались по каждой из этих причин. При этом учитываться должны только те посты, жалоба на которые была подана 2023-07-05.

Поле с причиной жалобы должно иметь псевдоним report_reason, поле с количеством постов — report_count.
Результат запроса

+---------------+--------------+
| report_reason | report_count |
+---------------+--------------+
| spam          | 3            |
| racism        | 1            |
+---------------+--------------+

Скрипт для создания таблицы Actions

DROP TABLE IF EXISTS Actions;
CREATE TABLE Actions
(
    user_id     INT,
    post_id     INT,
    action_date DATE,
    action      VARCHAR(10),
    extra       VARCHAR(50)
);

TRUNCATE Actions;
INSERT INTO Actions (user_id, post_id, action_date, action, extra)
VALUES (1, 1, '2023-07-01', 'view', 'NULL'),
       (1, 1, '2023-07-01', 'like', 'love'),
       (1, 1, '2023-07-01', 'share', 'NULL'),
       (2, 4, '2023-07-04', 'view', 'NULL'),
       (2, 4, '2023-07-04', 'report', 'spam'),
       (3, 4, '2023-07-04', 'like', 'cry'),
       (3, 4, '2023-07-04', 'report', 'spam'),
       (4, 3, '2023-07-02', 'view', 'NULL'),
       (4, 3, '2023-07-02', 'report', 'spam'),
       (5, 2, '2023-07-04', 'view', 'NULL'),
       (5, 2, '2023-07-04', 'report', 'racism'),
       (5, 5, '2023-07-04', 'view', 'NULL'),
       (5, 5, '2023-07-04', 'report', 'racism'),
       (6, 1, '2023-07-05', 'view', 'NULL'),
       (6, 1, '2023-07-05', 'report', 'spam'),
       (7, 3, '2023-07-05', 'like', 'laugh'),
       (7, 3, '2023-07-05', 'report', 'spam'),
       (8, 4, '2023-07-05', 'view', 'NULL'),
       (8, 4, '2023-07-05', 'report', 'spam'),
       (9, 5, '2023-07-05', 'view', 'NULL'),
       (9, 5, '2023-07-05', 'report', 'racism');

*/
-- ----------------------------------------
SELECT
	extra AS report_reason,
    COUNT(post_id) AS report_count
FROM Actions
WHERE action_date = '2023-07-05' AND action = 'report'
GROUP BY report_reason
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Salary, которая хранит информацию о годовых зарплатах сотрудников компании.
Таблица Salary

+----+--------+------------+--------+---------------+
| id | name   | surname    | salary | department_id |
+----+--------+------------+--------+---------------+
| 1  | Adam   | Bosworth   | 120000 | D1001         |
| 2  | Ben    | Laurie     | 135000 | D1003         |
| 1  | Adam   | Bosworth   | 98000  | D1002         |
| 3  | Craig  | Martek     | 110000 | D1001         |
| 3  | Craig  | Martek     | 125000 | D1004         |
| 4  | Alon   | Halevy     | 105000 | D1005         |
| 1  | Adam   | Bosworth   | 140000 | D1004         |
| 4  | Alon   | Halevy     | 95000  | D1004         |
| 4  | Alon   | Halevy     | 115000 | D1004         |
| 3  | Craig  | Martek     | 130000 | D1004         |
| 4  | Alon   | Halevy     | 90000  | D1002         |
| 3  | Craig  | Martek     | 100000 | D1002         |
| 2  | Ben    | Laurie     | 145000 | D1002         |
| 3  | Craig  | Martek     | 105000 | D1003         |
| 5  | Joshua | Bloch      | 120000 | D1003         |
| 6  | Chris  | DiBona     | 110000 | D1001         |
| 3  | Craig  | Martek     | 135000 | D1005         |
| 7  | Brent  | Callinicos | 95000  | D1005         |
| 4  | Alon   | Halevy     | 125000 | D1005         |
| 2  | Ben    | Laurie     | 130000 | D1001         |
+----+--------+------------+--------+---------------+

Первое поле этой таблицы содержит идентификатор сотрудника, второе — имя, третье — фамилию, четвертое — годовую зарплату, пятое — идентификатор отдела, в котором работает сотрудник.

Известно, что таблица Salary содержит как актуальную информацию, так и устаревшую, поэтому каждый сотрудник может встречаться в ней несколько раз. Также известно, что зарплата сотрудников растет каждый год.

Напишите запрос, который извлекает из предложенной базы данных следующую информацию обо всех сотрудниках компании: идентификатор, имя, фамилия, актуальная годовая зарплата.
Результат запроса

+----+--------+------------+--------+
| id | name   | surname    | salary |
+----+--------+------------+--------+
| 1  | Adam   | Bosworth   | 140000 |
| 2  | Ben    | Laurie     | 145000 |
| 3  | Craig  | Martek     | 135000 |
| 4  | Alon   | Halevy     | 125000 |
| 5  | Joshua | Bloch      | 120000 |
| 6  | Chris  | DiBona     | 110000 |
| 7  | Brent  | Callinicos | 95000  |
+----+--------+------------+--------+

Скрипт для создания таблицы Salary

DROP TABLE IF EXISTS Salary;
CREATE TABLE Salary
(
    id            INT,
    name          VARCHAR(50),
    surname       VARCHAR(50),
    salary        INT,
    department_id VARCHAR(10)
);

TRUNCATE Salary;
INSERT INTO Salary (id, name, surname, salary, department_id)
VALUES (1, 'Adam', 'Bosworth', 120000, 'D1001'),
       (2, 'Ben', 'Laurie', 135000, 'D1003'),
       (1, 'Adam', 'Bosworth', 98000, 'D1002'),
       (3, 'Craig', 'Martek', 110000, 'D1001'),
       (3, 'Craig', 'Martek', 125000, 'D1004'),
       (4, 'Alon', 'Halevy', 105000, 'D1005'),
       (1, 'Adam', 'Bosworth', 140000, 'D1004'),
       (4, 'Alon', 'Halevy', 95000, 'D1004'),
       (4, 'Alon', 'Halevy', 115000, 'D1004'),
       (3, 'Craig', 'Martek', 130000, 'D1004'),
       (4, 'Alon', 'Halevy', 90000, 'D1002'),
       (3, 'Craig', 'Martek', 100000, 'D1002'),
       (2, 'Ben', 'Laurie', 145000, 'D1002'),
       (3, 'Craig', 'Martek', 105000, 'D1003'),
       (5, 'Joshua', 'Bloch', 120000, 'D1003'),
       (6, 'Chris', 'DiBona', 110000, 'D1001'),
       (3, 'Craig', 'Martek', 135000, 'D1005'),
       (7, 'Brent', 'Callinicos', 95000, 'D1005'),
       (4, 'Alon', 'Halevy', 125000, 'D1005'),
       (2, 'Ben', 'Laurie', 130000, 'D1001');

*/
-- ----------------------------------------
SELECT
	id,
    name,
    surname,
    MAX(salary) AS salary
FROM Salary
GROUP BY 
	id,
    name,
    surname;
-- ----------------------------------------

-- ----------------------------------------



/*Вам доступна база данных, принадлежащая платформе для решения задач по программированию LeetCode. Она включает таблицу Actions, которая хранит информацию об активности пользователей платформы.
Таблица Actions

+---------+---------+-------------+
| task_id | user_id | submit_date |
+---------+---------+-------------+
| 1       | 7       | 2023-01-10  |
| 2       | 2       | 2023-01-11  |
| 3       | 3       | 2023-01-15  |
| 4       | 4       | 2023-01-17  |
| 5       | 5       | 2023-01-20  |
| 6       | 4       | 2023-01-22  |
| 7       | 7       | 2023-01-23  |
| 8       | 6       | 2023-01-25  |
| 9       | 9       | 2023-01-28  |
| 10      | 2       | 2023-01-30  |
| 11      | 4       | 2023-02-02  |
| 12      | 4       | 2023-02-05  |
| 13      | 1       | 2023-02-08  |
| 14      | 5       | 2023-02-10  |
| 15      | 3       | 2023-02-13  |
| 16      | 4       | 2023-02-15  |
| 17      | 5       | 2023-02-18  |
| 18      | 1       | 2023-02-20  |
| 19      | 3       | 2023-02-23  |
| 20      | 4       | 2023-02-25  |
+---------+---------+-------------+

Первое поле этой таблицы содержит идентификатор задачи, второе — идентификатор пользователя, решившего задачу, третье — дату решения.

Напишите запрос, определяющий количество задач, которые были решены в выходные дни, а также количество задач, которые были решены в будние дни. Полученные значения должны быть указаны в полях с псевдонимами weekend_count и working_count соответственно.
Результат запроса

+---------------+---------------+
| weekend_count | working_count |
+---------------+---------------+
| 6             | 14            |
+---------------+---------------+

Скрипт для создания таблицы Actions

DROP TABLE IF EXISTS Actions;
CREATE TABLE Actions
(
    task_id     INT PRIMARY KEY AUTO_INCREMENT,
    user_id     INT,
    submit_date DATE
);

TRUNCATE Actions;
INSERT INTO Actions (user_id, submit_date)
VALUES (7, '2023-01-10'),
       (2, '2023-01-11'),
       (3, '2023-01-15'),
       (4, '2023-01-17'),
       (5, '2023-01-20'),
       (4, '2023-01-22'),
       (7, '2023-01-23'),
       (6, '2023-01-25'),
       (9, '2023-01-28'),
       (2, '2023-01-30'),
       (4, '2023-02-02'),
       (4, '2023-02-05'),
       (1, '2023-02-08'),
       (5, '2023-02-10'),
       (3, '2023-02-13'),
       (4, '2023-02-15'),
       (5, '2023-02-18'),
       (1, '2023-02-20'),
       (3, '2023-02-23'),
       (4, '2023-02-25');

*/
-- ------------1----------------------------
SELECT 
	SUM(CASE
            WHEN weekday(submit_date) IN (5, 6) THEN 1
			ELSE 0
        END) AS weekend_count,	
	SUM(CASE
            WHEN weekday(submit_date) IN (0, 1, 2, 3, 4) THEN 1
			ELSE 0
        END) AS working_count  
FROM Actions;

-- -----------2-----------------------------
SELECT SUM(IF(WEEKDAY(submit_date) IN (5, 6), 1, 0)) AS weekend_count,
       SUM(IF(WEEKDAY(submit_date) BETWEEN 0 AND 4, 1, 0)) AS working_count
FROM Actions

-- -----------3-----------------------------
SELECT SUM(WEEKDAY(submit_date) > 4) AS weekend_count,
       SUM(WEEKDAY(submit_date) < 5) AS working_count
FROM Actions;



/*Вам доступна база данных, принадлежащая социальной сети "ВКонтакте". Она включает таблицу Actions, которая хранит информацию о том, как пользователи сети взаимодействуют с рекламными интеграциями.
Таблица Actions

+-------+---------+---------+
| ad_id | user_id | action  |
+-------+---------+---------+
| 1     | 1       | clicked |
| 2     | 2       | clicked |
| 3     | 3       | viewed  |
| 5     | 5       | ignored |
| 1     | 7       | ignored |
| 2     | 7       | viewed  |
| 3     | 5       | clicked |
| 1     | 4       | viewed  |
| 2     | 11      | viewed  |
| 1     | 2       | clicked |
| 4     | 6       | viewed  |
| 5     | 8       | ignored |
| 4     | 9       | viewed  |
| 3     | 10      | viewed  |
| 2     | 12      | clicked |
| 1     | 13      | clicked |
| 5     | 14      | ignored |
| 4     | 15      | clicked |
| 3     | 16      | viewed  |
| 2     | 17      | clicked |
+-------+---------+---------+

Первое поле этой таблицы содержит идентификатор рекламной интеграции, второе — идентификатор пользователя, третье — тип взаимодействия (viewed — просмотреть, clicked — перейти, ignored — проигнорировать).

Каждая рекламная интеграция имеет рейтинг эффективности, который вычисляется следующим образом:
количество переходовколичество переходов+количество просмотров⋅100
количествопереходов+количествопросмотровколичествопереходов​⋅100

Если количество переходов и количество просмотров равны нулю, рейтинг эффективности считается равным нулю.

Напишите запрос, который извлекает из предложенной базы данных идентификаторы всех рекламных интеграций, а также определяет рейтинг эффективности каждой рекламной интеграции.

Поле с рейтингом эффективности рекламной интеграции должно иметь псевдоним rating. Значения в поле rating должны быть округлены до 2 знаков после запятой.

Записи в результирующей таблице должны быть расположены в порядке убывания значения поля rating.
Результат запроса

+-------+--------+
| ad_id | rating |
+-------+--------+
| 1     | 75.00  |
| 2     | 60.00  |
| 4     | 33.33  |
| 3     | 25.00  |
| 5     | 0.00   |
+-------+--------+

Скрипт для создания таблицы Actions

DROP TABLE IF EXISTS Actions;
CREATE TABLE Actions
(
    ad_id   INT,
    user_id INT,
    action  VARCHAR(10)
);

TRUNCATE Actions;
INSERT INTO Actions (ad_id, user_id, action)
VALUES (1, 1, 'clicked'),
       (2, 2, 'clicked'),
       (3, 3, 'viewed'),
       (5, 5, 'ignored'),
       (1, 7, 'ignored'),
       (2, 7, 'viewed'),
       (3, 5, 'clicked'),
       (1, 4, 'viewed'),
       (2, 11, 'viewed'),
       (1, 2, 'clicked'),
       (4, 6, 'viewed'),
       (5, 8, 'ignored'),
       (4, 9, 'viewed'),
       (3, 10, 'viewed'),
       (2, 12, 'clicked'),
       (1, 13, 'clicked'),
       (5, 14, 'ignored'),
       (4, 15, 'clicked'),
       (3, 16, 'viewed'),
       (2, 17, 'clicked');

*/
-- --------------1--------------------------
SELECT
	ad_id, 
    IFNULL(ROUND(100 * SUM(IF(action = 'clicked', 1, 0)) /  ( SUM(IF(action = 'clicked', 1, 0)) + SUM(IF(action = 'viewed', 1, 0)) ),
            2), 0) AS rating     
FROM Actions
GROUP BY ad_id
ORDER BY rating DESC;

-- --------------2--------------------------
SELECT 
    ad_id, 
    COALESCE(ROUND(SUM(IF(action = 'clicked', 1, 0)) / (SUM(IF(action = 'clicked', 1, 0)) + SUM(IF(action = 'viewed', 1, 0))) * 100, 2), 0.00) AS rating
FROM Actions
GROUP BY ad_id
ORDER BY rating DESC;

-- ------преп--------------------------------
SELECT ad_id, IFNULL(ROUND(AVG(CASE
                                   WHEN action = 'clicked' THEN 1
                                   WHEN action = 'viewed' THEN 0
                               END) * 100, 2), 0) AS rating
FROM Actions
GROUP BY ad_id
ORDER BY rating DESC

-- ----------------------------------------
SELECT ad_id, 
       COALESCE(ROUND((SUM(CASE WHEN action = 'clicked' THEN 1 END) / (SUM(CASE WHEN action IN ('clicked', 'viewed') THEN 1 END))) * 100, 2), 0.00) AS rating     
FROM Actions
GROUP BY ad_id
ORDER BY rating DESC 


/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------



/**/
-- ----------------------------------------

-- ----------------------------------------

-- ----------------------------------------


