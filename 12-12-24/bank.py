class bank():

   accBalance=20000
   def deposit(self):
       deposit_amount=int(input("Enter the deposit amount:"))
       if(deposit_amount>100 and deposit_amount%100==0 and deposit_amount<=50000):
           print("You can deposit your money")
           self.accBalance = self.accBalance + deposit_amount
       else:
           print("Enter valid amount to deposit")
       print("The account balance is:",self.accBalance)

   def withdraw(self):
       count=0
       while(self.accBalance >= 500 and count < 3):
           withdraw_amount=int(input("Enter the withdraw amount:"))
           if(100<=withdraw_amount<=20000 and withdraw_amount%100==0 and withdraw_amount<self.accBalance):
               print("You can withdraw your money")
               self.accBalance = self.accBalance - withdraw_amount
               break
           else:
               print("The entered amount is invalid")
               count+=1


       print("The account balance is:",self.accBalance)
   def balanceenquiry(self):
       print("The account balance is:",self.accBalance)

   def viewOptions(self):
       while True:
           print("1.Deposit")
           print("2.Withdraw")
           print("3.Balance Enquiry")
           print("4.EXIT")
           option=int(input("Choose any option:"))
           if(option==1):
               self.deposit()
           elif(option==2):
               self.withdraw()
           elif(option==3):
               self.balanceenquiry()
           elif(option==4):
               print("EXIT")
               break
           else:
               print("Invalid")

   def validate(self):
       pin_no=6543
       input_pin = int(input("Enter the user pin num:"))
       if(pin_no==input_pin):
           print("Correct pin number")
           print("Welcome to Bank")
           self.viewOptions()
       else:
           print("Invalid pin number")
           count=0
           while pin_no!=input_pin and count<3:
               print("The pin entered is invalid please re-enter again")
               input_pin=int(input("Enter the pin num:"))
               count=count+1
               if(pin_no==input_pin):
                   print("The pin number is correct")
           return

obj=bank()
obj.validate()