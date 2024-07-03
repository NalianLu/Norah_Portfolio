# Finding Undervalued American Options for Netflix

## Project Overview

This project involves performing statistical analysis on Netflix stock prices and using Monte Carlo Simulation to identify more than 50 underpriced American options for Netflix.

## Code Files and Their Usage

### 1. `Project.m`
This script functions as the main driver of the project. It integrates the following three functions to identify underpriced American options:
- `stock_analysis.m`
- `MCwJump.m`
- `AmericanOptionPrice.m`

### 2. `stock_analysis.m`
Performs detailed statistical analysis on Netflix stock prices, including:
- Historical price movements
- Volatility estimation
- Trend analysis

### 3. `MCwJump.m`
Employs Monte Carlo simulation with jumps, improving simulation efficiency by 12.5 times using stratified sampling. This function:
- Simulates multiple price paths for Netflix stock
- Incorporates jumps to capture sudden price changes
- Enhances efficiency through stratified sampling techniques

### 4. `AmericanOptionPrice.m`
Calculates the estimated payoff and optimal exercise time for American options using the Longstaff and Schwartz (2001) method. This function:
- Estimates the option payoff for various exercise strategies
- Determines the optimal exercise strategy for maximizing payoff

## Conclusion

The project successfully identifies undervalued American options for Netflix by combining statistical analysis with advanced simulation techniques. The integration of these methods allows for precise identification of more than 50 underpriced options, providing valuable insights for investors.
