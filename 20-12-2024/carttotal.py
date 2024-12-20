def cal_total(cart):
    total = sum(cart.values())  
    if total >= 25000:
        total *= 0.9
    if total>=50000:
        total*=0.15
    if len(cart) > 5:
        total *= 0.9  
    return total
cart = {'Laptop': 50000, 'Headphones': 2000, 'Mouse': 3500, 'Keyboard': 1500, 'Monitor': 800, 'USB Drive': 1000}
print(f"Cart items: {cart}")
print(f"Total price: {cal_total(cart)}")