# EDA on Kickstarter

## Project Overview

This project conducts Exploratory Data Analysis (EDA) on Kickstarter crowdfunding data. The analysis includes presenting hypotheses to account for the variation in success rates over different years and constructing an interactive dashboard for comprehensive exploration of projects across various regions and years.

## Code Files and Their Usage

### `EDA_with_Interactive_Dashboard.ipynb`
This Jupyter Notebook contains the entire workflow for the EDA on Kickstarter data. It includes the following key components:

1. **Introduction**:
   - Analyzes Kickstarter data to understand factors influencing project success rates.
   - The data is sourced from Kaggle: [Kickstarter Projects Dataset](https://www.kaggle.com/datasets/kemical/kickstarter-projects?resource=download).

2. **Data Formatting**:
   - Converts the `launched` and `deadline` columns to datetime format.
   - Generates new columns for the `year` and `month` of project launch.

3. **Handling Noisy Data**:
   - Identifies and decides how to handle noisy data in the `launched` time column.

4. **Success Rate Analysis**:
   - Creates a figure with two subplots to visualize:
     - The average annual success rate of projects across years until 2017 using a line chart.
     - The number of projects per year until 2017 using a bar plot.

5. **Hypothesis and Exploration**:
   - Presents two hypotheses to explain the variation in success rates across years:
     1. Years with a larger number of projects will have a smaller success rate.
     2. Years with a higher average USD goal will have a smaller success rate.
   - Uses visualizations to show preliminary results examining these hypotheses.

6. **Interactive Dashboard**:
   - Builds an interactive dashboard using Hvplot and Panel packages with the following features:
     - Allows selection of one of three countries: US, France (FR), and United Kingdom (GB).
     - Includes a slider to select the year for visualization.
     - Provides options to visualize either the number of projects or the number of successful projects on the y-axis.
     - Displays a line chart to visualize the selected metric across months of the chosen year.

## Conclusion

The project effectively demonstrates EDA on Kickstarter data by presenting visual hypotheses and constructing an interactive dashboard. These tools provide valuable insights into the factors influencing project success rates and allow for comprehensive exploration of Kickstarter projects over time and across different regions.
