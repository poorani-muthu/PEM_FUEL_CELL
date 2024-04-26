# Fuel Cell MATLAB Simulation 🚀

Welcome to the Fuel Cell MATLAB Simulation repository! 🛠️

## Overview ℹ️

This MATLAB script simulates the performance of a fuel cell stack based on various input parameters. You can visualize important metrics such as the IV-curve (current-voltage relationship) and power density curve by running the script. Additionally, it calculates fuel and oxygen utilization, providing insights into the efficiency of the system. 📊

## Getting Started 🏁

To run the simulation:

1. Ensure you have MATLAB installed on your system. 💻
2. Clone or download this repository to your local machine. 📥
3. Open the MATLAB script `fuel_cell_simulation.m`. 📝
4. Execute the script. ▶️

## Parameters 📋

The simulation utilizes the following parameters:

- **N**: Number of cells in the stack.
- **T**: Temperature (in Kelvin).
- **A**: Area of the cells (in cm²).
- **l**: Thickness of the electrolyte (in cm).
- **Ph2**, **Po2**, **Ph2o**: Partial pressures of hydrogen, oxygen, and water vapour respectively (in kPa).
- **Rc**: Electrical resistance of the Cell material (in ohms).
- **B**: concentration potential constant constant.
- **eta**: Activation potential coefficients.
- **phi**: Cell material Resistance coefficient.
- **iL**: Load current density (in A/cm²).
- **a**, **b**: Current range.
- **required_power_output**: Desired power output (in W).

## Results 📊

Upon execution, the script generates:

- **IV-curve**: A plot showing the relationship between stack current and voltage.
- **Power Density Curve**: A plot illustrating the power density across different current densities.
- **Fuel and Oxygen Utilization**: Calculated fuel and oxygen utilization values at 70% efficiency.
- **Required Power Output**: Calculate the required oxygen and hydrogen flow rates to achieve a specific power output.

## Note 📝

The simulation assumes a 70% efficiency for the fuel cell stack.
Also, the PEM material assumed is Nafion.

For any questions or issues, feel free to reach out. Happy simulating! 😊🔬
