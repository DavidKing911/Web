-- Создать файл my.sql, в котором должна создаваться таблица с 
-- информацией об одногруппниках. В таблице должно быть четыре поля: 
-- id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников 
-- (только имен, без всего остального), которые живут в Москве и 
-- их возраст находится в диапазоне [18, 30) лет.
-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", 
-- а круглые "не включительно", то есть диапазон (7, 9] означает 
-- "от 7, где 7 не попадает в данный диапазон, до 9 включительно".

-- create
CREATE TABLE GROUPMATES (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INT NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO GROUPMATES(name, age, address) VALUES ('Дарья', 18, 'Москва');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Юлия', 22, 'Новокузнецк');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Данил', 21, 'Новосибирск');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Илья', 32, 'Москва');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Алексей', 33, 'Санкт-Петербург');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Денис', 19, 'Москва');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Роман', 22, 'Краснодар');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Егор', 30, 'Москва');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Дмитрий', 26, 'Санкт-Петербург');
INSERT INTO GROUPMATES(name, age, address) VALUES ('Ксения', 21, 'Краснодар');

-- fetch 
SELECT name FROM GROUPMATES WHERE address = 'Москва' AND age BETWEEN 18 AND 29;
