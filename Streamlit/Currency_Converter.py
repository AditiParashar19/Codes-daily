import streamlit as st
import requests

st.markdown(
    "<h1 style='font-size:50px; text-align:center;'>"
    "<span style='color:#66BB6A;'>Live Currency Converter</span> "
    "</h1>",
    unsafe_allow_html=True
)
num = st.number_input("Enter amount in INR",min_value=1)

ch = st.selectbox("Convert to ",["USD","EUR","GBP","JPY"])
if(st.button("Convert to ")):
    url ="https://api.exchangerate-api.com/v4/latest/INR"
    response= requests.get(url)
    if(response.status_code==200):
        data = response.json()
        rate = data["rates"][ch]
        converted = rate*num
        st.success(f"{num} INR = {converted:.2f} {ch}")
    else:
        st.error("Failed to fetch data")