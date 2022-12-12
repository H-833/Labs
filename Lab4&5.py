import requests
from flask import Flask, render_template, request, redirect
import psycopg2

app = Flask(__name__)

conn = psycopg2.connect(database = "web", user = "postgres", password = "321123", host = "localhost", port = "54321")

cursor = conn.cursor()

@app.route("/login/", methods = ["POST", "GET"])
def login():
    if request.method == "POST":
        if request.form.get("login"):
            username = request.form.get("username")
            password = request.form.get("password")
            cursor.execute("SELECT * FROM web_users WHERE login=%s AND password=%s", (str(username), str(password)))
            records = list(cursor.fetchall())
            return render_template("account.html", fullname=records[0][1])
        elif request.form.get("registration"):
            return redirect("/registration/")
    return render_template("login.html")

@app.route("/registration/", methods=["POST", "GET"])
def registration():
    if request.method == "POST":
        name = request.form.get("name")
        login = request.form.get("login")
        password = request.form.get("password")
        if (not name) or (not login) or (not password):
            return render_template("registration_invalid.html")
        try:
            cursor.execute("SELECT fullname FROM web_users WHERE login=%s AND password=%s", (str(login), str(password)))
            records = list(cursor.fetchall())
            return render_template("account.html", fullname=records[0][0])
        except:
            return render_template("not_exist.html")
        cursor.execute("INSERT INTO web_users (fullname, login, password) VALUES (%s, %s, %s);", (str(name), str(login), str(password)))
        conn.commit()
        return redirect("/login/")
    return render_template("registration.html")
