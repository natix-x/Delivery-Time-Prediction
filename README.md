# Delivery-Time-Predictions

## Table of contents: 
* [General info](#general-info)
* [Requirements](#requirements)
* [Part 1. Data modelling [SQL]](#part-1-data-modelling-sql)
* [Part 2. Data analysis and visualisation](#part-2-data-analysis-and-visualisation)
* [Part 3. Building and verifying the hypothesis](#part-3-building-and-verifying-the-hypothesis)

### General info:
The aim of this task is to explore 'droptime' database and complete assigned tasks.

### Requirements and used libraries:
python 3.11+, pandas, seaborn, matplotlib, numpy

### Part 1. Data modelling [SQL]
* creation of database: 'droptime' and population it with data based on the received SQL Script: 'droptime.sql'
* creation of a query which returns data about the total weight per product ordered by the customer with customer_id = 32 delivered on February 13, 2024. The query returns data in the following schema:
<table>
<tr>
<td>productId</td>
<td>totalWeight</td>
</tr>
</table>
sorted by totalWeight ascending.

All files connected with that part are stored in 'Part_1' directory.
Created SQL query is exported as SQL Script: [query.sql](Part_1/query.sql)
Results are exported as CSV file: [Natalia_Wrześniak.csv](Part_1/Natalia_Wrześniak.csv)
### Part 2. Data analysis and visualisation
* generation of histogram showing the actual delivery length with 1 minute granularity
* histogram showing prediction error (difference between planned and
actual delivery times
* searching for correlations and patterns in available data

All code connected with data analysis and visualization in available [here](Part_2/data_analysis_and_visualization.ipynb)

Report is available [here](Part_2/Natalia_Wrześniak_analysis.pdf)
### Part 3. Building and verifying the hypothesis

Report covering issues connected with that section is available [here](Part_3/Natalia_Wrześniak_research.pdf)



