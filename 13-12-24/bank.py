import streamlit as st

st.title("Bank System")

class Bank:
   accBalance = 20000

   def deposit(self):
       deposit_amount = st.number_input("Enter the deposit amount:", min_value=0, step=1, key="deposit_amount")
       if deposit_amount > 100 and deposit_amount % 100 == 0 and deposit_amount <= 50000:
           st.success("You can deposit your money")
           self.accBalance = self.accBalance + deposit_amount
       else:
           st.warning("Enter valid amount to deposit")
       st.success(f"The account balance is: {self.accBalance}")

   def withdraw(self):
       count = 0
       while self.accBalance >= 500 and count < 3:
           withdraw_amount = st.number_input("Enter the withdraw amount:", min_value=0, step=1, key="withdraw_amount")
           if 100 <= withdraw_amount <= 20000 and withdraw_amount % 100 == 0 and withdraw_amount <= self.accBalance:
               st.success("You can withdraw your money")
               self.accBalance = self.accBalance - withdraw_amount
               break
           else:
               st.warning("The entered amount is invalid")
               count += 1
           if count == 3:
               st.warning("You have reached the maximum attempt limit for withdrawal.")

       st.success(f"The account balance is: {self.accBalance}")

   def balance_enquiry(self):
       st.success(f"The account balance is: {self.accBalance}")

   def view_options(self):
       option = st.selectbox(
           "Choose any option:", ["Deposit", "Withdraw", "Balance Enquiry", "Exit"], key="view_options"
       )

       if option == "Deposit":
           self.deposit()
       elif option == "Withdraw":
           self.withdraw()
       elif option == "Balance Enquiry":
           self.balance_enquiry()
       elif option == "Exit":
           st.success("Thank you for using the Bank system. Goodbye!")
       else:
           st.warning("Invalid option selected. Please try again.")

   def validate(self):
       pin_no = 6543

       input_pin = st.number_input("Enter the pin num:", min_value=0, step=1, key="input_pin_first")

       if pin_no == input_pin:
           st.success("Correct pin number")
           st.success("Welcome to the Bank!")
           self.view_options()
       else:
           st.warning("Invalid pin number")
           count = 0
           while pin_no != input_pin and count < 3:
               st.warning("The pin entered is invalid. Please re-enter.")
               # Unique key for each attempt
               input_pin = st.number_input(f"Enter the pin num (Attempt {count+1}):", min_value=0, step=1, key=f"input_pin_attempt_{count}")
               count += 1
               if pin_no == input_pin:
                   st.success("The pin number is correct!")
                   self.view_options()

obj = Bank()
obj.validate()