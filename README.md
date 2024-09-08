# DietHealthLink
Analysis of the Association Between Dietary Inflammatory Index (DII) and Arthritis

Overview：
This repository contains the code for analyzing the association between arthritis and the Dietary Inflammatory Index (DII) using data from the NHANES dataset (2003-2018). The project explores the relationship between DII and the prevalence of arthritis through logistic regression, aiming to determine whether a higher DII score is linked to an increased risk of developing arthritis.

Data
The dataset (merge_data_2) used in this analysis includes variables related to arthritis patient and a person who does not have arthritis, age, sex, BMI, absence of diabetes, absence of hypertension, and absence of pregnancy from 2003 to 2018. The data were preprocessed to ensure that they were suitable for logistic regression analysis.

Methodology
This study used a logistic regression model to analyze the relationship between DII and arthritis. We used arthritis status (presence/absence) as the dependent variable and DII as the independent variable, and controlled for other possible confounding factors.

Results
The model results showed that there was a statistically significant association between DII and arthritis. For every unit increase in DII, the log odds of having arthritis increased by 0.06974, which means that the inflammatory load in the diet may be related to the occurrence of arthritis.
