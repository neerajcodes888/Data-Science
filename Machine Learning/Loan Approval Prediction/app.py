from flask import Flask, request, render_template
import joblib
import numpy as np

app = Flask(__name__)

model  = joblib.load('Prediction Model')

@app.route('/')

def home():
    return render_template("index.html")


@app.route('/predict', methods=['GET', 'POST'])
def predict():
    pass


if __name__ == "__main__":
    app.run(debug=True)