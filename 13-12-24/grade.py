import streamlit as st
st.title("Student Grading System")
project=st.number_input("Enter the project score:",min_value=0,step=1)
internal=st.number_input("Enter the internal score:",min_value=0,step=1)
external=st.number_input("Enter the external score:",min_value=0,step=1)
if st.button("Calculate Student Grade System"):
   if(project>50 and internal>50 and external>50):
       project=project*0.70
       internal=internal*0.10
       external=external*0.20
       total_score=project+internal+external
       if(total_score>=90):
           st.success("A Grade")
       elif(80<=total_score<=90):
           st.success("B Grade")
       elif(70<=total_score<=80):
           st.success("C Grade")
       elif (60 <= total_score <= 70):
           st.success("D Grade")
       else:
           st.success("E Grade")
   else:
       if(project<50 and internal<50 and external<50):
           st.info("Failed in all ")
       if(project<50):
           st.info(f"Failed in project:{project}")
       if(internal<50):
           st.info("Failed in internal:{internal}")
       if(external<50 ):
           st.info("Failed in external:{external}")