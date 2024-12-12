def calculate_total_shopping_expense():
   salary = float(input("Enter the client's salary: "))
   bill1 = float(input("Enter the amount for the first shopping bill: "))
   bill2 = float(input("Enter the amount for the second shopping bill: "))
   bill3 = float(input("Enter the amount for the third shopping bill: "))

   total_shopping_expense = bill1 + bill2 + bill3

   print(f"The total amount spent on shopping is: {total_shopping_expense}")
   print(f"The client has a salary of: {salary}")

   shopping_percentage = (total_shopping_expense / salary) * 100
   print(f"This is {shopping_percentage:.2f}% of their salary.")

calculate_total_shopping_expense()
