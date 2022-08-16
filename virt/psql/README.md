## 6.4. PostgreSQL

# 1.
![img.png](img.png)

![img_1.png](img_1.png)

![img_2.png](img_2.png)

![img_4.png](img_4.png)

![img_3.png](img_3.png)

# 2.
![img_5.png](img_5.png)

![img_6.png](img_6.png)

![img_7.png](img_7.png)

![img_8.png](img_8.png)

# 3.
`ALTER TABLE orders RENAME to orders_tmp;`

`CREATE TABLE orders (id integer, title varchar(80), price integer) PARTITION BY RANGE(price);`

`CREATE TABLE orders_1 PARTITION OF orders FOR values FROM (499) TO (1000000);`

`CREATE TABLE orders_2 PARTITION of orders FOR values FROM (0) TO (499);`

`INSERT INTO orders (id, title, price) SELECT * FROM orders_tmp;`

![img_10.png](img_10.png)

# 4.

![img_9.png](img_9.png)

Для уникальности значения столбца `title` при создании таблицы для столбца `title` добавить `UNIQUE`

![img_12.png](img_12.png)