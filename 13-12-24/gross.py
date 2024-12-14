import streamlit as st

def gross_salary(basic):
    if(basic < 10000):
        HRA = basic * 0.67
        DA = basic * 0.73
    elif(10000 <= basic <= 20000):
        HRA = basic * 0.69
        DA = basic * 0.76
    else:
        HRA = basic * 0.73
        DA = basic * 0.89
    GS = HRA + DA + basic
    return GS

st.title("Gross Salary Calculator")

basic = st.number_input("Enter the basic salary:", min_value=0.0, value=0.0, step=100.0)

if basic > 0:
    gross_salary_value = gross_salary(basic)
    st.write(f"The gross salary is: {gross_salary_value}")
