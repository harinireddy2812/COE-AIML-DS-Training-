
def calculate_average(marks):
    return round(sum(marks) / len(marks), 2)

def find_top_performer(students):
    averages = {}
    for student, marks in students.items():
        averages[student] = calculate_average(marks)
    
    top_performer = max(averages, key=averages.get)
    
    return averages, top_performer

students = {"John": [85, 78, 92], "Alice": [88, 79, 95], "Bob": [70, 75, 80]}

averages, top_performer = find_top_performer(students)
print("Average Marks:", averages)
print(f'Top Performer: "{top_performer}"')
