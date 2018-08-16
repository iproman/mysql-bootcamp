SELECT DATEDIFF(birthdt, NOW()) from people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL -1 MONTH ) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH + INTERVAL 1 YEAR) FROM people;