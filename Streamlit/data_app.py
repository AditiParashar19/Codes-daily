import streamlit as st
import pandas as pd

st.title("Streamlit Application")

file = st.file_uploader("Upload your file",type=["csv"])
if(file):
    df = pd.read_csv(file)
    st.subheader("Data Preview")
    st.dataframe(df)
if(file):
    st.subheader("Summary Stats")
    st.write(df.describe())
    st.write("Pandas Dataframe info")
    st.write(df.isnull().sum())
if(file):
    department = df["Department"].unique()
    selected_d = st.radio("Choose Department",department)
    filtered = df[df["Department"]==selected_d]
    st.dataframe(filtered)