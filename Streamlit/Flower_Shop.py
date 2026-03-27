import streamlit as st
import cv2

st.set_page_config(
    page_title="My App",
    page_icon="🌸",
    layout="wide"
)
st.title("Streamlit Flower Shop")

col1, col2, col3 = st.columns(3)

with col1:
    st.header(" Rose Flower")
    st.write("Click to order Rose Flowers")
    vote1 = st.button("Order Rose")
    img = cv2.imread("rose.jpeg")
    resized = cv2.resize(img,(300,200))
    rgb = cv2.cvtColor(resized,cv2.COLOR_BGR2RGB)
    st.image(rgb)
    #st.image("https://images.pexels.com/photos/36107829/pexels-photo-36107829.jpeg",use_container_width=True)

with col2:
    st.header("Marigold Flower")
    st.write("Click to order Marigold Flowers")
    vote2 = st.button("Order Marigold")
    img = cv2.imread("marigold.jpeg")
    resized = cv2.resize(img,(300,200))
    rgb = cv2.cvtColor(resized,cv2.COLOR_BGR2RGB)
    st.image(rgb)
    #st.image("https://images.pexels.com/photos/5027562/pexels-photo-5027562.jpeg",use_container_width=True)

with col3:
    st.header(" Jasmine Flower")
    st.write("Click to order Jasmine Flowers")
    vote3 = st.button("Order Jasmine")
    img = cv2.imread("jasmine1.jpg")

    resized = cv2.resize(img,(300,200))
    rgb = cv2.cvtColor(resized,cv2.COLOR_BGR2RGB)
    st.image(rgb)
    #st.image("https://images.pexels.com/photos/36333758/pexels-photo-36333758.jpeg",use_container_width=True)

# Order messages
if vote1:
    st.success("Rose Flowers Ordered!")

if vote2:
    st.success(" Marigold Flowers Ordered!")

if vote3:
    st.success(" Jasmine Flowers Ordered!")

name = st.sidebar.text_input("Enter you name ")
ch = st.sidebar.radio("Choose: ",["Rose","Jasmine","Marigold"])
st.write(f"Welcome {name} and you selected {ch}....")

with st.expander("Showing Options"):
    st.write("""
1) Choose Rose Flowers\n
2)Choose Marigold Flowers\n
3)Choose Jasmine Flowers
""")
    
st.markdown('### Selected Successfully!!')
st.markdown('> Blockquote')