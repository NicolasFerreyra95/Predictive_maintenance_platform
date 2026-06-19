# Predictive_maintenance_platform
Using an example dataset to deploy a machine predictive maintenance analysis. The technology applied includes ETL, SQL, ML and dashboards.

## Project objectives:
Machine production analysis
Mantenance requeriments prediction

## Programs

- SQL
- Python
- Power BI

## Dataset

AI4I 2020 Predictive Maintenance Dataset

## Procedure
Data preparation (ETL with python):
After creating the SQL dataset, the column titles were changed to be better handled. Then, connection was stablished and the data was set.

SQL:
After checking the average values for the main columns, three views were generated from the data:
**failures**, to resume the total failures registred per category.
**specific_failures**, to calculate the main variables related to the failure categories.
**causes**, to obtain granular data per category.

Power BI:
Two pages were developed in the dashboard:
**Performance:** Here we can see the production and failure total, distributed by the three types (L, M and H) and the five possible causes (TWF, RNF, HDF, OSF and PWF). The dashboard is ready to use any of them as filter.
**Failure causes analysis:** Four graphics were set, any for the main failure causes (random failures were not incluided) and the variable they are related with. The area colours define the failure risk probability as the related factors values advance.
