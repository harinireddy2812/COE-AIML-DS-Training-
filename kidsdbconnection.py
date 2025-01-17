import mysql.connector as connector

# Establishing connection
mydb = connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="harini17"
)
mycursor = mydb.cursor()

# Table name
table_name = "kids"

# Ensure the table exists; if not, create it
mycursor.execute(f"""
CREATE TABLE IF NOT EXISTS {table_name} (
    child_id INT PRIMARY KEY,
    child_name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    score INT
)
""")
mydb.commit()

print(f"Table '{table_name}' is ready for operations.")

# Menu-driven program
while True:
    print(f"\n{table_name.capitalize()} Database Operations:")
    print("1. Insert details")
    print("2. Delete details by ID")
    print("3. Update details")
    print("4. Display all records")
    print("5. Exit")

    choice = input("Enter your choice (1-5): ")

    if choice == "1":
        # Insert a new record
        kid_id = int(input("Enter kid_id: "))
        kid_name = input("Enter kid_name: ")
        age = int(input("Enter age: "))
        city = input("Enter city: ")
        score = int(input("Enter score: "))
        mycursor.execute(
            f"INSERT INTO {table_name} (child_id, child_name, age, city, score) VALUES (%s, %s, %s, %s, %s)",
            (kid_id, kid_name, age, city, score)
        )
        mydb.commit()
        print("Record inserted successfully!")

    elif choice == "2":
        # Delete a record by ID
        kid_id = int(input("Enter kid_id of the record to delete: "))
        mycursor.execute(f"DELETE FROM {table_name} WHERE child_id = %s", (kid_id,))
        mydb.commit()
        print("Record deleted successfully!")

    elif choice == "3":
        # Update an existing record
        kid_id = int(input("Enter kid_id of the record to update: "))
        kid_name = input("Enter new kid_name: ")
        age = int(input("Enter new age: "))
        city = input("Enter new city: ")
        score = int(input("Enter new score: "))
        mycursor.execute(
            f"""
            UPDATE {table_name}
            SET child_name = %s, age = %s, city = %s, score = %s
            WHERE child_id = %s
            """,
            (kid_name, age, city, score, kid_id)
        )
        mydb.commit()
        print("Record updated successfully!")

    elif choice == "4":
        # Display all records
        mycursor.execute(f"SELECT * FROM {table_name}")
        kids = mycursor.fetchall()
        print("\nchild_id | child_name | age | city           | score")
        print("---------------------------------------------")
        for kid in kids:
            print(f"{kid[0]:<8} | {kid[1]:<10} | {kid[2]:<3} | {kid[3]:<15} | {kid[4]}")

    elif choice == "5":
        # Exit the program
        print("Exiting the program. Goodbye!")
        break

    else:
        print("Invalid choice! Please try again.")
