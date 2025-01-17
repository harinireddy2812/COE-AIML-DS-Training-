import mysql.connector as connector
mydb=connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="harini17"
)
mycursor=mydb.cursor()
#mycursor.execute("create table person(pid int,pname varchar(20))")
#mycursor.execute("insert into person values(17,'harini')")
#mydb.commit()
#mycursor.execute("delete from person where pid=17")
#mydb.commit()
pname=input("Enter your name:")
pid=input("Enter your age:")
#mycursor.execute("insert into person values(%s,%s)",(pid,pname))
#mydb.commit()
mycursor.execute("select *from person")
persons=mycursor.fetchall();
for std in persons:
    print(std)