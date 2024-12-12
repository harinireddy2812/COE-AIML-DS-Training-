def certificate(project,internal,external):
   if(project>50 and internal>50 and external>50):
       project=project*0.70
       internal=internal*0.10
       external=external*0.20
       total_score=project+internal+external
       if(total_score>=90):
           print("A Grade")
       elif(80<=total_score<=90):
           print("B Grade")
       elif(70<=total_score<=80):
           print("C Grade")
       elif (60 <= total_score <= 70):
           print("D Grade")
       else:
           print("E Grade")

       return total_score
   else:
       if(project<50 and internal<50 and external<50):
           print("Failed in all ")
       if(project<50):
           print(f"Failed in project:{project}")
       if(internal<50):
           print("Failed in internal:{internal}")
       if(external<50 ):
           print("Failed in external:{external}")
project=(int(input("Enter the project score:")))
internal=(int(input("Enter the internal score:")))
external=(int(input("Enter the external score:")))
certificate(project,internal,external)