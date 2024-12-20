import re

def check_password(password):
    if not (10 <= len(password) <= 15):
        return "Weak: Use a minimum of 10 characters and a maximum of 15 characters."
    if not any(char.isupper() for char in password):
        return "Moderate: Use at least one uppercase letter."
    if not any(char.islower() for char in password):
        return "Moderate: Use at least one lowercase letter."
    if not any(char.isdigit() for char in password):
        return "Moderate: Use at least one digit."
    if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", password):
        return "Moderate: Use at least one special character."
    if " " in password:
        return "Weak:Password should not contain white spaces"
    if password.endswith('.') or password.endswith('@'):
        return "Weak: Password should not end with a '.' (dot) or '@' symbol."
    return "Strong: Your password is secure!"
password = input("Enter your password: ")
print(check_password(password))