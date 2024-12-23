Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.5.16 MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>  show databases;
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

mysql> create table salesperson(snum int NOT NULL,
    -> sname VARCHAR(30) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> com DECIMAL(4,2) NOT NULL,
    -> PRIMARY KEY(snum));
ERROR 1046 (3D000): No database selected
mysql> use harini17;
Database changed
mysql> create table salesperson(snum int NOT NULL,
    -> sname VARCHAR(30) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> com DECIMAL(4,2) NOT NULL,
    -> PRIMARY KEY(snum));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into salesperson values(1001,'Peel','London',0.12);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesperson values(1002,'Serres','San Jose',0.13);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesperson values(1003,'AxelRod','New York',0.10);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesperson values(1004,'Motika','London',0.11);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesperson values(1005,'Fran','London',0.26);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesperson values(1007,'Rifkin','Barcelona',0.15);
Query OK, 1 row affected (0.00 sec)

mysql> select *from salesperson;
+------+---------+-----------+------+
| snum | sname   | city      | com  |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | AxelRod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1005 | Fran    | London    | 0.26 |
| 1007 | Rifkin  | Barcelona | 0.15 |
+------+---------+-----------+------+
6 rows in set (0.00 sec)

mysql> create table customer(
    -> cnum int NOT NULL,
    -> cname VARCHAR(30) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> rating int NOT NULL,
    -> snum int NOT NULL,
    -> PRIMARY KEY(cnum),
    -> FOREIGN KEY(snum) references salesperson(snum));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into customers(2001,'Hoffman','London',100,1001);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2001,'Hoffman','London',100,1001)' at line 1
mysql> insert into customer(2001,'Hoffman','London',100,1001);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2001,'Hoffman','London',100,1001)' at line 1
mysql> insert into customer values(2001,'Hoffman','London',100,1001);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(2002,'Giovanni','Rome',200,1003);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(2003,'Liu','San Jose',200,1002);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(2004,'Grass','Berlin',300,1002);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(2008,'Clemens','London',100,1001);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(2006,'Cisneros','San Jose',300,1007);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(2007,'Pereira','Rome',100,1004);
Query OK, 1 row affected (0.00 sec)

mysql> select *from customer;
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
| 2008 | Clemens  | London   |    100 | 1001 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)

mysql>
mysql> CREATE TABLE orders (
    ->          onum    INT  NOT NULL,
    ->     amt  DECIMAL(7,2)  NOT NULL,
    ->          odate  Date   NOT NULL,
    ->  cnum  int  NOT NULL,
    ->          PRIMARY KEY  (onum),
    ->      FOREIGN KEY (cnum) REFERENCES customer(cnum)
    ->        );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql>
mysql> INSERT INTO orders VALUES (3001, 18.69, '1996-03-10', 2008);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3003, 767.19, '1996-10-03', 2001);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3002, 1900.10, '1996-10-03', 2007);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3005, 5160.45, '1996-10-03', 2003);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3006, 1098.16, '1996-10-03', 2008);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3009, 1713.23, '1996-10-04', 2002);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3007, 75.75, '1996-10-04', 2002);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3008, 4723.00, '1996-10-05', 2006);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3010, 1309.95, '1996-10-06', 2004);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO orders VALUES (3011, 9891.88, '1996-10-06', 2006);
Query OK, 1 row affected (0.01 sec)

mysql> select *from orders;
+------+---------+------------+------+
| onum | amt     | odate      | cnum |
+------+---------+------------+------+
| 3001 |   18.69 | 1996-03-10 | 2008 |
| 3002 | 1900.10 | 1996-10-03 | 2007 |
| 3003 |  767.19 | 1996-10-03 | 2001 |
| 3005 | 5160.45 | 1996-10-03 | 2003 |
| 3006 | 1098.16 | 1996-10-03 | 2008 |
| 3007 |   75.75 | 1996-10-04 | 2002 |
| 3008 | 4723.00 | 1996-10-05 | 2006 |
| 3009 | 1713.23 | 1996-10-04 | 2002 |
| 3010 | 1309.95 | 1996-10-06 | 2004 |
| 3011 | 9891.88 | 1996-10-06 | 2006 |
+------+---------+------------+------+
10 rows in set (0.00 sec)

mysql> select snum,COUNT(*) as num_customers
    -> FROM customer
    -> GROUP BY salesperson;
ERROR 1054 (42S22): Unknown column 'salesperson' in 'group statement'
mysql> select snum,COUNT(*) as num_customers
    -> FROM customer
    -> GROUP BY snum;
+------+---------------+
| snum | num_customers |
+------+---------------+
| 1001 |             2 |
| 1002 |             2 |
| 1003 |             1 |
| 1004 |             1 |
| 1007 |             1 |
+------+---------------+
5 rows in set (0.00 sec)

mysql> select *from salesperson;
+------+---------+-----------+------+
| snum | sname   | city      | com  |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | AxelRod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1005 | Fran    | London    | 0.26 |
| 1007 | Rifkin  | Barcelona | 0.15 |
+------+---------+-----------+------+
6 rows in set (0.00 sec)

mysql> select *from customer;
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
| 2008 | Clemens  | London   |    100 | 1001 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from orders;
+------+---------+------------+------+
| onum | amt     | odate      | cnum |
+------+---------+------------+------+
| 3001 |   18.69 | 1996-03-10 | 2008 |
| 3002 | 1900.10 | 1996-10-03 | 2007 |
| 3003 |  767.19 | 1996-10-03 | 2001 |
| 3005 | 5160.45 | 1996-10-03 | 2003 |
| 3006 | 1098.16 | 1996-10-03 | 2008 |
| 3007 |   75.75 | 1996-10-04 | 2002 |
| 3008 | 4723.00 | 1996-10-05 | 2006 |
| 3009 | 1713.23 | 1996-10-04 | 2002 |
| 3010 | 1309.95 | 1996-10-06 | 2004 |
| 3011 | 9891.88 | 1996-10-06 | 2006 |
+------+---------+------------+------+
10 rows in set (0.00 sec)

mysql> select s.sname,SUM(rating)
    -> FROM salesperson s
    -> JOIN customer c ON s.snum=c.cnum
    -> GROUP BY snum,
    -> ORDER BY rating,
    -> DESC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER BY rating,
DESC LIMIT 1' at line 5
mysql> select s.sname,SUM(rating) as total_rating,
    -> FROM salesperson s,
    -> select s.sname,SUM(rating) as total_rating,;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM salesperson s,
select s.sname,SUM(rating) as total_rating,' at line 2
mysql> select s.sname,SUM(rating) as total_rating FROM salesperson s JOIN customer c ON s.snum=c.cnum GROUP BY snum ORDER BY rating DESC LIMIT 1;
ERROR 1052 (23000): Column 'snum' in group statement is ambiguous
mysql> select s.sname,SUM(rating) as total_rating FROM salesperson s JOIN customer c ON s.snum=c.cnum GROUP BY s.snum ORDER BY rating DESC LIMIT 1;
Empty set (0.00 sec)

mysql> select s.sname,SUM(rating) as total_rating FROM salesperson s JOIN customer c ON s.snum=c.snum GROUP BY s.snum ORDER BY rating DESC LIMIT 1;
+--------+--------------+
| sname  | total_rating |
+--------+--------------+
| Rifkin |          300 |
+--------+--------------+
1 row in set (0.00 sec)

mysql> select sname,
    -> FROM salesperson
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM salesperson' at line 2
mysql> select sname,
    -> FROM salesperson s,
    -> LEFT JOIN s.snum=c.snum,
    -> WHERE c.snum IS NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM salesperson s,
LEFT JOIN s.snum=c.snum,
WHERE c.snum IS NULL' at line 2
mysql> select sname,sum(amt) as total_amt
    -> FROM orders
    -> ;
ERROR 1054 (42S22): Unknown column 'sname' in 'field list'
mysql> select sname,sum(amt) as total_amt
    -> FROM salesperson s
    -> JOIN customer c ON s.snum=c.snum ;
ERROR 1054 (42S22): Unknown column 'amt' in 'field list'
mysql> select salesperson,SUM(amt) AS total_sales
    -> FROM orders
    -> GROUP BY salespersom
    -> ORDER BY total_sales DESC
    -> LIMIT 1;
ERROR 1054 (42S22): Unknown column 'salesperson' in 'field list'
mysql> select sname,SUM(amt) AS total_sales
    -> FROM orders
    -> GROUP BY salesperson
    -> ORDER BY total_sales DESC
    -> LIMIT 1;
ERROR 1054 (42S22): Unknown column 'sname' in 'field list'
mysql> SELECT s.sname, COUNT(DISTINCT c.cnum) AS customer_count
    -> FROM salesperson s
    -> JOIN customer c ON s.snum = c.snum
    -> GROUP BY s.sname;
+---------+----------------+
| sname   | customer_count |
+---------+----------------+
| AxelRod |              1 |
| Motika  |              1 |
| Peel    |              2 |
| Rifkin  |              1 |
| Serres  |              2 |
+---------+----------------+
5 rows in set (0.01 sec)

mysql> SELECT c.cname, COUNT(o.onum) AS order_count
    -> FROM customer c
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY c.cname
    -> ORDER BY order_count DESC
    -> LIMIT 1;
+----------+-------------+
| cname    | order_count |
+----------+-------------+
| Cisneros |           2 |
+----------+-------------+
1 row in set (0.00 sec)

mysql> SELECT s.sname, AVG(o.amt) AS avg_order_size
    -> FROM salesperson s
    -> JOIN customer c ON s.snum = c.snum
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY s.sname;
+---------+----------------+
| sname   | avg_order_size |
+---------+----------------+
| AxelRod |     894.490000 |
| Motika  |    1900.100000 |
| Peel    |     628.013333 |
| Rifkin  |    7307.440000 |
| Serres  |    3235.200000 |
+---------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT c.cname, SUM(o.amt) AS total_spent
    -> FROM customer c
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY c.cname
    -> ORDER BY total_spent DESC
    -> LIMIT 1;
+----------+-------------+
| cname    | total_spent |
+----------+-------------+
| Cisneros |    14614.88 |
+----------+-------------+
1 row in set (0.00 sec)

mysql> SELECT c.city, SUM(o.amt) AS total_sales
    -> FROM customer c
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY c.city
    -> ORDER BY total_sales DESC
    -> LIMIT 1;
+----------+-------------+
| city     | total_sales |
+----------+-------------+
| San Jose |    19775.33 |
+----------+-------------+
1 row in set (0.00 sec)

mysql> SELECT s.sname, AVG(c.rating) AS avg_rating
    -> FROM salesperson s
    -> JOIN customer c ON s.snum = c.snum
    -> GROUP BY s.sname
    -> ORDER BY avg_rating DESC
    -> LIMIT 1;
+--------+------------+
| sname  | avg_rating |
+--------+------------+
| Rifkin |   300.0000 |
+--------+------------+
1 row in set (0.00 sec)

mysql> SELECT s.sname,
    ->        (COUNT(DISTINCT c.cnum) * 100.0 / (SELECT COUNT(*) FROM customer)) AS percentage_with_orders
    -> FROM salesperson s
    -> JOIN customer c ON s.snum = c.snum
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY s.sname;
+---------+------------------------+
| sname   | percentage_with_orders |
+---------+------------------------+
| AxelRod |               14.28571 |
| Motika  |               14.28571 |
| Peel    |               28.57143 |
| Rifkin  |               14.28571 |
| Serres  |               28.57143 |
+---------+------------------------+
5 rows in set (0.01 sec)

mysql> SELECT c.cname, SUM(o.amt) AS total_revenue
    -> FROM customer c
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY c.cname;
+----------+---------------+
| cname    | total_revenue |
+----------+---------------+
| Cisneros |      14614.88 |
| Clemens  |       1116.85 |
| Giovanni |       1788.98 |
| Grass    |       1309.95 |
| Hoffman  |        767.19 |
| Liu      |       5160.45 |
| Pereira  |       1900.10 |
+----------+---------------+
7 rows in set (0.00 sec)

mysql> SELECT c.cname
    -> FROM customer c
    -> LEFT JOIN orders o ON c.cnum = o.cnum
    -> WHERE o.onum IS NULL;
Empty set (0.00 sec)

mysql> SELECT s.sname,
    ->        (SUM(o.amt) * 100.0 / (SELECT SUM(amt) FROM orders)) AS percentage_of_total_revenue
    -> FROM salesperson s
    -> JOIN customer c ON s.snum = c.snum
    -> JOIN orders o ON c.cnum = o.cnum
    -> GROUP BY s.sname;
+---------+-----------------------------+
| sname   | percentage_of_total_revenue |
+---------+-----------------------------+
| AxelRod |                   6.7107553 |
| Motika  |                   7.1275846 |
| Peel    |                   7.0673409 |
| Rifkin  |                  54.8227951 |
| Serres  |                  24.2715242 |
+---------+-----------------------------+
5 rows in set (0.00 sec)

mysql>
