# Predictive_maintenance_platform
Using an example dataset to deploy a machine predictive maintenance analysis. The technology applied includes ETL, SQL, ML and dashboards.

## Project objectives:
Production performance analysis
Maintenance requeriments prediction

## Programs

- SQL
- Python
- Power BI

## Dataset

AI4I 2020 Predictive Maintenance Dataset

## Procedure
Data preparation (ETL with python):
After creating the SQL dataset, the column titles were changed to be better handled. Then, connection was established and the data was set.

SQL:
After checking the average values for the main columns, three views were generated from the data:
**failures**, to summarize the total failures registered per category.
**specific_failures**, to calculate the main variables related to the failure categories.
**causes**, to obtain granular data per category.

Power BI:
Two pages were developed in the dashboard:
**Performance:** Here we can see the production and failure total, distributed by the three types (L, M and H) and the five possible causes (TWF, RNF, HDF, OSF and PWF). The dashboard is ready to use any of them as filter.
**Failure causes analysis:** Four graphics were set, one for each of the main failure causes (random failures were not included) and the variable they are related with. The area colours define the failure risk probability as the related factors values advance.

Machine learning:
A ML notebook file was created. There, scikit learn library was used to develop models to predict failure probability.
Using Pipeline organizing, first a random forest and second a XGBoost prediction model were developed.

Streamlit App:
As the second model's result were more accurate, this model was saved as **model.1** using joblib.
**FailurePrediction.py* was develop as a streamlit app, were users can enter their values and the failure probability is shown.

Models comparison:
Random forest
              precision    recall  f1-score   support

           0       0.99      0.99      0.99      1932
           1       0.71      0.62      0.66        68

    accuracy                           0.98      2000
   macro avg       0.85      0.80      0.83      2000
weighted avg       0.98      0.98      0.98      2000

XGBoost
              precision    recall  f1-score   support

           0       0.98      1.00      0.99      1932
           1       0.89      0.46      0.60        68

    accuracy                           0.98      2000
   macro avg       0.93      0.73      0.80      2000
weighted avg       0.98      0.98      0.98      2000

