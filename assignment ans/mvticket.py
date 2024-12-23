
def book_seat(total_seats, booked_seats, seat):
    if seat in booked_seats:
        return f"Seat {seat} is already booked."
    elif seat > total_seats or seat < 1:
        return f"Invalid seat number {seat}. Please choose a valid seat."
    else:
        booked_seats.append(seat)
        booked_seats.sort()
        return f"Seat {seat} booked successfully."

def cancel_seat(booked_seats, seat):
    if seat in booked_seats:
        booked_seats.remove(seat)
        booked_seats.sort()
        return f"Seat {seat} cancelled successfully."
    else:
        return f"Seat {seat} was not booked."

def available_seats(total_seats, booked_seats):
    return [seat for seat in range(1, total_seats + 1) if seat not in booked_seats]

total_seats = 10
booked_seats = [2, 5, 7]

seat_to_book = 3  
seat_to_cancel = 5  

print(book_seat(total_seats, booked_seats, seat_to_book))

print(cancel_seat(booked_seats, seat_to_cancel))

print("Available seats:", available_seats(total_seats, booked_seats))
