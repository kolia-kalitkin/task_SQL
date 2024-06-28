/* Вам доступна база данных, принадлежащая компании Google. Она включает таблицу Measurements, которая хранит результаты определенных измерений, полученных с помощью датчика Google.
Таблица Measurements

+----+--------+---------------------+
| id | result | received_on         |
+----+--------+---------------------+
| 1  | 1100   | 2024-01-01 12:00:00 |
| 2  | 1000   | 2024-01-01 13:00:00 |
| 3  | 1300   | 2024-01-01 14:00:00 |
| 4  | 1200   | 2024-01-01 15:00:00 |
| 5  | 1100   | 2024-01-01 07:00:00 |
| 6  | 450    | 2024-01-31 08:00:00 |
| 7  | 600    | 2024-01-31 09:00:00 |
| 8  | 650    | 2024-01-31 10:00:00 |
| 9  | 700    | 2024-02-01 07:00:00 |
| 10 | 600    | 2024-02-01 18:00:00 |
+----+--------+---------------------+

Первое поле этой таблицы содержит идентификатор измерения, второе — полученное значение, третье — дату и время измерения.

Напишите запрос, который разбивает результаты измерений на группы в зависимости от дня, в который они были выполнены, вычисляет в рамках каждой группы сумму результатов нечетных и четных по счету измерений и отображает полученный результат в виде таблицы из трех полей:

    measurement_day — день, в который были выполнены измерения
    odd_measurements_results_sum — сумма результатов нечетных измерений в этот день (результат первого измерения, результат третьего измерения, и так далее)
    even_measurements_results_sum — сумма результатов четных измерений в этот день (результат второго измерения, результат четвертого измерения, и так далее)

Результат запроса

+-----------------+------------------------------+-------------------------------+
| measurement_day | odd_measurements_results_sum | even_measurements_results_sum |
+-----------------+------------------------------+-------------------------------+
| 2024-01-01      | 3300                         | 2400                          |
| 2024-01-31      | 1100                         | 600                           |
| 2024-02-01      | 700                          | 600                           |
+-----------------+------------------------------+-------------------------------+




==========================================
===========  РЕШЕНИЕ  ====================
==========================================
*/

DROP TABLE IF EXISTS Measurements;
CREATE TABLE Measurements
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    result INT,
    received_on DATETIME
);

INSERT INTO Measurements (result, received_on)
VALUES (1100, '2024-01-01 12:00:00'),
       (1000, '2024-01-01 13:00:00'),
       (1300, '2024-01-01 14:00:00'),
       (1200, '2024-01-01 15:00:00'),
       (1100, '2024-01-01 07:00:00'),
       (450, '2024-01-31 08:00:00'),
       (600, '2024-01-31 09:00:00'),
       (650, '2024-01-31 10:00:00'),
       (700, '2024-02-01 07:00:00'),
       (600, '2024-02-01 18:00:00');

WITH cte1 AS ( -- нумеруем секции
	 SELECT
		*,
		DENSE_RANK() OVER (ORDER BY DATE(received_on)) AS rnk_1,    
		ROW_NUMBER() OVER (PARTITION BY DATE(received_on) ORDER BY DATE(received_on), TIME(received_on)) AS rnk_2  
	 FROM Measurements
), 
cte2 AS ( -- вычисляем суммы 
	SELECT
		*,
		SUM(if(rnk_2 MOD 2 <> 0, result, 0)) OVER (PARTITION BY DATE(received_on)) AS odd_measurements_results_sum,
		SUM(if(rnk_2 MOD 2 = 0, result, 0)) OVER (PARTITION BY DATE(received_on)) AS even_measurements_results_sum
	FROM cte1    
)


SELECT
	DATE(received_on) AS measurement_day,
    odd_measurements_results_sum,
    even_measurements_results_sum
FROM cte2
WHERE rnk_2 = 1; -- фильтруем
