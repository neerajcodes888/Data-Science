# Car Price Prediction 🚗💰



## Table of Contents

1. [Introduction](#introduction)
2. [Tools Used](#tools-used)
3. [Libraries](#libraries)
4. [Algorithms Used](#algorithms-used)
5. [Results](#results)
6. [Installation](#installation)
7. [Usage](#usage)
8. [Future Work](#future-work)
9. [Deployment](#deployment)

## Introduction 📝

This project focuses on predicting car prices using machine learning techniques. The dataset used consists of various features such as mileage, brand, model, etc., and the target variable is the price of the car. The goal is to build a model that accurately predicts the price of a car given its features.

## Tools Used 🔧

- Python
- Streamlit

## Libraries 📚

- scikit-learn (sklearn)
- Plotly
- Pandas
- NumPy

## Algorithms Used 🤖

1. Decision Tree
2. Random Forest (yielding highest accuracy)
3. XGBoost
4. Linear Regression

## Results 📊

The Random Forest algorithm yielded the highest accuracy among the algorithms tested. Here are the accuracy scores for each algorithm:

| Algorithm         | Accuracy Score |
|-------------------|----------------|
| Decision Tree     | 0.91         |
| Random Forest     | 0.95 (highest) |
| XGBoost           | 0.94           |
| Linear Regression | 0.81          |

## Installation 🛠️

1. Clone the repository:

```bash
git clone https://github.com/neerajcodes888/Data-Science/tree/main/Machine%20Learning/Car%20Price%20Prediction
cd car-price-prediction
```

## Usage ℹ️

Train the model:

```bash
python  prediction.ipynb
```

