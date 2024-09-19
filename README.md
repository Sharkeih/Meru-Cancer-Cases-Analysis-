# Meru-Cancer-Cases-Analysis

### Project Overview 

The data, documents cancer cases within Meru county and its environs.We aim at using the estimated cancer cases to obtain data-driven insights by investigating the outcomes based on gender,age, cancer types and subcounty so as to identify trends and provide insights on the likelihood and prevalence of various cancer types.

### Data Sources

The dataset was obtained from "**The state of cancer in Meru,Kenya.csv**" file containing detailed data on various cancer types recorded per subcounty in the year between 2003 and 2018.

### Data Tools

- MS Excel- Data normalization and cleaning
- MySQL -Data Analysis
- Tableau - Data visualization

 ### Data Cleaning

The following steps were taken in the initial phase:
1. Data loading and Inspection
2. Handling of blank rows and  missing values
3. Data Cleaning and Formatting.

### Exploratory Data analytics
EDA entailed exploration of dataset to answer key questions such as:

  1. The cancer prevalence by case  counts.
  2. Age counts of cancer patients recorded.
  3. Number of cancer cases by gender.
  4. Number of cancer cases in the subcounties.
  5. Number of estimated cases per year of case study.
  6. Prevalence of cancer diagnosis on children of 10 years and below.
  7. Prevalence of cancer diagnosis on adults of 50 years and above.
  8. Most common cancers by gender.

### Data Analysis 

Some of the queries used to generate insights are:

```sql
WITH CTE_Diagnosiscount as (
SELECT
sex, diagnosis as cancer_type,
count(*) as count
FROM `State of Cancer in Meru,Kenya`
GROUP BY sex, diagnosis
)
SELECT sex,cancer_type,count
FROM CTE_Diagnosiscount
WHERE sex like 'F'
ORDER BY count desc
LIMIT 10;
```

### Findings 

Some of the analysis derived are as follows:
- Females have the most recorded cnacer cases.
- Stomach,Breast and Oesophagus cancer are the top leading cancer types in Meru region and its environs
- The year 2017, had the highest recording of cancer cases.
- Imenti North, Imenti Central and Imenti South are the leading subcounties in the recorded cancer cases.

  ### Recommendation
  
  Based on the analysis,I recommend the following actions:
  
1. There's need to carry out forums and workshops on population-based cancer research.
2. Creating public awareness on early signs and symptoms and instill lifestyle behaviours to curb the menace.

   
  
