# Bank Churners Analysis and Prediction

## Project Overview

This project aims to analyze customer churn in a banking context and predict whether a customer will churn using various machine learning models. The analysis is divided into three main stages: data cleaning, exploratory data analysis (EDA), and modeling.

## 1. Data Cleaning

### Basic Info
The dataset contains various fields related to customer demographics, account information, and transaction history. Key fields include:
- **CLIENTNUM**: Unique identifier for the customer
- **Attrition_Flag**: Indicator if the account will close within the next six months
- **Customer_Age**: Age of the customer
- **Gender**: Gender of the customer
- **Education_Level**: Educational qualification
- **Income_Category**: Annual income category
- **Card_Category**: Type of card
- **Total_Trans_Amt**: Total transaction amount in the last 12 months
- **Total_Trans_Ct**: Total transaction count in the last 12 months
- **Avg_Utilization_Ratio**: Average card utilization ratio

### Null Values
The dataset does not contain any null values.

## 2. Exploratory Data Analysis (EDA)

### Data Imbalance
The dataset shows a significant imbalance between the churned and non-churned customers.

### Numerical Fields
Key observations:
- Customers who spend more and are less inactive are more likely to stay.
- Higher credit limits are associated with lower churn.
- Age is not a significant factor in customer churn.

### Customer Profile
Analysis of customer demographics and behavior to identify patterns related to churn.

### Relevance Analysis
- **Categorical Fields**: Cramer's V is used to assess relevance.
- **Numerical Fields**: Pearson Correlation is used.
  
Irrelevant fields (correlation coefficient in [-0.1, 0.1]):
- Credit Limit
- Average Open To Buy
- Months On Book
- Age
- Dependent Count

## 3. Modeling

### Creating the Modeling Dataset
Preparation of the dataset for modeling by selecting relevant features and splitting the data into training and test sets.

### Models Implemented
1. **Random Forest**
2. **Support Vector Machine (SVM)**
3. **Boosting Tree**

### Model Comparison
Evaluation of the models based on the confusion matrix and classification score. The Random Forest and SVM models performed better compared to the Boosting Tree model.

## Conclusion
The project demonstrates the process of data cleaning, exploratory data analysis, and the application of machine learning models to predict customer churn. The Random Forest and SVM models were identified as the most effective in predicting churn based on the available data.
