import streamlit as st
import joblib
import pandas as pd

model = joblib.load("model.l")

st.title("Predictive Maintenance")

type_machine = st.selectbox("Tipo de producto",["L","M","H"])
temp = st.number_input("Diferencia temperatura")
wear = st.number_input("Tool wear")
power = st.number_input("Power watt")
strain = st.number_input("Strain")


if st.button("Calcular riesgo"):

    data = pd.DataFrame([{
        "Type": type_machine,
        "temp_dif": temp,
        "tool_wear_min": wear,
        "power_watt": power,
        "strain": strain
    }])

    probability = model.predict_proba(data)[0,1]

    st.metric(
        "Probabilidad de falla",
        f"{probability:.1%}"
    )