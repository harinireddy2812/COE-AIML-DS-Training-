def calculate_total_price(cart_items):

    if not cart_items:
        return "Cart is empty"
    total_price = sum(cart_items.values())
    
    if len(cart_items) > 5:
        total_price *= 0.90  

    return total_price

cart_items = {'Laptop': 50000, 'Headphones': 2000, 'Mouse': 500, 'Keyboard': 1500}

total = calculate_total_price(cart_items)
print("Total Price:", total)
