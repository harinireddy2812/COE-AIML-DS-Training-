Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.5.16 MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
+--------------------+
4 rows in set (0.01 sec)

mysql> create database harini17;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| harini17           |
| mysql              |
| performance_schema |
| test               |
+--------------------+
5 rows in set (0.00 sec)

mysql> use harini17
Database changed
mysql> create table details(Sno int,Sname varchar(20),marks int,city varchar(20),mobile int,gender varchar(20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table details(Sno int,Sname varchar(20),marks int,city varchar(20),mobile int,gender varchar(20));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into details values(1,'HARINI',90,'HYD',9034347389,'female');
ERROR 1264 (22003): Out of range value for column 'mobile' at row 1
mysql> insert into details values(1,'HARINI',90,'HYD',90343479,'female');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(2,'HASINI',95,'BAN',90343479,'female');
Query OK, 1 row affected (0.01 sec)

mysql> insert into details values(3,'SANIA',98,'CHEN',90343779,'female');
Query OK, 1 row affected (0.01 sec)

mysql> insert into details values(4,'TINA',80,'GOA',98343779,'female');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(5,'ARUSH',82,'PUNJAB',98348779,'male');
Query OK, 1 row affected (0.01 sec)

mysql> insert into details values(6,'BHARGAV',84,'PUNE',92218729,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(7,'YASHASVI',86,'KERALA',92238729,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(8,'SAITEJA',88,'DELHI',92238929,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(9,'DHANUSH',89,'UP',92248929,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(10,'SATWIK',83,'MP',92248929,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(11,'DHEERAJ',85,'KASHMIR',92288929,'male');
Query OK, 1 row affected (0.00 sec)

mysql> insert into details values(12,'VISHAL',87,'NAGPUR',91288929,'female');
Query OK, 1 row affected (0.00 sec)

mysql> select *from details;
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
|   12 | VISHAL   |    87 | NAGPUR  | 91288929 | female |
+------+----------+-------+---------+----------+--------+
12 rows in set (0.00 sec)

mysql> DELETE FROM table_name WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition' at line 1
mysql> DELETE FROM table_name WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition' at line 1
mysql> DELETE FROM details WHERE marks=87;
Query OK, 1 row affected (0.01 sec)

mysql> select *from details;
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> select *from details WHERE city ='PUNE';
+------+---------+-------+------+----------+--------+
| Sno  | Sname   | marks | city | mobile   | gender |
+------+---------+-------+------+----------+--------+
|    6 | BHARGAV |    84 | PUNE | 92218729 | male   |
+------+---------+-------+------+----------+--------+
1 row in set (0.00 sec)

mysql> select *from details WHERE city ='PUNE'OR 'HYD';
+------+---------+-------+------+----------+--------+
| Sno  | Sname   | marks | city | mobile   | gender |
+------+---------+-------+------+----------+--------+
|    6 | BHARGAV |    84 | PUNE | 92218729 | male   |
+------+---------+-------+------+----------+--------+
1 row in set, 1 warning (0.00 sec)

mysql> select *from details WHERE city ='HYD'OR 'PUNE';
+------+--------+-------+------+----------+--------+
| Sno  | Sname  | marks | city | mobile   | gender |
+------+--------+-------+------+----------+--------+
|    1 | HARINI |    90 | HYD  | 90343479 | female |
+------+--------+-------+------+----------+--------+
1 row in set, 1 warning (0.00 sec)

mysql> select *from details WHERE city IN('HYD','PUNE');
+------+---------+-------+------+----------+--------+
| Sno  | Sname   | marks | city | mobile   | gender |
+------+---------+-------+------+----------+--------+
|    1 | HARINI  |    90 | HYD  | 90343479 | female |
|    6 | BHARGAV |    84 | PUNE | 92218729 | male   |
+------+---------+-------+------+----------+--------+
2 rows in set (0.00 sec)

mysql> select *from details WHERE (city='HYD' AND gender='female')
    -> OR (city='PUNE' AND gender=
    ->
    -> 'male')
    -> OR (city="BAN");
+------+---------+-------+------+----------+--------+
| Sno  | Sname   | marks | city | mobile   | gender |
+------+---------+-------+------+----------+--------+
|    1 | HARINI  |    90 | HYD  | 90343479 | female |
|    2 | HASINI  |    95 | BAN  | 90343479 | female |
|    6 | BHARGAV |    84 | PUNE | 92218729 | male   |
+------+---------+-------+------+----------+--------+
3 rows in set (0.00 sec)

mysql> SELECT *FROM details WHERE (gender='male' AND score>=70)
    -> OR(gender='female' AND score>=50);
ERROR 1054 (42S22): Unknown column 'score' in 'where clause'
mysql> SELECT *FROM details WHERE (gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50);
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> DELETE FROM table_name WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition' at line 1
mysql> select *from details WHERE(gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50)
    -> OR(city='PUNE' AND gender='male')
    -> OR(city!='BAN');
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> select *from details WHERE(gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50);
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> SELECT *FROM details WHERE (gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50)
    -> OR(city='PUNE' AND gender='male')
    -> AND(city='BAN');
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> SELECT *FROM details WHERE (gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50)
    -> OR(city='PUNE' AND gender='male')
    -> AND(city!='BAN');
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> SELECT *FROM details WHERE (gender='male' AND marks>=70)
    -> OR(gender='female' AND marks>=50)
    -> OR(city='PUNE' AND gender='male')
    -> AND city!='BAN';
+------+----------+-------+---------+----------+--------+
| Sno  | Sname    | marks | city    | mobile   | gender |
+------+----------+-------+---------+----------+--------+
|    1 | HARINI   |    90 | HYD     | 90343479 | female |
|    2 | HASINI   |    95 | BAN     | 90343479 | female |
|    3 | SANIA    |    98 | CHEN    | 90343779 | female |
|    4 | TINA     |    80 | GOA     | 98343779 | female |
|    5 | ARUSH    |    82 | PUNJAB  | 98348779 | male   |
|    6 | BHARGAV  |    84 | PUNE    | 92218729 | male   |
|    7 | YASHASVI |    86 | KERALA  | 92238729 | male   |
|    8 | SAITEJA  |    88 | DELHI   | 92238929 | male   |
|    9 | DHANUSH  |    89 | UP      | 92248929 | male   |
|   10 | SATWIK   |    83 | MP      | 92248929 | male   |
|   11 | DHEERAJ  |    85 | KASHMIR | 92288929 | male   |
+------+----------+-------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> SELECT *FROM details WHERE 50<=score<=80 AND city='HYD' OR 'BAN';
ERROR 1054 (42S22): Unknown column 'score' in 'where clause'
mysql> SELECT *FROM details WHERE 50<=marks<=80 AND city='HYD' OR 'BAN';
+------+--------+-------+------+----------+--------+
| Sno  | Sname  | marks | city | mobile   | gender |
+------+--------+-------+------+----------+--------+
|    1 | HARINI |    90 | HYD  | 90343479 | female |
+------+--------+-------+------+----------+--------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT *FROM details WHERE Sname LIKE=S%A;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=S%A' at line 1
mysql> SELECT *FROM details WHERE Sname LIKE S%A;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%A' at line 1
mysql> SELECT *FROM details WHERE Sname LIKE 'S%A';
+------+---------+-------+-------+----------+--------+
| Sno  | Sname   | marks | city  | mobile   | gender |
+------+---------+-------+-------+----------+--------+
|    3 | SANIA   |    98 | CHEN  | 90343779 | female |
|    8 | SAITEJA |    88 | DELHI | 92238929 | male   |
+------+---------+-------+-------+----------+--------+
2 rows in set (0.00 sec)

mysql> SELECT city,COUNT(*) AS num_of_students
    -> FROM details
    -> GROUP BY city;
+---------+-----------------+
| city    | num_of_students |
+---------+-----------------+
| BAN     |               1 |
| CHEN    |               1 |
| DELHI   |               1 |
| GOA     |               1 |
| HYD     |               1 |
| KASHMIR |               1 |
| KERALA  |               1 |
| MP      |               1 |
| PUNE    |               1 |
| PUNJAB  |               1 |
| UP      |               1 |
+---------+-----------------+
11 rows in set (0.00 sec)

mysql> SELECT city,AVG(marks) as avg_marks
    -> FROM details
    -> GROUP BY city
    -> ORDER BY avg_marks
    -> desc LIMIT 1;
+------+-----------+
| city | avg_marks |
+------+-----------+
| CHEN |   98.0000 |
+------+-----------+
1 row in set (0.00 sec)

mysql> SELECT city,TOP(marks) as top_marks
    ->
    -> ;
ERROR 1054 (42S22): Unknown column 'city' in 'field list'
mysql> SELECT city,MAX(marks) as top_marks
    -> FROM details
    -> GROUP BY city
    -> ORDER BY top_marks
    -> desc LIMIT 1;
+------+-----------+
| city | top_marks |
+------+-----------+
| CHEN |        98 |
+------+-----------+
1 row in set (0.00 sec)

mysql> SELECT city,MAX(marks) as top_marks
    -> FROM details
    -> GROUP BY city;
+---------+-----------+
| city    | top_marks |
+---------+-----------+
| BAN     |        95 |
| CHEN    |        98 |
| DELHI   |        88 |
| GOA     |        80 |
| HYD     |        90 |
| KASHMIR |        85 |
| KERALA  |        86 |
| MP      |        83 |
| PUNE    |        84 |
| PUNJAB  |        82 |
| UP      |        89 |
+---------+-----------+
11 rows in set (0.00 sec)

mysql>

