from flask import Flask, escape, request, render_template
import joblib
import numpy as np

app = Flask(__name__)





if __name__ == "__main__":
    app.run(debug=True)