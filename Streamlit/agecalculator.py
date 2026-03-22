import streamlit as st
import datetime

st.title("Age Calculator")
st.text("-------------Age Calculation by Date of Birth---------------")

start_date = datetime.date(1900,1,1)
end_date = datetime.date(2600,3,1)

dob = st.date_input("Enter your date of birth",min_value=start_date,max_value=end_date)

if(st.button("Calculate Age")):
    if(dob):
        today_date = datetime.date.today()
        age = today_date.year - dob.year
        if((today_date.month,today_date.day)<(dob.month,dob.day)):
            age-=1
        st.success(f"You are {age} years old")
    else:
        st.write("Enter Date of Birth")