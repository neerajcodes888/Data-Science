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
        if request.method ==  'POST':
            gender = request.form['gender']
            married = request.form['married']
            dependents = request.form['dependents']
            education = request.form['education']
            employed = request.form['employed']
            credit = float(request.form['credit'])
            area = request.form['area']
            ApplicantIncome = float(request.form['ApplicantIncome'])
            CoapplicantIncome = float(request.form['CoapplicantIncome'])
            LoanAmount = float(request.form['LoanAmount'])
            Loan_Amount_Term = float(request.form['Loan_Amount_Term'])
            
        # gender
        if (gender == "Male"):
            male=1
        else:
            male=0
            
                 # married
        if(married=="Yes"):
            married_yes = 1
        else:
            married_yes=0
            
                 # dependents
        if(dependents=='1'):
            dependents_1 = 1
            dependents_2 = 0
            dependents_3 = 0
        elif(dependents == '2'):
            dependents_1 = 0
            dependents_2 = 1
            dependents_3 = 0
        elif(dependents=="3+"):
            dependents_1 = 0
            dependents_2 = 0
            dependents_3 = 1
        else:
            dependents_1 = 0
            dependents_2 = 0
            dependents_3 = 0   
            

if __name__ == "__main__":
    app.run(debug=True)