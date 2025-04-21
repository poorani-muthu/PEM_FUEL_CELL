# PEM Fuel Cell Stack Simulation in Python

This repository provides a comprehensive Python-based simulation of a Proton Exchange Membrane (PEM) fuel cell stack, leveraging a semi-empirical model 
to predict performance under various operating conditions. The simulation, implemented in the Jupyter Notebook `PEM_FUEL_CELL_PYTHON.ipynb',
incorporates detailed electrochemical principles and parameter considerations relevant to PEM fuel cell technology.

## Overview

The `PEM_FUEL_CELL_PYTHON.ipynb` Jupyter Notebook offers a detailed exploration of PEM fuel cell simulation, covering:

-   **Comprehensive Parameter Definitions**: In-depth configuration of essential constants and operating parameters, including anode pressure (`P_anode`), 
air excess ratio (`lambda_air`), air compressor pressure ratio (`P_air`), Faraday constant (`F`), universal gas constant (`R`), and empirical coefficients 
for activation (`A`), ohmic (`M`, `N`), and concentration losses (`B`). Other parameters include the limiting current density (`i_L`), the number of cells 
in the stack (`n_cells`), single cell area (`A_cell`), target fuel utilization (`Uf_target`), H2 pump speed (`H2_pump_speed`), ambient temperature 
(`Ambient_Temperature`), and relative humidity (`Relative_humidity`).

-   **Loss Mechanism Modeling**: Precise functions for calculating individual voltage losses due to activation polarization (`activation_loss`), ohmic 
resistance (`ohmic_loss`), and concentration polarization (`concentration_loss`), crucial for accurate performance prediction.

-   **Nernst Voltage Calculation**: Implementation of the Nernst equation (`nernst_voltage`) to dynamically compute the reversible cell voltage based on 
temperature and partial pressures of reactants, accounting for deviations from standard conditions.

-   **Fuel and Oxygen Flow Rate Calculation**: Functions (`calculate_fuel_flow_rate`, `calculate_oxygen_flow_rate`) implementing mass balance principles 
to determine the required hydrogen and oxygen flow rates based on the stack current, temperature, and pressure, considering both molar, mass and volumetric
flow rates.

-   **Fuel Utilization Analysis**: Calculation of fuel utilization (`calculate_fuel_utilization`), providing insights into the efficiency of fuel consumption
within the fuel cell.

-   **Polarization Curve Generation**: Simulation of the fuel cell's polarization curve by systematically varying current density and computing the 
corresponding cell voltage, enabling analysis of performance characteristics and optimal operating points.

-   **Stack Pressure Drop**: Empirical equation for stack pressure drop (`pdrop_stack`), accounting for air excess ratio and current.

## Key Features

-   **Simulates PEM Fuel Cell Performance**: Accurately predicts the performance of a PEM fuel cell stack under various operating temperatures (45°C, 55°C, and 65°C).

-   **Calculates Performance Metrics**: Computes essential metrics such as fuel utilization, hydrogen and oxygen flow rates, and optimum operating voltage.

-   **Loss Mechanism Integration**: Accounts for major loss mechanisms affecting fuel cell efficiency, providing a comprehensive analysis of factors influencing performance.

-   **Visualizes Polarization Curves**: Generates and visualizes polarization curves at different temperatures, enabling in-depth analysis of performance characteristics.

### Model Description

The simulation is based on a semi-empirical model that captures the essential electrochemical and thermodynamic processes within the PEM fuel cell. 
It takes into account activation, ohmic, and concentration losses, as well as the Nernst voltage, to predict the cell voltage at different current densities. 
Fuel utilization is calculated to assess the efficiency of the fuel cell.

### Equations and Functions

The following key functions and equations are implemented in the simulation:

-   **Nernst Voltage**:
    \[
    E = E_0 - 8.5 \times 10^{-4} (T - T_{ref}) + 4.3085 \times 10^{-5} \cdot T \cdot \ln\left(\frac{P_{O_2}}{P_{ref}}\right)
    \]

    Where \( E_0 \) is the standard potential, \( T \) is the temperature, \( T_{ref} \) is the reference temperature, \( P_{O_2} \) is the partial pressure of oxygen, and \( P_{ref} \) is the reference oxygen partial pressure.

-   **Activation Loss**:
    \[
    V_{act} = A \cdot T \cdot \ln(i + 2 \times 10^{-3})
    \]

    Where \( A \) is an empirical coefficient, \( T \) is the temperature, and \( i \) is the current density.

-   **Ohmic Loss**:
    \[
    V_{ohm} = i \cdot r_{ohm} = i \cdot M \cdot e^{-\frac{N}{T}}
    \]

    Where \( i \) is the current density, \( M \) and \( N \) are empirical coefficients, and \( T \) is the temperature.

-   **Concentration Loss**:
    \[
    V_{conc} = B \cdot T \cdot \ln\left(\frac{i_L}{i_L - i}\right)
    \]

    Where \( B \) is an empirical coefficient, \( T \) is the temperature, \( i \) is the current density, and \( i_L \) is the limiting current density.

## Dependencies

-   numpy
-   matplotlib
-   scipy
