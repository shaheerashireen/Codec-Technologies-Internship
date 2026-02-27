# Retail Revenue Forecasting using SARIMA

## Overview
Built a time series forecasting model to predict monthly revenue using the Superstore retail sales dataset. Aggregated transactional data into monthly revenue and applied Seasonal ARIMA (SARIMA) to capture trend and 12-month seasonality.

## Methodology
- Data cleaning and monthly aggregation (Excel + Python)
- Time series visualization and seasonality detection
- Train–test split (last 12 months for validation)
- Log transformation to reduce volatility
- Model evaluation using Mean Absolute Error (MAE)
- 12-month revenue forecast generation

## Results
- SARIMA captured seasonal patterns and overall revenue trend
- Log transformation improved prediction stability
- Model validation performed before final forecasting
- Forecast provides directional insight into future revenue performance

## Tools Used
Python (Pandas, NumPy, Matplotlib)  
Statsmodels (SARIMA)  
Scikit-learn (MAE)  
Excel  
Google Colab
