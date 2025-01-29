# Credit_Risk_Modelling

📊 Loan Default Prediction using Logistic Regression 🏦💰
🔍 Overview
This project predicts loan default risk using logistic regression in R. By analyzing applicant attributes such as credit scores, salary, marital status, and financial history, we can assess the likelihood of default and help financial institutions make informed decisions.

✨ Features
✅ Exploratory Data Analysis (EDA) – Data visualization and missing value detection 📊
✅ Categorical Analysis – Relationship insights using cross-tabulation 📈
✅ Data Splitting – Train-test split for model evaluation ⚖️
✅ Logistic Regression – Predicting loan default probability 🏠💳
✅ Performance Evaluation – Confusion matrix & ROC curve analysis 📉

🛠 Installation
To run this analysis, install the required R packages:
📦 gmodels – Cross-tabulation for categorical variables
📦 DataExplorer – Automated exploratory data analysis
📦 caTools – Data splitting into training & test sets
📦 ROCR – Model performance evaluation with ROC curves

📑 Dataset
The dataset contains loan applicant details, including:

🏦 CIBIL Score – Creditworthiness indicator
💰 Salary – Monthly income of the applicant
🔢 Application Count – Number of loan applications made
📱 Phone Grade – Quality rating of the applicant’s mobile device
📶 SIM Strength – Indicator of phone connection reliability
💍 Marital Status – Single or married
👤 Gender – Male or Female
❌ Loan Status – Target Variable (0 = No Default, 1 = Default)
🔬 Analysis Workflow
1️⃣ Data Exploration 🧐

Checking dataset structure & missing values
Visualizing distributions and relationships
2️⃣ Data Preprocessing ⚙️

Handling missing values (if any)
Splitting data into training (80%) and test (20%) sets
3️⃣ Model Development 🏗️

Building a logistic regression model with key predictors
Evaluating model significance & coefficients
4️⃣ Prediction & Evaluation 🎯

Generating predictions on test data
Confusion matrix to assess accuracy
ROC curve to evaluate model performance
📊 Results & Insights
✅ Higher CIBIL scores generally indicate lower chances of default
✅ Marital status & salary play a significant role in loan repayment behavior
✅ The logistic regression model provides a default probability score for applicants

🔚 Conclusion
This project demonstrates how logistic regression can be used for credit risk modeling. By analyzing financial and demographic factors, we can help lenders make data-driven lending decisions and reduce financial risk.

📜 License
🔓 This project is licensed under the MIT License – feel free to use and modify it!
