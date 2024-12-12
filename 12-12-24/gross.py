def gross_salary(basic):
   if(basic<10000):
       HRA=basic*0.67
       DA=basic*0.73
   elif(10000<=basic<=20000):
       HRA=basic*0.69
       DA=basic*0.76
   else:
       HRA=basic*0.73
       DA=basic*0.89
   GS=HRA+DA+basic
   return GS

basic = float(input("Enter the basic salary:"))
print("The gross salary:")
print(gross_salary(basic))