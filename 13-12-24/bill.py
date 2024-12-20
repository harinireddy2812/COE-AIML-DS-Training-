import streamlit as st
st.title("Shopping expenses calculator")
def calculate_total_shopping_expense():
   salary = st.number_input("Enter the client's salary: ",min_value=0,step=1)
   bill1 = st.number_input("Enter the amount for the first shopping bill: ",min_value=0,step=1)
   bill2 = st.number_input("Enter the amount for the second shopping bill: ",min_value=0,step=1)
   bill3 = st.number_input("Enter the amount for the third shopping bill: ",min_value=0,step=1)

   total_shopping_expense = bill1 + bill2 + bill3

   st.success(f"The total amount spent on shopping is: {total_shopping_expense}")
   st.success(f"The client has a salary of: {salary}")

   shopping_percentage = (total_shopping_expense / salary) * 100
   st.success(f"This is {shopping_percentage:.2f}% of their salary.")

calculate_total_shopping_expense()