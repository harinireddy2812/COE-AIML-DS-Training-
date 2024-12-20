def prime(num):
    if(num<=1):
        return "Not a prime number"
    for i in range(2,num):
        if num%2==0:
            return "Not a prime number"
        else:
            return "Prime number"
num=int(input("Enter the number:"))
print(prime(num))
