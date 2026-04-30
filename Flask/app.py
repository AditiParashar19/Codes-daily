from flask import Flask,render_template,jsonify   #Flask - class ,render_template - function

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html',variable1="aditi",variable2=4245)

@app.route('/menu')
def menu():
    return render_template('menu.html')

@app.route('/contact')
def  contact():
    return render_template('contact.html')

@app.route('/payment')
def payment():
    return render_template('payment.html')

@app.route('/multilinestring')
def multilinestring():
    return '''<h1>First Heading!!</h1>
    <h2>This is second heading!!</h2>'''
