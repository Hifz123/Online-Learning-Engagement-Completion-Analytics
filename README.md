# Online Learning Engagement & Completion Analytics

## Project Overview

An end-to-end data analytics project focused on understanding student engagement, assessment performance, and course outcomes using the Open University Learning Analytics Dataset (OULAD).

The project analyzes learning activity, assessment performance, course-level outcomes, and student engagement patterns to identify insights that can support learner engagement and course management.

The analysis focuses on descriptive analytics and identifies associations in the data rather than predicting individual student outcomes.

---

## Business Questions

- What is the overall pass and withdrawal rate?
- How does student engagement vary across courses?
- Is higher engagement associated with better student outcomes?
- How do assessment scores vary across assessment types?
- Which courses have higher or lower pass rates?
- Which courses have higher withdrawal rates?
- How does engagement differ between high- and low-engagement groups?

---

## Dataset

### Open University Learning Analytics Dataset (OULAD)

The OULAD dataset contains anonymized information about students, courses, assessments, registrations, and interactions with a virtual learning environment (VLE).

The project worked with the following datasets:

- `studentInfo`
- `studentRegistration`
- `studentAssessment`
- `assessments`
- `courses`
- `studentVLE`
- `vle`

The large `studentVLE` interaction data was summarized into student-level engagement records before being used for dashboard analysis.

---

## Tools & Technologies

- **Microsoft Excel** — Data cleaning and preparation
- **SQL** — Data querying, aggregation, joins, and analysis
- **PostgreSQL** — SQL database environment
- **Power BI** — Data modeling, KPI development, and interactive visualization
- **ChatGPT** — AI-assisted analytical support and hypothesis generation

> PostgreSQL was used as the database environment for SQL analysis. The project is presented publicly as an SQL-based analytics project.

---

## Data Preparation

The OULAD datasets were reviewed and prepared before analysis.

Key preparation activities included:

- Handling missing values appropriately
- Preserving valid zero assessment scores
- Treating missing unregistration dates appropriately
- Replacing unknown demographic values with an explicit `Unknown` category where appropriate
- Preserving meaningful missing values, such as unavailable exam dates
- Preparing a student engagement summary from the large VLE interaction dataset
- Creating analytical relationships between students, courses, assessments, and engagement data

The raw source data was kept separate from the cleaned analytical data.

---

## Project Workflow

```text
OULAD Dataset
      ↓
Excel Data Cleaning & Preparation
      ↓
SQL Data Analysis
      ↓
Engagement & Outcome Analysis
      ↓
Power BI Data Modeling
      ↓
Interactive Dashboard
      ↓
Business Insights & Recommendations
```


Project Structure
Online-Learning-Engagement-Completion-Analytics/
│
├── sql/

│   └── analysis_queries.sql

│
├── Dashboard_Overview.png

│
└── README.md



## SQL Analysis

Seven SQL analyses were developed to answer the project's key business questions.

1. Overall Student Outcomes

Calculated:

Total students
Number of passed students
Pass rate
Number of withdrawn students
Withdrawal rate
2. Pass Rate by Course

Compared pass rates across course modules to identify differences in student outcomes.

3. Engagement by Student Outcome

Compared average learning activity across Pass, Distinction, Fail, and Withdrawn outcomes.

4. Engagement by Course

Compared average engagement levels across course modules.

5. Assessment Performance by Type

Used a SQL join between assessment submission data and assessment information to compare average scores across assessment types.

6. Withdrawal Rate by Course

Identified courses with relatively higher and lower withdrawal rates.

7. High vs Low Engagement Analysis

Used conditional logic, aggregation, a subquery, and joins to compare pass rates between high- and low-engagement groups.

The SQL queries are available in:

sql/analysis_queries.sql


## Power BI Dashboard

The Power BI dashboard provides an interactive overview of student outcomes, engagement, course performance, and assessment results.

Key Performance Indicators
KPI	Value
Total Students	29K
Pass Rate	41.27%
Withdrawal Rate	31.80%
Average Assessment Score	75.80
Average Total Clicks	1.36K
Dashboard Visuals

The dashboard includes:

Pass Rate by Course
Average Engagement by Student Outcome
Enrollment Outcome Distribution
Average Engagement by Course
Average Assessment Score by Assessment Type


## Key Insights
Pass rates vary across course modules, indicating differences in student outcomes between courses.
Students with stronger engagement levels generally show more favorable outcomes.
Distinction and Pass groups show higher average engagement than Fail and Withdrawn groups.
Assessment performance varies across assessment types, with CMA assessments showing the highest average score in the analysis.
Withdrawal represents a significant share of enrollment outcomes, highlighting the importance of understanding learner disengagement.
Course-level engagement averages differ across modules, while engagement differences between student outcome groups are also noticeable.
The high-engagement group recorded a substantially higher pass rate than the low-engagement group in the analysis.
Business Recommendations

## Based on the analysis:

Investigate engagement patterns associated with withdrawal outcomes.
Encourage consistent learning activity throughout the course.
Examine courses with lower pass rates to identify potential academic or engagement challenges.
Review courses with higher withdrawal rates to understand possible learner-support needs.
Use assessment performance patterns to identify areas where additional learner support may be useful.
Monitor early engagement behavior as a descriptive indicator for student-support initiatives.

Important: These findings represent associations observed in the dataset. They should not be interpreted as proof that engagement directly causes better academic outcomes.

## AI-Assisted Analytics

ChatGPT was used as an analytical assistant during the project to:

Structure analytical questions
Explore potential hypotheses
Organize validated findings
Help formulate business-oriented recommendations

AI was used to support the analytical process and interpretation of findings.

The underlying metrics were calculated from the dataset using Excel, SQL, and Power BI rather than being generated by AI.

## Project Outcome

This project demonstrates practical experience in:

Data cleaning and preparation
Excel-based data preparation
SQL querying and analysis
Relational data analysis
SQL joins and aggregations
Conditional analysis using CASE
Subquery-based analysis
Power BI data modeling
KPI development
Interactive dashboard creation
Exploratory and descriptive analytics
Business insight generation
Data-driven recommendations
Responsible AI-assisted analytics


## Key Takeaway

The analysis indicates a clear association between learner engagement and academic outcomes in the dataset. Students with higher engagement levels generally achieved better outcomes, while courses with higher withdrawal rates may require closer investigation.
The project demonstrates how raw learning data can be transformed into structured analysis, interactive dashboards, and actionable business insights using Excel, SQL, and Power BI.

