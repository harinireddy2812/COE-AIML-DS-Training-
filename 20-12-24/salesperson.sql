Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
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
| harini17           |
| mysql              |
| performance_schema |
| retail             |
| test               |
+--------------------+
6 rows in set (0.00 sec)

mysql> use retail;
Database changed
mysql> select *from salesperson;
ERROR 1146 (42S02): Table 'retail.salesperson' doesn't exist
mysql> select  *from salesperson;
ERROR 1146 (42S02): Table 'retail.salesperson' doesn't exist
mysql> create database retail2;
Query OK, 1 row affected (0.00 sec)

mysql> use retail2;
Database changed
mysql> create table salesper(snum int NOT NULL,
    -> sname VARCHAR(30) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> com DECIMAL(4,2) NOT NULL,
    -> PRIMARY KEY(snum));
Query OK, 0 rows affected (0.00 sec)

mysql> insert into salesper VALUES(1001,'Peel','London',0.12);
Query OK, 1 row affected (0.00 sec)

mysql> select *from salesper;
+------+-------+--------+------+
| snum | sname | city   | com  |
+------+-------+--------+------+
| 1001 | Peel  | London | 0.12 |
+------+-------+--------+------+
1 row in set (0.00 sec)

mysql> insert into salesper VALUES(1002,'Serres','San Jose',0.13);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesper VALUES(1003,'AxelRod','New York',0.10);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesper VALUES(1004,'Motika','London',0.11);
Query OK, 1 row affected (0.01 sec)

mysql> insert into salesper VALUES(1005,'Fran','London',0.26);
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesper VALUES(1007,'Rifkin','Barcelona',0.15);
Query OK, 1 row affected (0.00 sec)

mysql> select *from salesper;
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
    -> PRIMARY KEY(cnum));
Query OK, 0 rows affected (0.01 sec)

mysql> create table customers(
    -> cnum int NOT NULL,
    -> cname VARCHAR(30) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> rating int NOT NULL,
    -> snum int NOT NULL,
    -> PRIMARY KEY(cnum),
    -> FOREIGN KEY(snum)references salesper(snum));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into customers(2001,'Hoffman','London',100,1001);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2001,'Hoffman','London',100,1001)' at line 1
mysql> insert into customers values(2001,'Hoffman','London',100,1001);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2002,'Giovanni','Rome',200,1003);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2003,'Liu','San Jose',200,1002);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2004,'Grass','Berlin',300,1002);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(2008,'Clemens','London',100,1001);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2008,'Cisneros','San Jose',300,1007);
ERROR 1062 (23000): Duplicate entry '2008' for key 'PRIMARY'
mysql> insert into customers values(2006,'Cisneros','San Jose',300,1007);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2007,'Pereira','Rome',100,1004);
Query OK, 1 row affected (0.00 sec)

mysql> select *from customers;
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

mysql> select from salesper;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from salesper' at line 1
mysql> select *from salesper;
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

mysql> select salesper.snum,salesper.sname,
    -> COUNT(customers.cnum)AS customers_count
    -> FROM salesper
    -> LEFT JOIN customer
    -> ON salesper.snum=customer.snum
    -> GROUP BY salesper.snum,salesper.sname;
ERROR 1054 (42S22): Unknown column 'customers.cnum' in 'field list'
mysql> select salesper.snum,salesper.sname,
    -> COUNT(customers.cnum)AS customers_count
    -> FROM salesper
    -> LEFT JOIN customer
    -> ON salesper.snum=customers.snum
    -> GROUP BY salesper.snum,salesper.sname;
ERROR 1054 (42S22): Unknown column 'customers.cnum' in 'field list'
mysql> select salesper.snum,salesper.sname,
    -> COUNT(customers.cnum)AS customers_count
    -> FROM salesper
    -> LEFT JOIN customer
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> select salesper.snum,salesper.sname,
    -> COUNT(customers.cnum)AS customers_count
    -> FROM salesper
    -> LEFT JOIN customer
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> select salesper.snum,salesper.sname,
    -> COUNT(customers.cnum)AS customers_count
    -> FROM salesper
    -> LEFT JOIN customers
    -> ON salesper.snum=customers.snum
    -> GROUP BY salesper.snum,salesper.sname;
+------+---------+-----------------+
| snum | sname   | customers_count |
+------+---------+-----------------+
| 1001 | Peel    |               2 |
| 1002 | Serres  |               2 |
| 1003 | AxelRod |               1 |
| 1004 | Motika  |               1 |
| 1005 | Fran    |               0 |
| 1007 | Rifkin  |               1 |
+------+---------+-----------------+
6 rows in set (0.00 sec)

mysql> ;