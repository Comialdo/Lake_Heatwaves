
██╗      █████╗ ██╗  ██╗███████╗    ██╗  ██╗███████╗ █████╗ ████████╗██╗    ██╗ █████╗ ██╗   ██╗███████╗███████╗
██║     ██╔══██╗██║ ██╔╝██╔════╝    ██║  ██║██╔════╝██╔══██╗╚══██╔══╝██║    ██║██╔══██╗██║   ██║██╔════╝██╔════╝
██║     ███████║█████╔╝ █████╗      ███████║█████╗  ███████║   ██║   ██║ █╗ ██║███████║██║   ██║█████╗  ███████╗
██║     ██╔══██║██╔═██╗ ██╔══╝      ██╔══██║██╔══╝  ██╔══██║   ██║   ██║███╗██║██╔══██║╚██╗ ██╔╝██╔══╝  ╚════██║
███████╗██║  ██║██║  ██╗███████╗    ██║  ██║███████╗██║  ██║   ██║   ╚███╔███╔╝██║  ██║ ╚████╔╝ ███████╗███████║
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝ ╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚══════╝
                                                                                                                

## Overview

This repository contains Jupyter notebooks designed to calculate and create a NetCDF dataset containing all the heatwaves identified within a specific lake. The methodology is demonstrated using the case study of Lake Garda (Italy), but it can be adapted for other lakes by modifying and executing the notebooks in the specified order.

## Structure of the Repository

The notebooks are organized into two main folders:

### 1_Extend_cells_data_using_air2water

This folder contains notebooks that extend the Lake Surface Water Temperature (LSWT) data over a period of 30 years. This step leverages the automation of the Air2Water model (Piccolroaz et al., 2013) over each grid cell representing the lake area, using a corresponding air temperature time series for the same period.  
The primary goal is to compute the climatology of each grid cell, as this requires data spanning at least three decades.

### 2. Heatwave Calculation

The second folder contains notebooks that use the climatology to calculate and generate the final lake heatwaves dataset.

## Usage Instructions

1. Follow the numbering of the notebooks to execute them in the correct order.
2. Modify the input data and parameters as needed for the specific lake you are analyzing.
3. Execute the notebooks step by step to adapt the methodology to your case study.

## Requirements

### Setup python environment
Build a conda environment from the provided YAML file in `setup/satellite.yaml`:<br/>
`conda env create --name satellite --file setup/satellite.yaml`

### Download Air2Water model (Piccolroaz et al. 2013) 
Download in `Notebooks/air2water-master` the model from this link: https://github.com/marcotoffolon/air2water

### Download marineHeatWaves.py (Hobday et al. 2016)
Download in `Notebooks` the marineHeatWaves.py script from this link: https://github.com/ecjoliver/marineHeatWaves
