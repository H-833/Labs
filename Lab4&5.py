import requests
from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)

conn = psycopg2.connect(database = "web", user = "postgres", password = "321123", host = "localhost", port = "54321")

cursor = conn.cursor()

@app.route("/login/", methods = ["POST"])
def login():
    username = request.form.get("username")
    password = request.form.get("password")
    if (not username) or (not password):
        return render_template("retry_error.html")
    try:
        cursor.execute("SELECT fullname FROM web_users WHERE login=%s AND password=%s", (str(username), str(password)))
        records = list(cursor.fetchall())
        return render_template("account.html", fullname = records[0][0])
    except:
        return render_template("not_exist.html")
    cursor.execute("SELECT * FROM web_users WHERE login=%s AND password=%s", (str(username), str(password)))
    records = list(cursor.fetchall())
    return render_template("account.html", fullname = records[0][1])

@app.route("/login/", methods=["GET"])
def index():
    return render_template("login.html")
