from flask import Flask,render_template,request,redirect,url_for,flash

app = Flask(__name__)
app.secret_key = "my-secret-key"  #secret key

# @app.route("/feedback",methods=["POST","GET"])
# def feedback():
#     if(request.method=="POST"):
#         name = request.form.get("username")
#         msg = request.form.get("message")
#         return render_template("thankyou.html",name=name,msg=msg)
#     return render_template("feedback.html")

@app.route("/",methods=["GET","POST"])
def form():
    if(request.method=="POST"):
        name=request.form.get("name")
        if(not name):
            flash("Name cannot be empty")
            return redirect(url_for("form"))
        flash(f"Thanks {name}!! your feedback was saved")
        return redirect(url_for("thankyou")) #route name
    return render_template("form.html")

@app.route("/thankyou")
def thankyou():
    return render_template("thankyou.html")
    
"""
without redirect no prg pattern is follow
but in redirect it is follow
ways are

redirect(url_for("route_name"))- best way
redirect("/route_name") - can break if url changes

"""
