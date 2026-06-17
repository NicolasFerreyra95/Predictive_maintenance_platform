# Data Dictionary

| Column | Description |
|----------|----------|
| UDI | Unique data identifier |
| Product ID | Product ID |
| Type | A letter: L, M, or H for low (50% of all products), medium (30%) and high (20%) as product quality variants and a variant-specific serial number |
| Air temperature [K] | Temperature of the air in kelvin |
| Process temperature [K] | Machine temperature in kelvin |
| Rotational speed [rpm] | Speed of rotation, calculated from a power of 2860 W |
| Torque [Nm] | Applied torque in Newton-meter |
| Tool wear [min] | The quality variants H/M/L add 5/3/2 minutes of tool wear to the used tool in the process and a
'machine failure' label |
| Machine failure | A boolean to indicate if there was an error or not. The last five columns are failure causes |
| TWF | tool wear failure: the tool fails if it use time is excesive |
| HDF | heat dissipation failure |
| PWF | power failure (the product of torque and rotational speed (in rad/s) equals the power required for the process) |
| OSF | overstrain failure (strain is obtained from the product of tool wear and torque) |
| RNF | random failures |
