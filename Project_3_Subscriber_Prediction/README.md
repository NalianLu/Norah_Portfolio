# Subscriber Prediction

## Project Overview

This project involves developing classification machine learning models using R to identify the most prospective subscribers for the upcoming three months. The goal is to optimize marketing strategies by focusing on these prospective subscribers.

## Code Files and Their Usage

### `Technical_Document_v9wDTFeatureSelection.Rmd`
This R markdown file serves as the technical document for the project. It includes the following key components:

1. **Setup and Libraries**: 
   - Initializes the R environment and loads necessary libraries, such as `dplyr`, `tidyverse`, `caret`, `rpart`, and `FSelectorRcpp`.

2. **Cost-Sensitive Performance Metric Design**:
   - Defines a cost-sensitive performance metric to evaluate the predictive models, considering the cost implications of false positives and false negatives.

3. **Data Preprocessing**:
   - Performs data cleaning and preprocessing to prepare the dataset for modeling, including handling missing values, feature engineering, and normalization.

4. **Feature Selection**:
   - Utilizes feature selection techniques to identify the most relevant features for the predictive models, improving model performance and interpretability.

5. **Model Building**:
   - Builds six different predictive models, including decision trees, logistic regression, random forests, support vector machines (SVM), gradient boosting machines (GBM), and k-nearest neighbors (KNN).

6. **Model Evaluation and Comparison**:
   - Compares the performance of the models based on the designed cost-sensitive metric.
   - Implements oversampling techniques to address data imbalance and improves model performance by 1.5x.

## Conclusion

The project successfully identifies the most prospective subscribers by developing and evaluating multiple machine learning models. The use of a cost-sensitive performance metric and feature selection techniques, combined with oversampling for imbalanced data, significantly enhances model performance and provides valuable insights for optimizing marketing strategies.
