from flask import Flask, escape, request, render_template
import joblib
import numpy as np

app = Flask(__name__)