from flask import Flask, escape, request, render_template
import joblib
import numpy as np

app = Flask(__name__)
@app.route('/')

def home():
    return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)