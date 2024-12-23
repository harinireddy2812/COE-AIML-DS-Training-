
def positive_feedback_percentage(ratings):
    if len(ratings) == 0:
        return "No ratings available."
    
    positive_count = sum(1 for rating in ratings if rating >= 4)
    
    positive_percentage = (positive_count / len(ratings)) * 100
    
    return f"Positive Feedback: {positive_percentage:.2f}%"

ratings = [5, 4, 3, 5, 2, 4, 1, 5]

result = positive_feedback_percentage(ratings)

print(result)
