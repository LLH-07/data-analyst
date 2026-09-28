# Pharmacy Product Analysis

## Overview

This project originated from a university **Introduction to Data Science** team project using product information collected from Long Chau Pharmacy.

The project files were archived to my GitHub repository in **May 2025**.

The dataset contains approximately **1,999 product records**.

## My assigned contribution

According to the original team work assignment, my responsibilities included:

- participating in problem definition and feature selection;
- data standardization;
- analysis for Question 1;
- the Random Forest Regression experiment;
- preparing presentation materials;
- consolidating the final submission.

Because the original notebooks were maintained as team notebooks, they also contain work produced collaboratively or by other members.

I therefore do **not** claim individual authorship of every cell in the three notebooks included here.

## Selected code

Only three relevant notebooks are retained:

### `01_preprocessing.ipynb`

Contains the preprocessing pipeline, including missing-value handling, category grouping and standardization.

### `02_analysis_visualization.ipynb`

Contains the analytical questions and visualizations.

My assigned analytical portion was **Question 1**.

### `03_modeling.ipynb`

Contains the modeling experiments.

My assigned modeling area included **Random Forest Regression**.

Data collection and reflection notebooks are not copied into this portfolio because they add little value when evaluating Data Analyst skills.

## What the original project demonstrates

The project gave me early experience with:

- pandas
- missing-value treatment
- category standardization
- feature preparation
- exploratory analysis
- visualization
- basic machine-learning experimentation
- teamwork

## Known limitations

This is an early Data Science coursework project and several parts would be designed differently today.

### 1. Missing Rating was interpreted too strongly

The project converted missing `Rating` values to `unknown`.

The original analysis then treated:

`Rated` → customer bought / experienced / showed interest

and:

`Unknown` → customer had not experienced the product / product had little attention.

The dataset itself does **not** establish those meanings.

A missing rating only shows that a rating value is unavailable.

Therefore, the safer interpretation is simply:

**rated products vs. unrated products.**

### 2. Some conclusions use causal wording without causal evidence

For example, the original notebook states that country has an influence on rating because the percentage of rated products is higher than unrated products.

The analysis only compares distributions.

It does not prove that country **causes** changes in rating.

Today I would describe these as observed patterns rather than causal effects.

### 3. Preprocessing pipeline inconsistency

The standardization step modifies `data_origin`:

`Hoa Kỳ / USA -> Mỹ`

but the final export uses `raw_df.to_csv()`.

This means some intended standardization may not have propagated to the exported processed dataset.

A modern version should use one consistent DataFrame through the entire pipeline.

### 4. Filling categorical missing values with mode

Several categorical missing values were filled with the most common value.

This keeps all rows, but it can artificially increase the dominant category.

The choice should be justified separately for each field.

### 5. Price imputation

Missing prices were filled using a summary statistic.

The effect of this imputation on the price distribution was not evaluated.

### 6. LabelEncoder was used for nominal categories

Country, Trademark, General Function and Dosage Form were encoded with `LabelEncoder`.

This assigns arbitrary numeric order to categories that do not naturally have ordinal relationships.

For linear models in particular, this can introduce misleading structure.

### 7. Data leakage in model evaluation

`StandardScaler.fit_transform(X)` was performed before cross-validation.

That allows information from validation folds to influence scaling.

A better approach is to place preprocessing and the model inside a scikit-learn `Pipeline`.

### 8. The holdout split was not used consistently

The notebook creates an 80/20 train-validation split, but later hyperparameter tuning is performed using cross-validation on the full transformed `X`.

Therefore the intended holdout set is not used as a final independent evaluation set.

### 9. No simple baseline

The Rating distribution is concentrated near high values.

The project should compare model performance against a simple baseline, such as predicting the mean or median rating.

Without that baseline, RMSE alone does not show how much value the models add.

### 10. Predictions for unrated products have no direct ground truth

Products with `Rating = unknown` are predicted, but their actual ratings are unavailable in the dataset.

Therefore those predictions cannot be treated as independently validated accuracy results.

### 11. Gradient Boosting was described as XGBoost

The implementation uses scikit-learn's:

`GradientBoostingRegressor`

which is not the same algorithm/library as XGBoost.

The original description should be corrected.

## What I would improve now

For a Data Analyst portfolio, I would simplify this project.

Instead of making Machine Learning the main result, I would focus on:

Raw data  
→ data-quality assessment  
→ transparent cleaning  
→ exploratory analysis  
→ visualizations  
→ findings  
→ assumptions and limitations

The ML section can remain as evidence of earlier Data Science coursework, but it should not be the primary claim of this portfolio project.
