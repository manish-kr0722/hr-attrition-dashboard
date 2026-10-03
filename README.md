# HR Workforce and Attrition Analysis

**Power BI • SQL • Python | Fictional IBM HR dataset**

A practice workforce-retention case study exploring employee composition, attrition, compensation and career patterns.

## Business question

Which workforce groups have higher observed attrition, and what should HR leadership investigate before choosing retention actions?

## Dataset

The fictional IBM HR Analytics dataset contains **1,470 employee records and 35 attributes**. It is suitable for analytics practice; it does not represent a verified employer's current workforce.

## Dashboard

The four-page Power BI report covers:

- Workforce composition and headcount.
- Attrition comparisons across employee groups.
- Compensation and career patterns.
- Management insights and recommendations.

The repository also includes SQL queries and a Python analysis notebook.

## Key findings

Figures below were recalculated from the included employee CSV.

| Measure | Result |
|---|---:|
| Overall attrition | 16.12% |
| Sales Representative attrition | 39.76% |
| Laboratory Technician attrition | 23.94% |
| Frequent-traveller attrition | 24.91% |
| Non-traveller attrition | 8.00% |
| Average monthly income: employees who left | 4,787 |
| Average monthly income: employees who stayed | 6,833 |

The Sales Representative group contains 83 employees. Income values use the dataset's units; they should not be presented as verified local-market salaries.

## Business recommendations

Investigate role-specific retention concerns, travel demands and compensation differences. Review these relationships alongside job level, tenure and other factors before choosing interventions.

The findings describe associations in a fictional dataset rather than proven causes of employee departures. No retention programme was implemented or measured.

## Predictive experiment

The notebook includes an exploratory Random Forest classifier. Its saved attrition-class recall is only 0.09, with F1 of 0.14. Overall accuracy of 0.83 does not make it an effective attrition detector.

The dashboard and descriptive analysis are the primary deliverables.

## How to inspect the work

1. Open the PBIX file in Power BI Desktop and update source paths if prompted.
2. Inspect the SQL queries and notebook through the links below.
3. Import the employee CSV into SQL Server before using the SQL script.
4. Convert Attrition and OverTime from Yes/No into numeric flags where required by the script; do not multiply the raw text columns directly.
5. For the notebook, install pandas, numpy, matplotlib, seaborn, scikit-learn and Jupyter, and update the CSV path.

## Limitations

- The data is fictional and observational.
- Differences in attrition rates do not establish causation.
- Subgroup percentages should be read alongside their record counts.
- The predictive experiment requires substantial improvement before practical use.

## Dashboard preview

![d1](Dashboard%20Image/d1.jpg)

![d2](Dashboard%20Image/d2.jpg)

![d3](Dashboard%20Image/d3.jpg)

![d4](Dashboard%20Image/d4.jpg)

## Repository files

- [Dataset/HR_Analytics.csv](Dataset/HR_Analytics.csv)
- [HR Analytics.sql](HR%20Analytics.sql)
- [HR dashboard.pbix](HR%20dashboard.pbix)
- [HR_Analytics.ipynb](HR_Analytics.ipynb)

## Author

**Manish Kumar** — banking professional transitioning into Data Analytics.

[LinkedIn](https://www.linkedin.com/in/manish071096/) · [GitHub](https://github.com/manish-kr0722)
